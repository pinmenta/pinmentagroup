-- phpMyAdmin SQL Dump
-- version 3.4.8
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2012 年 10 月 10 日 09:32
-- 服务器版本: 5.1.60
-- PHP 版本: 5.2.17p1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `pinmenta`
--

-- --------------------------------------------------------

--
-- 表的结构 `action`
--

CREATE TABLE IF NOT EXISTS `action` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `comment` text,
  `subject` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `action`
--

INSERT INTO `action` (`id`, `title`, `comment`, `subject`) VALUES
(1, 'message_write', NULL, NULL),
(2, 'message_receive', NULL, NULL),
(3, 'user_create', NULL, NULL),
(4, 'user_update', NULL, NULL),
(5, 'user_remove', NULL, NULL),
(6, 'user_admin', NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `Category`
--

CREATE TABLE IF NOT EXISTS `Category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Category_name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `Color`
--

CREATE TABLE IF NOT EXISTS `Color` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Color_name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `message` text COLLATE utf8_unicode_ci,
  `userId` int(11) unsigned DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_comments_userId` (`userId`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=82 ;

--
-- 转存表中的数据 `comments`
--

INSERT INTO `comments` (`id`, `message`, `userId`, `createDate`) VALUES
(6, 'asdasdasdasdaaaaaaa', 2, '2012-06-27 09:52:24'),
(7, 'dfasd', 2, '2012-06-27 15:59:33'),
(8, 'dfsad', 2, '2012-06-27 16:01:25'),
(9, '1222222222222222', 2, '2012-06-27 16:02:12'),
(10, 'sdf', 2, '2012-06-27 16:02:49'),
(11, 'gfdfg', 2, '2012-06-27 16:02:59'),
(12, 'wwwwwwwwwww', 2, '2012-06-27 16:20:22'),
(13, '111111111', 2, '2012-06-27 17:31:26'),
(14, 'gfghfgh', 2, '2012-06-27 17:42:51'),
(15, '1111111111111', 2, '2012-06-28 09:07:30'),
(16, NULL, 3, '2012-06-28 09:55:35'),
(17, NULL, 3, '2012-06-28 10:20:23'),
(18, NULL, 3, '2012-06-28 10:20:33'),
(41, NULL, 1, '2012-06-28 14:00:04'),
(42, NULL, 1, '2012-06-28 14:02:52'),
(43, NULL, 1, '2012-06-28 14:02:59'),
(44, NULL, 1, '2012-06-28 14:03:13'),
(45, NULL, 1, '2012-06-28 14:03:52'),
(46, NULL, 1, '2012-06-28 14:03:55'),
(47, NULL, 1, '2012-06-28 14:04:00'),
(48, NULL, 1, '2012-06-28 14:04:15'),
(49, NULL, 1, '2012-06-28 14:04:49'),
(50, NULL, 1, '2012-06-28 14:21:48'),
(51, '44444444444444eeeee', 1, '2012-06-28 14:24:04'),
(52, '44444444444444eeeee', 1, '2012-06-28 14:24:35'),
(53, '44444444444444eeeee', 1, '2012-06-28 14:24:41'),
(54, '44444444444444eeeee', 1, '2012-06-28 14:25:41'),
(55, NULL, 2, '2012-06-28 14:27:44'),
(56, '44444444444', 2, '2012-06-28 14:28:55'),
(57, 'aaaaa', 2, '2012-06-28 14:38:15'),
(58, 'aaaaa', 2, '2012-06-28 14:38:20'),
(59, 'aaaa', 2, '2012-06-28 14:40:24'),
(60, 'aaaa', 2, '2012-06-28 14:40:25'),
(61, 'aaaa', 2, '2012-06-28 14:40:31'),
(62, 'sdfsaf', 2, '2012-06-28 14:44:28'),
(63, 'sdfsaf', 2, '2012-06-28 14:44:31'),
(64, 'sdfsaf', 2, '2012-06-28 14:44:38'),
(65, '433333333333', 2, '2012-06-28 14:45:19'),
(66, 'asdsadsad', 2, '2012-06-28 14:49:10'),
(67, 'asdsadsad', 2, '2012-06-28 14:50:17'),
(68, 'asdsadsad', 2, '2012-06-28 14:52:35'),
(69, 'asdsadsad', 2, '2012-06-28 14:52:38'),
(70, 'asdasdsad', 2, '2012-06-28 14:52:55'),
(71, 'asdasdasd', 2, '2012-06-28 14:56:30'),
(74, 'fddddddddddd', 1, '2012-06-28 15:00:40'),
(76, 'aaaaaaaaaaaaaaaaaaaaaa', 1, '2012-06-28 15:37:55'),
(77, '11111111', 1, '2012-06-29 09:07:38'),
(79, 'dadsd;;;', 2, '2012-07-24 17:15:22'),
(80, 'fdsssss', 2, '2012-07-24 17:39:21'),
(81, 'fgggggggg', 2, '2012-07-24 17:39:25');

-- --------------------------------------------------------

--
-- 表的结构 `coupons_code`
--

CREATE TABLE IF NOT EXISTS `coupons_code` (
  `code_id` int(11) NOT NULL AUTO_INCREMENT,
  `code_title` varchar(200) NOT NULL,
  `code_number` int(11) NOT NULL,
  `code_image` varchar(250) NOT NULL,
  `code_effect` float NOT NULL,
  PRIMARY KEY (`code_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3347 ;

--
-- 转存表中的数据 `coupons_code`
--

INSERT INTO `coupons_code` (`code_id`, `code_title`, `code_number`, `code_image`, `code_effect`) VALUES
(1, 'code1', 1234567, '/images/promo/bsk-afternoontea.jpg', 0),
(2, 'code2', 12345679, '/images/promo/xixik_byh_1bc0bd278bcdb9aa.jpg', 0),
(3, 'daswe', 2323, '/images/promo/xixik_hbw_5bf935bf83f39f4e.jpg', 0),
(4, '42334', 234234, '/images/promo/xixik_mdl_3ae49818468e7918.jpg', 0),
(5, '54345', 345, '/images/promo/xixik_mdl_95a84047ac6a340d.jpg', 0),
(6, '65456', 456, '/images/promo/0920223C7-0.jpg', 0),
(33, '232', 11, '/images/promo/533469_145634029_2.jpg', 3123),
(3346, 'promo test', 222222, '/images/promo/bcar.jpg', 2323);

-- --------------------------------------------------------

--
-- 表的结构 `deals`
--

CREATE TABLE IF NOT EXISTS `deals` (
  `deals_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `title` varchar(45) NOT NULL,
  `description` text,
  `price` varchar(45) DEFAULT NULL,
  `language` varchar(45) DEFAULT NULL,
  `specifications` text,
  `detail` text NOT NULL,
  `status` int(2) NOT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `original` int(11) NOT NULL DEFAULT '1',
  `promo_code` varchar(300) NOT NULL,
  PRIMARY KEY (`deals_id`),
  KEY `fk_deals_category` (`category_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- 转存表中的数据 `deals`
--

INSERT INTO `deals` (`deals_id`, `category_id`, `title`, `description`, `price`, `language`, `specifications`, `detail`, `status`, `start_time`, `end_time`, `original`, `promo_code`) VALUES
(5, 4, 'phone', '11', '1', '1', '1', '<p>222222222222222222<img src="/pinmenta/images/editorimg/0fb0efb42d080cc4460a93a972c36d72.jpg" unselectable="on" style="cursor: nw-resize; width: 180.576171875px; height: 205px; "></p>\r\n', 1, '2012-09-24 17:00:00', '2012-09-27 15:00:00', 1, '2,3,4,5'),
(6, 3, 'witch', '777', '77', '1', '111', '<p>1111111111111</p>\r\n', 1, '2012-09-28 00:05:00', '2012-09-30 12:00:00', 1, '1,2,3,5,33'),
(7, 3, 'hotel', 'hotel', '999', '1', '111', '<p><img alt="" src="/pinmenta/images/editorimg/f576b33e9a1d0e2efc7d88ff8ed42fc3.jpg" unselectable="on" style="cursor: default; width: 442.2492753623188px; height: 298px; "><img alt="" src="/pinmenta/images/editorimg/fdc88b5c8cfcbd7e6214ced567ddf375.jpg" unselectable="on" style="cursor: default; width: 442.78508771929825px; height: 305px; "><img src="/pinmenta/images/editorimg/f546f7ef12ccef90cd48f083e6e7679c.jpg" unselectable="on" style="cursor: nw-resize; width: 440.85359801488835px; height: 347px; "></p>\r\n', 1, '2012-09-28 00:05:00', '2012-10-26 12:00:00', 1, '1,2,3,5,33'),
(8, 3, 'all life style', 'life style', '99', '1', '111', '<p><img alt="" src="/pinmenta/images/editorimg/0fb0efb42d080cc4460a93a972c36d72.jpg" unselectable="on" style="cursor: nw-resize; width: 236.62037037037038px; height: 269px; "></p>\r\n', 1, '2012-09-28 00:05:00', '2012-10-12 16:00:00', 1, '1,2,3,4,5,6,33,3344');

-- --------------------------------------------------------

--
-- 表的结构 `deals_image`
--

CREATE TABLE IF NOT EXISTS `deals_image` (
  `image_id` int(11) NOT NULL AUTO_INCREMENT,
  `image_file` varchar(300) NOT NULL,
  `image_deals_id` int(11) NOT NULL,
  `image_Index` int(11) NOT NULL,
  PRIMARY KEY (`image_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=23 ;

--
-- 转存表中的数据 `deals_image`
--

INSERT INTO `deals_image` (`image_id`, `image_file`, `image_deals_id`, `image_Index`) VALUES
(18, '/pinmenta/images/deals/a439c33639e59c584d845089e54dcfb8.jpg', 5, 0),
(19, '/pinmenta/images/deals/5059c08ca7ef7bb8b1cf5da3f556db8d.jpg', 6, 0),
(22, '/pinmenta/images/deals/d530aebd6616035081fd79118eeb85f2.jpg', 8, 0),
(20, '/pinmenta/images/deals/70e9850e0f61d6882ec8f182e0373295.jpg', 7, 0);

-- --------------------------------------------------------

--
-- 表的结构 `deals_order`
--

CREATE TABLE IF NOT EXISTS `deals_order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_no` varchar(100) NOT NULL,
  `order_deals_id` int(11) NOT NULL,
  `order_quantity` int(11) NOT NULL,
  `order_total` int(11) NOT NULL,
  `order_time` datetime NOT NULL,
  `order_status` int(11) NOT NULL,
  `order_user` int(11) NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- 转存表中的数据 `deals_order`
--

INSERT INTO `deals_order` (`order_id`, `order_no`, `order_deals_id`, `order_quantity`, `order_total`, `order_time`, `order_status`, `order_user`) VALUES
(2, '1111', 7, 2, 1998, '2012-10-08 17:53:18', 1, 1),
(10, '20120000', 5, 3, 3, '2012-10-09 17:03:52', 0, 1),
(7, '20120000', 6, 2, 154, '2012-10-09 15:08:04', 0, 2),
(8, '20120000', 5, 2, 2, '2012-10-09 15:09:01', 0, 2),
(11, '20120000', 8, 4, 396, '2012-10-09 17:04:02', 0, 1);

-- --------------------------------------------------------

--
-- 表的结构 `friendship`
--

CREATE TABLE IF NOT EXISTS `friendship` (
  `inviter_id` int(11) NOT NULL,
  `friend_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `acknowledgetime` int(11) DEFAULT NULL,
  `requesttime` int(11) DEFAULT NULL,
  `updatetime` int(11) DEFAULT NULL,
  `message` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`inviter_id`,`friend_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `friendship`
--

INSERT INTO `friendship` (`inviter_id`, `friend_id`, `status`, `acknowledgetime`, `requesttime`, `updatetime`, `message`) VALUES
(1, 2, 2, 1340870288, 1340870104, 1340870104, 'mclasjkdashkdsal');

-- --------------------------------------------------------

--
-- 表的结构 `membership`
--

CREATE TABLE IF NOT EXISTS `membership` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `membership_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `order_date` int(11) NOT NULL,
  `end_date` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `zipcode` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `payment_date` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `message`
--

CREATE TABLE IF NOT EXISTS `message` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `timestamp` int(10) unsigned NOT NULL,
  `from_user_id` int(10) unsigned NOT NULL,
  `to_user_id` int(10) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `message` text,
  `message_read` tinyint(1) NOT NULL,
  `answered` tinyint(1) DEFAULT NULL,
  `draft` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `message`
--

INSERT INTO `message` (`id`, `timestamp`, `from_user_id`, `to_user_id`, `title`, `message`, `message_read`, `answered`, `draft`) VALUES
(1, 1340870362, 2, 1, 'fuck', 'fasdasdsadas', 1, 0, NULL),
(2, 1340870423, 1, 2, 'Re: fuck', 'asdasdsad', 0, 1, NULL),
(3, 1340870443, 1, 2, 'Re: fuck', '1231322222222222222222222', 0, 1, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `Os`
--

CREATE TABLE IF NOT EXISTS `Os` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Os_name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `payment`
--

CREATE TABLE IF NOT EXISTS `payment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `text` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `payment`
--

INSERT INTO `payment` (`id`, `title`, `text`) VALUES
(1, 'Prepayment', NULL),
(2, 'Paypal', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `permission`
--

CREATE TABLE IF NOT EXISTS `permission` (
  `principal_id` int(11) NOT NULL,
  `subordinate_id` int(11) NOT NULL DEFAULT '0',
  `type` enum('user','role') NOT NULL,
  `action` int(11) NOT NULL,
  `template` tinyint(1) NOT NULL,
  `comment` text,
  PRIMARY KEY (`principal_id`,`subordinate_id`,`type`,`action`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `permission`
--

INSERT INTO `permission` (`principal_id`, `subordinate_id`, `type`, `action`, `template`, `comment`) VALUES
(1, 0, 'role', 4, 0, ''),
(1, 0, 'role', 5, 0, ''),
(1, 0, 'role', 6, 0, ''),
(1, 0, 'role', 7, 0, ''),
(2, 0, 'role', 1, 0, 'Users can write messages'),
(2, 0, 'role', 2, 0, 'Users can receive messages'),
(2, 0, 'role', 3, 0, 'Users are able to view visits of his profile');

-- --------------------------------------------------------

--
-- 表的结构 `post`
--

CREATE TABLE IF NOT EXISTS `post` (
  `post_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  `author_id` int(11) NOT NULL,
  PRIMARY KEY (`post_id`),
  KEY `FK_post_author` (`author_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `post`
--

INSERT INTO `post` (`post_id`, `title`, `content`, `status`, `create_time`, `update_time`, `author_id`) VALUES
(3, 'posttest', 'posttest', 1, NULL, NULL, 22222),
(4, 'test', 'test', 1, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- 表的结构 `PostCategory`
--

CREATE TABLE IF NOT EXISTS `PostCategory` (
  `post_id` int(10) unsigned NOT NULL,
  `categoryId` int(10) unsigned NOT NULL,
  PRIMARY KEY (`post_id`,`categoryId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `PostColor`
--

CREATE TABLE IF NOT EXISTS `PostColor` (
  `post_id` int(10) unsigned NOT NULL,
  `colorId` int(10) unsigned NOT NULL,
  PRIMARY KEY (`post_id`,`colorId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `PostOs`
--

CREATE TABLE IF NOT EXISTS `PostOs` (
  `post_id` int(10) unsigned NOT NULL,
  `osId` int(10) unsigned NOT NULL,
  PRIMARY KEY (`post_id`,`osId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `posts_comments_nm`
--

CREATE TABLE IF NOT EXISTS `posts_comments_nm` (
  `postId` int(11) unsigned NOT NULL,
  `commentId` int(11) unsigned NOT NULL,
  PRIMARY KEY (`postId`,`commentId`),
  KEY `fk_posts_comments_comments` (`commentId`),
  KEY `fk_posts_comments_posts` (`postId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `posts_comments_nm`
--

INSERT INTO `posts_comments_nm` (`postId`, `commentId`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 12),
(1, 13),
(1, 14),
(1, 15),
(1, 72),
(1, 73),
(1, 74),
(1, 75),
(1, 76),
(1, 77),
(1, 78),
(1, 79),
(1, 80),
(1, 81),
(2, 4),
(2, 71),
(3, 17),
(3, 18),
(3, 19),
(3, 20),
(3, 21),
(3, 23),
(3, 55),
(3, 56);

-- --------------------------------------------------------

--
-- 表的结构 `PostTag`
--

CREATE TABLE IF NOT EXISTS `PostTag` (
  `post_id` int(10) unsigned NOT NULL,
  `tagId` int(10) unsigned NOT NULL,
  PRIMARY KEY (`post_id`,`tagId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `privacysetting`
--

CREATE TABLE IF NOT EXISTS `privacysetting` (
  `user_id` int(10) unsigned NOT NULL,
  `message_new_friendship` tinyint(1) NOT NULL DEFAULT '1',
  `message_new_message` tinyint(1) NOT NULL DEFAULT '1',
  `message_new_profilecomment` tinyint(1) NOT NULL DEFAULT '1',
  `appear_in_search` tinyint(1) NOT NULL DEFAULT '1',
  `show_online_status` tinyint(1) NOT NULL DEFAULT '1',
  `log_profile_visits` tinyint(1) NOT NULL DEFAULT '1',
  `ignore_users` varchar(255) DEFAULT NULL,
  `public_profile_fields` bigint(15) unsigned DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `privacysetting`
--

INSERT INTO `privacysetting` (`user_id`, `message_new_friendship`, `message_new_message`, `message_new_profilecomment`, `appear_in_search`, `show_online_status`, `log_profile_visits`, `ignore_users`, `public_profile_fields`) VALUES
(1, 1, 1, 1, 1, 1, 1, '', NULL),
(2, 1, 1, 1, 1, 1, 1, NULL, NULL),
(3, 1, 1, 1, 1, 1, 1, '', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `profile`
--

CREATE TABLE IF NOT EXISTS `profile` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `privacy` enum('protected','private','public') NOT NULL,
  `lastname` varchar(50) NOT NULL DEFAULT '',
  `firstname` varchar(50) NOT NULL DEFAULT '',
  `show_friends` tinyint(1) DEFAULT '1',
  `allow_comments` tinyint(1) DEFAULT '1',
  `email` varchar(255) NOT NULL DEFAULT '',
  `street` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `about` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `profile`
--

INSERT INTO `profile` (`id`, `user_id`, `timestamp`, `privacy`, `lastname`, `firstname`, `show_friends`, `allow_comments`, `email`, `street`, `city`, `about`) VALUES
(1, 1, '2012-06-28 03:03:02', 'protected', 'admin', 'admin', 1, 1, 'webmaster@example.com', NULL, NULL, NULL),
(2, 2, '2012-06-28 03:03:02', 'protected', 'demo', 'demo', 1, 1, 'demo@example.com', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `profile_comment`
--

CREATE TABLE IF NOT EXISTS `profile_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `profile_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `createtime` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `profile_comment`
--

INSERT INTO `profile_comment` (`id`, `user_id`, `profile_id`, `comment`, `createtime`) VALUES
(1, 1, 2, 'adasdsad', 1340852763),
(2, 1, 1, 'asdasdasd', 1340852813),
(3, 1, 2, 'adasdsa', 1340867389),
(4, 1, 1, '333333333333', 1340868056),
(5, 1, 1, 'ewqewqe', 1341903675);

-- --------------------------------------------------------

--
-- 表的结构 `profile_field`
--

CREATE TABLE IF NOT EXISTS `profile_field` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `varname` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `hint` text NOT NULL,
  `field_type` varchar(50) NOT NULL DEFAULT '',
  `field_size` int(3) NOT NULL DEFAULT '0',
  `field_size_min` int(3) NOT NULL DEFAULT '0',
  `required` int(1) NOT NULL DEFAULT '0',
  `match` varchar(255) NOT NULL DEFAULT '',
  `range` varchar(255) NOT NULL DEFAULT '',
  `error_message` varchar(255) NOT NULL DEFAULT '',
  `other_validator` varchar(255) NOT NULL DEFAULT '',
  `default` varchar(255) NOT NULL DEFAULT '',
  `position` int(3) NOT NULL DEFAULT '0',
  `visible` int(1) NOT NULL DEFAULT '0',
  `related_field_name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `varname` (`varname`,`visible`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `profile_field`
--

INSERT INTO `profile_field` (`id`, `varname`, `title`, `hint`, `field_type`, `field_size`, `field_size_min`, `required`, `match`, `range`, `error_message`, `other_validator`, `default`, `position`, `visible`, `related_field_name`) VALUES
(1, 'email', 'E-Mail', '', 'VARCHAR', 255, 0, 1, '', '', '', 'CEmailValidator', '', 0, 3, ''),
(2, 'firstname', 'First name', '', 'VARCHAR', 255, 0, 1, '', '', '', '', '', 0, 3, ''),
(3, 'lastname', 'Last name', '', 'VARCHAR', 255, 0, 1, '', '', '', '', '', 0, 3, ''),
(4, 'street', 'Street', '', 'VARCHAR', 255, 0, 0, '', '', '', '', '', 0, 3, ''),
(5, 'city', 'City', '', 'VARCHAR', 255, 0, 0, '', '', '', '', '', 0, 3, ''),
(6, 'about', 'About', '', 'TEXT', 255, 0, 0, '', '', '', '', '', 0, 3, '');

-- --------------------------------------------------------

--
-- 表的结构 `profile_visit`
--

CREATE TABLE IF NOT EXISTS `profile_visit` (
  `visitor_id` int(11) NOT NULL,
  `visited_id` int(11) NOT NULL,
  `timestamp_first_visit` int(11) NOT NULL,
  `timestamp_last_visit` int(11) NOT NULL,
  `num_of_visits` int(11) NOT NULL,
  PRIMARY KEY (`visitor_id`,`visited_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `profile_visit`
--

INSERT INTO `profile_visit` (`visitor_id`, `visited_id`, `timestamp_first_visit`, `timestamp_last_visit`, `num_of_visits`) VALUES
(1, 2, 1340852758, 1340870105, 7),
(2, 1, 1340870294, 1347952957, 2);

-- --------------------------------------------------------

--
-- 表的结构 `role`
--

CREATE TABLE IF NOT EXISTS `role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `is_membership_possible` tinyint(1) NOT NULL DEFAULT '0',
  `price` double DEFAULT NULL COMMENT 'Price (when using membership module)',
  `duration` int(11) DEFAULT NULL COMMENT 'How long a membership is valid',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `role`
--

INSERT INTO `role` (`id`, `title`, `description`, `is_membership_possible`, `price`, `duration`) VALUES
(1, 'UserManager', 'This users can manage Users', 0, 0, 0),
(2, 'Demo', 'Users having the demo role', 0, 0, 0),
(3, 'Business', 'Example Business account', 0, 9.99, 7),
(4, 'Premium', 'Example Premium account', 0, 19.99, 28);

-- --------------------------------------------------------

--
-- 表的结构 `shop_address`
--

CREATE TABLE IF NOT EXISTS `shop_address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `street` varchar(255) NOT NULL,
  `zipcode` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=29 ;

--
-- 转存表中的数据 `shop_address`
--

INSERT INTO `shop_address` (`id`, `firstname`, `lastname`, `street`, `zipcode`, `city`, `country`) VALUES
(1, 'lee', 'chaos', 'test', 'sz', 'sz', 'china'),
(2, 'lee', 'chaos', 'test', 'sz', 'sz', 'china'),
(3, 'lee', 'chaos', 'test', 'sz', 'sz', 'china'),
(4, 'lee', 'chaos', 'test', 'sz', 'sz', 'china'),
(5, 'l', 'chaos', 'test', 'sz', 'sz', 'china'),
(6, 'lee', 'chaos', 'test', 'sz', 'sz', 'china'),
(7, 'test', 'test', 'test', 'test', 'test', 'test'),
(8, 'test', 'test', 'test', 'test', 'test', 'test'),
(9, 'test', 'test', 'test', 'test', 'test', 'test'),
(10, 'test', 'test', 'test', 'test', 'test', 'test'),
(11, '1', '2', 'test', 'test', 'test', 'test'),
(12, '1', '2', 'test', 'test', 'test', 'test'),
(13, '1', '2', 'test', 'test', 'test', 'test'),
(14, '1', '2', 'test', 'test', 'test', 'test'),
(15, '1', '2', 'test', 'test', 'test', 'test'),
(16, '1', '2', 'test', 'test', 'test', 'test'),
(17, '1', '2', 'test', 'test', 'test', 'test'),
(18, '1', '2', 'test', 'test', 'test', 'test'),
(19, '1', '2', 'test', 'test', 'test', 'test'),
(20, 'tester', '1', '1', '1', '1', '1'),
(21, 'tester', '1', '1', '1', '1', '1'),
(22, 'tester', '1', '1', '1', '1', '1'),
(23, 'tester', '1', '1', '1', '1', '1'),
(24, 'tester', '1', '1', '1', '1', '1'),
(25, '1', '2', 'test', 'test', 'test', 'test'),
(26, '1', '2', 'test', 'test', 'test', 'test'),
(27, '1', '2', 'test', 'test', 'test', 'test'),
(28, '1', '2', 'test', 'test', 'test', 'test');

-- --------------------------------------------------------

--
-- 表的结构 `shop_category`
--

CREATE TABLE IF NOT EXISTS `shop_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `title` varchar(45) NOT NULL,
  `description` text,
  `language` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `shop_category`
--

INSERT INTO `shop_category` (`category_id`, `parent_id`, `title`, `description`, `language`) VALUES
(1, 0, 'Primary Articles', NULL, NULL),
(2, 0, 'Secondary Articles', NULL, NULL),
(3, 1, 'Red Primary Articles', NULL, NULL),
(4, 1, 'Green Primary Articles', NULL, NULL),
(5, 2, 'Red Secondary Articles', NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `shop_customer`
--

CREATE TABLE IF NOT EXISTS `shop_customer` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `address_id` int(11) NOT NULL,
  `delivery_address_id` int(11) NOT NULL,
  `billing_address_id` int(11) NOT NULL,
  `email` varchar(45) NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `shop_customer`
--

INSERT INTO `shop_customer` (`customer_id`, `user_id`, `address_id`, `delivery_address_id`, `billing_address_id`, `email`) VALUES
(1, 1, 17, 0, 0, 'qq@qq.com'),
(2, 1, 22, 0, 0, 'test@qq.com');

-- --------------------------------------------------------

--
-- 表的结构 `shop_image`
--

CREATE TABLE IF NOT EXISTS `shop_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `filename` varchar(45) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_Image_Products` (`product_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `shop_image`
--

INSERT INTO `shop_image` (`id`, `title`, `filename`, `product_id`) VALUES
(1, 'iphone4', '0920223C7-0.jpg', 1),
(2, 'watch', '3360670_174617016236_2.jpg', 2),
(3, 'm', '200811170122923_2.jpg', 3),
(4, 'hotel', '1049187_113729046_2.jpg', 4);

-- --------------------------------------------------------

--
-- 表的结构 `shop_order`
--

CREATE TABLE IF NOT EXISTS `shop_order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `delivery_address_id` int(11) NOT NULL,
  `billing_address_id` int(11) NOT NULL,
  `ordering_date` int(11) NOT NULL,
  `ordering_done` tinyint(1) DEFAULT NULL,
  `ordering_confirmed` tinyint(1) DEFAULT NULL,
  `payment_method` int(11) NOT NULL,
  `shipping_method` int(11) NOT NULL,
  `comment` text,
  PRIMARY KEY (`order_id`),
  KEY `fk_order_customer` (`customer_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `shop_order`
--

INSERT INTO `shop_order` (`order_id`, `customer_id`, `delivery_address_id`, `billing_address_id`, `ordering_date`, `ordering_done`, `ordering_confirmed`, `payment_method`, `shipping_method`, `comment`) VALUES
(1, 1, 18, 19, 1340264669, NULL, NULL, 1, 1, 'aaaaa'),
(2, 2, 23, 24, 1340595720, NULL, NULL, 1, 1, 'Is Good'),
(3, 1, 25, 26, 1340853420, NULL, NULL, 1, 1, 'adsadsa'),
(4, 1, 27, 28, 1340853545, NULL, NULL, 1, 1, 'asdasdsad');

-- --------------------------------------------------------

--
-- 表的结构 `shop_order_position`
--

CREATE TABLE IF NOT EXISTS `shop_order_position` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `specifications` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `shop_order_position`
--

INSERT INTO `shop_order_position` (`id`, `order_id`, `product_id`, `amount`, `specifications`) VALUES
(1, 1, 1, 5, '{"5":["11"],"1":["10"]}'),
(2, 2, 1, 2, '{"5":["11"],"1":["66"]}'),
(3, 2, 2, 1, 'null'),
(4, 2, 1, 10, '{"5":["13"],"1":["67"],"2":["68"]}'),
(5, 3, 2, 1, 'null'),
(6, 4, 2, 1, 'null');

-- --------------------------------------------------------

--
-- 表的结构 `shop_payment_method`
--

CREATE TABLE IF NOT EXISTS `shop_payment_method` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` text,
  `tax_id` int(11) NOT NULL,
  `price` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `shop_payment_method`
--

INSERT INTO `shop_payment_method` (`id`, `title`, `description`, `tax_id`, `price`) VALUES
(1, 'cash', 'You pay cash', 1, 0),
(2, 'advance Payment', 'You pay in advance, we deliver', 1, 0),
(3, 'cash on delivery', 'You pay when we deliver', 1, 0),
(4, 'invoice', 'We deliver and send a invoice', 1, 0),
(5, 'paypal', 'You pay by paypal', 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `shop_products`
--

CREATE TABLE IF NOT EXISTS `shop_products` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `tax_id` int(11) NOT NULL,
  `title` varchar(45) NOT NULL,
  `description` text,
  `price` varchar(45) DEFAULT NULL,
  `language` varchar(45) DEFAULT NULL,
  `specifications` text,
  `count` int(11) NOT NULL,
  `like` int(11) NOT NULL,
  `detail` text NOT NULL,
  `status` int(2) NOT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `original` int(11) NOT NULL DEFAULT '1',
  `promo_code` varchar(300) NOT NULL,
  PRIMARY KEY (`product_id`),
  KEY `fk_products_category` (`category_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `shop_products`
--

INSERT INTO `shop_products` (`product_id`, `category_id`, `tax_id`, `title`, `description`, `price`, `language`, `specifications`, `count`, `like`, `detail`, `status`, `start_time`, `end_time`, `original`, `promo_code`) VALUES
(1, 1, 1, 'Demonstration of Article with variations', 'Hello, World!', '45', NULL, '{"Size":"111","Color":"","Some random attribute":"","Material":"","Specific number":""}', 7, 0, '<img alt="" src="/pinmenta/images/editorimg/0d614f02a94058de17d3c90aa93f6aa1.jpg" unselectable="on" style="width: 172px; height: 129px; cursor: default; ">test Detail<img src="/pinmenta/images/editorimg/0d614f02a94058de17d3c90aa93f6aa1.jpg" unselectable="on" style="width: 280.36986301369865px; height: 211px; cursor: nw-resize; ">', 1, '2012-09-20 04:02:00', '2012-09-29 22:04:00', 99, '1,3,4,5'),
(2, 1, 2, 'Another Demo Article with less Tax', '!!', '20', NULL, '{"Size":"","Color":"","Some random attribute":"","Material":"","Specific number":""}', 2, 0, '2222', 0, '2012-09-07 10:00:00', '2012-09-26 20:00:00', 50, '2,3,5'),
(3, 2, 1, 'Demo3', '', '99.00', NULL, '{"Size":"","Color":"","Some random attribute":"","Material":"","Specific number":""}', 0, 0, '333', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 210, '1'),
(4, 4, 1, 'Demo4', '', '7.5', NULL, '{"Size":"","Color":"","Some random attribute":"","Material":"","Specific number":""}', 0, 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 15, '5,6');

-- --------------------------------------------------------

--
-- 表的结构 `shop_product_specification`
--

CREATE TABLE IF NOT EXISTS `shop_product_specification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `is_user_input` tinyint(1) DEFAULT NULL,
  `required` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `shop_product_specification`
--

INSERT INTO `shop_product_specification` (`id`, `title`, `is_user_input`, `required`) VALUES
(1, 'Size', 0, 1),
(2, 'Color', 0, 0),
(3, 'Some random attribute', 0, 0),
(4, 'Material', 0, 1),
(5, 'Specific number', 1, 1);

-- --------------------------------------------------------

--
-- 表的结构 `shop_product_variation`
--

CREATE TABLE IF NOT EXISTS `shop_product_variation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `specification_id` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `price_adjustion` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=277 ;

--
-- 转存表中的数据 `shop_product_variation`
--

INSERT INTO `shop_product_variation` (`id`, `product_id`, `specification_id`, `position`, `title`, `price_adjustion`) VALUES
(270, 1, 2, 4, 'variation3', 9),
(269, 1, 1, 3, 'variation2', 6),
(268, 1, 1, 2, 'variation1', 3),
(267, 1, 5, 1, 'please enter a number here', 0),
(276, 2, 2, 2, 'RED', 0),
(275, 2, 2, 2, 'BLACK', 0),
(274, 2, 1, 1, 'M', 0),
(273, 2, 1, 0, 'S', 0),
(272, 2, 5, 0, '11', 0),
(271, 2, 1, -10, 'L', 0);

-- --------------------------------------------------------

--
-- 表的结构 `shop_shipping_method`
--

CREATE TABLE IF NOT EXISTS `shop_shipping_method` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` text,
  `tax_id` int(11) NOT NULL,
  `price` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `shop_shipping_method`
--

INSERT INTO `shop_shipping_method` (`id`, `title`, `description`, `tax_id`, `price`) VALUES
(1, 'Delivery by postal Service', 'We deliver by Postal Service. 9.99 units of money are charged for that', 1, 10);

-- --------------------------------------------------------

--
-- 表的结构 `shop_tax`
--

CREATE TABLE IF NOT EXISTS `shop_tax` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `percent` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `shop_tax`
--

INSERT INTO `shop_tax` (`id`, `title`, `percent`) VALUES
(1, '19%', 19),
(2, '7%', 7);

-- --------------------------------------------------------

--
-- 表的结构 `Tag`
--

CREATE TABLE IF NOT EXISTS `Tag` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `frequency` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Tag_name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `Tag`
--

INSERT INTO `Tag` (`id`, `name`, `user_id`, `frequency`) VALUES
(3, 'dsasd', 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `tbl_profiles`
--

CREATE TABLE IF NOT EXISTS `tbl_profiles` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `lastname` varchar(50) NOT NULL DEFAULT '',
  `firstname` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `tbl_profiles`
--

INSERT INTO `tbl_profiles` (`user_id`, `lastname`, `firstname`) VALUES
(1, 'Admin', 'Administrator1'),
(2, 'Demo', 'Demo'),
(3, 'chaos', 'lee'),
(4, 'leee', 'lee');

-- --------------------------------------------------------

--
-- 表的结构 `tbl_profiles_fields`
--

CREATE TABLE IF NOT EXISTS `tbl_profiles_fields` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `varname` varchar(50) NOT NULL,
  `title` varchar(255) NOT NULL,
  `field_type` varchar(50) NOT NULL,
  `field_size` varchar(15) NOT NULL DEFAULT '0',
  `field_size_min` varchar(15) NOT NULL DEFAULT '0',
  `required` int(1) NOT NULL DEFAULT '0',
  `match` varchar(255) NOT NULL DEFAULT '',
  `range` varchar(255) NOT NULL DEFAULT '',
  `error_message` varchar(255) NOT NULL DEFAULT '',
  `other_validator` varchar(5000) NOT NULL DEFAULT '',
  `default` varchar(255) NOT NULL DEFAULT '',
  `widget` varchar(255) NOT NULL DEFAULT '',
  `widgetparams` varchar(5000) NOT NULL DEFAULT '',
  `position` int(3) NOT NULL DEFAULT '0',
  `visible` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `varname` (`varname`,`widget`,`visible`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `tbl_profiles_fields`
--

INSERT INTO `tbl_profiles_fields` (`id`, `varname`, `title`, `field_type`, `field_size`, `field_size_min`, `required`, `match`, `range`, `error_message`, `other_validator`, `default`, `widget`, `widgetparams`, `position`, `visible`) VALUES
(1, 'lastname', 'Last Name', 'VARCHAR', '50', '3', 1, '', '', 'Incorrect Last Name (length between 3 and 50 characters).', '', '', '', '', 1, 3),
(2, 'firstname', 'First Name', 'VARCHAR', '50', '3', 1, '', '', 'Incorrect First Name (length between 3 and 50 characters).', '', '', '', '', 0, 3);

-- --------------------------------------------------------

--
-- 表的结构 `tbl_users`
--

CREATE TABLE IF NOT EXISTS `tbl_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `activkey` varchar(128) NOT NULL DEFAULT '',
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `lastvisit_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `superuser` int(1) NOT NULL DEFAULT '0',
  `status` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`),
  KEY `status` (`status`),
  KEY `superuser` (`superuser`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `username`, `password`, `email`, `activkey`, `create_at`, `lastvisit_at`, `superuser`, `status`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'webmaster@example.com', '9a24eff8c15a6a141ece27eb6947da0f', '2012-06-21 09:49:04', '2012-06-26 20:34:35', 1, 1),
(2, 'demo', 'fe01ce2a7fbac8fafaed7c982a04e229', 'demo@example.com', '099f825543f7850cc038b90aaff39fac', '2012-06-21 09:49:04', '2012-06-27 21:24:10', 0, 1),
(3, 'chaos', 'e10adc3949ba59abbe56e057f20f883e', '315757200@qq.com', '8cffe7635609e1fd3927f8e46d43c03b', '2012-06-21 09:51:30', '2012-06-27 21:23:29', 1, 1),
(4, 'weiwei', '2e99bf4e42962410038bc6fa4ce40d97', 'qqq@qq.com', 'e7f21d6b0cf7383babe3272e1e58af97', '2012-06-21 09:55:45', '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `translation`
--

CREATE TABLE IF NOT EXISTS `translation` (
  `message` varbinary(255) NOT NULL,
  `translation` varchar(100) NOT NULL,
  `language` varchar(5) NOT NULL,
  `category` varchar(100) NOT NULL,
  PRIMARY KEY (`message`,`language`,`category`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `translation`
--

INSERT INTO `translation` (`message`, `translation`, `language`, `category`) VALUES
('About', 'Über', 'de', 'yum'),
('About', 'Acerca', 'es', 'yum'),
('About', 'me concernant ??', 'fr', 'yum'),
('About', 'Info', 'it', 'yum'),
('About', 'Info', 'pl', 'yum'),
('Access control', 'Zugangskontrolle', 'de', 'yum'),
('Access control', 'Controle d acces', 'fr', 'yum'),
('Access control', 'Controllo accesso', 'it', 'yum'),
('Action', 'Aktion', 'de', 'yum'),
('Action', 'Acción', 'es', 'yum'),
('Action', 'Action', 'fr', 'yum'),
('Action', 'Azione', 'it', 'yum'),
('Actions', 'Aktionen', 'de', 'yum'),
('Actions', 'Acciones', 'es', 'yum'),
('Actions', 'Actions', 'fr', 'yum'),
('Actions', 'Azioni', 'it', 'yum'),
('Activated', 'erstmalig Aktiviert', 'de', 'yum'),
('Activated', 'PremiÃ¨re activation de votre compte', 'fr', 'yum'),
('Activated', 'Attivato', 'it', 'yum'),
('Active', 'Aktiv', 'de', 'yum'),
('Active', 'Activo', 'es', 'yum'),
('Active', 'Actif', 'fr', 'yum'),
('Active', 'Attiv', 'it', 'yum'),
('Active', 'Aktiv', 'pl', 'yum'),
('Active', 'ÐÐºÑ‚Ð¸Ð²Ð¸Ñ€Ð¾Ð²Ð°Ð½', 'ru', 'yum'),
('Active - First visit', 'Aktiv - erster Besuch', 'de', 'yum'),
('Active - First visit', 'Actif - premiÃ¨re visite', 'fr', 'yum'),
('Active - First visit', 'Attivo - Priva visita', 'it', 'yum'),
('Active users', 'Aktive Benutzer', 'de', 'yum'),
('Active users', 'Usuarios activos', 'es', 'yum'),
('Active users', 'Utiliateurs actifs', 'fr', 'yum'),
('Active users', 'Utenti attivi', 'it', 'yum'),
('Active users', 'Aktywni uÅ¼ytkownicy', 'pl', 'yum'),
('Activities', 'Aktivitäten', 'de', 'yum'),
('Activities', 'Actividades', 'es', 'yum'),
('Activities', 'ActivitÃ©s', 'fr', 'yum'),
('Activities', 'AttivitÃ ', 'it', 'yum'),
('Add as a friend', 'Zur Kontaktliste hinzufügen', 'de', 'yum'),
('Add as a friend', 'Agregar como amigo', 'es', 'yum'),
('Add as a friend', 'Ajouter Ã  ma liste de contact', 'fr', 'yum'),
('Add as a friend', 'Aggiungi un contatto', 'it', 'yum'),
('Admin inbox', 'Administratorposteingang', 'de', 'yum'),
('Admin inbox', 'Bandeja de entrada de Admin', 'es', 'yum'),
('Admin inbox', 'Boite e-mail de l administrateur', 'fr', 'yum'),
('Admin inbox', 'Admin - Posta in arrivo', 'it', 'yum'),
('Admin inbox', 'ZarzÄ…dzaj skrzynkÄ… odbiorczÄ…', 'pl', 'yum'),
('Admin sent messages', 'Gesendete Nachrichten des Administrators', 'de', 'yum'),
('Admin sent messages', 'Mensajes enviados de Admin', 'es', 'yum'),
('Admin sent messages', 'E-mail envoyÃ© par l administrateur', 'fr', 'yum'),
('Admin sent messages', 'Admin - Messaggi inviati', 'it', 'yum'),
('Admin sent messages', 'WiadomoÅ›ci wysÅ‚ane przez administratora', 'pl', 'yum'),
('Admin users', 'Administratoren', 'de', 'yum'),
('Admin users', 'Usuarios administradores', 'es', 'yum'),
('Admin users', 'Administrateur', 'fr', 'yum'),
('Admin users', 'Utenti admin', 'it', 'yum'),
('Admin users', 'Administratorzy', 'pl', 'yum'),
('Admin users can not be deleted!', 'Administratoren können nicht gelöscht werden', 'de', 'yum'),
('Admin users can not be deleted!', '¡No se pueden eliminar los usuarios Administradores!', 'es', 'yum'),
('Admin users can not be deleted!', 'UN compte administrateur ne peut pas Ãªtre supprimÃ©', 'fr', 'yum'),
('Admin users can not be deleted!', 'Utente admin non cancellabile!', 'it', 'yum'),
('Admin users can not be deleted!', 'Nie moÅ¼na usunÄ…Ä‡ konta administratora', 'pl', 'yum'),
('All', 'Alle', 'de', 'yum'),
('All', 'Ade tous', 'fr', 'yum'),
('All', 'Tutto', 'it', 'yum'),
('Allow profile comments', 'Profilkommentare erlauben', 'de', 'yum'),
('Allow profile comments', 'Permitir comentarios en perfiles', 'es', 'yum'),
('Allow profile comments', 'Autoriser les commentaires de profil', 'fr', 'yum'),
('Allow profile comments', 'Consenti commenti profili', 'it', 'yum'),
('Allowed are lowercase letters and digits.', 'Erlaubt sind Kleinbuchstaben und Ziffern.', 'de', 'yum'),
('Allowed are lowercase letters and digits.', 'Se permiten letras minúsculas y dígitos', 'es', 'yum'),
('Allowed are lowercase letters and digits.', 'Seules les minuscule et les chiffres sont autorisÃ©s.', 'fr', 'yum'),
('Allowed are lowercase letters and digits.', 'Sono consentiti lettere minuscole e numeri.', 'it', 'yum'),
('Allowed are lowercase letters and digits.', 'Erlaubt sind Kleinbuchstaben und Ziffern.', 'pl', 'yum'),
('Allowed lowercase letters and digits.', 'Consenti lettere minuscole e numeri.', 'it', 'yum'),
('Allowed lowercase letters and digits.', 'Ð”Ð¾Ð¿ÑƒÑÐºÐ°ÑŽÑ‚ÑÑ ÑÑ‚Ñ€Ð¾Ñ‡Ð½Ñ‹Ðµ Ð±ÑƒÐºÐ²Ñ‹ Ð¸ Ñ†Ð¸Ñ„Ñ€Ñ‹.', 'ru', 'yum'),
('Allowed roles', 'Erlaubte Rollen', 'de', 'yum'),
('Allowed roles', 'Roles permitidos', 'es', 'yum'),
('Allowed roles', 'Permission rÃ´le', 'fr', 'yum'),
('Allowed roles', 'Ruoli autorizzati', 'it', 'yum'),
('Allowed roles', 'DostÄ™pne role', 'pl', 'yum'),
('Allowed users', 'Erlaubte Benutzer', 'de', 'yum'),
('Allowed users', 'Usuarios permitidos', 'es', 'yum'),
('Allowed users', 'Permission utilisateur', 'fr', 'yum'),
('Allowed users', 'Utenti autorizzati', 'it', 'yum'),
('Allowed users', 'DostÄ™pni uÅ¼ytkownicy', 'pl', 'yum'),
('Already exists.', 'Existiert bereits.', 'de', 'yum'),
('Already exists.', 'Ya existe.', 'es', 'yum'),
('Already exists.', 'Existe dÃ©jÃ .', 'fr', 'yum'),
('Already exists.', 'GiÃ  esistente', 'it', 'yum'),
('Already exists.', 'Existiert bereits.', 'pl', 'yum'),
('Already exists.', 'Ð£Ð¶Ðµ ÑÑƒÑ‰ÐµÑÑ‚Ð²ÑƒÐµÑ‚.', 'ru', 'yum'),
('An error occured while saving your changes', 'Es ist ein Fehler aufgetreten.', 'de', 'yum'),
('An error occured while saving your changes', 'Ocurrió un error al guardar los cambios', 'es', 'yum'),
('An error occured while saving your changes', 'Une erreur est survenue.', 'fr', 'yum'),
('An error occured while saving your changes', 'Si Ã¨ verificato un errore durante il salvataggio delle modifiche.', 'it', 'yum'),
('An error occured while saving your changes', 'WystÄ…piÅ‚ bÅ‚Ä…d podczas zapisywania Twoich zmian.', 'pl', 'yum'),
('An error occured while uploading your avatar image', 'Ein Fehler ist beim hochladen ihres Profilbildes aufgetreten', 'de', 'yum'),
('An error occured while uploading your avatar image', 'Une erreur est survenue lors du chargement de votre photo de profil', 'fr', 'yum'),
('An error occured while uploading your avatar image', 'Si Ã¨ verificato un errore durante il caricamento dell''immagine', 'it', 'yum'),
('Answer', 'Antworten', 'de', 'yum'),
('Appear in search', 'In der Suche erscheinen', 'de', 'yum'),
('Appear in search', 'Je souhaite apparaitre dans les rÃ©sultats de recherche', 'fr', 'yum'),
('Appear in search', 'Mostra nelle ricerche', 'it', 'yum'),
('Are you really sure you want to delete your Account?', 'Sind Sie Sicher, dass Sie Ihren Zugang löschen wollen?', 'de', 'yum'),
('Are you really sure you want to delete your Account?', '¿Seguro que desea eliminar su cuenta?', 'es', 'yum'),
('Are you really sure you want to delete your Account?', 'Etes vous sur de vouloir supprimer votre compte?', 'fr', 'yum'),
('Are you really sure you want to delete your Account?', 'Sicuro di voler cancellare il tuo account?', 'it', 'yum'),
('Are you really sure you want to delete your Account?', 'Czy jesteÅ› pewien, Å¼e chcesz usunÄ…Ä‡ konto?', 'pl', 'yum'),
('Are you sure to delete this item?', 'Sind Sie sicher, dass Sie dieses Element wirklich löschen wollen? ', 'de', 'yum'),
('Are you sure to delete this item?', '¿Seguro desea eliminar este elemento?', 'es', 'yum'),
('Are you sure to delete this item?', 'Etes vous sur de supprimÃ© cet elÃ©ment? ', 'fr', 'yum'),
('Are you sure to delete this item?', 'Sicuro di cancellare questo elemento?', 'it', 'yum'),
('Are you sure to delete this item?', 'Ð’Ñ‹ Ð´ÐµÐ¹ÑÑ‚Ð²Ð¸Ñ‚ÐµÐ»ÑŒÐ½Ð¾ Ñ…Ð¾Ñ‚Ð¸Ñ‚Ðµ ÑƒÐ´Ð°Ð»Ð¸Ñ‚ÑŒ Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»Ñ?', 'ru', 'yum'),
('Are you sure to remove this comment from your profile?', 'Sind Sie sicher, dass sie diesen Kommentar entfernen wollen?', 'de', 'yum'),
('Are you sure to remove this comment from your profile?', '¿Estás seguro que deseas borrar este comentario?', 'es', 'yum'),
('Are you sure to remove this comment from your profile?', 'Etes vous sur de vouloir supprimer ce commentaire?', 'fr', 'yum'),
('Are you sure to remove this comment from your profile?', 'Sicuro di voler eliminare il commento dal tuo profilo?', 'it', 'yum'),
('Are you sure you want to remove this friend?', 'Sind Sie sicher, dass Sie diesen Kontakt aus ihrer Liste entfernen wollen?', 'de', 'yum'),
('Are you sure you want to remove this friend?', 'ÃŠtes vous sur de vouloir suprimer ce membre de votre liste de contact?', 'fr', 'yum'),
('Are you sure you want to remove this friend?', 'Sicuro di voler rimuovere questo contatto?', 'it', 'yum'),
('Assign this role to new users automatically', 'Rolle automatisch an neue Benutzer zuweisen', 'de', 'yum'),
('Assign this role to new users automatically', 'RÃ´le automatique pour un nouveau membre', 'fr', 'yum'),
('Assign this role to new users automatically', 'Assegna questo ruolo automaticamente ai nuovi utenti', 'it', 'yum'),
('Avatar image', 'Profilbild', 'de', 'yum'),
('Avatar image', 'Tu Avatar', 'es', 'yum'),
('Avatar image', 'Image de profil', 'fr', 'yum'),
('Avatar image', 'Avatar', 'it', 'yum'),
('Back', 'Zurück', 'de', 'yum'),
('Back', 'Volver', 'es', 'yum'),
('Back', 'Retour', 'fr', 'yum'),
('Back', 'Indietro', 'it', 'yum'),
('Back to inbox', 'Zurück zum Posteingang', 'de', 'yum'),
('Back to inbox', 'Volver a la bandeja de entrada', 'es', 'yum'),
('Back to inbox', 'Retour Ã  la boite mail', 'fr', 'yum'),
('Back to inbox', 'Torna alla posta in arrivo', 'it', 'yum'),
('Back to my Profile', 'Zurück zu meinem Profil', 'de', 'yum'),
('Back to my Profile', 'Volver a mi Perfil', 'es', 'yum'),
('Back to my Profile', 'Retour Ã  mon profil', 'fr', 'yum'),
('Back to my Profile', 'Torna al mio profilo', 'it', 'yum'),
('Back to profile', 'Zurück zum Profil', 'de', 'yum'),
('Back to profile', 'Volver a perfil', 'es', 'yum'),
('Back to profile', 'Retour au profil', 'fr', 'yum'),
('Back to profile', 'Torna al mio profilo', 'it', 'yum'),
('Back to profile', 'ZurÃ¼ck zum Profil', 'pl', 'yum'),
('Banned', 'Verbannt', 'de', 'yum'),
('Banned', 'Excluido', 'es', 'yum'),
('Banned', 'Membre banni', 'fr', 'yum'),
('Banned', 'Bannato', 'it', 'yum'),
('Banned', 'Verbannt', 'pl', 'yum'),
('Banned', 'Ð—Ð°Ð±Ð»Ð¾ÐºÐ¸Ñ€Ð¾Ð²Ð°Ð½', 'ru', 'yum'),
('Banned users', 'Gesperrte Benuter', 'de', 'yum'),
('Banned users', 'Usuarios excluidos', 'es', 'yum'),
('Banned users', 'Utilisateur bloquÃ©', 'fr', 'yum'),
('Banned users', 'Utenti bannati', 'it', 'yum'),
('Banned users', 'Zbanowani uÅ¼ytkownicy', 'pl', 'yum'),
('Browse', 'Durchsuchen', 'de', 'yum'),
('Browse groups', 'Buscar grupos', 'es', 'yum'),
('Browse logged user activities', 'Benutzeraktivitäten', 'de', 'yum'),
('Browse logged user activities', 'Consultar bitácora de actividades del usuario', 'es', 'yum'),
('Browse logged user activities', 'ActivitÃ© des membres', 'fr', 'yum'),
('Browse logged user activities', 'Naviga attivitÃ  utenti loggati', 'it', 'yum'),
('Browse memberships', 'Mitgliedschaften kaufen', 'de', 'yum'),
('Browse memberships', 'Mitgliedschaften kaufen ??', 'fr', 'yum'),
('Browse memberships', 'Naviga iscrizioni', 'it', 'yum'),
('Browse user activities', 'Tätigkeitenhistorie', 'de', 'yum'),
('Browse user activities', 'ActivitÃ© de mon compte', 'fr', 'yum'),
('Browse user activities', 'Naviga attivitÃ  utenti', 'it', 'yum'),
('Browse user groups', 'Benutzergruppen durchsuchen', 'de', 'yum'),
('Browse user groups', 'Buscar grupos de usuarios', 'es', 'yum'),
('Browse user groups', 'Rechercher dans un grouppe d utilisateurs', 'fr', 'yum'),
('Browse user groups', 'Naviga gruppi utenti', 'it', 'yum'),
('Browse usergroups', 'Gruppen durchsuchen', 'de', 'yum'),
('Browse usergroups', 'Rechercher dans les grouppes', 'fr', 'yum'),
('Browse usergroups', 'Naviga gruppi utenti', 'it', 'yum'),
('Browse users', 'Benutzer durchsuchen', 'de', 'yum'),
('Browse users', 'Buscar usuarios', 'es', 'yum'),
('Browse users', 'Rechercher dans la liste des membres', 'fr', 'yum'),
('Browse users', 'Naviga utenti', 'it', 'yum'),
('Cancel', 'Abbrechen', 'de', 'yum'),
('Cancel', 'Cancelar', 'es', 'yum'),
('Cancel', 'Annuler', 'fr', 'yum'),
('Cancel', 'Cancella', 'it', 'yum'),
('Cancel deletion', 'Löschvorgang abbrechen', 'de', 'yum'),
('Cancel deletion', 'Cancelar eliminación', 'es', 'yum'),
('Cancel deletion', 'Stopper la suppression', 'fr', 'yum'),
('Cancel deletion', 'Annulla cancellazione', 'it', 'yum'),
('Cancel deletion', 'Anuluj usuwanie', 'pl', 'yum'),
('Cancel request', 'Anfrage zurückziehen', 'de', 'yum'),
('Cancel request', 'Annuler la demande de contact', 'fr', 'yum'),
('Cancel request', 'Cancella richiesta', 'it', 'yum'),
('Cannot set password. Try again.', 'No pudimos guardar tu contraseña. Inténtalo otra vez', 'es', 'yum'),
('Category', 'Kategorie', 'de', 'yum'),
('Change Password', 'Ð˜Ð·Ð¼ÐµÐ½Ð¸Ñ‚ÑŒ Ð¿Ð°Ñ€Ð¾Ð»ÑŒ', 'ru', 'yum'),
('Change admin Password', 'Administratorpasswort ändern', 'de', 'yum'),
('Change admin Password', 'Cambiar contraseña de Admin', 'es', 'yum'),
('Change admin Password', 'Changer le mot de passe de l administrateur', 'fr', 'yum'),
('Change admin Password', 'Modifica password admin', 'it', 'yum'),
('Change admin Password', 'ZmieÅ„ hasÅ‚o administratora', 'pl', 'yum'),
('Change password', 'Passwort ändern', 'de', 'yum'),
('Change password', 'Cambiar contraseña', 'es', 'yum'),
('Change password', 'Modification du mot de ', 'fr', 'yum'),
('Change password', 'Cambia password', 'it', 'yum'),
('Change password', 'Passwort Ã¤ndern', 'pl', 'yum'),
('Changes', 'Änderungen', 'de', 'yum'),
('Changes', 'Cambios', 'es', 'yum'),
('Changes', 'Modification', 'fr', 'yum'),
('Changes', 'Modifiche', 'it', 'yum'),
('Changes', 'Zmiany', 'pl', 'yum'),
('Changes are saved', 'Änderungen wurden gespeichert.', 'de', 'yum'),
('Changes are saved', 'Cambios guardados', 'es', 'yum'),
('Changes are saved', 'Les modifications ont bien Ã©tÃ© enregistrÃ©es.', 'fr', 'yum'),
('Changes are saved', 'Modifiche salvate.', 'it', 'yum'),
('Changes are saved', 'Zmiany zostaÅ‚y zapisane.', 'pl', 'yum'),
('Changes is saved.', 'Änderungen wurde gespeichert.', 'de', 'yum'),
('Changes is saved.', 'Cambio guardado', 'es', 'yum'),
('Changes is saved.', 'Modifications mÃ©morisÃ©es.', 'fr', 'yum'),
('Changes is saved.', 'Modifiche salvate', 'it', 'yum'),
('Changes is saved.', 'Ð˜Ð·Ð¼ÐµÐ½ÐµÐ½Ð¸Ñ ÑÐ¾Ñ…Ñ€Ð°Ð½ÐµÐ½Ñ‹.', 'ru', 'yum'),
('Choose All', 'Alle auswählen', 'de', 'yum'),
('Choose All', 'Seleccionar todos', 'es', 'yum'),
('Choose All', 'SÃ©lectioner tout', 'fr', 'yum'),
('Choose All', 'Scegli tutti', 'it', 'yum'),
('Choose All', 'Wybierz wszystkie', 'pl', 'yum'),
('City', 'Stadt', 'de', 'yum'),
('City', 'Ciudad', 'es', 'yum'),
('City', 'Ville', 'fr', 'yum'),
('City', 'CittÃ ', 'it', 'yum'),
('City', 'Miasto', 'pl', 'yum'),
('Column Field type in the database.', 'Spaltentyp in der Datenbank', 'de', 'yum'),
('Column Field type in the database.', 'Columna tipo de Campo en la base de datos', 'es', 'yum'),
('Column Field type in the database.', 'Type de la colone dans la banque de donnÃ©e', 'fr', 'yum'),
('Column Field type in the database.', 'Tipo di colonna nel database', 'it', 'yum'),
('Column Field type in the database.', 'Spaltentyp in der Datenbank', 'pl', 'yum'),
('Comment', 'Kommentar', 'de', 'yum'),
('Comment', 'Comentario', 'es', 'yum'),
('Comment', 'Commentaire', 'fr', 'yum'),
('Comment', 'Commento', 'it', 'yum'),
('Compose', 'Nachricht schreiben', 'de', 'yum'),
('Compose', 'Ecrire un message', 'fr', 'yum'),
('Compose', 'Scrivi', 'it', 'yum'),
('Compose new message', 'Nachricht schreiben', 'de', 'yum'),
('Compose new message', 'Crear mensaje nuevo', 'es', 'yum'),
('Compose new message', 'Ecrire un nouveau message', 'fr', 'yum'),
('Compose new message', 'Scrivi nuovo messaggio', 'it', 'yum'),
('Composing new message', 'Nachricht schreiben', 'de', 'yum'),
('Composing new message', 'Creando mensaje nuevo', 'es', 'yum'),
('Composing new message', 'Ecrire un nouveau message', 'fr', 'yum'),
('Composing new message', 'Scrittura nuovo messaggio', 'it', 'yum'),
('Confirm', 'Bestätigen', 'de', 'yum'),
('Confirm', 'Confirmar', 'es', 'yum'),
('Confirm', 'Confirmer', 'fr', 'yum'),
('Confirm', 'Conferma', 'it', 'yum'),
('Confirm deletion', 'Löschvorgang bestätigen', 'de', 'yum'),
('Confirm deletion', 'Confirmar eliminación', 'es', 'yum'),
('Confirm deletion', 'Confirmation de suppression', 'fr', 'yum'),
('Confirm deletion', 'Conferma cancellazione', 'it', 'yum'),
('Confirm deletion', 'PotwierdÅº usuwanie', 'pl', 'yum'),
('Confirmation pending', 'Bestätigung ausstehend', 'de', 'yum'),
('Confirmation pending', 'Esperando confirmación', 'es', 'yum'),
('Confirmation pending', 'Confirmation en attente', 'fr', 'yum'),
('Confirmation pending', 'In attesa di conferma', 'it', 'yum'),
('Content', 'Inhalt', 'de', 'yum'),
('Content', 'Texte du message', 'fr', 'yum'),
('Content', 'Contenuto', 'it', 'yum'),
('Create', 'Anlegen', 'de', 'yum'),
('Create', 'Crear', 'es', 'yum'),
('Create', 'CÃ©er', 'fr', 'yum'),
('Create', 'Aggiungi', 'it', 'yum'),
('Create', 'Dodaj', 'pl', 'yum'),
('Create', 'ÐÐ¾Ð²Ñ‹Ð¹', 'ru', 'yum'),
('Create Action', 'Crea azione', 'it', 'yum'),
('Create Profile Field', 'Profilfeld anlegen', 'de', 'yum'),
('Create Profile Field', 'Crear Campo de Perfil', 'es', 'yum'),
('Create Profile Field', 'Nouveau champ de profil', 'fr', 'yum'),
('Create Profile Field', 'Aggiungi campo Profilo', 'it', 'yum'),
('Create Profile Field', 'Dodaj pole profilu', 'pl', 'yum'),
('Create Profile Field', 'Ð”Ð¾Ð±Ð°Ð²Ð¸Ñ‚ÑŒ', 'ru', 'yum'),
('Create Role', 'Rolle anlegen', 'de', 'yum'),
('Create Role', 'Crear Rol', 'es', 'yum'),
('Create Role', 'CrÃ©er un rÃ´le', 'fr', 'yum'),
('Create Role', 'Crea ruolo', 'it', 'yum'),
('Create Role', 'Dodaj rolÄ™', 'pl', 'yum'),
('Create User', 'Benutzer anlegen', 'de', 'yum'),
('Create User', 'Crear Usuario', 'es', 'yum'),
('Create User', 'CrÃ©er un nouvel utilisateur', 'fr', 'yum'),
('Create User', 'Nuovo utente', 'it', 'yum'),
('Create User', 'ÐÐ¾Ð²Ñ‹Ð¹', 'ru', 'yum'),
('Create Usergroup', 'Neue Gruppe erstellen', 'de', 'yum'),
('Create Usergroup', 'Crea gruppo utenti', 'it', 'yum'),
('Create my profile', 'Mein Profil anlegen', 'de', 'yum'),
('Create my profile', 'Crea profilo', 'it', 'yum'),
('Create new Translation', 'Neue Übersetzung erstellen', 'de', 'yum'),
('Create new User', 'Neuen Benutzer anlegen', 'de', 'yum'),
('Create new Usergroup', 'Neue Gruppe erstellen', 'de', 'yum'),
('Create new Usergroup', 'Crear nuevo grupo de usuarios', 'es', 'yum'),
('Create new action', 'Neue Aktion', 'de', 'yum'),
('Create new action', 'Crear acción nueva', 'es', 'yum'),
('Create new action', 'Nouvelle action', 'fr', 'yum'),
('Create new action', 'Nuova azione', 'it', 'yum'),
('Create new field group', 'Neue Feldgruppe erstellen', 'de', 'yum'),
('Create new field group', 'Crear campo de grupo nuevo', 'es', 'yum'),
('Create new field group', 'CrÃ©er un nouveau champs dans le groupe', 'fr', 'yum'),
('Create new field group', 'Nuovo campo gruppo', 'it', 'yum'),
('Create new field group', 'Dodaj nowÄ… grupÄ™ pÃ³l', 'pl', 'yum'),
('Create new payment type', 'Neue Zahlungsart hinzufügen', 'de', 'yum'),
('Create new payment type', 'CrÃ©er un nouveau mode de paiement', 'fr', 'yum'),
('Create new payment type', 'Nuovo tipo pagamento', 'it', 'yum'),
('Create new role', 'Neue Rolle anlegen', 'de', 'yum'),
('Create new role', 'Crear rol nuevo', 'es', 'yum'),
('Create new role', 'CrÃ©er un nouveau rÃ´le', 'fr', 'yum'),
('Create new role', 'Nuovo ruolo', 'it', 'yum'),
('Create new role', 'Dodaj nowÄ… rolÄ™', 'pl', 'yum'),
('Create new settings profile', 'Neues Einstellungsprofil erstellen', 'de', 'yum'),
('Create new settings profile', 'Crear ajuste de perfil nuevo', 'es', 'yum'),
('Create new settings profile', 'crÃ©er une nouvelle configuration de profil.', 'fr', 'yum'),
('Create new settings profile', 'Nuova opzion profilo', 'it', 'yum'),
('Create new settings profile', 'Dodaj nowe ustawienia profilu', 'pl', 'yum'),
('Create new user', 'Crear usuario nuevo', 'es', 'yum'),
('Create new user', 'CrÃ©er un nouveau membre', 'fr', 'yum'),
('Create new user', 'Nuovo utente', 'it', 'yum'),
('Create new user', 'Dodaj nowego uÅ¼ytkownika', 'pl', 'yum'),
('Create new usergroup', 'Neue Gruppe erstellen', 'de', 'yum'),
('Create new usergroup', 'CrÃ©er un nouveau grouppe', 'fr', 'yum'),
('Create new usergroup', 'Nuovo usergroup', 'it', 'yum'),
('Create payment type', 'Zahlungsart anlegen', 'de', 'yum'),
('Create payment type', 'Crea tipo pagamento', 'it', 'yum'),
('Create profile field', 'Ein neues Profilfeld erstellen', 'de', 'yum'),
('Create profile field', 'Crear campo de perfil', 'es', 'yum'),
('Create profile field', 'CrÃ©er un nouveau champ de profil', 'fr', 'yum'),
('Create profile field', 'Crea campo profilo', 'it', 'yum'),
('Create profile field', 'Dodaj pole do profilu', 'pl', 'yum'),
('Create profile fields group', 'Crear grupo de campos de perfil', 'es', 'yum'),
('Create profile fields group', 'Nuovo gruppo di campi profilo', 'it', 'yum'),
('Create profile fields group', 'Dodaj grupÄ™ pÃ³l do profilu', 'pl', 'yum'),
('Create role', 'Neue Rolle anlegen', 'de', 'yum'),
('Create role', 'Crear rol', 'es', 'yum'),
('Create role', 'CrÃ©er un nouveau rÃ´le', 'fr', 'yum'),
('Create role', 'Crea ruolo', 'it', 'yum'),
('Create role', 'Dodaj rolÄ™', 'pl', 'yum'),
('Create user', 'Benutzer anlegen', 'de', 'yum'),
('Create user', 'Crear usuario', 'es', 'yum'),
('Create user', 'CrÃ©er un membre', 'fr', 'yum'),
('Create user', 'Crea utente', 'it', 'yum'),
('Create user', 'Dodaj uÅ¼ytkownika', 'pl', 'yum'),
('Date', 'Datum', 'de', 'yum'),
('Date', 'Fecha', 'es', 'yum'),
('Date', 'Date', 'fr', 'yum'),
('Date', 'Data', 'it', 'yum'),
('Date', 'Data', 'pl', 'yum'),
('Default', 'Default', 'de', 'yum'),
('Default', 'Predeterminado', 'es', 'yum'),
('Default', 'Default', 'fr', 'yum'),
('Default', 'Predefinito', 'it', 'yum'),
('Default', 'ÐŸÐ¾ ÑƒÐ¼Ð¾Ð»Ñ‡Ð°Ð½Ð¸ÑŽ', 'ru', 'yum'),
('Delete Account', 'Zugang löschen', 'de', 'yum'),
('Delete Account', 'Eliminar Cuenta', 'es', 'yum'),
('Delete Account', 'Supprimer le compte', 'fr', 'yum'),
('Delete Account', 'Cancella account', 'it', 'yum'),
('Delete Profile Field', 'Cancella campo Profilo', 'it', 'yum'),
('Delete Profile Field', 'Ð£Ð´Ð°Ð»Ð¸Ñ‚ÑŒ', 'ru', 'yum'),
('Delete User', 'Benutzer löschen', 'de', 'yum'),
('Delete User', 'Eliminar Usuario', 'es', 'yum'),
('Delete User', 'Supprimer le membre', 'fr', 'yum'),
('Delete User', 'Cancella utente', 'it', 'yum'),
('Delete User', 'Ð£Ð´Ð°Ð»Ð¸Ñ‚ÑŒ', 'ru', 'yum'),
('Delete account', 'Zugang löschen', 'de', 'yum'),
('Delete account', 'Eliminar cuenta', 'es', 'yum'),
('Delete account', 'Supprimer ce compte', 'fr', 'yum'),
('Delete account', 'Cancella account', 'it', 'yum'),
('Delete account', 'UsuÅ„ konto', 'pl', 'yum'),
('Delete file', 'Cancella file', 'it', 'yum'),
('Delete message', 'Nachricht löschen', 'de', 'yum'),
('Delete message', 'Eliminar mensaje', 'es', 'yum'),
('Delete message', 'Supprimer le message', 'fr', 'yum'),
('Delete message', 'Cancella messaggio', 'it', 'yum'),
('Deleted', 'Gelöscht', 'de', 'yum'),
('Deleted', 'SupprimÃ©', 'fr', 'yum'),
('Deleted', 'Cancella', 'it', 'yum'),
('Deny', 'Ablehnen', 'de', 'yum'),
('Deny', 'Negar', 'es', 'yum'),
('Deny', 'Refuser', 'fr', 'yum'),
('Deny', 'Vietao', 'it', 'yum'),
('Description', 'Beschreibung', 'de', 'yum'),
('Description', 'Descripción', 'es', 'yum'),
('Description', 'Description', 'fr', 'yum'),
('Description', 'Descrizione', 'it', 'yum'),
('Description', 'Opis', 'pl', 'yum'),
('Different users logged in today', 'Anzahl der heute angemeldeten Benutzer', 'de', 'yum'),
('Different users logged in today', 'Diferentes usuarios iniciaron sesión hoy', 'es', 'yum'),
('Different users logged in today', 'Nombre d utilisateurs inscrits/connectÃ©s aujourd hui.', 'fr', 'yum'),
('Different users logged in today', 'Numero di utenti connessi oggi', 'it', 'yum'),
('Different users logged in today', 'Liczba dzisiejszych unikalnych logowaÅ„', 'pl', 'yum'),
('Different viewn Profiles', 'Insgesamt betrachtete Profile', 'de', 'yum'),
('Different viewn Profiles', 'Perfiles diferentes vistos', 'es', 'yum'),
('Different viewn Profiles', 'Total des profils consultÃ©s', 'fr', 'yum'),
('Different viewn Profiles', 'Visualizzazioni profilo', 'it', 'yum'),
('Display order of fields.', 'Reihenfolgenposition, in der das Feld angezeigt wird', 'de', 'yum'),
('Display order of fields.', 'Mostrar orden de los campos', 'es', 'yum'),
('Display order of fields.', 'Ordre de position dans laquelle le champ apparaitra', 'fr', 'yum'),
('Display order of fields.', 'Mostra ordine dei campi.', 'it', 'yum'),
('Display order of fields.', 'KolejnoÅ›Ä‡ wyÅ›wietlania pÃ³l.', 'pl', 'yum'),
('Display order of fields.', 'ÐŸÐ¾Ñ€ÑÐ´Ð¾Ðº Ð¾Ñ‚Ð¾Ð±Ñ€Ð°Ð¶ÐµÐ½Ð¸Ñ Ð¿Ð¾Ð»ÐµÐ¹.', 'ru', 'yum'),
('Display order of group.', 'Anzeigereihenfolge der Gruppe.', 'de', 'yum'),
('Display order of group.', 'Mostrar orden del grupo', 'es', 'yum'),
('Display order of group.', 'Annonces ordonnÃ©es du grouppe.', 'fr', 'yum'),
('Display order of group.', 'Ordine di visualizzazione del gruppo.', 'it', 'yum'),
('Display order of group.', 'WyÅ›wietl kolejnoÅ›Ä‡ grup.', 'pl', 'yum'),
('Do not appear in search', 'Nicht in der Suche erscheinen', 'de', 'yum'),
('Do not appear in search', 'Ne pas paraitre dans les rÃ©sultat de recherche', 'fr', 'yum'),
('Do not appear in search', 'Non mostrare nelle ricerche', 'it', 'yum'),
('Do not show my online status', 'Status verstecken', 'de', 'yum'),
('Do not show my online status', 'Ne pas rendre mon profil visible lorsque je suis en ligne', 'fr', 'yum'),
('Do not show my online status', 'Non mostrare il mio stato online', 'it', 'yum'),
('Do not show the owner of a profile when i visit him', 'Niemandem zeigen, wen ich besucht habe', 'de', 'yum'),
('Do not show the owner of a profile when i visit him', 'Ne pas montrer les profils que j ai visitÃ©', 'fr', 'yum'),
('Do not show the owner of a profile when i visit him', 'Non mostrare al proprietario quando visito il suo profilo', 'it', 'yum'),
('Duration in days', 'Gültigkeitsdauer in Tagen', 'de', 'yum'),
('Duration in days', 'ValiditÃ© en jours', 'fr', 'yum'),
('Duration in days', 'Durata in giorni', 'it', 'yum'),
('E-Mail address', 'E-Mail Adresse', 'de', 'yum'),
('E-Mail address', 'Correo electrónico', 'es', 'yum'),
('E-Mail address', 'Adresse e-mail', 'fr', 'yum'),
('E-Mail address', 'Indirizzo email', 'it', 'yum'),
('E-Mail already in use. If you have not registered before, please contact our System administrator.', 'Este correo ya está siendo usado por alguien. Si no te habías registrado antes entonces contáctanos', 'es', 'yum'),
('E-mail', 'E-mail', 'de', 'yum'),
('E-mail', 'Correo electrónico', 'es', 'yum'),
('E-mail', 'E-mail', 'fr', 'yum'),
('E-mail', 'E-mail', 'it', 'yum'),
('E-mail', 'Mejl', 'pl', 'yum'),
('E-mail', 'Ð­Ð»ÐµÐºÑ‚Ñ€Ð¾Ð½Ð½Ð°Ñ Ð¿Ð¾Ñ‡Ñ‚Ð°', 'ru', 'yum'),
('Edit', 'Bearbeiten', 'de', 'yum'),
('Edit', 'Editar', 'es', 'yum'),
('Edit', 'Editer', 'fr', 'yum'),
('Edit', 'Modifica', 'it', 'yum'),
('Edit', 'Bearbeiten', 'pl', 'yum'),
('Edit', 'Ð ÐµÐ´Ð°ÐºÑ‚Ð¸Ñ€Ð¾Ð²Ð°Ñ‚ÑŒ', 'ru', 'yum'),
('Edit personal data', 'Persönliche Daten bearbeiten', 'de', 'yum'),
('Edit personal data', 'Editar datos personales', 'es', 'yum'),
('Edit personal data', 'Modifier mes donnÃ©es personnelles', 'fr', 'yum'),
('Edit personal data', 'Modifica dati personali', 'it', 'yum'),
('Edit profile', 'Profil bearbeiten', 'de', 'yum'),
('Edit profile', 'Editar perfil', 'es', 'yum'),
('Edit profile', 'Editer le profil', 'fr', 'yum'),
('Edit profile', 'Modifica profilo', 'it', 'yum'),
('Edit profile', 'Meine Profildaten bearbeiten', 'pl', 'yum'),
('Edit profile', 'Ð ÐµÐ´Ð°ÐºÑ‚Ð¸Ñ€Ð¾Ð²Ð°Ð½Ð¸Ðµ Ð¿Ñ€Ð¾Ñ„Ð¸Ð»Ñ', 'ru', 'yum'),
('Edit profile field', 'Profilfeld bearbeiten', 'de', 'yum'),
('Edit profile field', 'Editar campo del perfil', 'es', 'yum'),
('Edit profile field', 'Editer les champ du profil', 'fr', 'yum'),
('Edit profile field', 'Modifica campi profilo', 'it', 'yum'),
('Edit profile field', 'Profilfeld bearbeiten', 'pl', 'yum'),
('Edit text', 'Modifica testo', 'it', 'yum'),
('Edit this role', 'Diese Rolle bearbeiten', 'de', 'yum'),
('Edit this role', 'Editar este rol', 'es', 'yum'),
('Edit this role', 'Modifier ce rÃ´le', 'fr', 'yum'),
('Edit this role', 'Modifica questo ruolo', 'it', 'yum'),
('Edit this role', 'ZmieÅ„ tÄ™ rolÄ™', 'pl', 'yum'),
('Email is incorrect.', 'E-Mail ist nicht korrekt.', 'de', 'yum'),
('Email is incorrect.', 'Email incorrecto', 'es', 'yum'),
('Email is incorrect.', 'L adresse e-mail est incorrecte.', 'fr', 'yum'),
('Email is incorrect.', 'Email non corretta.', 'it', 'yum'),
('Email is incorrect.', 'Mejl jest niepoprawny.', 'pl', 'yum'),
('Email is incorrect.', 'ÐŸÐ¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»ÑŒ Ñ Ñ‚Ð°ÐºÐ¸Ð¼ ÑÐ»ÐµÐºÑ‚Ñ€Ð¾Ð½Ñ‹Ð¼ Ð°Ð´Ñ€ÐµÑÐ¾Ð¼ Ð½Ðµ Ð·Ð°Ñ€ÐµÐ³Ð¸ÑÑ‚Ñ€Ð¸', 'ru', 'yum'),
('Email is not set when trying to send Registration Email', 'Debes colocar el correo electrónico para enviar el correo de registro', 'es', 'yum'),
('Enable Captcha', 'Captcha Überprüfung aktivieren', 'de', 'yum'),
('Enable Captcha', 'Habilitar Captcha', 'es', 'yum'),
('Enable Captcha', 'Activer le controle par Captcha', 'fr', 'yum'),
('Enable Captcha', 'Attiva Captcha', 'it', 'yum'),
('Enable Captcha', 'WÅ‚Ä…cz Captcha', 'pl', 'yum'),
('Enable Email Activation', 'Aktivierung per E-Mail einschalten', 'de', 'yum'),
('Enable Email Activation', 'Habilitar Activación por Email', 'es', 'yum'),
('Enable Email Activation', 'Activer l activation par e-mail', 'fr', 'yum'),
('Enable Email Activation', 'Attiva attivazione via Email', 'it', 'yum'),
('Enable Email Activation', 'WÅ‚Ä…cz aktywacjÄ™ mejlem', 'pl', 'yum'),
('Enable Profile History', 'Profilhistorie einschalten', 'de', 'yum'),
('Enable Profile History', 'Habilitar Historial de Perfil', 'es', 'yum'),
('Enable Profile History', 'Activer le protocole des profils', 'fr', 'yum'),
('Enable Profile History', 'Attiva storico Profilo', 'it', 'yum'),
('Enable Profile History', 'WÅ‚Ä…cz historiÄ™ profilÃ³w', 'pl', 'yum'),
('Enable Recovery', 'Wiederherstellung einschalten', 'de', 'yum'),
('Enable Recovery', 'Habilitar Recuperación', 'es', 'yum'),
('Enable Recovery', 'Activer la restauration', 'fr', 'yum'),
('Enable Recovery', 'Attiva rispristino', 'it', 'yum'),
('Enable Recovery', 'WÅ‚Ä…cz odzyskiwanie haseÅ‚', 'pl', 'yum'),
('Enable Registration', 'Registrierung einschalten', 'de', 'yum'),
('Enable Registration', 'Habilitar Registro', 'es', 'yum'),
('Enable Registration', 'Activer l enregistrement', 'fr', 'yum'),
('Enable Registration', 'Attiva registrazione', 'it', 'yum'),
('Enable Registration', 'WÅ‚Ä…cz rejestracjÄ™', 'pl', 'yum'),
('End date', 'Enddatum', 'de', 'yum'),
('End date', 'Data scadenza', 'it', 'yum'),
('Ends at', 'Endet am', 'de', 'yum'),
('Ends at', 'Scade il', 'it', 'yum'),
('Error Message', 'Fehlermeldung', 'de', 'yum'),
('Error Message', 'Mensaje de Error', 'es', 'yum'),
('Error Message', 'Message d erreur', 'fr', 'yum'),
('Error Message', 'Messaggio d''errore', 'it', 'yum'),
('Error Message', 'Ð¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸Ðµ Ð¾Ð± Ð¾ÑˆÐ¸Ð±ÐºÐµ', 'ru', 'yum'),
('Error message when Validation fails.', 'Fehlermeldung falls die Validierung fehlschlägt', 'de', 'yum'),
('Error message when Validation fails.', 'Mensaje de error cuando la Validación falla', 'es', 'yum'),
('Error message when Validation fails.', 'Message d erreur pour le cas ou la validation Ã©choue', 'fr', 'yum'),
('Error message when Validation fails.', 'Messaggio d''errore se fallisce la validazione', 'it', 'yum'),
('Error message when you validate the form.', 'Messaggio d''errore durante la validazione del form.', 'it', 'yum'),
('Error message when you validate the form.', 'Ð¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸Ðµ Ð¾Ð± Ð¾ÑˆÐ¸Ð±ÐºÐµ Ð¿Ñ€Ð¸ Ð¿Ñ€Ð¾Ð²ÐµÑ€ÐºÐµ Ñ„Ð¾Ñ€Ð¼Ñ‹.', 'ru', 'yum'),
('Error while processing new avatar image : {error_message}; File was uploaded without resizing', 'Das Bild konnte nicht richtig skaliert werden: {error_message}. Es wurde trotzdem erfolgreich hochge', 'de', 'yum'),
('Error while processing new avatar image : {error_message}; File was uploaded without resizing', 'L image n a pas pu Ãªtre retaillÃ©e automatiquement lors du chargement. : {error_message}. elle a Ã©', 'fr', 'yum'),
('Error while processing new avatar image : {error_message}; File was uploaded without resizing', 'Errore processando il nuovo avatar: {error_message}. File caricato senza ridimensionamento.', 'it', 'yum'),
('Expired', 'Abgelaufen', 'de', 'yum'),
('Field', 'Feld', 'de', 'yum'),
('Field', 'Campo', 'es', 'yum'),
('Field', 'Champ', 'fr', 'yum'),
('Field', 'Campo', 'it', 'yum'),
('Field', 'Pole', 'pl', 'yum'),
('Field Size', 'Feldgröße', 'de', 'yum'),
('Field Size', 'Tamaño del Campo', 'es', 'yum'),
('Field Size', 'Longueur du champ', 'fr', 'yum'),
('Field Size', 'Dimensione campo', 'it', 'yum'),
('Field Size', 'Ð Ð°Ð·Ð¼ÐµÑ€ Ð¿Ð¾Ð»Ñ', 'ru', 'yum'),
('Field Size min', 'min Feldgröße', 'de', 'yum'),
('Field Size min', 'Tamaño mínimo del campo', 'es', 'yum'),
('Field Size min', 'longueur du champ minimum', 'fr', 'yum'),
('Field Size min', 'Dimesione minima campo', 'it', 'yum'),
('Field Size min', 'ÐœÐ¸Ð½Ð¸Ð¼Ð°Ð»ÑŒÐ½Ð¾Ðµ Ð·Ð½Ð°Ñ‡ÐµÐ½Ð¸Ðµ', 'ru', 'yum'),
('Field Type', 'Feldtyp', 'de', 'yum'),
('Field Type', 'Tipo de Campo', 'es', 'yum'),
('Field Type', 'Type du champ', 'fr', 'yum'),
('Field Type', 'Tipo campo', 'it', 'yum'),
('Field Type', 'Ð¢Ð¸Ð¿ Ð¿Ð¾Ð»Ñ', 'ru', 'yum'),
('Field group', 'Feldgruppe', 'de', 'yum'),
('Field group', 'Grupo de Campos', 'es', 'yum'),
('Field group', 'Champ des groupes', 'fr', 'yum'),
('Field group', 'Campi gruppo', 'it', 'yum'),
('Field group', 'Grupa pÃ³l', 'pl', 'yum'),
('Field name on the language of "sourceLanguage".', 'Feldname in der Ursprungssprache', 'de', 'yum'),
('Field name on the language of "sourceLanguage".', 'Nombre del campo en el idioma "sourceLanguage".', 'es', 'yum'),
('Field name on the language of "sourceLanguage".', 'Non du champ dans la langue standard', 'fr', 'yum'),
('Field name on the language of "sourceLanguage".', 'Nome campo per il linguaggio di "sourceLanguage".', 'it', 'yum'),
('Field name on the language of "sourceLanguage".', 'Feldname in der Ursprungssprache', 'pl', 'yum'),
('Field name on the language of "sourceLanguage".', 'ÐÐ°Ð·Ð²Ð°Ð½Ð¸Ðµ Ð¿Ð¾Ð»Ñ Ð½Ð° ÑÐ·Ñ‹ÐºÐµ "sourceLanguage".', 'ru', 'yum'),
('Field size', 'Feldgröße', 'de', 'yum'),
('Field size', 'Tamaño del campo', 'es', 'yum'),
('Field size', 'Longueur du champ', 'fr', 'yum'),
('Field size', 'Dimensione campo', 'it', 'yum'),
('Field size', 'FeldgrÃ¶ÃŸe', 'pl', 'yum'),
('Field size column in the database.', 'Dimensione campo nel database', 'it', 'yum'),
('Field size column in the database.', 'Ð Ð°Ð·Ð¼ÐµÑ€ Ð¿Ð¾Ð»Ñ ÐºÐ¾Ð»Ð¾Ð½ÐºÐ¸ Ð² Ð±Ð°Ð·Ðµ Ð´Ð°Ð½Ð½Ñ‹Ñ…', 'ru', 'yum'),
('Field size in the database.', 'Feldgröße in der Datenbank', 'de', 'yum'),
('Field size in the database.', 'Tamaño del campo en la base de datos', 'es', 'yum'),
('Field size in the database.', 'Longueur du champ dans la banque de donnÃ©e', 'fr', 'yum'),
('Field size in the database.', 'Dimensione campo nel database', 'it', 'yum'),
('Field size in the database.', 'FeldgrÃ¶ÃŸe in der Datenbank', 'pl', 'yum'),
('Field type', 'Feldtyp', 'de', 'yum'),
('Field type', 'Tipo de campo', 'es', 'yum'),
('Field type', 'Type de champ', 'fr', 'yum'),
('Field type', 'Tipo campo', 'it', 'yum'),
('Field type', 'Feldtyp', 'pl', 'yum'),
('Field type column in the database.', 'Tipo campo nel database.', 'it', 'yum'),
('Field type column in the database.', 'Ð¢Ð¸Ð¿ Ð¿Ð¾Ð»Ñ ÐºÐ¾Ð»Ð¾Ð½ÐºÐ¸ Ð² Ð±Ð°Ð·Ðµ Ð´Ð°Ð½Ð½Ñ‹Ñ….', 'ru', 'yum'),
('Fields with <span class="required">*</span> are required.', 'Felder mit <span class="required">*</span> sind Pflichtfelder.', 'de', 'yum'),
('First Name', 'Nome', 'it', 'yum'),
('First Name', 'Ð˜Ð¼Ñ', 'ru', 'yum'),
('First name', 'Vorname', 'de', 'yum'),
('First name', 'Nombre', 'es', 'yum'),
('First name', 'PrÃ©nom', 'fr', 'yum'),
('First name', 'Cognome', 'it', 'yum'),
('First name', 'Vorname', 'pl', 'yum'),
('For all', 'Für alle', 'de', 'yum'),
('For all', 'Para todos', 'es', 'yum'),
('For all', 'Pour tous', 'fr', 'yum'),
('For all', 'Per tutti', 'it', 'yum'),
('For all', 'Ð”Ð»Ñ Ð²ÑÐµÑ…', 'ru', 'yum'),
('Form validation error', 'Error en la validación del formulario', 'es', 'yum'),
('Friends', 'Kontakte', 'de', 'yum'),
('Friends', 'Amigos', 'es', 'yum'),
('Friends', 'Mes contacts', 'fr', 'yum'),
('Friends', 'Contatti', 'it', 'yum'),
('Friends of {username}', 'Kontakte von {username}', 'de', 'yum'),
('Friends of {username}', 'Contact de {username}', 'fr', 'yum'),
('Friends of {username}', 'Contatti di {username}', 'it', 'yum'),
('Friendship', 'Kontakt', 'de', 'yum'),
('Friendship', 'Amistades', 'es', 'yum'),
('Friendship', 'Contact', 'fr', 'yum'),
('Friendship', 'Contatto', 'it', 'yum'),
('Friendship confirmed', 'Freundschaft bestätigt', 'de', 'yum'),
('Friendship confirmed', 'Amistad confirmada', 'es', 'yum'),
('Friendship confirmed', 'Demande de contact confirmÃ©e', 'fr', 'yum'),
('Friendship confirmed', 'Contatto confermato', 'it', 'yum'),
('Friendship rejected', 'Kontaktanfrage abgelehnt', 'de', 'yum'),
('Friendship rejected', 'Demande de contact refusÃ©e', 'fr', 'yum'),
('Friendship rejected', 'Amizicia rigettata', 'it', 'yum'),
('Friendship request already sent', 'Kontaktbestätigung ausstehend', 'de', 'yum'),
('Friendship request already sent', 'Ya se envió la solicitud de amistad', 'es', 'yum'),
('Friendship request already sent', 'En attente de confirmation', 'fr', 'yum'),
('Friendship request already sent', 'Richiesta di contatto giÃ  inviata', 'it', 'yum'),
('Friendship request for {username} has been sent', 'Kontaktanfrage an {username} gesendet', 'de', 'yum'),
('Friendship request for {username} has been sent', 'La solicitud de amistad a {username} ha sido enviada', 'es', 'yum'),
('Friendship request for {username} has been sent', 'Demande de contact envoyÃ©e Ã  {username}', 'fr', 'yum'),
('Friendship request for {username} has been sent', 'Inviata richiesta di contatto a {username}', 'it', 'yum'),
('Friendship request has been rejected', 'Kontaktanfrage zurückgewiesen', 'de', 'yum'),
('Friendship request has been rejected', 'Solicitud de amistad rechazada', 'es', 'yum'),
('Friendship request has been rejected', 'Votre demande de contact a Ã©tÃ© rejetÃ©e', 'fr', 'yum'),
('Friendship request has been rejected', 'Richiesta di contatto respinta', 'it', 'yum'),
('From', 'Von', 'de', 'yum'),
('From', 'Desde', 'es', 'yum'),
('From', 'De', 'fr', 'yum'),
('From', 'Da', 'it', 'yum'),
('From', 'Od', 'pl', 'yum'),
('General', 'Allgemein', 'de', 'yum'),
('General', 'Generale', 'it', 'yum'),
('Generate Demo Data', 'Zufallsbenutzer erzeugen', 'de', 'yum'),
('Generate Demo Data', 'Genera datos de prueba', 'es', 'yum'),
('Generate Demo Data', 'GÃ©nÃ©rer un compte membre-dÃ©mo', 'fr', 'yum'),
('Generate Demo Data', 'Genera dati demo', 'it', 'yum'),
('Go to profile of {username}', 'Zum Profil von {username}', 'de', 'yum'),
('Go to profile of {username}', 'Ir al perfil de {username}', 'es', 'yum'),
('Go to profile of {username}', 'Voir le profil de {username}', 'fr', 'yum'),
('Go to profile of {username}', 'Vai al profilo di {username}', 'it', 'yum'),
('Grant permission', 'Berechtigung zuweisen', 'de', 'yum'),
('Grant permission', 'Otorgar permiso', 'es', 'yum'),
('Grant permission', 'Attribuer une permission ', 'fr', 'yum'),
('Grant permission', 'Assegna permesso', 'it', 'yum'),
('Group Name', 'Gruppenname', 'de', 'yum'),
('Group Name', 'Nombre de grupo', 'es', 'yum'),
('Group Name', 'Nom du groupe', 'fr', 'yum'),
('Group Name', 'Nome gruppo', 'it', 'yum'),
('Group Name', 'Nazwa grupy', 'pl', 'yum'),
('Group name on the language of "sourceLanguage".', 'Gruppenname in der Basissprache.', 'de', 'yum'),
('Group name on the language of "sourceLanguage".', 'Nombre del grupo en el idioma "sourceLanguage".', 'es', 'yum'),
('Group name on the language of "sourceLanguage".', 'Nom du groupe dans la langue principale.', 'fr', 'yum'),
('Group name on the language of "sourceLanguage".', 'Il nome del gruppo nella lingua di base.', 'it', 'yum'),
('Group name on the language of "sourceLanguage".', 'Nazwa grupy w jÄ™zyku uÅ¼ytkownika.', 'pl', 'yum'),
('Group owner', 'Gruppeneigentümer', 'de', 'yum'),
('Group owner', 'Dueño del grupo', 'es', 'yum'),
('Group owner', 'PropriÃ©taire du grouppe', 'fr', 'yum'),
('Group owner', 'Proprietario gruppo', 'it', 'yum'),
('Group title', 'Titel der Gruppe', 'de', 'yum'),
('Group title', 'Título del grupo', 'es', 'yum'),
('Group title', 'Titre du grouppe', 'fr', 'yum'),
('Group title', 'Titolo gruppo', 'it', 'yum'),
('Having', 'Anzeigen', 'de', 'yum'),
('Having', 'Annonce', 'fr', 'yum'),
('Having', 'Visualizza', 'it', 'yum'),
('Hidden', 'Verstecken', 'de', 'yum'),
('Hidden', 'Escondido', 'es', 'yum'),
('Hidden', 'CachÃ©', 'fr', 'yum'),
('Hidden', 'Nascosto', 'it', 'yum'),
('Hidden', 'Ð¡ÐºÑ€Ñ‹Ñ‚', 'ru', 'yum'),
('How expensive is a membership?', 'Preis der Mitgliedschaft', 'de', 'yum'),
('How expensive is a membership?', 'Prix de l abbonement', 'fr', 'yum'),
('How expensive is a membership?', 'Quanto costa l''iscrizione?', 'it', 'yum'),
('How many days will the membership be valid after payment?', 'Wie viele Tage ist die Mitgliedschaft nach Zahlungseingang gültig?', 'de', 'yum'),
('How many days will the membership be valid after payment?', 'Nombre de jours pour la validitÃ© d un abbonement aprÃ¨s paiement?', 'fr', 'yum'),
('How many days will the membership be valid after payment?', 'Quanti giorni Ã¨ valida l''iscrizione dopo il pagamento?', 'it', 'yum'),
('Ignore', 'Ignorieren', 'de', 'yum'),
('Ignore', 'Ignorar', 'es', 'yum'),
('Ignore', 'Ignorer', 'fr', 'yum'),
('Ignore', 'Ignora', 'it', 'yum'),
('Ignored users', 'Ignorierliste', 'de', 'yum'),
('Ignored users', 'Usuarios ignorados', 'es', 'yum'),
('Ignored users', 'Liste noire', 'fr', 'yum'),
('Ignored users', 'Utenti ignorati', 'it', 'yum'),
('Inactive users', 'Inaktive Benutzer', 'de', 'yum'),
('Inactive users', 'Usuarios inactivos', 'es', 'yum'),
('Inactive users', 'Utilisateur inactif', 'fr', 'yum'),
('Inactive users', 'Utenti inattivi', 'it', 'yum'),
('Inactive users', 'Nieaktywni uÅ¼ytkownicy', 'pl', 'yum'),
('Incorrect activation URL', 'El enlace de activación que usaste es incorrecto', 'es', 'yum'),
('Incorrect activation URL.', 'Falsche Aktivierungs URL.', 'de', 'yum'),
('Incorrect activation URL.', 'URL de activación incorrecta.', 'es', 'yum'),
('Incorrect activation URL.', 'Le lien d activation de votre compte est incorrect ou pÃ©rimÃ©. Consultez notre FAQ: mot clÃ©= inscr', 'fr', 'yum'),
('Incorrect activation URL.', 'URL di attivazione incorretto', 'it', 'yum'),
('Incorrect activation URL.', 'Falsche Aktivierungs URL.', 'pl', 'yum'),
('Incorrect activation URL.', 'ÐÐµÐ¿Ñ€Ð°Ð²Ð¸Ð»ÑŒÐ½Ð°Ñ ÑÑÑ‹Ð»ÐºÐ° Ð°ÐºÑ‚Ð¸Ð²Ð°Ñ†Ð¸Ð¸ ÑƒÑ‡ÐµÑ‚Ð½Ð¾Ð¹ Ð·Ð°Ð¿Ð¸ÑÐ¸.', 'ru', 'yum'),
('Incorrect password (minimal length 4 symbols).', 'Falsches Passwort (minimale Länge 4 Zeichen).', 'de', 'yum'),
('Incorrect password (minimal length 4 symbols).', 'Contraseña incorrecta (debe tener mínimo 4 caracteres).', 'es', 'yum'),
('Incorrect password (minimal length 4 symbols).', 'Mot de passe incorrect (longueur minimal de 4 charactÃ¨res).', 'fr', 'yum'),
('Incorrect password (minimal length 4 symbols).', 'Password sbagliata (lunga almeno 4 caratteri).', 'it', 'yum'),
('Incorrect password (minimal length 4 symbols).', 'Falsches Passwort (minimale LÃ¤nge 4 Zeichen).', 'pl', 'yum'),
('Incorrect password (minimal length 4 symbols).', 'ÐœÐ¸Ð½Ð¸Ð¼Ð°Ð»ÑŒÐ½Ð°Ñ Ð´Ð»Ð¸Ð½Ð° Ð¿Ð°Ñ€Ð¾Ð»Ñ 4 ÑÐ¸Ð¼Ð²Ð¾Ð»Ð°.', 'ru', 'yum'),
('Incorrect recovery link.', 'Recovery link ist falsch.', 'de', 'yum'),
('Incorrect recovery link.', 'Enlace de recuperación que usaste es incorrecto', 'es', 'yum'),
('Incorrect recovery link.', 'Le lien de restauration est incorrect ou pÃ©rimÃ©.', 'fr', 'yum'),
('Incorrect recovery link.', 'Link ripristino incorretto.', 'it', 'yum'),
('Incorrect recovery link.', 'Recovery link ist falsch.', 'pl', 'yum'),
('Incorrect recovery link.', 'ÐÐµÐ¿Ñ€Ð°Ð²Ð¸Ð»ÑŒÐ½Ð°Ñ ÑÑÑ‹Ð»ÐºÐ° Ð²Ð¾ÑÑ‚Ð°Ð½Ð¾Ð²Ð»ÐµÐ½Ð¸Ñ Ð¿Ð°Ñ€Ð¾Ð»Ñ.', 'ru', 'yum'),
('Incorrect symbol''s. (A-z0-9)', 'Im Benutzernamen sind nur Buchstaben und Zahlen erlaubt.', 'de', 'yum'),
('Incorrect symbol''s. (A-z0-9)', 'Caracteres incorrectos. (A-z0-9)', 'es', 'yum'),
('Incorrect symbol''s. (A-z0-9)', 'Pour le choix de votre nom d utilisateur seules les lettres de l alphabet et les chiffres sont accep', 'fr', 'yum'),
('Incorrect symbol''s. (A-z0-9)', 'Sono consentiti solo lettere e numeri', 'it', 'yum'),
('Incorrect symbol''s. (A-z0-9)', 'Im Benutzernamen sind nur Buchstaben und Zahlen erlaubt.', 'pl', 'yum'),
('Incorrect symbol''s. (A-z0-9)', 'Ð’ Ð¸Ð¼ÐµÐ½Ð¸ Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»Ñ Ð´Ð¾Ð¿ÑƒÑÐºÐ°ÑŽÑ‚ÑÑ Ñ‚Ð¾Ð»ÑŒÐºÐ¾ Ð»Ð°Ñ‚Ð¸Ð½ÑÐºÐ¸Ðµ Ð±ÑƒÐº', 'ru', 'yum'),
('Incorrect username (length between 3 and 20 characters).', 'Falscher Benutzername (Länge zwischen 3 und 20 Zeichen).', 'de', 'yum'),
('Incorrect username (length between 3 and 20 characters).', 'Nombre de usuario incorrecto (debe tener longitud entre 3 y 20 caracteres)', 'es', 'yum'),
('Incorrect username (length between 3 and 20 characters).', 'Nom d utilisateur incorrect (Longueur comprise entre 3 et 20 charactÃ¨res).', 'fr', 'yum'),
('Incorrect username (length between 3 and 20 characters).', 'Username errato (lunghezza tra i 3 e i 20 caratteri).', 'it', 'yum'),
('Incorrect username (length between 3 and 20 characters).', 'Falscher Benutzername (LÃ¤nge zwischen 3 und 20 Zeichen).', 'pl', 'yum'),
('Incorrect username (length between 3 and 20 characters).', 'Ð”Ð»Ð¸Ð½Ð° Ð¸Ð¼ÐµÐ½Ð¸ Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»Ñ Ð¾Ñ‚ 3 Ð´Ð¾ 20 ÑÐ¸Ð¼Ð²Ð¾Ð»Ð¾Ð².', 'ru', 'yum'),
('Instructions have been sent to you. Please check your email.', 'Weitere Anweisungen wurden an ihr E-Mail Postfach geschickt. Bitte prüfen Sie ihre E-Mails', 'de', 'yum'),
('Instructions have been sent to you. Please check your email.', 'Se enviarion instrucciones a tu correo. Por favor, ve tu cuenta de correo.', 'es', 'yum'),
('Instructions have been sent to you. Please check your email.', 'Merci pour votre inscription.Controlez votre boite e-mail, le code d activation de votre compte vous', 'fr', 'yum'),
('Instructions have been sent to you. Please check your email.', 'Istruzioni inviate per email. Controlla la tua casella di posta elettronica.', 'it', 'yum'),
('Invalid recovery key', 'Fehlerhafter Wiederherstellungsschlüssel', 'de', 'yum'),
('Invitation', 'Einladung', 'de', 'yum'),
('Invitation', 'Invitaciones', 'es', 'yum'),
('Invitation', 'Invitation', 'fr', 'yum'),
('Invitation', 'Invito', 'it', 'yum'),
('Is membership possible', 'Mitgliedschaft möglich?', 'de', 'yum'),
('Is membership possible', 'Inscription possible?', 'fr', 'yum'),
('Is membership possible', 'Iscrizione possibile?', 'it', 'yum'),
('Join group', 'Beitreten', 'de', 'yum'),
('Join group', 'Collega al gruppo', 'it', 'yum'),
('Jump to profile', 'Zum Profil', 'de', 'yum'),
('Jump to profile', 'Consulter le profil', 'fr', 'yum'),
('Jump to profile', 'Vai al profilo', 'it', 'yum'),
('Language', 'Sprache', 'de', 'yum'),
('Language', 'Idioma', 'es', 'yum'),
('Language', '	Langue', 'fr', 'yum'),
('Language', 'Lingua', 'it', 'yum'),
('Last Name', 'Cognome', 'it', 'yum'),
('Last Name', 'Ð¤Ð°Ð¼Ð¸Ð»Ð¸Ñ', 'ru', 'yum'),
('Last name', 'Nachname', 'de', 'yum'),
('Last name', 'Apellido', 'es', 'yum'),
('Last name', 'Nom de famille', 'fr', 'yum'),
('Last name', 'Nome', 'it', 'yum'),
('Last name', 'Nachname', 'pl', 'yum'),
('Last visit', 'Letzter Besuch', 'de', 'yum'),
('Last visit', 'òltima visita', 'es', 'yum'),
('Last visit', 'DernÃ¨re visite', 'fr', 'yum'),
('Last visit', 'Ultima visita', 'it', 'yum'),
('Last visit', 'Letzter Besuch', 'pl', 'yum'),
('Last visit', 'ÐŸÐ¾ÑÐ»ÐµÐ´Ð½Ð¸Ð¹ Ð²Ð¸Ð·Ð¸Ñ‚', 'ru', 'yum'),
('Let me appear in the search', 'Ich möchte in der Suche erscheinen', 'de', 'yum'),
('Let me appear in the search', 'Je ne souhaite pas apparaitre dans les rÃ©sultats des moteurs de recherche', 'fr', 'yum'),
('Let me appear in the search', 'Mostrami nei risultati', 'it', 'yum'),
('Let the user choose in privacy settings', 'Den Benutzer entscheiden lassen', 'de', 'yum'),
('Let the user choose in privacy settings', 'Laisser l utilisateur choisir lui-mÃªme', 'fr', 'yum'),
('Let the user choose in privacy settings', 'Consentire all''utente di scegliere le impostazioni della privacy', 'it', 'yum'),
('Letters are not case-sensitive.', 'Zwischen Groß-und Kleinschreibung wird nicht unterschieden.', 'de', 'yum'),
('Letters are not case-sensitive.', 'Las letras nos son sensibles a mayúsculas y minúsculas.', 'es', 'yum'),
('Letters are not case-sensitive.', 'Aucune importance ne sera apportÃ©e aux minuscules ou majuscules.', 'fr', 'yum'),
('Letters are not case-sensitive.', 'La ricerca non Ã¨ case sensitive.', 'it', 'yum'),
('Letters are not case-sensitive.', 'Zwischen GroÃŸ-und Kleinschreibung wird nicht unterschieden.', 'pl', 'yum'),
('Letters are not case-sensitive.', 'Ð ÐµÐ³Ð¸ÑÑ‚Ñ€ Ð·Ð½Ð°Ñ‡ÐµÐ½Ð¸Ðµ Ð½Ðµ Ð¸Ð¼ÐµÐµÑ‚.', 'ru', 'yum'),
('List Profile Field', 'Lista campi Profilo', 'it', 'yum'),
('List Profile Field', 'Ð¡Ð¿Ð¸ÑÐ¾Ðº', 'ru', 'yum'),
('List User', 'Lista utenti', 'it', 'yum'),
('List User', 'Ð¡Ð¿Ð¸ÑÐ¾Ðº Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»ÐµÐ¹', 'ru', 'yum'),
('List roles', 'Rollen anzeigen', 'de', 'yum'),
('List roles', 'Listar roles', 'es', 'yum'),
('List roles', 'liste des rÃ´les', 'fr', 'yum'),
('List roles', 'Lista ruoli', 'it', 'yum');
INSERT INTO `translation` (`message`, `translation`, `language`, `category`) VALUES
('List roles', 'Lista rÃ³l', 'pl', 'yum'),
('List user', 'Benutzer auflisten', 'de', 'yum'),
('List user', 'Listar usuario', 'es', 'yum'),
('List user', 'Liste complÃ¨tes des membres', 'fr', 'yum'),
('List user', 'Lista utenti', 'it', 'yum'),
('List user', 'Benutzer auflisten', 'pl', 'yum'),
('List users', 'Benutzer anzeigen', 'de', 'yum'),
('List users', 'Listar usuarios', 'es', 'yum'),
('List users', 'Liste des membres', 'fr', 'yum'),
('List users', 'Lista utenti', 'it', 'yum'),
('List users', 'Lista uÅ¼ytkownikÃ³w', 'pl', 'yum'),
('Log profile visits', 'Meine Profilbesuche anzeigen', 'de', 'yum'),
('Log profile visits', 'Voir les statistiques des visiteurs de mon profil', 'fr', 'yum'),
('Log profile visits', 'Log visite profilo', 'it', 'yum'),
('Logged in as', 'Angemeldet als', 'de', 'yum'),
('Logged in as', 'ConnectÃ© en tant que', 'fr', 'yum'),
('Logged in as', 'Loggato come', 'it', 'yum'),
('Login', 'Anmeldung', 'de', 'yum'),
('Login', 'Iniciar sesión', 'es', 'yum'),
('Login', 'Inscription', 'fr', 'yum'),
('Login', 'Entra', 'it', 'yum'),
('Login', 'Logowanie', 'pl', 'yum'),
('Login', 'Ð’Ñ…Ð¾Ð´', 'ru', 'yum'),
('Login Type', 'Anmeldungsart', 'de', 'yum'),
('Login Type', 'Tipo de inicio de sesión', 'es', 'yum'),
('Login Type', 'Mode de connection', 'fr', 'yum'),
('Login Type', 'Tipo login', 'it', 'yum'),
('Login Type', 'Rodzaj logowania', 'pl', 'yum'),
('Login allowed by Email and Username', 'Anmeldung per Benutzername oder E-Mail adresse', 'de', 'yum'),
('Login allowed by Email and Username', 'Inicio de sesión por Email y Nombre de usuario', 'es', 'yum'),
('Login allowed by Email and Username', 'Connection avec le nom d utilisateur ou adresse e-mail.', 'fr', 'yum'),
('Login allowed by Email and Username', 'Login con il nome utente o l''indirizzo e-mail', 'it', 'yum'),
('Login allowed by Email and Username', 'Logowanie przez nazwÄ™ lub mejl', 'pl', 'yum'),
('Login allowed only by Email', 'Anmeldung nur per E-Mail adresse', 'de', 'yum'),
('Login allowed only by Email', 'Inicio de sesión sólo por Email', 'es', 'yum'),
('Login allowed only by Email', 'COnnection avec l adresse e-mail seulement', 'fr', 'yum'),
('Login allowed only by Email', 'Login solo tramite email', 'it', 'yum'),
('Login allowed only by Email', 'Logowanie poprzez mejl', 'pl', 'yum'),
('Login allowed only by Username', 'Anmeldung nur per Benutzername', 'de', 'yum'),
('Login allowed only by Username', 'Inicio de sesión sólo por Nombre de usuario', 'es', 'yum'),
('Login allowed only by Username', 'Connection avec le nom d utilisateur seulement', 'fr', 'yum'),
('Login allowed only by Username', 'Login solo tramite username', 'it', 'yum'),
('Login allowed only by Username', 'Logowanie poprzez nazwÄ™', 'pl', 'yum'),
('Login is not possible with the given credentials', 'Anmeldung mit den angegebenen Werten nicht möglich', 'de', 'yum'),
('Logout', 'Abmelden', 'de', 'yum'),
('Logout', 'Cerrar sesión', 'es', 'yum'),
('Logout', 'DÃ©connection', 'fr', 'yum'),
('Logout', 'Esci', 'it', 'yum'),
('Logout', 'Wyloguj', 'pl', 'yum'),
('Logout', 'Ð’Ñ‹Ð¹Ñ‚Ð¸', 'ru', 'yum'),
('Lost Password?', 'Password dimenticata?', 'it', 'yum'),
('Lost Password?', 'Ð—Ð°Ð±Ñ‹Ð»Ð¸ Ð¿Ð°Ñ€Ð¾Ð»ÑŒ?', 'ru', 'yum'),
('Lost password?', 'Passwort vergessen?', 'de', 'yum'),
('Lost password?', '¿Olvidó la contraseña?', 'es', 'yum'),
('Lost password?', 'Mot de passe oubliÃ©?', 'fr', 'yum'),
('Lost password?', 'Password dimenticata?', 'it', 'yum'),
('Lost password?', 'Passwort vergessen?', 'pl', 'yum'),
('Mail send method', 'Nachrichtenversandmethode', 'de', 'yum'),
('Mail send method', 'Método de envío de correo', 'es', 'yum'),
('Mail send method', 'Mode d envoie des messages', 'fr', 'yum'),
('Mail send method', 'Metodo invio mail', 'it', 'yum'),
('Mail send method', 'Metoda wysyÅ‚ania mejli', 'pl', 'yum'),
('Make {field} public available', 'Das Feld {field} öffentlich machen', 'de', 'yum'),
('Make {field} public available', 'Rendre publique le champ {field}', 'fr', 'yum'),
('Make {field} public available', 'Rendi pubblico il campo {field}', 'it', 'yum'),
('Manage', 'Verwalten', 'de', 'yum'),
('Manage', 'Administrar', 'es', 'yum'),
('Manage', 'Gestion', 'fr', 'yum'),
('Manage', 'Gestione', 'it', 'yum'),
('Manage', 'Ð£Ð¿Ñ€Ð°Ð²Ð»ÐµÐ½Ð¸Ðµ', 'ru', 'yum'),
('Manage Actions', 'Gestione azioni', 'it', 'yum'),
('Manage Profile Field', 'Profilfeld verwalten', 'de', 'yum'),
('Manage Profile Field', 'Administrar Campos de Perfil', 'es', 'yum'),
('Manage Profile Field', 'GÃ©rer le champ de profil', 'fr', 'yum'),
('Manage Profile Field', 'Gestione campi profilo', 'it', 'yum'),
('Manage Profile Field', 'ZarzÄ…dzaj polem profilu', 'pl', 'yum'),
('Manage Profile Field', 'ÐÐ°ÑÑ‚Ñ€Ð¾Ð¹ÐºÐ° Ð¿Ð¾Ð»ÐµÐ¹', 'ru', 'yum'),
('Manage Profile Fields', 'Profilfelder verwalten', 'de', 'yum'),
('Manage Profile Fields', 'Administrar Campos de Perfil', 'es', 'yum'),
('Manage Profile Fields', 'GÃ©rer les champs de profils', 'fr', 'yum'),
('Manage Profile Fields', 'Gestione campi Profilo', 'it', 'yum'),
('Manage Profile Fields', 'ZarzÄ…dzaj polami profilu', 'pl', 'yum'),
('Manage Profile Fields', 'ÐÐ°ÑÑ‚Ñ€Ð¾Ð¹ÐºÐ° Ð¿Ð¾Ð»ÐµÐ¹', 'ru', 'yum'),
('Manage Profiles', 'Profile verwalten', 'de', 'yum'),
('Manage Profiles', 'Administrar Perfiles', 'es', 'yum'),
('Manage Profiles', 'GÃ©rer les profils', 'fr', 'yum'),
('Manage Profiles', 'Gestione profili', 'it', 'yum'),
('Manage Roles', 'Rollenverwaltung', 'de', 'yum'),
('Manage Roles', 'Administrar Roles', 'es', 'yum'),
('Manage Roles', 'Gestion des rÃ´les', 'fr', 'yum'),
('Manage Roles', 'Gestione Ruoli', 'it', 'yum'),
('Manage Roles', 'ZarzÄ…dzaj rolami', 'pl', 'yum'),
('Manage User', 'Benutzerverwaltung', 'de', 'yum'),
('Manage User', 'Administrar Usuario', 'es', 'yum'),
('Manage User', 'Gestion utilisateur', 'fr', 'yum'),
('Manage User', 'Gestione utente', 'it', 'yum'),
('Manage User', 'Benutzerverwaltung', 'pl', 'yum'),
('Manage User', 'Ð£Ð¿Ñ€Ð°Ð²Ð»ÐµÐ½Ð¸Ðµ Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»ÑÐ¼Ð¸', 'ru', 'yum'),
('Manage Users', 'Benutzerverwaltung', 'de', 'yum'),
('Manage Users', 'Administrar Usuarios', 'es', 'yum'),
('Manage Users', 'Gestion des membres', 'fr', 'yum'),
('Manage Users', 'Gestione utenti', 'it', 'yum'),
('Manage field groups', 'Feldgruppen verwalten', 'de', 'yum'),
('Manage field groups', 'Administrar grupos de campos', 'es', 'yum'),
('Manage field groups', 'GÃ©rer les champs des groupes', 'fr', 'yum'),
('Manage field groups', 'Gestione campo gruppi', 'it', 'yum'),
('Manage field groups', 'ZarzÄ…dzaj grupami pÃ³l', 'pl', 'yum'),
('Manage friends', 'Freundschaftsverwaltung', 'de', 'yum'),
('Manage friends', 'Administrar amigos', 'es', 'yum'),
('Manage friends', 'Gestion des contacts', 'fr', 'yum'),
('Manage friends', 'Gestione contatti', 'it', 'yum'),
('Manage my users', 'Meine Benutzer verwalten', 'de', 'yum'),
('Manage my users', 'Administrar mis usuarios', 'es', 'yum'),
('Manage my users', 'GÃ©rer mes membres', 'fr', 'yum'),
('Manage my users', 'Gestione utenti', 'it', 'yum'),
('Manage my users', 'ZarzÄ…dzaj moimi uÅ¼ytkownikami', 'pl', 'yum'),
('Manage payments', 'Zahlungsarten verwalten', 'de', 'yum'),
('Manage payments', 'Gestione pagamenti', 'it', 'yum'),
('Manage permissions', 'Berechtigungen verwalten', 'de', 'yum'),
('Manage permissions', 'Gestione permessi', 'it', 'yum'),
('Manage profile Fields', 'Profilfelder verwalten', 'de', 'yum'),
('Manage profile Fields', 'Administrar Campos de Perfil', 'es', 'yum'),
('Manage profile Fields', 'GÃ©rer les champs du profil', 'fr', 'yum'),
('Manage profile Fields', 'Gestione campi profilo', 'it', 'yum'),
('Manage profile Fields', 'Profilfelder verwalten', 'pl', 'yum'),
('Manage profile field groups', 'Administrar grupos de campos de perfiles', 'es', 'yum'),
('Manage profile field groups', 'GÃ©rer les champs des profils de grouppes', 'fr', 'yum'),
('Manage profile field groups', 'Gestione campo profilo gruppi', 'it', 'yum'),
('Manage profile field groups', 'ZarzÄ…dzaj grupami pÃ³l w profilu', 'pl', 'yum'),
('Manage profile fields', 'Profilfelder verwalten', 'de', 'yum'),
('Manage profile fields', 'GÃ©rer les champs de profils', 'fr', 'yum'),
('Manage profile fields', 'Gestione campi profilo', 'it', 'yum'),
('Manage profile fields', 'ZarzÄ…dzaj polami profilu', 'pl', 'yum'),
('Manage profile fields groups', 'Gestione campi profilo gruppi ', 'it', 'yum'),
('Manage profile fields groups', 'ZarzÄ…dzaj grupami pÃ³l w profilu', 'pl', 'yum'),
('Manage profiles', 'Profile verwalten', 'de', 'yum'),
('Manage profiles', 'Administrar perfiles', 'es', 'yum'),
('Manage profiles', 'GÃ©rer les profils', 'fr', 'yum'),
('Manage profiles', 'Gestione profili', 'it', 'yum'),
('Manage profiles', 'ZarzÄ…dzaj profilem', 'pl', 'yum'),
('Manage roles', 'Rollen verwalten', 'de', 'yum'),
('Manage roles', 'Adminsitrar roles', 'es', 'yum'),
('Manage roles', 'GÃ©rer les rÃ´les', 'fr', 'yum'),
('Manage roles', 'Gestione Ruoli', 'it', 'yum'),
('Manage roles', 'ZarzÄ…dzaj rolami', 'pl', 'yum'),
('Manage text settings', 'Texteinstellungen', 'de', 'yum'),
('Manage text settings', 'Administrar configuración de texto', 'es', 'yum'),
('Manage text settings', 'Option de texte', 'fr', 'yum'),
('Manage text settings', 'Impostazioni di testo', 'it', 'yum'),
('Manage this profile', 'dieses Profil bearbeiten', 'de', 'yum'),
('Manage this profile', 'Administrar este perfil', 'es', 'yum'),
('Manage this profile', 'Modifier ce profil', 'fr', 'yum'),
('Manage this profile', 'Modifica profilo', 'it', 'yum'),
('Manage this profile', 'ZarzÄ…dzaj tym profilem', 'pl', 'yum'),
('Manage user Groups', 'Benutzergruppen verwalten', 'de', 'yum'),
('Manage user Groups', 'Administrar Grupos de usuario', 'es', 'yum'),
('Manage user Groups', 'Gerer les utilisateurs des grouppes', 'fr', 'yum'),
('Manage user Groups', 'Gestine gruppi', 'it', 'yum'),
('Manage users', 'Benutzer verwalten', 'de', 'yum'),
('Manage users', 'Administrar usuarios', 'es', 'yum'),
('Manage users', 'GÃ©rer les membres', 'fr', 'yum'),
('Manage users', 'Gestione utenti', 'it', 'yum'),
('Manage users', 'ZarzÄ…dzaj uÅ¼ytkownikaki', 'pl', 'yum'),
('Mange Profile Field', 'Mange Profil Field', 'de', 'yum'),
('Mange Profile Field', 'Administrar Campo del Perfil', 'es', 'yum'),
('Mange Profile Field', 'Gestione campo profilo', 'it', 'yum'),
('Mark as read', 'Als gelesen markieren', 'de', 'yum'),
('Mark as read', 'Marquer comme lu', 'fr', 'yum'),
('Mark as read', 'Segna come letto', 'it', 'yum'),
('Match', 'Treffer', 'de', 'yum'),
('Match', 'Combinar', 'es', 'yum'),
('Match', 'RÃ©sultat', 'fr', 'yum'),
('Match', 'Corrispondenza (RegExp)', 'it', 'yum'),
('Match', 'Ð¡Ð¾Ð²Ð¿Ð°Ð´ÐµÐ½Ð¸Ðµ (RegExp)', 'ru', 'yum'),
('Membership', 'Mitgliedschaft', 'de', 'yum'),
('Membership', 'Devenir membre', 'fr', 'yum'),
('Membership', 'Iscrizione', 'it', 'yum'),
('Membership ends at: {date}', 'Mitgliedschaft endet am: {date}', 'de', 'yum'),
('Membership ends at: {date}', 'Iscrizione termina il: {date}', 'it', 'yum'),
('Membership has not been payed yet', 'Zahlungseingang noch nicht erfolgt', 'de', 'yum'),
('Membership has not been payed yet', 'Iscrizione non pagata', 'it', 'yum'),
('Membership payed at: {date}', 'Zahlungseingang erfolgt am: {date}', 'de', 'yum'),
('Membership payed at: {date}', 'Iscrizione pagata il: {date}', 'it', 'yum'),
('Memberships', 'Mitgliedschaften', 'de', 'yum'),
('Memberships', 'Iscrizioni', 'it', 'yum'),
('Message', 'Nachricht', 'de', 'yum'),
('Message', 'Mensaje', 'es', 'yum'),
('Message', 'Message', 'fr', 'yum'),
('Message', 'Messaggio', 'it', 'yum'),
('Message "{message}" has been sent to {to}', 'Nachricht "{message}" wurde an {to} gesendet', 'de', 'yum'),
('Message "{message}" has been sent to {to}', 'Message "{message}" a Ã©tÃ© envoyÃ© {to} ', 'fr', 'yum'),
('Message "{message}" has been sent to {to}', 'Messaggio "{message}" Ã¨ stato inviato a {to}', 'it', 'yum'),
('Message "{message}" was marked as read', 'Nachricht "{message}" wurde als gelesen markiert.', 'de', 'yum'),
('Message "{message}" was marked as read', 'Message "{message}" marquer comme lu.', 'fr', 'yum'),
('Message "{message}" was marked as read', 'Messaggio "{message}" Ã¨ stato contrassegnato come letto.', 'it', 'yum'),
('Message count', 'Anzahl Nachrichten', 'de', 'yum'),
('Message from', 'Nachricht von', 'de', 'yum'),
('Message from', 'Message de', 'fr', 'yum'),
('Message from', 'Messaggio da', 'it', 'yum'),
('Message from ', 'Nachricht von ', 'de', 'yum'),
('Message from ', 'Mensaje de', 'es', 'yum'),
('Message from ', 'Message de ', 'fr', 'yum'),
('Message from ', 'Messaggio da ', 'it', 'yum'),
('Message from ', 'Nachricht von ', 'pl', 'yum'),
('Messages', 'Nachrichten', 'de', 'yum'),
('Messages', 'Mensajes', 'es', 'yum'),
('Messages', 'Message', 'fr', 'yum'),
('Messages', 'Messagi', 'it', 'yum'),
('Messages', 'WiadomoÅ›ci', 'pl', 'yum'),
('Messaging system', 'Nachrichtensystem', 'de', 'yum'),
('Messaging system', 'Sistema de mensajes', 'es', 'yum'),
('Messaging system', 'Message-Board', 'fr', 'yum'),
('Messaging system', 'Sistema messaggistica', 'it', 'yum'),
('Messaging system', 'System wiadomoÅ›ci', 'pl', 'yum'),
('Minimal password length 4 symbols.', 'Minimale Länge des Passworts 4 Zeichen.', 'de', 'yum'),
('Minimal password length 4 symbols.', 'Mínimo 4 caracteres para la contraseña', 'es', 'yum'),
('Minimal password length 4 symbols.', 'La longueur de votre mot de passe doit comporter au moins quatre charactÃ¨res.', 'fr', 'yum'),
('Minimal password length 4 symbols.', 'Lunghezza minima password di 4 caratteri.', 'it', 'yum'),
('Minimal password length 4 symbols.', 'Minimale LÃ¤nge des Passworts 4 Zeichen.', 'pl', 'yum'),
('Minimal password length 4 symbols.', 'ÐœÐ¸Ð½Ð¸Ð¼Ð°Ð»ÑŒÐ½Ð°Ñ Ð´Ð»Ð¸Ð½Ð° Ð¿Ð°Ñ€Ð¾Ð»Ñ 4 ÑÐ¸Ð¼Ð²Ð¾Ð»Ð°.', 'ru', 'yum'),
('Module settings', 'Moduleinstellungen', 'de', 'yum'),
('Module settings', 'Ajustes del módulo', 'es', 'yum'),
('Module settings', 'RÃ©glage des modules', 'fr', 'yum'),
('Module settings', 'Opzioni modulo', 'it', 'yum'),
('Module settings', 'Ustawienia moduÅ‚u', 'pl', 'yum'),
('Module text settings', 'Ajustes de texto del módulo', 'es', 'yum'),
('Module text settings', 'Opzioni testo modulo', 'it', 'yum'),
('Module text settings', 'Ustawienia tekstÃ³w moduÅ‚u', 'pl', 'yum'),
('My Inbox', 'Posteingang', 'de', 'yum'),
('My Inbox', 'Mi bandeja de entrada', 'es', 'yum'),
('My Inbox', 'Boite e-mail', 'fr', 'yum'),
('My Inbox', 'Moja skrzynka odbiorcza', 'pl', 'yum'),
('My friends', 'Meine Kontakte', 'de', 'yum'),
('My friends', 'Mis amigos', 'es', 'yum'),
('My friends', 'Mes contact', 'fr', 'yum'),
('My friends', 'Contatti', 'it', 'yum'),
('My groups', 'Meine Gruppen', 'de', 'yum'),
('My groups', 'Mis grupos', 'es', 'yum'),
('My groups', 'Mes grouppes', 'fr', 'yum'),
('My groups', 'Gruppi', 'it', 'yum'),
('My inbox', 'Mein Posteingang', 'de', 'yum'),
('My inbox', 'Mi bandeja de entrada', 'es', 'yum'),
('My inbox', 'Ma boite e-mail', 'fr', 'yum'),
('My inbox', 'Posta in arrivo', 'it', 'yum'),
('My memberships', 'Meine Mitgliedschaften', 'de', 'yum'),
('My memberships', 'Options de mon compte', 'fr', 'yum'),
('My memberships', 'Iscrizioni', 'it', 'yum'),
('My profile', 'Mein Profil', 'de', 'yum'),
('My profile', 'Mi perfil', 'es', 'yum'),
('My profile', 'Mon profil', 'fr', 'yum'),
('My profile', 'Profilo', 'it', 'yum'),
('New friendship request', 'nueva solicitud de amistad', 'es', 'yum'),
('New friendship request from {username}', 'neue Kontaktanfrage von {username}', 'de', 'yum'),
('New friendship request from {username}', 'Nouvelle demande de contact de {username}', 'fr', 'yum'),
('New friendship request from {username}', 'Nuova richiesta di contatto da {username}', 'it', 'yum'),
('New friendship requests', 'Neue Freundschaftsanfragen', 'de', 'yum'),
('New friendship requests', 'Nueva solicitud de amistad', 'es', 'yum'),
('New friendship requests', 'Nouvelle demande de contact', 'fr', 'yum'),
('New friendship requests', 'Nuova richiesta contatto', 'it', 'yum'),
('New messages', 'Neue Nachrichten', 'de', 'yum'),
('New messages', 'Nouveaux mÃ©ssages', 'fr', 'yum'),
('New messages', 'Nuovo messaggio', 'it', 'yum'),
('New password', 'Neues Passwort', 'de', 'yum'),
('New password', 'Nouveau mot de passe', 'fr', 'yum'),
('New password', 'Nuovo Password', 'it', 'yum'),
('New password is saved.', 'Neues Passwort wird gespeichert.', 'de', 'yum'),
('New password is saved.', 'La contraseña nueva ha sido guardada', 'es', 'yum'),
('New password is saved.', 'Votre nouveau mot de passe a bien Ã©tÃ© mÃ©morisÃ©.', 'fr', 'yum'),
('New password is saved.', 'Nuova passowrd salvata', 'it', 'yum'),
('New password is saved.', 'Neues Passwort wird gespeichert.', 'pl', 'yum'),
('New password is saved.', 'ÐÐ¾Ð²Ñ‹Ð¹ Ð¿Ð°Ñ€Ð¾Ð»ÑŒ ÑÐ¾Ñ…Ñ€Ð°Ð½ÐµÐ½.', 'ru', 'yum'),
('New profile comment', 'Nuevo comentario de perfil', 'es', 'yum'),
('New profile comment from {username}', 'Neuer Profilkommentar von {username}', 'de', 'yum'),
('New profile comment from {username}', 'Nouveau commentaire pour le profil de {username}', 'fr', 'yum'),
('New profile comment from {username}', 'Nuovo commento per il profilo {username}', 'it', 'yum'),
('New settings profile', 'Neues Einstellungsprofil', 'de', 'yum'),
('New settings profile', 'Nuevos ajustes de perfil', 'es', 'yum'),
('New settings profile', 'Nouvelle configuration de profil', 'fr', 'yum'),
('New settings profile', 'Nuova preferenze profilo', 'it', 'yum'),
('New settings profile', 'Nowe ustawienia profilu', 'pl', 'yum'),
('New translation', 'Neue Übersetzung', 'de', 'yum'),
('New value', 'Neuer Wert', 'de', 'yum'),
('New value', 'Valor nuevo', 'es', 'yum'),
('New value', 'Nouvelle valeur', 'fr', 'yum'),
('New value', 'Nuovo valore', 'it', 'yum'),
('New value', 'Nowa wartoÅ›Ä‡', 'pl', 'yum'),
('No', 'Nein', 'de', 'yum'),
('No', 'No', 'es', 'yum'),
('No', 'Non', 'fr', 'yum'),
('No', 'No', 'it', 'yum'),
('No', 'Nein', 'pl', 'yum'),
('No', 'ÐÐµÑ‚', 'ru', 'yum'),
('No friendship requested', 'Keine Freundschaft angefragt', 'de', 'yum'),
('No friendship requested', 'No hay solicitud de amistad', 'es', 'yum'),
('No friendship requested', 'Pas de demande de contact', 'fr', 'yum'),
('No friendship requested', 'Contatto non richiesto', 'it', 'yum'),
('No new messages', 'Keine neuen Nachrichten', 'de', 'yum'),
('No new messages', 'Pas de nouveaux mÃ©ssages', 'fr', 'yum'),
('No new messages', 'Nessun nuovo messaggio', 'it', 'yum'),
('No profile changes were made', 'Keine Profiländerungen stattgefunden', 'de', 'yum'),
('No profile changes were made', 'No se hicieron cambios en el perfil', 'es', 'yum'),
('No profile changes were made', 'pas de rÃ©sultat pour les profils modifiÃ©s', 'fr', 'yum'),
('No profile changes were made', 'Nessun cambiamento al profilo', 'it', 'yum'),
('No profile changes were made', 'Nie dokonano zmian w profilu', 'pl', 'yum'),
('No, but show on registration form', 'Ja, und auf Registrierungsseite anzeigen', 'de', 'yum'),
('No, but show on registration form', 'No, pero mostrar en formulario de registro', 'es', 'yum'),
('No, but show on registration form', 'non et charger le formulaire d inscription', 'fr', 'yum'),
('No, but show on registration form', 'No, ma mostra nel form di registrazione', 'it', 'yum'),
('No, but show on registration form', 'Nie, ale pokaÅ¼ w formularzu rejestracji', 'pl', 'yum'),
('No, but show on registration form', 'ÐÐµÑ‚, Ð½Ð¾ Ð¿Ð¾ÐºÐ°Ð·Ð°Ñ‚ÑŒ Ð¿Ñ€Ð¸ Ñ€ÐµÐ³Ð¸ÑÑ‚Ñ€Ð°Ñ†Ð¸Ð¸', 'ru', 'yum'),
('Nobody has commented your profile yet', 'Bisher hat niemand mein Profil kommentiert', 'de', 'yum'),
('Nobody has commented your profile yet', 'Aucun commentaire pour votre profil', 'fr', 'yum'),
('Nobody has commented your profile yet', 'Nessuno ha commentato il tuo profilo', 'it', 'yum'),
('Nobody has visited your profile yet', 'Bisher hat noch niemand ihr Profil angesehen', 'de', 'yum'),
('Nobody has visited your profile yet', 'Nadie ha visitado tu perfil todavía', 'es', 'yum'),
('Nobody has visited your profile yet', 'Aucune visite rÃ©cente de votre profil.', 'fr', 'yum'),
('Nobody has visited your profile yet', 'Fino ad ora nessuno ha visto il tuo profilo', 'it', 'yum'),
('None', 'Keine', 'de', 'yum'),
('None', 'Ninguno', 'es', 'yum'),
('None', 'Aucun', 'fr', 'yum'),
('None', 'Nessuno', 'it', 'yum'),
('None', 'Å»aden', 'pl', 'yum'),
('Not active', 'Nicht aktiv', 'de', 'yum'),
('Not active', 'Innactivo', 'es', 'yum'),
('Not active', 'Non actif', 'fr', 'yum'),
('Not active', 'Non attivo', 'it', 'yum'),
('Not active', 'Nicht aktiv', 'pl', 'yum'),
('Not active', 'ÐÐµ Ð°ÐºÑ‚Ð¸Ð²Ð¸Ñ€Ð¾Ð²Ð°Ð½', 'ru', 'yum'),
('Not assigned', 'Nicht zugewiesen', 'de', 'yum'),
('Not assigned', 'No asignado', 'es', 'yum'),
('Not assigned', 'Non assignÃ©', 'fr', 'yum'),
('Not assigned', 'Non assegnato', 'it', 'yum'),
('Not assigned', 'Nie przypisano', 'pl', 'yum'),
('Not visited', 'Non visitato', 'it', 'yum'),
('Not yet payed', 'Noch nicht bezahlt', 'de', 'yum'),
('Ok', 'Ok', 'de', 'yum'),
('Ok', 'Aceptar', 'es', 'yum'),
('Ok', 'Ok', 'fr', 'yum'),
('Ok', 'Ok', 'it', 'yum'),
('Ok', 'Ok', 'pl', 'yum'),
('Ok', 'Ok', 'ru', 'yum'),
('Old value', 'Alter Wert', 'de', 'yum'),
('Old value', 'Valor antiguo', 'es', 'yum'),
('Old value', 'Ancienne valeur', 'fr', 'yum'),
('Old value', 'Vecchio valore', 'it', 'yum'),
('Old value', 'Stara wartoÅ›Ä‡', 'pl', 'yum'),
('One of the recipients ({username}) has ignored you. Message will not be sent!', 'Einer der gewählten Benutzer ({username}) hat Sie auf seiner Ignorier-Liste. Die Nachricht wird nich', 'de', 'yum'),
('One of the recipients ({username}) has ignored you. Message will not be sent!', 'Uno de los destinatarios ({username}) te ha ignorado. ¡No se enviará el mensaje!', 'es', 'yum'),
('One of the recipients ({username}) has ignored you. Message will not be sent!', 'Un des membres sÃ©lectionnÃ© vous a mis sur sa liste noire ({username}). Ce message ne sera pas envo', 'fr', 'yum'),
('One of the recipients ({username}) has ignored you. Message will not be sent!', 'Un destinatario ({username}) ti ha inserito nella lista degli ignorati. Messaggio non inviato!', 'it', 'yum'),
('Only owner', 'Nur Besitzer', 'de', 'yum'),
('Only owner', 'Sólo el dueño', 'es', 'yum'),
('Only owner', 'PropriÃ©taire seulement', 'fr', 'yum'),
('Only owner', 'Solo proprietario', 'it', 'yum'),
('Only owner', 'Ð¢Ð¾Ð»ÑŒÐºÐ¾ Ð²Ð»Ð°Ð´ÐµÐ»ÐµÑ†', 'ru', 'yum'),
('Only your friends are shown here', 'Nur ihre Kontakte werden hier angezeigt', 'de', 'yum'),
('Only your friends are shown here', 'Seuls vos contacts seront visibles ici', 'fr', 'yum'),
('Only your friends are shown here', 'Solo i tuoi contatti verranno visualizzati', 'it', 'yum'),
('Order confirmed', 'Bestellbestätigung', 'de', 'yum'),
('Order confirmed', 'Ordini confermati', 'it', 'yum'),
('Order date', 'Bestelldatum', 'de', 'yum'),
('Order date', 'Data ordine', 'it', 'yum'),
('Order membership', 'Mitgliedschaft bestellen', 'de', 'yum'),
('Order membership', 'Ordine iscrizione', 'it', 'yum'),
('Order number', 'Bestellnummer', 'de', 'yum'),
('Order number', 'Numero ordine', 'it', 'yum'),
('Ordered at', 'Bestellt am', 'de', 'yum'),
('Ordered at', 'Ordinato il', 'it', 'yum'),
('Ordered memberships', 'Bestellte Mitgliedschaften', 'de', 'yum'),
('Ordered memberships', 'Options complÃ©mentaires', 'fr', 'yum'),
('Ordered memberships', 'Iscrizioni ordinate', 'it', 'yum'),
('Other', 'Verschiedenes', 'de', 'yum'),
('Other', 'Otro', 'es', 'yum'),
('Other', 'Divers', 'fr', 'yum'),
('Other', 'Altro', 'it', 'yum'),
('Other', 'PozostaÅ‚e', 'pl', 'yum'),
('Other Validator', 'Otro validador', 'es', 'yum'),
('Other Validator', 'Autre validation', 'fr', 'yum'),
('Other Validator', 'Altro validatore', 'it', 'yum'),
('Other Validator', 'Ð”Ñ€ÑƒÐ³Ð¾Ð¹ Ð²Ð°Ð»Ð¸Ð´Ð°Ñ‚Ð¾Ñ€', 'ru', 'yum'),
('Participant count', 'Anzahl Teilnehmer', 'de', 'yum'),
('Participants', 'Teilnehmer', 'de', 'yum'),
('Participants', 'Partecipanti', 'it', 'yum'),
('Password', 'Passwort', 'de', 'yum'),
('Password', 'Contraseña', 'es', 'yum'),
('Password', 'Passwort', 'fr', 'yum'),
('Password', 'Password', 'it', 'yum'),
('Password', 'HasÅ‚o', 'pl', 'yum'),
('Password Expiration Time', 'Ablaufzeit von Passwörtern', 'de', 'yum'),
('Password Expiration Time', 'Tiempo de expiración de la contraseña', 'es', 'yum'),
('Password Expiration Time', 'DurÃ©e de vie des mot de passe', 'fr', 'yum'),
('Password Expiration Time', 'Scadenza password', 'it', 'yum'),
('Password Expiration Time', 'Czas waÅ¼noÅ›ci hasÅ‚a', 'pl', 'yum'),
('Password is incorrect.', 'Passwort ist falsch.', 'de', 'yum'),
('Password is incorrect.', 'Contraseña incorrecta', 'es', 'yum'),
('Password is incorrect.', 'Le mot de passe est incorrect.', 'fr', 'yum'),
('Password is incorrect.', 'Password incorretta', 'it', 'yum'),
('Password is incorrect.', 'Niepoprawne hasÅ‚o.', 'pl', 'yum'),
('Password is incorrect.', 'ÐÐµÐ²ÐµÑ€Ð½Ñ‹Ð¹ Ð¿Ð°Ñ€Ð¾Ð»ÑŒ.', 'ru', 'yum'),
('Password recovery', 'Passwort wiederherstellen', 'de', 'yum'),
('Password recovery', 'Recuperación de contraseña', 'es', 'yum'),
('Passwords do not match', 'Las contraseñas no coinciden', 'es', 'yum'),
('Payment', 'Zahlungsmethode', 'de', 'yum'),
('Payment', 'Pagamento', 'it', 'yum'),
('Payment arrived', 'Zahlungseingang bestätigt', 'de', 'yum'),
('Payment arrived', 'Pagamento arrivato', 'it', 'yum'),
('Payment date', 'Bezahlt am', 'de', 'yum'),
('Payment date', 'Data pagamento', 'it', 'yum'),
('Payment types', 'Zahlungsarten', 'de', 'yum'),
('Payment types', 'Options de paiement', 'fr', 'yum'),
('Payment types', 'Tipi pagamento', 'it', 'yum'),
('Payments', 'Zahlungsarten', 'de', 'yum'),
('Payments', 'Pagamenti', 'it', 'yum'),
('Permissions', 'Berechtigungen', 'de', 'yum'),
('Permissions', 'Permisos', 'es', 'yum'),
('Permissions', 'Permissions', 'fr', 'yum'),
('Permissions', 'Autorizzazioni', 'it', 'yum'),
('Please activate you account go to {activation_url}', 'Perfavore attiva il tuo accounto all''indirizzo {activation_url}', 'it', 'yum'),
('Please check your email. An instructions was sent to your email address.', 'Bitte überprüfen Sie Ihre E-Mails. Eine Anleitung wurde an Ihre E-Mail-Adresse geschickt.', 'de', 'yum'),
('Please check your email. An instructions was sent to your email address.', 'Por favor verifica tu e-mail a donde se han enviado más instrucciones.', 'es', 'yum'),
('Please check your email. An instructions was sent to your email address.', 'Controlez votre boite e-mail, d autres instructions vous ont Ã©tÃ© envoyÃ©es par e-mail. *IMPORTANT:', 'fr', 'yum'),
('Please check your email. An instructions was sent to your email address.', 'Perfavore controlla la tua email con le istruzioni che ti abbiamo inviato', 'it', 'yum'),
('Please check your email. An instructions was sent to your email address.', 'Bitte Ã¼berprÃ¼fen Sie Ihre E-Mails. Eine Anleitung wurde an Ihre E-Mail-Adresse geschickt.', 'pl', 'yum'),
('Please check your email. An instructions was sent to your email address.', 'ÐÐ° Ð’Ð°Ñˆ Ð°Ð´Ñ€ÐµÑ ÑÐ»ÐµÐºÑ‚Ñ€Ð¾Ð½Ð½Ð¾Ð¹ Ð¿Ð¾Ñ‡Ñ‚Ñ‹ Ð±Ñ‹Ð»Ð¾ Ð¾Ñ‚Ð¿Ñ€Ð°Ð²Ð»ÐµÐ½Ð¾ Ð¿Ð¸ÑÑŒÐ¼Ð¾ ', 'ru', 'yum'),
('Please check your email. Instructions have been sent to your email address.', 'Bitte schauen Sie in Ihr Postfach. Weitere Anweisungen wurden per E-Mail geschickt.', 'de', 'yum'),
('Please check your email. Instructions have been sent to your email address.', 'Por favor revisa tu e-mail. Hemos enviado intrusiones a tu dirección de e-mail.', 'es', 'yum'),
('Please check your email. Instructions have been sent to your email address.', 'Controlez votre boite e-mail. D autres instructions vous ont Ã©tÃ© envoyÃ©es par e-mail. *IMPORTANT:', 'fr', 'yum'),
('Please check your email. Instructions have been sent to your email address.', 'Si prega di controllare la casella di posta. Ulteriori istruzioni sono state inviate via e-mail.', 'it', 'yum'),
('Please check your email. Instructions have been sent to your email address.', 'ProszÄ™ sprawdÅº TwÃ³j mejl. Instrukcje zostaÅ‚y wysÅ‚ane na TwÃ³j adres mejlowy.', 'pl', 'yum'),
('Please enter a request Message up to 255 characters', 'Bitte geben Sie eine Nachricht bis zu 255 Zeichen an, die dem Benutzer bei der Kontaktanfrage mitgeg', 'de', 'yum'),
('Please enter a request Message up to 255 characters', 'Por favor escribe un mensaje no mayor a 255 caracteres', 'es', 'yum'),
('Please enter a request Message up to 255 characters', 'Vous pouvez ajouter un message personalisÃ© de 255 charactÃ¨res Ã  votre demande de contact', 'fr', 'yum'),
('Please enter a request Message up to 255 characters', 'Perfavore inserisci un messaggio di richiesta di massimo 255 caratteri', 'it', 'yum'),
('Please enter the letters as they are shown in the image above.', 'Bitte geben Sie die, oben im Bild angezeigten, Buchstaben ein.', 'de', 'yum'),
('Please enter the letters as they are shown in the image above.', 'Por favor escribe las letras que se muestran en la imagen.', 'es', 'yum'),
('Please enter the letters as they are shown in the image above.', 'Recopiez les charactÃ¨res apparaissant dans l image au dessus.', 'fr', 'yum'),
('Please enter the letters as they are shown in the image above.', 'Perfavore inserire le lettere mostrate nella seguente immagine.', 'it', 'yum'),
('Please enter the letters as they are shown in the image above.', 'Bitte geben Sie die, oben im Bild angezeigten, Buchstaben ein.', 'pl', 'yum'),
('Please enter the letters as they are shown in the image above.', 'ÐŸÐ¾Ð¶Ð°Ð»ÑƒÐ¹ÑÑ‚Ð°, Ð²Ð²ÐµÐ´Ð¸Ñ‚Ðµ Ð±ÑƒÐºÐ²Ñ‹, Ð¿Ð¾ÐºÐ°Ð·Ð°Ð½Ð½Ñ‹Ðµ Ð½Ð° ÐºÐ°Ñ€Ñ‚Ð¸Ð½ÐºÐµ Ð²Ñ‹ÑˆÐµ', 'ru', 'yum'),
('Please enter your login or email addres.', 'Perfavore inserisci il tuo username o l''indirizzo mail.', 'it', 'yum'),
('Please enter your login or email addres.', 'ÐŸÐ¾Ð¶Ð°Ð»ÑƒÐ¹ÑÑ‚Ð°, Ð²Ð²ÐµÐ´Ð¸Ñ‚Ðµ Ð’Ð°Ñˆ Ð»Ð¾Ð³Ð¸Ð½ Ð¸Ð»Ð¸ Ð°Ð´Ñ€ÐµÑ ÑÐ»ÐµÐºÑ‚Ñ€Ð¾Ð½Ð½Ð¾Ð¹ Ð¿Ð¾', 'ru', 'yum'),
('Please enter your login or email address.', 'Bitte geben Sie Ihren Benutzernamen oder E-Mail-Adresse ein.', 'de', 'yum'),
('Please enter your login or email address.', 'Por favor escribe tu nombre de usuario o dirección de e-mail.', 'es', 'yum'),
('Please enter your login or email address.', 'Indiquez dans ce champ, votre nom d utilisateur ou votre adresse e-mail.', 'fr', 'yum'),
('Please enter your login or email address.', 'Inserisci il tuo nome utente o indirizzo e-mail.', 'it', 'yum'),
('Please enter your login or email address.', 'Bitte geben Sie Ihren Benutzernamen oder E-Mail-Adresse ein.', 'pl', 'yum'),
('Please enter your password to confirm deletion:', 'Bitte geben Sie Ihr Passwort ein, um den Löschvorgang zu bestätigen:', 'de', 'yum'),
('Please enter your password to confirm deletion:', 'Por favor escribe tu contraseña para confirmar la eliminación:', 'es', 'yum'),
('Please enter your password to confirm deletion:', 'Renseignez votre mot de passe, pour confirmer la suppression:', 'fr', 'yum'),
('Please enter your password to confirm deletion:', 'Si prega di inserire la password per confermare l''eliminazione:', 'it', 'yum'),
('Please enter your password to confirm deletion:', 'ProszÄ™ wprowadÅº swoje hasÅ‚o w celu potwierdzenia usuwania:', 'pl', 'yum'),
('Please enter your user name or email address.', 'Bitte geben Sie Ihren Benutzernamen oder E-mail Adresse ein', 'de', 'yum'),
('Please enter your user name or email address.', 'Renseignez votre nom d utilisateur ou votre adresse e-mail', 'fr', 'yum'),
('Please enter your user name or email address.', 'Inserisci il tuo nome utente o indirizzo e-mail', 'it', 'yum'),
('Please fill out the following form with your login credentials:', 'Bitte geben Sie ihre Login-Daten ein:', 'de', 'yum'),
('Please fill out the following form with your login credentials:', 'Por favor llena el formulario con tu información de inicio de sesión:', 'es', 'yum'),
('Please fill out the following form with your login credentials:', 'Entrez dans le champ vos donnÃ©es de connection:', 'fr', 'yum'),
('Please fill out the following form with your login credentials:', 'Perfavore inserisci le tue credenziali d''accesso:', 'it', 'yum'),
('Please fill out the following form with your login credentials:', 'Bitte geben Sie ihre Login-Daten ein:', 'pl', 'yum'),
('Please fill out the following form with your login credentials:', 'ÐŸÐ¾Ð¶Ð°Ð»ÑƒÐ¹ÑÑ‚Ð°, Ð·Ð°Ð¿Ð¾Ð»Ð½Ð¸Ñ‚Ðµ ÑÐ»ÐµÐ´ÑƒÑŽÑ‰ÑƒÑŽ Ñ„Ð¾Ñ€Ð¼Ñƒ Ñ Ð²Ð°ÑˆÐ¸Ð¼Ð¸ Ð›Ð¾Ð³Ð¸Ð½ Ð¸', 'ru', 'yum'),
('Please log in into the application.', 'Por favor, entra a la aplicación', 'es', 'yum'),
('Please verify your E-Mail address', 'Por favor verifica tu dirección de correo', 'es', 'yum'),
('Position', 'Position', 'de', 'yum'),
('Position', 'Posición', 'es', 'yum'),
('Position', 'Position', 'fr', 'yum'),
('Position', 'Posizioe', 'it', 'yum'),
('Position', 'ÐŸÐ¾Ð·Ð¸Ñ†Ð¸Ñ', 'ru', 'yum'),
('Predefined values (example: 1, 2, 3, 4, 5;).', 'Vordefinierter Bereich (z.B. 1, 2, 3, 4, 5),', 'de', 'yum'),
('Predefined values (example: 1, 2, 3, 4, 5;).', 'Valores predefinidos (ejemplo: 1,2,3,4,5;).', 'es', 'yum'),
('Predefined values (example: 1, 2, 3, 4, 5;).', 'Valeur prÃ©dÃ©finie (z.B. 1, 2, 3, 4, 5),', 'fr', 'yum'),
('Predefined values (example: 1, 2, 3, 4, 5;).', 'Valori predefiniti (es. 1, 2, 3, 4, 5),', 'it', 'yum'),
('Predefined values (example: 1, 2, 3, 4, 5;).', 'ÐŸÑ€ÐµÐ´Ð¾Ð¿Ñ€ÐµÐ´ÐµÐ»ÐµÐ½Ð½Ñ‹Ðµ Ð·Ð½Ð°Ñ‡ÐµÐ½Ð¸Ñ (Ð¿Ñ€Ð¸Ð¼ÐµÑ€: 1;2;3;4;5;).', 'ru', 'yum'),
('Preseve Profiles', 'Profile aufbewahren', 'de', 'yum'),
('Preseve Profiles', 'Preservar Perfiles', 'es', 'yum'),
('Preseve Profiles', 'Profile aufbewahren ???', 'fr', 'yum'),
('Preseve Profiles', 'Mantieni profili', 'it', 'yum'),
('Preseve Profiles', 'Zachowaj profil', 'pl', 'yum'),
('Price', 'Preis', 'de', 'yum'),
('Price', 'Prix', 'fr', 'yum'),
('Price', 'Prezzo', 'it', 'yum'),
('Privacy', 'Privatsphäre', 'de', 'yum'),
('Privacy', 'Privacidad', 'es', 'yum'),
('Privacy', 'DonnÃ©es privÃ©es', 'fr', 'yum'),
('Privacy', 'Privacy', 'it', 'yum'),
('Privacy', 'PrivatsphÃ¤re', 'pl', 'yum'),
('Privacy settings', 'Privatsphäre', 'de', 'yum'),
('Privacy settings', 'Configuración de Privacidad', 'es', 'yum'),
('Privacy settings', 'Vos donnÃ©es personnelles', 'fr', 'yum'),
('Privacy settings', 'Privacy', 'it', 'yum'),
('Privacy settings for {username}', 'Privatsphäreneinstellungen für {username}', 'de', 'yum'),
('Privacy settings for {username}', 'Configuración de Privacidad para {username}', 'es', 'yum'),
('Privacy settings for {username}', 'Configuration des donnÃ©es privÃ©es pour {username}', 'fr', 'yum'),
('Privacy settings for {username}', 'Opzioni Privacy per {username}', 'it', 'yum'),
('Privacysettings', 'Privatsphäre', 'de', 'yum'),
('Privacysettings', 'Configuración de Privacidad', 'es', 'yum'),
('Privacysettings', 'DonnÃ©es privÃ©es', 'fr', 'yum'),
('Privacysettings', 'Opzioni privacy', 'it', 'yum'),
('Profile', 'Profil', 'de', 'yum'),
('Profile', 'Perfil', 'es', 'yum'),
('Profile', 'Profil', 'fr', 'yum'),
('Profile', 'Profilo', 'it', 'yum'),
('Profile', 'Profil', 'pl', 'yum'),
('Profile', 'ÐŸÑ€Ð¾Ñ„Ð¸Ð»ÑŒ', 'ru', 'yum'),
('Profile Comments', 'Pinnwand', 'de', 'yum'),
('Profile Comments', 'COmentarios de perfil', 'es', 'yum'),
('Profile Comments', 'Pinnwand', 'fr', 'yum'),
('Profile Comments', 'Commenti profilo', 'it', 'yum'),
('Profile Fields', 'Profilfelder', 'de', 'yum'),
('Profile Fields', 'Campos de Perfil', 'es', 'yum'),
('Profile Fields', 'Champs des profils', 'fr', 'yum'),
('Profile Fields', 'Campi profilo', 'it', 'yum'),
('Profile Fields', 'Pola profilu', 'pl', 'yum'),
('Profile Fields', 'ÐŸÐ¾Ð»Ñ Ð¿Ñ€Ð¾Ñ„Ð¸Ð»Ñ', 'ru', 'yum'),
('Profile field groups', 'Profilfeldgruppen', 'de', 'yum'),
('Profile field groups', 'Grupos de campos de perfil', 'es', 'yum'),
('Profile field groups', 'Champs des profils de groupes.', 'fr', 'yum'),
('Profile field groups', 'Campo profilo gruppi', 'it', 'yum'),
('Profile field public options', 'Einstellungen der Profilfelder', 'de', 'yum'),
('Profile field public options', 'Configuration des champs publique du profil', 'fr', 'yum'),
('Profile field public options', 'Opzioni pubbliche campi profilo', 'it', 'yum'),
('Profile field {fieldname}', 'Profilfeld {fieldname}', 'de', 'yum'),
('Profile field {fieldname}', 'Campo de perfil {fieldname}', 'es', 'yum'),
('Profile field {fieldname}', 'Camp de profil {fieldname}', 'fr', 'yum'),
('Profile field {fieldname}', '{fieldname} campo profilo', 'it', 'yum'),
('Profile field {fieldname}', 'Pole profilu {fieldname}', 'pl', 'yum'),
('Profile fields', 'Profilfeldverwaltung', 'de', 'yum'),
('Profile fields', 'Campos de perfil', 'es', 'yum'),
('Profile fields', 'Gestion des champs de profils', 'fr', 'yum'),
('Profile fields', 'Campi profilo', 'it', 'yum'),
('Profile fields', 'Pole profilu', 'pl', 'yum'),
('Profile fields groups', 'Profilfeldgruppen', 'de', 'yum'),
('Profile fields groups', 'Grupos de campos de perfil', 'es', 'yum'),
('Profile fields groups', 'Champ des profils de groupes', 'fr', 'yum'),
('Profile fields groups', 'Campi profilo gruppi', 'it', 'yum'),
('Profile fields groups', 'Grupy pÃ³l w profilu', 'pl', 'yum'),
('Profile history', 'Profilverlauf', 'de', 'yum'),
('Profile history', 'Historial del perfil', 'es', 'yum'),
('Profile history', 'Chronique du profil', 'fr', 'yum'),
('Profile history', 'Storico profilo', 'it', 'yum'),
('Profile history', 'Historia profilu', 'pl', 'yum'),
('Profile number', 'Profilnummer: ', 'de', 'yum'),
('Profile number', 'Número de perfil', 'es', 'yum'),
('Profile number', 'NumÃ©ro du profil: ', 'fr', 'yum'),
('Profile number', 'Numero profilo: ', 'it', 'yum'),
('Profile number', 'Numer profilu: ', 'pl', 'yum'),
('Profile of ', 'Profil von ', 'de', 'yum'),
('Profile of ', 'Perfil de', 'es', 'yum'),
('Profile of ', 'Profil de ', 'fr', 'yum'),
('Profile of ', 'Profilo di ', 'it', 'yum'),
('Profile visits', 'Profilbesuche', 'de', 'yum'),
('Profile visits', 'Visiteurs de mon profil', 'fr', 'yum'),
('Profile visits', 'Visite profilo', 'it', 'yum'),
('Profiles', 'Profile', 'de', 'yum'),
('Profiles', 'Perfiles', 'es', 'yum'),
('Profiles', 'Profiles', 'fr', 'yum'),
('Profiles', 'Profili', 'it', 'yum'),
('Profiles', 'Profile', 'pl', 'yum'),
('Range', 'Bereich', 'de', 'yum'),
('Range', 'Rango', 'es', 'yum'),
('Range', 'Intervallo', 'it', 'yum'),
('Range', 'Ð ÑÐ´ Ð·Ð½Ð°Ñ‡ÐµÐ½Ð¸Ð¹', 'ru', 'yum'),
('Read Only Profiles', 'Nur-Lese Profile', 'de', 'yum'),
('Read Only Profiles', 'Perfiles de Sólo Lectura', 'es', 'yum'),
('Read Only Profiles', 'Lecture seule des profil', 'fr', 'yum'),
('Read Only Profiles', 'Profilo sola lettura', 'it', 'yum'),
('Read Only Profiles', 'Profile tylko do odczytu', 'pl', 'yum'),
('Receive a Email for new Friendship request', 'E-Mail Benachrichtigung bei neuer Kontaktanfrage', 'de', 'yum'),
('Receive a Email for new Friendship request', 'Recibir un correo cuando recibas una nueva solicitud de amistad', 'es', 'yum'),
('Receive a Email for new Friendship request', 'Informez moi par e-mail pour les nouvelles demandes de contact.', 'fr', 'yum'),
('Receive a Email for new Friendship request', 'Email di notifica per nuovo contatto', 'it', 'yum'),
('Receive a Email when a new profile comment was made', 'E-Mail Benachrichtigung bei Profilkommentar', 'de', 'yum'),
('Receive a Email when a new profile comment was made', 'Recibir un correo cuando comenten en tu perfil', 'es', 'yum'),
('Receive a Email when a new profile comment was made', 'Informez moi par e-mail e-mail pour les nouveaux commentaire de mon profil ', 'fr', 'yum'),
('Receive a Email when a new profile comment was made', 'Email di notifica per nuovo commento al profilo', 'it', 'yum'),
('Receive a Email when new Message arrives', 'E-Mail Benachrichtigung bei neuer interner Nachricht', 'de', 'yum'),
('Receive a Email when new Message arrives', 'Recibir un correo cuanto te llegue un nuevo mensaje', 'es', 'yum'),
('Receive a Email when new Message arrives', 'Informez moi par e-mail pour les nouveaux messages. ', 'fr', 'yum'),
('Receive a Email when new Message arrives', 'Email di notifica per i nuovi messaggi', 'it', 'yum'),
('Registered users', 'Registrierte Benutzer', 'de', 'yum'),
('Registered users', 'Usuarios registrados', 'es', 'yum'),
('Registered users', 'Membre enregistrÃ©', 'fr', 'yum'),
('Registered users', 'Utenti registrati', 'it', 'yum'),
('Registered users', 'Ð—Ð°Ñ€ÐµÐ³Ð¸ÑÑ‚Ñ€Ð¸Ñ€Ð¾Ð²Ð°Ð½Ð½Ñ‹Ðµ Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»Ð¸', 'ru', 'yum'),
('Registration', 'Registrierung', 'de', 'yum'),
('Registration', 'Registro', 'es', 'yum'),
('Registration', 'Inscription', 'fr', 'yum'),
('Registration', 'Reistrazione', 'it', 'yum'),
('Registration', 'Rejestracja', 'pl', 'yum'),
('Registration', 'Ð ÐµÐ³Ð¸ÑÑ‚Ñ€Ð°Ñ†Ð¸Ñ', 'ru', 'yum'),
('Registration date', 'Anmeldedatum', 'de', 'yum'),
('Registration date', 'Fecha de registro', 'es', 'yum'),
('Registration date', 'Date d inscription', 'fr', 'yum'),
('Registration date', 'Data registrazione', 'it', 'yum'),
('Registration date', 'Anmeldedatum', 'pl', 'yum'),
('Registration date', 'Ð”Ð°Ñ‚Ð° Ñ€ÐµÐ³Ð¸ÑÑ‚Ñ€Ð°Ñ†Ð¸Ð¸', 'ru', 'yum'),
('Regular expression (example: ''/^[A-Za-z0-9s,]+$/u'').', 'Regulärer Ausdruck (z. B.: ''/^[A-Za-z0-9s,]+$/u'')', 'de', 'yum'),
('Regular expression (example: ''/^[A-Za-z0-9s,]+$/u'').', 'Expresión regular (ejemplo: ''/^[A-Za-z0-9s,]+$/u'')', 'es', 'yum'),
('Regular expression (example: ''/^[A-Za-z0-9s,]+$/u'').', 'Expression regulaire (exemple.: ''/^[A-Za-z0-9s,]+$/u'')', 'fr', 'yum'),
('Regular expression (example: ''/^[A-Za-z0-9s,]+$/u'').', 'Espressione regolare (esempio: ''/^[A-Za-z0-9s,]+$/u'')', 'it', 'yum'),
('Regular expression (example: ''/^[A-Za-z0-9s,]+$/u'').', 'Ð ÐµÐ³ÑƒÐ»ÑÑ€Ð½Ñ‹Ðµ Ð²Ñ‹Ñ€Ð°Ð¶ÐµÐ½Ð¸Ñ (Ð¿Ñ€Ð¸Ð¼ÐµÑ€: ''/^[A-Za-z0-9s,]+$/u'')', 'ru', 'yum'),
('Remember me net time', 'ZapamiÄ™taj mnie nastÄ™pnym razem', 'pl', 'yum'),
('Remember me next time', 'Angemeldet bleiben', 'de', 'yum'),
('Remember me next time', 'Recordarme la próxima vez', 'es', 'yum'),
('Remember me next time', 'Rester connectÃ©', 'fr', 'yum'),
('Remember me next time', 'Ricordami', 'it', 'yum'),
('Remember me next time', 'Ð—Ð°Ð¿Ð¾Ð¼Ð½Ð¸Ñ‚ÑŒ Ð¼ÐµÐ½Ñ', 'ru', 'yum'),
('Remove', 'Entfernen', 'de', 'yum'),
('Remove', 'Supprimer', 'fr', 'yum'),
('Remove', 'Rimuovi', 'it', 'yum'),
('Remove Avatar', 'Profilbild entfernen', 'de', 'yum'),
('Remove Avatar', 'Borrar este Avatar', 'es', 'yum'),
('Remove Avatar', 'Supprimer l image de profil', 'fr', 'yum'),
('Remove Avatar', 'Rimuovi avatar', 'it', 'yum'),
('Remove comment', 'Kommentar entfernen', 'de', 'yum'),
('Remove comment', 'Borrar comentario', 'es', 'yum'),
('Remove comment', 'Supprimer ce commentaire', 'fr', 'yum'),
('Remove comment', 'Rimuovi commento', 'it', 'yum'),
('Remove friend', 'Freundschaft kündigen', 'de', 'yum'),
('Remove friend', 'Borrar amigo', 'es', 'yum'),
('Remove friend', 'Supprimer ce contact de ma liste', 'fr', 'yum'),
('Remove friend', 'Rimuovi contatto', 'it', 'yum'),
('Reply', 'Antwort', 'de', 'yum'),
('Reply', 'Responder', 'es', 'yum'),
('Reply', 'RÃ©pondre', 'fr', 'yum'),
('Reply', 'Rispondi', 'it', 'yum'),
('Reply', 'Odpowiedz', 'pl', 'yum'),
('Reply to Message', 'auf diese Nachricht antworten', 'de', 'yum'),
('Reply to Message', 'Responder al Mensaje', 'es', 'yum'),
('Reply to Message', 'RÃ©pondre Ã  ce message', 'fr', 'yum'),
('Reply to Message', 'Rispondi al messaggio', 'it', 'yum'),
('Reply to Message', 'Odpowiedz', 'pl', 'yum'),
('Reply to message', 'Responder al mensaje', 'es', 'yum'),
('Reply to message', 'Rispondi al messaggio', 'it', 'yum'),
('Request friendship for user {username}', 'Kontaktanfrage für {username}', 'de', 'yum'),
('Request friendship for user {username}', 'Solicitar amistar al usuario {username}', 'es', 'yum'),
('Request friendship for user {username}', 'Demande de contact pour {username}', 'fr', 'yum'),
('Request friendship for user {username}', 'Richiesta contatto per {username}', 'it', 'yum'),
('Required', 'Benötigt', 'de', 'yum'),
('Required', 'Requerido', 'es', 'yum'),
('Required', 'Recquis', 'fr', 'yum'),
('Required', 'Obbligatorio', 'it', 'yum'),
('Required', 'ÐžÐ±ÑÐ·Ð°Ñ‚ÐµÐ»ÑŒÐ½Ð¾ÑÑ‚ÑŒ', 'ru', 'yum'),
('Required field (form validator).', 'Campo obbligatorio (validazione form).', 'it', 'yum'),
('Required field (form validator).', 'ÐžÐ±ÑÐ·Ð°Ñ‚ÐµÐ»ÑŒÐ½Ð¾Ðµ Ð¿Ð¾Ð»Ðµ (Ð¿Ñ€Ð¾Ð²ÐµÑ€ÐºÐ° Ñ„Ð¾Ñ€Ð¼Ñ‹).', 'ru', 'yum'),
('Restore', 'Wiederherstellen', 'de', 'yum'),
('Restore', 'Recuperar', 'es', 'yum'),
('Restore', 'Restaurer', 'fr', 'yum'),
('Restore', 'Ripristino', 'it', 'yum'),
('Restore', 'Wiederherstellen', 'pl', 'yum'),
('Restore', 'Ð’Ð¾ÑÑÑ‚Ð°Ð½Ð¾Ð²Ð¸Ñ‚ÑŒ', 'ru', 'yum'),
('Retype Password', 'ÐŸÐ¾Ð²Ñ‚Ð¾Ñ€Ð¸Ñ‚Ðµ Ð¿Ð°Ñ€Ð¾Ð»ÑŒ', 'ru', 'yum'),
('Retype Password is incorrect.', 'ÐŸÐ°Ñ€Ð¾Ð»Ð¸ Ð½Ðµ ÑÐ¾Ð²Ð¿Ð°Ð´Ð°ÑŽÑ‚.', 'ru', 'yum'),
('Retype password', 'Passwort wiederholen', 'de', 'yum'),
('Retype password', 'Repite la contraseña', 'es', 'yum'),
('Retype password', 'Redonnez votre mot de passe', 'fr', 'yum'),
('Retype password', 'Conferma password', 'it', 'yum'),
('Retype password', 'Passwort wiederholen', 'pl', 'yum'),
('Retype password is incorrect.', 'Wiederholtes Passwort ist falsch.', 'de', 'yum'),
('Retype password is incorrect.', 'Contraseña repetida incorrecta', 'es', 'yum'),
('Retype password is incorrect.', 'Le mot de passe est a nouveau incorrect.', 'fr', 'yum'),
('Retype password is incorrect.', 'Conferma password Ã¨ errata.', 'it', 'yum'),
('Retype password is incorrect.', 'Wiederholtes Passwort ist falsch.', 'pl', 'yum'),
('Retype your new password', 'Wiederholen Sie Ihr neues Passwort', 'de', 'yum'),
('Retype your new password', 'Confirmez votre nouveau mot de passe', 'fr', 'yum'),
('Retype your new password', 'Confermare la nuova password', 'it', 'yum'),
('Retyped password is incorrect', 'Wiederholtes Passwort ist nicht identisch', 'de', 'yum'),
('Retyped password is incorrect', 'Le mot de passe renseignÃ© n est pas identique au prÃ©cÃ©dent', 'fr', 'yum'),
('Retyped password is incorrect', 'Password di conferma non identica', 'it', 'yum'),
('Role Administration', 'Rollenverwaltung', 'de', 'yum'),
('Role Administration', 'Administración de rol', 'es', 'yum'),
('Role Administration', 'Gestion des rÃ´les', 'fr', 'yum'),
('Role Administration', 'Gestione dei ruoli', 'it', 'yum'),
('Role Administration', 'ZarzÄ…dzanie rolami', 'pl', 'yum'),
('Roles', 'Rollen', 'de', 'yum'),
('Roles', 'Roles', 'es', 'yum'),
('Roles', 'RÃ´les', 'fr', 'yum'),
('Roles', 'Ruoli', 'it', 'yum'),
('Roles', 'Role', 'pl', 'yum'),
('Roles / Access control', 'Rollen / Zugangskontrolle', 'de', 'yum'),
('Save', 'Sichern', 'de', 'yum'),
('Save', 'Guardar', 'es', 'yum'),
('Save', 'MÃ©moriser', 'fr', 'yum'),
('Save', 'Salva', 'it', 'yum'),
('Save', 'Sichern', 'pl', 'yum'),
('Save', 'Ð¡Ð¾Ñ…Ñ€Ð°Ð½Ð¸Ñ‚ÑŒ', 'ru', 'yum'),
('Save payment type', 'Zahlungsart speichern', 'de', 'yum'),
('Save payment type', 'Salva tipo pagamento', 'it', 'yum'),
('Save profile changes', 'Profiländerungen speichern', 'de', 'yum'),
('Save profile changes', 'Salva modifiche profilo', 'it', 'yum'),
('Save role', 'Rolle speichern', 'de', 'yum'),
('Save role', 'MÃ©moriser ce rÃ´le', 'fr', 'yum'),
('Save role', 'Salva ruolo', 'it', 'yum'),
('Search for username', 'Suche nach Benutzer', 'de', 'yum'),
('Search for username', 'Recherche par nom d''utilisateur', 'fr', 'yum'),
('Search for username', 'Cerca per username', 'it', 'yum'),
('Searchable', 'Suchbar', 'de', 'yum'),
('Searchable', 'visible', 'fr', 'yum'),
('Searchable', 'Ricercabile', 'it', 'yum'),
('Select a month', 'Monatsauswahl', 'de', 'yum'),
('Select a month', 'Seleziona un mese', 'it', 'yum'),
('Select multiple recipients by holding the CTRL key', 'Wählen Sie mehrere Empfänger mit der STRG-Taste aus', 'de', 'yum'),
('Select multiple recipients by holding the CTRL key', 'Selecciona varios destinatarios manteniendo presionada la tecla CTRL', 'es', 'yum'),
('Select multiple recipients by holding the CTRL key', 'Choix multiple en laissant la touche STRG de votre clavier enfoncÃ©e', 'fr', 'yum'),
('Select multiple recipients by holding the CTRL key', 'Seleziona destinatari multipli con il tasto CTRL', 'it', 'yum'),
('Select the fields that should be public', 'Diese Felder sind öffentlich einsehbar', 'de', 'yum'),
('Select the fields that should be public', 'Ces champs sont publiques et seront visibles', 'fr', 'yum'),
('Select the fields that should be public', 'Scegli i campi da rendere publici', 'it', 'yum'),
('Selectable on registration', 'Während der Registrierung wählbar', 'de', 'yum'),
('Selectable on registration', 'Option Ã  selectionner au cours de l inscription', 'fr', 'yum'),
('Selectable on registration', 'Selezionabile durante la registrazione', 'it', 'yum'),
('Send', 'Senden', 'de', 'yum'),
('Send', 'Enviar', 'es', 'yum'),
('Send', 'Envoyer', 'fr', 'yum'),
('Send', 'Invia', 'it', 'yum'),
('Send', 'Senden', 'pl', 'yum'),
('Send a message to this User', 'Diesem Benutzer eine Nachricht senden', 'de', 'yum'),
('Send a message to this User', 'Enviar un mensaje a este Usuario', 'es', 'yum'),
('Send a message to this User', 'Faire parvenir un message Ã  ce membre', 'fr', 'yum'),
('Send a message to this User', 'Invia messaggio all''utente', 'it', 'yum'),
('Send invitation', 'Kontaktanfrage senden', 'de', 'yum'),
('Send invitation', 'Enviar invitación', 'es', 'yum'),
('Send invitation', 'Envoyer la demande de contact', 'fr', 'yum'),
('Send invitation', 'Kontaktanfrage senden', 'it', 'yum'),
('Send message notifier emails', 'Benachrichtigungen schicken', 'de', 'yum'),
('Send message notifier emails', 'Enviar mensaje de e-mail de notificación', 'es', 'yum'),
('Send message notifier emails', 'Envoie d une notification', 'fr', 'yum'),
('Send message notifier emails', 'Notifiche e-mail', 'it', 'yum'),
('Sent at', 'Gesendet am', 'de', 'yum'),
('Sent at', 'Enviado al', 'es', 'yum'),
('Sent at', 'ENvoyÃ© le', 'fr', 'yum'),
('Sent at', 'Pubblicato il', 'it', 'yum');
INSERT INTO `translation` (`message`, `translation`, `language`, `category`) VALUES
('Sent at', 'WysÅ‚ano', 'pl', 'yum'),
('Sent messages', 'Gesendete Nachrichten', 'de', 'yum'),
('Sent messages', 'Mensajes enviados', 'es', 'yum'),
('Sent messages', 'Message envoyÃ©', 'fr', 'yum'),
('Sent messages', 'Messaggi inviati', 'it', 'yum'),
('Sent messages', 'WysÅ‚ane wiadomoÅ›ci', 'pl', 'yum'),
('Separate usernames with comma to ignore specified users', 'Benutzernamen mit Komma trennen, um sie zu ignorieren', 'de', 'yum'),
('Separate usernames with comma to ignore specified users', 'Separa con coma los nombres de los usuarios que deseas ignorar', 'es', 'yum'),
('Separate usernames with comma to ignore specified users', 'Ma liste noire, pour introduire plusieurs membres en une seule fois, sÃ©parer les noms d utilisateur', 'fr', 'yum'),
('Separate usernames with comma to ignore specified users', 'Separa gli username con una virgola, per ignorare gli utenti specificati', 'it', 'yum'),
('Set payment date to today', 'Zahlungseingang bestätigen', 'de', 'yum'),
('Set payment date to today', 'Imposta data pagamento ad oggi', 'it', 'yum'),
('Settings', 'Einstellungen', 'de', 'yum'),
('Settings', 'Ajustes', 'es', 'yum'),
('Settings', 'RÃ©glage', 'fr', 'yum'),
('Settings', 'Impostazioni', 'it', 'yum'),
('Settings', 'Ustawienia', 'pl', 'yum'),
('Settings profiles', 'Einstellungsprofile', 'de', 'yum'),
('Settings profiles', 'Ajustes de perfiles', 'es', 'yum'),
('Settings profiles', 'RÃ©glages des profiles', 'fr', 'yum'),
('Settings profiles', 'Impostazioni profili', 'it', 'yum'),
('Settings profiles', 'Ustawienia profili', 'pl', 'yum'),
('Show activities', 'Zeige Aktivitäten', 'de', 'yum'),
('Show activities', 'Voir la chronique des activitÃ©s', 'fr', 'yum'),
('Show activities', 'Mostra attivitÃ ', 'it', 'yum'),
('Show administration Hierarchy', 'Hierarchie', 'de', 'yum'),
('Show administration Hierarchy', 'Mostrar jerarquía de administración', 'es', 'yum'),
('Show administration Hierarchy', 'Hierarchie', 'fr', 'yum'),
('Show administration Hierarchy', 'Gerarchia', 'it', 'yum'),
('Show administration Hierarchy', 'PokaÅ¼ hierarchiÄ™ administrowania', 'pl', 'yum'),
('Show all', 'Mostra tutti', 'it', 'yum'),
('Show friends', 'Kontaktliste veröffentlichen', 'de', 'yum'),
('Show friends', 'Mostrar amigos', 'es', 'yum'),
('Show friends', 'REndre ma liste de contacts visible', 'fr', 'yum'),
('Show friends', 'Mostra contatti', 'it', 'yum'),
('Show my online status to everyone', 'Meinen Online-Status veröffentlichen', 'de', 'yum'),
('Show my online status to everyone', 'Montrer lorsque je suis en ligne', 'fr', 'yum'),
('Show my online status to everyone', 'Mostra il mio stato a tutti', 'it', 'yum'),
('Show online status', 'Online-Status anzeigen', 'de', 'yum'),
('Show online status', 'Status en ligne visible', 'fr', 'yum'),
('Show online status', 'Mostra lo stato online', 'it', 'yum'),
('Show permissions', 'Berechtigungen anzeigen', 'de', 'yum'),
('Show permissions', 'Mostrar permisos', 'es', 'yum'),
('Show permissions', 'Montrer les permissions', 'fr', 'yum'),
('Show permissions', 'Mostra autorizzazioni', 'it', 'yum'),
('Show profile visits', 'Profilbesuche anzeigen', 'de', 'yum'),
('Show profile visits', 'Mostrar perfil de visitas', 'es', 'yum'),
('Show profile visits', 'Montrer les visites de profils', 'fr', 'yum'),
('Show profile visits', 'Visualizza visite profilo', 'it', 'yum'),
('Show roles', 'Rollen anzeigen', 'de', 'yum'),
('Show roles', 'Mostrar roles', 'es', 'yum'),
('Show roles', 'Voir les rÃ´les', 'fr', 'yum'),
('Show roles', 'Mostra ruoli', 'it', 'yum'),
('Show roles', 'PokaÅ¼ role', 'pl', 'yum'),
('Show the owner when i visit his profile', 'Dem Profileigentümer erkenntlich machen, wenn ich sein Profil besuche', 'de', 'yum'),
('Show the owner when i visit his profile', 'Montrer aux propriÃ©taires des profils lorsque je consulte leur profil', 'fr', 'yum'),
('Show the owner when i visit his profile', 'Mostra al proprietario quando visito il suo profilo', 'it', 'yum'),
('Show users', 'Benutzer anzeigen', 'de', 'yum'),
('Show users', 'Mostrar usuarios', 'es', 'yum'),
('Show users', 'Voir les membres', 'fr', 'yum'),
('Show users', 'Mostra utenti', 'it', 'yum'),
('Show users', 'PokaÅ¼ uÅ¼ytkownikow', 'pl', 'yum'),
('Statistics', 'Benutzerstatistik', 'de', 'yum'),
('Statistics', 'Estadísticas', 'es', 'yum'),
('Statistics', 'Statistiques des membres', 'fr', 'yum'),
('Statistics', 'Statistiche', 'it', 'yum'),
('Statistics', 'Statystyki', 'pl', 'yum'),
('Status', 'Status', 'de', 'yum'),
('Status', 'Estado', 'es', 'yum'),
('Status', 'Status', 'fr', 'yum'),
('Status', 'Stato', 'it', 'yum'),
('Status', 'Status', 'pl', 'yum'),
('Status', 'Ð¡Ñ‚Ð°Ñ‚ÑƒÑ', 'ru', 'yum'),
('Street', 'Straße', 'de', 'yum'),
('Street', 'Calle', 'es', 'yum'),
('Street', 'Rue', 'fr', 'yum'),
('Street', 'Indirizzo', 'it', 'yum'),
('Street', 'Ulica', 'pl', 'yum'),
('Subject', 'Titel', 'de', 'yum'),
('Subject', 'Sujet', 'fr', 'yum'),
('Subject', 'Oggetto', 'it', 'yum'),
('Success', 'Erfolgreich', 'de', 'yum'),
('Success', 'Exitoso', 'es', 'yum'),
('Success', 'RÃ©ussi', 'fr', 'yum'),
('Success', 'Successo', 'it', 'yum'),
('Superuser', 'Superuser', 'de', 'yum'),
('Superuser', 'Superusuario', 'es', 'yum'),
('Superuser', 'Superuser', 'fr', 'yum'),
('Superuser', 'Superuser', 'it', 'yum'),
('Superuser', 'Superuser', 'pl', 'yum'),
('Superuser', 'Ð¡ÑƒÐ¿ÐµÑ€ Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»ÑŒ', 'ru', 'yum'),
('Text Email Activation', 'Text Email Konto-Aktivierung', 'de', 'yum'),
('Text Email Activation', 'Texto de activación por correo', 'es', 'yum'),
('Text Email Activation', 'Texte contenu dans l e-mail d activation de compte', 'fr', 'yum'),
('Text Email Activation', 'Testo email d''attivazione account', 'it', 'yum'),
('Text Email Recovery', 'Text E-Mail Passwort wiederherstellen', 'de', 'yum'),
('Text Email Recovery', 'Texto de recuperación de contraseña por correo', 'es', 'yum'),
('Text Email Recovery', 'Texte contenu dans l e-Mail de renouvellement de mot de passe', 'fr', 'yum'),
('Text Email Recovery', 'Testo email recupero password', 'it', 'yum'),
('Text Email Registration', 'Text E-Mail Registrierung', 'de', 'yum'),
('Text Email Registration', 'Texto de registro por correo', 'es', 'yum'),
('Text Email Registration', 'Texte contenu dans l e-Mail d enregistrement', 'fr', 'yum'),
('Text Email Registration', 'Testo email di registrazione', 'it', 'yum'),
('Text Login Footer', 'Text im Login-footer', 'de', 'yum'),
('Text Login Footer', 'Text im Login-footer', 'es', 'yum'),
('Text Login Footer', 'Text im Login-footer', 'fr', 'yum'),
('Text Login Footer', 'Testo nel piepagina del login', 'it', 'yum'),
('Text Login Header', 'Text im Login-header', 'de', 'yum'),
('Text Login Header', 'Text im Login-header', 'es', 'yum'),
('Text Login Header', 'Texte de connection-header', 'fr', 'yum'),
('Text Login Header', 'Testo nell''intestazione del login', 'it', 'yum'),
('Text Registration Footer', 'Text im Registrierung-footer', 'de', 'yum'),
('Text Registration Footer', 'Text im Registrierung-footer', 'es', 'yum'),
('Text Registration Footer', 'Texte d enregistrement-footer', 'fr', 'yum'),
('Text Registration Footer', 'Testo nel piepagina della registrazione', 'it', 'yum'),
('Text Registration Header', 'Text im Registrierung-header', 'de', 'yum'),
('Text Registration Header', 'Text im Registrierung-header', 'es', 'yum'),
('Text Registration Header', 'Texte d enregistrement-header', 'fr', 'yum'),
('Text Registration Header', 'Testo nell''intestazione della registrazione', 'it', 'yum'),
('Text for new friendship request', 'Text für eine neue Kontaktanfrage', 'de', 'yum'),
('Text for new friendship request', 'Text für eine neue Kontaktanfrage', 'es', 'yum'),
('Text for new friendship request', 'Texte pour une nouvelle demande de contact', 'fr', 'yum'),
('Text for new friendship request', 'Testo per una nuova richiesta di contatto', 'it', 'yum'),
('Text for new profile comment', 'Text für neuen Profilkommentar', 'de', 'yum'),
('Text for new profile comment', 'Text für neuen Profilkommentar', 'es', 'yum'),
('Text for new profile comment', 'Texte pour un nouveau commentaire dans un profil', 'fr', 'yum'),
('Text for new profile comment', 'Testo per un nuovo commento al profilo', 'it', 'yum'),
('Text translations', 'Übersetzungstexte', 'de', 'yum'),
('Thank you for your registration. Contact Admin to activate your account.', 'Grazie per la tua registrazione. Contatta l''ammnistratore per attivare l''account', 'it', 'yum'),
('Thank you for your registration. Please check your email or login.', 'Vielen Dank für Ihre Anmeldung. Bitte überprüfen Sie Ihre E-Mails oder loggen Sie sich ein.', 'de', 'yum'),
('Thank you for your registration. Please check your email or login.', 'Merci pour votre inscription.Controlez votre boite e-mail, le code d activation de votre compte vous', 'fr', 'yum'),
('Thank you for your registration. Please check your email or login.', 'Grazie per la tua registrazione, controlla la tua email o effettua il login,', 'it', 'yum'),
('Thank you for your registration. Please check your email or login.', 'Vielen Dank fÃ¼r Ihre Anmeldung. Bitte Ã¼berprÃ¼fen Sie Ihre E-Mails oder loggen Sie sich ein.', 'pl', 'yum'),
('Thank you for your registration. Please check your email or login.', 'Ð ÐµÐ³Ð¸ÑÑ‚Ñ€Ð°Ñ†Ð¸Ñ Ð·Ð°Ð²ÐµÑ€ÑˆÐµÐ½Ð°. ÐŸÐ¾Ð¶Ð°Ð»ÑƒÐ¹ÑÑ‚Ð° Ð¿Ñ€Ð¾Ð²ÐµÑ€ÑŒÑ‚Ðµ ÑÐ²Ð¾Ð¹ ÑÐ»ÐµÐº', 'ru', 'yum'),
('Thank you for your registration. Please check your email.', 'Vielen Dank für Ihre Anmeldung. Bitte überprüfen Sie Ihre E-Mails.', 'de', 'yum'),
('Thank you for your registration. Please check your email.', 'Gracias por su registro. Por favor revise su email.', 'es', 'yum'),
('Thank you for your registration. Please check your email.', 'Merci pour votre inscription.Controlez votre boite e-mail, le code d activation de votre compte vous', 'fr', 'yum'),
('Thank you for your registration. Please check your email.', 'Grazie per la tua registrazione, controlla la tua email,', 'it', 'yum'),
('Thank you for your registration. Please check your email.', 'Vielen Dank fÃ¼r Ihre Anmeldung. Bitte Ã¼berprÃ¼fen Sie Ihre E-Mails.', 'pl', 'yum'),
('Thank you for your registration. Please check your email.', 'Ð ÐµÐ³Ð¸ÑÑ‚Ñ€Ð°Ñ†Ð¸Ñ Ð·Ð°Ð²ÐµÑ€ÑˆÐµÐ½Ð°. ÐŸÐ¾Ð¶Ð°Ð»ÑƒÐ¹ÑÑ‚Ð° Ð¿Ñ€Ð¾Ð²ÐµÑ€ÑŒÑ‚Ðµ ÑÐ²Ð¾Ð¹ ÑÐ»ÐµÐº', 'ru', 'yum'),
('Thank you for your registration. Please login.', 'Grazie per la tua registrazone. Effettua il login.', 'it', 'yum'),
('The comment has been saved', 'Der Kommentar wurde gespeichert', 'de', 'yum'),
('The comment has been saved', 'Der Kommentar wurde gespeichert', 'es', 'yum'),
('The comment has been saved', 'Le commentaire a bien Ã©tÃ© mÃ©morisÃ©', 'fr', 'yum'),
('The comment has been saved', 'Il commento Ã¨ stato salvato', 'it', 'yum'),
('The file "{file}" is not an image.', 'Die Datei {file} ist kein Bild.', 'de', 'yum'),
('The file "{file}" is not an image.', 'Este archivo {file} no es una imagen.', 'es', 'yum'),
('The file "{file}" is not an image.', 'DLe fichier {file} n est pas un fichier image.', 'fr', 'yum'),
('The file "{file}" is not an image.', 'Il file {file} non Ã¨ un''immagine.', 'it', 'yum'),
('The friendship request has been sent', 'Die Kontaktanfrage wurde gesendet', 'de', 'yum'),
('The friendship request has been sent', 'Votre demande de contact Ã  bien Ã©tÃ© envoyÃ©e', 'fr', 'yum'),
('The friendship request has been sent', 'La richiesta di contatto Ã¨ stata inviata', 'it', 'yum'),
('The image "{file}" height should be "{height}px".', 'Die Datei {file} muss genau {height}px hoch sein.', 'de', 'yum'),
('The image "{file}" height should be "{height}px".', 'La imagen {file} debe tener {height}px de largo.', 'es', 'yum'),
('The image "{file}" height should be "{height}px".', 'La photo {file} doit avoir une hauteur maximum de {height}px .', 'fr', 'yum'),
('The image "{file}" height should be "{height}px".', 'L''immagine {file} deve essere {height}px.', 'it', 'yum'),
('The image "{file}" width should be "{width}px".', 'Die Datei {file} muss genau {width}px breit sein.', 'de', 'yum'),
('The image "{file}" width should be "{width}px".', 'La imagen {file} debe tener {width}px de ancho.', 'es', 'yum'),
('The image "{file}" width should be "{width}px".', 'La photo {file} doit avoir une largeur maximum de {width}px .', 'fr', 'yum'),
('The image "{file}" width should be "{width}px".', 'L''immagine {file} deve essere larga {width}px.', 'it', 'yum'),
('The image has been resized to {max_pixel}px width successfully', 'Das Bild wurde beim hochladen automatisch auf eine Breite von {max_pixel} skaliert', 'de', 'yum'),
('The image has been resized to {max_pixel}px width successfully', 'Votre photo de profil a Ã©tÃ© retaillÃ©e automatiquement Ã  une taille de{max_pixel}', 'fr', 'yum'),
('The image has been resized to {max_pixel}px width successfully', 'Immagine ridimensionata a {max_pixel}px con successo.', 'it', 'yum'),
('The image should have at least 50px and a maximum of 200px in width and height. Supported filetypes are .jpg, .gif and .png', 'das Bild sollte mindestens 50px und maximal 200px in der Höhe und Breite betragen. Mögliche Dateityp', 'de', 'yum'),
('The image should have at least 50px and a maximum of 200px in width and height. Supported filetypes are .jpg, .gif and .png', 'La imagen debe tener un mínimo de 50px y un máximo de 200px de ancho y largo. Los tipos de archivo s', 'es', 'yum'),
('The image should have at least 50px and a maximum of 200px in width and height. Supported filetypes are .jpg, .gif and .png', 'La foto chargÃ©e doit avoir une largeur maximum de 50px  et une hauteur maximale de 200px. Les fichi', 'fr', 'yum'),
('The image should have at least 50px and a maximum of 200px in width and height. Supported filetypes are .jpg, .gif and .png', 'L''immagine deve essere almeno 50px e massimo 200px in larghezza e altezza. Tipi di file supportati .', 'it', 'yum'),
('The image was uploaded successfully', 'Das Bild wurde erfolgreich hochgeladen', 'de', 'yum'),
('The image was uploaded successfully', 'L image a Ã©tÃ© chargÃ©e avec succÃ¨s', 'fr', 'yum'),
('The image was uploaded successfully', 'Immagine caricata con successo', 'it', 'yum'),
('The messages for your application language are not defined.', 'Los mensajes para el idioma de tu aplicación no están definidos', 'es', 'yum'),
('The minimum value of the field (form validator).', 'Minimalwert des Feldes (Form-Validierung', 'de', 'yum'),
('The minimum value of the field (form validator).', 'El valor mínimo del campo (validador de formulario)', 'es', 'yum'),
('The minimum value of the field (form validator).', 'Valeur minimum du champ (Validation du formulaire)', 'fr', 'yum'),
('The minimum value of the field (form validator).', 'Valore minimo del campo (validazione form).', 'it', 'yum'),
('The minimum value of the field (form validator).', 'ÐœÐ¸Ð½Ð¸Ð¼Ð°Ð»ÑŒÐ½Ð¾Ðµ Ð·Ð½Ð°Ñ‡ÐµÐ½Ð¸Ðµ Ð¿Ð¾Ð»Ñ (Ð¿Ñ€Ð¾Ð²ÐµÑ€ÐºÐ° Ñ„Ð¾Ñ€Ð¼Ñ‹).', 'ru', 'yum'),
('The new password has been saved', 'Das neue Passwort wurde gespeichert.', 'de', 'yum'),
('The new password has been saved', 'Votre nouveau mot de passe a bien Ã©tÃ© mÃ©morisÃ©.', 'fr', 'yum'),
('The new password has been saved', 'La nuova password Ã¨ stata salvata.', 'it', 'yum'),
('The new password has been saved.', 'La nueva contraseña ha sido guardada', 'es', 'yum'),
('The value of the default field (database).', 'Standard-Wert für die Datenbank', 'de', 'yum'),
('The value of the default field (database).', 'El valor predeterminado del campo (base de datos).', 'es', 'yum'),
('The value of the default field (database).', 'Valeur standard pour la banque de donnÃ©e', 'fr', 'yum'),
('The value of the default field (database).', 'Valore del campo predefnito (database).', 'it', 'yum'),
('The value of the default field (database).', 'DomyÅ›lna wartoÅ›Ä‡ pola (bazodanowego).', 'pl', 'yum'),
('The value of the default field (database).', 'Ð—Ð½Ð°Ñ‡ÐµÐ½Ð¸Ðµ Ð¿Ð¾Ð»Ñ Ð¿Ð¾ ÑƒÐ¼Ð¾Ð»Ñ‡Ð°Ð½Ð¸ÑŽ (Ð±Ð°Ð·Ð° Ð´Ð°Ð½Ð½Ñ‹Ñ…).', 'ru', 'yum'),
('There are a total of {messages} messages in your System.', 'Es gibt in ihrem System insgesamt {messages} Nachrichten.', 'de', 'yum'),
('There are a total of {messages} messages in your System.', 'Hay un total de {messages} mensajes en su sistema.', 'es', 'yum'),
('There are a total of {messages} messages in your System.', 'Il existe dans votre systÃ¨me {messages} messages.', 'fr', 'yum'),
('There are a total of {messages} messages in your System.', 'Ci sno un totale di {messages} messaggi nel Sistema.', 'it', 'yum'),
('There are a total of {messages} messages in your System.', 'Istnieje {messages} wiadomoÅ›ci w Twoim systemie.', 'pl', 'yum'),
('There are {active_users} active and {inactive_users} inactive users in your System, from which {admin_users} are Administrators.', ' Es gibt {active_users} aktive und {inactive_users} inaktive Benutzer in ihrem System, von denen {ad', 'de', 'yum'),
('There are {active_users} active and {inactive_users} inactive users in your System, from which {admin_users} are Administrators.', 'Hay {active_users} usuarios activos y {inactive_users} usuarios inactivos en su sistema, de los cual', 'es', 'yum'),
('There are {active_users} active and {inactive_users} inactive users in your System, from which {admin_users} are Administrators.', ' Il existe {active_users}  membres actifs et {inactive_users} membres inactifs dans votre systÃ©me, ', 'fr', 'yum'),
('There are {active_users} active and {inactive_users} inactive users in your System, from which {admin_users} are Administrators.', ' Ci sono {active_users} utenti attivi e {inactive_users} utenti inattivi nel Sistema, di cui {admin_', 'it', 'yum'),
('There are {active_users} active and {inactive_users} inactive users in your System, from which {admin_users} are Administrators.', 'IstniejÄ… {active_users} aktywni i {inactive_users} nieaktywni uÅ¼ytkownicy w Twoim systemie, w tym ', 'pl', 'yum'),
('There are {profiles} profiles in your System. These consist of {profile_fields} profile fields in {profile_field_groups} profile field groups', 'Es gibt {profiles} Profile in ihren System. Diese bestehen aus {profile_fields} Profilfeldern, die s', 'de', 'yum'),
('There are {profiles} profiles in your System. These consist of {profile_fields} profile fields in {profile_field_groups} profile field groups', 'Hay {profiles} perfiles en su sistema. Estos consisten de {profile_fields} campos de perfiles en {pr', 'es', 'yum'),
('There are {profiles} profiles in your System. These consist of {profile_fields} profile fields in {profile_field_groups} profile field groups', 'Il existe {profiles} profils dans votre systÃ¨me. Ils se composent de {profile_fields} champs de pro', 'fr', 'yum'),
('There are {profiles} profiles in your System. These consist of {profile_fields} profile fields in {profile_field_groups} profile field groups', 'Ci sono {profiles} profili nel Sistema. sono costituiti da {profile_fields} campi profili, in {profi', 'it', 'yum'),
('There are {profiles} profiles in your System. These consist of {profile_fields} profile fields in {profile_field_groups} profile field groups', 'IstniejÄ… {profiles} profile w Twoim systemie, ktÃ³re zawierajÄ… pola {profile_fields} w grupach {pr', 'pl', 'yum'),
('There are {roles} roles in your System.', 'Es gibt {roles} Rollen in ihrem System', 'de', 'yum'),
('There are {roles} roles in your System.', 'Hay {roles} roles en su sistema.', 'es', 'yum'),
('There are {roles} roles in your System.', 'Il existe les {roles} rÃ´les suivant dans votre systÃ¨me', 'fr', 'yum'),
('There are {roles} roles in your System.', 'Ci sono {roles} ruoli nel Sistema', 'it', 'yum'),
('There are {roles} roles in your System.', 'Istnieje {roles} rÃ³l w Twoim systemie', 'pl', 'yum'),
('There was an error saving the password', 'Fehler beim speichern des Passwortes', 'de', 'yum'),
('There was an error saving the password', 'Erreur produite lors de la mÃ©morisation de votre mot de passe.', 'fr', 'yum'),
('There was an error saving the password', 'Impossibile salvare la password', 'it', 'yum'),
('This account is blocked.', 'Ihr Konto wurde blockiert.', 'de', 'yum'),
('This account is blocked.', 'Esta cuenta está bloqueada.', 'es', 'yum'),
('This account is blocked.', 'Votre compte a Ã©tÃ© bloquÃ©. Contactez nous.', 'fr', 'yum'),
('This account is blocked.', 'Il tuo account Ã¨ stato bloccato.', 'it', 'yum'),
('This account is blocked.', 'To konto jest zablokowane.', 'pl', 'yum'),
('This account is not activated.', 'Ihr Konto wurde nicht aktiviert.', 'de', 'yum'),
('This account is not activated.', 'Esta cuenta no está activada.', 'es', 'yum'),
('This account is not activated.', 'Votre compte n a pas Ã©tÃ© activÃ©.', 'fr', 'yum'),
('This account is not activated.', 'Il tuo account non Ã¨ attivato.', 'it', 'yum'),
('This account is not activated.', 'To konto nie zostaÅ‚o jeszcze aktywowane.', 'pl', 'yum'),
('This membership is still {days} days active', 'Die Mitgliedschaft ist noch {days} Tage aktiv', 'de', 'yum'),
('This membership is still {days} days active', 'L''iscrizione Ã¨ ancora attiva per {days} giorni', 'it', 'yum'),
('This message will be sent to {username}', 'Diese Nachricht wird an {username} versandt', 'de', 'yum'),
('This message will be sent to {username}', 'Este mensaje será enviado a {username}', 'es', 'yum'),
('This message will be sent to {username}', 'Ce message sera envoyÃ© Ã  {username}', 'fr', 'yum'),
('This message will be sent to {username}', 'Questo messaggio verrÃ  inviato a {username}', 'it', 'yum'),
('This role can administer users of this roles', 'Este rol puede administrar usuarios de estos roles', 'es', 'yum'),
('This role can administer users of this roles', 'Membres ayant ce rÃ´le peuvent administrer ces utilisateurs', 'fr', 'yum'),
('This role can administer users of this roles', 'Questo ruolo puÃ² amministrare utenti di questo ruolo', 'it', 'yum'),
('This user belongs to these roles:', 'Benutzer gehört diesen Rollen an:', 'de', 'yum'),
('This user belongs to these roles:', 'Este usuario pertenece a estos roles:', 'es', 'yum'),
('This user belongs to these roles:', 'A ce membre a Ã©tÃ© attribuÃ© ces rÃ´les:', 'fr', 'yum'),
('This user belongs to these roles:', 'L''Utente appartiene a questi ruoli:', 'it', 'yum'),
('This user belongs to these roles:', 'UÅ¼ytkownik posiada role:', 'pl', 'yum'),
('This user can administer this users', 'Dieser Benutzer kann diese Nutzer administrieren', 'de', 'yum'),
('This user can administer this users', 'Este usuario puede administrar estos usuarios', 'es', 'yum'),
('This user can administer this users', 'Ce membre peut gÃ©rer ces utilisateurs.', 'fr', 'yum'),
('This user can administer this users', 'Gli utenti possono gestire questi utenti', 'it', 'yum'),
('This user can administer this users:', 'Benutzer kann diese Benutzer verwalten:', 'de', 'yum'),
('This user can administer this users:', 'Este usuario puede administrar estos usuarios:', 'es', 'yum'),
('This user can administer this users:', 'Ce membre peut administrer ces membres:', 'fr', 'yum'),
('This user can administer this users:', 'Gli utenti possono gestire questi utenti:', 'it', 'yum'),
('This user can administer this users:', 'UÅ¼ytkownik moÅ¼e zarzÄ…dzaj nastÄ™pujÄ…cymi uÅ¼ytkownikami:', 'pl', 'yum'),
('This user can administrate this users', 'UÅ¼ytkownik moÅ¼e administrowaÄ‡ podanymi uÅ¼ytkownikami', 'pl', 'yum'),
('This user''s email address already exists.', 'Indirizzo email esistente.', 'it', 'yum'),
('This user''s email adress already exists.', 'Der Benutzer E-Mail-Adresse existiert bereits.', 'de', 'yum'),
('This user''s email adress already exists.', 'La dirección de e-mail de este usuario ya existe.', 'es', 'yum'),
('This user''s email adress already exists.', 'Cette adresse e-mail existe dÃ©jÃ  dans notre banque de donnÃ©e.', 'fr', 'yum'),
('This user''s email adress already exists.', 'Indirizzo e-mail giÃ  esistente.', 'it', 'yum'),
('This user''s email adress already exists.', 'Podany adres melopwy jest w uÅ¼yciu', 'pl', 'yum'),
('This user''s email adress already exists.', 'ÐŸÐ¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»ÑŒ Ñ Ñ‚Ð°ÐºÐ¸Ð¼ ÑÐ»ÐµÐºÑ‚Ñ€Ð¾Ð½Ð½Ñ‹Ð¼ Ð°Ð´Ñ€ÐµÑÐ¾Ð¼ ÑƒÐ¶Ðµ ÑÑƒÑ‰ÐµÑÑ‚Ð²Ñƒ', 'ru', 'yum'),
('This user''s name already exists.', 'Der Benutzer Name existiert bereits.', 'de', 'yum'),
('This user''s name already exists.', 'Este nombre de usuario ya existe.', 'es', 'yum'),
('This user''s name already exists.', 'Ce nom d utilisateur existe dÃ©jÃ  dans notre banque de donnÃ©e.', 'fr', 'yum'),
('This user''s name already exists.', 'Nome esistenze', 'it', 'yum'),
('This user''s name already exists.', 'Podana nazwa uÅ¼ytkownika jest w uÅ¼yciu.', 'pl', 'yum'),
('This user''s name already exists.', 'ÐŸÐ¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»ÑŒ Ñ Ñ‚Ð°ÐºÐ¸Ð¼ Ð¸Ð¼ÐµÐ½ÐµÐ¼ ÑƒÐ¶Ðµ ÑÑƒÑ‰ÐµÑÑ‚Ð²ÑƒÐµÑ‚.', 'ru', 'yum'),
('This users have a ordered memberships of this role', 'Diese Benutzer haben eine Mitgliedschaft in dieser Rolle', 'de', 'yum'),
('This users have a ordered memberships of this role', 'Ces membres sont assignÃ©s Ã  ce rÃ´le', 'fr', 'yum'),
('This users have a ordered memberships of this role', 'Questi utenti hanno ordinato l''iscrizione a questo ruolo', 'it', 'yum'),
('This users have been assigned to this Role', 'Diese Nutzer gehören dieser Rolle an: ', 'de', 'yum'),
('This users have been assigned to this Role', 'Este usuario ha sido asignado a este Rol', 'es', 'yum'),
('This users have been assigned to this Role', 'A ces membres ont Ã©tÃ© attribuÃ©s ce rÃ´le: ', 'fr', 'yum'),
('This users have been assigned to this Role', 'Questi utenti sono assegnati al ruolo: ', 'it', 'yum'),
('This users have been assigned to this Role', 'UÅ¼ytkownik zostaÅ‚ przypisany do rÃ³l: ', 'pl', 'yum'),
('This users have been assigned to this role', 'Dieser Rolle gehören diese Benutzer an', 'de', 'yum'),
('This users have been assigned to this role', 'Este usuario ha sido asignado a este rol', 'es', 'yum'),
('This users have been assigned to this role', 'Ce rÃ´le a bien Ã©tÃ© attribuÃ© Ã  ces membres', 'fr', 'yum'),
('This users have been assigned to this role', 'Questo ruolo Ã¨ assegnato  a questo utente', 'it', 'yum'),
('This users have been assigned to this role', 'Uzytkownik zostaÅ‚ przypisany do rÃ³l', 'pl', 'yum'),
('This users have commented your profile recently', 'Diese Benutzer haben mein Profil kürzlich kommentiert', 'de', 'yum'),
('This users have commented your profile recently', 'Cet utilisateur Ã  commentÃ© rÃ©cemment votre profil', 'fr', 'yum'),
('This users have commented your profile recently', 'Questo utente ha recentemente commentato sul tuo profilo', 'it', 'yum'),
('This users have visited my profile', 'Diese Benutzer haben mein Profil besucht', 'de', 'yum'),
('This users have visited my profile', 'Estos usuarios han visitado mi perfil', 'es', 'yum'),
('This users have visited my profile', 'Les membres ayant visitÃ© mon profil.', 'fr', 'yum'),
('This users have visited my profile', 'Questi utenti hanno visitato il tuo profilo', 'it', 'yum'),
('This users have visited your profile recently', 'Diese Benutzer haben kürzlich mein Profil besucht', 'de', 'yum'),
('This users have visited your profile recently', 'Cet utilisateur a visitÃ© votre profil rÃ©cemment', 'fr', 'yum'),
('This users have visited your profile recently', 'Questi utenti hanno recentemente visitato il tuo profilo', 'it', 'yum'),
('Time left', 'Zeit übrig', 'de', 'yum'),
('Time sent', 'Gesendet am', 'de', 'yum'),
('Time sent', 'Hora de envío', 'es', 'yum'),
('Time sent', 'EnvoyÃ© le', 'fr', 'yum'),
('Time sent', 'Pubblicato su', 'it', 'yum'),
('Time sent', 'WysÅ‚ano', 'pl', 'yum'),
('Title', 'Titel', 'de', 'yum'),
('Title', 'Título', 'es', 'yum'),
('Title', 'Titre', 'fr', 'yum'),
('Title', 'Titolo', 'it', 'yum'),
('Title', 'ÐÐ°Ð·Ð²Ð°Ð½Ð¸Ðµ', 'ru', 'yum'),
('To', 'An', 'de', 'yum'),
('To', 'Para', 'es', 'yum'),
('To', 'A', 'fr', 'yum'),
('To', 'A', 'it', 'yum'),
('Translation', 'Übersetzung', 'de', 'yum'),
('Translations have been saved', 'Die Übersetzungen wurden gespeichert', 'de', 'yum'),
('Try again', 'Erneut versuchen', 'de', 'yum'),
('Try again', 'Intenta de nuevo', 'es', 'yum'),
('Try again', 'Essayer Ã  nouveau', 'fr', 'yum'),
('Try again', 'Prova di nuovo', 'it', 'yum'),
('Try again', 'SprÃ³buj jeszcze raz', 'pl', 'yum'),
('Update', 'Bearbeiten', 'de', 'yum'),
('Update', 'Actualizar', 'es', 'yum'),
('Update', 'Modifier', 'fr', 'yum'),
('Update', 'Aggiorna', 'it', 'yum'),
('Update', 'ZmieÅ„', 'pl', 'yum'),
('Update Profile Field', 'Profilfeld bearbeiten', 'de', 'yum'),
('Update Profile Field', 'Actualizar Campo del Perfil', 'es', 'yum'),
('Update Profile Field', 'Modifier le champ du profil', 'fr', 'yum'),
('Update Profile Field', 'Aggiorna campo Profilo', 'it', 'yum'),
('Update Profile Field', 'ZmieÅ„ pole w profilu', 'pl', 'yum'),
('Update Profile Field', 'ÐŸÑ€Ð°Ð²Ð¸Ñ‚ÑŒ', 'ru', 'yum'),
('Update User', 'Benutzer bearbeiten', 'de', 'yum'),
('Update User', 'Actualizar Usuario', 'es', 'yum'),
('Update User', 'GÃ©rer les membres', 'fr', 'yum'),
('Update User', 'Aggiorna utenti', 'it', 'yum'),
('Update User', 'ÐŸÑ€Ð°Ð²Ð¸Ñ‚ÑŒ', 'ru', 'yum'),
('Update my profile', 'Mein Profil bearbeiten', 'de', 'yum'),
('Update my profile', 'Aggiorna profilo', 'it', 'yum'),
('Update payment', 'Zahlungsart bearbeiten', 'de', 'yum'),
('Update payment', 'Aggiorna pagamento', 'it', 'yum'),
('Update role', 'Rolle bearbeiten', 'de', 'yum'),
('Update role', 'Actualizar rol', 'es', 'yum'),
('Update role', 'Modifier les rÃ´les', 'fr', 'yum'),
('Update role', 'Aggiorna ruolo', 'it', 'yum'),
('Update role', 'Edytuj rolÄ™', 'pl', 'yum'),
('Update user', 'Benutzer bearbeiten', 'de', 'yum'),
('Update user', 'Actualizar usuario', 'es', 'yum'),
('Update user', 'Modifier un membre', 'fr', 'yum'),
('Update user', 'Aggiorna utente', 'it', 'yum'),
('Update user', 'ZmieÅ„ uÅ¼ytkownika', 'pl', 'yum'),
('Upload Avatar', 'Subir un Avatar', 'es', 'yum'),
('Upload Avatar', 'Charger une image de profil', 'fr', 'yum'),
('Upload Avatar', 'Carica avatar', 'it', 'yum'),
('Upload avatar', 'Profilbild hochladen', 'de', 'yum'),
('Upload avatar', 'Subir un avatar', 'es', 'yum'),
('Upload avatar', 'Charger une image de profil maintenant', 'fr', 'yum'),
('Upload avatar', 'Carica avatar', 'it', 'yum'),
('Upload avatar Image', 'Carica avatar', 'it', 'yum'),
('Upload avatar image', 'Profilbild hochladen', 'de', 'yum'),
('Upload avatar image', 'Cargar imagen de perfil', 'es', 'yum'),
('Upload avatar image', 'Charger une image pour votre profil', 'fr', 'yum'),
('Upload avatar image', 'Carica immagine avatar', 'it', 'yum'),
('Use my Gravatar', 'Meinen Gravatar benutzen', 'de', 'yum'),
('User', 'Benutzer', 'de', 'yum'),
('User', 'Usuario', 'es', 'yum'),
('User', 'Utilisateur', 'fr', 'yum'),
('User', 'Utente', 'it', 'yum'),
('User Administration', 'Benutzerverwaltung', 'de', 'yum'),
('User Administration', 'Administración de usuario', 'es', 'yum'),
('User Administration', 'Gestion des membres', 'fr', 'yum'),
('User Administration', 'Gestione utente', 'it', 'yum'),
('User Administration', 'ZarzÄ…dzanie uÅ¼ytkownikami', 'pl', 'yum'),
('User Management Home', 'Benutzerverwaltung Startseite', 'de', 'yum'),
('User Management Home', 'Administración de usuario', 'es', 'yum'),
('User Management Home', 'Page de gestion des membres', 'fr', 'yum'),
('User Management Home', 'Home gestione utente', 'it', 'yum'),
('User Management Home', 'Strona startowa profilu', 'pl', 'yum'),
('User Management settings configuration', 'Einstellungen', 'de', 'yum'),
('User Management settings configuration', 'Ajustes de configuración de la Administración de usuarios', 'es', 'yum'),
('User Management settings configuration', 'Options de configuration des profils', 'fr', 'yum'),
('User Management settings configuration', 'Configurazione impostazioni gestione utente', 'it', 'yum'),
('User Operations', 'Benutzeraktionen', 'de', 'yum'),
('User Operations', 'Operaciones de usuario', 'es', 'yum'),
('User Operations', 'Action de l utilisateur', 'fr', 'yum'),
('User Operations', 'Azioni utente', 'it', 'yum'),
('User Operations', 'CzynnoÅ›ci uÅ¼ytkownika', 'pl', 'yum'),
('User activation', 'User-Aktivierung', 'de', 'yum'),
('User activation', 'Activación de usuario', 'es', 'yum'),
('User activation', 'Activation du compte utilisateur', 'fr', 'yum'),
('User activation', 'Attivazione utente', 'it', 'yum'),
('User activation', 'User-Aktivierung', 'pl', 'yum'),
('User activation', 'ÐÐºÑ‚Ð¸Ð²Ð°Ñ†Ð¸Ñ Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»Ñ', 'ru', 'yum'),
('User administration Panel', 'Benutzerkontrollzentrum', 'de', 'yum'),
('User administration Panel', 'Panel de administración de usuario', 'es', 'yum'),
('User administration Panel', 'Centre de controle des membres', 'fr', 'yum'),
('User administration Panel', 'Pannello di controllo', 'it', 'yum'),
('User administration Panel', 'Panel zarzÄ…dzania uÅ¼ytkownika', 'pl', 'yum'),
('User administration panel', 'Kontrollzentrum', 'de', 'yum'),
('User administration panel', 'Panel de administración de usuario', 'es', 'yum'),
('User administration panel', 'Centre de controle user', 'fr', 'yum'),
('User administration panel', 'Pannello di controllo', 'it', 'yum'),
('User administration panel', 'Panel zarzÄ…dzania uÅ¼ytkownikiem', 'pl', 'yum'),
('User belongs to Roles', 'Benutzer gehört diesen Rollen an', 'de', 'yum'),
('User belongs to Roles', 'El usuario pertenece al los Roles', 'es', 'yum'),
('User belongs to Roles', 'Attribuer des rÃ´les Ã  un membre', 'fr', 'yum'),
('User belongs to Roles', 'Utente appartiene a questi ruoli', 'it', 'yum'),
('User belongs to Roles', 'UÅ¼ytkownik posiada role', 'pl', 'yum'),
('User belongs to these roles', 'Benutzer gehört diesen Rollen an', 'de', 'yum'),
('User belongs to these roles', 'El usuario pertenece a estos roles', 'es', 'yum'),
('User belongs to these roles', 'Attribuer ce rÃ´le Ã  un membre', 'fr', 'yum'),
('User belongs to these roles', 'Utente appartiene a questi ruoli', 'it', 'yum'),
('User belongs to these roles', 'UÅ¼ytkownik posiada role', 'pl', 'yum'),
('User can not administer any users', 'Kann keine Benutzer verwalten', 'de', 'yum'),
('User can not administer any users', 'El usuario no puede administrar ningún usuario', 'es', 'yum'),
('User can not administer any users', 'Ne peut pas gÃ©rer les utilisateurs', 'fr', 'yum'),
('User can not administer any users', 'Impossibile gestire gli utenti', 'it', 'yum'),
('User can not administer any users', 'UÅ¼ytkownik nie moÅ¼e zarzÄ…dzaÄ‡ Å¼adnymi uÅ¼ytkownikami', 'pl', 'yum'),
('User can not administer any users of any role', 'Kann keine Rollen verwalten', 'de', 'yum'),
('User can not administer any users of any role', 'El usuario no puede administrar ningún usuario o ningún rol', 'es', 'yum'),
('User can not administer any users of any role', 'Ne peut pas gÃ©rer les rolles', 'fr', 'yum'),
('User can not administer any users of any role', 'Impossibile gestire i ruoli', 'it', 'yum'),
('User can not administer any users of any role', 'UÅ¼ytkownik nie moÅ¼e zarzÄ…dzaÄ‡ Å¼adnymi rolami uÅ¼ytkownikÃ³w', 'pl', 'yum'),
('User is Online!', 'Benutzer ist Online!', 'de', 'yum'),
('User is Online!', 'Utilisateur en ligne!', 'fr', 'yum'),
('User is Online!', 'Utente online!', 'it', 'yum'),
('User module settings', 'Moduleinstellungen', 'de', 'yum'),
('User module settings', 'Ajustes del módulo de usuario', 'es', 'yum'),
('User module settings', 'RÃ©glages du module user', 'fr', 'yum'),
('User module settings', 'Modulo impostazioni utente', 'it', 'yum'),
('User module settings', 'Ustawienia moduÅ‚u uÅ¼ytkownika', 'pl', 'yum'),
('Usergroups', 'Benutzergruppen', 'de', 'yum'),
('Usergroups', 'Grupos del usuario', 'es', 'yum'),
('Usergroups', 'Utilisateur des grouppes', 'fr', 'yum'),
('Usergroups', 'Gruppi utenti', 'it', 'yum'),
('Username', 'Benutzername', 'de', 'yum'),
('Username', 'Usuario', 'es', 'yum'),
('Username', 'Benutzername', 'fr', 'yum'),
('Username', 'Username', 'it', 'yum'),
('Username', 'UÅ¼ytkownik', 'pl', 'yum'),
('Username is incorrect.', 'Benutzername ist falsch.', 'de', 'yum'),
('Username is incorrect.', 'Nombre de usuario incorrecto', 'es', 'yum'),
('Username is incorrect.', 'Le nom d utilisateur est incorrect.', 'fr', 'yum'),
('Username is incorrect.', 'Username non corretto.', 'it', 'yum'),
('Username is incorrect.', 'Nazwa uÅ¼ytkownika jest niepoprawna.', 'pl', 'yum'),
('Username is incorrect.', 'ÐŸÐ¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»ÑŒ Ñ Ñ‚Ð°ÐºÐ¸Ð¼ Ð¸Ð¼ÐµÐ½ÐµÐ¼ Ð½Ðµ Ð·Ð°Ñ€ÐµÐ³Ð¸ÑÑ‚Ñ€Ð¸Ñ€Ð¾Ð²Ð°Ð½.', 'ru', 'yum'),
('Username or Email', 'Benutzername oder E-mail', 'de', 'yum'),
('Username or Email', 'Nombre de usuario o Email', 'es', 'yum'),
('Username or Email', 'Nom d utilisateur ou adresse e-mail.', 'fr', 'yum'),
('Username or Email', 'Username o email', 'it', 'yum'),
('Username or Password is incorrect', 'Benutzername oder Passwort ist falsch', 'de', 'yum'),
('Username or Password is incorrect', 'Usuario o contraseña incorrectos', 'es', 'yum'),
('Username or Password is incorrect', 'Nom d utilisateur ou mot passe incorrect', 'fr', 'yum'),
('Username or Password is incorrect', 'Username o password errato/a', 'it', 'yum'),
('Username or email', 'Benutzername oder E-Mail', 'de', 'yum'),
('Username or email', 'Nom d utilisateur ou adresse e-mail', 'fr', 'yum'),
('Username or email', 'Username o email', 'it', 'yum'),
('Users', 'Usuarios', 'es', 'yum'),
('Users', 'Utilisateur', 'fr', 'yum'),
('Users', 'Utenti', 'it', 'yum'),
('Users', 'ÐŸÐ¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»Ð¸', 'ru', 'yum'),
('Users: ', 'Benutzer: ', 'de', 'yum'),
('Users: ', 'Usuarios:', 'es', 'yum'),
('Users: ', 'Membres: ', 'fr', 'yum'),
('Users: ', 'Utenti: ', 'it', 'yum'),
('Users: ', 'UÅ¼ytkownicy: ', 'pl', 'yum'),
('Variable name', 'Variablen name', 'de', 'yum'),
('Variable name', 'Nombre de variable', 'es', 'yum'),
('Variable name', 'Nom de la variable', 'fr', 'yum'),
('Variable name', 'Nome variabile', 'it', 'yum'),
('Variable name', 'Ð˜Ð¼Ñ Ð¿ÐµÑ€ÐµÐ¼ÐµÐ½Ð½Ð¾Ð¹', 'ru', 'yum'),
('Verification Code', 'Codice verifica', 'it', 'yum'),
('Verification Code', 'Kod weryfikujÄ…cy', 'pl', 'yum'),
('Verification Code', 'ÐŸÑ€Ð¾Ð²ÐµÑ€Ð¾Ñ‡Ð½Ñ‹Ð¹ ÐºÐ¾Ð´', 'ru', 'yum'),
('Verification code', 'Verifizierung', 'de', 'yum'),
('Verification code', 'Código de verificación', 'es', 'yum'),
('Verification code', 'Code de verification', 'fr', 'yum'),
('Verification code', 'Codice verifica', 'it', 'yum'),
('View', 'Anzeigen', 'de', 'yum'),
('View', 'Ver', 'es', 'yum'),
('View', 'Editer', 'fr', 'yum'),
('View', 'Visualizza', 'it', 'yum'),
('View', 'PolaÅ¼', 'pl', 'yum'),
('View Details', 'Zur Gruppe', 'de', 'yum'),
('View Details', 'Mostra dettagli', 'it', 'yum'),
('View Profile Field', 'Mostra campo Profilo', 'it', 'yum'),
('View Profile Field', 'ÐŸÑ€Ð¾ÑÐ¼Ð¾Ñ‚Ñ€', 'ru', 'yum'),
('View Profile Field #', 'Mostra # campo Profilo', 'it', 'yum'),
('View Profile Field #', 'ÐŸÐ¾Ð»Ðµ Ð¿Ñ€Ð¾Ñ„Ð¸Ð»Ñ #', 'ru', 'yum'),
('View User', 'Benutzer anzeigen', 'de', 'yum'),
('View User', 'Ver Usuario', 'es', 'yum'),
('View User', 'Consulter le profil du membre', 'fr', 'yum'),
('View User', 'Mostra utente', 'it', 'yum'),
('View User', 'ÐŸÑ€Ð¾ÑÐ¼Ð¾Ñ‚Ñ€ Ð¿Ñ€Ð¾Ñ„Ð¸Ð»Ñ', 'ru', 'yum'),
('View admin messages', 'Administratornachrichten anzeigen', 'de', 'yum'),
('View admin messages', 'Ver mensajes de admin', 'es', 'yum'),
('View admin messages', 'Voir les messages de l administateur', 'fr', 'yum'),
('View admin messages', 'Visualizza messaggi amministratore', 'it', 'yum'),
('View admin messages', 'PokaÅ¼ wiadomoÅ›ci administratora', 'pl', 'yum'),
('View my messages', 'Meine Nachrichten ansehen', 'de', 'yum'),
('View my messages', 'Ver mis mensajes', 'es', 'yum'),
('View my messages', 'Voir mes messages', 'fr', 'yum'),
('View my messages', 'Visualizza messaggi', 'it', 'yum'),
('View my messages', 'WyÅ›wietl moje wiadomoÅ›ci', 'pl', 'yum'),
('View user "{username}"', 'Benutzer "{username}"', 'de', 'yum'),
('View user "{username}"', 'Ver usuario "{username}"', 'es', 'yum'),
('View user "{username}"', 'Membre "{username}"', 'fr', 'yum'),
('View user "{username}"', 'Visualizza utente "{username}"', 'it', 'yum'),
('View user "{username}"', 'UÅ¼ytkownik "{username}"', 'pl', 'yum'),
('View users', 'Benutzer anzeigen', 'de', 'yum'),
('View users', 'Ver usuarios', 'es', 'yum'),
('View users', 'Montrer les utilisateurs', 'fr', 'yum'),
('View users', 'Visualizza utenti', 'it', 'yum'),
('View users', 'PokaÅ¼ uÅ¼ytkownika', 'pl', 'yum'),
('Visible', 'Sichtbar', 'de', 'yum'),
('Visible', 'Visible', 'es', 'yum'),
('Visible', 'Visible', 'fr', 'yum'),
('Visible', 'Visibile', 'it', 'yum'),
('Visible', 'Ð’Ð¸Ð´Ð¸Ð¼Ð¾ÑÑ‚ÑŒ', 'ru', 'yum'),
('Visit profile', 'Profil besuchen', 'de', 'yum'),
('Visit profile', 'Visiter le profil', 'fr', 'yum'),
('Visit profile', 'Visita profilo', 'it', 'yum'),
('When selecting searchable, users of this role can be searched in the "user Browse" function', 'Wenn "suchbar" ausgewählt wird, kann man Nutzer dieser Rolle in der "Benutzer durchsuchen"-Funktion ', 'de', 'yum'),
('When selecting searchable, users of this role can be searched in the "user Browse" function', 'Si le status de "visible" est choisi, un membre de ce rÃ´le pourra apparaitre dans les rÃ©sultats d ', 'fr', 'yum'),
('When selecting searchable, users of this role can be searched in the "user Browse" function', 'Quando selezioni "Ricercabile", gli utenti di questo ruolo sono ricercabili nella funzione "Browser ', 'it', 'yum'),
('Write a comment', 'Kommentar hinterlassen', 'de', 'yum'),
('Write a comment', 'Escribir un comentario', 'es', 'yum'),
('Write a comment', 'Laisser un commentaire', 'fr', 'yum'),
('Write a comment', 'Scrivi commento', 'it', 'yum'),
('Write a message', 'Nachricht schreiben', 'de', 'yum'),
('Write a message', 'Escribir un mensaje', 'es', 'yum'),
('Write a message', 'Ecrire un message', 'fr', 'yum'),
('Write a message', 'Scrivi messaggio', 'it', 'yum'),
('Write a message', 'Napisz wiadomoÅ›Ä‡', 'pl', 'yum'),
('Write a message to this User', 'Diesem Benutzer eine Nachricht schreiben', 'de', 'yum'),
('Write a message to this User', 'Escribir un mensaje a este Usuario', 'es', 'yum'),
('Write a message to this User', 'Ecrire un message Ã  ce membre', 'fr', 'yum'),
('Write a message to this User', 'Scrivi messaggio a questo utente', 'it', 'yum'),
('Write a message to {username}', 'Nachricht an {username} schreiben', 'de', 'yum'),
('Write a message to {username}', 'Message Ã©crire Ã  {username} ', 'fr', 'yum'),
('Write a message to {username}', 'Scrivi messaggio a {username} ', 'it', 'yum'),
('Write another message', 'Eine weitere Nachricht schreiben', 'de', 'yum'),
('Write another message', 'Escribir otro mensaje', 'es', 'yum'),
('Write another message', 'Ecrire un autre message', 'fr', 'yum'),
('Write another message', 'Scrivi un''altro messaggio', 'it', 'yum'),
('Write another message', 'Eine weitere Nachricht schreiben', 'pl', 'yum'),
('Write comment', 'Kommentar schreiben', 'de', 'yum'),
('Write comment', 'Escribir comentario', 'es', 'yum'),
('Write comment', 'Ecrire un commentaire', 'fr', 'yum'),
('Write comment', 'Scrivi commento', 'it', 'yum'),
('Write message', 'Nachricht schreiben', 'de', 'yum'),
('Written at', 'Geschrieben am', 'de', 'yum'),
('Written at', 'Escrito el', 'es', 'yum'),
('Written at', 'Ecrit le', 'fr', 'yum'),
('Written at', 'Scritto a ', 'it', 'yum'),
('Written from', 'Geschrieben von', 'de', 'yum'),
('Written from', 'Escrito por', 'es', 'yum'),
('Written from', 'Ecrit par', 'fr', 'yum'),
('Written from', 'Scritto da ', 'it', 'yum'),
('Wrong password confirmation! Account was not deleted', 'Falsches Bestätigugspasswort! Zugang wurde nicht gelöscht', 'de', 'yum'),
('Wrong password confirmation! Account was not deleted', '¡Contraseña para confirmación incorrecta! Lacuenta no ha sido eliminada', 'es', 'yum'),
('Wrong password confirmation! Account was not deleted', 'Confirmation incorrecte! Le compte n a pas Ã©tÃ© supprimÃ©', 'fr', 'yum'),
('Wrong password confirmation! Account was not deleted', 'Password id oconferma errata! Account non cancellato', 'it', 'yum'),
('Wrong password confirmation! Account was not deleted', 'Niepoprawne hasÅ‚o! Konto nie zostaÅ‚o usuniÄ™te', 'pl', 'yum'),
('Yes', 'Ja', 'de', 'yum'),
('Yes', 'Sí', 'es', 'yum'),
('Yes', 'Oui', 'fr', 'yum'),
('Yes', 'Si', 'it', 'yum'),
('Yes', 'Ja', 'pl', 'yum'),
('Yes', 'Ð”Ð°', 'ru', 'yum'),
('Yes and show on registration form', 'Ja, und auf Registrierungsseite anzeigen', 'de', 'yum'),
('Yes and show on registration form', 'Si y mostrar en formulario de registro', 'es', 'yum'),
('Yes and show on registration form', 'oui et charger le formulaire d inscription', 'fr', 'yum'),
('Yes and show on registration form', 'Si e mostra nel form di registrazione', 'it', 'yum'),
('Yes and show on registration form', 'Tak i pokaÅ¼ w formularzu rejestracji', 'pl', 'yum'),
('Yes and show on registration form', 'Ð”Ð° Ð¸ Ð¿Ð¾ÐºÐ°Ð·Ð°Ñ‚ÑŒ Ð¿Ñ€Ð¸ Ñ€ÐµÐ³Ð¸ÑÑ‚Ñ€Ð°Ñ†Ð¸Ð¸', 'ru', 'yum'),
('You account is activated.', 'Ihr Konto wurde aktiviert.', 'de', 'yum'),
('You account is activated.', 'Su cuenta está activada.', 'es', 'yum'),
('You account is activated.', 'Votre compte a bien Ã©tÃ© activÃ©.', 'fr', 'yum'),
('You account is activated.', 'Account attivato', 'it', 'yum'),
('You account is activated.', 'Ihr Konto wurde aktiviert.', 'pl', 'yum'),
('You account is activated.', 'Ð’Ð°ÑˆÐ° ÑƒÑ‡ÐµÑ‚Ð½Ð°Ñ Ð·Ð°Ð¿Ð¸ÑÑŒ Ð°ÐºÑ‚Ð¸Ð²Ð¸Ñ€Ð¾Ð²Ð°Ð½Ð°.', 'ru', 'yum'),
('You account is active.', 'Ihr Konto ist aktiv.', 'de', 'yum'),
('You account is active.', 'Su cuenta está activa.', 'es', 'yum'),
('You account is active.', 'Votre compte est actif.', 'fr', 'yum'),
('You account is active.', 'Account attivo', 'it', 'yum'),
('You account is active.', 'Ihr Konto ist aktiv.', 'pl', 'yum'),
('You account is active.', 'Ð’Ð°ÑˆÐ° ÑƒÑ‡ÐµÑ‚Ð½Ð°Ñ Ð·Ð°Ð¿Ð¸ÑÑŒ ÑƒÐ¶Ðµ Ð°ÐºÑ‚Ð¸Ð²Ð¸Ñ€Ð¾Ð²Ð°Ð½Ð°.', 'ru', 'yum'),
('You account is blocked.', 'Account bloccato', 'it', 'yum'),
('You account is blocked.', 'Ð’Ð°Ñˆ Ð°ÐºÐºÐ°ÑƒÐ½Ñ‚ Ð·Ð°Ð±Ð»Ð¾ÐºÐ¸Ñ€Ð¾Ð²Ð°Ð½.', 'ru', 'yum'),
('You account is not activated.', 'Account non attivo', 'it', 'yum'),
('You account is not activated.', 'Ð’Ð°Ñˆ Ð°ÐºÐºÐ°ÑƒÐ½Ñ‚ Ð½Ðµ Ð°ÐºÑ‚Ð¸Ð²Ð¸Ñ€Ð¾Ð²Ð°Ð½.', 'ru', 'yum'),
('You already are friends', 'Ihr seid bereits Freunde', 'de', 'yum'),
('You already are friends', 'Ya son amigos', 'es', 'yum'),
('You already are friends', 'Ce membre figure dÃ©jÃ  dans votre liste de contact', 'fr', 'yum'),
('You already are friends', 'Siete giÃ  in contatto', 'it', 'yum'),
('You are not allowed to view this profile.', 'Sie dürfen dieses Profil nicht ansehen.', 'de', 'yum'),
('You are not allowed to view this profile.', 'No tiene permiso para ver este perfil.', 'es', 'yum'),
('You are not allowed to view this profile.', 'VOus ne pouvez pas consulter ce profil.', 'fr', 'yum'),
('You are not allowed to view this profile.', 'Non puoi vedere questo profilo.', 'it', 'yum'),
('You are not allowed to view this profile.', 'Nie masz uprawnie do przeglÄ…dania tego profilu', 'pl', 'yum'),
('You are running the Yii User Management Module {version} in Debug Mode!', 'Dies ist das Yii-User-Management Modul in Version {version} im Debug Modus!', 'de', 'yum'),
('You are running the Yii User Management Module {version} in Debug Mode!', '¡Está ejecutando el Módulo de Administración de Usuarios Yii {version} en modo de depuración!', 'es', 'yum'),
('You are running the Yii User Management Module {version} in Debug Mode!', 'Dies ist das Yii-User-Management Modul in Version {version} im Debug Modus!', 'fr', 'yum'),
('You are running the Yii User Management Module {version} in Debug Mode!', 'Questo Ã¨ il modulo di YUM versione {version} in modalitÃ  debug!', 'it', 'yum'),
('You are running the Yii User Management Module {version} in Debug Mode!', 'Uruchamiasz moduÅ‚ Yii User Management Modul, wersja {version}, w trybie DEBUG!', 'pl', 'yum'),
('You do not have any friends yet', 'Ihre Kontaktliste ist leer', 'de', 'yum'),
('You do not have any friends yet', 'No tienes ningún amigo todavía', 'es', 'yum'),
('You do not have any friends yet', 'Votre liste de contact est vide', 'fr', 'yum'),
('You do not have any friends yet', 'Lista contatti vuota', 'it', 'yum'),
('You do not have set an avatar image yet', 'Es wurde noch kein Profilbild hochgeladen', 'de', 'yum'),
('You do not have set an avatar image yet', 'Aún no has subido tu imágen de Avatar', 'es', 'yum'),
('You do not have set an avatar image yet', 'Aucune photo de votre profil disponible', 'fr', 'yum'),
('You do not have set an avatar image yet', 'Non hai settato un''avatar', 'it', 'yum'),
('You have joined this group', 'Sie sind dieser Gruppe beigetreten', 'de', 'yum'),
('You have new Messages !', 'Sie haben neue Nachrichten !', 'de', 'yum'),
('You have new Messages !', '¡Tienes Mensajes nuevos!', 'es', 'yum'),
('You have new Messages !', 'Vous avez de nouveaux messages !', 'fr', 'yum'),
('You have new Messages !', 'Hai un nuovo messaggio!', 'it', 'yum'),
('You have new messages!', 'Sie haben neue Nachrichten!', 'de', 'yum'),
('You have new messages!', '¡Tienes mensajes nuevos!', 'es', 'yum'),
('You have new messages!', 'Vous n avez pas de messages!', 'fr', 'yum'),
('You have new messages!', 'Hai un nuovo messaggio!', 'it', 'yum'),
('You have new messages!', 'Masz nowÄ… wiadomoÅ›Ä‡!', 'pl', 'yum'),
('You have no messages yet', 'Sie haben bisher noch keine Nachrichten', 'de', 'yum'),
('You have no messages yet', 'Aucun message rÃ©cent', 'fr', 'yum'),
('You have no messages yet', 'Non hai messaggi', 'it', 'yum'),
('You have {count} new Messages !', 'Sie haben {count} neue Nachricht(en)!', 'de', 'yum');
INSERT INTO `translation` (`message`, `translation`, `language`, `category`) VALUES
('You have {count} new Messages !', '¡Tienes {count} mensajes nuevos!', 'es', 'yum'),
('You have {count} new Messages !', 'Vous avez {count} nouveau(x) message(s)!', 'fr', 'yum'),
('You have {count} new Messages !', 'Hai {count} nuovi messaggi!', 'it', 'yum'),
('You have {count} new Messages !', 'Masz {count} nowych wiadomoÅ›ci !', 'pl', 'yum'),
('You registered from {site_name}', 'Sei registrato su {site_name}', 'it', 'yum'),
('Your Account has been activated. Thank you for your registration', 'Ihr Zugang wurde aktiviert. Danke für die Registierung', 'de', 'yum'),
('Your Account has been activated. Thank you for your registration.', 'Votre compte a bien Ã©tÃ© activÃ©. Merci pour votre inscription.', 'fr', 'yum'),
('Your Account has been activated. Thank you for your registration.', 'Il tuo account Ã¨ stato attivato. Grazie per la tua registrazione', 'it', 'yum'),
('Your Avatar image', 'Ihr Avatar-Bild', 'de', 'yum'),
('Your Avatar image', 'Tu imagen de Avatar', 'es', 'yum'),
('Your Avatar image', 'Votre image de profil', 'fr', 'yum'),
('Your Avatar image', 'Il tuo avatar', 'it', 'yum'),
('Your Message has been sent.', 'El Mensaje ha sido enviado.', 'es', 'yum'),
('Your Message has been sent.', 'Votre mÃ©ssage a Ã©tÃ© envoyÃ©.', 'fr', 'yum'),
('Your Message has been sent.', 'Messaggio inviato.', 'it', 'yum'),
('Your account has been activated.', 'Tu cuenta ha sido activada.', 'es', 'yum'),
('Your account has been activated. Thank you for your registration', 'Ihr Zugang wurde aktiviert. Danke für ihre Registrierung', 'de', 'yum'),
('Your account has been activated. Thank you for your registration', 'VOtre compte est maintenant actif. Merci de vous Ãªtre enregistrÃ©', 'fr', 'yum'),
('Your account has been activated. Thank you for your registration', 'Il tuo account Ã¨ stato attivato. Grazie per esserti registrato', 'it', 'yum'),
('Your account has been activated. Thank you for your registration.', 'Tu cuenta ha sido activada. Gracias por registrarte.', 'es', 'yum'),
('Your account has been activated. Thank you for your registration.', 'Twoje konto zostaÅ‚o aktywowane. DziÄ™kujemy za rejestracjÄ™.', 'pl', 'yum'),
('Your account has been deleted.', 'Ihr Zugang wurde gelöscht', 'de', 'yum'),
('Your account has been deleted.', 'Votre compte a bien Ã©tÃ© supprimÃ©', 'fr', 'yum'),
('Your account has been deleted.', 'Il tuo account Ã¨ stato cancellato.', 'it', 'yum'),
('Your activation succeeded', 'Ihre Aktivierung war erfolgreich', 'de', 'yum'),
('Your activation succeeded', 'Votre compte a Ã©tÃ© activÃ©', 'fr', 'yum'),
('Your activation succeeded', 'Attivazione riuscita', 'it', 'yum'),
('Your changes have been saved', 'Ihre Änderungen wurden gespeichert', 'de', 'yum'),
('Your changes have been saved', 'Los cambios han sido guardados', 'es', 'yum'),
('Your changes have been saved', 'Vos modification ont Ã©tÃ© mÃ©morisÃ©es', 'fr', 'yum'),
('Your changes have been saved', 'Le modifiche sono state salvate', 'it', 'yum'),
('Your changes have been saved', 'Twoje zmiany zostaÅ‚y zapisane', 'pl', 'yum'),
('Your current password', 'Ihr aktuelles Passwort', 'de', 'yum'),
('Your current password', 'Votre mot de passe actuel', 'fr', 'yum'),
('Your current password', 'La tua password corrente', 'it', 'yum'),
('Your current password is not correct', 'Ihr aktuelles Passwort ist nicht korrekt', 'de', 'yum'),
('Your current password is not correct', 'Votre mot de passe actuel n est pas correct', 'fr', 'yum'),
('Your current password is not correct', 'La tua password corrente non Ã¨ corretta', 'it', 'yum'),
('Your friendship request has been accepted', 'Ihre Freundschaftsanfrage wurde akzeptiert', 'de', 'yum'),
('Your friendship request has been accepted', 'Votre demande de contact a bien Ã©tÃ© acceptÃ©e', 'fr', 'yum'),
('Your friendship request has been accepted', 'La richiesta di contatto Ã¨ stata accettata', 'it', 'yum'),
('Your message has been sent', 'Ihre Nachricht wurde gesendet', 'de', 'yum'),
('Your message has been sent', 'El mensaje ha sido enviado', 'es', 'yum'),
('Your message has been sent', 'Votre mÃ©ssage a bien Ã©tÃ© envoyÃ©', 'fr', 'yum'),
('Your message has been sent', 'Il tuo messaggio Ã¨ stato inviato.', 'it', 'yum'),
('Your message has been sent', 'Twoja wiadomoÅ›Ä‡ zostaÅ‚a wysÅ‚ana', 'pl', 'yum'),
('Your new password has been saved.', 'Ihr Passwort wurde gespeichert.', 'de', 'yum'),
('Your new password has been saved.', 'La nueva contraseña ha sido guardada.', 'es', 'yum'),
('Your new password has been saved.', 'La modification de votre mot de passe a bien Ã©tÃ© mÃ©morisÃ©.', 'fr', 'yum'),
('Your new password has been saved.', 'La nuova password Ã¨ stata salvata.', 'it', 'yum'),
('Your new password has been saved.', 'Twoje nowe hasÅ‚o zostaÅ‚o zapisane.', 'pl', 'yum'),
('Your password has expired. Please enter your new Password below:', 'Ihr Passwort ist abgelaufen. Bitte geben Sie ein neues Passwort an:', 'de', 'yum'),
('Your password has expired. Please enter your new Password below:', 'La contraseña ha expirado. Por favor escribe una contraseña nueva abajo:', 'es', 'yum'),
('Your password has expired. Please enter your new Password below:', 'La durÃ©e de vie de votre mot de passe est arrivÃ©e Ã  Ã©chÃ©ance. Veuillez en definir un nouveau:', 'fr', 'yum'),
('Your password has expired. Please enter your new Password below:', 'La password Ã¨ scaduta. Si prega di inserire una nuova password:', 'it', 'yum'),
('Your privacy settings have been saved', 'Ihre Privatsphären-einstellungen wurden gespeichert', 'de', 'yum'),
('Your privacy settings have been saved', 'La configuration de vos donnÃ©es privÃ©es a bien Ã©tÃ© enregistrÃ©e', 'fr', 'yum'),
('Your privacy settings have been saved', 'Le tue opzioni Privacy sono state salvate', 'it', 'yum'),
('Your profile', 'Ihr Profil', 'de', 'yum'),
('Your profile', 'Tu perfil', 'es', 'yum'),
('Your profile', 'Ihr Profil', 'fr', 'yum'),
('Your profile', 'Il tuo profilo', 'it', 'yum'),
('Your profile', 'Ihr Profil', 'pl', 'yum'),
('Your profile', 'Ð’Ð°Ñˆ Ð¿Ñ€Ð¾Ñ„Ð¸Ð»ÑŒ', 'ru', 'yum'),
('Your registration didn''t work. Please try another E-Mail address. If this problem persists, please contact our System Administrator. ', 'Tu proceso de registro falló. Por favor intenta con otra cuenta de correo. Si el problema persiste p', 'es', 'yum'),
('Your request succeeded. Please enter below your new password:', 'Tu solicitud fué exitosa. Por favor, escribe a continuación tu nueva contraseña:', 'es', 'yum'),
('about', 'information me concernant', 'fr', 'yum'),
('about', 'Informazioni su', 'it', 'yum'),
('activation key', 'Aktivierungsschlüssel', 'de', 'yum'),
('activation key', 'clave de activación', 'es', 'yum'),
('activation key', 'ClÃ© d activation de votre compte', 'fr', 'yum'),
('activation key', 'chiave di attivazione', 'it', 'yum'),
('activation key', 'AktivierungsschlÃ¼ssel', 'pl', 'yum'),
('activation key', 'ÐšÐ»ÑŽÑ‡ Ð°ÐºÑ‚Ð¸Ð²Ð°Ñ†Ð¸Ð¸', 'ru', 'yum'),
('birthdate', 'Geburtstag', 'de', 'yum'),
('birthdate', 'anniversaire', 'fr', 'yum'),
('birthdate', 'Compleanno', 'it', 'yum'),
('birthday', 'Geburtstag', 'de', 'yum'),
('birthday', 'date de naissance', 'fr', 'yum'),
('birthday', 'Compleanno', 'it', 'yum'),
('change Password', 'Passwort ändern', 'de', 'yum'),
('change Password', 'cambiar Contraseña', 'es', 'yum'),
('change Password', 'Changer le mot de passe', 'fr', 'yum'),
('change Password', 'ZmieÅ„ hasÅ‚o', 'pl', 'yum'),
('change password', 'Passwort ändern', 'de', 'yum'),
('change password', 'cambiar contraseña', 'es', 'yum'),
('change password', 'Modifier le mot de passe', 'fr', 'yum'),
('change password', 'Cambia password', 'it', 'yum'),
('do not make my friends public', 'Meine Kontakte nicht veröffentlichen', 'de', 'yum'),
('do not make my friends public', 'Ne pas rendre publique la liste de mes contacts', 'fr', 'yum'),
('do not make my friends public', 'Non mostrare i miei contatti pubblicamente', 'it', 'yum'),
('email', 'E-Mail', 'de', 'yum'),
('email', 'correo', 'es', 'yum'),
('email', 'e-Mail', 'fr', 'yum'),
('email', 'email', 'it', 'yum'),
('email', 'mejl', 'pl', 'yum'),
('email address', 'correo electrónico', 'es', 'yum'),
('email address', 'Adres mejlowy', 'pl', 'yum'),
('firstname', 'Vorname', 'de', 'yum'),
('firstname', 'prÃ©nom', 'fr', 'yum'),
('firstname', 'Cognome', 'it', 'yum'),
('friends only', 'Nur Freunde', 'de', 'yum'),
('friends only', 'sólo amigos', 'es', 'yum'),
('friends only', 'A mes contacts seulement', 'fr', 'yum'),
('friends only', 'Solo contatti', 'it', 'yum'),
('lastname', 'Nachname', 'de', 'yum'),
('lastname', 'nom de famille', 'fr', 'yum'),
('lastname', 'Nome', 'it', 'yum'),
('make my friends public', 'Meine Kontakte veröffentlichen', 'de', 'yum'),
('make my friends public', 'Rendre visibles mes contacts', 'fr', 'yum'),
('make my friends public', 'Rendi pubblici i miei contatti', 'it', 'yum'),
('no', 'Nein', 'de', 'yum'),
('no', 'Non', 'fr', 'yum'),
('no', 'No', 'it', 'yum'),
('of user', 'von Benutzer', 'de', 'yum'),
('of user', 'de l utilisateur', 'fr', 'yum'),
('of user', 'dell''utente', 'it', 'yum'),
('only to my friends', 'Nur an meine Freunde veröffentlichen', 'de', 'yum'),
('only to my friends', 'Visible seulement pour mes contacts', 'fr', 'yum'),
('only to my friends', 'solamente ai miei contatti', 'it', 'yum'),
('password', 'Passwort', 'de', 'yum'),
('password', 'contraseña', 'es', 'yum'),
('password', 'mot de passe', 'fr', 'yum'),
('password', 'password', 'it', 'yum'),
('password', 'hadÅ‚o', 'pl', 'yum'),
('password', 'ÐŸÐ°Ñ€Ð¾Ð»ÑŒ', 'ru', 'yum'),
('private', 'Privat', 'de', 'yum'),
('private', 'privado', 'es', 'yum'),
('private', 'PrivÃ©', 'fr', 'yum'),
('private', 'Privato', 'it', 'yum'),
('private', 'prywatny', 'pl', 'yum'),
('protected', 'Geschützt', 'de', 'yum'),
('protected', 'protegido', 'es', 'yum'),
('protected', 'ProtÃ¨gÃ©', 'fr', 'yum'),
('protected', 'Protetto', 'it', 'yum'),
('protected', 'chroniony', 'pl', 'yum'),
('public', 'Öffentlich', 'de', 'yum'),
('public', 'público', 'es', 'yum'),
('public', 'Publique', 'fr', 'yum'),
('public', 'Pubblico', 'it', 'yum'),
('public', 'publiczny', 'pl', 'yum'),
('street', 'rue', 'fr', 'yum'),
('street', 'Indirizzo', 'it', 'yum'),
('timestamp', 'Zeitstempel', 'de', 'yum'),
('timestamp', 'marca de tiempo', 'es', 'yum'),
('timestamp', 'tempon de date et heure', 'fr', 'yum'),
('timestamp', 'timestamp', 'it', 'yum'),
('username', 'Benutzername', 'de', 'yum'),
('username', 'usuario', 'es', 'yum'),
('username', 'nom d utilisateur', 'fr', 'yum'),
('username', 'username', 'it', 'yum'),
('username', 'nazwa uÅ¼ytkownika', 'pl', 'yum'),
('username', 'Ð›Ð¾Ð³Ð¸Ð½', 'ru', 'yum'),
('username or email', 'Benutzername oder E-Mail Adresse', 'de', 'yum'),
('username or email', 'nombre de usuario o email', 'es', 'yum'),
('username or email', 'nom d utilisateur ou adresse e-mail', 'fr', 'yum'),
('username or email', 'username or email', 'it', 'yum'),
('username or email', 'nazwa uÅ¼ytkowniak lub mejl', 'pl', 'yum'),
('username or email', 'Ð›Ð¾Ð³Ð¸Ð½ Ð¸Ð»Ð¸ email', 'ru', 'yum'),
('verifyPassword', 'Passwort wiederholen', 'de', 'yum'),
('yes', 'Ja, diese Daten veröffentlichen', 'de', 'yum'),
('yes', 'Oui, rendre publique ces donnÃ©es', 'fr', 'yum'),
('yes', 'Si', 'it', 'yum'),
('zipcode', 'Postleitzahl', 'de', 'yum'),
('zipcode', 'code postal', 'fr', 'yum'),
('zipcode', 'CAP', 'it', 'yum'),
('{attribute} is too long (max. {num} characters).', '{attribute} es muy larga (max. {num} caracteres).', 'es', 'yum'),
('{attribute} is too long (max. {num} characters).', '{attribute} troppo lungo (max. {num} caratteri).', 'it', 'yum'),
('{attribute} is too long (max. {num} characters).', '{attribute} jest zbyt dÅ‚ugi (max. {num} znakÃ³w).', 'pl', 'yum'),
('{attribute} is too short (min. {num} characters).', '{attribute} es muy corta (min. {num} caracteres).', 'es', 'yum'),
('{attribute} is too short (min. {num} characters).', '{attribute} troppo corto (min. {num} caratteri).', 'it', 'yum'),
('{attribute} is too short (min. {num} characters).', '{attribute} jest zbyt krÃ³tki (min. {num} znakÃ³w).', 'pl', 'yum'),
('{attribute} must include at least {num} digits.', '{attribute} debe tener al menos {num} dígitos.', 'es', 'yum'),
('{attribute} must include at least {num} digits.', '{attribute}deve includere almeno {num} numeri.', 'it', 'yum'),
('{attribute} must include at least {num} digits.', '{attribute} musi zawieraÄ‡ co najmniej {num} cyfr.', 'pl', 'yum'),
('{attribute} must include at least {num} lower case letters.', '{attribute} debe tener al menos {num} caracteres en minúscula.', 'es', 'yum'),
('{attribute} must include at least {num} lower case letters.', '{attribute} deve includere almeno {num} lettere minuscole.', 'it', 'yum'),
('{attribute} must include at least {num} lower case letters.', '{attribute} musi zawieraÄ‡ co najmniej {num} maÅ‚ych liter.', 'pl', 'yum'),
('{attribute} must include at least {num} symbols.', '{attribute} debe tener al menos {num} símbolos.', 'es', 'yum'),
('{attribute} must include at least {num} symbols.', '{attribute} deve includere almeno {num} simboli.', 'it', 'yum'),
('{attribute} must include at least {num} symbols.', '{attribute} musi zawieraÄ‡ co najmniej {num} symboli.', 'pl', 'yum'),
('{attribute} must include at least {num} upper case letters.', '{attribute} debe tener al menos {num} caracteres en mayúscula.', 'es', 'yum'),
('{attribute} must include at least {num} upper case letters.', '{attribute} deve includere almeno {num} lettere maiuscole.', 'it', 'yum'),
('{attribute} must include at least {num} upper case letters.', '{attribute} musi zawieraÄ‡ co najmniej {num} duÅ¼ych liter.', 'pl', 'yum'),
('{attribute} must not contain more than {num} sequentially repeated characters.', '{attribute} no debe tener más de {num} caracteres repetidos secuencialmente.', 'es', 'yum'),
('{attribute} must not contain more than {num} sequentially repeated characters.', '{attribute} non deve contenere {num} caratteri ripetuti sequenzialmente.', 'it', 'yum'),
('{attribute} must not contain more than {num} sequentially repeated characters.', '{attribute} nie moÅ¼e zawieraÄ‡ wiÄ™cej niÅ¼ {num} sekwencji znakÃ³w.', 'pl', 'yum'),
('{attribute} must not contain whitespace.', '{attribute} no debe contener espacios.', 'es', 'yum'),
('{attribute} must not contain whitespace.', '{attribute} non deve contenere spazi.', 'it', 'yum'),
('{attribute} must not contain whitespace.', '{attribute} nie moÅ¼e zawieraÄ‡ biaÅ‚ych znakÃ³w.', 'pl', 'yum'),
('{days} D, {hours} H, {minutes} M', '{days} T, {hours} S, {minutes} M', 'de', 'yum');

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(128) NOT NULL,
  `activationKey` varchar(128) NOT NULL DEFAULT '',
  `createtime` int(10) NOT NULL DEFAULT '0',
  `lastvisit` int(10) NOT NULL DEFAULT '0',
  `lastaction` int(10) NOT NULL DEFAULT '0',
  `lastpasswordchange` int(10) NOT NULL DEFAULT '0',
  `superuser` int(1) NOT NULL DEFAULT '0',
  `status` int(1) NOT NULL DEFAULT '0',
  `avatar` varchar(255) DEFAULT NULL,
  `notifyType` enum('None','Digest','Instant','Threshold') DEFAULT 'Instant',
  `email` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  KEY `status` (`status`),
  KEY `superuser` (`superuser`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `activationKey`, `createtime`, `lastvisit`, `lastaction`, `lastpasswordchange`, `superuser`, `status`, `avatar`, `notifyType`, `email`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '', 1340852582, 1349831901, 0, 0, 1, 1, 'images/1_20090319034600182.jpg', 'Instant', NULL),
(2, 'demo', 'fe01ce2a7fbac8fafaed7c982a04e229', '', 1340852582, 1349770467, 0, 0, 0, 1, 'gravatar', 'Instant', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `user_code_nm`
--

CREATE TABLE IF NOT EXISTS `user_code_nm` (
  `userId` int(11) unsigned NOT NULL,
  `codeId` int(11) unsigned NOT NULL,
  `codeCount` int(11) NOT NULL,
  `codeStatus` int(11) NOT NULL,
  PRIMARY KEY (`userId`,`codeId`),
  KEY `fk_codeId` (`codeId`),
  KEY `fk_userId` (`userId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `user_code_nm`
--

INSERT INTO `user_code_nm` (`userId`, `codeId`, `codeCount`, `codeStatus`) VALUES
(1, 1, 16, 0),
(1, 6, 3, 0),
(1, 2, 2, 0),
(2, 1, 2, 0),
(2, 3, 1, 0),
(2, 6, 1, 0),
(1, 4, 1, 0),
(1, 3, 2, 0),
(1, 3344, 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `user_group`
--

CREATE TABLE IF NOT EXISTS `user_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) NOT NULL,
  `participants` text,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `user_group_message`
--

CREATE TABLE IF NOT EXISTS `user_group_message` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `author_id` int(11) unsigned NOT NULL,
  `group_id` int(11) unsigned NOT NULL,
  `createtime` int(11) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `user_role`
--

CREATE TABLE IF NOT EXISTS `user_role` (
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `user_role`
--

INSERT INTO `user_role` (`user_id`, `role_id`) VALUES
(2, 3);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
