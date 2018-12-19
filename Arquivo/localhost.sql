-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Nov 09, 2016 at 01:39 PM
-- Server version: 5.6.33
-- PHP Version: 5.6.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `joomla`
--
CREATE DATABASE IF NOT EXISTS `joomla` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `joomla`;

-- --------------------------------------------------------

--
-- Table structure for table `j78lr_assets`
--

CREATE TABLE `j78lr_assets` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) UNSIGNED NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `j78lr_assets`
--

INSERT INTO `j78lr_assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
(1, 0, 1, 398, 0, 'root.1', 'Root Asset', '{"core.login.site":{"6":1,"2":1,"1":1,"9":1},"core.login.admin":{"6":1,"1":1,"2":1,"9":1},"core.login.offline":[],"core.admin":{"8":1},"core.manage":{"7":1},"core.create":{"6":1,"3":1,"2":1,"9":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(2, 1, 2, 3, 1, 'com_admin', 'com_admin', '{}'),
(3, 1, 4, 13, 1, 'com_banners', 'com_banners', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(4, 1, 14, 15, 1, 'com_cache', 'com_cache', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(5, 1, 16, 17, 1, 'com_checkin', 'com_checkin', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(6, 1, 18, 19, 1, 'com_config', 'com_config', '{}'),
(7, 1, 20, 91, 1, 'com_contact', 'com_contact', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(8, 1, 92, 169, 1, 'com_content', 'com_content', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(9, 1, 170, 171, 1, 'com_cpanel', 'com_cpanel', '{}'),
(10, 1, 172, 173, 1, 'com_installer', 'com_installer', '{"core.admin":{"7":0},"core.manage":{"7":0},"core.delete":{"7":0},"core.edit.state":{"7":0}}'),
(11, 1, 174, 175, 1, 'com_languages', 'com_languages', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(12, 1, 176, 177, 1, 'com_login', 'com_login', '{}'),
(13, 1, 178, 179, 1, 'com_mailto', 'com_mailto', '{}'),
(14, 1, 180, 181, 1, 'com_massmail', 'com_massmail', '{}'),
(15, 1, 182, 183, 1, 'com_media', 'com_media', '{"core.admin":{"7":0},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":{"5":1}}'),
(16, 1, 184, 185, 1, 'com_menus', 'com_menus', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(17, 1, 39, 40, 1, 'com_messages', 'com_messages', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(18, 1, 188, 291, 1, 'com_modules', 'com_modules', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(19, 1, 292, 299, 1, 'com_newsfeeds', 'com_newsfeeds', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(20, 1, 300, 301, 1, 'com_plugins', 'com_plugins', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(21, 1, 302, 303, 1, 'com_redirect', 'com_redirect', '{"core.admin":{"7":1},"core.manage":[]}'),
(22, 1, 304, 305, 1, 'com_search', 'com_search', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(23, 1, 306, 307, 1, 'com_templates', 'com_templates', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(24, 1, 308, 309, 1, 'com_users', 'com_users', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(26, 1, 310, 311, 1, 'com_wrapper', 'com_wrapper', '{}'),
(34, 8, 109, 112, 2, 'com_content.category.9', 'Uncategorised', '{"core.create":{"10":0,"12":0},"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(35, 3, 7, 8, 2, 'com_banners.category.10', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(36, 7, 25, 26, 2, 'com_contact.category.11', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(37, 19, 295, 296, 2, 'com_newsfeeds.category.12', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(39, 8, 113, 144, 2, 'com_content.category.14', 'Sample Data-Articles', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(40, 3, 9, 10, 2, 'com_banners.category.15', 'Sample Data-Banners', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(41, 7, 27, 88, 2, 'com_contact.category.16', 'Sample Data-Contact', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(42, 19, 297, 298, 2, 'com_newsfeeds.category.17', 'Sample Data-Newsfeeds', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(59, 41, 28, 29, 3, 'com_contact.category.34', 'Park Site', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(60, 41, 30, 87, 3, 'com_contact.category.35', 'Shop Site', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(61, 60, 31, 32, 4, 'com_contact.category.36', 'Staff', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(62, 60, 33, 86, 4, 'com_contact.category.37', 'Fruit Encyclopedia', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(63, 62, 34, 35, 5, 'com_contact.category.38', 'A', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(64, 62, 36, 37, 5, 'com_contact.category.39', 'B', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(65, 62, 38, 39, 5, 'com_contact.category.40', 'C', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(66, 62, 40, 41, 5, 'com_contact.category.41', 'D', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(67, 62, 42, 43, 5, 'com_contact.category.42', 'E', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(68, 62, 44, 45, 5, 'com_contact.category.43', 'F', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(69, 62, 46, 47, 5, 'com_contact.category.44', 'G', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(70, 62, 48, 49, 5, 'com_contact.category.45', 'H', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(71, 62, 50, 51, 5, 'com_contact.category.46', 'I', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(72, 62, 52, 53, 5, 'com_contact.category.47', 'J', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(73, 62, 54, 55, 5, 'com_contact.category.48', 'K', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(74, 62, 56, 57, 5, 'com_contact.category.49', 'L', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(75, 62, 58, 59, 5, 'com_contact.category.50', 'M', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(76, 62, 60, 61, 5, 'com_contact.category.51', 'N', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(77, 62, 62, 63, 5, 'com_contact.category.52', 'O', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(78, 62, 64, 65, 5, 'com_contact.category.53', 'P', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(79, 62, 66, 67, 5, 'com_contact.category.54', 'Q', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(80, 62, 68, 69, 5, 'com_contact.category.55', 'R', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(81, 62, 70, 71, 5, 'com_contact.category.56', 'S', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(82, 62, 72, 73, 5, 'com_contact.category.57', 'T', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(83, 62, 74, 75, 5, 'com_contact.category.58', 'U', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(84, 62, 76, 77, 5, 'com_contact.category.59', 'V', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(85, 62, 78, 79, 5, 'com_contact.category.60', 'W', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(86, 62, 80, 81, 5, 'com_contact.category.61', 'X', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(87, 62, 82, 83, 5, 'com_contact.category.62', 'Y', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(88, 62, 84, 85, 5, 'com_contact.category.63', 'Z', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(100, 39, 116, 117, 3, 'com_content.category.71', 'Milky Way', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(168, 34, 110, 111, 3, 'com_content.article.67', 'What\'s New in 1.5?', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(172, 8, 145, 150, 2, 'com_content.category.80', 'General', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(173, 8, 151, 162, 2, 'com_content.category.81', 'Layout Variations', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(175, 8, 163, 168, 2, 'com_content.category.83', 'Menu Styles', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(195, 173, 152, 153, 3, 'com_content.article.87', 'Proposta de Sócio', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(196, 173, 154, 155, 3, 'com_content.article.88', 'Parceiros', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(197, 173, 156, 157, 3, 'com_content.article.89', ' Estatutos', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(198, 173, 158, 159, 3, 'com_content.article.90', 'Historial', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(199, 173, 160, 161, 3, 'com_content.article.91', 'Orgãos Sociais 2016 - 2017', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(202, 175, 164, 165, 3, 'com_content.article.94', 'Rich Menu', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(203, 175, 166, 167, 3, 'com_content.article.95', 'Side Menu', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(210, 172, 146, 147, 3, 'com_content.article.102', '5 reasons to choose JSN Venture', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(211, 172, 148, 149, 3, 'com_content.article.103', 'Breve História', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(213, 3, 11, 12, 2, 'com_banners.category.84', 'Promo', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(214, 1, 374, 375, 1, 'com_imageshow', 'com_imageshow', '{}'),
(215, 7, 89, 90, 2, 'com_contact.category.85', 'Contacts', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(221, 1, 376, 377, 1, 'com_uniform', 'uniform', '{}'),
(225, 1, 378, 379, 1, 'com_mobilize', 'mobilize', '{}'),
(227, 1, 380, 381, 1, 'com_joomlaupdate', 'com_joomlaupdate', '{"core.admin":{"8":1},"core.manage":{"7":1},"core.delete":{"6":1},"core.edit.state":{"6":1,"5":1}}'),
(228, 1, 382, 383, 1, 'com_finder', 'com_finder', '{}'),
(229, 1, 384, 385, 1, 'com_tags', 'com_tags', '{}'),
(230, 1, 386, 387, 1, 'com_contenthistory', 'com_contenthistory', '{}'),
(231, 1, 388, 389, 1, 'com_ajax', 'com_ajax', '{}'),
(232, 1, 390, 391, 1, 'com_postinstall', 'com_postinstall', '{}'),
(233, 18, 189, 190, 2, 'com_modules.module.206', 'JSN imageshow Quick Icons', '{}'),
(234, 1, 392, 393, 1, 'com_poweradmin', 'poweradmin', '{}'),
(235, 18, 191, 192, 2, 'com_modules.module.237', 'JSN PowerAdmin Quick Icons', '{}'),
(236, 1, 394, 395, 1, 'com_pagebuilder', 'com_pagebuilder', '{}'),
(238, 18, 193, 194, 2, 'com_modules.module.141', 'Menu right', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(239, 18, 195, 196, 2, 'com_modules.module.238', 'Reviews on JED', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(240, 18, 197, 198, 2, 'com_modules.module.239', 'Reviews on JED', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(241, 18, 199, 200, 2, 'com_modules.module.240', 'Reviews on JED', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(242, 18, 201, 202, 2, 'com_modules.module.161', 'Position "promo"', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(243, 18, 203, 204, 2, 'com_modules.module.87', 'Compatibility', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(244, 1, 396, 397, 1, 'com_easyslider', 'EasySlider', '{}'),
(245, 18, 205, 206, 2, 'com_modules.module.241', 'mod_easyslider', '{}'),
(247, 18, 207, 208, 2, 'com_modules.module.242', 'Reviews on JED ', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(248, 18, 209, 210, 2, 'com_modules.module.227', 'About Venture', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(249, 18, 211, 212, 2, 'com_modules.module.579', 'Instagram', '{}'),
(250, 18, 213, 214, 2, 'com_modules.module.580', 'mod_easyslider', '{}'),
(251, 18, 215, 216, 2, 'com_modules.module.581', 'SCLogin', '{}'),
(252, 18, 217, 218, 2, 'com_modules.module.582', 'Login Register', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(253, 18, 219, 220, 2, 'com_modules.module.583', 'JSN ImageShow', '{}'),
(254, 18, 221, 222, 2, 'com_modules.module.584', 'JSN UniForm', '{}'),
(255, 18, 223, 224, 2, 'com_modules.module.585', 'mod_easyslider', '{}'),
(256, 18, 225, 226, 2, 'com_modules.module.586', 'Homepage Slideshow', '{}'),
(257, 18, 227, 228, 2, 'com_modules.module.587', 'Newsletter', '{}'),
(258, 18, 229, 230, 2, 'com_modules.module.588', 'Search ', '{}'),
(259, 18, 231, 232, 2, 'com_modules.module.589', 'Search', '{}'),
(260, 18, 233, 234, 2, 'com_modules.module.590', 'Header Top ImageShow', '{}'),
(261, 18, 235, 236, 2, 'com_modules.module.591', 'Homepage Slideshow', '{}'),
(262, 18, 237, 238, 2, 'com_modules.module.592', 'Subcription Form', '{}'),
(263, 18, 239, 240, 2, 'com_modules.module.593', 'mod_easyslider', '{}'),
(264, 18, 241, 242, 2, 'com_modules.module.594', 'Search ', '{}'),
(265, 18, 243, 244, 2, 'com_modules.module.595', 'Search', '{}'),
(266, 18, 245, 246, 2, 'com_modules.module.596', 'Header Top ImageShow', '{}'),
(267, 18, 247, 248, 2, 'com_modules.module.597', 'Homepage Slideshow', '{}'),
(268, 18, 249, 250, 2, 'com_modules.module.598', 'Subcription Form', '{}'),
(269, 18, 251, 252, 2, 'com_modules.module.599', 'mod_easyslider', '{}'),
(270, 18, 253, 254, 2, 'com_modules.module.600', 'Multilanguage status', '{}'),
(271, 18, 255, 256, 2, 'com_modules.module.601', 'Joomla Version', '{}'),
(272, 18, 257, 258, 2, 'com_modules.module.602', 'JSN imageshow Quick Icons', '{}'),
(273, 18, 259, 260, 2, 'com_modules.module.603', 'JSN PowerAdmin Quick Icons', '{}'),
(274, 18, 261, 262, 2, 'com_modules.module.223', 'Promo Intro Text', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(275, 18, 263, 264, 2, 'com_modules.module.101', 'Identificacao', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(276, 18, 265, 266, 2, 'com_modules.module.222', 'Homepage Slideshow', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(277, 18, 267, 268, 2, 'com_modules.module.45', 'Menu', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(278, 18, 269, 270, 2, 'com_modules.module.130', '"Box cyan" Style', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(280, 18, 271, 272, 2, 'com_modules.module.604', 'Menu', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(281, 39, 120, 121, 3, 'com_content.article.114', 'Bem Vindo', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(282, 39, 122, 123, 3, 'com_content.article.115', 'Aréa de Sócio', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(283, 39, 124, 125, 3, 'com_content.article.116', 'Suporte', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(284, 18, 273, 274, 2, 'com_modules.module.605', 'Site Map', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(285, 18, 275, 276, 2, 'com_modules.module.25', 'Site Map', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(286, 18, 277, 278, 2, 'com_modules.module.225', 'Custom map', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(287, 18, 279, 280, 2, 'com_modules.module.606', 'Eventos', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(289, 39, 126, 127, 3, 'com_content.article.118', '53º Aniversário do Clube Desportivo do Arneiro', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(290, 39, 128, 129, 3, 'com_content.article.119', 'Tiro', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(291, 39, 130, 131, 3, 'com_content.article.120', 'Atletismo', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(292, 39, 132, 133, 3, 'com_content.article.121', 'Xadrez', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(293, 39, 134, 135, 3, 'com_content.article.122', 'Karaté JUTSU', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(294, 39, 136, 137, 3, 'com_content.article.123', 'Modalidades', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(295, 18, 281, 282, 2, 'com_modules.module.607', 'Modalidades', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(296, 18, 283, 284, 2, 'com_modules.module.211', 'Categories', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(297, 18, 285, 286, 2, 'com_modules.module.608', 'Suporte', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(298, 39, 138, 139, 3, 'com_content.article.124', 'Contactos', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(299, 39, 140, 141, 3, 'com_content.article.125', 'Morada', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(300, 18, 287, 288, 2, 'com_modules.module.76', 'Login (Atomic Template)', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(301, 39, 142, 143, 3, 'com_content.article.126', 'Serviços de Sócio', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(302, 18, 289, 290, 2, 'com_modules.module.100', 'Breadcrumbs', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}');

-- --------------------------------------------------------

--
-- Table structure for table `j78lr_associations`
--

CREATE TABLE `j78lr_associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `j78lr_banner_clients`
--

CREATE TABLE `j78lr_banner_clients` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extrainfo` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `j78lr_banner_clients`
--

INSERT INTO `j78lr_banner_clients` (`id`, `name`, `contact`, `email`, `extrainfo`, `state`, `checked_out`, `checked_out_time`, `metakey`, `own_prefix`, `metakey_prefix`, `purchase_type`, `track_clicks`, `track_impressions`) VALUES
(1, 'Joomla!', 'Administrator', 'email@email.com', '', 1, 0, '0000-00-00 00:00:00', '', 0, '', -1, -1, -1);

-- --------------------------------------------------------

--
-- Table structure for table `j78lr_banner_tracks`
--

CREATE TABLE `j78lr_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) UNSIGNED NOT NULL,
  `banner_id` int(10) UNSIGNED NOT NULL,
  `count` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `j78lr_banners`
--

CREATE TABLE `j78lr_banners` (
  `id` int(11) NOT NULL,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `custombannercode` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sticky` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `j78lr_categories`
--

CREATE TABLE `j78lr_categories` (
  `id` int(11) NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extension` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) UNSIGNED DEFAULT NULL,
  `params` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `j78lr_categories`
--

INSERT INTO `j78lr_categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`, `version`) VALUES
(1, 0, 0, 0, 87, 0, '', 'system', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '', 32, '2011-01-01 00:00:01', 32, '2011-01-01 00:00:01', 0, '*', 1),
(9, 34, 1, 75, 76, 1, 'uncategorised', 'com_content', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 32, '2011-01-01 00:00:01', 32, '2011-01-01 00:00:01', 0, '*', 1),
(10, 35, 1, 73, 74, 1, 'uncategorised', 'com_banners', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":"","foobar":""}', '', '', '{"page_title":"","author":"","robots":""}', 32, '2011-01-01 00:00:01', 32, '2011-01-01 00:00:01', 0, '*', 1),
(11, 36, 1, 69, 70, 1, 'uncategorised', 'com_contact', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 32, '2011-01-01 00:00:01', 32, '2011-01-01 00:00:01', 0, '*', 1),
(12, 37, 1, 5, 6, 1, 'uncategorised', 'com_newsfeeds', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 32, '2011-01-01 00:00:01', 32, '2011-01-01 00:00:01', 0, '*', 1),
(14, 39, 1, 1, 2, 1, 'sample-data-articles', 'com_content', 'Sample Data-Articles', 'sample-data-articles', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 32, '2011-01-01 00:00:01', 32, '2011-01-01 00:00:01', 0, '*', 1),
(15, 40, 1, 71, 72, 1, 'sample-data-banners', 'com_banners', 'Sample Data-Banners', 'sample-data-banners', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":"","foobar":""}', '', '', '{"page_title":"","author":"","robots":""}', 32, '2011-01-01 00:00:01', 32, '2011-01-01 00:00:01', 0, '*', 1),
(16, 41, 1, 7, 68, 1, 'sample-data-contact', 'com_contact', 'Sample Data-Contact', 'sample-data-contact', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 32, '2011-01-01 00:00:01', 32, '2011-01-01 00:00:01', 0, '*', 1),
(17, 42, 1, 3, 4, 1, 'sample-data-newsfeeds', 'com_newsfeeds', 'Sample Data-Newsfeeds', 'sample-data-newsfeeds', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 32, '2011-01-01 00:00:01', 32, '2011-01-01 00:00:01', 0, '*', 1),
(34, 59, 16, 8, 9, 2, 'sample-data-contact/park-site', 'com_contact', 'Park Site', 'park-site', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 32, '2011-01-01 00:00:01', 32, '2011-01-01 00:00:01', 0, 'en-GB', 1),
(35, 60, 16, 10, 67, 2, 'sample-data-contact/shop-site', 'com_contact', 'Shop Site', 'shop-site', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 32, '2011-01-01 00:00:01', 32, '2011-01-01 00:00:01', 0, '*', 1),
(36, 61, 35, 11, 12, 3, 'sample-data-contact/shop-site/staff', 'com_contact', 'Staff', 'staff', '', '<p>Please feel free to contact our staff at any time should you need assistance.</p>', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 32, '2011-01-01 00:00:01', 32, '2011-01-01 00:00:01', 0, '*', 1),
(37, 62, 35, 13, 66, 3, 'sample-data-contact/shop-site/fruit-encyclopedia', 'com_contact', 'Fruit Encyclopedia', 'fruit-encyclopedia', '', '<p>Â </p><p>Our directory of information about different kinds of fruit.</p><p>We love fruit and want the world to know more about all of its many varieties.</p><p>Although it is small now, we work on it whenever we have a chance.</p><p>All of the images can be found in <a href="http://commons.wikimedia.org/wiki/Main_Page">Wikimedia Commons</a>.</p><p><img src="http://demo.joomlashine.com/joomla-templates/jsn_venture/free/images/sampledata/fruitshop/apple.jpg" border="0" alt="Apples" title="Apples" /></p><p><em>This encyclopedia is implemented using the contact component, each fruit a separate contact and a category for each letter. A CSS style is used to create the horizontal layout of the alphabet headings. </em></p><p><em>If you wanted to, you could allow some users (such as your growers) to have access to just this category in the contact component and let them help you to create new content for the encyclopedia.</em></p><p>Â </p>', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 32, '2011-01-01 00:00:01', 32, '2011-01-01 00:00:01', 0, '*', 1),
(38, 63, 37, 14, 15, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/a', 'com_contact', 'A', 'a', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 32, '2011-01-01 00:00:01', 32, '2011-01-01 00:00:01', 0, '*', 1),
(39, 64, 37, 16, 17, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/b', 'com_contact', 'B', 'b', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 32, '2011-01-01 00:00:01', 32, '2011-01-01 00:00:01', 0, '*', 1),
(40, 65, 37, 18, 19, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/c', 'com_contact', 'C', 'c', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 32, '2011-01-01 00:00:01', 32, '2011-01-01 00:00:01', 0, '*', 1),
(41, 66, 37, 20, 21, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/d', 'com_contact', 'D', 'd', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 32, '2011-01-01 00:00:01', 32, '2011-01-01 00:00:01', 0, '*', 1),
(42, 67, 37, 22, 23, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/e', 'com_contact', 'E', 'e', '', '', 0, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 32, '2011-01-01 00:00:01', 32, '2011-01-01 00:00:01', 0, '*', 1),
(43, 68, 37, 24, 25, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/f', 'com_contact', 'F', 'f', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 32, '2011-01-01 00:00:01', 32, '2011-01-01 00:00:01', 0, '*', 1),
(44, 69, 37, 26, 27, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/g', 'com_contact', 'G', 'g', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 32, '2011-01-01 00:00:01', 32, '2011-01-01 00:00:01', 0, '*', 1),
(45, 70, 37, 28, 29, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/h', 'com_contact', 'H', 'h', '', '', 0, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 32, '2011-01-01 00:00:01', 32, '2011-01-01 00:00:01', 0, '*', 1),
(46, 71, 37, 30, 31, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/i', 'com_contact', 'I', 'i', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 32, '2011-01-01 00:00:01', 32, '2011-01-01 00:00:01', 0, '*', 1),
(47, 72, 37, 32, 33, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/j', 'com_contact', 'J', 'j', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 32, '2011-01-01 00:00:01', 32, '2011-01-01 00:00:01', 0, '*', 1),
(48, 73, 37, 34, 35, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/k', 'com_contact', 'K', 'k', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 32, '2011-01-01 00:00:01', 32, '2011-01-01 00:00:01', 0, '*', 1),
(49, 74, 37, 36, 37, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/l', 'com_contact', 'L', 'l', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 32, '2011-01-01 00:00:01', 32, '2011-01-01 00:00:01', 0, '*', 1),
(50, 75, 37, 38, 39, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/m', 'com_contact', 'M', 'm', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 32, '2011-01-01 00:00:01', 32, '2011-01-01 00:00:01', 0, '*', 1),
(51, 76, 37, 40, 41, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/n', 'com_contact', 'N', 'n', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 32, '2011-01-01 00:00:01', 32, '2011-01-01 00:00:01', 0, '*', 1),
(52, 77, 37, 42, 43, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/o', 'com_contact', 'O', 'o', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 32, '2011-01-01 00:00:01', 32, '2011-01-01 00:00:01', 0, '*', 1),
(53, 78, 37, 44, 45, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/p', 'com_contact', 'P', 'p', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 32, '2011-01-01 00:00:01', 32, '2011-01-01 00:00:01', 0, '*', 1),
(54, 79, 37, 46, 47, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/q', 'com_contact', 'Q', 'q', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 32, '2011-01-01 00:00:01', 32, '2011-01-01 00:00:01', 0, '*', 1),
(55, 80, 37, 48, 49, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/r', 'com_contact', 'R', 'r', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 32, '2011-01-01 00:00:01', 32, '2011-01-01 00:00:01', 0, '*', 1),
(56, 81, 37, 50, 51, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/s', 'com_contact', 'S', 's', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 32, '2011-01-01 00:00:01', 32, '2011-01-01 00:00:01', 0, '*', 1),
(57, 82, 37, 52, 53, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/t', 'com_contact', 'T', 't', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 32, '2011-01-01 00:00:01', 32, '2011-01-01 00:00:01', 0, '*', 1),
(58, 83, 37, 54, 55, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/u', 'com_contact', 'U', 'u', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 32, '2011-01-01 00:00:01', 32, '2011-01-01 00:00:01', 0, '*', 1),
(59, 84, 37, 56, 57, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/v', 'com_contact', 'V', 'v', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 32, '2011-01-01 00:00:01', 32, '2011-01-01 00:00:01', 0, '*', 1),
(60, 85, 37, 58, 59, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/w', 'com_contact', 'W', 'w', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 32, '2011-01-01 00:00:01', 32, '2011-01-01 00:00:01', 0, '*', 1),
(61, 86, 37, 60, 61, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/x', 'com_contact', 'X', 'x', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 32, '2011-01-01 00:00:01', 32, '2011-01-01 00:00:01', 0, '*', 1),
(62, 87, 37, 62, 63, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/y', 'com_contact', 'Y', 'y', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 32, '2011-01-01 00:00:01', 32, '2011-01-01 00:00:01', 0, '*', 1),
(63, 88, 37, 64, 65, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/z', 'com_contact', 'Z', 'z', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 32, '2011-01-01 00:00:01', 32, '2011-01-01 00:00:01', 0, '*', 1),
(80, 172, 1, 81, 82, 1, 'general', 'com_content', 'General', 'general', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":""}', '', '', '{"author":"","robots":""}', 32, '2011-04-01 02:53:39', 32, '2016-11-05 21:43:13', 0, '*', 1),
(81, 173, 1, 83, 84, 1, 'layout-variations', 'com_content', 'Layout Variations', 'layout-variations', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":""}', '', '', '{"author":"","robots":""}', 32, '2011-04-01 02:53:50', 32, '2016-11-05 21:43:24', 0, '*', 1),
(83, 175, 1, 85, 86, 1, 'menu-styles', 'com_content', 'Menu Styles', 'menu-styles', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":""}', '', '', '{"author":"","robots":""}', 32, '2011-04-01 02:54:08', 32, '2016-11-05 21:55:32', 0, '*', 1),
(84, 213, 1, 77, 78, 1, 'promo', 'com_banners', 'Promo', 'promo', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 32, '2011-04-01 08:36:56', 32, '0000-00-00 00:00:00', 0, '*', 1),
(85, 215, 1, 79, 80, 1, 'contacts', 'com_contact', 'Contacts', 'contacts', '', 'Contact Details for this Web site', -2, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 32, '2011-04-13 07:17:36', 32, '0000-00-00 00:00:00', 0, '*', 1);

-- --------------------------------------------------------

--
-- Table structure for table `j78lr_contact_details`
--

CREATE TABLE `j78lr_contact_details` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `con_position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` mediumtext COLLATE utf8mb4_unicode_ci,
  `suburb` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `misc` longtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_to` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_con` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) UNSIGNED DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `webpage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sortname2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sortname3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `metakey` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `j78lr_content`
--

CREATE TABLE `j78lr_content` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `introtext` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `fulltext` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribs` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `metadata` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'A reference to enable linkages to external data sets.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `j78lr_content`
--

INSERT INTO `j78lr_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(67, 168, 'What\'s New in 1.5?', 'whats-new-in-15', '<p>As with previous releases, Joomla! provides a unified and easy-to-use framework for delivering content for Web sites of all kinds. To support the changing nature of the Internet and emerging Web technologies, Joomla! required substantial restructuring of its core functionality and we also used this effort to simplify many challenges within the current user interface. Joomla! 1.5 has many new features.</p>\n<p style="margin-bottom: 0in;">In Joomla! 1.5, you\'\'ll notice:</p>\n<ul>\n<li>Substantially improved usability, manageability, and scalability far beyond the original Mambo foundations</li>\n<li>Expanded accessibility to support internationalisation, double-byte characters and right-to-left support for Arabic, Farsi, and Hebrew languages among others</li>\n<li>Extended integration of external applications through Web services</li>\n<li>Enhanced content delivery, template and presentation capabilities to support accessibility standards and content delivery to any destination</li>\n<li>A more sustainable and flexible framework for Component and Extension developers</li>\n<li>Backward compatibility with previous releases of Components, Templates, Modules, and other Extensions</li>\n</ul>', '', 2, 9, '2011-01-01 00:00:01', 32, 'Joomla! 1.5', '2011-01-01 00:00:01', 32, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 1, 0, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(87, 195, 'Proposta de Sócio', 'layout-variation-center-innerright-right', '<p><span style="color: #ff0000;">Para se fazer sócio do Clube Desportivo do Arneiro é necessário o seguinte:</span></p>\r\n<ul>\r\n<li style="width: 940px; float: left; font-size: 13px; color: #141507; line-height: 19px; font-family: \'Century Gothic\', sans-serif;">Pagar Joia no valor de 10€</li>\r\n<li style="width: 940px; float: left; font-size: 13px; color: #141507; line-height: 19px; font-family: \'Century Gothic\', sans-serif;">Entregar uma fotografia atualizada tipo passe</li>\r\n<li style="width: 940px; float: left; font-size: 13px; color: #141507; line-height: 19px; font-family: \'Century Gothic\', sans-serif;">Entregar proposta devidamente preenchida </li>\r\n</ul>\r\n<p> </p>\r\n<p> </p>\r\n<p> </p>\r\n<p> </p>\r\n<p><img src="images/transferir-1.jpeg" alt="" /></p>', '', 1, 81, '2011-04-01 03:11:52', 32, '', '2016-11-05 20:13:00', 32, 0, '0000-00-00 00:00:00', '2011-04-01 03:11:52', '0000-00-00 00:00:00', '', '', '{"show_title":"0","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 28, 6, '', '', 1, 80, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(88, 196, 'Parceiros', 'layout-variation-innerleft-center-right', '<p style="width: 940px; float: left; font-size: 13px; color: #141507; line-height: 19px; font-family: \'Century Gothic\', sans-serif;"><span style="color: #0000ff; font-size: small;"><strong>CÂMARA MUNICIPAL DE CASCAIS</strong></span></p>\r\n<p style="width: 940px; float: left; font-size: 13px; color: #141507; line-height: 19px; font-family: \'Century Gothic\', sans-serif;"><span style="font-size: small;"><a style="color: #7d7d7d; text-decoration: underline;" href="http://www.cm-cascais.pt/">www.cm-cascais.pt</a></span></p>\r\n<p style="width: 940px; float: left; font-size: 13px; color: #141507; line-height: 19px; font-family: \'Century Gothic\', sans-serif;"><span style="color: #ff0000; font-size: small;"><strong>UNIÃO DE FREGUESIAS DE CARCAVELOS E PAREDE</strong></span></p>\r\n<p style="width: 940px; float: left; font-size: 13px; color: #141507; line-height: 19px; font-family: \'Century Gothic\', sans-serif;"><span style="font-size: small;"><a style="color: #7d7d7d; text-decoration: underline;" href="http://www.jf-carcavelos.pt/">www.jf-carcavelos.pt</a></span></p>\r\n<p style="width: 940px; float: left; font-size: 13px; color: #141507; line-height: 19px; font-family: \'Century Gothic\', sans-serif;"><span style="color: #339966; font-size: small;"><strong>JUNTA DE FREGUESIA DE SÃO DOMINGOS DE RANA</strong></span></p>\r\n<p style="width: 940px; float: left; font-size: 13px; color: #141507; line-height: 19px; font-family: \'Century Gothic\', sans-serif;"><span style="font-size: small;"><a style="color: #7d7d7d; text-decoration: underline;" href="http://www.jf-sdrana.pt/">www.jf-sdrana.pt</a></span></p>\r\n<p style="width: 940px; float: left; font-size: 13px; color: #141507; line-height: 19px; font-family: \'Century Gothic\', sans-serif;"><span style="font-size: small;"><strong> INATEL</strong></span></p>\r\n<p style="width: 940px; float: left; font-size: 13px; color: #141507; line-height: 19px; font-family: \'Century Gothic\', sans-serif;"><span style="font-size: small;"><a style="color: #7d7d7d; text-decoration: underline;" href="http://www.inatel.pt/">www.inatel.pt</a></span></p>\r\n<p style="width: 940px; float: left; font-size: 13px; color: #141507; line-height: 19px; font-family: \'Century Gothic\', sans-serif;"><span style="color: #ff00ff; font-size: small;">FEDERAÇÃO PORTUGUESA DE TIRO</span></p>\r\n<p style="width: 940px; float: left; font-size: 13px; color: #141507; line-height: 19px; font-family: \'Century Gothic\', sans-serif;"><span style="font-size: small;"><a style="color: #7d7d7d; text-decoration: underline;" href="http://www.fptiro.net/">www.fptiro.net</a></span></p>', '', 1, 81, '2011-04-01 03:12:20', 32, '', '2016-11-04 06:12:00', 32, 0, '0000-00-00 00:00:00', '2011-04-01 03:12:20', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 7, 5, '', '', 1, 52, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');
INSERT INTO `j78lr_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(89, 197, ' Estatutos', 'layout-variation-left-center-innerright', '<p class="p1"> Regulamento Geral Interno do Clube Desportivo do Arneiro</p>\r\n<p class="p1"> </p>\r\n<p class="p2">Artigo Primeiro </p>\r\n<p class="p2">A Associação tem a denominação “ Clube Desportivo do Arneiro “, constituída em 10 de Agosto de 1962, por tempo indeterminado e tem a sua sede no lugar de Arneiro, Freguesia de Carcavelos. </p>\r\n<p class="p2"> </p>\r\n<p class="p2">Artigo Segundo </p>\r\n<p class="p2">A Associação tem como fim a promoção cultural dos sócios, através da educação cultural, física, desportiva e a acção social e recreativa, visando a sua formação humana integral, encontrando-se aberta a pessoas de ambos os sexos. </p>\r\n<p class="p2"> </p>\r\n<p class="p2">Artigo Terceiro </p>\r\n<p class="p2">Podem ser associados todos os indivíduos admitidos pelos Órgãos da Associação e mediante o pagamento de uma jóia inicial e de três quotas mensais, em dinheiro de montante a fixar em Assembleia Geral. </p>\r\n<p class="p2"> </p>\r\n<p class="p2">Artigo Quarto </p>\r\n<p class="p2">São deveres dos associados: </p>\r\n<p class="p6">a) Cumprir as disposições estatutárias da Assembleia, bem como respeitar as deliberações dos seus Órgãos; </p>\r\n<p class="p2">b) Desempenhar os cargos para que forem eleitos; </p>\r\n<p class="p6">c) Zelar pelo património da Associação, bem como pelo seu bom nome; </p>\r\n<p class="p2">d) Pagar a quota. </p>\r\n<p class="p2">São direitos dos associados: </p>\r\n<p class="p6">a) Eleger e ser eleito para órgãos da Associação; </p>\r\n<p class="p6">b) Participar nas actividades da Associação; </p>\r\n<p class="p2">c) Solicitar à Assembleia Geral todos os esclarecimentos sobre o funcionamento da Associação. </p>\r\n<p class="p7"> </p>\r\n<p class="p2">Artigo Quinto </p>\r\n<p class="p2">São Órgãos da Associação: A Assembleia Geral, a Direcção e o Conselho Fiscal. </p>\r\n<p class="p2">Artigo Sexto </p>\r\n<p class="p2">1. A Assembleia Geral é constituída por todos os associados no pleno gozo dos seus direitos. </p>\r\n<p class="p2">2. A Mesa da Assembleia Geral é composta por três associados, eleita por maioria relativa, sendo um Presidente, um Vice-Presidente e um Secretário, competindo-lhes convocar e dirigir os trabalhos das Assembleias Gerais e lavrar as respectivas actas. </p>\r\n<p class="p2">3. A Assembleia Geral reúne Ordinariamente uma vez por ano e extraordinariamente, por convocação do seu Presidente a pedido da Direcção ou de um quinto dos associados, no gozo dos seus plenos direitos. </p>\r\n<p class="p2">4. A Assembleia Geral é convocada por meio de aviso Postal, expedido para cada um dos associados com a antecedência mínima de oito dias e no aviso indicar-se-á o dia, hora e local da reunião e respectiva Ordem de trabalho para esse dia. </p>\r\n<p class="p2">5. A reunião Ordinária deve realizar-se no primeiro trimestre de cada ano civil, sendo em Janeiro, para eleição dos corpos gerentes. </p>\r\n<p class="p2">6. Compete à Assembleia Geral, designadamente: </p>\r\n<p class="p3"> </p>\r\n<p class="p6">a) Alterar os estatutos; </p>\r\n<p class="p6">b) Aprovar e alterar o seu Regulamento interno; </p>\r\n<p class="p6">c) Definir as grandes linhas de actuação da Associação: </p>\r\n<p class="p6">d) Aprovar o Relatório das actividades e contas das Direcção; </p>\r\n<p class="p6">e) Eleger os membros dos Órgãos da Associação bem como pronunciar-se pela sua destituição; </p>\r\n<p class="p6">f) Aprovar o montante do valor da quota; </p>\r\n<p class="p6">g) Retirar a qualidade dos associados, quando tal seja justificável por proposta da Direcção, constando de um processo disciplinar; </p>\r\n<p class="p6">h) Deliberar sobre a extinção da Associação, destino dos bens; </p>\r\n<p class="p2">i) Pronunciar-se pela autorização para demandar os Directores por factos praticados no exercício do seu mandato: </p>\r\n<p class="p7">7. Na falta do seu Presidente a Assembleia é presidida pelo Vice-Presidente, ou também na falta deste pelo Secretário e na falta de todos membros da mesa, por um associado a designar pela Assembleia Geral; </p>\r\n<p class="p7">8. As Assembleias Gerais funcionarão, em primeira convocatória, com a presença de associados que representem a maioria absoluta dos votos possíveis e em segunda convocatória, trinta minutos depois, com o numero dos associados presentes. </p>\r\n<p class="p7">9. As deliberações são tomadas por maioria absoluta de votos dos associados presentes, excepto o disposto nos números seguintes. </p>\r\n<p class="p7">10. As deliberações sobre alterações estatutárias, exigem o voto favorável de três quartos do número de associados presentes. </p>\r\n<p class="p7">11. As deliberações sobre a dissolução e prorrogações requerem voto favorável de três quartos do número de todos associados. </p>\r\n<p class="p7"> </p>\r\n<p class="p2">Artigo Sétimo </p>\r\n<p class="p2">1. A Direcção é o Órgão executivo, composto por sete associados eleitos em lista maioritária, sendo um Presidente, um Vice-Presidente, um tesoureiro, dois secretários, dois vogais.  </p>\r\n<p class="p2">2. A Direcção reúne ordinariamente, uma vez por semana e extraordinariamente por convocação de dois dos seus membros ou do seu Presidente. </p>\r\n<p class="p2">3. A Direcção só pode deliberar desde que a maioria dos seus membros esteja presente e as deliberações são tomadas por maioria de votos dos titulares presentes, tendo o Presidente, além do seu voto, direito a voto de qualidade. </p>\r\n<p class="p7"> </p>\r\n<p class="p2">Artigo Oitavo </p>\r\n<p class="p2">1. Compete à Direcção a gerência social, administrativa, financeira e disciplinar, designadamente: </p>\r\n<p class="p7"> a) Aprovar e executar o Plano de Actividades e o orçamento; </p>\r\n<p class="p6">b) Apresentar o Relatório e contas; </p>\r\n<p class="p6">c) Aprovar a proposta de Regulamento Interno e submeter à aprovação da Assembleia Geral; </p>\r\n<p class="p6">d) Admitir novos associados; </p>\r\n<p class="p6">e) Exercer o poder disciplinar, com excepção da expulsão de associados, que deve ser proposta a deliberação da Assembleia Geral; </p>\r\n<p class="p6">f) Apresentar propostas à Assembleia Geral; </p>\r\n<p class="p6">g) Aceitar subsídios, doações, heranças ou legados; </p>\r\n<p class="p6">h) Representar a Associação; </p>\r\n<p class="p2">i) Exercer as demais competências que a Assembleia Geral nela delegar. </p>\r\n<p class="p2">2. A Associação obriga-se pela assinatura: </p>\r\n<p class="p7"> a) De dois membros da Direcção; </p>\r\n<p class="p6">b) De um dos membros da Direcção e de um mandatário devidamente autorizado para o efeito; </p>\r\n<p class="p2">c) De um só membro da Direcção ou de um mandatário, para actos de mero expediente. </p>\r\n<p class="p7"> </p>\r\n<p class="p2">Artigo Nono </p>\r\n<p class="p2">1. O Concelho Fiscal é composto por três elementos por lista maioritária, sendo um Presidente um relator e um Vogal. </p>\r\n<p class="p2">2. O Conselho Fiscal é convocado pelo respectivo Presidente e só pode deliberar com a presença da maioria dos seus titulares.  </p>\r\n<p class="p2">3. As deliberações são tomadas por, maioria dos votos dos titulares presentes, tendo o Presidente, além do seu voto, direito a voto de qualidade. </p>\r\n<p class="p2">4. Compete ao Conselho Fiscal, designadamente: </p>\r\n<p class="p6">a) Elaborar parecer anual sobre o relatório e contas apresentados pela Direcção; </p>\r\n<p class="p2">b) Fiscalizar as contas da Direcção;  </p>\r\n<p class="p2">c) Solicitar à Direcção todas as informações consideradas úteis no normal funcionamento; </p>\r\n<p class="p6">d) Dar parecer sobre os actos que impliquem aumento de despesas ou diminuição de receitas; </p>\r\n<p class="p2">e) Fiscalizar os actos administrativos e financeiros da Direcção. </p>\r\n<p class="p7"> </p>\r\n<p class="p2">5. O Concelho Fiscal reunirá, como regra, uma vez por trimestre e sempre que for convocado pelo seu Presidente a pedido de qualquer membro da Direcção ou do Presidente da Assembleia Geral. </p>\r\n<p class="p7"> </p>\r\n<p class="p2">Artigo Décimo </p>\r\n<p class="p2">Constituem receitas da Associação: </p>\r\n<p class="p6">a) Subsídios de entidades públicas ou privadas; </p>\r\n<p class="p6">b) Quotização dos associados a fixar em Assembleia Geral; </p>\r\n<p class="p2">c) Quaisquer outra receitas provenientes das actividades do seu fim. </p>\r\n<p class="p7"> </p>\r\n<p class="p2">Artigo Onze </p>\r\n<p class="p2">A duração do mandato dos Órgãos da Associação é de dois anos, devendo-se sua eleição no mês de Janeiro último de cada biénio, em lista que conste a indicação dos respectivos cargos, mantendo-se em exercício até à sua efectiva substituição Estatutos -  </p>\r\n<p class="p2">Artigo Doze </p>\r\n<p class="p2">Nos casos omissos neste estatuto, rege o Regulamento Geral Interno, cuja aprovação compete Assembleia Geral.  </p>\r\n<p class="p8"> </p>\r\n<p class="p2"> </p>\r\n<p class="p2"> </p>\r\n<p class="p2">CAPITULO I. </p>\r\n<p class="p2">DENOMINAÇÃO - FINS - SEDE - GENERALIDADES</p>\r\n<p class="p2"> </p>\r\n<p class="p2">Artigo 1º </p>\r\n<p class="p2">O Clube Desportivo do Arneiro, é uma colectividade recreativa, desportiva, cultural e de acção social, fundado em 10 de Agosto de 1962 e passa a ter este Regulamento Geral Interno ao qual se confere no âmbito da colectividade, a força dos Estatutos, desde que aprovado em Assembleia Geral. </p>\r\n<p class="p2"> </p>\r\n<p class="p2">Artigo 2º </p>\r\n<p class="p2">Número 1 </p>\r\n<p class="p2">O Clube Desportivo do Arneiro tem por fim promover e desenvolver actividades de carácter recreativo, desportivo, cultural e a formação social e cívico dos seus sócios em particular, com vista ao desenvolvimento harmonioso da sua personalidade. </p>\r\n<p class="p2">Número 2 </p>\r\n<p class="p2">O Clube Desportivo do Arneiro colaborará, no âmbito das suas actividades, com total independência, para a criação das condições expressas na Constituição da República Portuguesa. </p>\r\n<p class="p2">Número 3 </p>\r\n<p class="p2">A vida interna do Clube Desportivo do Arneiro rege-se segundo princípios democráticos pelo que será um dever e um direito de todos os associados o exercício da liberdade opinião de discussão e deliberação nas condições definidas neste Regulamento Geral Interno. </p>\r\n<p class="p2">Número 4 </p>\r\n<p class="p2">Com vista a assegurar a unidade da colectividade e a salvaguarda dos direitos de todos e cada um dos associados, não será permitida a criação de organismos autónomos dentro das instalações do Clube. </p>\r\n<p class="p2">Número5</p>\r\n<p class="p2">O Clube Desportivo do Arneiro orienta a sua acção dentro dos princípios verdadeiramente democráticos de solidariedade e união fraterna com todas as colectividades, clubes, nacionais e estrangeiras, desde que visem atingir objectivos comuns. </p>\r\n<p class="p2"> </p>\r\n<p class="p2">Artigo 3º </p>\r\n<p class="p2">O Clube Desportivo do Arneiro é completamente alheio a todas as doutrinas políticas e credos religiosos. </p>\r\n<p class="p2">Artigo 4º </p>\r\n<p class="p2">O Clube Desportivo do Arneiro tem a sua sede na Freguesia de Carcavelos, Concelho de Cascais, podendo utilizar ou possuir instalações em qualquer outra localidade. </p>\r\n<p class="p2">Artigo 5º </p>\r\n<p class="p2">À Direcção é permitido recrutar colaboradores, entre os associados, para agregá-los aos Pelouros carecidos de reforço, nas condições e com competências e prerrogativas, definidas pelo Regulamento Geral Interno. </p>\r\n<p class="p2">Artigo 6º </p>\r\n<p class="p2">A Assembleia Geral ou a Direcção podem nomear comissões para a realização de tarefas transitórias ou a de colaboração especial ou técnica, as cessam a actividade quando concluídos os trabalhos. </p>\r\n<p class="p2">Artigo 7º </p>\r\n<p class="p2">São expressamente proibidos nas instalações do Clube Desportivo do Arneiro, quaisquer jogos de azar ou actividades que contribuam para a alienação da consciência social ou deformação moral dos sócios. </p>\r\n<p class="p2">Artigo 8º Estatutos - Regulamento Geral Interno do Clube Desportivo do Arneiro  </p>\r\n<p class="p2">Só a Assembleia Geral tem poderes para fixar os valores da jóia e das quotas associativas e autorizar a Direcção a contrair empréstimos, adquirir ou alienar bens imóveis. </p>\r\n<p class="p2">Artigo 9º </p>\r\n<p class="p2">O Regulamento Geral Interno, ou regulamentos específicos, desde que aprovados pela Assembleia Geral e não colidam com os Estatutos, adquirem valor estatutário. </p>\r\n<p class="p2">Artigo 10º </p>\r\n<p class="p2">Com a aprovação deste Regulamento Geral Interno consideram-se revogadas outras disposições que anteriormente serviam para reger a vida interna do Clube Desportivo do Arneiro. </p>\r\n<p class="p2"> </p>\r\n<p class="p2"> </p>\r\n<p class="p2">CAPITULO II. </p>\r\n<p class="p2">Dos Sócios </p>\r\n<p class="p2"> </p>\r\n<p class="p2">Artigo 11º </p>\r\n<p class="p2">O Clube Desportivo do Arneiro compõe-se das seguintes classes de Sócios: </p>\r\n<p class="p6">a) Efectivos; </p>\r\n<p class="p6">b) Auxiliares (Menores e Infantis); </p>\r\n<p class="p6">c) De Mérito; </p>\r\n<p class="p6">d) Beneméritos; </p>\r\n<p class="p2">e) Honorários. </p>\r\n<p class="p7"> </p>\r\n<p class="p7">Número 1 </p>\r\n<p class="p2">São efectivos, os Sócios de idade superior a 18 anos que usufruem de todos os direitos e ficam sujeitos a todos os deveres estatutários. </p>\r\n<p class="p2">a) Só os sócios efectivos que tenham condições de se inscrever no INATEL e que, sejam moradores no Concelho de Cascais, gozam dos direitos e regalias dos CCDs, nos termos do Artigo 5º do regulamento dos Centros de Cultura e Desporto. </p>\r\n<p class="p7"> </p>\r\n<p class="p2">Número 2  </p>\r\n<p class="p2">São auxiliares, os sócios (Menores e Infantis), a que apenas são concedidos alguns direitos e ficam submetidos a alguns deveres estatutários. </p>\r\n<p class="p2">Número 3 </p>\r\n<p class="p2">Sócios menores, são os que têm idade inferior a 18 anos, e superior a 12 anos. </p>\r\n<p class="p2">Número 4 </p>\r\n<p class="p2">Sócios Infantis, são os que forem inscritos pelos pais ou tutores antes de completarem 13 anos de idade. </p>\r\n<p class="p2">Número 5 </p>\r\n<p class="p2">Os Sócios infantis ficam isentos do pagamento de quotas, usufruindo das regalias da sua categoria. </p>\r\n<p class="p2">Número 6 </p>\r\n<p class="p2">São Sócios de Mérito os praticantes de actividades recreativas, culturais e desportivas e os dirigentes e associados que pela sua acção em prol da colectividade se revelem merecedores dessa distinção. </p>\r\n<p class="p2">Número 7 </p>\r\n<p class="p2">São Sócios Beneméritos as pessoas singulares ou colectivas que, em virtude de dádivas valiosas à Colectividade se revelem merecedoras dessa distinção. </p>\r\n<p class="p2">Número 8 </p>\r\n<p class="p2">São Sócios Honorários as pessoas singulares ou colectivas que se destingam por serviços relevantes prestados à causa da educação física, do desporto e da cultura. </p>\r\n<p class="p2">Número 9 </p>\r\n<p class="p2">Os Sócios de Mérito, Beneméritos e Honorários são proclamados, unicamente, pela Assembleia Geral. </p>\r\n<p class="p2"> </p>\r\n<p class="p2"> </p>\r\n<p class="p2">CAPITULO III. </p>\r\n<p class="p2">Da Admissão, Readmissão e Nomeação de Sócios </p>\r\n<p class="p2"> </p>\r\n<p class="p2">Artigo 12º </p>\r\n<p class="p2">Número 1  </p>\r\n<p class="p2">Qualquer pessoa pode solicitar a sua admissão como sócio do Clube Desportivo do Arneiro, independentemente da idade, sexo, raça, religião ou nacionalidade, por si ou pelo seu representante legal, e sob proposta de um sócio, no pleno uso dos seus direitos e com pelo menos três anos de filiação do Clube Desportivo do Arneiro, salvo restrições no número imediato. </p>\r\n<p class="p2">Número 2 </p>\r\n<p class="p2">Não pode ser admitido como sócio do Clube Desportivo do Arneiro quem se encontre em qualquer das situações seguintes: </p>\r\n<p class="p2">b) Ter contribuído, por qualquer forma, para o desprestigio do Clube Desportivo do Arneiro; </p>\r\n<p class="p2">c) Ter sido afastado de qualquer instituição desportiva, cultural e recreativa, por motivos que se considerem indignos. </p>\r\n<p class="p2"> </p>\r\n<p class="p2">Número 3 </p>\r\n<p class="p2">A admissão de sócios efectivos, será feita mediante proposta, em impresso fornecido pelo Clube, ao qual serão juntas duas fotografias do proposto. As propostas serão entregues à Direcção que as afixará na Sede do Clube, por um espaço de oito dias, findo o qual serão submetidas à aprovação. </p>\r\n<p class="p2">Número 4 </p>\r\n<p class="p2">Os Sócios menores não serão admitidos sem autorização por escrito, de seus pais ou tutores. </p>\r\n<p class="p2">Número 5 </p>\r\n<p class="p2">Os Sócios infantis deverão apresentar, sempre que a Direcção o entenda, Bilhete de Identidade ou documento comprovativo da sua idade e filiação. </p>\r\n<p class="p2">Número 6 </p>\r\n<p class="p2">Os Sócios efectivos e menores, só entrarão no gozo dos seus direitos depois de avisados pela Direcção e de pagarem a jóia e três quotas. </p>\r\n<p class="p2"> </p>\r\n<p class="p2">Artigo 13º </p>\r\n<p class="p2">Número 1  </p>\r\n<p class="p2">Os Sócios que tenham pedido a demissão, ou tenham sido eliminados por atraso do pagamento de quotas, poderão solicitar a sua readmissão. </p>\r\n<p class="p2">Número 2 </p>\r\n<p class="p2">A readmissão não poderá ser concedida mais de uma vez, confere ao sócio o direito de recuperar o número que antes detinha. Para readquirir o referido número terá de pagar todas as quotas em atraso ao valor da quota actual. </p>\r\n<p class="p2">Número 3 </p>\r\n<p class="p2">Não poderão ser readmitidos os indivíduos que forem expulsos ou irradiados de sócios do Clube Desportivo do Arneiro. </p>\r\n<p class="p2"> </p>\r\n<p class="p2"> </p>\r\n<p class="p2">CAPÍTULO IV </p>\r\n<p class="p2">Dos Deveres e Direitos dos Sócios </p>\r\n<p class="p2"> </p>\r\n<p class="p2">Artigo 14º </p>\r\n<p class="p2">Número 1 </p>\r\n<p class="p2">São Direitos dos Sócios: </p>\r\n<p class="p9">a) Frequentar a sede e as instalações sociais e desportivas do Clube nas condições regulamentares; </p>\r\n<p class="p9">b) Representar o clube na prática da educação física e dos desportos em actividades recreativas e culturais e praticar essas mesmas actividades do clube, ainda que sem carácter de competição; </p>\r\n<p class="p9">c) Participar nas Assembleias Gerais; </p>\r\n<p class="p9">d) Ser eleito para cargos directivos do clube; </p>\r\n<p class="p9">e) Requerer a convocação de Assembleias Gerais Extraordinárias; </p>\r\n<p class="p9">f) Examinar as contas, os documentos e os livros relativos às actividades do Clube, nos oito dias que precedem à Assembleia Geral Ordinária, convocada com a finalidade prevista no Art.º. 35º; </p>\r\n<p class="p9">g) Solicitar, aos Órgãos Sociais, informações e esclarecimentos e apresentar sugestões de utilidade para o Clube; </p>\r\n<p class="p9">h) Propor a admissão de Sócios de acordo com o n º 1 do Art.º. 12º e recorrer de deliberações da Direcção que a tenham rejeitado ou anulado; </p>\r\n<p class="p9">i) Solicitar à Direcção a suspensão do pagamento de quotas, nos artigos previstos neste Regulamento Geral Interno, e ainda quando estiver a cumprir serviço militar obrigatório; </p>\r\n<p class="p2">j) Inscrever os seus filhos de idade inferior a 13 anos nos cursos desportivos, recreativos e culturais do clube; </p>\r\n<p class="p2">k) Inscrever nos cursos e nas condições da alínea anterior, os seus netos, quando estes sejam órfãos; </p>\r\n<p class="p9">l) Receber e usar as distinções previstas no Regulamento Geral Interno; </p>\r\n<p class="p9">m) Recorrer para as entidades competentes em caso de discordância das decisões dos dirigentes do Clube; </p>\r\n<p class="p9">n) Pedir a demissão; </p>\r\n<p class="p2">o) Apresentar duas vezes por ano, na sede, qualquer indivíduo estranho à colectividade, desde que não tenha sido demitido de sócio e não tenha sido rejeitada a sua admissão de sócio. </p>\r\n<p class="p7">Número 2 </p>\r\n<p class="p2">Os Sócios menores de 18 anos, apenas gozam dos direitos consignados nas alíneas; a), b), m) e p) do número anterior. </p>\r\n<p class="p2"> </p>\r\n<p class="p2">Artigo 15º </p>\r\n<p class="p2">Número 1 </p>\r\n<p class="p2">São deveres dos Sócios: </p>\r\n<p class="p9">a) Honrar a sua qualidade de sócios do Clube e defender intransigentemente o prestígio e a dignidade do Clube Desportivo do Arneiro dentro das normas da educação cívica e do desporto; </p>\r\n<p class="p9">b) Cumprir os Estatutos, os regulamentos, as deliberações dos Órgãos Sociais e as decisões dos dirigentes; </p>\r\n<p class="p9">c) Votar nos diferentes actos eleitorais que digam respeito ao Clube Desportivo do Arneiro; </p>\r\n<p class="p9">d) Aceitar o exercício dos cargos do Clube para que tenham sido eleitos ou nomeados, desempenhados com aprumo que dignifiquem o Clube Desportivo do Arneiro e dentro da orientação estabelecida; </p>\r\n<p class="p9">e) Efectuar, dentro dos prazos fixados, o pagamento das quotas e de outras contribuições obrigatórias; </p>\r\n<p class="p9">f) Prestar ao Clube toda a colaboração possível que lhe seja solicitada; </p>\r\n<p class="p9">g) Manter impecável comportamento moral e disciplinar dentro das instalações do Clube, conduzirem-se por forma a não deslustrar a sua qualidade de sócios e identificarem-se quando lhes for solicitado; </p>\r\n<p class="p2">h) Exercer cargos dos Organismos de hierarquia desportiva, cultural e recreativa, em representação do Clube Desportivo do Arneiro, ou de Organismos em que o mesmo se encontre filiado, actuando de maneira a honrar essa representação;   </p>\r\n<p class="p9">i) Representar o Clube Desportivo do Arneiro em reuniões dos Organismos da hierarquia Desportiva, Cultural e recreativa, procedendo em harmonia com a orientação definida pelos Órgãos Sociais do Clube; </p>\r\n<p class="p9">j) Prestar, aos Órgãos Sociais, as informações que lhes sejam pedidas, no âmbito das actividades do Clube e na defesa dos eus legítimos interesses; </p>\r\n<p class="p2">k) Indemnizar o Clube de quaisquer danos ou prejuízos causados. </p>\r\n<p class="p2">Número 2 </p>\r\n<p class="p2">Os deveres consignados nas alíneas: d), h) e i do número anterior respeitam apenas aos sócios com o tempo de filiação associativa estabelecida no Regulamento Geral Interno. </p>\r\n<p class="p2">Número 3 </p>\r\n<p class="p2">Todo o sócio que completar o atraso de três meses no pagamento das suas quotas e que depois de avisado pela Direcção, não as pague no prazo de quinze dias, será eliminado de Sócio perdendo todos os seus direitos. </p>\r\n<p class="p2">Número 4 </p>\r\n<p class="p2">Aos Sócios infantis não se aplica o disposto no número anterior. </p>\r\n<p class="p2"> </p>\r\n<p class="p2"> </p>\r\n<p class="p2">CAPITULO V </p>\r\n<p class="p2">Disposições Comuns </p>\r\n<p class="p2"> </p>\r\n<p class="p2">Artigo 16º </p>\r\n<p class="p2">Número 1 </p>\r\n<p class="p2">O Clube Desportivo do Arneiro realiza os seus fins por intermédio dos seus Órgãos Sociais que são: a Assembleia Geral, a Direcção e o Conselho Fiscal. </p>\r\n<p class="p2">Número 2 </p>\r\n<p class="p2">No Intervalo das suas reuniões, a Assembleia Geral é representado pela respectiva Mesa. </p>\r\n<p class="p2">Número 3 </p>\r\n<p class="p2">Sempre que neste Regulamento Geral Interno se mencionem os Órgãos Sociais, entende-se que faz referência, conjuntamente, à Mesa da Assembleia Geral, à Direcção e ao Conselho Fiscal. </p>\r\n<p class="p2"> </p>\r\n<p class="p2">Artigo 17º  </p>\r\n<p class="p2">Os Órgãos Sociais, quando no desempenho das respectivas atribuições, representam o Clube Desportivo do Arneiro, competindo-lhes dirigir e orientar toda a actividade do Clube, em ordem à prossecução dos seus fins em estreita obediência aos princípios e normas dos Estatutos e Regulamento Geral Interno, devendo cada um dos seus membros considerar o exercício do cargo como missão honrosa a desempenhar com a maior dedicação e o mais exemplar desinteresse. </p>\r\n<p class="p2"> </p>\r\n<p class="p2">Artigo 18º </p>\r\n<p class="p2">Número 1 </p>\r\n<p class="p2">Os cargos dos Órgãos Sociais do Clube Desportivo do Arneiro, são desempenhados por Sócios efectivos, que à data da realização da Assembleia Geral Ordinária ou Extraordinária convocada para a eleição de Corpos Gerentes, tenham completado cinco anos de filiação associativa do Clube, para cargos da Mesa da Assembleia Geral e do Conselho Fiscal, e de um ano de filiação associativa para cargos da Direcção. </p>\r\n<p class="p2">Número 2 </p>\r\n<p class="p2">Os Sócios efectivos, que se encontrem nas condições do número anterior, devem ainda estar em pleno gozo de todos os seus direitos e que não sejam funcionários do Clube. </p>\r\n<p class="p2"> </p>\r\n<p class="p2">Artigo 19º </p>\r\n<p class="p2">As eleições dos Órgãos Sociais serão realizadas: </p>\r\n<p class="p2">a) Bianualmente para o preenchimento dos cargos da Direcção e do Conselho Fiscal e Mesa da Assembleia Geral. </p>\r\n<p class="p7"> </p>\r\n<p class="p2">Artigo 20º </p>\r\n<p class="p2">As eleições têm lugar nas Assembleias Gerais convocadas pela Mesa para o efeito, de 15 a 31 de Janeiro, e podem-se efectuar por escrutínio secreto ou ainda pelo sistema de levantados ou sentados, sob controle da Mesa.</p>\r\n<p class="p2"> </p>\r\n<p class="p2">Artigo 21º </p>\r\n<p class="p2">As listas respeitantes às candidaturas, designadas por listas de Corpos Gerentes, são apresentadas ao Presidente da Mesa da Assembleia Geral, no período referido no Art.º 20º e serão acompanhadas por declaração dos Sócios propostos, que expressamente confirmem a aceitação do cargo a que se candidatam. </p>\r\n<p class="p2"> </p>\r\n<p class="p2">Artigo 22º </p>\r\n<p class="p2">Número 1 </p>\r\n<p class="p2">É permitida a reeleição, no entanto se houver uma mais listas de candidatura em poder do Presidente da Mesa da Assembleia Geral, a lista candidata à reeleição será designada por lista A e as restantes, B, C, etc., conforme a data de entrada. </p>\r\n<p class="p2">Número 2 </p>\r\n<p class="p2">Em caso de reeleição, deve observar-se o cumprimento estipulado no Art.º. 20. </p>\r\n<p class="p2"> </p>\r\n<p class="p2">Artigo 23º </p>\r\n<p class="p2">Número 1 </p>\r\n<p class="p2">Se em qualquer dos Órgãos Sociais, se verificar a ocorrência de vagas que excedam a terça parte dos seus membros já depois de chamados os suplentes à efectividade, ou se verificar a demissão colectiva dos citados Órgãos Sociais, proceder-se-á à sua substituição. </p>\r\n<p class="p2">Número 2 </p>\r\n<p class="p2">Os membros dos Órgãos Sociais eleitos nos termos deste artigo, exercendo os seus cargos até o final do mandato em curso. </p>\r\n<p class="p2"> </p>\r\n<p class="p2">Artigo 24º </p>\r\n<p class="p2">Número 1 </p>\r\n<p class="p2">Será extinto por deliberação da Assembleia Geral o mandato do Órgão Social que desenvolva acção clara e inequívoca, prejudicial aos interesses do Clube Desportivo do Arneiro, procedendo-se à eleição para a sua substituição nos termos do Artigo anterior. </p>\r\n<p class="p2">Número 2 </p>\r\n<p class="p2">A Extinção prevista neste Artigo será solicitada em requerimento dirigido ao Presidente da Mesa da Assembleia Geral, subscrito por um mínimo de 40 Sócios efectivos, devida e concretamente fundamentada e desde que os signatários entreguem nos cofres do Clube a quantia que for calculada como possível, para pagamento das despesas resultantes dessa convocação, sob pena de não poder ser aceite. </p>\r\n<p class="p2">Número 3 </p>\r\n<p class="p2">Para que a Assembleia Geral, prevista neste Artigo, possa funcionar, é necessário a presença de nove décimos dos Sócios que a subscreveram. </p>\r\n<p class="p2">Número 4 </p>\r\n<p class="p2">A votação será nominal e terá de ser aprovada pela maioria absoluta dos Sócios que hajam assinado a lista de presenças. </p>\r\n<p class="p2"> </p>\r\n<p class="p2">Artigo 25º </p>\r\n<p class="p2">Número 1 </p>\r\n<p class="p2">Perdem o mandato os membros dos Órgãos Sociais que abandonem o cargo, peçam a demissão ou a quem aplicada quaisquer das penas previstas nas alíneas c) a e) do n º 1 do Art.º 78º. </p>\r\n<p class="p2">Número 2 </p>\r\n<p class="p2">Considera-se abandono do cargo a ocorrência de cinco faltas consecutivas, sem justificação às reuniões de Direcção e de três para os outros órgãos. </p>\r\n<p class="p2"> </p>\r\n<p class="p2">Artigo 26º </p>\r\n<p class="p2">O membro dos Órgãos Sociais que perca o seu mandato, nos termos do Artigo anterior, não fica isento da responsabilidade decorrente das deliberações que, com a sua concordância tenham sido tomadas. </p>\r\n<p class="p2"> </p>\r\n<p class="p2">Artigo 27º </p>\r\n<p class="p2">Número 1 </p>\r\n<p class="p2">As reuniões dos Órgãos Sociais são privadas, a elas só podendo assistir membros de outros Órgãos, cuja a presença, a título excepcional, seja expressamente solicitada. </p>\r\n<p class="p2">Número 2 </p>\r\n<p class="p2">Exceptua-se do estabelecido no n º 1, o Presidente da Mesa da Assembleia Geral, que poderá assistir às reuniões dos outros Órgãos Sociais, sempre que o julgue necessário. Quando tal se verifique, a presidência será ocupada pelo presidente da Mesa da Assembleia Geral, mas a condução da reunião pertencerá ao Presidente do respectivo Órgão Social.</p>\r\n<p class="p1"> </p>\r\n<p class="p2">Artigo 28º </p>\r\n<p class="p2">A Direcção porá no prazo de cinco dias, à exposição do Conselho Fiscal as actas das suas reuniões, contendo sumariamente as deliberações tomadas. </p>\r\n<p class="p2"> </p>\r\n<p class="p2">Artigo 29º </p>\r\n<p class="p2">Número 1 </p>\r\n<p class="p2">Cada um dos Órgãos Sociais só poderá reunir e deliberar desde que esteja presente a maioria absoluta dos seus membros. </p>\r\n<p class="p2">Número 2 </p>\r\n<p class="p2">Aos membros dos Órgãos Sociais não é permitido, sob pena de demissão, divulgar as matérias dos debates e opiniões emitidas nas reuniões, nem especificar a natureza dos respectivos votos, salvo quando respondendo a inquérito do Clube. </p>\r\n<p class="p2"> </p>\r\n<p class="p2">Artigo 30º </p>\r\n<p class="p2">Os membros de cada um dos Órgãos Sociais são solidária e colectivamente responsáveis pelas respectivas deliberações, salvo quando hajam feito declaração de voto da sua discordância, registada em acta de sessão em que a deliberação foi tomada. </p>\r\n<p class="p2"> </p>\r\n<p class="p2"> </p>\r\n<p class="p2">CAPITULO VI </p>\r\n<p class="p2">Assembleia Geral </p>\r\n<p class="p2"> </p>\r\n<p class="p2">Artigo 31º </p>\r\n<p class="p2">Número 1 </p>\r\n<p class="p2">A Assembleia Geral é a reunião dos Sócios de maior idade, no pleno gozo dos seus direitos e expressamente convocada para esse fim pela Mesa, por meio de aviso directo com o mínimo de cinco dias de antecedência. </p>\r\n<p class="p2">Número 2 </p>\r\n<p class="p2">A Assembleia Geral funciona em primeira convocatória, com a presença de associados que representem a maioria absoluta dos votos possíveis e em segunda convocatória, trinta minutos depois, com o número dos associados presentes, excepto quando convocada de harmonia com o Art.º 24º. </p>\r\n<p class="p2">Número 3 </p>\r\n<p class="p2">As decisões da Assembleia Geral ficarão registadas num livro de actas. </p>\r\n<p class="p2">Número 4 </p>\r\n<p class="p2">Qualquer Sócio que exerça algum cargo remunerado pelo Clube ou tenha com a colectividade qualquer contrato, poderá tomar parte na Assembleia Geral, apenas em defesa de causa própria. </p>\r\n<p class="p2"> </p>\r\n<p class="p2">Artigo 32º </p>\r\n<p class="p2">À Assembleia Geral pertence, por direito próprio, apreciar e decidir sobre todos os assuntos de interesse para o Clube, competindo-lhe, designadamente: </p>\r\n<p class="p2">Número 1 </p>\r\n<p class="p2">Apreciar e votar o Relatório das actividades do Clube e contas da Gerência bem como o Parecer do Conselho Fiscal, relativos a cada ano social; </p>\r\n<p class="p2">Número 2 </p>\r\n<p class="p2">Eleger e demitir os membros dos Órgãos Sociais; </p>\r\n<p class="p2">Número3 </p>\r\n<p class="p2">Fixar ou alterar a importância da jóia na admissão de sócios, das quotas e de outras contribuições obrigatórias, que tenham sido estipuladas em Assembleia Geral; </p>\r\n<p class="p2">Número 4 </p>\r\n<p class="p2">Aprovar os Estatutos e os Regulamentos do Clube e velar pelo seu cumprimento, interpretá-los, alterá-los ou revogá-los bem como resolver os casos neles omissos e dissolução do Clube; </p>\r\n<p class="p2">Número 5 </p>\r\n<p class="p2">Autorizar a Direcção a realizar empréstimos e outras operações de crédito. </p>\r\n<p class="p2">Número 6 </p>\r\n<p class="p2">Decidir da aquisição ou alienação de bens imóveis e das garantias a prestar pelo Clube que onerem bens imobiliários ou consignem quaisquer rendimentos; </p>\r\n<p class="p2">Número 7 </p>\r\n<p class="p2">Julgar os recursos para ela interpostos;</p>\r\n<p class="p1"> Número 8 </p>\r\n<p class="p2">Deliberar sobre as exposições que lhe sejam apresentadas pelos Órgãos Sociais ou pelos Sócios, bem como sobre toda a actividade dos primeiros ou dos segundos, enquanto Sócios; </p>\r\n<p class="p2">Número 9 </p>\r\n<p class="p2">Conceder, nos termos do Regulamento Geral Interno, as distinções honoríficas instituídas pelo Clube; </p>\r\n<p class="p2">Número 10 </p>\r\n<p class="p2">Alterar as suas próprias deliberações; </p>\r\n<p class="p2">Número 11 </p>\r\n<p class="p2">Eleger comissões para a execução e estudo de qualquer assunto, constituído por Sócios efectivos, com mais de um ano de filiação associativa; </p>\r\n<p class="p2">Número 12 </p>\r\n<p class="p2">Aplicar as penas da alínea e) do n º 1 do Artigo 78º. . </p>\r\n<p class="p2"> </p>\r\n<p class="p2">Artigo 33º </p>\r\n<p class="p2">Todas as deliberações da Assembleia Geral serão válidas quando tomadas por maioria de votos, excepto as que respeitam ao n º 4 do Art.º. anterior, que exigirão voto afirmativo de 2/3 dos Sócios efectivos presentes e a convocação expressamente para esse fim. </p>\r\n<p class="p2"> </p>\r\n<p class="p2">Artigo 34º </p>\r\n<p class="p2">Número 1 </p>\r\n<p class="p2">As reuniões da Assembleia Geral são Ordinárias e Extraordinárias, processando-se nos termos e para os efeitos determinados no Regulamento Geral Interno, e delas se lavrará a acta no respectivo livro. </p>\r\n<p class="p2">Número 2 </p>\r\n<p class="p2">As reuniões Ordinárias ou de caracter obrigatório, são aquelas que se realizam em épocas pré - fixadas e para os fins previstos neste Regulamento Geral Interno. Todas as demais são Extraordinárias. </p>\r\n<p class="p2"> </p>\r\n<p class="p2">Artigo 35º</p>\r\n<p class="p2">As reuniões Ordinárias da Assembleia Geral serão sempre convocadas pelo Presidente da Mesa e terão lugar: </p>\r\n<p class="p6">a) Anualmente no primeiro trimestre de cada ano civil, para apreciar e votar o Relatório das actividades do Clube e as Contas do Exercício relativos ao ano anterior, apresentados pela Direcção, bem como Parecer que, a seu respeito, for dado pelo Conselho Fiscal; </p>\r\n<p class="p2">b) Em Janeiro último de cada biénio, para a eleição dos membros dos Órgãos Sociais: Direcção; Conselho Fiscal e para a Mesa da Assembleia Geral. </p>\r\n<p class="p7"> </p>\r\n<p class="p2">Artigo 36º </p>\r\n<p class="p2">As reuniões Extraordinárias da Assembleia Geral são convocadas pelo Presidente da Mesa, por sua iniciativa, ou a pedido da Direcção, do Conselho Fiscal, ou de um quinto dos Sócios efectivos no pleno gozo dos seus direitos nos termos expressamente consignados neste Regulamento Geral Interno. </p>\r\n<p class="p2"> </p>\r\n<p class="p2">Artigo 37º </p>\r\n<p class="p2">Número 1 </p>\r\n<p class="p2">Será nula a reunião da Assembleia Geral convocada ou que funcione em contravenção das normas Estatutárias ou Regulamentares, sendo de nenhum efeito as suas deliberações. </p>\r\n<p class="p2">Número 2 </p>\r\n<p class="p2">A declaração de nulidade poderá ser pedida no decurso da própria reunião, com indicação imediata dos preceitos infringidos. </p>\r\n<p class="p2">Número 3 </p>\r\n<p class="p2">Neste caso, competirá ao Presidente da Mesa apreciar a nulidade invocada, cabendo-lhe decidir se a mesma é ou não insanável. Em caso afirmativo, proclamará nula e de nenhum o que haja sido deliberado. Em caso negativo, a reunião, prosseguirá, mas é reconhecido a qualquer associado participante na reunião, o direito de tentar obter judicialmente, a impugnação das deliberações que sejam tomadas. </p>\r\n<p class="p2"> </p>\r\n<p class="p2">Artigo 38º </p>\r\n<p class="p2">Número 1</p>\r\n<p class="p2">Nas reuniões da Assembleia Geral, tanto Ordinárias como Extraordinárias apenas podem ser tomadas deliberações sobre assuntos que façam parte da Ordem de Trabalhos, excepto de qualquer voto de pesar, congratulação ou louvor. </p>\r\n<p class="p2">Número 2 </p>\r\n<p class="p2">Nas reuniões da Assembleia Geral, pode o Presidente da Mesa, conceder por um período de tempo limitado, durante o qual poderão ser apresentados assuntos estranhos à Ordem de trabalhos mas sem carácter deliberativo. </p>\r\n<p class="p2"> </p>\r\n<p class="p2">Artigo 39º </p>\r\n<p class="p2">O Presidente da Mesa, perante motivo justificado, pode suspender os trabalhos, marcando, desde logo, a data da sua continuação. </p>\r\n<p class="p2"> </p>\r\n<p class="p2">Artigo 40º </p>\r\n<p class="p2">Número 1 </p>\r\n<p class="p2">As deliberações da Assembleia Geral serão tomadas por maioria absoluta de votos que correspondem aos votantes. </p>\r\n<p class="p2">Número 2 </p>\r\n<p class="p2">Quando não tiver sido obtida a maioria absoluta, as deliberações serão tomadas, em segunda votação, pela maioria então verificada. </p>\r\n<p class="p2"> </p>\r\n<p class="p2">Artigo 41 </p>\r\n<p class="p2">Nas eleições dos Órgãos Sociais, os resultados serão obtidos através de um só escrutínio, considerando-se, porém, os estabelecido nos números seguintes: </p>\r\n<p class="p2">Número 1 </p>\r\n<p class="p2">Se houver mais de uma lista concorrente, será eleita a que for mais votada. </p>\r\n<p class="p2">Número 2 </p>\r\n<p class="p2">Se houver apenas uma lista concorrente, a eleição só se concretizará se na votação for obtida a maioria absoluta dos votos apurados, salvo se se tratar de uma lista de reeleição de Órgãos Sociais, que acabaram o seu exercício e que se estejam de novo a candidatar. </p>\r\n<p class="p2">Número 3 </p>\r\n<p class="p2">Neste caso, a reeleição será válida qualquer que seja o número de votos.</p>\r\n<p class="p1"> </p>\r\n<p class="p2">Artigo 42º </p>\r\n<p class="p2">A participação dos Sócios nas reuniões da Assembleia Geral, é pessoal, não podendo, em caso algum o Sócio fazer-se representar. </p>\r\n<p class="p2"> </p>\r\n<p class="p2">Artigo 43º </p>\r\n<p class="p2">Todas as situações criadas no decurso de qualquer reunião da Assembleia Geral, envolvendo aspectos não instituídos ou regulamentados, serão resolvidos pela própria Assembleia, sob proposta do Presidente da mesma. </p>\r\n<p class="p2"> </p>\r\n<p class="p2">Artigo 44º </p>\r\n<p class="p2">A Mesa da Assembleia é composta por um Presidente, Vice - Presidente e um Secretário, eleitos Bienalmente, competindo-lhes a convocação e direcção dos trabalhos da Assembleia Geral, elaboração e assinaturas das actas, fiscalização e cumprimento das disposições e resolução nela tomados, comunicar aos interessados as deliberações aprovadas e investir os Sócios, eleitos nas funções dentro do prazo máximo de oito dias após a sua eleição. </p>\r\n<p class="p2"> </p>\r\n<p class="p2">Artigo 45º </p>\r\n<p class="p2">Na falta ou impedimento do Presidente da Mesa da Assembleia Geral, desempenhará as suas funções o Vice - Presidente, designando a Assembleia Geral outro Sócio que substitua este. </p>\r\n<p class="p2"> </p>\r\n<p class="p2">Artigo 46º </p>\r\n<p class="p2">Número 1 </p>\r\n<p class="p2">O Presidente da Mesa da Assembleia Geral é a figura maior do Clube Desportivo do Arneiro, como representante do areópago associativo, pertence-lhe, por direito próprio, o primeiro lugar, sempre que esteja presente em qualquer manifestação da vida do Clube. </p>\r\n<p class="p2">Número 2 </p>\r\n<p class="p2">O Presidente da Mesa da Assembleia Geral, é o garante da legalidade dentro do Clube, cumprirá e fará cumprir, com todo o rigor, os preceitos Estatutários e Regulamentares, tornando-se o maior responsável por todas as ilegalidades cometidas, se delas tendo tomado conhecimento, não houver providenciado o que, nas circunstâncias, se impunha.</p>\r\n<p class="p1"> </p>\r\n<p class="p1"> </p>\r\n<p class="p2">CAPITULO VII </p>\r\n<p class="p2">Direcção </p>\r\n<p class="p2"> </p>\r\n<p class="p2">Artigo 47º </p>\r\n<p class="p2">Número 1 </p>\r\n<p class="p2">A administração e superintendência de todos os serviços do Clube, pertencem à Direcção eleita e investida, para isso, de plenos poderes, na Assembleia Geral em sessão Ordinária, ou de harmonia com o número 2 do Art.º. 24º.. </p>\r\n<p class="p2">Número 2 </p>\r\n<p class="p2">O Clube Desportivo do Arneiro é dirigido e administrado por uma Direcção, composta de: Presidente, Vice - Presidente, 1º Secretário, 2º Secretário, Tesoureiro e dois Vogais eleitos anualmente. </p>\r\n<p class="p2">Número 3 </p>\r\n<p class="p2">Além dos membros efectivos, serão eleitos mais três suplentes, que passarão a efectivos, por falecimento, demissão, ausência prolongada ou suspensão dos membros efectivos, ocupando o lugar que a Direcção achar mais conveniente, à excepção do número seguinte. </p>\r\n<p class="p2">Número 4 </p>\r\n<p class="p2">Na falta do Presidente pelos motivos do número anterior, os suplentes não podem ocupar o lugar do Presidente, passando o Vice - Presidente a ocupar interinamente as funções de Presidente até ao fim do seu mandato. </p>\r\n<p class="p2">Número 5 </p>\r\n<p class="p2">No caso do Vice - Presidente não aceitar interinamente as funções de Presidente, convocará uma Assembleia Geral para a eleição de um Presidente da Direcção, num prazo máximo de trinta dias após confirmação da ausência do Presidente nos termos do n º. 3 deste Artigo. </p>\r\n<p class="p2"> </p>\r\n<p class="p2">Artigo 48º </p>\r\n<p class="p2">Compete à Direcção </p>\r\n<p class="p2">Número 1 </p>\r\n<p class="p2">Representar o Clube em todos os actos da vida social, administrar os seus negócios, cumprir e fazer cumprir os Estatutos e demais Regulamentos, nomear e  demitir empregados e promover por todos os meios ao seu alcance a prosperidade e bom nome do Clube. </p>\r\n<p class="p2">Número 2 </p>\r\n<p class="p2">Dar cumprimento ao previsto no n º. 1 do Art.º. 78 do Regulamento Geral, á excepção da alínea e) </p>\r\n<p class="p2">Número 3 </p>\r\n<p class="p2">Reunir sempre que seja preciso, tendo pelo menos uma reunião semanal. </p>\r\n<p class="p2">Número 4 </p>\r\n<p class="p2">Responder pela conservação do mobiliário do Clube e de todos os seus valores dos quais deverá ter inventário sempre em dia. </p>\r\n<p class="p2">Número 5 </p>\r\n<p class="p2">Apresentar, conforme o disposto na alínea a) do Art.º. 35º. o Relatório e as Contas da sua Gerência, que estarão patentes aos Sócios três dias antes da Assembleia Geral em que sejam apresentados. </p>\r\n<p class="p2">Número 6 </p>\r\n<p class="p2">Requerer do Presidente da Assembleia Geral a convocação Extraordinária da Mesa, sempre que o julgue necessário. </p>\r\n<p class="p2">Número 7 </p>\r\n<p class="p2">Resolver os casos omissos cuja solução imediata não permita recorrer à Assembleia Geral. </p>\r\n<p class="p2">Número 8 </p>\r\n<p class="p2">Fornecer ao Conselho Fiscal todos os esclarecimentos que por este lhe forem solicitados, apresentando-lhe mensalmente as contas, documentos de receita e de despesa, saldos de caixa, bem como respectivo balancete. </p>\r\n<p class="p2">Número 9 </p>\r\n<p class="p2">Autorizar a participação do Clube, por intermédio dos seus elementos representativos, em quaisquer festivais desportivos ou de beneficência, acautelando devidamente os interesses morais e materiais do Clube. </p>\r\n<p class="p2">Número 10</p>\r\n<p class="p2">Autorizar a utilização do Clube para quaisquer provas organizadas por outras entidades, ou para festas promovidas pelos Sócios com mais de um ano filiação associativa. </p>\r\n<p class="p2">Número 11 </p>\r\n<p class="p2">Nomear Sócios para auxiliar a Direcção. </p>\r\n<p class="p2">Número 12 </p>\r\n<p class="p2">Aprovar, rejeitar ou anular a admissão de Sócios. </p>\r\n<p class="p2">Número 13 </p>\r\n<p class="p2">Propor à Assembleia Geral, a fixação ou alteração de quotas e quaisquer outras contribuições associativas. </p>\r\n<p class="p2">Número 14 </p>\r\n<p class="p2">Solicitar a convocação da Assembleia Geral ou do Plenário dos Órgãos Sociais. </p>\r\n<p class="p2">Número 15 </p>\r\n<p class="p2">Fomentar o desenvolvimento da Iniciação Desportiva e de outras iniciativas tendentes a proporcionar às camadas juvenis e aos filhos dos Sócios em especial, a aprendizagem desportiva, de forma a criar bases de apetrechamento das equipas representativas do Clube Desportivo do Arneiro. </p>\r\n<p class="p2">Número 16 </p>\r\n<p class="p2">Dispensar os Sócios do pagamento de quotas e de outras contribuições obrigatórias, nos casos previstos no Regulamento Geral Interno. </p>\r\n<p class="p2">Número 17 </p>\r\n<p class="p2">Solicitar pareceres ao Conselho Fiscal e ao Plenário dos Órgãos Sociais. </p>\r\n<p class="p2">Número 18 </p>\r\n<p class="p2">Elaborar Regulamentos especiais que se mostrem necessários à vida do Clube. </p>\r\n<p class="p2">Número 19 </p>\r\n<p class="p2">Nomear de entre Sócios Efectivos, com mais de cinco anos de filiação associativa, as Comissões e colaboradores que julgue conveniente para a boa execução das actividades do Clube. </p>\r\n<p class="p2">Número 20  </p>\r\n<p class="p2">Determinar a suspensão preventiva de Sócios ou atletas, em caso de infracção disciplinar. </p>\r\n<p class="p2">Número 21 </p>\r\n<p class="p2">Facultar ao exame dos Sócios, as contas, os documentos e os livros relativos às actividades do Clube, dentro do prazo estabelecido na alínea f) do n º 1 do Artigo 14º. </p>\r\n<p class="p2">Número 22 </p>\r\n<p class="p2">Comparecer a todas as reuniões da Assembleia Geral e do Plenário dos Órgãos Sociais, para prestar os esclarecimentos e fornecer os elementos inerentes à sua actividade. </p>\r\n<p class="p2"> </p>\r\n<p class="p2">Artigo 49º </p>\r\n<p class="p2">Número 1 </p>\r\n<p class="p2">A Direcção quando reunida, tanto em sessões ordinárias como extraordinárias, não pode tomar qualquer deliberação se não estiverem presentes a maioria absoluta dos seus membros, incluindo os suplentes. </p>\r\n<p class="p2">Número 2 </p>\r\n<p class="p2">Os auxiliares da Direcção, embora presentes, não contam para o número anterior e nem têm direito a voto em qualquer reunião de Direcção. </p>\r\n<p class="p2"> </p>\r\n<p class="p2">Artigo 50º </p>\r\n<p class="p2">A Direcção não pode tomar deliberações, para além do seu mandato, que envolvam responsabilidades financeiras superiores a 10% da receita bruta mensal. </p>\r\n<p class="p2">Artigo 51º </p>\r\n<p class="p2">Número 1 </p>\r\n<p class="p2">A Direcção não pode promover a celebração ou prorrogação de qualquer contrato, cuja a validade termine para além do prazo do seu mandato, salvo se da mesma resultarem benefícios para o Clube, circunstância de que terá ser feita prova bastante. </p>\r\n<p class="p2">Número 2 </p>\r\n<p class="p2">A prova referida na parte final do número anterior será dispensada, se o contrato a celebrar ou a prorrogar respeitar à actividade desportiva do Clube. </p>\r\n<p class="p1"> </p>\r\n<p class="p2">Artigo 52º </p>\r\n<p class="p2">Número 1 </p>\r\n<p class="p2">Pode o Clube, quando obrigado a indemnização por prejuízos resultantes de deliberação directa, violando as normas Estatutárias e Regulamentares ou não cumprindo as obrigações assumidas, exercer o direito de regresso contra a Direcção para o reembolso da indemnização prestada. </p>\r\n<p class="p2">Número 2 </p>\r\n<p class="p2">Compete ao Presidente da Mesa da Assembleia Geral tomar as providências necessárias à execução do estabelecido no número anterior, convocando uma reunião extraordinária da assembleia Geral, onde a proposta respectiva será objecto de votação nominal. </p>\r\n<p class="p2"> </p>\r\n<p class="p2">Artigo 53º </p>\r\n<p class="p2">Os documentos e contratos que obriguem o Clube, exigem, pelo menos , a assinatura de dois directores efectivos, os quais serão designados, para os diversos efeitos pelo Regulamento Geral. </p>\r\n<p class="p2"> </p>\r\n<p class="p2">Artigo 54º </p>\r\n<p class="p2">Ao Presidente da Direcção Compete em especial: </p>\r\n<p class="p2">Número 1 </p>\r\n<p class="p2">Orientar as acções da Direcção, dirigir os seus trabalhos, abrir e encerrar as reuniões da mesma. </p>\r\n<p class="p2">Número 2 </p>\r\n<p class="p2">Convocar as reuniões extraordinárias da Direcção e da Assembleia Geral, quando julgue necessário ou lhe seja requerida pelos membros do Conselho Fiscal. </p>\r\n<p class="p2">Número 3 </p>\r\n<p class="p2">Superintender em todo o movimento do Clube. </p>\r\n<p class="p2">Número 4 </p>\r\n<p class="p2">Assinar as actas das sessões a que compareça. </p>\r\n<p class="p2">Número 5 </p>\r\n<p class="p2">Assinar com o Tesoureiro todos os cheques e ordens de pagamento.</p>\r\n<p class="p1"> Número 6 </p>\r\n<p class="p2">Lançar despachos nos requerimentos dirigidos à Direcção. </p>\r\n<p class="p2"> </p>\r\n<p class="p2">Artigo 55º </p>\r\n<p class="p2">O Presidente da Direcção tem direito a voto como qualquer director e para além deste, tem ainda mais um voto de qualidade, que lhe permite desempatar, quando a votação se encontrar em situação de igualdade. </p>\r\n<p class="p2"> </p>\r\n<p class="p2">Artigo 56º </p>\r\n<p class="p2">Número 1 </p>\r\n<p class="p2">Ao Vice - Presidente da direcção compete auxiliar o Presidente nas suas funções e substituí-lo nos seus impedimentos. </p>\r\n<p class="p2">Número 2 </p>\r\n<p class="p2">Presidir às reuniões de direcção, na ausência do Presidente e delegado por este. </p>\r\n<p class="p2">Número 3 </p>\r\n<p class="p2">Ao Vice - Presidente não é conferido voto de qualidade. </p>\r\n<p class="p2"> </p>\r\n<p class="p2">Artigo 57º </p>\r\n<p class="p2">Compete ao 1º Secretário: </p>\r\n<p class="p2">Número 1 </p>\r\n<p class="p2">Preparar todo o expediente e dar dele conhecimento à Presidência. </p>\r\n<p class="p2">Número 2 </p>\r\n<p class="p2">Superintender no movimento da secretaria, assinar toda a correspondência a expedir pela Direcção, dirigir a escrituração dos livros do Clube e cuidar do arquivo de correspondência recebida e expedida. </p>\r\n<p class="p2">Número 3 </p>\r\n<p class="p2">Lavrar as actas das reuniões de Direcção e assiná-las com o Presidente. </p>\r\n<p class="p2">Número 4 </p>\r\n<p class="p2">Assinar com o tesoureiro os balancetes mensais e visar todos os documentos de receita e despesa.</p>\r\n<p class="p1"> </p>\r\n<p class="p2">Artigo 58º </p>\r\n<p class="p2">Compete ao 2º Secretário: </p>\r\n<p class="p2">Número 1 </p>\r\n<p class="p2">Coadjuvar e substituir o 1º Secretário , em todas as funções. </p>\r\n<p class="p2">Artigo 59º </p>\r\n<p class="p2">Compete ao Tesoureiro: </p>\r\n<p class="p2">Número 1 </p>\r\n<p class="p2">Tomar conta de todas de todas as receitas do Clube e fazer a despesa autorizada, assinando com o Presidente todos os cheques e ordens de pagamento. </p>\r\n<p class="p2">Número 2 </p>\r\n<p class="p2">Depositar no Banco em que o Clube tenha conta, as quantias que sejam necessárias para fazer façe às despesas Gerais do Clube. </p>\r\n<p class="p2">Número3 </p>\r\n<p class="p2">Assinar com o 1º Secretário os balancetes mensais. </p>\r\n<p class="p2"> </p>\r\n<p class="p2">Artigo 60º </p>\r\n<p class="p2">Aos Vogais compete auxiliar os trabalhos dos restantes membros da Direcção e substituir cada um deles nos seus impedimentos temporários. </p>\r\n<p class="p2"> </p>\r\n<p class="p2">Artigo 61º </p>\r\n<p class="p2">Número 1 </p>\r\n<p class="p2">A Direcção organizará um ficheiro individual dos Sócios, onde serão inscritos todos os dados biográficos e referentes à sua actividade associativa. </p>\r\n<p class="p2">Número 2 </p>\r\n<p class="p2">O ficheiro deve estar rigorosamente por ordem alfabética, e cada ficha deverá conter uma fotografia do associado. </p>\r\n<p class="p2"> </p>\r\n<p class="p2"> </p>\r\n<p class="p2">CAPITULO VIII </p>\r\n<p class="p2">Do Conselho Fiscal</p>\r\n<p class="p2"> </p>\r\n<p class="p2">Artigo 62º </p>\r\n<p class="p2">Número 1 </p>\r\n<p class="p2">Para assegurar a fiscalização da actividade do Clube e velar para o mandato directivo se conduza sempre em estrita obediência aos Estatutos e Regulamento Geral, bem como às deliberações da Assembleia Geral do Clube Desportivo do Arneiro, disporá de um Conselho Fiscal composto de: Presidente, Relator e um Vogal. </p>\r\n<p class="p2">Número 2 </p>\r\n<p class="p2">O cargo de Relator será preenchido por um associado com preparação adequada à função que irá desempenhar. </p>\r\n<p class="p2"> </p>\r\n<p class="p2">Artigo 63º </p>\r\n<p class="p2">No exercício das suas funções, compete ao Conselho Fiscal: </p>\r\n<p class="p6">a) Fiscalizar os actos administrativos e financeiros da Direcção. </p>\r\n<p class="p6">b) Conferir os saldos do caixa e os balancetes mensais de receita e despesa, verificando os documentos, e se as despesas estão devidamente autorizadas em reunião de Direcção; </p>\r\n<p class="p6">c) Pedir a convocação de uma Assembleia Geral Extraordinária, quando o julgue necessário; </p>\r\n<p class="p6">d) Comparecer às reuniões de Direcção, quando solicitada a sua presença; </p>\r\n<p class="p6">e) Dar parecer sobre propostas para a realização de obras, apresentadas à Direcção em consequência de processo de concurso ou de consultas; </p>\r\n<p class="p2">f) Dar parecer sobre as restantes actividades do Clube, não compreendidas no âmbito de competência de outro Órgão Social, sempre que tal lhe seja solicitado;  </p>\r\n<p class="p2">Número 2 </p>\r\n<p class="p2">O Conselho Fiscal, para ressalva da sua responsabilidade, poderá fazer declaração expressa da sua não identificação com propostas ou contratos, sobre os quais lhe competia dar parecer nos termos da alínea e) do número anterior, mas que não lhe foram submetidas.</p>\r\n<p class="p2"> </p>\r\n<p class="p2">Artigo 64º </p>\r\n<p class="p2">O Conselho Fiscal, representado pelo Presidente, Relator e Vogal, reunirá uma vez em cada trimestre, com a Direcção, representada pelo Presidente, Tesoureiro e 1º Secretário, para apreciar os balancetes da contabilidade e as contas resultantes da execução da contabilidade, da qual será lavrada em acta em livro próprio. </p>\r\n<p class="p2">Artigo 65º </p>\r\n<p class="p2">O Conselho Fiscal é solidariamente responsável com o infractor pelas respectivas irregularidades se delas tiver conhecimento, e não adoptar as providências adequadas. </p>\r\n<p class="p2"> </p>\r\n<p class="p2"> </p>\r\n<p class="p2">CAPITULO IX </p>\r\n<p class="p2">Actividades do Clube - Disposições Comuns </p>\r\n<p class="p2"> </p>\r\n<p class="p2">Artigo 66º </p>\r\n<p class="p2">Número 1 </p>\r\n<p class="p2">As actividades do Clube Desportivo do Arneiro serão sempre exercidas e orientadas em harmonia com os seus fins, por forma a que delas resulte prestígio e glória para o Clube, e justificado orgulho para os Sócios. </p>\r\n<p class="p2">Número 2 </p>\r\n<p class="p2">No âmbito dos seus fins e em ordem à realização destes no plano social o Clube Desportivo do Arneiro procurará, pelos meios mais adequados, criar, fortalecer entre os seus associados, o espirito de solidariedade. </p>\r\n<p class="p2"> </p>\r\n<p class="p2">Artigo 67º </p>\r\n<p class="p2">Actividade Desportiva </p>\r\n<p class="p2">A actividade desportiva abrange todas as modalidades destinadas à prática da Educação Física e do Desporto. </p>\r\n<p class="p2"> </p>\r\n<p class="p2">Artigo 68º </p>\r\n<p class="p2">Número 1 </p>\r\n<p class="p2">As modalidades desportivas organizam-se por secções. </p>\r\n<p class="p2">Número 2  </p>\r\n<p class="p2">A Direcção poderá confiar a orientação e a responsabilidade imediata das secções previstas no número anterior, a comissões, com a constituição, competências e funcionamento que os regulamentos fixarem. </p>\r\n<p class="p2">Número 3 </p>\r\n<p class="p2">Às comissões nomeadas no número anterior, compete: </p>\r\n<p class="p6">a) Dirigir as instalações desportivas em harmonia com as necessidades; </p>\r\n<p class="p2">b) Fazer cumprir os Estatutos e Regulamentos no que se relaciona com a utilização das instalações a seu cargo; </p>\r\n<p class="p7"> c) Entregar semanalmente ao Tesoureiro os rendimentos de qualquer fonte de receita, mantendo em ordem as respectivas contas; </p>\r\n<p class="p6">d) Manter em dia o inventário dos artigos existentes na sede, de forma a poder fazer-se uma rápida verificação quando a Direcção o julgue conveniente; </p>\r\n<p class="p2">e) Estudar e propor os melhoramentos que julgue mais convenientes para maior eficiência e comodidade, às instalações ou para lhes aumentar o rendimento de carácter económico e desportivo. </p>\r\n<p class="p7"> </p>\r\n<p class="p2">Artigo 69º </p>\r\n<p class="p2">A actividade desportiva, alargar-se-á, sempre que possível, às novas modalidades que forem surgindo no campo da Educação Física e do Desporto. </p>\r\n<p class="p2"> </p>\r\n<p class="p2">Artigo 70º </p>\r\n<p class="p2">Actividade Cultural e Recreativa </p>\r\n<p class="p2">As actividades cultural e recreativa do Clube Desportivo do Arneiro, abrangem as modalidades que a Direcção em ordem a dar ampla satisfação à cultura e ao recreio dos Sócios. </p>\r\n<p class="p2"> </p>\r\n<p class="p2">Artigo 71º </p>\r\n<p class="p2">A Direcção poderá criar secções para as diferentes modalidades previstas no artigo anterior e designar, para as dirigir e orientar, comissões com a constituição, competência e funcionamento que os Regulamentos fixarem e nas condições das alíneas a), b), c), d), e e) do Artigo 68º.</p>\r\n<p class="p2"> </p>\r\n<p class="p2">Artigo 72º </p>\r\n<p class="p2">Actividade administrativa </p>\r\n<p class="p2">A actividade administrativa, compreende os serviços de Secretaria, Tesouraria e de Contabilidade. </p>\r\n<p class="p2"> </p>\r\n<p class="p2">Artigo 73º </p>\r\n<p class="p2">A actividade Administrativa processar-se-á em ordem a uma cada vez mais perfeita realização dos fins do Clube, devendo, sempre, que possível, ser dada prioridade a todos os investimentos que visem as práticas, Desportiva, Recreativa e Cultural dos Sócios. </p>\r\n<p class="p2"> </p>\r\n<p class="p2"> </p>\r\n<p class="p2">CAPITULO X </p>\r\n<p class="p2">Da Insígnia, Pavilhão, Equipa e Distintivo </p>\r\n<p class="p2"> </p>\r\n<p class="p2">Artigo 74º </p>\r\n<p class="p2">A Insígnia do Clube Consta de um escudo triangular, uma bordadura a duas cores, sendo uma azul e outra grená, ao centro a ocupar o centro vazio, as iniciais "CDA". </p>\r\n<p class="p2"> </p>\r\n<p class="p2">Artigo 75º </p>\r\n<p class="p2">O Pavilhão é rectangular de fundo grená e azul tendo ao centro a insígnia do Clube, circundada com as iniciais do "CDA". </p>\r\n<p class="p2"> </p>\r\n<p class="p2">Artigo 76º </p>\r\n<p class="p2">Número 1 </p>\r\n<p class="p2">A Direcção fixará e dará conhecimento à Assembleia Geral, das equipas e demais distintivos do Clube, para cada modalidade desportiva, que terão por base as cores grená e azul. </p>\r\n<p class="p2">Número 2 </p>\r\n<p class="p2">É terminantemente proibido a qualquer Sócio envergar ou fazer uso de qualquer equipamento a que não tenha direito e fora de qualquer prova em que o Clube se faça representar oficialmente. </p>\r\n<p class="p2">Número 3 </p>\r\n<p class="p2">O Clube Desportivo do Arneiro adopta como divisa " ALMA SÃ EM CORPO SÃO ".</p>\r\n<p class="p1"> </p>\r\n<p class="p2"> </p>\r\n<p class="p2">CAPITULO XI </p>\r\n<p class="p2">Disciplina </p>\r\n<p class="p2"> </p>\r\n<p class="p2">Artigo 77º </p>\r\n<p class="p2">Os Sócios do Clube Desportivo do Arneiro, seus atletas e empregados, estão sujeitos ao poder disciplinar. </p>\r\n<p class="p2"> </p>\r\n<p class="p2">Artigo 78º </p>\r\n<p class="p2">Número 1 </p>\r\n<p class="p2">As infracções disciplinares, que consistem na violação dos preceitos Estatutários e Regulamentos, serão punidas, conforme a sua gravidade, com as seguintes penas: </p>\r\n<p class="p6">a) Admoestação; </p>\r\n<p class="p6">b) Repreensão Registada; </p>\r\n<p class="p6">c) Suspensão até 30 dias; </p>\r\n<p class="p6">d) Suspensão de 30 dias a um ano; </p>\r\n<p class="p2">e) Expulsão. </p>\r\n<p class="p2">Número 2 </p>\r\n<p class="p2">A aplicação de qualquer das penas referidas no número anterior, podem ser acompanhadas da indemnização devida pelos prejuízos causados ao Clube. </p>\r\n<p class="p2">Número 3 </p>\r\n<p class="p2">São circunstâncias atenuantes: </p>\r\n<p class="p6">a) O registo disciplinar isento de qualquer pena; </p>\r\n<p class="p6">b) Os serviços relevantes prestados ao Clube; </p>\r\n<p class="p2">c) Em geral, qualquer facto que diminua a responsabilidade do infractor. </p>\r\n<p class="p2">Número 4 </p>\r\n<p class="p2">São Circunstâncias agravantes unicamente: </p>\r\n<p class="p9">a) A qualidade do membro dos Órgãos Sociais ou de colaboradores nomeados por qualquer deles; </p>\r\n<p class="p9">b) A reincidência; </p>\r\n<p class="p9">c) A acumulação de infracções; </p>\r\n<p class="p9">d) A premeditação; </p>\r\n<p class="p2">e) O resultar da infracção, desprestigio público para o Clube Desportivo do Arneiro.  </p>\r\n<p class="p2">Número 5 </p>\r\n<p class="p2">Qualquer pena é da competência da Direcção, salvo a prevista na alínea e) do n º 1 do Art.º 78º, que será julgada em Assembleia Geral Ordinária. </p>\r\n<p class="p2">Número 6 </p>\r\n<p class="p2">De qualquer castigo imposto pela Direcção, cabe recurso, para Assembleia Geral, tendo o Sócio castigado o direito de tomar parte na Assembleia Geral que o seu caso for apreciado. </p>\r\n<p class="p2"> </p>\r\n<p class="p2">Artigo 79º </p>\r\n<p class="p2">A falta de cumprimento do estabelecido no parágrafo 1º do n º 2 do Art.º 15º, serão aplicadas, nas condições estabelecidas no Regulamento Geral Interno, as seguintes penas: </p>\r\n<p class="p2">a) Suspensão simples; </p>\r\n<p class="p2">b) Eliminação </p>\r\n<p class="p2"> </p>\r\n<p class="p2">Artigo 80º </p>\r\n<p class="p2">Durante o espaço de tempo em que o Sócio estiver sujeito às penas previstas nas alíneas c) a e) do n º 1 do Art.º 78º não pode gozar nenhum dos seus direitos, não lhe sendo cobradas quotas. </p>\r\n<p class="p2"> </p>\r\n<p class="p2">Artigo 81 </p>\r\n<p class="p2">A disciplina dos atletas e empregados do Clube constará nos respectivos Regulamentos, Contratos e legislação aplicável. </p>\r\n<p class="p2"> </p>\r\n<p class="p2"> </p>\r\n<p class="p2">CAPITULO XII </p>\r\n<p class="p2">Distinções Honoríficas </p>\r\n<p class="p2"> </p>\r\n<p class="p2">Artigo 82º </p>\r\n<p class="p2">Para premiar os bons serviços, a dedicação e o mérito associativo e desportivo, o Clube institui as seguintes distinções honoríficas: </p>\r\n<p class="p6">a) Emblema de Ouro; </p>\r\n<p class="p6">b) Emblema de Prata; </p>\r\n<p class="p6">c) Título de Sócio de Mérito; </p>\r\n<p class="p6">d) Título de Sócio Benemérito; </p>\r\n<p class="p6">e) Medalha de Mérito Social e Desportivo; </p>\r\n<p class="p6">f) Medalha de Honra; </p>\r\n<p class="p2">g) Medalha de Prata. </p>\r\n<p class="p7"> </p>\r\n<p class="p2">Artigo 83 </p>\r\n<p class="p2">A concessão de qualquer distinção honorífica, visa exclusivamente galardoar, premiar ou recompensar o Sócio, não produzindo qualquer outros efeitos salvo o referido na alínea b) do n º 3 do Art.º 78º. </p>\r\n<p class="p2"> </p>\r\n<p class="p2">Artigo 84º </p>\r\n<p class="p2">As distinções previstas nas alíneas a) e b) do Art.º 82º serão atribuídas aos Sócios, respectivamente com 50 anos e 25 anos de filiação associativa, sem qualquer interrupção, e são da competência da Direcção. </p>\r\n<p class="p2"> </p>\r\n<p class="p2">Artigo 85º </p>\r\n<p class="p2">A concessão das distinções honoríficas das alíneas c) a g) do Art. 82º, é da competência da Assembleia Geral. </p>\r\n<p class="p2"> </p>\r\n<p class="p2">Artigo 86º </p>\r\n<p class="p2">As distinções honoríficas poderão ser concedidas a titulo póstumo. </p>\r\n<p class="p2"> </p>\r\n<p class="p2">Artigo 87º </p>\r\n<p class="p2">Número 1 </p>\r\n<p class="p2">Ao Sócio distinguido ser-lhe-á retirada a respectiva distinção honorífica quando: </p>\r\n<p class="p6">a) Peça a demissão de Sócio; </p>\r\n<p class="p6">b) Seja eliminado ou expulso; </p>\r\n<p class="p2">c) Se revele posteriormente à concessão, indigno da sua posse. </p>\r\n<p class="p7"> Número 2  </p>\r\n<p class="p2">Não é permitida, em caso algum, a recuperação das distinções honoríficas que hajam sido retiradas nos termos do número anterior. </p>\r\n<p class="p2">Número 3 </p>\r\n<p class="p2">A retirada de qualquer distinção honorífica é da competência do Órgão Social que a tiver concedido. </p>\r\n<p class="p2"> </p>\r\n<p class="p2"> </p>\r\n<p class="p2">CAPITULO XIII </p>\r\n<p class="p2">Instalações Sociais e Desportivas </p>\r\n<p class="p2"> </p>\r\n<p class="p2">Artigo 88º </p>\r\n<p class="p2">Consideram-se instalações sociais do Clube Desportivo do Arneiro, todas as edificações e recintos, onde se exerçam, sob jurisdição do Clube, as suas actividades. </p>\r\n<p class="p2"> </p>\r\n<p class="p2">Artigo 89º </p>\r\n<p class="p2">Sem prejuízo da utilização das instalações sociais e desportivas pelos atletas do Clube Desportivo do Arneiro, tanto em provas, como na sua preparação, será assegurada aos Sócios, quando possível, a frequência das mesmas. </p>\r\n<p class="p2"> </p>\r\n<p class="p2">Artigo 90º </p>\r\n<p class="p2">Para superintender na conservação das instalações sociais e desportivas, seu arranjo, utilização, administração e serviço, a Direcção, poderá designar colaboradores ou comissões com a constituição, competência e funcionamento, que os regulamentos fixarem. </p>\r\n<p class="p2"> </p>\r\n<p class="p2"> </p>\r\n<p class="p2">CAPITULO XIV </p>\r\n<p class="p2">Regime Patrimonial e Financeiro </p>\r\n<p class="p2"> </p>\r\n<p class="p2">Artigo 91º </p>\r\n<p class="p2">O património do Clube Desportivo do Arneiro é constituído por todos os bens corpóreos e incorpóreos que o Clube possua ou venha a possuir e é indivisível. </p>\r\n<p class="p2"> </p>\r\n<p class="p2">Artigo 92º </p>\r\n<p class="p2">Número 1 </p>\r\n<p class="p2">As receitas do Clube dividem-se em:</p>\r\n<p class="p6">a) Ordinárias; </p>\r\n<p class="p2">b) Extraordinárias. </p>\r\n<p class="p2">Número 2 </p>\r\n<p class="p2">Constituem receitas ordinárias: </p>\r\n<p class="p10">a) O produto de quotas, jóias, cartões de identidade, venda de Estatutos, de emblema, etc.; </p>\r\n<p class="p10">b) Juros ou rendimentos de valores do Clube; </p>\r\n<p class="p10">c) Rendimentos de actividades tais como, teatro, cinema, etc.; </p>\r\n<p class="p10">d) Rendimentos de publicidade feita nas instalações; </p>\r\n<p class="p10">e) Rendimentos de competições e actividades desportivas; </p>\r\n<p class="p10">f) Rendimentos de actividades de caracter recreativo; </p>\r\n<p class="p2">g) Outros rendimentos não especificados. </p>\r\n<p class="p2">Número 3 </p>\r\n<p class="p2">Constituem receitas extraordinárias: </p>\r\n<p class="p6">a) Subsídios e donativos em dinheiro; </p>\r\n<p class="p6">b) Receitas angariadas para fazer face às despesas extraordinárias; </p>\r\n<p class="p6">c) Alienação de bens patrimoniais e material usado ou dispensável; </p>\r\n<p class="p2">d) Indemnizações. </p>\r\n<p class="p2"> </p>\r\n<p class="p2">Artigo 93º </p>\r\n<p class="p2">Número 1 </p>\r\n<p class="p2">As receitas ordinárias destinam-se à satisfação da totalidade das despesas ordinárias, não podendo ser consignadas. </p>\r\n<p class="p2">Número 2 </p>\r\n<p class="p2">As receitas extraordinárias poderão ser consignadas à satisfação de despesas extraordinárias. </p>\r\n<p class="p2"> </p>\r\n<p class="p2"> </p>\r\n<p class="p2">CAPITULO XV </p>\r\n<p class="p2">Disposições Gerais e Transitórias </p>\r\n<p class="p2">Artigo 94º </p>\r\n<p class="p2">O ano social do Clube Desportivo do Arneiro coincide com o ano civil e a este será referida a Direcção e administração do Clube.</p>\r\n<p class="p1"> </p>\r\n<p class="p2">Artigo 95º </p>\r\n<p class="p2">Número 1 </p>\r\n<p class="p2">Na Assembleia Geral Ordinária para a eleição dos Corpos Gerentes, que coincida com o termo do mandato da Mesa da Assembleia Geral e que nessa mesma Assembleia não seja possível eleger-se elementos para formarem a Direcção e o Conselho Fiscal, os membros da Mesa da Assembleia Geral continuarão em funções para além do seu mandato, até à eleição dos elementos para formarem a Direcção e o Conselho Fiscal. </p>\r\n<p class="p2">Número 2 </p>\r\n<p class="p2">Após a eleição dos três Órgãos Sociais do Clube, por meio de Assembleia Geral Extraordinária, convocada pela Mesa, os elementos da Mesa da Assembleia do biénio anterior, cessam imediatamente as suas funções, salvo se forem reeleitos para o próximo biénio. </p>\r\n<p class="p2"> </p>\r\n<p class="p2">Artigo 96º </p>\r\n<p class="p2">A numeração respeitante aos Sócios, será actualizada de cinco em cinco anos, terminados em zero ou em cinco. Com a actualização da numeração dos Sócios, é obrigatória a substituição dos cartões de identidade de Sócio do Clube. </p>\r\n<p class="p2"> </p>\r\n<p class="p2">Artigo 97º </p>\r\n<p class="p2">Número 1 </p>\r\n<p class="p2">O Sócio com mais de cinco anos de filiação associativa e que seja reformado por invalidez ou velhice, poderá passar a ficar isento do pagamento de quotas, se se verificar em conjunto, as condições a seguir indicadas. de que deverá ser feita prova bastante: </p>\r\n<p class="p2">a) Apresentação do cartão da Caixa Nacional de Pensões ou de outro Organismo Oficial que ateste a reforma; </p>\r\n<p class="p2">b) Fotocópia do recibo da pensão social.  </p>\r\n<p class="p2">Número 2</p>\r\n<p class="p1">Os documentos constantes das alíneas a) e b) do número anterior, deverão ser acompanhadas por carta assinada pelo Sócio ou a seu rogo, a solicitar à Direcção a isenção do pagamento de quotas. </p>\r\n<p class="p2"> </p>\r\n<p class="p2">Artigo 98º </p>\r\n<p class="p2">Dentro das instalações do Clube Desportivo do Arneiro são rigorosamente proibidos todos os jogos ilícitos. </p>\r\n<p class="p2"> </p>\r\n<p class="p2">Artigo 99º </p>\r\n<p class="p2">É vedado aos sócios, angariar donativos com destino ao Clube, qualquer que seja o seu fim, sem prévia autorização da Direcção. </p>\r\n<p class="p2"> </p>\r\n<p class="p2">Artigo 100º </p>\r\n<p class="p2">Número 1 </p>\r\n<p class="p2">O Clube Desportivo do Arneiro só pode ser dissolvido por motivos de tal forma graves e insuperáveis que tornem impossível a realização dos seus fins. </p>\r\n<p class="p2">Número 2 </p>\r\n<p class="p2">A dissolução só poderá ser votada em reunião da Assembleia Geral, expressamente convocada para esse fim, e que só poderá funcionar com a presença da maioria absoluta dos Sócios existentes. </p>\r\n<p class="p2">Número 3 </p>\r\n<p class="p2">A deliberação da dissolução será tomada por votação nominal, terá de ser aprovada por quatro quintos dos Sócios que hajam assinado a respectivo livro de presenças. </p>\r\n<p class="p2">Número 4 </p>\r\n<p class="p2">Se a deliberação que votar a dissolução do Clube vier a ser impugnada em Juízo, a sua execução ficará suspensa até a respectiva decisão transite em julgado. </p>\r\n<p class="p2">Número 5 </p>\r\n<p class="p2">Sendo dissolvido o Clube Desportivo do Arneiro, os seus trofeus, prémios, recordações, registos, livros, arquivos e demais património desportivo, cultural e histórico, serão entregues à Câmara Municipal de Cascais, como sua fiel depositária, mediante auto, do qual constará a expressa proibição da sua alienação e ainda a obrigação de serem restituídos ao Clube Desportivo do Arneiro, se este voltar a reconstituir-se. </p>\r\n<p class="p2">Número 6 </p>\r\n<p class="p2">A restituição referida no número anterior só terá lugar se, na reconstituição do Clube Desportivo do Arneiro, se verificar a existência de idoneidade, afinidade, fins e tradições, que têm caracterizado e definido o clube, na sua gloriosa história e longa vivência, as quais se procurará salvaguardar para honra dos seus associados. </p>\r\n<p class="p2"> </p>\r\n<p class="p2">Artigo 101º </p>\r\n<p class="p2">São mantidas todas as condecorações honoríficas e demais regalias sociais concedidas aos Sócios que, à data da aprovação deste Regulamento Geral Interno, já possuíam. </p>\r\n<p class="p2"> </p>\r\n<p class="p2">Artigo 102º </p>\r\n<p class="p2">Este Regulamento Geral Interno constitui a lei fundamental do Clube Desportivo do Arneiro e revogam quaisquer outros, entrando imediatamente em vigor, após a sua aprovação. </p>\r\n<p class="p2"> </p>\r\n<p class="p2">Artigo 103º </p>\r\n<p>Os casos omissos neste Regulamento Geral Interno, serão resolvidos pela Assembleia Geral, de harmonia com a legislação em vigor. </p>', '', 1, 81, '2011-04-01 03:12:40', 32, '', '2016-11-04 05:55:37', 32, 0, '0000-00-00 00:00:00', '2011-04-01 03:12:40', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 9, 4, '', '', 1, 87, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');
INSERT INTO `j78lr_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(90, 198, 'Historial', 'layout-variation-left-center-right', '<p style="width: 940px; float: left; font-size: 13px; color: #141507; line-height: 19px; font-family: \'Century Gothic\', sans-serif; text-align: justify;">Em agosto de 1962 um grupo de amigos juntou-se e fundou aquele que viria a ser uma referência no associativismo desportivo da região de Cascais, o Clube Desportivo do Arneiro (CDA). A partir dessa data, consideraram-se sócios fundadores do Clube as seguintes personalidades: João Rodrigues de Almeida; António Faria, Francisco Fungão; Francisco Parreira e Alcindo Moreira. <br />Inicialmente, o Clube desenvolvia a sua actividade num dos quartos da casa do sócio nº 1 - João Rodrigues de Almeida, no Largo do Chafariz - Arneiro. Mais tarde, este mesmo sócio e a sua esposa, a Sra. Virgínia Rodrigues, cederam ao Clube o terreno onde está arquitectada a sede do CDA. Nos finais dos anos 70 (1976) a sede do Clube sofreu uma ampliação, passando de um para dois pisos, situação actual. Aquando desta ampliação foram muitas as individualidades que se comprometeram a direccionar os esforços num só sentido, através de trabalho e de ajuda monetária. <br />De entre muitas, destacam-se alguns nomes: - Eng. Francisco dos Anjos Diniz. - Francisco da Silva Santos - João Ribeiro Milheiro O Clube Desportivo do Arneiro, ao longo dos anos, tem desenvolvido várias actividades, nomeadamente nas áreas do Desporto, Cultura e Acção Social.</p>\r\n<p style="width: 940px; float: left; font-size: 13px; color: #141507; line-height: 19px; font-family: \'Century Gothic\', sans-serif;">Sócios Fundadores</p>\r\n<p style="width: 940px; float: left; font-size: 13px; color: #141507; line-height: 19px; font-family: \'Century Gothic\', sans-serif;">Da esquerda para a direita: Francisco Fungão, João Rodrigues de Almeida, Francisco Parreira, António Faria, Alcindo Moreira.</p>', '', 1, 81, '2011-04-01 03:13:33', 32, '', '2016-11-04 05:14:25', 32, 0, '0000-00-00 00:00:00', '2011-04-01 03:13:33', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 9, 3, '', '', 1, 175, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(91, 199, 'Orgãos Sociais 2016 - 2017', 'layout-variation-left-innerleft-center', '<p style="width: 940px; float: left; font-size: 13px; color: #141507; line-height: 19px; font-family: \'Century Gothic\', sans-serif;">Orgãos Sociais do Clube Desportivo do Arneiro, eleitos em Assembleia Geral de 24 de janeiro de 2014, para o exercicio de 2014 e 2015.</p>\r\n<p style="width: 940px; float: left; font-size: 13px; color: #141507; line-height: 19px; font-family: \'Century Gothic\', sans-serif;">Lista dos Corpos Sociais do Clube Desportivo do Arneiro, para o biénio 2014/2015, aprovados por unanimidade em Assembleia-Geral Ordinária de 24 de janeiro de 2014.</p>\r\n<p style="width: 940px; float: left; font-size: 13px; color: #141507; line-height: 19px; font-family: \'Century Gothic\', sans-serif;"><span style="text-decoration: underline;">Mesa da Assembleia-Geral</span></p>\r\n<p style="width: 940px; float: left; font-size: 13px; color: #141507; line-height: 19px; font-family: \'Century Gothic\', sans-serif;">Presidente: José Manuel Simões Costa de Abreu</p>\r\n<p style="width: 940px; float: left; font-size: 13px; color: #141507; line-height: 19px; font-family: \'Century Gothic\', sans-serif;">Vice-Presidente: Luís Miguel Fernandes Coelho</p>\r\n<p style="width: 940px; float: left; font-size: 13px; color: #141507; line-height: 19px; font-family: \'Century Gothic\', sans-serif;">Secretária: Isabel Maria Pereira da Silva Lisboa</p>\r\n<p style="width: 940px; float: left; font-size: 13px; color: #141507; line-height: 19px; font-family: \'Century Gothic\', sans-serif;"><span style="text-decoration: underline;">Conselho Fiscal</span></p>\r\n<p style="width: 940px; float: left; font-size: 13px; color: #141507; line-height: 19px; font-family: \'Century Gothic\', sans-serif;">Presidente: João Manuel Abreu Dinis Esteves</p>\r\n<p style="width: 940px; float: left; font-size: 13px; color: #141507; line-height: 19px; font-family: \'Century Gothic\', sans-serif;">Vogal: Rui Miguel Gomes Moreira</p>\r\n<p style="width: 940px; float: left; font-size: 13px; color: #141507; line-height: 19px; font-family: \'Century Gothic\', sans-serif;">Relator: Nuno Miguel Pereira Simões Pacheco</p>\r\n<p style="width: 940px; float: left; font-size: 13px; color: #141507; line-height: 19px; font-family: \'Century Gothic\', sans-serif;"><strong><span style="text-decoration: underline;">Direção</span></strong></p>\r\n<p style="width: 940px; float: left; font-size: 13px; color: #141507; line-height: 19px; font-family: \'Century Gothic\', sans-serif;">Presidente: José Manuel Machado de Magalhães</p>\r\n<p style="width: 940px; float: left; font-size: 13px; color: #141507; line-height: 19px; font-family: \'Century Gothic\', sans-serif;">Vice-Presidente: José Rodrigues de Jesus Madaleno</p>\r\n<p style="width: 940px; float: left; font-size: 13px; color: #141507; line-height: 19px; font-family: \'Century Gothic\', sans-serif;">Tesoureiro: Fernando Carlos Zacarias Parreira</p>\r\n<p style="width: 940px; float: left; font-size: 13px; color: #141507; line-height: 19px; font-family: \'Century Gothic\', sans-serif;">1º Secretário: Nuno da Costa Teixeira</p>\r\n<p style="width: 940px; float: left; font-size: 13px; color: #141507; line-height: 19px; font-family: \'Century Gothic\', sans-serif;">2º Secretário: luís Filipe Silva da Cunha Lisboa</p>\r\n<p style="width: 940px; float: left; font-size: 13px; color: #141507; line-height: 19px; font-family: \'Century Gothic\', sans-serif;">1º Vogal: António Carlos Pereira da Silva</p>\r\n<p style="width: 940px; float: left; font-size: 13px; color: #141507; line-height: 19px; font-family: \'Century Gothic\', sans-serif;">2º Vogal: Ana Sofia Constantino da Silva</p>\r\n<p style="width: 940px; float: left; font-size: 13px; color: #141507; line-height: 19px; font-family: \'Century Gothic\', sans-serif;">1º Suplente: José Fernando Maio da Silva</p>\r\n<p style="width: 940px; float: left; font-size: 13px; color: #141507; line-height: 19px; font-family: \'Century Gothic\', sans-serif;">2º Suplente: Maria de Fátima Pereira da Silva</p>\r\n<p style="width: 940px; float: left; font-size: 13px; color: #141507; line-height: 19px; font-family: \'Century Gothic\', sans-serif;">3º Supente: Afonso José da Silva Machado de Magalhães</p>\r\n<p style="width: 940px; float: left; font-size: 13px; color: #141507; line-height: 19px; font-family: \'Century Gothic\', sans-serif;">4º Suplente: Ricardo Francisco Calvo Pires</p>', '', 1, 81, '2011-04-01 03:13:50', 32, '', '2016-11-04 05:24:23', 32, 0, '0000-00-00 00:00:00', '2011-04-01 03:13:50', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 12, 2, '', '', 1, 105, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(94, 202, 'Rich Menu', 'rich-menu', '<p class="text-tip" style="position: relative">On top of this page, you can see live demonstration of Rich Menu. <img src="http://demo.joomlashine.com/joomla-templates/jsn_venture/free/images/cliparts/arrows/arrow-up-right-2.png" style="position: absolute; top: -50px; padding-left: 10px" alt="Icon Arrow Up" /></p>\n<p>With this menu system you can attach icons and add descriptive text to each menu item making them much clearer and visually appealing. The best thing is you can use the default menu module built-in Joomla!, no need to install external menu modules.</p>\n<h3>Menu items with descriptive text</h3>\n<p>JSN Venture allows you to present menu items with descriptive text placed on a separated line at the bottom of main text.</p>\n<p class="content-center"><img src="http://demo.joomlashine.com/joomla-templates/jsn_venture/free/images/content/template-details/menu-styles/rich-menu/menu-mainmenu-rich.png" alt="Main Menu Rich Text" width="600" height="175" border="0" /></p>\n<p>To setup text strings you need to go to menu item settings and add symbol combination &ldquo;<strong>(=)</strong><strong>&rdquo;</strong> as separator between primary and secondary text.</p>\n<p class="content-center"><img src="http://demo.joomlashine.com/joomla-templates/jsn_venture/free/images/content/template-details/menu-styles/rich-menu/menu-mainmenu-rich-settings.png" alt="Main Menu Rich Text Settings" width="600" height="270" border="0" /></p>\n<p>In the example above text &ldquo;<strong>Home</strong>&rdquo; is the primary text and &ldquo;<strong>Lorem ipsum dolor sit...</strong>&rdquo; is the secondary text. Separator between them is the symbol combination &ldquo;<strong>(=)</strong>&rdquo;. Really simple and elegant solution.</p>\n<hr class="line-dots" />\n<h3>Menu items with icons</h3>\n<p>JSN Venture allows you to assign up to <strong>20 predefined icons</strong> for items in main menu.</p>\n<p class="content-center"><img src="http://demo.joomlashine.com/joomla-templates/jsn_venture/free/images/content/template-details/menu-styles/rich-menu/menu-mainmenu-icons.png" alt="Main Menu Icons" width="600" height="125" border="0" /></p>\n<p> To setup icons, you need to find template parameter <strong>Main Menu Icons</strong> and choose any icon you want to display from drop-down panel.</p>\n<p class="content-center"><img src="http://demo.joomlashine.com/joomla-templates/jsn_venture/free/images/content/template-details/menu-styles/rich-menu/menu-mainmenu-icons-settings.png" alt="Main Menu Icons Settings" width="600" height="300" border="0" /></p>\n<hr class="line-dots" />\n<h3>Combination of descriptive text and icons</h3>\n<p>You can use combination of descriptive text and icons to get Rich Menu in it\'s best presentation.</p>\n<p class="content-center"><img src="http://demo.joomlashine.com/joomla-templates/jsn_venture/free/images/content/template-details/menu-styles/rich-menu/menu-mainmenu-rich-icons.png" alt="Main Menu Rich Text combined with Icons" width="600" height="175" border="0" /></p>', '', 1, 83, '2011-04-01 04:05:08', 32, '', '0000-00-00 00:00:00', 32, 0, '0000-00-00 00:00:00', '2011-04-01 04:05:08', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 1, 4, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(95, 203, 'Side Menu', 'side-menu', '<p class="text-tip" style="position: relative"><img src="http://demo.joomlashine.com/joomla-templates/jsn_venture/free/images/cliparts/arrows/arrow-down-left.png" style="position: absolute; top: 20px; left: -12px" />Here you can see live demonstration of Side Menu.</p>\n<p>Side Menu is very unique vertical menu with slide-out panels. This menu is extremely efficient when you have complex navigation with a lot of menu items.</p>\n<p>To setup Side Menu you just need to configure module parameter &ldquo;<strong>Menu Class Suffix</strong>&rdquo; appropriately and the menu system will take care of the rest. There are very detailed instructions in template documentation.</p>\n<h3>Side Menu with Icons and Rich Text</h3>\n<p class="text-tip" style="position: relative"><img src="http://demo.joomlashine.com/joomla-templates/jsn_venture/free/images/cliparts/arrows/arrow-down-left.png" style="position: absolute; top: 20px; left: -12px" />Here you can see live demonstration of Side Menu with icons and rich text.</p>\n<p>Side Menu can present menu items with icons and descriptive text, pretty much like Main Menu.</p>\n<p>To setup icons you need to configure menu items appropriately just like Main Menu. There are very detailed instructions in template documentation.</p>\n<h3>Side Menu with RTL Support</h3>\n<p>Side Menu works flawlessly even in RTL layout, in which sub-menu panels will slide out from right to left.</p>\n<p class="content-center"><a href="index.php?option=com_content&view=article&id=96&Itemid=481" class="link-button button-light"><span class="link-icon">See Side Menu in RTL layout</span></a></p>\n', '', 1, 83, '2011-04-01 04:05:29', 32, '', '2011-11-22 09:06:46', 32, 0, '0000-00-00 00:00:00', '2011-04-01 04:05:29', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 9, 3, '', '', 1, 105, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(102, 210, '5 reasons to choose JSN Venture', '5-reasons-to-choose-jsn-venture', '<h3>Beautiful Design</h3>\n<p>JSN Venture has incredibly beautiful clean design with ultra flexible layout built-up from 28 module positions. The combination of 6 colors variation, 5 menu styles and 6 module styles results in a really remarkable website. In addition, super rich typography makes your content look stunning and clear for all users.</p>\n<p><strong>Read more:</strong> <a href="layout.html">Layout</a> - <a href="colors-varitation.html">Colors Variation</a> - <a href="menu-styles.html">Menu Styles</a> - <a href="typography.html">Typography</a> - <a href="modules-styles.html">Module Styles</a>  <a href="font-styles.html">Font Styles</a>.</p>\n<h3>Stable Feature Rich Core</h3>\n<p>For us, JSN Venture is not just a template, but whole piece of software for which we spent more then 2 years. As the result you get ultra stable template with native RTL support and flawlessly running on IE6. Even more than that, there are multiple SEO &amp; Accessibility features which make your website greatly visible for both search engines and people with disabilities.</p>\n<p><strong>Read more:</strong> <a href="rtl-support.html">RTL Layout Support</a> - <a href="ie6-support.html">IE6 Support</a> - <a href="seo-accessibility.html">SEO &amp; Accessibility</a> - <a href="flash-gallery.html">Flash Gallery</a>.</p>\n<h3>Dead-easy Configuration</h3>\n<p>You will be surprised how such a capable template can be so easily handled. Majority of template features are conveniently managed by over 40 template parameters. You dont have to be a CSS master or PHP guru. Just set parameters as you want and enjoy the result.</p>\n<p><strong>Read more:</strong> <a href="template-parameters.html">Template Parameters</a>.</p>\n<h3>Outstanding Docs &amp; Support</h3>\n<p>Even when the template is deadly easy to use, we still provide very comprehensive documentation package of 3 PDF documents. So its really hard to get things done wrong, but if even so, you can get timely and professional support from our team as well as friendly community.</p>\n<p><strong>Next Step:</strong> <a href="download-jsn-venture-docs.html">Download template documentation</a> for free.</p>\n<h3>Cost Effective Solution</h3>\n<p>All the benefits is available for you for just 29$. Our ultimate goal is to offer you a solution that in turns must bring you much more profit. Even more, we provide 30-days money back guarantee, so this is absolutely risk-free. Just give it a try and you wont look back.</p>\n<p><strong>Next Step:</strong> <a href="buy-now.html">Download JSN Venture</a>.</p>', '', 1, 80, '2011-04-01 07:17:52', 32, '', '0000-00-00 00:00:00', 32, 0, '0000-00-00 00:00:00', '2011-04-01 07:17:52', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 1, 3, '', '', 1, 2, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(103, 211, 'Breve História', 'introducing-jsn-venture', '<h2 style="text-align: center;">BREVE HISTÓRIA </h2>\r\n<p style="text-align: center;">Em agosto de 1962 um grupo de amigos juntou-se e fundou aquele que viria a ser uma referência no associativismo desportivo da região de Cascais. </p>\r\n<p style="text-align: center;">A partir dessa data, consideraram-se sócios fundadores do Clube as seguintes personalidades:</p>\r\n<p style="text-align: center;">João Rodrigues de Almeida;</p>\r\n<p style="text-align: center;">António Faria;</p>\r\n<p style="text-align: center;">Francisco Fungão;</p>\r\n<p style="text-align: center;">Francisco Parreira;</p>\r\n<p style="text-align: center;">Alcindo Moreira. </p>', '', 1, 80, '2011-04-01 07:18:18', 32, '', '2016-11-05 19:32:35', 32, 32, '2016-11-05 19:32:35', '2011-04-01 07:18:18', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"0","show_email_icon":"0","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 94, 2, '', '', 1, 8, '{"robots":"","author":"","rights":"","xreference":""}', 1, '*', ''),
(114, 281, 'Bem Vindo', 'sobre-o-clube', '<p style="text-align: justify;"> Esta é a página de internet do Clube Desportivo do Arneiro, será para nós um grande desafio tentar manter o site sempre atualizado. O maior desafio passará por criar condições aos associados que não frequentam as instalações do nosso clube, que o possam fazer através da consulta deste site. O site terá uma parte que permite deixar sugestões, e assim poderemos ir ao encontro de algumas das vossas solicitações, não deixem portanto, de dar a vossa sugestão sobre o que se pode melhorar neste nosso site, que como podem verificar é simples mas queremos que seja muito dinâmico. </p>\r\n<p style="text-align: justify;">  </p>\r\n<p style="text-align: justify;">José Manuel Machado Magalhães </p>\r\n<p style="text-align: justify;">Presidente da Direção do CDA</p>\r\n<p style="text-align: justify;"> </p>\r\n<div class="module_textContent" style="width: 485px; height: auto; float: left; font-size: 12px; line-height: 19px; font-family: \'Century Gothic\', sans-serif; text-align: justify;"> </div>', '', 1, 14, '2016-11-04 16:48:56', 32, '', '2016-11-05 13:51:32', 32, 0, '0000-00-00 00:00:00', '2016-11-04 16:48:56', '0000-00-00 00:00:00', '{}', '{}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 19, 11, '', '', 1, 113, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(115, 282, 'Aréa de Sócio', 'area-de-socio', '', '', 1, 14, '2016-11-04 17:24:22', 32, '', '2016-11-04 17:28:26', 32, 0, '0000-00-00 00:00:00', '2016-11-04 17:24:22', '0000-00-00 00:00:00', '{}', '{}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 5, 10, '', '', 1, 36, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(116, 283, 'Suporte', 'suporte', '<p> </p>\r\n<p> </p>', '', 1, 14, '2016-11-04 17:43:15', 32, '', '2016-11-05 20:08:11', 32, 0, '0000-00-00 00:00:00', '2016-11-04 17:43:15', '0000-00-00 00:00:00', '{}', '{}', '{"show_title":"0","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 43, 9, '', '', 1, 131, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(118, 289, '53º Aniversário do Clube Desportivo do Arneiro', '53-aniversario-do-clube-desportivo-do-arneiro', '<p style="font-size: 12.16px;"><span style="color: #141507; font-family: \'Century Gothic\', sans-serif; font-size: 13px;">Nesta secção do site poderá acompanhar todos os </span><strong style="color: #141507; font-family: \'Century Gothic\', sans-serif; font-size: 13px;">Eventos </strong><span style="color: #141507; font-family: \'Century Gothic\', sans-serif;"><span style="font-size: 13px;">a realizar pela Direção do Clube Desportivo do Arneiro e também os que já tenham sido realizados. Sempre que possível iremos colocar fotografias dos </span></span><strong style="color: #141507; font-family: \'Century Gothic\', sans-serif; font-size: 13px;">Eventos</strong><span style="color: #141507; font-family: \'Century Gothic\', sans-serif; font-size: 13px;"> realizados.</span></p>\r\n<p style="font-size: 12.16px;"> </p>\r\n<p style="font-size: 12.16px;"><span style="color: #141507; font-family: \'Century Gothic\', sans-serif; font-size: 13px;">Programa das Comemorações do 53º Aniversário do Clube Desportivo do Arneiro, dias 8, 9, 10 e 15 de agosto.</span></p>\r\n<p style="font-size: 12.16px;"><span style="color: #141507; font-family: \'Century Gothic\', sans-serif; font-size: 13px;"><img src="images/transferir-2.jpeg" alt="" /></span></p>\r\n<p style="font-size: 12.16px;"> </p>', '', 1, 14, '2016-11-04 20:31:29', 32, '', '2016-11-05 20:56:49', 32, 0, '0000-00-00 00:00:00', '2016-11-04 20:31:29', '0000-00-00 00:00:00', '{}', '{}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 4, 8, '', '', 1, 27, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(119, 290, 'Tiro', 'tiro', '<p style="text-align: justify;">O Clube Desportivo do Arneiro organiza nos dias 28 de fevereiro e 1 de março o 2º Torneio Alcindo Moreira - 1ª Edição. Esta prova conta com o da União de Freguesias de Carcavelos e Parede e da Federação Portuguesa de Tiro. </p>\r\n<p style="text-align: justify;">A equipa de tiro conta com cerca de 12 atiradores, distribuídos pelos Seniores e Veteranos, masculinos e femininos. A equipa participou nas Federação Portuguesa de Tiro, na provas da torneios do INATEL e ainda participou em vários organizados por outros clubes. O CDA organizou o 2° Troféu de Homenagem a Alcindo Moreira 2a edição nos dias 28 de fevereiro e 1 de março. Todos os atletas do são alvo de exames médicos feitos por um médico especialista em medicina desportiva nas nossas instalações. Em 2015 o valor dos exames médicos e a inscrição na FPT foram suportados, totalmente, pelos atletas.</p>\r\n<p style="text-align: center;"> </p>\r\n<p style="text-align: center;"><img src="images/tiro.jpeg" alt="" /></p>\r\n<p style="text-align: center;">{imageshow sl=13 sc=6 /} </p>', '', 1, 14, '2016-11-05 14:01:33', 32, '', '2016-11-05 19:20:17', 32, 0, '0000-00-00 00:00:00', '2016-11-05 14:01:33', '0000-00-00 00:00:00', '{}', '{}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 26, 7, '', '', 1, 59, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');
INSERT INTO `j78lr_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(120, 291, 'Atletismo', 'atletismo', '<p><!-- [if gte mso 9]><xml>\r\n <o:OfficeDocumentSettings>\r\n  <o:AllowPNG/>\r\n  <o:PixelsPerInch>96</o:PixelsPerInch>\r\n </o:OfficeDocumentSettings>\r\n</xml><![endif]--> <!-- [if gte mso 9]><xml>\r\n <w:WordDocument>\r\n  <w:View>Normal</w:View>\r\n  <w:Zoom>0</w:Zoom>\r\n  <w:TrackMoves/>\r\n  <w:TrackFormatting/>\r\n  <w:HyphenationZone>21</w:HyphenationZone>\r\n  <w:PunctuationKerning/>\r\n  <w:ValidateAgainstSchemas/>\r\n  <w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid>\r\n  <w:IgnoreMixedContent>false</w:IgnoreMixedContent>\r\n  <w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText>\r\n  <w:DoNotPromoteQF/>\r\n  <w:LidThemeOther>PT</w:LidThemeOther>\r\n  <w:LidThemeAsian>X-NONE</w:LidThemeAsian>\r\n  <w:LidThemeComplexScript>X-NONE</w:LidThemeComplexScript>\r\n  <w:Compatibility>\r\n   <w:BreakWrappedTables/>\r\n   <w:SnapToGridInCell/>\r\n   <w:WrapTextWithPunct/>\r\n   <w:UseAsianBreakRules/>\r\n   <w:DontGrowAutofit/>\r\n   <w:SplitPgBreakAndParaMark/>\r\n   <w:EnableOpenTypeKerning/>\r\n   <w:DontFlipMirrorIndents/>\r\n   <w:OverrideTableStyleHps/>\r\n  </w:Compatibility>\r\n  <m:mathPr>\r\n   <m:mathFont m:val="Cambria Math"/>\r\n   <m:brkBin m:val="before"/>\r\n   <m:brkBinSub m:val="&#45;-"/>\r\n   <m:smallFrac m:val="off"/>\r\n   <m:dispDef/>\r\n   <m:lMargin m:val="0"/>\r\n   <m:rMargin m:val="0"/>\r\n   <m:defJc m:val="centerGroup"/>\r\n   <m:wrapIndent m:val="1440"/>\r\n   <m:intLim m:val="subSup"/>\r\n   <m:naryLim m:val="undOvr"/>\r\n  </m:mathPr></w:WordDocument>\r\n</xml><![endif]--><!-- [if gte mso 9]><xml>\r\n <w:LatentStyles DefLockedState="false" DefUnhideWhenUsed="false"\r\n  DefSemiHidden="false" DefQFormat="false" DefPriority="99"\r\n  LatentStyleCount="382">\r\n  <w:LsdException Locked="false" Priority="0" QFormat="true" Name="Normal"/>\r\n  <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 1"/>\r\n  <w:LsdException Locked="false" Priority="9" SemiHidden="true"\r\n   UnhideWhenUsed="true" QFormat="true" Name="heading 2"/>\r\n  <w:LsdException Locked="false" Priority="9" SemiHidden="true"\r\n   UnhideWhenUsed="true" QFormat="true" Name="heading 3"/>\r\n  <w:LsdException Locked="false" Priority="9" SemiHidden="true"\r\n   UnhideWhenUsed="true" QFormat="true" Name="heading 4"/>\r\n  <w:LsdException Locked="false" Priority="9" SemiHidden="true"\r\n   UnhideWhenUsed="true" QFormat="true" Name="heading 5"/>\r\n  <w:LsdException Locked="false" Priority="9" SemiHidden="true"\r\n   UnhideWhenUsed="true" QFormat="true" Name="heading 6"/>\r\n  <w:LsdException Locked="false" Priority="9" SemiHidden="true"\r\n   UnhideWhenUsed="true" QFormat="true" Name="heading 7"/>\r\n  <w:LsdException Locked="false" Priority="9" SemiHidden="true"\r\n   UnhideWhenUsed="true" QFormat="true" Name="heading 8"/>\r\n  <w:LsdException Locked="false" Priority="9" SemiHidden="true"\r\n   UnhideWhenUsed="true" QFormat="true" Name="heading 9"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="index 1"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="index 2"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="index 3"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="index 4"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="index 5"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="index 6"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="index 7"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="index 8"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="index 9"/>\r\n  <w:LsdException Locked="false" Priority="39" SemiHidden="true"\r\n   UnhideWhenUsed="true" Name="toc 1"/>\r\n  <w:LsdException Locked="false" Priority="39" SemiHidden="true"\r\n   UnhideWhenUsed="true" Name="toc 2"/>\r\n  <w:LsdException Locked="false" Priority="39" SemiHidden="true"\r\n   UnhideWhenUsed="true" Name="toc 3"/>\r\n  <w:LsdException Locked="false" Priority="39" SemiHidden="true"\r\n   UnhideWhenUsed="true" Name="toc 4"/>\r\n  <w:LsdException Locked="false" Priority="39" SemiHidden="true"\r\n   UnhideWhenUsed="true" Name="toc 5"/>\r\n  <w:LsdException Locked="false" Priority="39" SemiHidden="true"\r\n   UnhideWhenUsed="true" Name="toc 6"/>\r\n  <w:LsdException Locked="false" Priority="39" SemiHidden="true"\r\n   UnhideWhenUsed="true" Name="toc 7"/>\r\n  <w:LsdException Locked="false" Priority="39" SemiHidden="true"\r\n   UnhideWhenUsed="true" Name="toc 8"/>\r\n  <w:LsdException Locked="false" Priority="39" SemiHidden="true"\r\n   UnhideWhenUsed="true" Name="toc 9"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="Normal Indent"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="footnote text"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="annotation text"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="header"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="footer"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="index heading"/>\r\n  <w:LsdException Locked="false" Priority="35" SemiHidden="true"\r\n   UnhideWhenUsed="true" QFormat="true" Name="caption"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="table of figures"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="envelope address"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="envelope return"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="footnote reference"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="annotation reference"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="line number"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="page number"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="endnote reference"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="endnote text"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="table of authorities"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="macro"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="toa heading"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="List"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="List Bullet"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="List Number"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="List 2"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="List 3"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="List 4"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="List 5"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="List Bullet 2"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="List Bullet 3"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="List Bullet 4"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="List Bullet 5"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="List Number 2"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="List Number 3"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="List Number 4"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="List Number 5"/>\r\n  <w:LsdException Locked="false" Priority="10" QFormat="true" Name="Title"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="Closing"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="Signature"/>\r\n  <w:LsdException Locked="false" Priority="1" SemiHidden="true"\r\n   UnhideWhenUsed="true" Name="Default Paragraph Font"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="Body Text"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="Body Text Indent"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="List Continue"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="List Continue 2"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="List Continue 3"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="List Continue 4"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="List Continue 5"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="Message Header"/>\r\n  <w:LsdException Locked="false" Priority="11" QFormat="true" Name="Subtitle"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="Salutation"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="Date"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="Body Text First Indent"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="Body Text First Indent 2"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="Note Heading"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="Body Text 2"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="Body Text 3"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="Body Text Indent 2"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="Body Text Indent 3"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="Block Text"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="Hyperlink"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="FollowedHyperlink"/>\r\n  <w:LsdException Locked="false" Priority="22" QFormat="true" Name="Strong"/>\r\n  <w:LsdException Locked="false" Priority="20" QFormat="true" Name="Emphasis"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="Document Map"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="Plain Text"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="E-mail Signature"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="HTML Top of Form"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="HTML Bottom of Form"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="Normal (Web)"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="HTML Acronym"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="HTML Address"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="HTML Cite"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="HTML Code"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="HTML Definition"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="HTML Keyboard"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="HTML Preformatted"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="HTML Sample"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="HTML Typewriter"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="HTML Variable"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="Normal Table"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="annotation subject"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="No List"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="Outline List 1"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="Outline List 2"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="Outline List 3"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="Table Simple 1"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="Table Simple 2"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="Table Simple 3"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="Table Classic 1"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="Table Classic 2"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="Table Classic 3"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="Table Classic 4"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="Table Colorful 1"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="Table Colorful 2"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="Table Colorful 3"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="Table Columns 1"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="Table Columns 2"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="Table Columns 3"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="Table Columns 4"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="Table Columns 5"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="Table Grid 1"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="Table Grid 2"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="Table Grid 3"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="Table Grid 4"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="Table Grid 5"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="Table Grid 6"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="Table Grid 7"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="Table Grid 8"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="Table List 1"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="Table List 2"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="Table List 3"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="Table List 4"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="Table List 5"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="Table List 6"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="Table List 7"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="Table List 8"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="Table 3D effects 1"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="Table 3D effects 2"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="Table 3D effects 3"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="Table Contemporary"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="Table Elegant"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="Table Professional"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="Table Subtle 1"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="Table Subtle 2"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="Table Web 1"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="Table Web 2"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="Table Web 3"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="Balloon Text"/>\r\n  <w:LsdException Locked="false" Priority="39" Name="Table Grid"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="Table Theme"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="Note Level 1"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="Note Level 2"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="Note Level 3"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="Note Level 4"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="Note Level 5"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="Note Level 6"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="Note Level 7"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="Note Level 8"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="Note Level 9"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" Name="Placeholder Text"/>\r\n  <w:LsdException Locked="false" Priority="1" QFormat="true" Name="No Spacing"/>\r\n  <w:LsdException Locked="false" Priority="60" Name="Light Shading"/>\r\n  <w:LsdException Locked="false" Priority="61" Name="Light List"/>\r\n  <w:LsdException Locked="false" Priority="62" Name="Light Grid"/>\r\n  <w:LsdException Locked="false" Priority="63" Name="Medium Shading 1"/>\r\n  <w:LsdException Locked="false" Priority="64" Name="Medium Shading 2"/>\r\n  <w:LsdException Locked="false" Priority="65" Name="Medium List 1"/>\r\n  <w:LsdException Locked="false" Priority="66" Name="Medium List 2"/>\r\n  <w:LsdException Locked="false" Priority="67" Name="Medium Grid 1"/>\r\n  <w:LsdException Locked="false" Priority="68" Name="Medium Grid 2"/>\r\n  <w:LsdException Locked="false" Priority="69" Name="Medium Grid 3"/>\r\n  <w:LsdException Locked="false" Priority="70" Name="Dark List"/>\r\n  <w:LsdException Locked="false" Priority="71" Name="Colorful Shading"/>\r\n  <w:LsdException Locked="false" Priority="72" Name="Colorful List"/>\r\n  <w:LsdException Locked="false" Priority="73" Name="Colorful Grid"/>\r\n  <w:LsdException Locked="false" Priority="60" Name="Light Shading Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="61" Name="Light List Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="62" Name="Light Grid Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="63" Name="Medium Shading 1 Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="64" Name="Medium Shading 2 Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="65" Name="Medium List 1 Accent 1"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" Name="Revision"/>\r\n  <w:LsdException Locked="false" Priority="34" QFormat="true"\r\n   Name="List Paragraph"/>\r\n  <w:LsdException Locked="false" Priority="29" QFormat="true" Name="Quote"/>\r\n  <w:LsdException Locked="false" Priority="30" QFormat="true"\r\n   Name="Intense Quote"/>\r\n  <w:LsdException Locked="false" Priority="66" Name="Medium List 2 Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="67" Name="Medium Grid 1 Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="68" Name="Medium Grid 2 Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="69" Name="Medium Grid 3 Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="70" Name="Dark List Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="71" Name="Colorful Shading Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="72" Name="Colorful List Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="73" Name="Colorful Grid Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="60" Name="Light Shading Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="61" Name="Light List Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="62" Name="Light Grid Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="63" Name="Medium Shading 1 Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="64" Name="Medium Shading 2 Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="65" Name="Medium List 1 Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="66" Name="Medium List 2 Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="67" Name="Medium Grid 1 Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="68" Name="Medium Grid 2 Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="69" Name="Medium Grid 3 Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="70" Name="Dark List Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="71" Name="Colorful Shading Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="72" Name="Colorful List Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="73" Name="Colorful Grid Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="60" Name="Light Shading Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="61" Name="Light List Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="62" Name="Light Grid Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="63" Name="Medium Shading 1 Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="64" Name="Medium Shading 2 Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="65" Name="Medium List 1 Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="66" Name="Medium List 2 Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="67" Name="Medium Grid 1 Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="68" Name="Medium Grid 2 Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="69" Name="Medium Grid 3 Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="70" Name="Dark List Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="71" Name="Colorful Shading Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="72" Name="Colorful List Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="73" Name="Colorful Grid Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="60" Name="Light Shading Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="61" Name="Light List Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="62" Name="Light Grid Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="63" Name="Medium Shading 1 Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="64" Name="Medium Shading 2 Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="65" Name="Medium List 1 Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="66" Name="Medium List 2 Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="67" Name="Medium Grid 1 Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="68" Name="Medium Grid 2 Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="69" Name="Medium Grid 3 Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="70" Name="Dark List Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="71" Name="Colorful Shading Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="72" Name="Colorful List Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="73" Name="Colorful Grid Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="60" Name="Light Shading Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="61" Name="Light List Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="62" Name="Light Grid Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="63" Name="Medium Shading 1 Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="64" Name="Medium Shading 2 Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="65" Name="Medium List 1 Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="66" Name="Medium List 2 Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="67" Name="Medium Grid 1 Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="68" Name="Medium Grid 2 Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="69" Name="Medium Grid 3 Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="70" Name="Dark List Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="71" Name="Colorful Shading Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="72" Name="Colorful List Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="73" Name="Colorful Grid Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="60" Name="Light Shading Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="61" Name="Light List Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="62" Name="Light Grid Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="63" Name="Medium Shading 1 Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="64" Name="Medium Shading 2 Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="65" Name="Medium List 1 Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="66" Name="Medium List 2 Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="67" Name="Medium Grid 1 Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="68" Name="Medium Grid 2 Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="69" Name="Medium Grid 3 Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="70" Name="Dark List Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="71" Name="Colorful Shading Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="72" Name="Colorful List Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="73" Name="Colorful Grid Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="19" QFormat="true"\r\n   Name="Subtle Emphasis"/>\r\n  <w:LsdException Locked="false" Priority="21" QFormat="true"\r\n   Name="Intense Emphasis"/>\r\n  <w:LsdException Locked="false" Priority="31" QFormat="true"\r\n   Name="Subtle Reference"/>\r\n  <w:LsdException Locked="false" Priority="32" QFormat="true"\r\n   Name="Intense Reference"/>\r\n  <w:LsdException Locked="false" Priority="33" QFormat="true" Name="Book Title"/>\r\n  <w:LsdException Locked="false" Priority="37" SemiHidden="true"\r\n   UnhideWhenUsed="true" Name="Bibliography"/>\r\n  <w:LsdException Locked="false" Priority="39" SemiHidden="true"\r\n   UnhideWhenUsed="true" QFormat="true" Name="TOC Heading"/>\r\n  <w:LsdException Locked="false" Priority="41" Name="Plain Table 1"/>\r\n  <w:LsdException Locked="false" Priority="42" Name="Plain Table 2"/>\r\n  <w:LsdException Locked="false" Priority="43" Name="Plain Table 3"/>\r\n  <w:LsdException Locked="false" Priority="44" Name="Plain Table 4"/>\r\n  <w:LsdException Locked="false" Priority="45" Name="Plain Table 5"/>\r\n  <w:LsdException Locked="false" Priority="40" Name="Grid Table Light"/>\r\n  <w:LsdException Locked="false" Priority="46" Name="Grid Table 1 Light"/>\r\n  <w:LsdException Locked="false" Priority="47" Name="Grid Table 2"/>\r\n  <w:LsdException Locked="false" Priority="48" Name="Grid Table 3"/>\r\n  <w:LsdException Locked="false" Priority="49" Name="Grid Table 4"/>\r\n  <w:LsdException Locked="false" Priority="50" Name="Grid Table 5 Dark"/>\r\n  <w:LsdException Locked="false" Priority="51" Name="Grid Table 6 Colorful"/>\r\n  <w:LsdException Locked="false" Priority="52" Name="Grid Table 7 Colorful"/>\r\n  <w:LsdException Locked="false" Priority="46"\r\n   Name="Grid Table 1 Light Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="47" Name="Grid Table 2 Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="48" Name="Grid Table 3 Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="49" Name="Grid Table 4 Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="50" Name="Grid Table 5 Dark Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="51"\r\n   Name="Grid Table 6 Colorful Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="52"\r\n   Name="Grid Table 7 Colorful Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="46"\r\n   Name="Grid Table 1 Light Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="47" Name="Grid Table 2 Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="48" Name="Grid Table 3 Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="49" Name="Grid Table 4 Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="50" Name="Grid Table 5 Dark Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="51"\r\n   Name="Grid Table 6 Colorful Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="52"\r\n   Name="Grid Table 7 Colorful Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="46"\r\n   Name="Grid Table 1 Light Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="47" Name="Grid Table 2 Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="48" Name="Grid Table 3 Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="49" Name="Grid Table 4 Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="50" Name="Grid Table 5 Dark Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="51"\r\n   Name="Grid Table 6 Colorful Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="52"\r\n   Name="Grid Table 7 Colorful Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="46"\r\n   Name="Grid Table 1 Light Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="47" Name="Grid Table 2 Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="48" Name="Grid Table 3 Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="49" Name="Grid Table 4 Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="50" Name="Grid Table 5 Dark Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="51"\r\n   Name="Grid Table 6 Colorful Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="52"\r\n   Name="Grid Table 7 Colorful Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="46"\r\n   Name="Grid Table 1 Light Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="47" Name="Grid Table 2 Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="48" Name="Grid Table 3 Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="49" Name="Grid Table 4 Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="50" Name="Grid Table 5 Dark Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="51"\r\n   Name="Grid Table 6 Colorful Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="52"\r\n   Name="Grid Table 7 Colorful Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="46"\r\n   Name="Grid Table 1 Light Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="47" Name="Grid Table 2 Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="48" Name="Grid Table 3 Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="49" Name="Grid Table 4 Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="50" Name="Grid Table 5 Dark Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="51"\r\n   Name="Grid Table 6 Colorful Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="52"\r\n   Name="Grid Table 7 Colorful Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="46" Name="List Table 1 Light"/>\r\n  <w:LsdException Locked="false" Priority="47" Name="List Table 2"/>\r\n  <w:LsdException Locked="false" Priority="48" Name="List Table 3"/>\r\n  <w:LsdException Locked="false" Priority="49" Name="List Table 4"/>\r\n  <w:LsdException Locked="false" Priority="50" Name="List Table 5 Dark"/>\r\n  <w:LsdException Locked="false" Priority="51" Name="List Table 6 Colorful"/>\r\n  <w:LsdException Locked="false" Priority="52" Name="List Table 7 Colorful"/>\r\n  <w:LsdException Locked="false" Priority="46"\r\n   Name="List Table 1 Light Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="47" Name="List Table 2 Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="48" Name="List Table 3 Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="49" Name="List Table 4 Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="50" Name="List Table 5 Dark Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="51"\r\n   Name="List Table 6 Colorful Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="52"\r\n   Name="List Table 7 Colorful Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="46"\r\n   Name="List Table 1 Light Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="47" Name="List Table 2 Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="48" Name="List Table 3 Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="49" Name="List Table 4 Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="50" Name="List Table 5 Dark Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="51"\r\n   Name="List Table 6 Colorful Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="52"\r\n   Name="List Table 7 Colorful Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="46"\r\n   Name="List Table 1 Light Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="47" Name="List Table 2 Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="48" Name="List Table 3 Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="49" Name="List Table 4 Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="50" Name="List Table 5 Dark Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="51"\r\n   Name="List Table 6 Colorful Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="52"\r\n   Name="List Table 7 Colorful Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="46"\r\n   Name="List Table 1 Light Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="47" Name="List Table 2 Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="48" Name="List Table 3 Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="49" Name="List Table 4 Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="50" Name="List Table 5 Dark Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="51"\r\n   Name="List Table 6 Colorful Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="52"\r\n   Name="List Table 7 Colorful Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="46"\r\n   Name="List Table 1 Light Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="47" Name="List Table 2 Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="48" Name="List Table 3 Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="49" Name="List Table 4 Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="50" Name="List Table 5 Dark Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="51"\r\n   Name="List Table 6 Colorful Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="52"\r\n   Name="List Table 7 Colorful Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="46"\r\n   Name="List Table 1 Light Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="47" Name="List Table 2 Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="48" Name="List Table 3 Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="49" Name="List Table 4 Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="50" Name="List Table 5 Dark Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="51"\r\n   Name="List Table 6 Colorful Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="52"\r\n   Name="List Table 7 Colorful Accent 6"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="Mention"/>\r\n  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"\r\n   Name="Smart Hyperlink"/>\r\n </w:LatentStyles>\r\n</xml><![endif]--><!-- [if gte mso 10]>\r\n<style>\r\n /* Style Definitions */\r\ntable.MsoNormalTable\r\n	{mso-style-name:"Tabela normal";\r\n	mso-tstyle-rowband-size:0;\r\n	mso-tstyle-colband-size:0;\r\n	mso-style-noshow:yes;\r\n	mso-style-priority:99;\r\n	mso-style-parent:"";\r\n	mso-padding-alt:0cm 5.4pt 0cm 5.4pt;\r\n	mso-para-margin:0cm;\r\n	mso-para-margin-bottom:.0001pt;\r\n	mso-pagination:widow-orphan;\r\n	font-size:12.0pt;\r\n	font-family:Calibri;\r\n	mso-ascii-font-family:Calibri;\r\n	mso-ascii-theme-font:minor-latin;\r\n	mso-hansi-font-family:Calibri;\r\n	mso-hansi-theme-font:minor-latin;\r\n	mso-fareast-language:EN-US;}\r\n</style>\r\n<![endif]--> <!--StartFragment--> <!--EndFragment--></p>\r\n<p style="background: white; text-align: justify;">A equipa de atletismo conta com mais de 25 atletas, onde participam em várias provas, de onde se destacam a participação nos troféus das localidades das Câmaras Municipais de Oeiras, Cascais e Sintra. A Equipa de Atletismo teve o apoio de 600,00€ da Câmara Municipal de Cascais.</p>\r\n<p style="background: white;"> </p>\r\n<p><img style="display: block; margin-left: auto; margin-right: auto;" src="images/atletismo.jpeg" alt="" /></p>', '', 1, 14, '2016-11-05 14:57:23', 32, '', '2016-11-05 19:19:51', 32, 0, '0000-00-00 00:00:00', '2016-11-05 14:57:23', '0000-00-00 00:00:00', '{}', '{}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 13, 6, '', '', 1, 29, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(121, 292, 'Xadrez', 'xadrez', '<p><span style="color: #000000; font-family: \'Open Sans\', Arial, Helvetica, sans-serif; font-size: 14.4px; text-align: justify;"><img style="display: block; margin-left: auto; margin-right: auto;" src="images/Xadrez.jpeg" alt="" /></span></p>\r\n<p> </p>', '', 1, 14, '2016-11-05 15:03:09', 32, '', '2016-11-05 15:36:26', 32, 0, '0000-00-00 00:00:00', '2016-11-05 15:03:09', '0000-00-00 00:00:00', '{}', '{}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 5, '', '', 1, 19, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(122, 293, 'Karaté JUTSU', 'karate-jutsu', '<p><img style="display: block; margin-left: auto; margin-right: auto;" src="images/Karate-JUTSU.jpeg" alt="" /></p>', '', 1, 14, '2016-11-05 15:30:22', 32, '', '2016-11-05 16:25:01', 32, 0, '0000-00-00 00:00:00', '2016-11-05 15:30:22', '0000-00-00 00:00:00', '{}', '{}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 4, 4, '', '', 1, 9, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(123, 294, 'Modalidades', 'modalidades', '<p> </p>\r\n<p>{imageshow sl=14 sc=7 /}</p>', '', 1, 14, '2016-11-05 15:32:17', 32, '', '2016-11-05 17:20:32', 32, 0, '0000-00-00 00:00:00', '2016-11-05 15:32:17', '0000-00-00 00:00:00', '{}', '{}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 30, 3, '', '', 1, 106, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(124, 298, 'Contactos', 'contactos', '<p style="font-size: 12.16px;">Telefone: 214 577 978 </p>\r\n<p style="font-size: 12.16px;">E-mail: <a href="mailto: cdarneiro@netcabo.pt">cdarneiro@netcabo.pt   </a></p>\r\n<p style="font-size: 12.16px;">Fax: 214 561 104</p>\r\n<p style="font-size: 12.16px;"> </p>', '', 1, 14, '2016-11-05 19:59:43', 32, '', '2016-11-05 20:08:45', 32, 0, '0000-00-00 00:00:00', '2016-11-05 19:59:43', '0000-00-00 00:00:00', '{}', '{}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 2, '', '', 1, 9, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(125, 299, 'Morada', 'morada', '<p>Estrada Principal do Arneiro, nº 360</p>\r\n<p>Arneiro</p>\r\n<p>2775 - 524 CARCAVELOS</p>\r\n<p>Portugal</p>\r\n<p> </p>\r\n<p>Coordenadas GPS:</p>\r\n<p>Latitude: 38.70621</p>\r\n<p>Longitude: -9.32548</p>', '', 1, 14, '2016-11-05 20:09:13', 32, '', '2016-11-05 20:13:51', 32, 0, '0000-00-00 00:00:00', '2016-11-05 20:09:13', '0000-00-00 00:00:00', '{}', '{}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 1, '', '', 1, 6, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(126, 301, 'Serviços de Sócio', 'servicos-de-socio', '<p>[pb_row][pb_column span="span12"][pb_text]</p>\r\n<h3>Aluguer de Salão</h3>\r\n<p> O salão de festas é alugado apenas a sócios. Os sócios para terem direito a alugar o salão terão de ter pelo menos 2 anos de filiação como sócio.</p>\r\n<h3> </h3>\r\n<h3>Serviço Bar</h3>\r\n<p> <span style="font-size: 12.16px;">O Clube Desportivo do Arneiro tem nas suas instalações um bar e uma sala de jogos com duas mesas de snooker e uma máquina de setas.</span></p>\r\n<h2> </h2>\r\n<p>[/pb_text][pb_carousel el_title="Carousel 1" align="left" dimension_width_unit="px" show_indicator="no" show_arrows="yes" automatic_cycling="no" appearing_animation="0" ][pb_carousel_item image_file="images/Bar1.jpeg" ][/pb_carousel_item][pb_carousel_item image_file="images/Bar2.jpeg" ][/pb_carousel_item][pb_carousel_item image_file="images/Bar3.jpeg" ][/pb_carousel_item][/pb_carousel][/pb_column][/pb_row]</p>', '', 1, 14, '2016-11-05 21:04:05', 32, '', '2016-11-05 21:24:14', 32, 0, '0000-00-00 00:00:00', '2016-11-05 21:04:05', '0000-00-00 00:00:00', '{}', '{}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 22, 0, '', '', 1, 27, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');

-- --------------------------------------------------------

--
-- Table structure for table `j78lr_content_frontpage`
--

CREATE TABLE `j78lr_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `j78lr_content_frontpage`
--

INSERT INTO `j78lr_content_frontpage` (`content_id`, `ordering`) VALUES
(103, 1);

-- --------------------------------------------------------

--
-- Table structure for table `j78lr_content_rating`
--

CREATE TABLE `j78lr_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `rating_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lastip` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `j78lr_content_types`
--

CREATE TABLE `j78lr_content_types` (
  `type_id` int(10) UNSIGNED NOT NULL,
  `type_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type_alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `table` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `rules` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_mappings` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `router` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'JSON string for com_contenthistory options'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `j78lr_content_types`
--

INSERT INTO `j78lr_content_types` (`type_id`, `type_title`, `type_alias`, `table`, `rules`, `field_mappings`, `router`, `content_history_options`) VALUES
(1, 'Article', 'com_content.article', '{"special":{"dbtable":"#__content","key":"id","type":"Content","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"state","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"introtext", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"attribs", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"asset_id"}, "special":{"fulltext":"fulltext"}}', 'ContentHelperRoute::getArticleRoute', '{"formFile":"administrator\\/components\\/com_content\\/models\\/forms\\/article.xml", "hideFields":["asset_id","checked_out","checked_out_time","version"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(2, 'Contact', 'com_contact.contact', '{"special":{"dbtable":"#__contact_details","key":"id","type":"Contact","prefix":"ContactTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"address", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"image", "core_urls":"webpage", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special":{"con_position":"con_position","suburb":"suburb","state":"state","country":"country","postcode":"postcode","telephone":"telephone","fax":"fax","misc":"misc","email_to":"email_to","default_con":"default_con","user_id":"user_id","mobile":"mobile","sortname1":"sortname1","sortname2":"sortname2","sortname3":"sortname3"}}', 'ContactHelperRoute::getContactRoute', '{"formFile":"administrator\\/components\\/com_contact\\/models\\/forms\\/contact.xml","hideFields":["default_con","checked_out","checked_out_time","version","xreference"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"], "displayLookup":[ {"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ] }'),
(3, 'Newsfeed', 'com_newsfeeds.newsfeed', '{"special":{"dbtable":"#__newsfeeds","key":"id","type":"Newsfeed","prefix":"NewsfeedsTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"link", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special":{"numarticles":"numarticles","cache_time":"cache_time","rtl":"rtl"}}', 'NewsfeedsHelperRoute::getNewsfeedRoute', '{"formFile":"administrator\\/components\\/com_newsfeeds\\/models\\/forms\\/newsfeed.xml","hideFields":["asset_id","checked_out","checked_out_time","version"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(4, 'User', 'com_users.user', '{"special":{"dbtable":"#__users","key":"id","type":"User","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"null","core_alias":"username","core_created_time":"registerdate","core_modified_time":"lastvisitDate","core_body":"null", "core_hits":"null","core_publish_up":"null","core_publish_down":"null","access":"null", "core_params":"params", "core_featured":"null", "core_metadata":"null", "core_language":"null", "core_images":"null", "core_urls":"null", "core_version":"null", "core_ordering":"null", "core_metakey":"null", "core_metadesc":"null", "core_catid":"null", "core_xreference":"null", "asset_id":"null"}, "special":{}}', 'UsersHelperRoute::getUserRoute', ''),
(5, 'Article Category', 'com_content.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'ContentHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(6, 'Contact Category', 'com_contact.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'ContactHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(7, 'Newsfeeds Category', 'com_newsfeeds.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'NewsfeedsHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(8, 'Tag', 'com_tags.tag', '{"special":{"dbtable":"#__tags","key":"tag_id","type":"Tag","prefix":"TagsTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"null", "core_xreference":"null", "asset_id":"null"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path"}}', 'TagsHelperRoute::getTagRoute', '{"formFile":"administrator\\/components\\/com_tags\\/models\\/forms\\/tag.xml", "hideFields":["checked_out","checked_out_time","version", "lft", "rgt", "level", "path", "urls", "publish_up", "publish_down"],"ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(9, 'Banner', 'com_banners.banner', '{"special":{"dbtable":"#__banners","key":"id","type":"Banner","prefix":"BannersTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"null","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"link", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"null", "asset_id":"null"}, "special":{"imptotal":"imptotal", "impmade":"impmade", "clicks":"clicks", "clickurl":"clickurl", "custombannercode":"custombannercode", "cid":"cid", "purchase_type":"purchase_type", "track_impressions":"track_impressions", "track_clicks":"track_clicks"}}', '', '{"formFile":"administrator\\/components\\/com_banners\\/models\\/forms\\/banner.xml", "hideFields":["checked_out","checked_out_time","version", "reset"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "imptotal", "impmade", "reset"], "convertToInt":["publish_up", "publish_down", "ordering"], "displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"cid","targetTable":"#__banner_clients","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(10, 'Banners Category', 'com_banners.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special": {"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', '', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(11, 'Banner Client', 'com_banners.client', '{"special":{"dbtable":"#__banner_clients","key":"id","type":"Client","prefix":"BannersTable"}}', '', '', '', '{"formFile":"administrator\\/components\\/com_banners\\/models\\/forms\\/client.xml", "hideFields":["checked_out","checked_out_time"], "ignoreChanges":["checked_out", "checked_out_time"], "convertToInt":[], "displayLookup":[]}'),
(12, 'User Notes', 'com_users.note', '{"special":{"dbtable":"#__user_notes","key":"id","type":"Note","prefix":"UsersTable"}}', '', '', '', '{"formFile":"administrator\\/components\\/com_users\\/models\\/forms\\/note.xml", "hideFields":["checked_out","checked_out_time", "publish_up", "publish_down"],"ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time"], "convertToInt":["publish_up", "publish_down"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(13, 'User Notes Category', 'com_users.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', '', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}');

-- --------------------------------------------------------

--
-- Table structure for table `j78lr_contentitem_tag_map`
--

CREATE TABLE `j78lr_contentitem_tag_map` (
  `type_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_content_id` int(10) UNSIGNED NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) UNSIGNED NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(8) NOT NULL COMMENT 'PK from the content_type table'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Maps items from content tables to tags';

-- --------------------------------------------------------

--
-- Table structure for table `j78lr_core_log_searches`
--

CREATE TABLE `j78lr_core_log_searches` (
  `search_term` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `j78lr_extensions`
--

CREATE TABLE `j78lr_extensions` (
  `extension_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `system_data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `j78lr_extensions`
--

INSERT INTO `j78lr_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(1, 'com_mailto', 'component', 'com_mailto', '', 0, 1, 1, 1, '{"name":"com_mailto","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MAILTO_XML_DESCRIPTION","group":"","filename":"mailto"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(2, 'com_wrapper', 'component', 'com_wrapper', '', 0, 1, 1, 1, '{"name":"com_wrapper","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_WRAPPER_XML_DESCRIPTION","group":"","filename":"wrapper"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(3, 'com_admin', 'component', 'com_admin', '', 1, 1, 1, 1, '{"name":"com_admin","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_ADMIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(4, 'com_banners', 'component', 'com_banners', '', 1, 1, 1, 0, '{"name":"com_banners","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_BANNERS_XML_DESCRIPTION","group":"","filename":"banners"}', '{"purchase_type":"3","track_impressions":"0","track_clicks":"0","metakey_prefix":"","save_history":"1","history_limit":10}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(5, 'com_cache', 'component', 'com_cache', '', 1, 1, 1, 1, '{"name":"com_cache","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CACHE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(6, 'com_categories', 'component', 'com_categories', '', 1, 1, 1, 1, '{"name":"com_categories","type":"component","creationDate":"December 2007","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(7, 'com_checkin', 'component', 'com_checkin', '', 1, 1, 1, 1, '{"name":"com_checkin","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CHECKIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(8, 'com_contact', 'component', 'com_contact', '', 1, 1, 1, 0, '{"name":"com_contact","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTACT_XML_DESCRIPTION","group":"","filename":"contact"}', '{"show_contact_category":"hide","save_history":"1","history_limit":10,"show_contact_list":"0","presentation_style":"sliders","show_name":"1","show_position":"1","show_email":"0","show_street_address":"1","show_suburb":"1","show_state":"1","show_postcode":"1","show_country":"1","show_telephone":"1","show_mobile":"1","show_fax":"1","show_webpage":"1","show_misc":"1","show_image":"1","image":"","allow_vcard":"0","show_articles":"0","show_profile":"0","show_links":"0","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","contact_icons":"0","icon_address":"","icon_email":"","icon_telephone":"","icon_mobile":"","icon_fax":"","icon_misc":"","show_headings":"1","show_position_headings":"1","show_email_headings":"0","show_telephone_headings":"1","show_mobile_headings":"0","show_fax_headings":"0","allow_vcard_headings":"0","show_suburb_headings":"1","show_state_headings":"1","show_country_headings":"1","show_email_form":"1","show_email_copy":"1","banned_email":"","banned_subject":"","banned_text":"","validate_session":"1","custom_reply":"0","redirect":"","show_category_crumb":"0","metakey":"","metadesc":"","robots":"","author":"","rights":"","xreference":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(9, 'com_cpanel', 'component', 'com_cpanel', '', 1, 1, 1, 1, '{"name":"com_cpanel","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CPANEL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10, 'com_installer', 'component', 'com_installer', '', 1, 1, 1, 1, '{"name":"com_installer","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_INSTALLER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(11, 'com_languages', 'component', 'com_languages', '', 1, 1, 1, 1, '{"name":"com_languages","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LANGUAGES_XML_DESCRIPTION","group":""}', '{"administrator":"en-GB","site":"pt-PT"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(12, 'com_login', 'component', 'com_login', '', 1, 1, 1, 1, '{"name":"com_login","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(13, 'com_media', 'component', 'com_media', '', 1, 1, 0, 1, '{"name":"com_media","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MEDIA_XML_DESCRIPTION","group":"","filename":"media"}', '{"upload_extensions":"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS","upload_maxsize":"10","file_path":"images","image_path":"images","restrict_uploads":"1","allowed_media_usergroup":"3","check_mime":"1","image_extensions":"bmp,gif,jpg,png","ignore_extensions":"","upload_mime":"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip","upload_mime_illegal":"text\\/html"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(14, 'com_menus', 'component', 'com_menus', '', 1, 1, 1, 1, '{"name":"com_menus","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MENUS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(15, 'com_messages', 'component', 'com_messages', '', 1, 1, 1, 1, '{"name":"com_messages","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MESSAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(16, 'com_modules', 'component', 'com_modules', '', 1, 1, 1, 1, '{"name":"com_modules","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MODULES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(17, 'com_newsfeeds', 'component', 'com_newsfeeds', '', 1, 1, 1, 0, '{"name":"com_newsfeeds","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '{"newsfeed_layout":"_:default","save_history":"1","history_limit":5,"show_feed_image":"1","show_feed_description":"1","show_item_description":"1","feed_character_count":"0","feed_display_order":"des","float_first":"right","float_second":"right","show_tags":"1","category_layout":"_:default","show_category_title":"1","show_description":"1","show_description_image":"1","maxLevel":"-1","show_empty_categories":"0","show_subcat_desc":"1","show_cat_items":"1","show_cat_tags":"1","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_items_cat":"1","filter_field":"1","show_pagination_limit":"1","show_headings":"1","show_articles":"0","show_link":"1","show_pagination":"1","show_pagination_results":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(18, 'com_plugins', 'component', 'com_plugins', '', 1, 1, 1, 1, '{"name":"com_plugins","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_PLUGINS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(19, 'com_search', 'component', 'com_search', '', 1, 1, 1, 0, '{"name":"com_search","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_SEARCH_XML_DESCRIPTION","group":"","filename":"search"}', '{"enabled":"0","show_date":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(20, 'com_templates', 'component', 'com_templates', '', 1, 1, 1, 1, '{"name":"com_templates","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_TEMPLATES_XML_DESCRIPTION","group":""}', '{"template_positions_display":"1","upload_limit":"10","image_formats":"gif,bmp,jpg,jpeg,png","source_formats":"txt,less,ini,xml,js,php,css","font_formats":"woff,ttf,otf","compressed_formats":"zip"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(22, 'com_content', 'component', 'com_content', '', 1, 1, 0, 1, '{"name":"com_content","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '{"article_layout":"_:default","show_title":"1","link_titles":"0","show_intro":"1","info_block_position":"0","info_block_show_title":"1","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"1","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"0","show_readmore":"1","show_readmore_title":"1","readmore_limit":"100","show_tags":"1","show_icons":"1","show_print_icon":"1","show_email_icon":"1","show_hits":"0","show_noauth":"0","urls_position":"0","show_publishing_options":"1","show_article_options":"1","save_history":"0","history_limit":10,"show_urls_images_frontend":"0","show_urls_images_backend":"0","targeta":0,"targetb":0,"targetc":0,"float_intro":"right","float_fulltext":"right","category_layout":"_:blog","show_category_heading_title_text":"1","show_category_title":"1","show_description":"0","show_description_image":"0","maxLevel":"1","show_empty_categories":"0","show_no_articles":"1","show_subcat_desc":"1","show_cat_num_articles":"0","show_cat_tags":"1","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"0","show_cat_num_articles_cat":"1","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"0","show_subcategory_content":"-1","show_pagination_limit":"1","filter_field":"hide","show_headings":"1","list_show_date":"0","date_format":"","list_show_hits":"1","list_show_author":"1","orderby_pri":"none","orderby_sec":"rdate","order_date":"published","show_pagination":"2","show_pagination_results":"1","show_featured":"show","show_feed_link":"1","feed_summary":"0","feed_show_readmore":"0","saveTypes":"Array","option":"com_poweradmin","view":"component","layout":"set_article_layout","task":"component.custompageSave"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(23, 'com_config', 'component', 'com_config', '', 1, 1, 0, 1, '{"name":"com_config","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONFIG_XML_DESCRIPTION","group":""}', '{"filters":{"1":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"9":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"6":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"7":{"filter_type":"NONE","filter_tags":"","filter_attributes":""},"2":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"3":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"4":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"5":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"8":{"filter_type":"NONE","filter_tags":"","filter_attributes":""}}}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(24, 'com_redirect', 'component', 'com_redirect', '', 1, 1, 0, 1, '{"name":"com_redirect","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_REDIRECT_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(25, 'com_users', 'component', 'com_users', '', 1, 1, 0, 1, '{"name":"com_users","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_USERS_XML_DESCRIPTION","group":"","filename":"users"}', '{"allowUserRegistration":"1","new_usertype":"2","guest_usergroup":"9","sendpassword":"1","useractivation":"1","mail_to_admin":"0","captcha":"","frontend_userparams":"1","site_language":"0","change_login_name":"0","reset_count":"10","reset_time":"1","minimum_length":"4","minimum_integers":"0","minimum_symbols":"0","minimum_uppercase":"0","save_history":"1","history_limit":5,"mailSubjectPrefix":"","mailBodySuffix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(27, 'com_finder', 'component', 'com_finder', '', 1, 1, 0, 0, '{"name":"com_finder","type":"component","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_FINDER_XML_DESCRIPTION","group":"","filename":"finder"}', '{"show_description":"1","description_length":255,"allow_empty_query":"0","show_url":"1","show_advanced":"1","expand_advanced":"0","show_date_filters":"0","highlight_terms":"1","opensearch_name":"","opensearch_description":"","batch_size":"50","memory_table_limit":30000,"title_multiplier":"1.7","text_multiplier":"0.7","meta_multiplier":"1.2","path_multiplier":"2.0","misc_multiplier":"0.3","stemmer":"snowball"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(28, 'com_joomlaupdate', 'component', 'com_joomlaupdate', '', 1, 1, 0, 1, '{"name":"com_joomlaupdate","type":"component","creationDate":"February 2012","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.2","description":"COM_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(29, 'com_tags', 'component', 'com_tags', '', 1, 1, 1, 1, '{"name":"com_tags","type":"component","creationDate":"December 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"COM_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '{"tag_layout":"_:default","save_history":"1","history_limit":5,"show_tag_title":"0","tag_list_show_tag_image":"0","tag_list_show_tag_description":"0","tag_list_image":"","show_tag_num_items":"0","tag_list_orderby":"title","tag_list_orderby_direction":"ASC","show_headings":"0","tag_list_show_date":"0","tag_list_show_item_image":"0","tag_list_show_item_description":"0","tag_list_item_maximum_characters":0,"return_any_or_all":"1","include_children":"0","maximum":200,"tag_list_language_filter":"all","tags_layout":"_:default","all_tags_orderby":"title","all_tags_orderby_direction":"ASC","all_tags_show_tag_image":"0","all_tags_show_tag_descripion":"0","all_tags_tag_maximum_characters":20,"all_tags_show_tag_hits":"0","filter_field":"1","show_pagination_limit":"1","show_pagination":"2","show_pagination_results":"1","tag_field_ajax_mode":"1","show_feed_link":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(30, 'com_contenthistory', 'component', 'com_contenthistory', '', 1, 1, 1, 0, '{"name":"com_contenthistory","type":"component","creationDate":"May 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_CONTENTHISTORY_XML_DESCRIPTION","group":"","filename":"contenthistory"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(31, 'com_ajax', 'component', 'com_ajax', '', 1, 1, 1, 1, '{"name":"com_ajax","type":"component","creationDate":"August 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_AJAX_XML_DESCRIPTION","group":"","filename":"ajax"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(32, 'com_postinstall', 'component', 'com_postinstall', '', 1, 1, 1, 1, '{"name":"com_postinstall","type":"component","creationDate":"September 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_POSTINSTALL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(102, 'LIB_PHPUTF8', 'library', 'phputf8', '', 0, 1, 1, 1, '{"name":"LIB_PHPUTF8","type":"library","creationDate":"2006","author":"Harry Fuecks","copyright":"Copyright various authors","authorEmail":"hfuecks@gmail.com","authorUrl":"http:\\/\\/sourceforge.net\\/projects\\/phputf8","version":"0.5","description":"LIB_PHPUTF8_XML_DESCRIPTION","group":"","filename":"phputf8"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(103, 'LIB_JOOMLA', 'library', 'joomla', '', 0, 1, 1, 1, '{"name":"LIB_JOOMLA","type":"library","creationDate":"2008","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"https:\\/\\/www.joomla.org","version":"13.1","description":"LIB_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '{"mediaversion":"36368920a84be253bf39247a296f7177"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(104, 'LIB_IDNA', 'library', 'idna_convert', '', 0, 1, 1, 1, '{"name":"LIB_IDNA","type":"library","creationDate":"2004","author":"phlyLabs","copyright":"2004-2011 phlyLabs Berlin, http:\\/\\/phlylabs.de","authorEmail":"phlymail@phlylabs.de","authorUrl":"http:\\/\\/phlylabs.de","version":"0.8.0","description":"LIB_IDNA_XML_DESCRIPTION","group":"","filename":"idna_convert"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(105, 'FOF', 'library', 'fof', '', 0, 1, 1, 1, '{"name":"FOF","type":"library","creationDate":"2015-04-22 13:15:32","author":"Nicholas K. Dionysopoulos \\/ Akeeba Ltd","copyright":"(C)2011-2015 Nicholas K. Dionysopoulos","authorEmail":"nicholas@akeebabackup.com","authorUrl":"https:\\/\\/www.akeebabackup.com","version":"2.4.3","description":"LIB_FOF_XML_DESCRIPTION","group":"","filename":"fof"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(106, 'LIB_PHPASS', 'library', 'phpass', '', 0, 1, 1, 1, '{"name":"LIB_PHPASS","type":"library","creationDate":"2004-2006","author":"Solar Designer","copyright":"","authorEmail":"solar@openwall.com","authorUrl":"http:\\/\\/www.openwall.com\\/phpass\\/","version":"0.3","description":"LIB_PHPASS_XML_DESCRIPTION","group":"","filename":"phpass"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(200, 'mod_articles_archive', 'module', 'mod_articles_archive', '', 0, 1, 1, 0, '{"name":"mod_articles_archive","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION","group":"","filename":"mod_articles_archive"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(201, 'mod_articles_latest', 'module', 'mod_articles_latest', '', 0, 1, 1, 0, '{"name":"mod_articles_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_NEWS_XML_DESCRIPTION","group":"","filename":"mod_articles_latest"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(202, 'mod_articles_popular', 'module', 'mod_articles_popular', '', 0, 1, 1, 0, '{"name":"mod_articles_popular","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_articles_popular"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(203, 'mod_banners', 'module', 'mod_banners', '', 0, 1, 1, 0, '{"name":"mod_banners","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BANNERS_XML_DESCRIPTION","group":"","filename":"mod_banners"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(204, 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', 0, 1, 1, 1, '{"name":"mod_breadcrumbs","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BREADCRUMBS_XML_DESCRIPTION","group":"","filename":"mod_breadcrumbs"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(205, 'mod_custom', 'module', 'mod_custom', '', 0, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":"","filename":"mod_custom"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(206, 'mod_feed', 'module', 'mod_feed', '', 0, 1, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":"","filename":"mod_feed"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(207, 'mod_footer', 'module', 'mod_footer', '', 0, 1, 1, 0, '{"name":"mod_footer","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FOOTER_XML_DESCRIPTION","group":"","filename":"mod_footer"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(208, 'mod_login', 'module', 'mod_login', '', 0, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":"","filename":"mod_login"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(209, 'mod_menu', 'module', 'mod_menu', '', 0, 1, 1, 1, '{"name":"mod_menu","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":"","filename":"mod_menu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(210, 'mod_articles_news', 'module', 'mod_articles_news', '', 0, 1, 1, 0, '{"name":"mod_articles_news","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_NEWS_XML_DESCRIPTION","group":"","filename":"mod_articles_news"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(211, 'mod_random_image', 'module', 'mod_random_image', '', 0, 1, 1, 0, '{"name":"mod_random_image","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RANDOM_IMAGE_XML_DESCRIPTION","group":"","filename":"mod_random_image"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(212, 'mod_related_items', 'module', 'mod_related_items', '', 0, 1, 1, 0, '{"name":"mod_related_items","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RELATED_XML_DESCRIPTION","group":"","filename":"mod_related_items"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(213, 'mod_search', 'module', 'mod_search', '', 0, 1, 1, 0, '{"name":"mod_search","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SEARCH_XML_DESCRIPTION","group":"","filename":"mod_search"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(214, 'mod_stats', 'module', 'mod_stats', '', 0, 1, 1, 0, '{"name":"mod_stats","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":"","filename":"mod_stats"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(215, 'mod_syndicate', 'module', 'mod_syndicate', '', 0, 1, 1, 1, '{"name":"mod_syndicate","type":"module","creationDate":"May 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SYNDICATE_XML_DESCRIPTION","group":"","filename":"mod_syndicate"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(216, 'mod_users_latest', 'module', 'mod_users_latest', '', 0, 1, 1, 0, '{"name":"mod_users_latest","type":"module","creationDate":"December 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_USERS_LATEST_XML_DESCRIPTION","group":"","filename":"mod_users_latest"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(218, 'mod_whosonline', 'module', 'mod_whosonline', '', 0, 1, 1, 0, '{"name":"mod_whosonline","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WHOSONLINE_XML_DESCRIPTION","group":"","filename":"mod_whosonline"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(219, 'mod_wrapper', 'module', 'mod_wrapper', '', 0, 1, 1, 0, '{"name":"mod_wrapper","type":"module","creationDate":"October 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WRAPPER_XML_DESCRIPTION","group":"","filename":"mod_wrapper"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(220, 'mod_articles_category', 'module', 'mod_articles_category', '', 0, 1, 1, 0, '{"name":"mod_articles_category","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION","group":"","filename":"mod_articles_category"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(221, 'mod_articles_categories', 'module', 'mod_articles_categories', '', 0, 1, 1, 0, '{"name":"mod_articles_categories","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION","group":"","filename":"mod_articles_categories"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(222, 'mod_languages', 'module', 'mod_languages', '', 0, 1, 1, 1, '{"name":"mod_languages","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.0","description":"MOD_LANGUAGES_XML_DESCRIPTION","group":"","filename":"mod_languages"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(223, 'mod_finder', 'module', 'mod_finder', '', 0, 1, 0, 0, '{"name":"mod_finder","type":"module","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FINDER_XML_DESCRIPTION","group":"","filename":"mod_finder"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(300, 'mod_custom', 'module', 'mod_custom', '', 1, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":"","filename":"mod_custom"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(301, 'mod_feed', 'module', 'mod_feed', '', 1, 1, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":"","filename":"mod_feed"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(302, 'mod_latest', 'module', 'mod_latest', '', 1, 1, 1, 0, '{"name":"mod_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_XML_DESCRIPTION","group":"","filename":"mod_latest"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(303, 'mod_logged', 'module', 'mod_logged', '', 1, 1, 1, 0, '{"name":"mod_logged","type":"module","creationDate":"January 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGGED_XML_DESCRIPTION","group":"","filename":"mod_logged"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(304, 'mod_login', 'module', 'mod_login', '', 1, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"March 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":"","filename":"mod_login"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(305, 'mod_menu', 'module', 'mod_menu', '', 1, 1, 1, 0, '{"name":"mod_menu","type":"module","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":"","filename":"mod_menu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(307, 'mod_popular', 'module', 'mod_popular', '', 1, 1, 1, 0, '{"name":"mod_popular","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_popular"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(308, 'mod_quickicon', 'module', 'mod_quickicon', '', 1, 1, 1, 1, '{"name":"mod_quickicon","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_QUICKICON_XML_DESCRIPTION","group":"","filename":"mod_quickicon"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(309, 'mod_status', 'module', 'mod_status', '', 1, 1, 1, 0, '{"name":"mod_status","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATUS_XML_DESCRIPTION","group":"","filename":"mod_status"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(310, 'mod_submenu', 'module', 'mod_submenu', '', 1, 1, 1, 0, '{"name":"mod_submenu","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SUBMENU_XML_DESCRIPTION","group":"","filename":"mod_submenu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(311, 'mod_title', 'module', 'mod_title', '', 1, 1, 1, 0, '{"name":"mod_title","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TITLE_XML_DESCRIPTION","group":"","filename":"mod_title"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(312, 'mod_toolbar', 'module', 'mod_toolbar', '', 1, 1, 1, 1, '{"name":"mod_toolbar","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TOOLBAR_XML_DESCRIPTION","group":"","filename":"mod_toolbar"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(313, 'mod_multilangstatus', 'module', 'mod_multilangstatus', '', 1, 1, 1, 0, '{"name":"mod_multilangstatus","type":"module","creationDate":"September 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MULTILANGSTATUS_XML_DESCRIPTION","group":"","filename":"mod_multilangstatus"}', '{"cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(314, 'mod_version', 'module', 'mod_version', '', 1, 1, 1, 0, '{"name":"mod_version","type":"module","creationDate":"January 2012","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_VERSION_XML_DESCRIPTION","group":"","filename":"mod_version"}', '{"format":"short","product":"1","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(315, 'mod_stats_admin', 'module', 'mod_stats_admin', '', 1, 1, 1, 0, '{"name":"mod_stats_admin","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":"","filename":"mod_stats_admin"}', '{"serverinfo":"0","siteinfo":"0","counter":"0","increase":"0","cache":"1","cache_time":"900","cachemode":"static"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(316, 'mod_tags_popular', 'module', 'mod_tags_popular', '', 0, 1, 1, 0, '{"name":"mod_tags_popular","type":"module","creationDate":"January 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"MOD_TAGS_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_tags_popular"}', '{"maximum":"5","timeframe":"alltime","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(317, 'mod_tags_similar', 'module', 'mod_tags_similar', '', 0, 1, 1, 0, '{"name":"mod_tags_similar","type":"module","creationDate":"January 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"MOD_TAGS_SIMILAR_XML_DESCRIPTION","group":"","filename":"mod_tags_similar"}', '{"maximum":"5","matchtype":"any","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(400, 'plg_authentication_gmail', 'plugin', 'gmail', 'authentication', 0, 1, 1, 0, '{"name":"plg_authentication_gmail","type":"plugin","creationDate":"February 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_GMAIL_XML_DESCRIPTION","group":"","filename":"gmail"}', '{"applysuffix":"0","suffix":"","verifypeer":"1","user_blacklist":""}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(401, 'plg_authentication_joomla', 'plugin', 'joomla', 'authentication', 0, 1, 1, 1, '{"name":"plg_authentication_joomla","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_AUTH_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(402, 'plg_authentication_ldap', 'plugin', 'ldap', 'authentication', 0, 1, 1, 0, '{"name":"plg_authentication_ldap","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LDAP_XML_DESCRIPTION","group":"","filename":"ldap"}', '{"host":"","port":"389","use_ldapV3":"0","negotiate_tls":"0","no_referrals":"0","auth_method":"bind","base_dn":"","search_string":"","users_dn":"","username":"admin","password":"bobby7","ldap_fullname":"fullName","ldap_email":"mail","ldap_uid":"uid"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(403, 'plg_content_contact', 'plugin', 'contact', 'content', 0, 1, 1, 0, '{"name":"plg_content_contact","type":"plugin","creationDate":"January 2014","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.2","description":"PLG_CONTENT_CONTACT_XML_DESCRIPTION","group":"","filename":"contact"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(404, 'plg_content_emailcloak', 'plugin', 'emailcloak', 'content', 0, 1, 1, 0, '{"name":"plg_content_emailcloak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION","group":"","filename":"emailcloak"}', '{"mode":"1"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(406, 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', 0, 1, 1, 0, '{"name":"plg_content_loadmodule","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOADMODULE_XML_DESCRIPTION","group":"","filename":"loadmodule"}', '{"style":"xhtml"}', '', '', 0, '2011-09-18 15:22:50', 0, 0),
(407, 'plg_content_pagebreak', 'plugin', 'pagebreak', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagebreak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION","group":"","filename":"pagebreak"}', '{"title":"1","multipage_toc":"1","showall":"1"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(408, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagenavigation","type":"plugin","creationDate":"January 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_PAGENAVIGATION_XML_DESCRIPTION","group":"","filename":"pagenavigation"}', '{"position":"1"}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(409, 'plg_content_vote', 'plugin', 'vote', 'content', 0, 1, 1, 0, '{"name":"plg_content_vote","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_VOTE_XML_DESCRIPTION","group":"","filename":"vote"}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(410, 'plg_editors_codemirror', 'plugin', 'codemirror', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_codemirror","type":"plugin","creationDate":"28 March 2011","author":"Marijn Haverbeke","copyright":"Copyright (C) 2014 by Marijn Haverbeke <marijnh@gmail.com> and others","authorEmail":"marijnh@gmail.com","authorUrl":"http:\\/\\/codemirror.net\\/","version":"5.18.0","description":"PLG_CODEMIRROR_XML_DESCRIPTION","group":"","filename":"codemirror"}', '{"lineNumbers":"1","lineWrapping":"1","matchTags":"1","matchBrackets":"1","marker-gutter":"1","autoCloseTags":"1","autoCloseBrackets":"1","autoFocus":"1","theme":"default","tabmode":"indent"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(411, 'plg_editors_none', 'plugin', 'none', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_none","type":"plugin","creationDate":"September 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_NONE_XML_DESCRIPTION","group":"","filename":"none"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(412, 'plg_editors_tinymce', 'plugin', 'tinymce', 'editors', 0, 1, 1, 0, '{"name":"plg_editors_tinymce","type":"plugin","creationDate":"2005-2016","author":"Ephox Corporation","copyright":"Ephox Corporation","authorEmail":"N\\/A","authorUrl":"http:\\/\\/www.tinymce.com","version":"4.4.3","description":"PLG_TINY_XML_DESCRIPTION","group":"","filename":"tinymce"}', '{"mode":"1","skin":"0","mobile":"0","entity_encoding":"raw","lang_mode":"1","text_direction":"ltr","content_css":"1","content_css_custom":"","relative_urls":"1","newlines":"0","invalid_elements":"script,applet,iframe","extended_elements":"","html_height":"550","html_width":"750","resizing":"1","element_path":"1","fonts":"1","paste":"1","searchreplace":"1","insertdate":"1","colors":"1","table":"1","smilies":"1","hr":"1","link":"1","media":"1","print":"1","directionality":"1","fullscreen":"1","alignment":"1","visualchars":"1","visualblocks":"1","nonbreaking":"1","template":"1","blockquote":"1","wordcount":"1","advlist":"1","autosave":"1","contextmenu":"1","inlinepopups":"1","custom_plugin":"","custom_button":""}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(413, 'plg_editors-xtd_article', 'plugin', 'article', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_article","type":"plugin","creationDate":"October 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_ARTICLE_XML_DESCRIPTION","group":"","filename":"article"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(414, 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_image","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_IMAGE_XML_DESCRIPTION","group":"","filename":"image"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(415, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_pagebreak","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION","group":"","filename":"pagebreak"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(416, 'plg_editors-xtd_readmore', 'plugin', 'readmore', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_readmore","type":"plugin","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_READMORE_XML_DESCRIPTION","group":"","filename":"readmore"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0);
INSERT INTO `j78lr_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(417, 'plg_search_categories', 'plugin', 'categories', 'search', 0, 1, 1, 0, '{"name":"plg_search_categories","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION","group":"","filename":"categories"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(418, 'plg_search_contacts', 'plugin', 'contacts', 'search', 0, 1, 1, 0, '{"name":"plg_search_contacts","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTACTS_XML_DESCRIPTION","group":"","filename":"contacts"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(419, 'plg_search_content', 'plugin', 'content', 'search', 0, 1, 1, 0, '{"name":"plg_search_content","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(420, 'plg_search_newsfeeds', 'plugin', 'newsfeeds', 'search', 0, 1, 1, 0, '{"name":"plg_search_newsfeeds","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(422, 'plg_system_languagefilter', 'plugin', 'languagefilter', 'system', 0, 0, 1, 1, '{"name":"plg_system_languagefilter","type":"plugin","creationDate":"July 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION","group":"","filename":"languagefilter"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(423, 'plg_system_p3p', 'plugin', 'p3p', 'system', 0, 0, 1, 0, '{"name":"plg_system_p3p","type":"plugin","creationDate":"September 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_P3P_XML_DESCRIPTION","group":"","filename":"p3p"}', '{"headers":"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(424, 'plg_system_cache', 'plugin', 'cache', 'system', 0, 0, 1, 1, '{"name":"plg_system_cache","type":"plugin","creationDate":"February 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CACHE_XML_DESCRIPTION","group":"","filename":"cache"}', '{"browsercache":"0","cachetime":"15"}', '', '', 0, '0000-00-00 00:00:00', 9, 0),
(425, 'plg_system_debug', 'plugin', 'debug', 'system', 0, 1, 1, 0, '{"name":"plg_system_debug","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_DEBUG_XML_DESCRIPTION","group":"","filename":"debug"}', '{"profile":"1","queries":"1","memory":"1","language_files":"1","language_strings":"1","strip-first":"1","strip-prefix":"","strip-suffix":""}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(426, 'plg_system_log', 'plugin', 'log', 'system', 0, 1, 1, 1, '{"name":"plg_system_log","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOG_XML_DESCRIPTION","group":"","filename":"log"}', '', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(427, 'plg_system_redirect', 'plugin', 'redirect', 'system', 0, 0, 1, 1, '{"name":"plg_system_redirect","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_REDIRECT_XML_DESCRIPTION","group":"","filename":"redirect"}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(428, 'plg_system_remember', 'plugin', 'remember', 'system', 0, 1, 1, 1, '{"name":"plg_system_remember","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_REMEMBER_XML_DESCRIPTION","group":"","filename":"remember"}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(429, 'plg_system_sef', 'plugin', 'sef', 'system', 0, 1, 1, 0, '{"name":"plg_system_sef","type":"plugin","creationDate":"December 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEF_XML_DESCRIPTION","group":"","filename":"sef"}', '', '', '', 0, '0000-00-00 00:00:00', 8, 0),
(430, 'plg_system_logout', 'plugin', 'logout', 'system', 0, 1, 1, 1, '{"name":"plg_system_logout","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION","group":"","filename":"logout"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(431, 'plg_user_contactcreator', 'plugin', 'contactcreator', 'user', 0, 0, 1, 0, '{"name":"plg_user_contactcreator","type":"plugin","creationDate":"August 2009","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTACTCREATOR_XML_DESCRIPTION","group":"","filename":"contactcreator"}', '{"autowebpage":"","category":"34","autopublish":"0"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(432, 'plg_user_joomla', 'plugin', 'joomla', 'user', 0, 1, 1, 0, '{"name":"plg_user_joomla","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '{"autoregister":"1","mail_to_user":"1","forceLogout":"1"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(433, 'plg_user_profile', 'plugin', 'profile', 'user', 0, 1, 1, 0, '{"name":"plg_user_profile","type":"plugin","creationDate":"January 2008","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_PROFILE_XML_DESCRIPTION","group":"","filename":"profile"}', '{"register-require_address1":"1","register-require_address2":"1","register-require_city":"1","register-require_region":"1","register-require_country":"1","register-require_postal_code":"1","register-require_phone":"1","register-require_website":"1","register-require_favoritebook":"1","register-require_aboutme":"1","register-require_tos":"1","register-require_dob":"1","profile-require_address1":"1","profile-require_address2":"1","profile-require_city":"1","profile-require_region":"1","profile-require_country":"1","profile-require_postal_code":"1","profile-require_phone":"1","profile-require_website":"1","profile-require_favoritebook":"1","profile-require_aboutme":"1","profile-require_tos":"1","profile-require_dob":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(434, 'plg_extension_joomla', 'plugin', 'joomla', 'extension', 0, 1, 1, 1, '{"name":"plg_extension_joomla","type":"plugin","creationDate":"May 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(435, 'plg_content_joomla', 'plugin', 'joomla', 'content', 0, 1, 1, 0, '{"name":"plg_content_joomla","type":"plugin","creationDate":"November 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(436, 'plg_system_languagecode', 'plugin', 'languagecode', 'system', 0, 0, 1, 0, '{"name":"plg_system_languagecode","type":"plugin","creationDate":"November 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION","group":"","filename":"languagecode"}', '', '', '', 0, '0000-00-00 00:00:00', 10, 0),
(437, 'plg_quickicon_joomlaupdate', 'plugin', 'joomlaupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_joomlaupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION","group":"","filename":"joomlaupdate"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(438, 'plg_quickicon_extensionupdate', 'plugin', 'extensionupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_extensionupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION","group":"","filename":"extensionupdate"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(439, 'plg_captcha_recaptcha', 'plugin', 'recaptcha', 'captcha', 0, 1, 1, 0, '{"name":"plg_captcha_recaptcha","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.4.0","description":"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION","group":"","filename":"recaptcha"}', '{"public_key":"","private_key":"","theme":"clean"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(440, 'plg_system_highlight', 'plugin', 'highlight', 'system', 0, 1, 1, 0, '{"name":"plg_system_highlight","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION","group":"","filename":"highlight"}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(441, 'plg_content_finder', 'plugin', 'finder', 'content', 0, 1, 1, 0, '{"name":"plg_content_finder","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_FINDER_XML_DESCRIPTION","group":"","filename":"finder"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(442, 'plg_finder_categories', 'plugin', 'categories', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_categories","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CATEGORIES_XML_DESCRIPTION","group":"","filename":"categories"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(443, 'plg_finder_contacts', 'plugin', 'contacts', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_contacts","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTACTS_XML_DESCRIPTION","group":"","filename":"contacts"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(444, 'plg_finder_content', 'plugin', 'content', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_content","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(445, 'plg_finder_newsfeeds', 'plugin', 'newsfeeds', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_newsfeeds","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(447, 'plg_finder_tags', 'plugin', 'tags', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_tags","type":"plugin","creationDate":"February 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(448, 'plg_twofactorauth_totp', 'plugin', 'totp', 'twofactorauth', 0, 0, 1, 0, '{"name":"plg_twofactorauth_totp","type":"plugin","creationDate":"August 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"PLG_TWOFACTORAUTH_TOTP_XML_DESCRIPTION","group":"","filename":"totp"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(449, 'plg_authentication_cookie', 'plugin', 'cookie', 'authentication', 0, 1, 1, 0, '{"name":"plg_authentication_cookie","type":"plugin","creationDate":"July 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_AUTH_COOKIE_XML_DESCRIPTION","group":"","filename":"cookie"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(450, 'plg_twofactorauth_yubikey', 'plugin', 'yubikey', 'twofactorauth', 0, 0, 1, 0, '{"name":"plg_twofactorauth_yubikey","type":"plugin","creationDate":"September 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"PLG_TWOFACTORAUTH_YUBIKEY_XML_DESCRIPTION","group":"","filename":"yubikey"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(451, 'plg_search_tags', 'plugin', 'tags', 'search', 0, 1, 1, 0, '{"name":"plg_search_tags","type":"plugin","creationDate":"March 2014","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '{"search_limit":"50","show_tagged_items":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(452, 'plg_system_updatenotification', 'plugin', 'updatenotification', 'system', 0, 1, 1, 0, '{"name":"plg_system_updatenotification","type":"plugin","creationDate":"May 2015","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.0","description":"PLG_SYSTEM_UPDATENOTIFICATION_XML_DESCRIPTION","group":"","filename":"updatenotification"}', '{"lastrun":1478691492}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(453, 'plg_editors-xtd_module', 'plugin', 'module', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_module","type":"plugin","creationDate":"October 2015","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.0","description":"PLG_MODULE_XML_DESCRIPTION","group":"","filename":"module"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(454, 'plg_system_stats', 'plugin', 'stats', 'system', 0, 1, 1, 0, '{"name":"plg_system_stats","type":"plugin","creationDate":"November 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.0","description":"PLG_SYSTEM_STATS_XML_DESCRIPTION","group":"","filename":"stats"}', '{"mode":1,"lastrun":1478691544,"unique_id":"609a94dfdf7035ac535e98ea0ed0046d149700a7","interval":12}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(455, 'plg_installer_packageinstaller', 'plugin', 'packageinstaller', 'installer', 0, 1, 1, 1, '{"name":"plg_installer_packageinstaller","type":"plugin","creationDate":"May 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.0","description":"PLG_INSTALLER_PACKAGEINSTALLER_PLUGIN_XML_DESCRIPTION","group":"","filename":"packageinstaller"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(456, 'PLG_INSTALLER_FOLDERINSTALLER', 'plugin', 'folderinstaller', 'installer', 0, 1, 1, 1, '{"name":"PLG_INSTALLER_FOLDERINSTALLER","type":"plugin","creationDate":"May 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.0","description":"PLG_INSTALLER_FOLDERINSTALLER_PLUGIN_XML_DESCRIPTION","group":"","filename":"folderinstaller"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(457, 'PLG_INSTALLER_URLINSTALLER', 'plugin', 'urlinstaller', 'installer', 0, 1, 1, 1, '{"name":"PLG_INSTALLER_URLINSTALLER","type":"plugin","creationDate":"May 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.0","description":"PLG_INSTALLER_URLINSTALLER_PLUGIN_XML_DESCRIPTION","group":"","filename":"urlinstaller"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(504, 'hathor', 'template', 'hathor', '', 1, 1, 1, 0, '{"name":"hathor","type":"template","creationDate":"May 2010","author":"Andrea Tarr","copyright":"Copyright (C) 2005 - 2016 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"3.0.0","description":"TPL_HATHOR_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"showSiteName":"0","colourChoice":"0","boldText":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(506, 'protostar', 'template', 'protostar', '', 0, 1, 1, 0, '{"name":"protostar","type":"template","creationDate":"4\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2016 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_PROTOSTAR_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"templateColor":"","logoFile":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(507, 'isis', 'template', 'isis', '', 1, 1, 1, 0, '{"name":"isis","type":"template","creationDate":"3\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2016 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_ISIS_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"templateColor":"","logoFile":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(600, 'English (en-GB)', 'language', 'en-GB', '', 0, 1, 1, 1, '{"name":"English (en-GB)","type":"language","creationDate":"October 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.4","description":"en-GB site language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(601, 'English (en-GB)', 'language', 'en-GB', '', 1, 1, 1, 1, '{"name":"English (en-GB)","type":"language","creationDate":"October 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.4","description":"en-GB administrator language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(700, 'files_joomla', 'file', 'joomla', '', 0, 1, 1, 1, '{"name":"files_joomla","type":"file","creationDate":"October 2016","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.4","description":"FILES_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(802, 'English (en-GB) Language Pack', 'package', 'pkg_en-GB', '', 0, 1, 1, 1, '{"name":"English (en-GB) Language Pack","type":"package","creationDate":"October 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.4.1","description":"en-GB language pack","group":"","filename":"pkg_en-GB"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10000, 'plg_installer_webinstaller', 'plugin', 'webinstaller', 'installer', 0, 1, 1, 0, '{"name":"plg_installer_webinstaller","type":"plugin","creationDate":"17 February 2016","author":"Joomla! Project","copyright":"Copyright (C) 2013-2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.1.0","description":"PLG_INSTALLER_WEBINSTALLER_XML_DESCRIPTION","group":"","filename":"webinstaller"}', '{"tab_position":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10010, 'SCLogin', 'module', 'mod_sclogin', '', 0, 1, 0, 0, '{"name":"SCLogin","type":"module","creationDate":"2016\\/08\\/25","author":"SourceCoast | www.sourcecoast.com","copyright":"Copyright (C) 2009-2015 SourceCoast. All rights reserved.","authorEmail":"support@sourcecoast.com","authorUrl":"http:\\/\\/www.sourcecoast.com","version":"7.0.3","description":"\\n        Enhanced login module with flexible styles and customizations for Facebook, Google+, Twitter, LinkedIn, Amazon, Github, Instagram, Meetup, VK.com and Windows Live Authentication when combined with <a href=\'http:\\/\\/www.sourcecoast.com\\/joomla-facebook\\/\' target=\'_blank\'>JFBConnect<\\/a>.<br\\/><br\\/>Please visit <a href=\'http:\\/\\/www.sourcecoast.com\\/sclogin\\/features\\/\' target=\'_blank\'>SourceCoast<\\/a> for more information or <a href=\'http:\\/\\/www.sourcecoast.com\\/forums\' target=\'_blank\'>our forums<\\/a> for support.<br\\/><br\\/>If you use SCLogin, please post a rating and a review at the Joomla! Extensions Directory: <a href=\'http:\\/\\/extensions.joomla.org\\/extensions\\/access-a-security\\/site-access\\/authentication\\/24054\' target=\'_blank\'>SCLogin Enhanced Login<\\/a>","group":"","filename":"mod_sclogin"}', '{"displayType":"inline","modalButtonStyle":"button","modalCloseButton":"1","socialButtonsLayout":"vertical","showLoginForm":"1","showForgotUsername":"none","showForgotPassword":"none","showRegisterLink":"1","showRememberMe":"0","register_type":"joomla","jlogin":"","usesecure":"0","enableProfilePic":"0","profileWidth":"50","profileHeight":"50","linkProfile":"0","greetingName":"1","showUserMenu":"","userMenuStyle":"0","userMenuTitle":"1","showLogoutButton":"1","showConnectButton":"1","jlogout":"","showSociaLoginButton":"1","user_intro":"","loadJQuery":"0","showPoweredByLink":"2","moduleclass_sfx":"","cache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10013, 'mod_loginregister', 'module', 'mod_loginregister', '', 0, 1, 0, 0, '{"name":"mod_loginregister","type":"module","creationDate":"Aug 2013","author":"JM-Experts!","copyright":"Free Module by JM-Experts!. All rights reserved.","authorEmail":"info@jm-experts.com","authorUrl":"www.jm-experts.com","version":"3.1.0","description":"MOD_LOGINREGISTER_XML_DESCRIPTION","group":"","filename":"mod_loginregister"}', '{"view":"0","disablelog":"0","greeting":"1","name":"0","usesecure":"0","cache":"0","checkbox1":"1","jqueryload":"local","tou":"1","checkbox":"checked","articleid":"1","title":"I Agree to the Terms of Use","enablecap":"0","public":"","private":"","jmtheme":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10017, 'plg_system_jsnframework', 'plugin', 'jsnframework', 'system', 0, 1, 1, 1, '{"name":"plg_system_jsnframework","type":"plugin","creationDate":"10/05/2016","author":"JoomlaShine.com","copyright":"Copyright (C) 2013 JoomlaShine.com. All Rights Reserved.","authorEmail":"admin@joomlashine.com","authorUrl":"www.joomlashine.com","version":"1.6.6","description":"PLG_SYSTEM_JSNFRAMEWORK_XML_DESCRIPTION","group":"","filename":"jsnframework","dependency":["poweradmin","uniform","mobilize","pagebuilder","easyslider"]}', '{"poweradmin":"poweradmin","uniform":"uniform","mobilize":"mobilize","pagebuilder":"pagebuilder","easyslider":"easyslider"}', '["poweradmin","uniform","mobilize","pagebuilder","easyslider"]', '', 0, '0000-00-00 00:00:00', -9999, 0),
(10018, 'ImageShow', 'component', 'com_imageshow', '', 1, 1, 0, 0, '{"name":"ImageShow","type":"component","creationDate":"09\\/22\\/2016","author":"JoomlaShine.com","copyright":"Copyright (c) 2008 - 2013 - JoomlaShine.com","authorEmail":"admin@joomlashine.com","authorUrl":"http:\\/\\/www.joomlashine.com","version":"5.0.2","description":"JSN IMAGESHOW FREE","group":"","filename":"imageshow"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10019, 'Content - JSN ImageShow', 'plugin', 'imageshow', 'content', 0, 1, 1, 1, '{"name":"Content - JSN ImageShow","type":"plugin","creationDate":"09/22/2016","author":"JoomlaShine.com","copyright":"Copyright (c) 2008 - 2013 - JoomlaShine.com","authorEmail":"admin@joomlashine.com","authorUrl":"http://www.joomlashine.com","version":"5.0.2","description":"JSN_IMAGESHOW_CONTENT_PLUGIN","group":"","filename":"imageshow","dependency":["imageshow"]}', '{"imageshow":"imageshow"}', '["imageshow"]', '', 0, '0000-00-00 00:00:00', 0, 0),
(10020, 'System - JSN ImageShow', 'plugin', 'imageshow', 'system', 0, 1, 1, 1, '{"name":"System - JSN ImageShow","type":"plugin","creationDate":"09/22/2016","author":"JoomlaShine.com","copyright":"Copyright (c) 2008 - 2013 - JoomlaShine.com","authorEmail":"admin@joomlashine.com","authorUrl":"http://www.joomlashine.com","version":"5.0.2","description":"JSN_IMAGESHOW_SYSTEM_PLUGIN","group":"","filename":"imageshow","dependency":["imageshow"]}', '{"imageshow":"imageshow"}', '["imageshow"]', '', 0, '0000-00-00 00:00:00', 0, 0),
(10021, 'Button - ImageShow', 'plugin', 'imageshow', 'editors-xtd', 0, 1, 1, 1, '{"name":"Button - ImageShow","type":"plugin","creationDate":"09/22/2016","author":"JoomlaShine.com","copyright":"Copyright (c) 2008 - 2013 - JoomlaShine.com","authorEmail":"admin@joomlashine.com","authorUrl":"http://www.joomlashine.com","version":"5.0.2","description":"PLG_EDITOR_JSN_IMAGESHOW_XML_DESCRIPTION","group":"","filename":"imageshow","dependency":["imageshow"]}', '{"imageshow":"imageshow"}', '["imageshow"]', '', 0, '0000-00-00 00:00:00', 0, 0),
(10022, 'JSN ImageShow', 'module', 'mod_imageshow', '', 0, 1, 0, 1, '{"name":"JSN ImageShow","type":"module","creationDate":"09/22/2016","author":"JoomlaShine.com","copyright":"Copyright (c) 2008 - 2013 - JoomlaShine.com","authorEmail":"admin@joomlashine.com","authorUrl":"http://www.joomlashine.com","version":"5.0.2","description":"JSN_MODULE_JSN_IMAGESHOW_MODULE","group":"","filename":"mod_imageshow","dependency":["imageshow"]}', '{"imageshow":"imageshow"}', '["imageshow"]', '', 0, '0000-00-00 00:00:00', 0, 0),
(10023, 'JSN ImageShow Quick Icons', 'module', 'mod_imageshow_quickicon', '', 1, 1, 2, 1, '{"name":"JSN ImageShow Quick Icons","type":"module","creationDate":"09/22/2016","author":"JoomlaShine.com","copyright":"Copyright (c) 2008 - 2013 - JoomlaShine.com","authorEmail":"admin@joomlashine.com","authorUrl":"www.joomlashine.com","version":"5.0.2","description":"Quick access icon to reach JSN ImageShow Launch Pad","group":"","filename":"mod_imageshow_quickicon","dependency":["imageshow"]}', '{"imageshow":"imageshow"}', '["imageshow"]', '', 0, '0000-00-00 00:00:00', 0, 0),
(10024, 'Source Picasa', 'plugin', 'sourcepicasa', 'jsnimageshow', 0, 1, 1, 0, '{"name":"Source Picasa","type":"plugin","creationDate":"03\\/23\\/2016","author":"JoomlaShine.com","copyright":"Copyright (c) 2008 - 2013 - JoomlaShine.com","authorEmail":"admin@joomlashine.com","authorUrl":"http:\\/\\/www.joomlashine.com","version":"1.1.8","description":"JSN IMAGESHOW IMAGE SOURCE PICASA","group":"","filename":"sourcepicasa"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10025, 'Theme Classic', 'plugin', 'themeclassic', 'jsnimageshow', 0, 1, 1, 0, '{"name":"Theme Classic","type":"plugin","creationDate":"09\\/22\\/2016","author":"JoomlaShine.com","copyright":"Copyright (c) 2008 - 2013 - JoomlaShine.com","authorEmail":"admin@joomlashine.com","authorUrl":"http:\\/\\/www.joomlashine.com","version":"1.4.0","description":"JSN IMAGESHOW SHOWCASE THEME CLASSIC PLUGIN","group":"","filename":"themeclassic"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10026, 'Theme Grid', 'plugin', 'themegrid', 'jsnimageshow', 0, 1, 1, 0, '{"name":"Theme Grid","type":"plugin","creationDate":"09\\/22\\/2016","author":"JoomlaShine.com","copyright":"Copyright (c) 2008 - 2013 - JoomlaShine.com","authorEmail":"admin@joomlashine.com","authorUrl":"http:\\/\\/www.joomlashine.com","version":"1.2.2","description":"JSN IMAGESHOW SHOWCASE THEME GRID PLUGIN","group":"","filename":"themegrid"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10027, 'Theme Slider', 'plugin', 'themeslider', 'jsnimageshow', 0, 1, 1, 0, '{"name":"Theme Slider","type":"plugin","creationDate":"09\\/22\\/2016","author":"JoomlaShine.com","copyright":"Copyright (c) 2008 - 2013 - JoomlaShine.com","authorEmail":"admin@joomlashine.com","authorUrl":"http:\\/\\/www.joomlashine.com","version":"1.2.5","description":"JSN IMAGESHOW SHOWCASE THEME SLIDER PLUGIN","group":"","filename":"themeslider"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10028, 'Theme Carousel', 'plugin', 'themecarousel', 'jsnimageshow', 0, 1, 1, 0, '{"name":"Theme Carousel","type":"plugin","creationDate":"09\\/22\\/2016","author":"JoomlaShine.com","copyright":"Copyright (c) 2008 - 2013 - JoomlaShine.com","authorEmail":"admin@joomlashine.com","authorUrl":"http:\\/\\/www.joomlashine.com","version":"1.1.3","description":"JSN IMAGESHOW SHOWCASE THEME CAROUSEL PLUGIN","group":"","filename":"themecarousel"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10029, 'Theme Flow', 'plugin', 'themeflow', 'jsnimageshow', 0, 1, 1, 0, '{"name":"Theme Flow","type":"plugin","creationDate":"09\\/22\\/2016","author":"JoomlaShine.com","copyright":"Copyright (c) 2008 - 2013 - JoomlaShine.com","authorEmail":"admin@joomlashine.com","authorUrl":"http:\\/\\/www.joomlashine.com","version":"1.1.2","description":"JSN IMAGESHOW SHOWCASE THEME FLOW PLUGIN","group":"","filename":"themeflow"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10030, 'Theme Strip', 'plugin', 'themestrip', 'jsnimageshow', 0, 1, 1, 0, '{"name":"Theme Strip","type":"plugin","creationDate":"09\\/22\\/2016","author":"JoomlaShine.com","copyright":"Copyright (c) 2008 - 2013 - JoomlaShine.com","authorEmail":"admin@joomlashine.com","authorUrl":"http:\\/\\/www.joomlashine.com","version":"1.1.2","description":"JSN IMAGESHOW SHOWCASE THEME STRIP PLUGIN","group":"","filename":"themestrip"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10031, 'PowerAdmin', 'component', 'com_poweradmin', '', 1, 1, 0, 0, '{"name":"PowerAdmin","type":"component","creationDate":"10\\/19\\/2016","author":"JoomlaShine.com","copyright":"Copyright (c) 2015 - JoomlaShine.com","authorEmail":"support@joomlashine.com","authorUrl":"http:\\/\\/www.joomlashine.com","version":"2.4.4","description":"JSN PowerAdmin","group":"","filename":"poweradmin"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10032, 'System - JSN PowerAdmin', 'plugin', 'jsnpoweradmin', 'system', 0, 1, 1, 1, '{"name":"System - JSN PowerAdmin","type":"plugin","creationDate":"10/19/2016","author":"JoomlaShine.com","copyright":"Copyright (c) 2012 - JoomlaShine.com","authorEmail":"support@joomlashine.com","authorUrl":"http://www.joomlashine.com","version":"2.4.4","description":"System - JSN PowerAdmin plugin","group":"","filename":"jsnpoweradmin","dependency":["poweradmin"]}', '{"poweradmin":"poweradmin"}', '["poweradmin"]', '', 0, '0000-00-00 00:00:00', 0, 0),
(10033, 'JSN PowerAdmin extended - com_content', 'plugin', 'content', 'jsnpoweradmin', 0, 1, 1, 0, '{"name":"JSN PowerAdmin extended - com_content","type":"plugin","creationDate":"10/19/2016","author":"JoomlaShine.com","copyright":"Copyright (c) 2012 - JoomlaShine.com","authorEmail":"support@joomlashine.com","authorUrl":"http://www.joomlashine.com","version":"2.4.4","description":"Support view for com_content in site manager (from PowerAdmin 1.3.0)","group":"","filename":"content","dependency":["poweradmin"]}', '{"poweradmin":"poweradmin"}', '["poweradmin"]', '', 0, '0000-00-00 00:00:00', 0, 0),
(10034, 'JSN PowerAdmin extended - com_contact', 'plugin', 'contact', 'jsnpoweradmin', 0, 1, 1, 0, '{"name":"JSN PowerAdmin extended - com_contact","type":"plugin","creationDate":"10/19/2016","author":"JoomlaShine.com","copyright":"Copyright (c) 2012 - JoomlaShine.com","authorEmail":"support@joomlashine.com","authorUrl":"http://www.joomlashine.com","version":"2.4.4","description":"Support view for com_contact in site manager (from PowerAdmin 2.0)","group":"","filename":"contact","dependency":["poweradmin"]}', '{"poweradmin":"poweradmin"}', '["poweradmin"]', '', 0, '0000-00-00 00:00:00', 0, 0),
(10035, 'JSN PowerAdmin extended - com_users', 'plugin', 'users', 'jsnpoweradmin', 0, 1, 1, 0, '{"name":"JSN PowerAdmin extended - com_users","type":"plugin","creationDate":"10/19/2016","author":"JoomlaShine.com","copyright":"Copyright (c) 2012 - JoomlaShine.com","authorEmail":"support@joomlashine.com","authorUrl":"http://www.joomlashine.com","version":"2.4.4","description":"Support view for com_users in site manager (from PowerAdmin 2.0)","group":"","filename":"users","dependency":["poweradmin"]}', '{"poweradmin":"poweradmin"}', '["poweradmin"]', '', 0, '0000-00-00 00:00:00', 0, 0),
(10036, 'JSN PowerAdmin extended - com_weblinks', 'plugin', 'weblinks', 'jsnpoweradmin', 0, 1, 1, 0, '{"name":"JSN PowerAdmin extended - com_weblinks","type":"plugin","creationDate":"10/19/2016","author":"JoomlaShine.com","copyright":"Copyright (c) 2012 - JoomlaShine.com","authorEmail":"support@joomlashine.com","authorUrl":"http://www.joomlashine.com","version":"2.4.4","description":"Support view for com_weblinks in site manager (from PowerAdmin 2.0)","group":"","filename":"weblinks","dependency":["poweradmin"]}', '{"poweradmin":"poweradmin"}', '["poweradmin"]', '', 0, '0000-00-00 00:00:00', 0, 0),
(10037, 'JSN PowerAdmin extended - com_pagebuilder', 'plugin', 'pagebuilder', 'jsnpoweradmin', 0, 1, 1, 0, '{"name":"JSN PowerAdmin extended - com_pagebuilder","type":"plugin","creationDate":"10/19/2016","author":"JoomlaShine.com","copyright":"Copyright (c) 2012 - JoomlaShine.com","authorEmail":"support@joomlashine.com","authorUrl":"http://www.joomlashine.com","version":"2.4.4","description":"Support view for com_pagebuilder in site manager","group":"","filename":"pagebuilder","dependency":["poweradmin"]}', '{"poweradmin":"poweradmin"}', '["poweradmin"]', '', 0, '0000-00-00 00:00:00', 0, 0),
(10038, 'mod_poweradmin', 'module', 'mod_poweradmin', '', 1, 1, 2, 0, '{"name":"mod_poweradmin","type":"module","creationDate":"10/19/2016","author":"JoomlaShine.com","copyright":"Copyright (c) 2012 - JoomlaShine.com","authorEmail":"support@joomlashine.com","authorUrl":"http://www.joomlashine.com","version":"2.4.4","description":"JSN PowerAdmin Quick Icons","group":"","filename":"mod_poweradmin","dependency":["poweradmin"]}', '{"poweradmin":"poweradmin"}', '["poweradmin"]', '', 0, '0000-00-00 00:00:00', 0, 0),
(10039, 'UniForm', 'component', 'com_uniform', '', 1, 1, 0, 0, '{"name":"UniForm","type":"component","creationDate":"10\\/27\\/2016","author":"JoomlaShine.com","copyright":"Copyright (c) 2016 - JoomlaShine.com","authorEmail":"support@joomlashine.com","authorUrl":"http:\\/\\/www.joomlashine.com","version":"4.0.4","description":"JSN UniForm FREE \\u2013 A very simple solution to build forms for your Joomla website.","group":"","filename":"uniform"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10040, 'JSN UniForm', 'module', 'mod_uniform', '', 0, 1, 0, 1, '{"name":"JSN UniForm","type":"module","creationDate":"10/27/2016","author":"JoomlaShine.com","copyright":"Copyright (C) 2016 JoomlaShine.com. All Rights Reserved.","authorEmail":"admin@joomlashine.com","authorUrl":"www.joomlashine.com","version":"4.0.4","description":"JSN_UNIFORM_MODULE_DES","group":"","filename":"mod_uniform","dependency":["uniform"]}', '{"uniform":"uniform"}', '["uniform"]', '', 0, '0000-00-00 00:00:00', 0, 0),
(10041, 'JSN_UNIFORM_PLUGIN_CONTENT_TITLE', 'plugin', 'uniform', 'content', 0, 1, 1, 1, '{"name":"JSN_UNIFORM_PLUGIN_CONTENT_TITLE","type":"plugin","creationDate":"10/27/2016","author":"JoomlaShine.com","copyright":"Copyright (C) 2016 JoomlaShine.com. All Rights Reserved.","authorEmail":"admin@joomlashine.com","authorUrl":"www.joomlashine.com","version":"4.0.4","description":"JSN_UNIFORM_PLUGIN_CONTENT_DES","group":"","filename":"uniform","dependency":["uniform"]}', '{"uniform":"uniform"}', '["uniform"]', '', 0, '0000-00-00 00:00:00', 0, 0),
(10042, 'JSN_UNIFORM_PLUGIN_BUTTON_TITLE', 'plugin', 'uniform', 'editors-xtd', 0, 1, 1, 1, '{"name":"JSN_UNIFORM_PLUGIN_BUTTON_TITLE","type":"plugin","creationDate":"10/27/2016","author":"JoomlaShine.com","copyright":"Copyright (C) 2016 JoomlaShine.com. All Rights Reserved.","authorEmail":"admin@joomlashine.com","authorUrl":"www.joomlashine.com","version":"4.0.4","description":"JSN_UNIFORM_PLUGIN_BUTTON_DES","group":"","filename":"uniform","dependency":["uniform"]}', '{"uniform":"uniform"}', '["uniform"]', '', 0, '0000-00-00 00:00:00', 0, 0),
(10043, 'System - JSN Uniform', 'plugin', 'uniform', 'system', 0, 1, 1, 0, '{"name":"System - JSN Uniform","type":"plugin","creationDate":"10/27/2016","author":"JoomlaShine.com","copyright":"Copyright (c) 2015 - JoomlaShine.com","authorEmail":"support@joomlashine.com","authorUrl":"http://www.joomlashine.com","version":"4.0.4","description":"System - JSN Uniform","group":"","filename":"uniform","dependency":["uniform"]}', '{"uniform":"uniform"}', '["uniform"]', '', 0, '0000-00-00 00:00:00', 0, 0),
(10044, 'Mobilize', 'component', 'com_mobilize', '', 1, 1, 0, 0, '{"name":"Mobilize","type":"component","creationDate":"07\\/22\\/2016","author":"JoomlaShine.com","copyright":"Copyright (c) 2012 - JoomlaShine.com","authorEmail":"support@joomlashine.com","authorUrl":"http:\\/\\/www.joomlashine.com","version":"1.2.1","description":"JSN Mobilize","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10045, 'jsn_mobilize', 'template', 'jsn_mobilize', '', 0, 0, 1, 1, '{"name":"jsn_mobilize","type":"template","creationDate":"August 29, 2012","author":"JoomlaShine.com","copyright":"Copyright (c) 2012 - JoomlaShine.com","authorEmail":"admin@joomlashine.com","authorUrl":"www.joomlashine.com","version":"1.2.1","description":"TPL_MOBILIZE_XML_DESCRIPTION","group":"","filename":"templateDetails","dependency":["mobilize"]}', '{"mobilize":"mobilize"}', '["mobilize"]', '', 0, '0000-00-00 00:00:00', 0, 0),
(10046, 'plg_system_jsnmobilize', 'plugin', 'jsnmobilize', 'system', 0, 1, 1, 1, '{"name":"plg_system_jsnmobilize","type":"plugin","creationDate":"07/22/2016","author":"JoomlaShine.com","copyright":"Copyright (c) 2012 - JoomlaShine.com","authorEmail":"admin@joomlashine.com","authorUrl":"www.joomlashine.com","version":"1.2.1","description":"PLG_SYSTEM_JSNMOBILIZE_XML_DESCRIPTION","group":"","filename":"jsnmobilize","dependency":["mobilize"]}', '{"mobilize":"mobilize"}', '["mobilize"]', '', 0, '0000-00-00 00:00:00', 0, 0),
(10047, 'PageBuilder', 'component', 'com_pagebuilder', '', 1, 1, 0, 0, '{"name":"PageBuilder","type":"component","creationDate":"10\\/10\\/2016","author":"JoomlaShine.com","copyright":"Copyright (c) 2013 - JoomlaShine.com","authorEmail":"support@joomlashine.com","authorUrl":"http:\\/\\/www.joomlashine.com","version":"1.3.2","description":"COM_PAGEBUILDER_DESC","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10048, 'System - JSN PageBuilder', 'plugin', 'pagebuilder', 'system', 0, 1, 1, 0, '{"name":"System - JSN PageBuilder","type":"plugin","creationDate":"10/10/2016","author":"JoomlaShine.com","copyright":"Copyright (c) 2012 - JoomlaShine.com","authorEmail":"support@joomlashine.com","authorUrl":"http://www.joomlashine.com","version":"1.3.2","description":"System - JSN PageBuilder","group":"","filename":"pagebuilder","dependency":["pagebuilder"]}', '{"pagebuilder":"pagebuilder","shortcodes":"pb_accordion:accordion|pb_accordion_item:element|pb_alert:alert|pb_articlelist:articlelist|pb_audio:audio|pb_button:button|pb_buttonbar:buttonbar|pb_buttonbar_item:element|pb_carousel:carousel|pb_carousel_item:element|pb_divider:divider|pb_easyslider:easyslider|pb_googlemap:googlemap|pb_googlemap_item:element|pb_heading:heading|pb_image:image|pb_imageshow:imageshow|pb_list_item:element|pb_list:list|pb_market_item:element|pb_market:market|pb_module:module|pb_pricingtable_item:element|pb_pricingtable:pricingtable|pb_progressbar_item:element|pb_progressbar:progressbar|pb_progresscircle:progresscircle|pb_promobox:promobox|pb_qrcode:qrcode|pb_socialicon_item:element|pb_socialicon:socialicon|pb_tab_item:element|pb_tab:tab|pb_table_item:element|pb_table:table|pb_testimonial_item:element|pb_testimonial:testimonial|pb_text:text|pb_tooltip:tooltip|pb_uniform:uniform|pb_video:video|pb_weather:weather|pb_helper_item:helpers|pb_html_item:helpers|pb_articles_item:models|pb_authors_item:models|pb_categories_item:models|pb_easyblogarticles_item:models|pb_easyblogcategories_item:models|pb_k2articles_item:models|pb_k2categories_item:models|pb_validate_file_item:helpers|pb_pricingtable_item_item:element|pb_pricingtableattr_item:pricingtableattr|pb_column:column|pb_row:row","articles":[["126"]]}', '["pagebuilder"]', '', 0, '0000-00-00 00:00:00', 0, 0),
(10049, 'Button - JSN PageBuilder', 'plugin', 'pagebuilder', 'editors-xtd', 0, 1, 1, 0, '{"name":"Button - JSN PageBuilder","type":"plugin","creationDate":"10/10/2016","author":"JoomlaShine.com","copyright":"Copyright (c) 2008 - 2013 - JoomlaShine.com","authorEmail":"admin@joomlashine.com","authorUrl":"http://www.joomlashine.com","version":"1.3.2","description":"Editor button plugin to ativate JSN PageBuilder","group":"","filename":"pagebuilder","dependency":["pagebuilder"]}', '{"pagebuilder":"pagebuilder"}', '["pagebuilder"]', '', 0, '0000-00-00 00:00:00', 0, 0),
(10050, 'JSN PageBuilder extended - Default Elements', 'plugin', 'defaultelements', 'jsnpagebuilder', 0, 1, 1, 1, '{"name":"JSN PageBuilder extended - Default Elements","type":"plugin","creationDate":"10/10/2016","author":"JoomlaShine.com","copyright":"Copyright (c) 2012 - JoomlaShine.com","authorEmail":"support@joomlashine.com","authorUrl":"http://www.joomlashine.com","version":"1.3.2","description":"All Default JSN PageBuilder Elements","group":"","filename":"defaultelements","dependency":["pagebuilder"]}', '{"pagebuilder":"pagebuilder"}', '["pagebuilder"]', '', 0, '0000-00-00 00:00:00', 0, 0),
(10051, 'JSN PageBuilder extended - Content Search', 'plugin', 'jsnpagebuildersearch', 'search', 0, 1, 1, 1, '{"name":"JSN PageBuilder extended - Content Search","type":"plugin","creationDate":"10/10/2016","author":"JoomlaShine.com","copyright":"Copyright (c) 2012 - JoomlaShine.com","authorEmail":"support@joomlashine.com","authorUrl":"http://www.joomlashine.com","version":"1.3.2","description":"JSN PageBuilder extended - Content Search","group":"","filename":"jsnpagebuildersearch","dependency":["pagebuilder"]}', '{"pagebuilder":"pagebuilder"}', '["pagebuilder"]', '', 0, '0000-00-00 00:00:00', -9999, 0),
(10052, 'JSN PageBuilder extended - K2 Search', 'plugin', 'jsnpagebuilderk2search', 'search', 0, 1, 1, 1, '{"name":"JSN PageBuilder extended - K2 Search","type":"plugin","creationDate":"10/10/2016","author":"JoomlaShine.com","copyright":"Copyright (c) 2012 - JoomlaShine.com","authorEmail":"support@joomlashine.com","authorUrl":"http://www.joomlashine.com","version":"1.3.2","description":"JSN PageBuilder extended - K2 Search","group":"","filename":"jsnpagebuilderk2search","dependency":["pagebuilder"]}', '{"pagebuilder":"pagebuilder"}', '["pagebuilder"]', '', 0, '0000-00-00 00:00:00', -9999, 0),
(10053, 'JSN PageBuilder Plugin Content', 'plugin', 'pagebuilder', 'content', 0, 1, 1, 1, '{"name":"JSN PageBuilder Plugin Content","type":"plugin","creationDate":"10/10/2016","author":"JoomlaShine.com","copyright":"Copyright (C) @JOOMLASHINECOPYRIGHTYEAR@ JoomlaShine.com. All Rights Reserved.","authorEmail":"admin@joomlashine.com","authorUrl":"www.joomlashine.com","version":"1.3.2","description":"","group":"","filename":"pagebuilder","dependency":["pagebuilder"]}', '{"pagebuilder":"pagebuilder"}', '["pagebuilder"]', '', 0, '0000-00-00 00:00:00', 0, 0),
(10054, 'EasySlider', 'component', 'com_easyslider', '', 1, 1, 0, 0, '{"name":"EasySlider","type":"component","creationDate":"05\\/27\\/2016","author":"JoomlaShine.com","copyright":"Copyright (C) 2015 JoomlaShine.com. All Rights Reserved.","authorEmail":"support@joomlashine.com","authorUrl":"http:\\/\\/www.joomlashine.com","version":"2.1.3","description":"JSN EasySlider Component","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10055, 'PLG_SYSTEM_JSNEASYSLIDER', 'plugin', 'easyslider', 'system', 0, 1, 1, 1, '{"name":"PLG_SYSTEM_JSNEASYSLIDER","type":"plugin","creationDate":"05/27/2016","author":"JoomlaShine.com","copyright":"Copyright (C) 2013 JoomlaShine.com. All Rights Reserved.","authorEmail":"admin@joomlashine.com","authorUrl":"www.joomlashine.com","version":"2.1.3","description":"PLG_SYSTEM_JSNEASYSLIDER_XML_DESCRIPTION","group":"","filename":"easyslider","dependency":["easyslider"]}', '{"easyslider":"easyslider"}', '["easyslider"]', '', 32, '2016-11-05 15:48:16', 0, 0),
(10056, 'JSN EasySlider', 'module', 'mod_easyslider', '', 0, 1, 0, 1, '{"name":"JSN EasySlider","type":"module","creationDate":"05/27/2016","author":"JoomlaShine.com","copyright":"Copyright (c) 2008 - 2013 - JoomlaShine.com","authorEmail":"admin@joomlashine.com","authorUrl":"http://www.joomlashine.com","version":"2.1.3","description":"JSN_MODULE_JSN_EASYSLIDER_MODULE","group":"","filename":"mod_easyslider","dependency":["easyslider"]}', '{"easyslider":"easyslider"}', '["easyslider"]', '', 0, '0000-00-00 00:00:00', 0, 0),
(10057, 'JSN_EASYSLIDER_PLUGIN_BUTTON_TITLE', 'plugin', 'jsneasyslider', 'editors-xtd', 0, 1, 1, 1, '{"name":"JSN_EASYSLIDER_PLUGIN_BUTTON_TITLE","type":"plugin","creationDate":"05/27/2016","author":"JoomlaShine.com","copyright":"Copyright (C) 2012 JoomlaShine.com. All Rights Reserved.","authorEmail":"admin@joomlashine.com","authorUrl":"www.joomlashine.com","version":"2.1.3","description":"JSN_EASYSLIDER_PLUGIN_BUTTON_DESC","group":"","filename":"jsneasyslider","dependency":["easyslider"]}', '{"easyslider":"easyslider"}', '["easyslider"]', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `j78lr_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(10058, 'JSN_EASYSLIDER_PLUGIN_CONTENT_TITLE', 'plugin', 'jsneasyslider', 'content', 0, 1, 1, 1, '{"name":"JSN_EASYSLIDER_PLUGIN_CONTENT_TITLE","type":"plugin","creationDate":"05/27/2016","author":"JoomlaShine.com","copyright":"Copyright (C) 2012 JoomlaShine.com. All Rights Reserved.","authorEmail":"admin@joomlashine.com","authorUrl":"www.joomlashine.com","version":"2.1.3","description":"JSN_EASYSLIDER_PLUGIN_CONTENT_DESC","group":"","filename":"jsneasyslider","dependency":["easyslider"]}', '{"easyslider":"easyslider"}', '["easyslider"]', '', 0, '0000-00-00 00:00:00', 0, 0),
(10061, 'plg_system_jsntplframework', 'plugin', 'jsntplframework', 'system', 0, 1, 1, 1, '{"name":"plg_system_jsntplframework","type":"plugin","creationDate":"04\\/04\\/2016","author":"JoomlaShine.com","copyright":"Copyright (C) 2012 JoomlaShine.com. All Rights Reserved.","authorEmail":"admin@joomlashine.com","authorUrl":"www.joomlashine.com","version":"3.1.6","description":"","group":"","filename":"jsntplframework"}', '{"update-check":1478610437}', '', '', 0, '0000-00-00 00:00:00', 9999, 0),
(10062, 'jsn_venture_free', 'template', 'jsn_venture_free', '', 0, 1, 1, 0, '{"name":"jsn_venture_free","type":"template","creationDate":"04\\/04\\/2016","author":"JoomlaShine.com","copyright":"Copyright (c) 2008 - 2013 - JoomlaShine.com","authorEmail":"support@joomlashine.com","authorUrl":"http:\\/\\/www.joomlashine.com","version":"1.1.0","description":"TPL_JSN_VENTURE_FREE_XML_DESCRIPTION","group":"jsntemplate","filename":"templateDetails"}', '[]', 'jsntemplate', '', 0, '0000-00-00 00:00:00', 0, 0),
(10063, 'System - Google Maps', 'plugin', 'plugin_googlemap3', 'system', 0, 1, 1, 0, '{"name":"System - Google Maps","type":"plugin","creationDate":"July 2014","author":"Mike Reumer","copyright":"(C) 2014 Reumer","authorEmail":"tech@reumer.net","authorUrl":"tech.reumer.net","version":"3.3","description":"PLUGIN_GOOGLE_MAP3_INSTALLATION","group":"","filename":"plugin_googlemap3"}', '{"publ":"","debug":"0","plugincode":"mosmap","brackets":"{","Google_API_version":"3","visualrefresh":"0","signedin":"0","show":"1","mapclass":"","mapprint":"icon","mapcss":"\\/* For img in the map remove borders, shadow, no margin and no max-width\\r*\\/\\r.map img, .svPanel img {\\r    border: 0px;\\r    box-shadow: none;\\r    margin: 0px !important;\\r    padding: 0px !important;\\r    max-width: none !important;\\r    background: none !important;\\r}\\r\\r\\/* Make sure the directions are below the map\\r*\\/\\r.directions {\\r    clear: left;\\r}\\r\\r.adp-directions {\\r    width: 100%;\\r}\\r\\r\\/* Solve problems in chrome with the show of the direction steps in full width\\r*\\/\\r.adp-placemark {\\r    width : 100%;\\r}\\r\\r\\/* Padding for image overlay\\r*\\/\\r.controlDiv {\\r    padding : 5px;\\r}\\r","loadmootools":"1","timeinterval":"500","Google_API_key":"","Google_Multi_API_key":"","urlsetting":"http_host","googlewebsite":"maps.google.com","styledmap":"","align":"center","langtype":"site","lang":"","width":"500","height":"400","effect":"none","lat":"52.075581","lon":"4.541513","centerlat":"","centerlon":"","address":"","geoloc":"0","geocenter":"0","controltype":"UI","zoomType":"3D-large","svcontrol":"1","returncontrol":"1","zoom":"10","corzoom":"0","minzoom":"0","maxzoom":"19","rotation":"1","zoomnew":"0","zoomWheel":"0","keyboard":"0","mapType":"Normal","showmaptype":"1","showNormalMaptype":"1","showSatelliteMaptype":"1","showHybridMaptype":"1","showTerrainMaptype":"1","showscale":"0","overview":"0","dragging":"1","marker":"1","icon":"","iconwidth":"","iconheight":"","iconanchorx":"","iconanchory":"","iconshadow":"","iconshadowwidth":"","iconshadowheight":"","iconimagemap":"","traffic":"0","transit":"0","bicycle":"0","panoramio":"0","panominzoom":"none","panomaxzoom":"none","pano_userid":"","pano_tag":"","weather":"0","weathercloud":"0","weatherinfo":"1","weathertempunit":"celsius","weatherwindunit":"km","dir":"0","dirtype":"D","formdirtype":"1","avoidhighways":"0","avoidtoll":"0","diroptimize":"0","diralternatives":"0","showdir":"1","animdir":"0","animspeed":"1","animautostart":"0","animunit":"kilometers","formspeed":"0","formaddress":"0","formdir":"0","autocompl":"both","langanim":"en-GB;The requested panorama could not be displayed|Could not generate a route for the current start and end addresses|Street View coverage is not available for this route|You have reached your destination|miles|miles|ft|kilometers|kilometer|meters|In|You will reach your destination|Stop|Drive|Press Drive to follow your route|Route|Speed|Fast|Medium|Slow","txtdir":"Directions: ","txtgetdir":"Get Directions","txtfrom":"From here","txtto":"To here","txtdiraddr":"Address: ","txt_driving":"","txt_avhighways":"","txt_avtoll":"","txt_walking":"","txt_bicycle":"","txt_transit":"","txt_optimize":"","txt_alternatives":"","inputsize":"25","dirdefault":"0","gotoaddr":"0","gotoaddrzoom":"0","gotoaddrtimeout":"5000","txtaddr":"Address: ##","erraddr":"Address ## not found!","txtgotoaddr":"Goto","clientgeotype":"google","lightbox":"0","txtlightbox":"Open lightbox","lbxcaption":"","lbxwidth":"500","lbxheight":"700","lbxcenterlat":"","lbxcenterlon":"","lbxzoom":"","sv":"none","svpano":"","svwidth":"100%","svheight":"300","svyaw":"0","svpitch":"0","svzoom":"","svautorotate":"0","svaddress":"1","kmlrenderer":"google","kmlsidebar":"none","kmlsbwidth":"200","kmlfoldersopen":"0","kmlhide":"0","kmlscale":"0","kmlopenmethod":"click","kmlsbsort":"none","kmllightbox":"0","kmlmessshow":"0","kmlclickablemarkers":"1","kmlzoommarkers":"0","kmlopendivmarkers":"","kmlcontentlinkmarkers":"0","kmllinkablemarkers":"0","kmllinktarget":"_self","kmllinkmethod":"dblclick","kmlhighlite":"{ \'color\': \'#aaffff\', \'opacity\': 0.3,  \'textcolor\': \'#000000\' }","kmlmarkerlabel":"100","kmlmarkerlabelclass":"","kmlpolylabel":"100","kmlpolylabelclass":"","proxy":"0","txtsrchnrby":"Search nearby","txtzoomhere":"Zoom Here","txtaddrstart":"Start address:","txtkmlgetdir":"Go","txtback":"\\u00ab Back","txtsearchnearby":"Search nearby: e.g. pizza","txtsearch":"Go","maxcluster":"","clustericonurl":"\\/media\\/plugin_googlemap3\\/site\\/geoxmlv3\\/images\\/m","gridsize":"","minmarkerscluster":"","maxlinesinfocluster":"","clusterinfowindow":"click","clusterzoom":"dblclick","clustermarkerzoom":"16","txtzoomin":"Zoom in to show more","txtclustercount1":"...and","txtclustercount2":"more","tilelayer":"","tilemethod":"","tileopacity":"1","tilebounds":"","tileminzoom":"0","tilemaxzoom":"19","imageurl":"","imageposition":"RIGHT_TOP","imageindex":"1","imagewidth":"","imageheight":"","twittername":"","twittertweets":"15","twittericon":"\\/media\\/plugin_googlemap3\\/site\\/Twitter\\/twitter_map_icon.png","twitterline":"#ff0000ff","twitterlinewidth":"4","twitterstartloc":"0,0,0","twitterconsumerkey":"","twitterconsumersecret":"","twitteraccesstoken":"","twitteraccesstokensecret":""}', '', '', 32, '2016-11-04 19:03:30', 0, 0),
(10064, 'Portuguspt-PT', 'language', 'pt-PT', '', 0, 1, 0, 0, '{"name":"Portugu\\u00eas (pt-PT)","type":"language","creationDate":"2016-10-28","author":"Comunidade JoomlaPT! Portugal","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. Todos os direitos reservados.","authorEmail":"geral@joomlapt.com","authorUrl":"www.joomlapt.com","version":"3.6.4.3","description":"Portugu\\u00eas pt-PT. Idioma de interface de s\\u00edtio para Joomla 3.x","group":"","filename":"install"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10065, 'Portuguspt-PT', 'language', 'pt-PT', '', 1, 1, 0, 0, '{"name":"Portugu\\u00eas (pt-PT)","type":"language","creationDate":"2016-10-28","author":"Comunidade JoomlaPT! Portugal","copyright":"Direitos de Autor (C) 2005 - 2016 Open Source Matters. Todos os direitos reservados.","authorEmail":"geral@joomlapt.com","authorUrl":"www.joomlapt.com","version":"3.6.4.3","description":"Portugu\\u00eas pt-PT. Idioma de interface de administra\\u00e7\\u00e3o para Joomla 3.x","group":"","filename":"install"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10066, 'Portuguese (pt-PT) Language Pack', 'package', 'pkg_pt-PT', '', 0, 1, 1, 0, '{"name":"Portuguese (pt-PT) Language Pack","type":"package","creationDate":"2016-10-28","author":"Comunidade JoomlaPT! Portugal","copyright":"Copyright (C) 2005 - 2016 Open Source Matters, Inc. All rights reserved.","authorEmail":"geral@joomlapt.com","authorUrl":"www.joomlapt.com","version":"3.6.4.3","description":"<div style=\\"text-align:left;\\">\\n <h2>Idioma portugu\\u00eas de Portugal para Joomla 3<\\/h2>\\n <p>Este pacote de idioma \\u00e9 uma produ\\u00e7\\u00e3o da <a href=\\"http:\\/\\/www.joomlapt.com\\" target=\\"_blank\\" title=\\"Comunidade JoomlaPT\\">Comunidade JoomlaPT Portugal<\\/a><\\/p>\\n <p>Colabore e corrija erros da tradu\\u00e7\\u00e3o: <a href=\\"https:\\/\\/crowdin.com\\/project\\/joomla-cms\\" target=\\"_blank\\" title=\\"Tradu\\u00e7\\u00e3o via Crowdin\\">Tradu\\u00e7\\u00e3o em linha - Sistema Crowdin<\\/a><\\/p>\\n <p> <\\/p>\\n <h2>Joomla! full portuguese (Portugal) language pack<\\/h2>\\n <p>Please report bugs or issues at <a href=\\"https:\\/\\/www.facebook.com\\/groups\\/joomlaPT\\/\\" target=\\"_blank\\">Joomla Portugal Facebook group<\\/a>.<\\/p>\\n <p>Translated by <a href=\\"http:\\/\\/www.joomlapt.com\\" target=\\"_blank\\" title=\\"Comunidade JoomlaPT\\">JoomlaPT Portugal Community<\\/a> using Crowdin system.<\\/p>\\n<\\/div>","group":"","filename":"pkg_pt-PT"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `j78lr_finder_filters`
--

CREATE TABLE `j78lr_finder_filters` (
  `filter_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `j78lr_finder_links`
--

CREATE TABLE `j78lr_finder_links` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(400) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double UNSIGNED NOT NULL DEFAULT '0',
  `sale_price` double UNSIGNED NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `j78lr_finder_links_terms0`
--

CREATE TABLE `j78lr_finder_links_terms0` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `j78lr_finder_links_terms1`
--

CREATE TABLE `j78lr_finder_links_terms1` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `j78lr_finder_links_terms2`
--

CREATE TABLE `j78lr_finder_links_terms2` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `j78lr_finder_links_terms3`
--

CREATE TABLE `j78lr_finder_links_terms3` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `j78lr_finder_links_terms4`
--

CREATE TABLE `j78lr_finder_links_terms4` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `j78lr_finder_links_terms5`
--

CREATE TABLE `j78lr_finder_links_terms5` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `j78lr_finder_links_terms6`
--

CREATE TABLE `j78lr_finder_links_terms6` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `j78lr_finder_links_terms7`
--

CREATE TABLE `j78lr_finder_links_terms7` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `j78lr_finder_links_terms8`
--

CREATE TABLE `j78lr_finder_links_terms8` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `j78lr_finder_links_terms9`
--

CREATE TABLE `j78lr_finder_links_terms9` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `j78lr_finder_links_termsa`
--

CREATE TABLE `j78lr_finder_links_termsa` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `j78lr_finder_links_termsb`
--

CREATE TABLE `j78lr_finder_links_termsb` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `j78lr_finder_links_termsc`
--

CREATE TABLE `j78lr_finder_links_termsc` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `j78lr_finder_links_termsd`
--

CREATE TABLE `j78lr_finder_links_termsd` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `j78lr_finder_links_termse`
--

CREATE TABLE `j78lr_finder_links_termse` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `j78lr_finder_links_termsf`
--

CREATE TABLE `j78lr_finder_links_termsf` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `j78lr_finder_taxonomy`
--

CREATE TABLE `j78lr_finder_taxonomy` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `access` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ordering` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `j78lr_finder_taxonomy`
--

INSERT INTO `j78lr_finder_taxonomy` (`id`, `parent_id`, `title`, `state`, `access`, `ordering`) VALUES
(1, 0, 'ROOT', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `j78lr_finder_taxonomy_map`
--

CREATE TABLE `j78lr_finder_taxonomy_map` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `node_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `j78lr_finder_terms`
--

CREATE TABLE `j78lr_finder_terms` (
  `term_id` int(10) UNSIGNED NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `phrase` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `weight` float UNSIGNED NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `j78lr_finder_terms_common`
--

CREATE TABLE `j78lr_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `j78lr_finder_terms_common`
--

INSERT INTO `j78lr_finder_terms_common` (`term`, `language`) VALUES
('a', 'en'),
('about', 'en'),
('after', 'en'),
('ago', 'en'),
('all', 'en'),
('am', 'en'),
('an', 'en'),
('and', 'en'),
('ani', 'en'),
('any', 'en'),
('are', 'en'),
('aren\'t', 'en'),
('as', 'en'),
('at', 'en'),
('be', 'en'),
('but', 'en'),
('by', 'en'),
('for', 'en'),
('from', 'en'),
('get', 'en'),
('go', 'en'),
('how', 'en'),
('if', 'en'),
('in', 'en'),
('into', 'en'),
('is', 'en'),
('isn\'t', 'en'),
('it', 'en'),
('its', 'en'),
('me', 'en'),
('more', 'en'),
('most', 'en'),
('must', 'en'),
('my', 'en'),
('new', 'en'),
('no', 'en'),
('none', 'en'),
('not', 'en'),
('noth', 'en'),
('nothing', 'en'),
('of', 'en'),
('off', 'en'),
('often', 'en'),
('old', 'en'),
('on', 'en'),
('onc', 'en'),
('once', 'en'),
('onli', 'en'),
('only', 'en'),
('or', 'en'),
('other', 'en'),
('our', 'en'),
('ours', 'en'),
('out', 'en'),
('over', 'en'),
('page', 'en'),
('she', 'en'),
('should', 'en'),
('small', 'en'),
('so', 'en'),
('some', 'en'),
('than', 'en'),
('thank', 'en'),
('that', 'en'),
('the', 'en'),
('their', 'en'),
('theirs', 'en'),
('them', 'en'),
('then', 'en'),
('there', 'en'),
('these', 'en'),
('they', 'en'),
('this', 'en'),
('those', 'en'),
('thus', 'en'),
('time', 'en'),
('times', 'en'),
('to', 'en'),
('too', 'en'),
('true', 'en'),
('under', 'en'),
('until', 'en'),
('up', 'en'),
('upon', 'en'),
('use', 'en'),
('user', 'en'),
('users', 'en'),
('veri', 'en'),
('version', 'en'),
('very', 'en'),
('via', 'en'),
('want', 'en'),
('was', 'en'),
('way', 'en'),
('were', 'en'),
('what', 'en'),
('when', 'en'),
('where', 'en'),
('whi', 'en'),
('which', 'en'),
('who', 'en'),
('whom', 'en'),
('whose', 'en'),
('why', 'en'),
('wide', 'en'),
('will', 'en'),
('with', 'en'),
('within', 'en'),
('without', 'en'),
('would', 'en'),
('yes', 'en'),
('yet', 'en'),
('you', 'en'),
('your', 'en'),
('yours', 'en');

-- --------------------------------------------------------

--
-- Table structure for table `j78lr_finder_tokens`
--

CREATE TABLE `j78lr_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `phrase` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `weight` float UNSIGNED NOT NULL DEFAULT '1',
  `context` tinyint(1) UNSIGNED NOT NULL DEFAULT '2',
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `j78lr_finder_tokens_aggregate`
--

CREATE TABLE `j78lr_finder_tokens_aggregate` (
  `term_id` int(10) UNSIGNED NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `phrase` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `term_weight` float UNSIGNED NOT NULL,
  `context` tinyint(1) UNSIGNED NOT NULL DEFAULT '2',
  `context_weight` float UNSIGNED NOT NULL,
  `total_weight` float UNSIGNED NOT NULL,
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `j78lr_finder_types`
--

CREATE TABLE `j78lr_finder_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `j78lr_finder_types`
--

INSERT INTO `j78lr_finder_types` (`id`, `title`, `mime`) VALUES
(1, 'Tag', ''),
(2, 'Category', ''),
(3, 'Contact', ''),
(4, 'Article', ''),
(5, 'News Feed', '');

-- --------------------------------------------------------

--
-- Table structure for table `j78lr_imageshow_external_source_picasa`
--

CREATE TABLE `j78lr_imageshow_external_source_picasa` (
  `external_source_id` int(11) UNSIGNED NOT NULL,
  `external_source_profile_title` varchar(255) DEFAULT NULL,
  `picasa_username` varchar(255) DEFAULT '',
  `picasa_thumbnail_size` char(30) DEFAULT '144',
  `picasa_image_size` char(30) DEFAULT '1024'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `j78lr_imageshow_external_source_picasa`
--

INSERT INTO `j78lr_imageshow_external_source_picasa` (`external_source_id`, `external_source_profile_title`, `picasa_username`, `picasa_thumbnail_size`, `picasa_image_size`) VALUES
(3, 'Picasa gallery', 'joomlashine', '144', '1600');

-- --------------------------------------------------------

--
-- Table structure for table `j78lr_imageshow_images`
--

CREATE TABLE `j78lr_imageshow_images` (
  `image_id` int(11) NOT NULL,
  `showlist_id` int(11) NOT NULL,
  `image_extid` varchar(255) DEFAULT NULL,
  `album_extid` varchar(255) DEFAULT NULL,
  `image_small` varchar(255) DEFAULT NULL,
  `image_medium` varchar(255) DEFAULT NULL,
  `image_big` text,
  `image_title` varchar(255) DEFAULT NULL,
  `image_description` text,
  `image_link` varchar(255) DEFAULT NULL,
  `ordering` int(11) DEFAULT '0',
  `custom_data` tinyint(1) DEFAULT '0',
  `sync` tinyint(1) DEFAULT '0',
  `image_size` varchar(25) DEFAULT NULL,
  `exif_data` text,
  `image_alt_text` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `j78lr_imageshow_images`
--

INSERT INTO `j78lr_imageshow_images` (`image_id`, `showlist_id`, `image_extid`, `album_extid`, `image_small`, `image_medium`, `image_big`, `image_title`, `image_description`, `image_link`, `ordering`, `custom_data`, `sync`, `image_size`, `exif_data`, `image_alt_text`) VALUES
(385, 14, 'images/Karate-JUTSU.jpeg', 'images', 'images/jsn_is_thumbs/images/Karate-JUTSU.jpeg', 'images/Karate-JUTSU.jpeg', 'images/Karate-JUTSU.jpeg', 'Karate-JUTSU.jpeg', '', 'http://localhost:8888/joomla/images/Karate-JUTSU.jpeg', 4, 0, 0, '418787', '', 'Karate-JUTSU.jpeg'),
(373, 12, 'images/img_2164.jpg', 'images', 'images/jsn_is_thumbs/images/img_2164.jpg', 'images/img_2164.jpg', 'images/img_2164.jpg', 'img_2164.jpg', '', 'http://localhost:8888/joomla/images/img_2164.jpg', 2, 0, 0, '391524', 'Apple/iPhone 4S, 1/40, f/2.4, 4.28mm, ISO-50, Flash did not fire, auto mode', 'img_2164.jpg'),
(377, 13, 'images/Images/image1.jpeg', 'images/Images', 'images/jsn_is_thumbs/images/Images/image1.jpeg', 'images/Images/image1.jpeg', 'images/Images/image1.jpeg', 'image1.jpeg', '', 'http://localhost:8888/joomla/images/Images/image1.jpeg', 2, 0, 0, '62467', '', 'image1.jpeg'),
(378, 13, 'images/Images/image2.jpeg', 'images/Images', 'images/jsn_is_thumbs/images/Images/image2.jpeg', 'images/Images/image2.jpeg', 'images/Images/image2.jpeg', 'image2.jpeg', '', 'http://localhost:8888/joomla/images/Images/image2.jpeg', 3, 0, 0, '69117', '', 'image2.jpeg'),
(379, 13, 'images/Images/image3.jpeg', 'images/Images', 'images/jsn_is_thumbs/images/Images/image3.jpeg', 'images/Images/image3.jpeg', 'images/Images/image3.jpeg', 'image3.jpeg', '', 'http://localhost:8888/joomla/images/Images/image3.jpeg', 4, 0, 0, '68302', '', 'image3.jpeg'),
(380, 13, 'images/Images/image4.jpeg', 'images/Images', 'images/jsn_is_thumbs/images/Images/image4.jpeg', 'images/Images/image4.jpeg', 'images/Images/image4.jpeg', 'image4.jpeg', '', 'http://localhost:8888/joomla/images/Images/image4.jpeg', 5, 0, 0, '34895', '', 'image4.jpeg'),
(384, 14, 'images/Xadrez.jpeg', 'images', 'images/jsn_is_thumbs/images/Xadrez.jpeg', 'images/Xadrez.jpeg', 'images/Xadrez.jpeg', 'Xadrez.jpeg', '', 'http://localhost:8888/joomla/images/Xadrez.jpeg', 3, 0, 0, '217288', '', 'Xadrez.jpeg'),
(374, 12, 'images/r.jpeg', 'images', 'images/jsn_is_thumbs/images/r.jpeg', 'images/r.jpeg', 'images/r.jpeg', 'r.jpeg', '', 'http://localhost:8888/joomla/images/r.jpeg', 3, 0, 0, '65399', '', 'r.jpeg'),
(375, 12, 'images/transferir.jpeg', 'images', 'images/jsn_is_thumbs/images/transferir.jpeg', 'images/transferir.jpeg', 'images/transferir.jpeg', 'transferir.jpeg', '', 'http://localhost:8888/joomla/images/transferir.jpeg', 4, 0, 0, '119293', '', 'transferir.jpeg'),
(382, 14, 'images/Tiro2.jpeg', 'images', 'images/jsn_is_thumbs/images/Tiro2.jpeg', 'images/Tiro2.jpeg', 'images/Tiro2.jpeg', 'Tiro2.jpeg', '', 'http://localhost:8888/joomla/images/Tiro2.jpeg', 1, 0, 0, '78365', '', 'Tiro2.jpeg'),
(383, 14, 'images/atletismo.jpeg', 'images', 'images/jsn_is_thumbs/images/atletismo.jpeg', 'images/atletismo.jpeg', 'images/atletismo.jpeg', 'atletismo.jpeg', '', 'http://localhost:8888/joomla/images/atletismo.jpeg', 2, 0, 0, '259627', '', 'atletismo.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `j78lr_imageshow_log`
--

CREATE TABLE `j78lr_imageshow_log` (
  `log_id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `result` varchar(255) DEFAULT NULL,
  `screen` varchar(100) DEFAULT NULL,
  `action` varchar(50) DEFAULT NULL,
  `time_created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `j78lr_imageshow_log`
--

INSERT INTO `j78lr_imageshow_log` (`log_id`, `user_id`, `url`, `result`, `screen`, `action`, `time_created`) VALUES
(1, 32, '/joomla/administrator/index.php?option=com_imageshow&controller=showlist', 'Home page', 'showlist', 'delete', '2016-11-04 01:53:11'),
(2, 32, '/joomla/administrator/index.php?option=com_imageshow&controller=showlist', 'Main Promo Images', 'showlist', 'delete', '2016-11-04 01:53:51'),
(3, 32, '/joomla/administrator/index.php?option=com_imageshow&controller=showlist', 'Sample gallery ', 'showlist', 'delete', '2016-11-04 01:54:16'),
(4, 32, '/joomla/administrator/index.php?option=com_imageshow&controller=showlist', '2', 'showlist', 'delete', '2016-11-04 02:59:58'),
(5, 32, '/joomla/administrator/index.php?option=com_imageshow&controller=showlist', 'Photos', 'showlist', 'add', '2016-11-04 03:01:53'),
(6, 32, '/joomla/administrator/index.php?option=com_imageshow&controller=images&task=saveshowlist&d39942b0521ed329cd3559a99b984ad2=1', 'Photos', 'addimages', 'any', '2016-11-04 03:03:10'),
(7, 32, '/joomla/administrator/index.php?option=com_imageshow&controller=images&task=saveshowlist&d39942b0521ed329cd3559a99b984ad2=1', 'Photos', 'addimages', 'any', '2016-11-04 03:03:14'),
(8, 32, '/joomla/administrator/index.php?option=com_imageshow&controller=images&task=saveshowlist&d39942b0521ed329cd3559a99b984ad2=1', 'Photos', 'addimages', 'any', '2016-11-04 03:03:16'),
(9, 32, '/joomla/administrator/index.php?option=com_imageshow&controller=showlist', 'Photos', 'showlist', 'modify', '2016-11-04 03:03:23'),
(10, 32, '/joomla/administrator/index.php?option=com_imageshow&controller=showlist', 'Home page', 'showlist', 'delete', '2016-11-04 03:04:10'),
(11, 32, '/joomla/administrator/index.php?option=com_imageshow&controller=images&task=saveshowlist&d39942b0521ed329cd3559a99b984ad2=1', 'Photos', 'addimages', 'any', '2016-11-04 04:25:18'),
(12, 32, '/joomla/administrator/index.php?option=com_imageshow&controller=images&task=saveshowlist&d39942b0521ed329cd3559a99b984ad2=1', 'Photos', 'addimages', 'any', '2016-11-04 04:27:16'),
(13, 32, '/joomla/administrator/index.php?option=com_imageshow&controller=images&task=saveshowlist&d39942b0521ed329cd3559a99b984ad2=1', 'Photos', 'addimages', 'any', '2016-11-04 04:28:38'),
(14, 32, '/joomla/administrator/index.php?option=com_imageshow&controller=images&task=saveshowlist&d39942b0521ed329cd3559a99b984ad2=1', 'Photos', 'addimages', 'any', '2016-11-04 04:28:39'),
(15, 32, '/joomla/administrator/index.php?option=com_imageshow&controller=images&task=saveshowlist&d39942b0521ed329cd3559a99b984ad2=1', 'Photos', 'addimages', 'any', '2016-11-04 04:28:40'),
(16, 32, '/joomla/administrator/index.php?option=com_imageshow&controller=images&task=saveshowlist&d39942b0521ed329cd3559a99b984ad2=1', 'Photos', 'addimages', 'any', '2016-11-04 04:28:42'),
(17, 32, '/joomla/administrator/index.php?option=com_imageshow&controller=showlist', 'Images', 'showlist', 'add', '2016-11-05 14:21:19'),
(18, 32, '/joomla/administrator/index.php?option=com_imageshow&controller=images&task=saveshowlist&3d2ff61df27a08489ed8992a8711fb4d=1', 'Images', 'addimages', 'any', '2016-11-05 14:21:53'),
(19, 32, '/joomla/administrator/index.php?option=com_imageshow&controller=images&task=saveshowlist&3d2ff61df27a08489ed8992a8711fb4d=1', 'Images', 'addimages', 'any', '2016-11-05 14:21:54'),
(20, 32, '/joomla/administrator/index.php?option=com_imageshow&controller=images&task=saveshowlist&3d2ff61df27a08489ed8992a8711fb4d=1', 'Images', 'addimages', 'any', '2016-11-05 14:21:54'),
(21, 32, '/joomla/administrator/index.php?option=com_imageshow&controller=images&task=saveshowlist&3d2ff61df27a08489ed8992a8711fb4d=1', 'Images', 'addimages', 'any', '2016-11-05 14:21:55'),
(22, 32, '/joomla/administrator/index.php?option=com_imageshow&controller=showlist', 'Images', 'showlist', 'modify', '2016-11-05 14:22:00'),
(23, 32, '/joomla/administrator/index.php?option=com_imageshow&controller=images&task=saveshowlist&3d2ff61df27a08489ed8992a8711fb4d=1', 'Images', 'addimages', 'any', '2016-11-05 14:23:19'),
(24, 32, '/joomla/administrator/index.php?option=com_imageshow&controller=images&task=saveshowlist&3d2ff61df27a08489ed8992a8711fb4d=1', 'Images', 'addimages', 'any', '2016-11-05 14:24:29'),
(25, 32, '/joomla/administrator/index.php?option=com_imageshow&controller=showlist', 'Modalidades', 'showlist', 'add', '2016-11-05 16:08:45'),
(26, 32, '/joomla/administrator/index.php?option=com_imageshow&controller=images&task=saveshowlist&3d2ff61df27a08489ed8992a8711fb4d=1', 'Modalidades', 'addimages', 'any', '2016-11-05 16:09:01'),
(27, 32, '/joomla/administrator/index.php?option=com_imageshow&controller=images&task=saveshowlist&3d2ff61df27a08489ed8992a8711fb4d=1', 'Modalidades', 'addimages', 'any', '2016-11-05 16:09:09'),
(28, 32, '/joomla/administrator/index.php?option=com_imageshow&controller=images&task=saveshowlist&3d2ff61df27a08489ed8992a8711fb4d=1', 'Modalidades', 'addimages', 'any', '2016-11-05 16:09:13'),
(29, 32, '/joomla/administrator/index.php?option=com_imageshow&controller=images&task=saveshowlist&3d2ff61df27a08489ed8992a8711fb4d=1', 'Modalidades', 'addimages', 'any', '2016-11-05 16:21:32');

-- --------------------------------------------------------

--
-- Table structure for table `j78lr_imageshow_showcase`
--

CREATE TABLE `j78lr_imageshow_showcase` (
  `showcase_id` int(11) UNSIGNED NOT NULL,
  `showcase_title` varchar(255) DEFAULT NULL,
  `published` tinyint(1) DEFAULT '0',
  `ordering` int(11) DEFAULT '0',
  `general_overall_width` char(30) DEFAULT NULL,
  `general_overall_height` char(30) DEFAULT NULL,
  `date_created` datetime DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `j78lr_imageshow_showcase`
--

INSERT INTO `j78lr_imageshow_showcase` (`showcase_id`, `showcase_title`, `published`, `ordering`, `general_overall_width`, `general_overall_height`, `date_created`, `date_modified`) VALUES
(1, 'Frontpage slideshow', 1, 7, '1024px', '518', '0000-00-00 00:00:00', '2013-11-06 10:11:14'),
(2, 'Theme Grid', 1, 6, '100%', '550', '0000-00-00 00:00:00', '2013-11-07 08:11:17'),
(3, 'Sample Gallery', 1, 5, '100%', '450', '2010-10-22 08:39:32', '2013-10-11 03:10:05'),
(4, 'Theme Carousel', 1, 4, '100%', '200', '2012-11-26 10:11:48', '2012-11-26 10:11:49'),
(5, 'Theme Strip Vertical', 1, 3, '100%', '400', '2013-01-18 05:01:21', '2013-11-07 08:11:46'),
(6, 'Theme Strip Horizontal', 1, 2, '100%', '390', '2013-01-18 05:01:57', '2013-11-07 08:11:30'),
(7, 'Theme Flow', 1, 1, '100%', '200', '2013-01-18 05:01:44', '2013-02-01 04:02:15');

-- --------------------------------------------------------

--
-- Table structure for table `j78lr_imageshow_showlist`
--

CREATE TABLE `j78lr_imageshow_showlist` (
  `showlist_id` int(11) NOT NULL,
  `showlist_title` varchar(255) DEFAULT NULL,
  `published` tinyint(1) DEFAULT '0',
  `ordering` int(11) DEFAULT '0',
  `access` tinyint(3) DEFAULT NULL,
  `hits` int(11) DEFAULT NULL,
  `description` text,
  `showlist_link` text,
  `alter_autid` int(11) DEFAULT '0',
  `date_create` datetime DEFAULT NULL,
  `authorization_status` tinyint(1) DEFAULT '0',
  `date_modified` datetime DEFAULT '0000-00-00 00:00:00',
  `override_title` tinyint(1) DEFAULT '0',
  `override_description` tinyint(1) DEFAULT '0',
  `override_link` tinyint(1) DEFAULT '0',
  `image_loading_order` char(30) DEFAULT '',
  `image_source_type` char(45) DEFAULT '',
  `image_source_name` char(45) DEFAULT '',
  `image_source_profile_id` char(11) DEFAULT '0',
  `show_exif_data` char(100) DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `j78lr_imageshow_showlist`
--

INSERT INTO `j78lr_imageshow_showlist` (`showlist_id`, `showlist_title`, `published`, `ordering`, `access`, `hits`, `description`, `showlist_link`, `alter_autid`, `date_create`, `authorization_status`, `date_modified`, `override_title`, `override_description`, `override_link`, `image_loading_order`, `image_source_type`, `image_source_name`, `image_source_profile_id`, `show_exif_data`) VALUES
(12, 'Photos', 1, 3, 1, 0, '', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 0, 0, 'forward', 'folder', 'folder', '0', 'no'),
(13, 'Images', 1, 2, 1, 0, '', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 0, 0, 'forward', 'folder', 'folder', '0', 'no'),
(14, 'Modalidades', 1, 1, 1, 0, '', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 0, 0, 'forward', 'folder', 'folder', '0', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `j78lr_imageshow_source_profile`
--

CREATE TABLE `j78lr_imageshow_source_profile` (
  `external_source_profile_id` int(11) NOT NULL,
  `external_source_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `j78lr_imageshow_source_profile`
--

INSERT INTO `j78lr_imageshow_source_profile` (`external_source_profile_id`, `external_source_id`) VALUES
(9, 3);

-- --------------------------------------------------------

--
-- Table structure for table `j78lr_imageshow_theme_carousel`
--

CREATE TABLE `j78lr_imageshow_theme_carousel` (
  `theme_id` int(11) UNSIGNED NOT NULL,
  `image_source` char(150) DEFAULT 'thumbnails',
  `image_width` char(150) DEFAULT '',
  `image_height` char(150) DEFAULT '',
  `image_border_thickness` char(150) DEFAULT '5',
  `image_border_color` char(150) DEFAULT '#666666',
  `view_angle` char(150) DEFAULT '0',
  `transparency` char(150) DEFAULT '50',
  `scale` char(150) DEFAULT '35',
  `diameter` char(150) DEFAULT '50',
  `animation_duration` char(150) DEFAULT '0.6',
  `click_action` char(150) DEFAULT 'show_original_image',
  `open_link_in` char(150) DEFAULT 'current_browser',
  `orientation` char(150) DEFAULT 'horizontal',
  `enable_drag_action` char(150) DEFAULT 'no',
  `show_caption` char(150) DEFAULT 'yes',
  `caption_background_color` char(150) DEFAULT '#000000',
  `caption_opacity` char(150) DEFAULT '75',
  `caption_show_title` char(150) DEFAULT 'yes',
  `caption_title_css` text,
  `caption_show_description` char(150) DEFAULT 'yes',
  `caption_description_length_limitation` char(150) DEFAULT '50',
  `caption_description_css` text,
  `navigation_presentation` char(150) DEFAULT 'show',
  `auto_play` char(150) DEFAULT 'no',
  `slide_timing` char(150) DEFAULT '3',
  `pause_on_mouse_over` char(150) DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `j78lr_imageshow_theme_carousel`
--

INSERT INTO `j78lr_imageshow_theme_carousel` (`theme_id`, `image_source`, `image_width`, `image_height`, `image_border_thickness`, `image_border_color`, `view_angle`, `transparency`, `scale`, `diameter`, `animation_duration`, `click_action`, `open_link_in`, `orientation`, `enable_drag_action`, `show_caption`, `caption_background_color`, `caption_opacity`, `caption_show_title`, `caption_title_css`, `caption_show_description`, `caption_description_length_limitation`, `caption_description_css`, `navigation_presentation`, `auto_play`, `slide_timing`, `pause_on_mouse_over`) VALUES
(1, 'thumbnails', '', '', '5', '#666666', '0', '50', '35', '50', '0.6', 'show_original_image', 'current_browser', 'horizontal', 'no', 'yes', '#000000', '75', 'yes', 'font-family: Verdana;\nfont-size: 12px;\nfont-weight: bold;\ntext-align: left;\ncolor: #E9E9E9;', 'yes', '50', 'font-family: Arial;\nfont-size: 11px;\nfont-weight: normal;\ntext-align: left;\ncolor: #AFAFAF;', 'show', 'no', '3', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `j78lr_imageshow_theme_classic_flash`
--

CREATE TABLE `j78lr_imageshow_theme_classic_flash` (
  `theme_id` int(11) UNSIGNED NOT NULL,
  `imgpanel_presentation_mode` char(30) DEFAULT '0',
  `imgpanel_img_transition_type_fit` char(30) DEFAULT '',
  `imgpanel_img_click_action_fit` char(30) DEFAULT '',
  `imgpanel_img_open_link_in_fit` char(30) DEFAULT 'new-browser',
  `imgpanel_img_transition_type_expand` char(30) DEFAULT '',
  `imgpanel_img_motion_type_expand` char(30) DEFAULT '',
  `imgpanel_img_zooming_type_expand` char(30) DEFAULT 'center',
  `imgpanel_img_click_action_expand` char(30) DEFAULT '',
  `imgpanel_img_open_link_in_expand` char(30) DEFAULT 'new-browser',
  `imgpanel_img_show_image_shadow_fit` char(30) DEFAULT 'yes',
  `imgpanel_bg_type` char(30) DEFAULT '',
  `imgpanel_bg_value` char(255) DEFAULT NULL,
  `imgpanel_show_watermark` char(30) DEFAULT 'no',
  `imgpanel_watermark_path` char(255) DEFAULT NULL,
  `imgpanel_watermark_position` char(30) DEFAULT '',
  `imgpanel_watermark_offset` char(30) DEFAULT NULL,
  `imgpanel_watermark_opacity` char(30) DEFAULT NULL,
  `imgpanel_show_overlay_effect` char(30) DEFAULT 'no',
  `imgpanel_overlay_effect_type` char(30) DEFAULT NULL,
  `imgpanel_show_inner_shawdow` char(30) DEFAULT 'yes',
  `imgpanel_inner_shawdow_color` char(30) DEFAULT NULL,
  `thumbpanel_show_panel` char(30) DEFAULT NULL,
  `thumbpanel_panel_position` char(30) DEFAULT '',
  `thumbpanel_collapsible_position` char(30) DEFAULT 'yes',
  `thumbpanel_thumb_browsing_mode` char(30) DEFAULT '',
  `thumbpanel_show_thumb_status` char(30) DEFAULT 'yes',
  `thumbpanel_active_state_color` char(30) DEFAULT NULL,
  `thumbpanel_presentation_mode` char(30) DEFAULT '',
  `thumbpanel_border` char(30) DEFAULT NULL,
  `thumbpanel_enable_big_thumb` char(30) DEFAULT 'yes',
  `thumbpanel_big_thumb_size` char(30) DEFAULT NULL,
  `thumbpanel_thumb_row` char(30) DEFAULT NULL,
  `thumbpanel_thumb_width` char(30) DEFAULT NULL,
  `thumbpanel_thumb_height` char(30) DEFAULT NULL,
  `thumbpanel_thumb_opacity` char(30) DEFAULT '50',
  `thumbpanel_big_thumb_color` char(30) DEFAULT NULL,
  `thumbpanel_thumb_border` char(30) DEFAULT NULL,
  `thumbpanel_thumnail_panel_color` char(30) DEFAULT NULL,
  `thumbpanel_thumnail_normal_state` char(30) DEFAULT NULL,
  `infopanel_panel_position` char(30) DEFAULT '',
  `infopanel_presentation` char(30) DEFAULT NULL,
  `infopanel_bg_color_fill` char(30) DEFAULT NULL,
  `infopanel_panel_click_action` char(30) DEFAULT NULL,
  `infopanel_open_link_in` char(30) DEFAULT 'new-browser',
  `infopanel_show_title` char(30) DEFAULT 'yes',
  `infopanel_title_css` char(250) DEFAULT NULL,
  `infopanel_show_des` char(30) DEFAULT 'yes',
  `infopanel_des_lenght_limitation` char(30) DEFAULT '',
  `infopanel_des_css` char(250) DEFAULT NULL,
  `infopanel_show_link` char(30) DEFAULT 'no',
  `infopanel_link_css` char(250) DEFAULT NULL,
  `toolbarpanel_panel_position` char(30) DEFAULT '',
  `toolbarpanel_presentation` char(30) DEFAULT '0',
  `toolbarpanel_show_image_navigation` char(30) DEFAULT 'yes',
  `toolbarpanel_slideshow_player` char(30) DEFAULT 'yes',
  `toolbarpanel_show_fullscreen_switcher` char(30) DEFAULT 'yes',
  `toolbarpanel_show_tooltip` char(30) DEFAULT 'no',
  `slideshow_hide_thumb_panel` char(30) DEFAULT 'yes',
  `slideshow_slide_timing` char(50) DEFAULT NULL,
  `slideshow_hide_image_navigation` char(30) DEFAULT 'yes',
  `slideshow_auto_play` char(30) DEFAULT 'no',
  `slideshow_show_status` char(30) DEFAULT 'yes',
  `slideshow_enable_ken_burn_effect` char(30) DEFAULT 'yes',
  `slideshow_looping` char(30) DEFAULT 'yes',
  `general_round_corner_radius` char(30) DEFAULT '',
  `general_border_color` char(30) DEFAULT '',
  `general_background_color` char(30) DEFAULT '',
  `general_border_stroke` char(30) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `j78lr_imageshow_theme_classic_javascript`
--

CREATE TABLE `j78lr_imageshow_theme_classic_javascript` (
  `theme_id` int(11) UNSIGNED NOT NULL,
  `imgpanel_presentation_mode` char(30) DEFAULT '0',
  `imgpanel_img_click_action_fit` char(30) DEFAULT '',
  `imgpanel_img_open_link_in_fit` char(30) DEFAULT 'new-browser',
  `imgpanel_img_click_action_expand` char(30) DEFAULT '',
  `imgpanel_img_open_link_in_expand` char(30) DEFAULT 'new-browser',
  `imgpanel_bg_type` char(30) DEFAULT '',
  `imgpanel_bg_value` char(255) DEFAULT NULL,
  `thumbpanel_show_panel` char(30) DEFAULT NULL,
  `thumbpanel_panel_position` char(30) DEFAULT '',
  `thumbpanel_active_state_color` char(30) DEFAULT NULL,
  `thumbpanel_thumnail_normal_state` char(30) DEFAULT NULL,
  `thumbpanel_border` char(30) DEFAULT NULL,
  `thumbpanel_thumb_width` char(30) DEFAULT NULL,
  `thumbpanel_thumb_height` char(30) DEFAULT NULL,
  `thumbpanel_thumnail_panel_color` char(30) DEFAULT NULL,
  `infopanel_panel_position` char(30) DEFAULT '',
  `infopanel_presentation` char(30) DEFAULT NULL,
  `infopanel_bg_color_fill` char(30) DEFAULT NULL,
  `infopanel_panel_click_action` char(30) DEFAULT NULL,
  `infopanel_open_link_in` char(30) DEFAULT 'new-browser',
  `infopanel_show_title` char(30) DEFAULT 'yes',
  `infopanel_title_css` char(250) DEFAULT NULL,
  `infopanel_show_des` char(30) DEFAULT 'yes',
  `infopanel_des_lenght_limitation` char(30) DEFAULT '',
  `infopanel_des_css` char(250) DEFAULT NULL,
  `infopanel_show_link` char(30) DEFAULT 'no',
  `infopanel_link_css` char(250) DEFAULT NULL,
  `toolbarpanel_presentation` char(30) DEFAULT '0',
  `slideshow_slide_timing` char(50) DEFAULT NULL,
  `slideshow_auto_play` char(30) DEFAULT 'no',
  `slideshow_looping` char(30) DEFAULT 'yes',
  `general_round_corner_radius` char(30) DEFAULT '',
  `general_border_color` char(30) DEFAULT '',
  `general_background_color` char(30) DEFAULT '',
  `general_border_stroke` char(30) DEFAULT '',
  `toolbarpanel_show_counter` char(30) DEFAULT 'no',
  `infopanel_show_link_title` char(30) DEFAULT 'no',
  `infopanel_show_link_title_in` char(30) DEFAULT 'new-browser'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `j78lr_imageshow_theme_classic_javascript`
--

INSERT INTO `j78lr_imageshow_theme_classic_javascript` (`theme_id`, `imgpanel_presentation_mode`, `imgpanel_img_click_action_fit`, `imgpanel_img_open_link_in_fit`, `imgpanel_img_click_action_expand`, `imgpanel_img_open_link_in_expand`, `imgpanel_bg_type`, `imgpanel_bg_value`, `thumbpanel_show_panel`, `thumbpanel_panel_position`, `thumbpanel_active_state_color`, `thumbpanel_thumnail_normal_state`, `thumbpanel_border`, `thumbpanel_thumb_width`, `thumbpanel_thumb_height`, `thumbpanel_thumnail_panel_color`, `infopanel_panel_position`, `infopanel_presentation`, `infopanel_bg_color_fill`, `infopanel_panel_click_action`, `infopanel_open_link_in`, `infopanel_show_title`, `infopanel_title_css`, `infopanel_show_des`, `infopanel_des_lenght_limitation`, `infopanel_des_css`, `infopanel_show_link`, `infopanel_link_css`, `toolbarpanel_presentation`, `slideshow_slide_timing`, `slideshow_auto_play`, `slideshow_looping`, `general_round_corner_radius`, `general_border_color`, `general_background_color`, `general_border_stroke`, `toolbarpanel_show_counter`, `infopanel_show_link_title`, `infopanel_show_link_title_in`) VALUES
(1, 'expand-out', 'no-action', 'new-browser', 'no-action', 'new-browser', 'pattern', '', 'off', 'bottom', '#ff6200', '#ffffff', '2', '60', '50', '#000000', 'top', 'off', '#000000', 'no-action', 'new-browser', 'yes', 'font-family: Verdana;\r\nfont-size: 12px;\r\nfont-weight: bold;\r\ntext-align: left;\r\ncolor: #E9E9E9;', 'yes', '50', 'font-family: Arial;\r\nfont-size: 11px;\r\nfont-weight: normal;\r\ntext-align: left;\r\ncolor: #AFAFAF;', 'no', 'font-family: Verdana;\r\nfont-size: 11px;\r\nfont-weight: bold;\r\ntext-align: right;\r\ncolor: #E06614;', 'auto', '6', 'yes', 'yes', '0', '#cccccc', '#efefef', '0', 'no', 'no', 'new-browser'),
(2, 'expand-out', 'no-action', 'new-browser', 'no-action', 'new-browser', 'venture-color', '#595959', 'on', 'bottom', '#ff6200', '#ffffff', '2', '60', '40', '#000000', 'top', 'on', '#000000', 'no-action', 'new-browser', 'yes', 'font-family: Verdana;\nfont-size: 12px;\nfont-weight: bold;\ntext-align: left;\ncolor: #E9E9E9;', 'yes', '50', 'font-family: Arial;\nfont-size: 11px;\nfont-weight: normal;\ntext-align: left;\ncolor: #AFAFAF;', 'no', 'font-family: Verdana;\nfont-size: 11px;\nfont-weight: bold;\ntext-align: right;\ncolor: #E06614;', 'auto', '6', 'no', 'yes', '0', '#cccccc', '#efefef', '1', 'no', 'no', 'new-browser'),
(3, 'expand-out', 'no-action', 'new-browser', 'no-action', 'new-browser', 'venture-color', '#595959', 'on', 'bottom', '#ff6200', '#ffffff', '2', '60', '40', '#000000', 'top', 'on', '#000000', 'no-action', 'new-browser', 'yes', 'font-family: Verdana;\nfont-size: 12px;\nfont-weight: bold;\ntext-align: left;\ncolor: #E9E9E9;', 'yes', '50', 'font-family: Arial;\nfont-size: 11px;\nfont-weight: normal;\ntext-align: left;\ncolor: #AFAFAF;', 'no', 'font-family: Verdana;\nfont-size: 11px;\nfont-weight: bold;\ntext-align: right;\ncolor: #E06614;', 'auto', '6', 'no', 'yes', '0', '#cccccc', '#efefef', '1', 'no', 'no', 'new-browser');

-- --------------------------------------------------------

--
-- Table structure for table `j78lr_imageshow_theme_classic_parameters`
--

CREATE TABLE `j78lr_imageshow_theme_classic_parameters` (
  `id` int(11) NOT NULL,
  `general_swf_library` tinyint(1) DEFAULT '0',
  `root_url` tinyint(1) DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `j78lr_imageshow_theme_classic_parameters`
--

INSERT INTO `j78lr_imageshow_theme_classic_parameters` (`id`, `general_swf_library`, `root_url`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `j78lr_imageshow_theme_flow`
--

CREATE TABLE `j78lr_imageshow_theme_flow` (
  `theme_id` int(11) UNSIGNED NOT NULL,
  `image_source` char(150) DEFAULT 'thumbnails',
  `image_width` char(150) DEFAULT '150',
  `image_height` char(150) DEFAULT '150',
  `image_border_thickness` char(150) DEFAULT '3',
  `image_border_rounded_corner` char(150) DEFAULT '2',
  `image_border_color` char(150) DEFAULT '#eeeeee',
  `image_effect` char(150) DEFAULT 'yes',
  `transparency` char(150) DEFAULT '50',
  `background_type` char(150) DEFAULT 'transparent',
  `background_color` char(150) DEFAULT '#ffffff',
  `container_side_fade` char(150) DEFAULT 'white',
  `animation_duration` char(150) DEFAULT '1',
  `click_action` char(150) DEFAULT 'show_original_image',
  `open_link_in` char(150) DEFAULT 'current_browser',
  `orientation` char(150) DEFAULT 'horizontal',
  `enable_keyboard_action` char(150) DEFAULT 'yes',
  `enable_mouse_wheel_action` char(150) DEFAULT 'yes',
  `show_caption` char(150) DEFAULT 'yes',
  `caption_background_color` char(150) DEFAULT '#000000',
  `caption_opacity` char(150) DEFAULT '75',
  `caption_show_title` char(150) DEFAULT 'yes',
  `caption_title_css` text,
  `caption_show_description` char(150) DEFAULT 'yes',
  `caption_description_length_limitation` char(150) DEFAULT '50',
  `caption_description_css` text,
  `auto_play` char(150) DEFAULT 'no',
  `slide_timing` char(150) DEFAULT '3',
  `pause_on_mouse_over` char(150) DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `j78lr_imageshow_theme_flow`
--

INSERT INTO `j78lr_imageshow_theme_flow` (`theme_id`, `image_source`, `image_width`, `image_height`, `image_border_thickness`, `image_border_rounded_corner`, `image_border_color`, `image_effect`, `transparency`, `background_type`, `background_color`, `container_side_fade`, `animation_duration`, `click_action`, `open_link_in`, `orientation`, `enable_keyboard_action`, `enable_mouse_wheel_action`, `show_caption`, `caption_background_color`, `caption_opacity`, `caption_show_title`, `caption_title_css`, `caption_show_description`, `caption_description_length_limitation`, `caption_description_css`, `auto_play`, `slide_timing`, `pause_on_mouse_over`) VALUES
(1, 'original_images', '185', '150', '3', '2', '#555555', 'yes', '75', 'venture_color', '#ffffff', 'white', '1', 'show_original_image', 'current_browser', 'horizontal', 'yes', 'yes', 'yes', '#000000', '75', 'yes', 'padding: 5px;\r\nfont-family: Verdana;\r\nfont-size: 12px;\r\nfont-weight: bold;\r\ntext-align: left;\r\ncolor: #E9E9E9;', 'yes', '50', 'padding: 5px;\r\nfont-family: Arial;\r\nfont-size: 11px;\r\nfont-weight: normal;\r\ntext-align: left;\r\ncolor: #AFAFAF;', 'no', '3', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `j78lr_imageshow_theme_grid`
--

CREATE TABLE `j78lr_imageshow_theme_grid` (
  `theme_id` int(11) UNSIGNED NOT NULL,
  `img_layout` char(5) DEFAULT 'fixed',
  `background_color` char(30) DEFAULT '#ffffff',
  `thumbnail_width` int(11) DEFAULT '50',
  `thumbnail_height` int(11) DEFAULT '50',
  `thumbnail_space` int(11) DEFAULT '10',
  `thumbnail_border` int(11) DEFAULT '3',
  `thumbnail_rounded_corner` int(11) DEFAULT '3',
  `thumbnail_border_color` char(30) DEFAULT '#ffffff',
  `thumbnail_shadow` char(1) DEFAULT '1',
  `image_source` char(150) DEFAULT 'thumbnail',
  `show_caption` char(150) DEFAULT 'yes',
  `caption_show_description` char(150) DEFAULT 'yes',
  `show_close` char(150) DEFAULT 'yes',
  `show_thumbs` char(150) DEFAULT 'yes',
  `click_action` char(150) DEFAULT 'show_original_image',
  `open_link_in` char(150) DEFAULT 'current_browser',
  `container_height_type` char(150) DEFAULT 'inherited',
  `container_transparent_background` char(150) DEFAULT 'no',
  `auto_play` char(150) DEFAULT 'no',
  `slide_timing` char(150) DEFAULT '3',
  `item_per_page` char(150) DEFAULT '5',
  `navigation_type` char(150) DEFAULT 'show_all'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `j78lr_imageshow_theme_grid`
--

INSERT INTO `j78lr_imageshow_theme_grid` (`theme_id`, `img_layout`, `background_color`, `thumbnail_width`, `thumbnail_height`, `thumbnail_space`, `thumbnail_border`, `thumbnail_rounded_corner`, `thumbnail_border_color`, `thumbnail_shadow`, `image_source`, `show_caption`, `caption_show_description`, `show_close`, `show_thumbs`, `click_action`, `open_link_in`, `container_height_type`, `container_transparent_background`, `auto_play`, `slide_timing`, `item_per_page`, `navigation_type`) VALUES
(1, 'fixed', '#ffffff', 280, 180, 15, 5, 3, '#ffffff', '0', 'thumbnail', 'yes', 'yes', 'yes', 'yes', 'show_original_image', 'current_browser', 'inherited', 'no', 'no', '3', '5', 'show_all'),
(2, 'fixed', '#ffffff', 200, 150, 10, 3, 3, '#ffffff', '1', 'original_image', 'yes', 'yes', 'yes', 'yes', 'show_original_image', 'current_browser', 'inherited', 'no', 'no', '3', '5', 'show_all');

-- --------------------------------------------------------

--
-- Table structure for table `j78lr_imageshow_theme_profile`
--

CREATE TABLE `j78lr_imageshow_theme_profile` (
  `theme_id` int(11) NOT NULL DEFAULT '0',
  `showcase_id` int(11) NOT NULL DEFAULT '0',
  `theme_name` varchar(255) NOT NULL DEFAULT '',
  `theme_style_name` char(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `j78lr_imageshow_theme_profile`
--

INSERT INTO `j78lr_imageshow_theme_profile` (`theme_id`, `showcase_id`, `theme_name`, `theme_style_name`) VALUES
(1, 1, 'themeslider', ''),
(2, 2, 'themegrid', ''),
(1, 3, 'themeclassic', 'javascript'),
(2, 3, 'themeclassic', 'javascript'),
(3, 3, 'themeclassic', 'javascript'),
(1, 4, 'themecarousel', ''),
(3, 5, 'themestrip', ''),
(2, 6, 'themestrip', ''),
(1, 7, 'themeflow', '');

-- --------------------------------------------------------

--
-- Table structure for table `j78lr_imageshow_theme_slider`
--

CREATE TABLE `j78lr_imageshow_theme_slider` (
  `theme_id` int(11) UNSIGNED NOT NULL,
  `img_transition_effect` char(30) DEFAULT 'random',
  `toolbar_navigation_arrows_presentation` char(30) DEFAULT 'show-on-mouse-over',
  `toolbar_slideshow_player_presentation` char(30) DEFAULT 'hide',
  `caption_show_caption` char(30) DEFAULT 'yes',
  `caption_title_css` text,
  `caption_description_css` text,
  `caption_link_css` text,
  `caption_caption_opacity` char(30) DEFAULT '75',
  `caption_title_show` char(30) DEFAULT 'yes',
  `caption_description_show` char(30) DEFAULT 'yes',
  `caption_link_show` char(30) DEFAULT 'no',
  `slideshow_slide_timming` int(11) DEFAULT '6',
  `slideshow_pause_on_mouseover` char(30) DEFAULT 'yes',
  `slideshow_auto_play` char(30) DEFAULT 'yes',
  `thumnail_panel_position` char(30) DEFAULT 'right',
  `thumbnail_panel_presentation` char(30) DEFAULT 'show',
  `thumbnail_presentation_mode` char(30) DEFAULT 'numbers',
  `thumbnail_active_state_color` char(30) DEFAULT '#CC3333',
  `caption_position` char(150) DEFAULT 'bottom',
  `click_action` char(150) DEFAULT 'no_action',
  `open_link_in` char(150) DEFAULT 'current_browser',
  `img_transparent_background` char(150) DEFAULT 'no',
  `transition_speed` char(150) DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `j78lr_imageshow_theme_slider`
--

INSERT INTO `j78lr_imageshow_theme_slider` (`theme_id`, `img_transition_effect`, `toolbar_navigation_arrows_presentation`, `toolbar_slideshow_player_presentation`, `caption_show_caption`, `caption_title_css`, `caption_description_css`, `caption_link_css`, `caption_caption_opacity`, `caption_title_show`, `caption_description_show`, `caption_link_show`, `slideshow_slide_timming`, `slideshow_pause_on_mouseover`, `slideshow_auto_play`, `thumnail_panel_position`, `thumbnail_panel_presentation`, `thumbnail_presentation_mode`, `thumbnail_active_state_color`, `caption_position`, `click_action`, `open_link_in`, `img_transparent_background`, `transition_speed`) VALUES
(1, 'randomSmart', 'hide', 'hide', 'hide', 'font-family: Verdana;\r\nfont-size: 12px;\r\nfont-weight: bold;\r\ntext-align: left;\r\ncolor: #E9E9E9;\r\nmargin: 10px;\r\npadding: 0;\r\nletter-spacing: 0;', 'font-family: Arial;\r\nfont-size: 12px;\r\nfont-weight: normal;\r\ntext-align: left;\r\ncolor: #AFAFAF;\r\nmargin: 10px;\r\npadding: 0;\r\nletter-spacing: 0;', 'font-family: Verdana;\r\nfont-size: 11px;\r\nfont-weight: bold;\r\ntext-align: right;\r\ncolor: #E06614;', '75', 'yes', 'yes', 'no', 8, 'no', 'yes', 'center', 'show', 'dots', '#33c7cc', 'bottom', 'no_action', 'current_browser', 'no', '1');

-- --------------------------------------------------------

--
-- Table structure for table `j78lr_imageshow_theme_strip`
--

CREATE TABLE `j78lr_imageshow_theme_strip` (
  `theme_id` int(11) UNSIGNED NOT NULL,
  `slideshow_sliding_speed` char(150) NOT NULL DEFAULT '500',
  `image_orientation` char(150) NOT NULL DEFAULT 'horizontal',
  `image_width` char(150) NOT NULL DEFAULT '130',
  `image_height` char(150) NOT NULL DEFAULT '130',
  `image_space` char(150) NOT NULL DEFAULT '10',
  `image_border` char(150) NOT NULL DEFAULT '3',
  `image_rounded_corner` char(150) NOT NULL DEFAULT '3',
  `image_shadow` char(150) NOT NULL DEFAULT 'no-shadow',
  `image_border_color` char(150) NOT NULL DEFAULT '#cccccc',
  `image_click_action` char(150) NOT NULL DEFAULT 'no-action',
  `image_source` char(150) NOT NULL DEFAULT 'thumbnail',
  `show_caption` char(150) NOT NULL DEFAULT 'yes',
  `caption_background_color` char(150) NOT NULL DEFAULT '#000000',
  `caption_opacity` char(150) NOT NULL DEFAULT '75',
  `caption_show_title` char(150) NOT NULL DEFAULT 'yes',
  `caption_title_css` text NOT NULL,
  `caption_show_description` char(150) NOT NULL DEFAULT 'yes',
  `caption_description_length_limitation` char(150) NOT NULL DEFAULT '50',
  `caption_description_css` text NOT NULL,
  `container_type` char(150) NOT NULL DEFAULT 'elastislide-default',
  `container_border_color` char(150) NOT NULL DEFAULT '#cccccc',
  `container_border` char(150) NOT NULL DEFAULT '1',
  `container_round_corner` char(150) NOT NULL DEFAULT '0',
  `container_background_color` char(150) NOT NULL DEFAULT '#ffffff',
  `container_side_fade` char(150) NOT NULL DEFAULT 'white',
  `open_link_in` char(150) DEFAULT 'current_browser',
  `slideshow_auto_play` char(150) DEFAULT 'no',
  `slideshow_delay_time` char(150) DEFAULT '3000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `j78lr_imageshow_theme_strip`
--

INSERT INTO `j78lr_imageshow_theme_strip` (`theme_id`, `slideshow_sliding_speed`, `image_orientation`, `image_width`, `image_height`, `image_space`, `image_border`, `image_rounded_corner`, `image_shadow`, `image_border_color`, `image_click_action`, `image_source`, `show_caption`, `caption_background_color`, `caption_opacity`, `caption_show_title`, `caption_title_css`, `caption_show_description`, `caption_description_length_limitation`, `caption_description_css`, `container_type`, `container_border_color`, `container_border`, `container_round_corner`, `container_background_color`, `container_side_fade`, `open_link_in`, `slideshow_auto_play`, `slideshow_delay_time`) VALUES
(2, '500', 'horizontal', '185', '150', '10', '3', '3', 'no-shadow', '#eeeeee', 'show-original-image', 'original_image', 'yes', '#000000', '75', 'yes', 'padding: 5px;\r\nfont-family: Verdana;\r\nfont-size: 12px;\r\nfont-weight: bold;\r\ntext-align: left;\r\ncolor: #E9E9E9;', 'yes', '50', 'padding: 5px;\r\nfont-family: Arial;\r\nfont-size: 11px;\r\nfont-weight: normal;\r\ntext-align: left;\r\ncolor: #AFAFAF;', 'customize', '#cccccc', '0', '0', '#ffffff', 'white', 'current_browser', 'no', '3000'),
(3, '500', 'vertical', '180', '130', '10', '3', '2', 'no-shadow', '#eeeeee', 'show-original-image', 'original_image', 'yes', '#000000', '75', 'yes', 'padding: 5px;\r\nfont-family: Verdana;\r\nfont-size: 12px;\r\nfont-weight: bold;\r\ntext-align: left;\r\ncolor: #E9E9E9;', 'yes', '50', 'padding: 5px;\r\nfont-family: Arial;\r\nfont-size: 11px;\r\nfont-weight: normal;\r\ntext-align: left;\r\ncolor: #AFAFAF;', 'customize', '#cccccc', '0', '0', '#ffffff', 'white', 'current_browser', 'no', '3000');

-- --------------------------------------------------------

--
-- Table structure for table `j78lr_jsn_easyslider_config`
--

CREATE TABLE `j78lr_jsn_easyslider_config` (
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `j78lr_jsn_easyslider_config`
--

INSERT INTO `j78lr_jsn_easyslider_config` (`name`, `value`) VALUES
('last_ask_for_review', '1478228824'),
('live_update_checking', '0'),
('live_update_last_check', '1438541416'),
('live_update_notification', '0');

-- --------------------------------------------------------

--
-- Table structure for table `j78lr_jsn_easyslider_messages`
--

CREATE TABLE `j78lr_jsn_easyslider_messages` (
  `msg_id` int(11) NOT NULL,
  `msg_screen` varchar(150) DEFAULT NULL,
  `published` tinyint(1) DEFAULT '1',
  `ordering` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `j78lr_jsn_easyslider_sliders`
--

CREATE TABLE `j78lr_jsn_easyslider_sliders` (
  `slider_id` int(11) NOT NULL,
  `slider_title` varchar(255) NOT NULL,
  `slider_data` longtext,
  `published` int(11) NOT NULL,
  `ordering` int(11) NOT NULL,
  `access` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `j78lr_jsn_imageshow_config`
--

CREATE TABLE `j78lr_jsn_imageshow_config` (
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `j78lr_jsn_imageshow_config`
--

INSERT INTO `j78lr_jsn_imageshow_config` (`name`, `value`) VALUES
('last_ask_for_review', '1381458432'),
('live_update_checking', '0'),
('live_update_last_check', '1368413152'),
('live_update_last_notified', '{"name":"JSN ImageShow","identified_name":"ext_imageshow","description":"JSN ImageShow PRO allows you to have UNLIMITED number of showlist, showcase and images in each showlist.","version":"4.6.0","thumbnail":"http://www.joomlashine.com/images/content/joomla-extensions/jsn-imageshow/introduction/jsn-imageshow-banner.jpg","url":"http://www.joomlashine.com/joomla-extensions/jsn-imageshow-details.html","tags":"2.5;3.0;3.1","editions":[{"edition":"PRO STANDARD","authentication":true,"related_product":[]},{"edition":"PRO UNLIMITED","authentication":true,"related_product":[]},{"edition":"FREE","authentication":false,"related_product":[]}]}'),
('live_update_notification', '0'),
('review_popup', '0');

-- --------------------------------------------------------

--
-- Table structure for table `j78lr_jsn_imageshow_messages`
--

CREATE TABLE `j78lr_jsn_imageshow_messages` (
  `msg_id` int(11) NOT NULL,
  `msg_screen` varchar(150) DEFAULT NULL,
  `published` tinyint(1) DEFAULT '1',
  `ordering` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `j78lr_jsn_imageshow_messages`
--

INSERT INTO `j78lr_jsn_imageshow_messages` (`msg_id`, `msg_screen`, `published`, `ordering`) VALUES
(1, 'LAUNCH_PAD', 1, 1),
(2, 'LAUNCH_PAD', 1, 2),
(3, 'SHOWLISTS', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `j78lr_jsn_mobilize_config`
--

CREATE TABLE `j78lr_jsn_mobilize_config` (
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `j78lr_jsn_mobilize_config`
--

INSERT INTO `j78lr_jsn_mobilize_config` (`name`, `value`) VALUES
('last_ask_for_review', '1478228765'),
('live_update_checking', '0'),
('live_update_last_check', '1431681907'),
('live_update_notification', '0'),
('tmp_config', '');

-- --------------------------------------------------------

--
-- Table structure for table `j78lr_jsn_mobilize_design`
--

CREATE TABLE `j78lr_jsn_mobilize_design` (
  `design_id` int(11) NOT NULL,
  `profile_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `j78lr_jsn_mobilize_messages`
--

CREATE TABLE `j78lr_jsn_mobilize_messages` (
  `msg_id` int(11) NOT NULL,
  `msg_screen` varchar(150) DEFAULT NULL,
  `published` tinyint(1) DEFAULT '1',
  `ordering` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `j78lr_jsn_mobilize_os`
--

CREATE TABLE `j78lr_jsn_mobilize_os` (
  `os_id` int(11) NOT NULL,
  `os_value` varchar(255) NOT NULL,
  `os_type` varchar(50) NOT NULL,
  `os_title` varchar(255) NOT NULL,
  `os_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `j78lr_jsn_mobilize_os`
--

INSERT INTO `j78lr_jsn_mobilize_os` (`os_id`, `os_value`, `os_type`, `os_title`, `os_order`) VALUES
(1, '{"ios":["6","<"]}', 'ios', 'iOS 6.x and bellow', 1),
(2, '{"ios":["7"]}', 'ios', 'iOS 7.x', 2),
(3, '{"android":["2"]}', 'android', 'Android 2.2 - 2.3', 4),
(4, '{"android":["4"]}', 'android', 'Android 4.x', 4),
(5, '{"wmobilie":["6","<"]}', 'wmobilie', 'Windows Mobile 6.x and bellow', 4),
(6, '{"wmobilie":["7"]}', 'wmobilie', 'Windows Mobile 7.x', 4),
(7, '{"wmobilie":["8"]}', 'wmobilie', 'Windows Mobile 8.x', 4),
(8, '{"blackberry":["5","<"]}', 'blackberry', 'BlackBerry 5.x and bellow', 4),
(9, '{"blackberry":["6","7"]}', 'blackberry', 'BlackBerry 6x - 7x', 4),
(10, '{"blackberry":["10"]}', 'blackberry', 'BlackBerry 10x', 4),
(11, 'other', 'other', 'Other', 4),
(12, '{"ios":["8",">"]}', 'ios', 'iOS 8.x and above', 3);

-- --------------------------------------------------------

--
-- Table structure for table `j78lr_jsn_mobilize_os_support`
--

CREATE TABLE `j78lr_jsn_mobilize_os_support` (
  `support_id` int(11) NOT NULL,
  `profile_id` int(11) NOT NULL,
  `os_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `j78lr_jsn_mobilize_profiles`
--

CREATE TABLE `j78lr_jsn_mobilize_profiles` (
  `profile_id` int(11) NOT NULL,
  `profile_title` varchar(255) NOT NULL,
  `profile_description` text NOT NULL,
  `profile_state` int(11) NOT NULL,
  `profile_minify` varchar(50) NOT NULL,
  `profile_optimize_images` int(11) NOT NULL,
  `ordering` int(11) NOT NULL,
  `profile_device` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `j78lr_jsn_pagebuilder_config`
--

CREATE TABLE `j78lr_jsn_pagebuilder_config` (
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `j78lr_jsn_pagebuilder_config`
--

INSERT INTO `j78lr_jsn_pagebuilder_config` (`name`, `value`) VALUES
('live_update_notification', '0');

-- --------------------------------------------------------

--
-- Table structure for table `j78lr_jsn_pagebuilder_content_custom_css`
--

CREATE TABLE `j78lr_jsn_pagebuilder_content_custom_css` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `content` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `css_key` varchar(255) DEFAULT NULL,
  `css_value` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `j78lr_jsn_pagebuilder_messages`
--

CREATE TABLE `j78lr_jsn_pagebuilder_messages` (
  `msg_id` int(11) NOT NULL,
  `msg_screen` varchar(150) DEFAULT NULL,
  `published` tinyint(1) DEFAULT '1',
  `ordering` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `j78lr_jsn_poweradmin_config`
--

CREATE TABLE `j78lr_jsn_poweradmin_config` (
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `j78lr_jsn_poweradmin_favourite`
--

CREATE TABLE `j78lr_jsn_poweradmin_favourite` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(500) NOT NULL,
  `icon` text NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `url` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `j78lr_jsn_poweradmin_history`
--

CREATE TABLE `j78lr_jsn_poweradmin_history` (
  `id` int(11) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `object_key` varchar(255) NOT NULL,
  `object_id` int(11) NOT NULL,
  `component` varchar(255) NOT NULL,
  `list_page` varchar(255) NOT NULL,
  `list_page_params` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` tinytext NOT NULL,
  `form` text NOT NULL,
  `form_hash` varchar(32) NOT NULL,
  `params` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `css` varchar(100) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `visited` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `j78lr_jsn_poweradmin_history`
--

INSERT INTO `j78lr_jsn_poweradmin_history` (`id`, `user_id`, `object_key`, `object_id`, `component`, `list_page`, `list_page_params`, `title`, `description`, `form`, `form_hash`, `params`, `icon`, `css`, `is_deleted`, `visited`) VALUES
(1, 32, 'option=com_templates&view=style&layout=edit', 17, '', '', '', 'isis - Default', '', '{"client_id":"0","filter":{"search":"","menuitem":"","template":""},"list":{"fullordering":"a.template ASC","limit":"20"},"limitstart":"0","cid":["17"],"task":"style.edit","boxchecked":"1","60d7bb1a37e1d72ba5dbab5fd2028ee0":"1","option":"com_templates"}', 'e14462e3542d3e8f7250571ae4a4bfc7', '', '', '', 1, 1478220295),
(2, 32, 'option=com_templates&view=style&layout=edit', 20, '', '', '', 'Tenth - Default', '', '{"client_id":"0","filter":{"search":"","menuitem":"","template":""},"list":{"fullordering":"a.template ASC","limit":"20"},"limitstart":"0","cid":["20"],"task":"style.edit","boxchecked":"1","d39942b0521ed329cd3559a99b984ad2":"1","option":"com_templates"}', '0029617a7e8f9a50b3277c30e34ad5b7', '', '', '', 1, 1478222347),
(3, 32, 'option=com_menus&view=item&layout=edit', 468, '', '', '', 'Eventos', '', '', '', 'option=com_menus&view=item&layout=edit&id=468', '', '', 0, 1478378981),
(4, 32, 'option=com_content&view=article&layout=edit', 29, '', '', '', 'Menu Module', '	This module displays a menu on the site (frontend). Â Menus can be displayed in a wide variety of ways by using the menu options and css menu styles. Help\n{loadposition menuload}', '', '', 'option=com_content&view=article&layout=edit&id=29', '', '', 1, 1478240633),
(5, 32, 'option=com_menus&view=item&layout=edit', 479, '', '', '', '53º Aniversário do Clube Desportivo do Arneiro', '', '', '', 'option=com_menus&view=item&layout=edit&id=479', '', '', 1, 1478291422),
(6, 32, 'option=com_modules&view=module&layout=edit', 45, '', '', '', 'Menu', '', '', '', 'option=com_modules&view=module&layout=edit&id=45', '', '', 1, 1478277107),
(7, 32, 'option=com_menus&view=item&layout=edit', 706, '', '', '', 'Modalidades', '', '', '', 'option=com_menus&view=item&layout=edit&id=706', '', '', 0, 1478366425),
(8, 32, 'option=com_menus&view=item&layout=edit', 2176, '', '', '', 'Serviços', '', '', '', 'option=com_menus&view=item&layout=edit&id=2176', '', '', 1, 1478241713),
(9, 32, 'option=com_templates&view=style&layout=edit', 21, 'Template Manager', 'Template Manager', '', 'JSN Venture FREE - Default', '', '', '', 'option=com_templates&task=style.edit&id=21', 'templates/bluestork/images/menu/icon-16-themes.png', 'icon-16-themes', 1, 1478694687),
(10, 32, 'option=com_modules&view=module&layout=edit', 130, '', '', '', '"Box cyan" Style', '	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc varius nisl id lectus ultricies ut elementum nulla ornare. Nulla sed mi massa, at tincidunt felis.\nModule Class Suffix: "richbox-2"', '', '', 'option=com_modules&view=module&layout=edit&id=130', '', '', 0, 1478272719),
(11, 32, 'option=com_menus&view=item&layout=edit', 472, '', '', '', 'Historial', '', '', '', 'option=com_menus&view=item&layout=edit&id=472', '', '', 0, 1478287969),
(12, 32, 'option=com_menus&view=item&layout=edit', 466, 'Template Manager', 'Template Manager', '', 'Clube', '', '', '', 'option=com_menus&view=item&layout=edit&id=466', 'templates/bluestork/images/menu/icon-16-themes.png', 'icon-16-themes', 0, 1478353879),
(13, 32, 'option=com_content&view=article&layout=edit', 113, '', '', '', 'Clube', '	\n\nProposta de Sócio\n\n\nPara se fazer sócio do Clube Desportivo do Arneiro é necessário o seguinte:\n\nPagar Joia no valor de 10€\nEntregar uma fotografia atualizada tipo passe\nEntregar proposta devidamente preenchida\n\n   \n \n \n \n \n\n\n \n \n\n \nParc', '', '', 'option=com_content&view=article&layout=edit&id=113', '', '', 1, 1478274867),
(14, 32, 'option=com_content&view=article&layout=edit', 72, '', '', '', 'Eventos', '	Nesta secção do site poderá acompanhar todos os Eventos a realizar pela Direção do Clube Desportivo do Arneiro e também os que já tenham sido realizados. Sempre que possível iremos colocar fotografias dos Eventos realizados.\n \nPrograma das', '', '', 'option=com_content&view=article&layout=edit&id=72', '', '', 1, 1478379084),
(15, 32, 'option=com_modules&view=module&layout=edit', 141, '', '', '', 'Menu right', '', '', '', 'option=com_modules&view=module&layout=edit&id=141', '', '', 1, 1478276786),
(16, 32, 'option=com_modules&view=module&layout=edit', 604, '', '', '', 'Menu', '', '', '', 'option=com_modules&view=module&layout=edit&id=604', '', '', 0, 1478379182),
(17, 32, 'option=com_content&view=article&layout=edit', 114, '', '', '', 'Bem Vindo', '	 Esta é a página de internet do Clube Desportivo do Arneiro - www.cdarneiro.com , será para nós um grande desafio tentar manter o site sempre atualizado. O maior desafio passará por criar condições aos associados que não frequentam as instalaç', '', '', 'option=com_content&view=article&layout=edit&id=114', '', '', 0, 1478290272),
(18, 32, 'option=com_content&view=article&layout=edit', 111, '', '', '', 'JSN PageBuilder - The Easiest Way to Build Joomla Pages', '[pb_row background="solid" solid_color_value="#dbe7f8" solid_color_color="#dbe7f8" border_width_value_="0" border_style="solid" border_color="#000" div_padding_top="10" div_padding_right="10" div_padding_bottom="10" div_padding_left="10" ][pb_column span=', '', '', 'option=com_content&view=article&layout=edit&id=111', '', '', 1, 1478278381),
(19, 32, 'option=com_users&view=user&layout=edit', 32, '', '', '', 'Super User', '', '', '', 'option=com_users&view=user&layout=edit&id=32', '', '', 1, 1478278455),
(20, 32, 'option=com_content&view=article&layout=edit', 38, '', '', '', 'Sample Sites', '	Your installation includes sample data, designed to show you some of the options you have for building your website. In addition to information about Joomla! there are two sample "sites within a site" designed to help you get started with builidng your o', '', '', 'option=com_content&view=article&layout=edit&id=38', '', '', 1, 1478278654),
(21, 32, 'option=com_menus&view=item&layout=edit', 2178, '', '', '', 'Aréa de Sócio', '', '', '', 'option=com_menus&view=item&layout=edit&id=2178', '', '', 0, 1478376182),
(22, 32, 'option=com_menus&view=item&layout=edit', 2179, '', '', '', 'Registo', '', '', '', 'option=com_menus&view=item&layout=edit&id=2179', '', '', 1, 1478359356),
(23, 32, 'option=com_content&view=article&layout=edit', 115, '', '', '', 'Aréa de Sócio', '	', '', '', 'option=com_content&view=article&layout=edit&id=115', '', '', 0, 1478280414),
(24, 32, 'option=com_menus&view=item&layout=edit', 2180, '', '', '', 'Login', '', '', '', 'option=com_menus&view=item&layout=edit&id=2180', '', '', 0, 1478359502),
(25, 32, 'option=com_menus&view=item&layout=edit', 708, '', '', '', 'Form Builder', '', '', '', 'option=com_menus&view=item&layout=edit&id=708', '', '', 1, 1478280780),
(26, 32, 'option=com_menus&view=item&layout=edit', 2177, '', '', '', 'Suporte', '', '', '', 'option=com_menus&view=item&layout=edit&id=2177', '', '', 0, 1478382963),
(27, 32, 'option=com_menus&view=item&layout=edit', 2181, '', '', '', 'Logout', '', '', '', 'option=com_menus&view=item&layout=edit&id=2181', '', '', 1, 1478376096),
(28, 32, 'option=com_content&view=article&layout=edit', 116, '', '', '', 'Suporte', '	CLUBE DESPORTIVO DE AREIRO\nEstrada Principal do Arneiro, nº 360\n \nArneiro2775 - 524 CARCAVELOSPortugalE-mail:       cdarneiro@netcabo.pt   Telefone:    214 577 978 Fax:           214 561 104\n \n \n \n \nNIF: 501 633 251\n \nIBAN: PT', '', '', 'option=com_content&view=article&layout=edit&id=116', '', '', 0, 1478283077),
(29, 32, 'option=com_modules&view=module&layout=edit', 605, '', '', '', 'Site Map', '', '', '', 'option=com_modules&view=module&layout=edit&id=605', '', '', 0, 1478282637),
(30, 32, 'option=com_modules&view=module&layout=edit', 26, '', '', '', 'This Site', '', '', '', 'option=com_modules&view=module&layout=edit&id=26', '', '', 1, 1478282619);

-- --------------------------------------------------------

--
-- Table structure for table `j78lr_jsn_poweradmin_menu_assets`
--

CREATE TABLE `j78lr_jsn_poweradmin_menu_assets` (
  `menuId` int(16) NOT NULL,
  `assets` text,
  `type` enum('css','js') NOT NULL DEFAULT 'css',
  `legacy` tinyint(2) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `j78lr_jsn_tplframework_megamenu`
--

CREATE TABLE `j78lr_jsn_tplframework_megamenu` (
  `megamenu_id` int(11) NOT NULL,
  `style_id` int(11) DEFAULT NULL,
  `language_code` varchar(250) DEFAULT NULL,
  `menu_type` varchar(250) DEFAULT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `params` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `j78lr_jsn_uniform_config`
--

CREATE TABLE `j78lr_jsn_uniform_config` (
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `j78lr_jsn_uniform_config`
--

INSERT INTO `j78lr_jsn_uniform_config` (`name`, `value`) VALUES
('form_style', ''),
('last_ask_for_review', '1478228706'),
('live_update_checking', '0'),
('live_update_last_check', '1443599666'),
('live_update_last_notified', '{"name":"JSN UniForm","identified_name":"ext_uniform","description":" JSN UniForm PRO allows you to create form","version":"3.1.4","thumbnail":"http:\\/\\/www.joomlashine.com\\/images\\/content\\/joomla-extensions\\/jsn-uniform\\/introduction\\/jsn-uniform-banner.jpg","url":"http:\\/\\/www.joomlashine.com\\/joomla-extensions\\/jsn-uniform-details.html","tags":"2.5;3.0;3.1;3.2;3.3;3.4","editions":[{"edition":"PRO UNLIMITED","authentication":true,"related_product":[]},{"edition":"PRO STANDARD","authentication":true,"related_product":[]},{"edition":"FREE","authentication":false,"related_product":[]}]}'),
('live_update_notification', '0');

-- --------------------------------------------------------

--
-- Table structure for table `j78lr_jsn_uniform_data`
--

CREATE TABLE `j78lr_jsn_uniform_data` (
  `data_id` int(10) UNSIGNED NOT NULL,
  `form_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `data_ip` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `data_country` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `data_country_code` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `data_browser` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `data_browser_version` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `data_browser_agent` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `data_os` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `data_created_by` int(10) UNSIGNED NOT NULL COMMENT '0 = Guest',
  `data_created_at` datetime NOT NULL,
  `data_state` tinyint(1) UNSIGNED NOT NULL COMMENT '-1 = Trashed; 0 = Unpublish; 1 = Published'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `j78lr_jsn_uniform_data`
--

INSERT INTO `j78lr_jsn_uniform_data` (`data_id`, `form_id`, `user_id`, `data_ip`, `data_country`, `data_country_code`, `data_browser`, `data_browser_version`, `data_browser_agent`, `data_os`, `data_created_by`, `data_created_at`, `data_state`) VALUES
(1, 3, 0, '118.70.131.15', '(Unknown Country?)', 'XX', 'Chrome', '28.0.1500.95', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.95 Safari/537.36', 'Windows', 0, '2013-08-24 14:36:03', 1),
(2, 3, 0, '118.70.131.15', '(Unknown Country?)', 'XX', 'Firefox', '23.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:23.0) Gecko/20100101 Firefox/23.0 AlexaToolbar/alxf-2.18', 'Windows', 0, '2013-08-24 17:09:43', 1),
(3, 3, 0, '118.70.131.15', '(Unknown Country?)', 'XX', 'Firefox', '23.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:23.0) Gecko/20100101 Firefox/23.0 AlexaToolbar/alxf-2.18', 'Windows', 0, '2013-08-26 10:15:15', 1),
(4, 2, 0, '118.70.131.15', '(Unknown Country?)', 'XX', 'Firefox', '23.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:23.0) Gecko/20100101 Firefox/23.0 AlexaToolbar/alxf-2.18', 'Windows', 0, '2013-08-26 17:51:47', 1),
(5, 4, 0, '118.70.131.15', '(Unknown Country?)', 'XX', 'Chrome', '30.0.1599.69', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/30.0.1599.69 Safari/537.36', 'Apple', 0, '2013-10-12 15:27:43', 1);

-- --------------------------------------------------------

--
-- Table structure for table `j78lr_jsn_uniform_emails`
--

CREATE TABLE `j78lr_jsn_uniform_emails` (
  `email_id` int(11) NOT NULL,
  `form_id` int(11) NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `email_name` varchar(70) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_state` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `j78lr_jsn_uniform_emails`
--

INSERT INTO `j78lr_jsn_uniform_emails` (`email_id`, `form_id`, `user_id`, `email_name`, `email_address`, `email_state`) VALUES
(7, 1, 0, '', 'example.admin@joomlashine.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `j78lr_jsn_uniform_fields`
--

CREATE TABLE `j78lr_jsn_uniform_fields` (
  `field_id` int(11) NOT NULL,
  `form_id` int(11) NOT NULL,
  `field_type` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `field_identifier` varchar(255) CHARACTER SET utf8 NOT NULL,
  `field_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_instructions` text COLLATE utf8_unicode_ci,
  `field_position` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `field_ordering` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `field_settings` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `j78lr_jsn_uniform_fields`
--

INSERT INTO `j78lr_jsn_uniform_fields` (`field_id`, `form_id`, `field_type`, `field_identifier`, `field_title`, `field_instructions`, `field_position`, `field_ordering`, `field_settings`) VALUES
(3, 1, 'choices', 'who_are_you_tell_more_about_yourself', 'Who are you? Tell more about yourself', '', 'left', 0, '{"id":3,"identify":"who_are_you_tell_more_about_yourself","options":{"label":"Who are you? Tell more about yourself","instruction":"","required":"1","randomize":0,"labelOthers":"Others","layout":"jsn-columns-count-one","items":[{"text":"Individual building website for himself ","checked":false},{"text":"Freelancer building websites for clients ","checked":false},{"text":"Web Agency ","checked":false}],"value":"","identify":"who_are_you_tell_more_about_yourself","allowOther":"1"},"type":"choices","position":"left"}'),
(4, 1, 'choices', 'your_joomla_experience_', 'Your Joomla experience: ', '', 'left', 1, '{"id":4,"identify":"your_joomla_experience_","options":{"label":"Your Joomla experience: ","instruction":"","required":"1","randomize":0,"labelOthers":"Others","layout":"jsn-columns-count-one","items":[{"text":"Less than 1 year ","checked":false},{"text":"1-3 years ","checked":false},{"text":"More than 3 years ","checked":false}],"value":"","identify":"your_joomla_experience_"},"type":"choices","position":"left"}'),
(5, 1, 'choices', 'which_forum_extension_do_you_like_to_see_joomlashine_template_compatible_with_', 'Which forum extension do you like to see JoomlaShine template compatible with?', '', 'left', 2, '{"id":5,"identify":"which_forum_extension_do_you_like_to_see_joomlashine_template_compatible_with_","options":{"label":"Which forum extension do you like to see JoomlaShine template compatible with?","instruction":"","required":"1","randomize":0,"labelOthers":"Others","layout":"jsn-columns-count-one","items":[{"text":"Kunena ","checked":false},{"text":"Dicussions ","checked":false},{"text":"Ninjaboard ","checked":false}],"value":"","identify":"which_forum_extension_do_you_like_to_see_joomlashine_template_compatible_with_","allowOther":"1"},"type":"choices","position":"left"}'),
(6, 1, 'choices', 'about_sample_data_which_way_do_you_prefer_', 'About sample data, which way do you prefer?', '', 'left', 3, '{"id":6,"identify":"about_sample_data_which_way_do_you_prefer_","options":{"label":"About sample data, which way do you prefer?","instruction":"","required":"1","randomize":0,"labelOthers":"Others","layout":"jsn-columns-count-one","items":[{"text":"Sample data installation on your current website ","checked":false},{"text":"Whole Joomla! site installation package with sample data ","checked":false}],"value":"","identify":"about_sample_data_which_way_do_you_prefer_"},"type":"choices","position":"left"}'),
(7, 1, 'paragraph-text', 'what_makes_you_love_joomlashine_template_', 'What makes you love JoomlaShine template?', '', 'left', 4, '{"id":7,"identify":"what_makes_you_love_joomlashine_template_","options":{"label":"What makes you love JoomlaShine template?","instruction":"","required":"1","limitation":0,"limitMin":0,"limitMax":0,"rows":"4","size":"jsn-input-xlarge-fluid","limitType":"Words","value":"","identify":"what_makes_you_love_joomlashine_template_"},"type":"paragraph-text","position":"left"}'),
(8, 1, 'paragraph-text', 'which_are_the_things_you_don_t_like_in_joomlashine_template_', 'Which are the things you don\'t like in JoomlaShine template?', '', 'left', 5, '{"id":8,"identify":"which_are_the_things_you_don_t_like_in_joomlashine_template_","options":{"label":"Which are the things you don\'t like in JoomlaShine template?","instruction":"","required":"1","limitation":0,"limitMin":0,"limitMax":0,"rows":"4","size":"jsn-input-xlarge-fluid","limitType":"Words","value":"","identify":"which_are_the_things_you_don_t_like_in_joomlashine_template_"},"type":"paragraph-text","position":"left"}'),
(9, 1, 'choices', 'which_features_do_you_like_to_see_joomlashine_template_have_', 'Which features do you like to see JoomlaShine template have?', '', 'left', 6, '{"id":9,"identify":"which_features_do_you_like_to_see_joomlashine_template_have_","options":{"label":"Which features do you like to see JoomlaShine template have?","instruction":"","required":"1","randomize":0,"labelOthers":"Others","layout":"jsn-columns-count-one","items":[{"text":"Control Panel to customize style ","checked":false},{"text":"Mega menu ","checked":false},{"text":"More icons to use ","checked":false}],"value":"","identify":"which_features_do_you_like_to_see_joomlashine_template_have_","allowOther":"1"},"type":"choices","position":"left"}'),
(10, 1, 'paragraph-text', 'what_design_style_you_want_to_see_in_the_further_joomlashine_templates_give_us_the_url_to_the_design_', 'What design style you want to see in the further JoomlaShine templates, give us the URL to the design? ', '', 'left', 7, '{"id":10,"identify":"what_design_style_you_want_to_see_in_the_further_joomlashine_templates_give_us_the_url_to_the_design_","options":{"label":"What design style you want to see in the further JoomlaShine templates, give us the URL to the design? ","instruction":"","required":0,"limitation":0,"limitMin":0,"limitMax":0,"rows":"3","size":"jsn-input-xlarge-fluid","limitType":"Words","value":"","identify":"what_design_style_you_want_to_see_in_the_further_joomlashine_templates_give_us_the_url_to_the_design_"},"type":"paragraph-text","position":"left"}'),
(11, 1, 'date', 'date_time', 'Date/Time', '', 'left', 8, '{"id":11,"identify":"date_time","options":{"label":"Date\\/Time","instruction":"","required":0,"enableRageSelection":"1","size":"jsn-input-small-fluid","timeFormat":0,"dateFormat":"1","yearRangeMin":"1930","yearRangeMax":"2013","dateValue":"","dateValueRange":"","dateOptionFormat":"mm\\/dd\\/yy","customFormatDate":"","timeOptionFormat":"hh:mm tt","identify":"date_time"},"type":"date","position":"left"}'),
(15, 2, 'email', 'email', 'Email', '', 'left', 1, '{"id":15,"identify":"email","options":{"label":"Email","instruction":"","required":"1","noDuplicates":0,"size":"jsn-input-xlarge-fluid","value":"Your email","valueConfirm":"","identify":"email"},"type":"email","position":"left"}'),
(27, 2, 'single-line-text', 'name', 'Name', '', 'left', 0, '{"id":27,"identify":"name","options":{"label":"Name","instruction":"","required":"1","limitation":0,"limitMin":0,"limitMax":0,"limitType":"Words","size":"jsn-input-xlarge-fluid","value":"Your Name","identify":"name"},"type":"single-line-text","position":"left"}'),
(28, 2, 'single-line-text', 'subject', 'Subject', '', 'left', 2, '{"id":28,"identify":"subject","options":{"label":"Subject","instruction":"","required":0,"limitation":0,"limitMin":0,"limitMax":0,"limitType":"Words","size":"jsn-input-xlarge-fluid","value":"Subject","identify":"subject"},"type":"single-line-text","position":"left"}'),
(29, 2, 'paragraph-text', 'massage', 'Massage', '', 'left', 3, '{"id":29,"identify":"massage","options":{"label":"Massage","instruction":"","required":"1","limitation":0,"limitMin":0,"limitMax":0,"rows":"8","size":"jsn-input-xlarge-fluid","limitType":"Words","value":"Your message","identify":"massage"},"type":"paragraph-text","position":"left"}');

-- --------------------------------------------------------

--
-- Table structure for table `j78lr_jsn_uniform_form_pages`
--

CREATE TABLE `j78lr_jsn_uniform_form_pages` (
  `page_id` int(11) NOT NULL,
  `page_title` varchar(255) NOT NULL,
  `form_id` int(11) NOT NULL,
  `page_content` text NOT NULL,
  `page_template` text NOT NULL,
  `page_container` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `j78lr_jsn_uniform_form_pages`
--

INSERT INTO `j78lr_jsn_uniform_form_pages` (`page_id`, `page_title`, `form_id`, `page_content`, `page_template`, `page_container`) VALUES
(1, 'Page 1', 1, '[{"id":3,"type":"choices","position":"left","identify":"who_are_you_tell_more_about_yourself","label":"Who are you? Tell more about yourself","instruction":"","options":{"label":"Who are you? Tell more about yourself","instruction":"","required":"1","randomize":0,"labelOthers":"Others","layout":"jsn-columns-count-one","items":[{"text":"Individual building website for himself ","checked":false},{"text":"Freelancer building websites for clients ","checked":false},{"text":"Web Agency ","checked":false}],"value":"","identify":"who_are_you_tell_more_about_yourself","allowOther":"1"}},{"id":4,"type":"choices","position":"left","identify":"your_joomla_experience_","label":"Your Joomla experience: ","instruction":"","options":{"label":"Your Joomla experience: ","instruction":"","required":"1","randomize":0,"labelOthers":"Others","layout":"jsn-columns-count-one","items":[{"text":"Less than 1 year ","checked":false},{"text":"1-3 years ","checked":false},{"text":"More than 3 years ","checked":false}],"value":"","identify":"your_joomla_experience_"}},{"id":5,"type":"choices","position":"left","identify":"which_forum_extension_do_you_like_to_see_joomlashine_template_compatible_with_","label":"Which forum extension do you like to see JoomlaShine template compatible with?","instruction":"","options":{"label":"Which forum extension do you like to see JoomlaShine template compatible with?","instruction":"","required":"1","randomize":0,"labelOthers":"Others","layout":"jsn-columns-count-one","items":[{"text":"Kunena ","checked":false},{"text":"Dicussions ","checked":false},{"text":"Ninjaboard ","checked":false}],"value":"","identify":"which_forum_extension_do_you_like_to_see_joomlashine_template_compatible_with_","allowOther":"1"}},{"id":6,"type":"choices","position":"left","identify":"about_sample_data_which_way_do_you_prefer_","label":"About sample data, which way do you prefer?","instruction":"","options":{"label":"About sample data, which way do you prefer?","instruction":"","required":"1","randomize":0,"labelOthers":"Others","layout":"jsn-columns-count-one","items":[{"text":"Sample data installation on your current website ","checked":false},{"text":"Whole Joomla! site installation package with sample data ","checked":false}],"value":"","identify":"about_sample_data_which_way_do_you_prefer_"}},{"id":7,"type":"paragraph-text","position":"left","identify":"what_makes_you_love_joomlashine_template_","label":"What makes you love JoomlaShine template?","instruction":"","options":{"label":"What makes you love JoomlaShine template?","instruction":"","required":"1","limitation":0,"limitMin":0,"limitMax":0,"rows":"4","size":"jsn-input-xlarge-fluid","limitType":"Words","value":"","identify":"what_makes_you_love_joomlashine_template_"}},{"id":8,"type":"paragraph-text","position":"left","identify":"which_are_the_things_you_don_t_like_in_joomlashine_template_","label":"Which are the things you don\'t like in JoomlaShine template?","instruction":"","options":{"label":"Which are the things you don\'t like in JoomlaShine template?","instruction":"","required":"1","limitation":0,"limitMin":0,"limitMax":0,"rows":"4","size":"jsn-input-xlarge-fluid","limitType":"Words","value":"","identify":"which_are_the_things_you_don_t_like_in_joomlashine_template_"}},{"id":9,"type":"choices","position":"left","identify":"which_features_do_you_like_to_see_joomlashine_template_have_","label":"Which features do you like to see JoomlaShine template have?","instruction":"","options":{"label":"Which features do you like to see JoomlaShine template have?","instruction":"","required":"1","randomize":0,"labelOthers":"Others","layout":"jsn-columns-count-one","items":[{"text":"Control Panel to customize style ","checked":false},{"text":"Mega menu ","checked":false},{"text":"More icons to use ","checked":false}],"value":"","identify":"which_features_do_you_like_to_see_joomlashine_template_have_","allowOther":"1"}},{"id":10,"type":"paragraph-text","position":"left","identify":"what_design_style_you_want_to_see_in_the_further_joomlashine_templates_give_us_the_url_to_the_design_","label":"What design style you want to see in the further JoomlaShine templates, give us the URL to the design? ","instruction":"","options":{"label":"What design style you want to see in the further JoomlaShine templates, give us the URL to the design? ","instruction":"","required":0,"limitation":0,"limitMin":0,"limitMax":0,"rows":"3","size":"jsn-input-xlarge-fluid","limitType":"Words","value":"","identify":"what_design_style_you_want_to_see_in_the_further_joomlashine_templates_give_us_the_url_to_the_design_"}},{"id":11,"type":"date","position":"left","identify":"date_time","label":"Date\\/Time","instruction":"","options":{"label":"Date\\/Time","instruction":"","required":0,"enableRageSelection":"1","size":"jsn-input-small-fluid","timeFormat":0,"dateFormat":"1","yearRangeMin":"1930","yearRangeMax":"2013","dateValue":"","dateValueRange":"","dateOptionFormat":"mm\\/dd\\/yy","customFormatDate":"","timeOptionFormat":"hh:mm tt","identify":"date_time"}}]', '{"dataFormLayout":"default","dataField":[{"field_type":"choices","field_id":"sb_3","field_title":"Who are you? Tell more about yourself","field_instructions":"","field_position":"left","field_settings":"{\\"id\\":3,\\"identify\\":\\"who_are_you_tell_more_about_yourself\\",\\"options\\":{\\"label\\":\\"Who are you? Tell more about yourself\\",\\"instruction\\":\\"\\",\\"required\\":\\"1\\",\\"randomize\\":0,\\"labelOthers\\":\\"Others\\",\\"layout\\":\\"jsn-columns-count-one\\",\\"items\\":[{\\"text\\":\\"Individual building website for himself \\",\\"checked\\":false},{\\"text\\":\\"Freelancer building websites for clients \\",\\"checked\\":false},{\\"text\\":\\"Web Agency \\",\\"checked\\":false}],\\"value\\":\\"\\",\\"identify\\":\\"who_are_you_tell_more_about_yourself\\",\\"allowOther\\":\\"1\\"},\\"type\\":\\"choices\\",\\"position\\":\\"left\\"}"},{"field_type":"choices","field_id":"sb_4","field_title":"Your Joomla experience: ","field_instructions":"","field_position":"left","field_settings":"{\\"id\\":4,\\"identify\\":\\"your_joomla_experience_\\",\\"options\\":{\\"label\\":\\"Your Joomla experience: \\",\\"instruction\\":\\"\\",\\"required\\":\\"1\\",\\"randomize\\":0,\\"labelOthers\\":\\"Others\\",\\"layout\\":\\"jsn-columns-count-one\\",\\"items\\":[{\\"text\\":\\"Less than 1 year \\",\\"checked\\":false},{\\"text\\":\\"1-3 years \\",\\"checked\\":false},{\\"text\\":\\"More than 3 years \\",\\"checked\\":false}],\\"value\\":\\"\\",\\"identify\\":\\"your_joomla_experience_\\"},\\"type\\":\\"choices\\",\\"position\\":\\"left\\"}"},{"field_type":"choices","field_id":"sb_5","field_title":"Which forum extension do you like to see JoomlaShine template compatible with?","field_instructions":"","field_position":"left","field_settings":"{\\"id\\":5,\\"identify\\":\\"which_forum_extension_do_you_like_to_see_joomlashine_template_compatible_with_\\",\\"options\\":{\\"label\\":\\"Which forum extension do you like to see JoomlaShine template compatible with?\\",\\"instruction\\":\\"\\",\\"required\\":\\"1\\",\\"randomize\\":0,\\"labelOthers\\":\\"Others\\",\\"layout\\":\\"jsn-columns-count-one\\",\\"items\\":[{\\"text\\":\\"Kunena \\",\\"checked\\":false},{\\"text\\":\\"Dicussions \\",\\"checked\\":false},{\\"text\\":\\"Ninjaboard \\",\\"checked\\":false}],\\"value\\":\\"\\",\\"identify\\":\\"which_forum_extension_do_you_like_to_see_joomlashine_template_compatible_with_\\",\\"allowOther\\":\\"1\\"},\\"type\\":\\"choices\\",\\"position\\":\\"left\\"}"},{"field_type":"choices","field_id":"sb_6","field_title":"About sample data, which way do you prefer?","field_instructions":"","field_position":"left","field_settings":"{\\"id\\":6,\\"identify\\":\\"about_sample_data_which_way_do_you_prefer_\\",\\"options\\":{\\"label\\":\\"About sample data, which way do you prefer?\\",\\"instruction\\":\\"\\",\\"required\\":\\"1\\",\\"randomize\\":0,\\"labelOthers\\":\\"Others\\",\\"layout\\":\\"jsn-columns-count-one\\",\\"items\\":[{\\"text\\":\\"Sample data installation on your current website \\",\\"checked\\":false},{\\"text\\":\\"Whole Joomla! site installation package with sample data \\",\\"checked\\":false}],\\"value\\":\\"\\",\\"identify\\":\\"about_sample_data_which_way_do_you_prefer_\\"},\\"type\\":\\"choices\\",\\"position\\":\\"left\\"}"},{"field_type":"paragraph-text","field_id":"sb_7","field_title":"What makes you love JoomlaShine template?","field_instructions":"","field_position":"left","field_settings":"{\\"id\\":7,\\"identify\\":\\"what_makes_you_love_joomlashine_template_\\",\\"options\\":{\\"label\\":\\"What makes you love JoomlaShine template?\\",\\"instruction\\":\\"\\",\\"required\\":\\"1\\",\\"limitation\\":0,\\"limitMin\\":0,\\"limitMax\\":0,\\"rows\\":\\"4\\",\\"size\\":\\"jsn-input-xlarge-fluid\\",\\"limitType\\":\\"Words\\",\\"value\\":\\"\\",\\"identify\\":\\"what_makes_you_love_joomlashine_template_\\"},\\"type\\":\\"paragraph-text\\",\\"position\\":\\"left\\"}"},{"field_type":"paragraph-text","field_id":"sb_8","field_title":"Which are the things you don\'t like in JoomlaShine template?","field_instructions":"","field_position":"left","field_settings":"{\\"id\\":8,\\"identify\\":\\"which_are_the_things_you_don_t_like_in_joomlashine_template_\\",\\"options\\":{\\"label\\":\\"Which are the things you don\'t like in JoomlaShine template?\\",\\"instruction\\":\\"\\",\\"required\\":\\"1\\",\\"limitation\\":0,\\"limitMin\\":0,\\"limitMax\\":0,\\"rows\\":\\"4\\",\\"size\\":\\"jsn-input-xlarge-fluid\\",\\"limitType\\":\\"Words\\",\\"value\\":\\"\\",\\"identify\\":\\"which_are_the_things_you_don_t_like_in_joomlashine_template_\\"},\\"type\\":\\"paragraph-text\\",\\"position\\":\\"left\\"}"},{"field_type":"choices","field_id":"sb_9","field_title":"Which features do you like to see JoomlaShine template have?","field_instructions":"","field_position":"left","field_settings":"{\\"id\\":9,\\"identify\\":\\"which_features_do_you_like_to_see_joomlashine_template_have_\\",\\"options\\":{\\"label\\":\\"Which features do you like to see JoomlaShine template have?\\",\\"instruction\\":\\"\\",\\"required\\":\\"1\\",\\"randomize\\":0,\\"labelOthers\\":\\"Others\\",\\"layout\\":\\"jsn-columns-count-one\\",\\"items\\":[{\\"text\\":\\"Control Panel to customize style \\",\\"checked\\":false},{\\"text\\":\\"Mega menu \\",\\"checked\\":false},{\\"text\\":\\"More icons to use \\",\\"checked\\":false}],\\"value\\":\\"\\",\\"identify\\":\\"which_features_do_you_like_to_see_joomlashine_template_have_\\",\\"allowOther\\":\\"1\\"},\\"type\\":\\"choices\\",\\"position\\":\\"left\\"}"},{"field_type":"paragraph-text","field_id":"sb_10","field_title":"What design style you want to see in the further JoomlaShine templates, give us the URL to the design? ","field_instructions":"","field_position":"left","field_settings":"{\\"id\\":10,\\"identify\\":\\"what_design_style_you_want_to_see_in_the_further_joomlashine_templates_give_us_the_url_to_the_design_\\",\\"options\\":{\\"label\\":\\"What design style you want to see in the further JoomlaShine templates, give us the URL to the design? \\",\\"instruction\\":\\"\\",\\"required\\":0,\\"limitation\\":0,\\"limitMin\\":0,\\"limitMax\\":0,\\"rows\\":\\"3\\",\\"size\\":\\"jsn-input-xlarge-fluid\\",\\"limitType\\":\\"Words\\",\\"value\\":\\"\\",\\"identify\\":\\"what_design_style_you_want_to_see_in_the_further_joomlashine_templates_give_us_the_url_to_the_design_\\"},\\"type\\":\\"paragraph-text\\",\\"position\\":\\"left\\"}"},{"field_type":"date","field_id":"sb_11","field_title":"Date\\/Time","field_instructions":"","field_position":"left","field_settings":"{\\"id\\":11,\\"identify\\":\\"date_time\\",\\"options\\":{\\"label\\":\\"Date\\\\\\/Time\\",\\"instruction\\":\\"\\",\\"required\\":0,\\"enableRageSelection\\":\\"1\\",\\"size\\":\\"jsn-input-small-fluid\\",\\"timeFormat\\":0,\\"dateFormat\\":\\"1\\",\\"yearRangeMin\\":\\"1930\\",\\"yearRangeMax\\":\\"2013\\",\\"dateValue\\":\\"\\",\\"dateValueRange\\":\\"\\",\\"dateOptionFormat\\":\\"mm\\\\\\/dd\\\\\\/yy\\",\\"customFormatDate\\":\\"\\",\\"timeOptionFormat\\":\\"hh:mm tt\\",\\"identify\\":\\"date_time\\"},\\"type\\":\\"date\\",\\"position\\":\\"left\\"}"}]}', ''),
(4, 'Page 1', 2, '[{"id":27,"type":"single-line-text","position":"left","identify":"name","label":"Name","instruction":"","options":{"label":"Name","instruction":"","required":"1","limitation":0,"limitMin":0,"limitMax":0,"limitType":"Words","size":"jsn-input-xlarge-fluid","value":"Your Name","identify":"name"}},{"id":15,"type":"email","position":"left","identify":"email","label":"Email","instruction":"","options":{"label":"Email","instruction":"","required":"1","noDuplicates":0,"size":"jsn-input-xlarge-fluid","value":"Your email","valueConfirm":"","identify":"email"}},{"id":28,"type":"single-line-text","position":"left","identify":"subject","label":"Subject","instruction":"","options":{"label":"Subject","instruction":"","required":0,"limitation":0,"limitMin":0,"limitMax":0,"limitType":"Words","size":"jsn-input-xlarge-fluid","value":"Subject","identify":"subject"}},{"id":29,"type":"paragraph-text","position":"left","identify":"massage","label":"Massage","instruction":"","options":{"label":"Massage","instruction":"","required":"1","limitation":0,"limitMin":0,"limitMax":0,"rows":"8","size":"jsn-input-xlarge-fluid","limitType":"Words","value":"Your message","identify":"massage"}}]', '{"dataField":[{"field_type":"single-line-text","field_id":"sb_27","field_title":"Name","field_instructions":"","field_position":"left","field_settings":"{\\"id\\":27,\\"identify\\":\\"name\\",\\"options\\":{\\"label\\":\\"Name\\",\\"instruction\\":\\"\\",\\"required\\":\\"1\\",\\"limitation\\":0,\\"limitMin\\":0,\\"limitMax\\":0,\\"limitType\\":\\"Words\\",\\"size\\":\\"jsn-input-xlarge-fluid\\",\\"value\\":\\"Your Name\\",\\"identify\\":\\"name\\"},\\"type\\":\\"single-line-text\\",\\"position\\":\\"left\\"}"},{"field_type":"email","field_id":"sb_15","field_title":"Email","field_instructions":"","field_position":"left","field_settings":"{\\"id\\":15,\\"identify\\":\\"email\\",\\"options\\":{\\"label\\":\\"Email\\",\\"instruction\\":\\"\\",\\"required\\":\\"1\\",\\"noDuplicates\\":0,\\"size\\":\\"jsn-input-xlarge-fluid\\",\\"value\\":\\"Your email\\",\\"valueConfirm\\":\\"\\",\\"identify\\":\\"email\\"},\\"type\\":\\"email\\",\\"position\\":\\"left\\"}"},{"field_type":"single-line-text","field_id":"sb_28","field_title":"Subject","field_instructions":"","field_position":"left","field_settings":"{\\"id\\":28,\\"identify\\":\\"subject\\",\\"options\\":{\\"label\\":\\"Subject\\",\\"instruction\\":\\"\\",\\"required\\":0,\\"limitation\\":0,\\"limitMin\\":0,\\"limitMax\\":0,\\"limitType\\":\\"Words\\",\\"size\\":\\"jsn-input-xlarge-fluid\\",\\"value\\":\\"Subject\\",\\"identify\\":\\"subject\\"},\\"type\\":\\"single-line-text\\",\\"position\\":\\"left\\"}"},{"field_type":"paragraph-text","field_id":"sb_29","field_title":"Massage","field_instructions":"","field_position":"left","field_settings":"{\\"id\\":29,\\"identify\\":\\"massage\\",\\"options\\":{\\"label\\":\\"Massage\\",\\"instruction\\":\\"\\",\\"required\\":\\"1\\",\\"limitation\\":0,\\"limitMin\\":0,\\"limitMax\\":0,\\"rows\\":\\"8\\",\\"size\\":\\"jsn-input-xlarge-fluid\\",\\"limitType\\":\\"Words\\",\\"value\\":\\"Your message\\",\\"identify\\":\\"massage\\"},\\"type\\":\\"paragraph-text\\",\\"position\\":\\"left\\"}"}],"dataFormLayout":"default"}', '[[{"columnName":"left","columnClass":"span12"}]]');

-- --------------------------------------------------------

--
-- Table structure for table `j78lr_jsn_uniform_forms`
--

CREATE TABLE `j78lr_jsn_uniform_forms` (
  `form_id` int(11) NOT NULL,
  `form_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `form_description` text COLLATE utf8_unicode_ci,
  `form_layout` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `form_theme` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `form_style` text CHARACTER SET utf8 NOT NULL,
  `form_notify_submitter` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `form_post_action` tinyint(1) UNSIGNED NOT NULL COMMENT '1 = Redirect to URL; 2 = Redirect to Menu Item; 3 = Show Article; 4 = Show custom message',
  `form_post_action_data` text COLLATE utf8_unicode_ci NOT NULL,
  `form_captcha` tinyint(1) UNSIGNED NOT NULL,
  `form_state` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `form_access` int(11) NOT NULL,
  `form_created_by` int(10) UNSIGNED NOT NULL,
  `form_created_at` datetime DEFAULT NULL,
  `form_modified_by` int(10) UNSIGNED DEFAULT '0',
  `form_modified_at` datetime DEFAULT NULL,
  `form_checked_out` int(10) UNSIGNED DEFAULT '0',
  `form_checked_out_time` datetime DEFAULT NULL,
  `form_submission_cout` int(11) NOT NULL,
  `form_last_submitted` datetime NOT NULL,
  `form_submitter` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `form_type` int(11) NOT NULL,
  `form_settings` longtext COLLATE utf8_unicode_ci NOT NULL,
  `form_edit_submission` int(11) NOT NULL,
  `form_payment_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `form_view_submission` int(11) NOT NULL DEFAULT '0',
  `form_view_submission_access` int(11) NOT NULL DEFAULT '0',
  `form_meta_keywords` text COLLATE utf8_unicode_ci NOT NULL,
  `form_meta_desc` text COLLATE utf8_unicode_ci NOT NULL,
  `form_meta_title` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `form_script_display` text COLLATE utf8_unicode_ci NOT NULL,
  `form_script_on_process` text COLLATE utf8_unicode_ci NOT NULL,
  `form_script_on_processed` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `j78lr_jsn_uniform_forms`
--

INSERT INTO `j78lr_jsn_uniform_forms` (`form_id`, `form_title`, `form_description`, `form_layout`, `form_theme`, `form_style`, `form_notify_submitter`, `form_post_action`, `form_post_action_data`, `form_captcha`, `form_state`, `form_access`, `form_created_by`, `form_created_at`, `form_modified_by`, `form_modified_at`, `form_checked_out`, `form_checked_out_time`, `form_submission_cout`, `form_last_submitted`, `form_submitter`, `form_type`, `form_settings`, `form_edit_submission`, `form_payment_type`, `form_view_submission`, `form_view_submission_access`, `form_meta_keywords`, `form_meta_desc`, `form_meta_title`, `form_script_display`, `form_script_on_process`, `form_script_on_processed`) VALUES
(2, 'Contact Form', 'Form used in home page for demo purpose', 'default', '', '{"layout":"Vertical","theme":"jsn-style-light","themes_style":{"light":"{\\"background_color\\":\\"\\",\\"background_active_color\\":\\"#FCF8E3\\",\\"border_thickness\\":\\"0\\",\\"border_color\\":\\"\\",\\"border_active_color\\":\\"#FBEED5\\",\\"rounded_corner_radius\\":\\"0\\",\\"padding_space\\":\\"10\\",\\"margin_space\\":\\"0\\",\\"text_color\\":\\"#333333\\",\\"font_type\\":\\" Verdana, Geneva, sans-serif\\",\\"font_size\\":\\"14\\",\\"field_background_color\\":\\"#ffffff\\",\\"field_border_color\\":\\"\\",\\"field_shadow_color\\":\\"\\",\\"field_text_color\\":\\"#666666\\",\\"message_error_background_color\\":\\"#B94A48\\",\\"message_error_text_color\\":\\"#FFFFFF\\",\\"button_position\\":\\"btn-toolbar pull-left\\",\\"button_submit_color\\":\\"btn btn-success\\"}","dark":"{\\"background_color\\":\\"\\",\\"background_active_color\\":\\"#444444\\",\\"border_thickness\\":\\"0\\",\\"border_color\\":\\"\\",\\"border_active_color\\":\\"#666666\\",\\"rounded_corner_radius\\":\\"0\\",\\"padding_space\\":\\"10\\",\\"margin_space\\":\\"0\\",\\"text_color\\":\\"#C6C6C6\\",\\"font_type\\":\\" Verdana, Geneva, sans-serif\\",\\"font_size\\":\\"14\\",\\"field_background_color\\":\\"#000000\\",\\"field_border_color\\":\\"#111111\\",\\"field_shadow_color\\":\\"#000000\\",\\"field_text_color\\":\\"#333333\\",\\"message_error_background_color\\":\\"#B94A48\\",\\"message_error_text_color\\":\\"#FFFFFF\\"}"},"themes":["light","dark"],"background_color":"","background_active_color":"#FCF8E3","border_thickness":"0","border_color":"","border_active_color":"#FBEED5","rounded_corner_radius":"0","padding_space":"10","margin_space":"0","text_color":"#333333","font_type":" Verdana, Geneva, sans-serif","font_size":"14","field_background_color":"#ffffff","field_border_color":"","field_shadow_color":"","field_text_color":"#666666","message_error_background_color":"#B94A48","message_error_text_color":"#FFFFFF","button_position":"btn-toolbar pull-left","button_submit_color":"btn btn-success"}', 0, 4, 'Thank you!\r\nAn email has been sent to your email. Please check it.', 0, 1, 0, 42, '2013-08-26 16:54:41', 42, '2013-10-11 11:32:04', 0, NULL, 1, '2013-08-26 17:51:47', '["email"]', 1, '{"form_btn_next_text":null,"form_btn_prev_text":null,"form_btn_submit_text":null}', 0, '', 0, 0, '', '', 0, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `j78lr_jsn_uniform_messages`
--

CREATE TABLE `j78lr_jsn_uniform_messages` (
  `msg_id` int(11) NOT NULL,
  `msg_screen` varchar(150) DEFAULT '',
  `published` tinyint(1) DEFAULT '1',
  `ordering` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `j78lr_jsn_uniform_submission_data`
--

CREATE TABLE `j78lr_jsn_uniform_submission_data` (
  `submission_data_id` int(11) NOT NULL,
  `submission_id` int(11) NOT NULL,
  `form_id` int(11) NOT NULL,
  `field_id` int(11) NOT NULL,
  `field_type` varchar(45) NOT NULL,
  `submission_data_value` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `j78lr_jsn_uniform_submissions`
--

CREATE TABLE `j78lr_jsn_uniform_submissions` (
  `submission_id` int(10) UNSIGNED NOT NULL,
  `form_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `submission_form_location` text NOT NULL,
  `submission_ip` varchar(40) NOT NULL,
  `submission_country` varchar(45) NOT NULL,
  `submission_country_code` varchar(4) NOT NULL,
  `submission_browser` varchar(45) NOT NULL,
  `submission_browser_version` varchar(20) NOT NULL,
  `submission_browser_agent` varchar(255) NOT NULL,
  `submission_os` varchar(45) NOT NULL,
  `submission_created_by` int(10) UNSIGNED NOT NULL COMMENT '0 = Guest',
  `submission_created_at` datetime NOT NULL,
  `submission_state` tinyint(1) UNSIGNED NOT NULL COMMENT '-1 = Trashed; 0 = Unpublish; 1 = Published'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `j78lr_jsn_uniform_submissions_1`
--

CREATE TABLE `j78lr_jsn_uniform_submissions_1` (
  `data_id` int(11) DEFAULT NULL,
  `sb_3` varchar(255) DEFAULT NULL,
  `sb_4` varchar(255) DEFAULT NULL,
  `sb_5` varchar(255) DEFAULT NULL,
  `sb_6` varchar(255) DEFAULT NULL,
  `sb_7` text,
  `sb_8` text,
  `sb_9` varchar(255) DEFAULT NULL,
  `sb_10` text,
  `sb_11` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `j78lr_jsn_uniform_submissions_1`
--

INSERT INTO `j78lr_jsn_uniform_submissions_1` (`data_id`, `sb_3`, `sb_4`, `sb_5`, `sb_6`, `sb_7`, `sb_8`, `sb_9`, `sb_10`, `sb_11`) VALUES
(4, 'Web Agency ', '1-3 years ', 'Dicussions ', 'Sample data installation on your current website ', 'yes i love it', 'okay i love it', 'Mega menu ', '', '08/14/2013 - 08/06/2013'),
(8, 'Freelancer building websites for clients ', 'Less than 1 year ', 'Ninjaboard ', 'Whole Joomla! site installation package with sample data ', 'i love it', 'i love it too', 'Mega menu ', '', '\'\'');

-- --------------------------------------------------------

--
-- Table structure for table `j78lr_jsn_uniform_submissions_2`
--

CREATE TABLE `j78lr_jsn_uniform_submissions_2` (
  `data_id` int(11) DEFAULT NULL,
  `sb_15` varchar(255) DEFAULT NULL,
  `sb_27` varchar(255) DEFAULT NULL,
  `sb_28` varchar(255) DEFAULT NULL,
  `sb_29` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `j78lr_jsn_uniform_submissions_2`
--

INSERT INTO `j78lr_jsn_uniform_submissions_2` (`data_id`, `sb_15`, `sb_27`, `sb_28`, `sb_29`) VALUES
(4, 'tamnl@bravebits.vn', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `j78lr_jsn_uniform_submissions_3`
--

CREATE TABLE `j78lr_jsn_uniform_submissions_3` (
  `data_id` int(11) DEFAULT NULL,
  `sb_15` varchar(255) DEFAULT NULL,
  `sb_16` varchar(255) DEFAULT NULL,
  `sb_17` varchar(255) DEFAULT NULL,
  `sb_18` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `j78lr_jsn_uniform_submissions_3`
--

INSERT INTO `j78lr_jsn_uniform_submissions_3` (`data_id`, `sb_15`, `sb_16`, `sb_17`, `sb_18`) VALUES
(1, NULL, NULL, NULL, NULL),
(2, NULL, NULL, NULL, NULL),
(3, NULL, NULL, NULL, NULL),
(5, NULL, NULL, NULL, NULL),
(6, NULL, NULL, NULL, NULL),
(7, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `j78lr_jsn_uniform_submissions_4`
--

CREATE TABLE `j78lr_jsn_uniform_submissions_4` (
  `data_id` int(11) DEFAULT NULL,
  `sb_18` varchar(255) DEFAULT NULL,
  `sb_19` varchar(255) DEFAULT NULL,
  `sb_20` varchar(255) DEFAULT NULL,
  `sb_21` varchar(255) DEFAULT NULL,
  `sb_22` longtext,
  `sb_23` longtext,
  `sb_24` varchar(255) DEFAULT NULL,
  `sb_25` longtext,
  `sb_26` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `j78lr_jsn_uniform_submissions_4`
--

INSERT INTO `j78lr_jsn_uniform_submissions_4` (`data_id`, `sb_18`, `sb_19`, `sb_20`, `sb_21`, `sb_22`, `sb_23`, `sb_24`, `sb_25`, `sb_26`) VALUES
(5, 'Freelancer building websites for clients ', 'Less than 1 year ', 'Ninjaboard ', 'Whole Joomla! site installation package with sample data ', 'I love Joomla templates', 'I love Joomla templates', 'Mega menu ', '', '\'\'');

-- --------------------------------------------------------

--
-- Table structure for table `j78lr_jsn_uniform_templates`
--

CREATE TABLE `j78lr_jsn_uniform_templates` (
  `template_id` int(11) NOT NULL,
  `form_id` int(11) NOT NULL,
  `template_notify_to` tinyint(1) NOT NULL COMMENT '0 = Send to submitter; 1 = Send to added emails',
  `template_from` varchar(75) COLLATE utf8_unicode_ci NOT NULL,
  `template_reply_to` varchar(75) COLLATE utf8_unicode_ci NOT NULL,
  `template_subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `template_message` longtext COLLATE utf8_unicode_ci NOT NULL,
  `template_attach` text COLLATE utf8_unicode_ci NOT NULL,
  `template_from_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `j78lr_jsn_uniform_templates`
--

INSERT INTO `j78lr_jsn_uniform_templates` (`template_id`, `form_id`, `template_notify_to`, `template_from`, `template_reply_to`, `template_subject`, `template_message`, `template_attach`, `template_from_name`) VALUES
(1, 1, 1, '', '', 'New answer for JoomlaShine survey - From Demo site', '', '', ''),
(2, 1, 0, '', '', '', '', '', ''),
(3, 2, 1, '', '', '', '', '', ''),
(4, 2, 0, 'JSN Venture Demo at JoomlaShine.com', '', '', '<p>Hi,</p>\r\n\r\n<p>You receive this email because you\'ve input your email in <strong>Get Newsletter</strong> module at <a href="http://demo.joomlashine.com/joomla-templates/jsn_venture/index.php">JSN Venture Demo</a>. </p>\r\n\r\n<p>This subscription form is created by <a href="http://demo.joomlashine.com/joomla-templates/jsn_venture/index.php?option=com_content&view=article&id=106&Itemid=774">JSN UniForm</a>, another cool extension from <a href="http://www.joomlashine.com">JoomlaShine</a>. JSN UniForm Free Edition is also included in JSN Venture package and you can will find out it is the easiest-to-use form extension. </p>\r\n\r\n<p>Thank you for concerning JoomlaShineâ€™s products. Hope you feel satisfy with our <a href="http://www.joomlashine.com/joomla-templates.html">Joomla templates</a> and <a href="http://www.joomlashine.com/joomla-extensions.html">Joomla extensions</a>.</p>\r\n\r\n<p>Feel free to contact if you have questions. Keep in touch with us at:</p>\r\n<ul><li>Facebook: <a href="http://www.facebook.com/joomlashine">http://www.facebook.com/joomlashine</a></li>\r\n<li>Twitter: <a href="http://www.twitter.com/joomlashine">http://www.twitter.com/joomlashine</a></li></ul></p>\r\n\r\n<p>Best regards,</p>\r\n<p>JoomlaShine team</p>', '', ''),
(7, 2, 1, '', '', '', '', '', ''),
(8, 2, 0, '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `j78lr_languages`
--

CREATE TABLE `j78lr_languages` (
  `lang_id` int(11) UNSIGNED NOT NULL,
  `asset_id` int(11) NOT NULL,
  `lang_code` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_native` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sef` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL,
  `metakey` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `sitename` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `j78lr_languages`
--

INSERT INTO `j78lr_languages` (`lang_id`, `asset_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `access`, `ordering`) VALUES
(1, 0, 'en-GB', 'English (UK)', 'English (UK)', 'en', 'en', '', '', '', '', 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `j78lr_menu`
--

CREATE TABLE `j78lr_menu` (
  `id` int(11) NOT NULL,
  `menutype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) UNSIGNED DEFAULT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `params` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `j78lr_menu`
--

INSERT INTO `j78lr_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 0, 179, 0, '*', 0),
(435, 'mainmenu', 'Home', 'home', '', 'home', 'index.php?option=com_content&view=featured', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"featured_categories":[""],"layout_type":"blog","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"1","orderby_pri":"none","orderby_sec":"","order_date":"","show_pagination":"1","show_pagination_results":"1","show_title":"0","link_titles":"1","show_intro":"1","info_block_position":"","info_block_show_title":"","show_category":"0","link_category":"","show_parent_category":"0","link_parent_category":"","show_author":"0","link_author":"0","show_create_date":"use_article","show_modify_date":"","show_publish_date":"","show_item_navigation":"1","show_vote":"0","show_readmore":"","show_readmore_title":"1","show_icons":"1","show_print_icon":"0","show_email_icon":"0","show_hits":"","show_tags":"","show_noauth":"0","show_feed_link":"","feed_summary":"","menu-anchor_title":"Start here","menu-anchor_css":"jsn-icon-home","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"0","page_heading":"","pageclass_sfx":"jsn-demo-page","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"saveTypes":"","show_subcategory_content":"","option":"","view":"","layout":"","task":""}', 1, 2, 1, '*', 0),
(466, 'mainmenu', 'Clube', 'layout', '', 'layout', 'index.php?option=com_content&view=article&id=114', 'component', 1, 1, 1, 22, 32, '2016-11-05 13:51:17', 0, 1, ' ', 21, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"36 positions","menu-anchor_css":"jsn-icon-image","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"0","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 3, 12, 0, '*', 0),
(468, 'mainmenu', 'Eventos', 'menu-styles', '', 'menu-styles', 'index.php?option=com_content&view=article&id=118', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"0","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 177, 178, 0, '*', 0),
(472, 'mainmenu', 'Historial', 'left-center-right', '', 'layout/left-center-right', 'index.php?option=com_content&view=article&id=90', 'component', 1, 466, 2, 22, 32, '2016-11-04 19:30:57', 0, 1, ' ', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"0","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 4, 5, 0, '*', 0),
(473, 'mainmenu', 'Orgãos Sociais 2016 - 2017', 'left-innerleft-center', '', 'layout/left-innerleft-center', 'index.php?option=com_content&view=article&id=91', 'component', 1, 466, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"0","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 6, 7, 0, '*', 0),
(474, 'mainmenu', ' Estatutos', 'left-center-innerright', '', 'layout/left-center-innerright', 'index.php?option=com_content&view=article&id=89', 'component', 1, 466, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"0","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 8, 9, 0, '*', 0),
(475, 'mainmenu', 'Proposta de Sócio', 'proposta-de-socio', '', 'contactos/proposta-de-socio', 'index.php?option=com_content&view=article&id=87', 'component', 1, 2177, 2, 22, 32, '2016-11-05 21:27:36', 0, 1, ' ', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"0","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 170, 171, 0, '*', 0),
(476, 'mainmenu', 'Parceiros', 'innerleft-center-right', '', 'layout/innerleft-center-right', 'index.php?option=com_content&view=article&id=88', 'component', 1, 466, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"0","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 10, 11, 0, '*', 0),
(497, 'topmenu', 'Product Tour', 'product-tour', '', 'product-tour', 'index.php?option=com_content&view=article&id=101', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"jsn-icon-display","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 23, 24, 0, '*', 0),
(498, 'topmenu', 'Get it Now', 'buy-now', '', 'buy-now', 'http://www.joomlashine.com/joomla-templates/jsn-venture-download.html', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 25, 26, 0, '*', 0),
(499, 'footermenu', 'JoomlaShine', 'joomlashine', '', 'joomlashine', 'http://www.joomlashine.com', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 27, 28, 0, '*', 0),
(500, 'footermenu', 'Joomla Templates', 'joomla-templates', '', 'joomla-templates', 'http://www.joomlashine.com/joomla-templates.html', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 29, 30, 0, '*', 0),
(501, 'footermenu', 'Joomla Extensions', 'joomla-extensions', '', 'joomla-extensions', 'http://www.joomlashine.com/joomla-extensions.html', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 31, 32, 0, '*', 0),
(502, 'mustsee', 'Layout', '2011-11-25-09-21-19', '', '2011-11-25-09-21-19', 'index.php?Itemid=', 'alias', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"466","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 37, 38, 0, '*', 0),
(503, 'mustsee', 'Easy to start', '2011-11-25-09-29-27', '', '2011-11-25-09-29-27', 'index.php?Itemid=', 'alias', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"542","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 33, 34, 0, '*', 0),
(504, 'mustsee', 'Menu Styles', '2011-11-25-09-22-12', '', '2011-11-25-09-22-12', 'index.php?Itemid=', 'alias', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"468","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 39, 40, 0, '*', 0),
(505, 'mustsee', 'Painless Configuration', '2011-11-25-09-29-40', '', '2011-11-25-09-29-40', 'index.php?Itemid=', 'alias', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"543","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 35, 36, 0, '*', 0),
(506, 'mustsee', 'Module Styles', '2011-11-25-09-24-30', '', '2011-11-25-09-24-30', 'index.php?Itemid=', 'alias', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"470","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 41, 42, 0, '*', 0),
(507, 'mustsee', 'RTL Support', '2011-11-25-09-25-33', '', '2011-11-25-09-25-33', 'index.php?Itemid=', 'alias', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"542","menu-anchor_title":"","menu-anchor_css":"custom-direction-rtl","menu_image":"","menu_text":1}', 43, 44, 0, '*', 0),
(542, 'advanced-stuff', 'Easy to Start', 'easy-to-start', '', 'easy-to-start', 'index.php?option=com_content&view=article&id=77', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 45, 46, 0, '*', 0),
(543, 'advanced-stuff', 'Painless Configuration', 'painless-configuration', '', 'painless-configuration', 'index.php?option=com_content&view=article&id=84', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 47, 48, 0, '*', 0),
(544, 'advanced-stuff', 'RTL Support', 'rtl-support', '', 'rtl-support', 'index.php?option=com_content&view=article&id=85', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"custom-direction-rtl","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 49, 50, 0, '*', 0),
(545, 'advanced-stuff', 'Image Gallery', 'image-gallery', '', 'image-gallery', 'index.php?option=com_content&view=article&id=79', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 51, 52, 0, '*', 0),
(546, 'advanced-stuff', 'Docs / Support', 'docs-support', '', 'docs-support', 'index.php?option=com_content&view=article&id=76', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 53, 54, 0, '*', 0),
(547, 'advanced-stuff', 'Multilingual Support', 'multilingual-support', '', 'multilingual-support', 'index.php?option=com_content&view=article&id=83', 'component', 0, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 55, 56, 0, '*', 0),
(706, 'mainmenu', 'Modalidades', 'free-extensions', '', 'free-extensions', 'index.php?option=com_content&view=article&id=123', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_title":"0","link_titles":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"0","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 13, 22, 0, '*', 0),
(867, 'advanced-stuff', 'See PRO Edition', '2013-11-07-04-36-45', '', '2013-11-07-04-36-45', 'http://demo.joomlashine.com/joomla-templates/jsn-venture.html', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 1, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 57, 58, 0, '*', 0),
(868, 'topmenu', 'See PRO Edition', '2013-11-07-04-37-17', '', '2013-11-07-04-37-17', 'http://demo.joomlashine.com/joomla-templates/jsn-venture.html', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 1, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 59, 60, 0, '*', 0),
(2128, 'menu', 'com_banners', 'banners', '', 'banners', 'index.php?option=com_banners', 'component', 0, 1, 1, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 61, 70, 0, '*', 1),
(2129, 'menu', 'com_banners', 'banners', '', 'banners/banners', 'index.php?option=com_banners', 'component', 0, 2128, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 62, 63, 0, '*', 1),
(2130, 'menu', 'com_banners_categories', 'categories', '', 'banners/categories', 'index.php?option=com_categories&extension=com_banners', 'component', 0, 2128, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-cat', 0, '', 64, 65, 0, '*', 1),
(2131, 'menu', 'com_banners_clients', 'clients', '', 'banners/clients', 'index.php?option=com_banners&view=clients', 'component', 0, 2128, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-clients', 0, '', 66, 67, 0, '*', 1),
(2132, 'menu', 'com_banners_tracks', 'tracks', '', 'banners/tracks', 'index.php?option=com_banners&view=tracks', 'component', 0, 2128, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-tracks', 0, '', 68, 69, 0, '*', 1),
(2133, 'menu', 'com_contact', 'contacts', '', 'contacts', 'index.php?option=com_contact', 'component', 0, 1, 1, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 71, 76, 0, '*', 1),
(2134, 'menu', 'com_contact_contacts', 'contacts', '', 'contacts/contacts', 'index.php?option=com_contact', 'component', 0, 2133, 2, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 72, 73, 0, '*', 1),
(2135, 'menu', 'com_contact_categories', 'categories', '', 'contacts/categories', 'index.php?option=com_categories&extension=com_contact', 'component', 0, 2133, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact-cat', 0, '', 74, 75, 0, '*', 1),
(2136, 'menu', 'com_messages', 'messaging', '', 'messaging', 'index.php?option=com_messages', 'component', 0, 1, 1, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages', 0, '', 77, 80, 0, '*', 1),
(2137, 'menu', 'com_messages_add', 'new-private-message', '', 'messaging/new-private-message', 'index.php?option=com_messages&task=message.add', 'component', 0, 2136, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-add', 0, '', 78, 79, 0, '*', 1),
(2138, 'menu', 'com_newsfeeds', 'news-feeds', '', 'news-feeds', 'index.php?option=com_newsfeeds', 'component', 0, 1, 1, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 81, 86, 0, '*', 1),
(2139, 'menu', 'com_newsfeeds_feeds', 'feeds', '', 'news-feeds/feeds', 'index.php?option=com_newsfeeds', 'component', 0, 2138, 2, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 82, 83, 0, '*', 1),
(2140, 'menu', 'com_newsfeeds_categories', 'categories', '', 'news-feeds/categories', 'index.php?option=com_categories&extension=com_newsfeeds', 'component', 0, 2138, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds-cat', 0, '', 84, 85, 0, '*', 1),
(2141, 'menu', 'com_redirect', 'redirect', '', 'redirect', 'index.php?option=com_redirect', 'component', 0, 1, 1, 24, 0, '0000-00-00 00:00:00', 0, 0, 'class:redirect', 0, '', 87, 88, 0, '*', 1),
(2142, 'menu', 'com_search', 'basic-search', '', 'basic-search', 'index.php?option=com_search', 'component', 0, 1, 1, 19, 0, '0000-00-00 00:00:00', 0, 0, 'class:search', 0, '', 89, 90, 0, '*', 1),
(2143, 'menu', 'com_finder', 'smart-search', '', 'smart-search', 'index.php?option=com_finder', 'component', 0, 1, 1, 27, 0, '0000-00-00 00:00:00', 0, 0, 'class:finder', 0, '', 91, 92, 0, '*', 1),
(2144, 'menu', 'com_joomlaupdate', 'joomla-update', '', 'joomla-update', 'index.php?option=com_joomlaupdate', 'component', 1, 1, 1, 28, 0, '0000-00-00 00:00:00', 0, 0, 'class:joomlaupdate', 0, '', 93, 94, 0, '*', 1),
(2145, 'main', 'com_tags', 'tags', '', 'tags', 'index.php?option=com_tags', 'component', 0, 1, 1, 29, 0, '0000-00-00 00:00:00', 0, 1, 'class:tags', 0, '', 95, 96, 0, '', 1),
(2146, 'main', 'com_postinstall', 'post-installation-messages', '', 'post-installation-messages', 'index.php?option=com_postinstall', 'component', 0, 1, 1, 32, 0, '0000-00-00 00:00:00', 0, 1, 'class:postinstall', 0, '', 97, 98, 0, '*', 1),
(2147, 'main', 'COM_IMAGESHOW', 'com-imageshow', '', 'com-imageshow', 'index.php?option=com_imageshow', 'component', 0, 1, 1, 10018, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_imageshow/assets/images/icons-16/icon-picture.png', 0, '{}', 99, 110, 0, '', 1),
(2148, 'main', 'LAUNCH_PAD', 'launch-pad', '', 'com-imageshow/launch-pad', 'index.php?option=com_imageshow', 'component', 0, 2147, 2, 10018, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_imageshow/assets/images/icons-16/icon-off.png', 0, '{}', 100, 101, 0, '', 1),
(2149, 'main', 'SHOWLISTS', 'showlists', '', 'com-imageshow/showlists', 'index.php?option=com_imageshow&controller=showlist', 'component', 0, 2147, 2, 10018, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_imageshow/assets/images/icons-16/icon-file.png', 0, '{}', 102, 103, 0, '', 1),
(2150, 'main', 'SHOWCASES', 'showcases', '', 'com-imageshow/showcases', 'index.php?option=com_imageshow&controller=showcase', 'component', 0, 2147, 2, 10018, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_imageshow/assets/images/icons-16/icon-monitor.png', 0, '{}', 104, 105, 0, '', 1),
(2151, 'main', 'CONFIGURATION_AND_MAINTENANCE', 'configuration-and-maintenance', '', 'com-imageshow/configuration-and-maintenance', 'index.php?option=com_imageshow&controller=maintenance&type=configs', 'component', 0, 2147, 2, 10018, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_imageshow/assets/images/icons-16/icon-cog.png', 0, '{}', 106, 107, 0, '', 1),
(2152, 'main', 'ABOUT', 'about', '', 'com-imageshow/about', 'index.php?option=com_imageshow&controller=about', 'component', 0, 2147, 2, 10018, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_imageshow/assets/images/icons-16/icon-star.png', 0, '{}', 108, 109, 0, '', 1),
(2153, 'main', 'JSN_POWERADMIN_MENU_TEXT', 'jsn-poweradmin-menu-text', '', 'jsn-poweradmin-menu-text', 'index.php?option=com_poweradmin', 'component', 0, 1, 1, 10031, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_poweradmin/assets/images/icons-16/icon-wrench.png', 0, '{}', 111, 120, 0, '', 1),
(2154, 'main', 'JSN_POWERADMIN_MENU_RAWMODE_TEXT', 'jsn-poweradmin-menu-rawmode-text', '', 'jsn-poweradmin-menu-text/jsn-poweradmin-menu-rawmode-text', 'index.php?option=com_poweradmin&view=rawmode', 'component', 0, 2153, 2, 10031, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_poweradmin/assets/images/icons-16/icon-monitor.png', 0, '{}', 112, 113, 0, '', 1),
(2155, 'main', 'JSN_POWERADMIN_MENU_SITESEARCH_TEXT', 'jsn-poweradmin-menu-sitesearch-text', '', 'jsn-poweradmin-menu-text/jsn-poweradmin-menu-sitesearch-text', 'index.php?option=com_poweradmin&task=search.query', 'component', 0, 2153, 2, 10031, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_poweradmin/assets/images/icons-16/icon-search.png', 0, '{}', 114, 115, 0, '', 1),
(2156, 'main', 'JSN_POWERADMIN_MENU_CONFIGURATION_TEXT', 'jsn-poweradmin-menu-configuration-text', '', 'jsn-poweradmin-menu-text/jsn-poweradmin-menu-configuration-text', 'index.php?option=com_poweradmin&view=configuration', 'component', 0, 2153, 2, 10031, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_poweradmin/assets/images/icons-16/icon-cog.png', 0, '{}', 116, 117, 0, '', 1),
(2157, 'main', 'JSN_POWERADMIN_MENU_ABOUT_TEXT', 'jsn-poweradmin-menu-about-text', '', 'jsn-poweradmin-menu-text/jsn-poweradmin-menu-about-text', 'index.php?option=com_poweradmin&view=about', 'component', 0, 2153, 2, 10031, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_poweradmin/assets/images/icons-16/icon-star.png', 0, '{}', 118, 119, 0, '', 1),
(2158, 'main', 'JSN_UNIFORM_MENU_TEXT', 'jsn-uniform-menu-text', '', 'jsn-uniform-menu-text', 'index.php?option=com_uniform', 'component', 0, 1, 1, 10039, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_uniform/assets/images/icons-16/icon-uniform.png', 0, '{}', 121, 132, 0, '', 1),
(2159, 'main', 'JSN_UNIFORM_MENU_FORMS_TEXT', 'jsn-uniform-menu-forms-text', '', 'jsn-uniform-menu-text/jsn-uniform-menu-forms-text', 'index.php?option=com_uniform&view=forms', 'component', 0, 2158, 2, 10039, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_uniform/assets/images/icons-16/icon-forms.png', 0, '{}', 122, 123, 0, '', 1),
(2160, 'main', 'JSN_UNIFORM_MENU_SUBMISSIONS_TEXT', 'jsn-uniform-menu-submissions-text', '', 'jsn-uniform-menu-text/jsn-uniform-menu-submissions-text', 'index.php?option=com_uniform&view=submissions', 'component', 0, 2158, 2, 10039, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_uniform/assets/images/icons-16/icon-submissions.png', 0, '{}', 124, 125, 0, '', 1),
(2161, 'main', 'JSN_UNIFORM_MENU_INTEGRATION_TEXT', 'jsn-uniform-menu-integration-text', '', 'jsn-uniform-menu-text/jsn-uniform-menu-integration-text', 'index.php?option=com_uniform&view=integration', 'component', 0, 2158, 2, 10039, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_uniform/assets/images/icons-16/icon-integration.png', 0, '{}', 126, 127, 0, '', 1),
(2162, 'main', 'JSN_UNIFORM_MENU_CONFIGURATION_TEXT', 'jsn-uniform-menu-configuration-text', '', 'jsn-uniform-menu-text/jsn-uniform-menu-configuration-text', 'index.php?option=com_uniform&view=configuration', 'component', 0, 2158, 2, 10039, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_uniform/assets/images/icons-16/icon-cog.png', 0, '{}', 128, 129, 0, '', 1),
(2163, 'main', 'JSN_UNIFORM_MENU_ABOUT_TEXT', 'jsn-uniform-menu-about-text', '', 'jsn-uniform-menu-text/jsn-uniform-menu-about-text', 'index.php?option=com_uniform&view=about', 'component', 0, 2158, 2, 10039, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_uniform/assets/images/icons-16/icon-about.png', 0, '{}', 130, 131, 0, '', 1),
(2164, 'main', 'JSN_MOBILIZE_MENU_TEXT', 'jsn-mobilize-menu-text', '', 'jsn-mobilize-menu-text', 'index.php?option=com_mobilize', 'component', 0, 1, 1, 10044, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_mobilize/assets/images/icon-mobilize.png', 0, '{}', 133, 140, 0, '', 1),
(2165, 'main', 'JSN_MOBILIZE_SUB_MENU_MOBILIZATION_TEXT', 'jsn-mobilize-sub-menu-mobilization-text', '', 'jsn-mobilize-menu-text/jsn-mobilize-sub-menu-mobilization-text', 'index.php?option=com_mobilize&view=profiles', 'component', 0, 2164, 2, 10044, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_mobilize/assets/images/icons-16/icon-mobilize.png', 0, '{}', 134, 135, 0, '', 1),
(2166, 'main', 'JSN_MOBILIZE_SUB_MENU_CONFIGURARTION_TEXT', 'jsn-mobilize-sub-menu-configurartion-text', '', 'jsn-mobilize-menu-text/jsn-mobilize-sub-menu-configurartion-text', 'index.php?option=com_mobilize&view=configuration', 'component', 0, 2164, 2, 10044, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_mobilize/assets/images/icons-16/icon-cog.png', 0, '{}', 136, 137, 0, '', 1),
(2167, 'main', 'JSN_MOBILIZE_SUB_MENU_ABOUT_TEXT', 'jsn-mobilize-sub-menu-about-text', '', 'jsn-mobilize-menu-text/jsn-mobilize-sub-menu-about-text', 'index.php?option=com_mobilize&view=about', 'component', 0, 2164, 2, 10044, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_mobilize/assets/images/icons-16/icon-about.png', 0, '{}', 138, 139, 0, '', 1),
(2168, 'main', 'COM_PAGEBUILDER', 'com-pagebuilder', '', 'com-pagebuilder', 'index.php?option=com_pagebuilder', 'component', 0, 1, 1, 10047, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 141, 148, 0, '', 1),
(2169, 'main', 'COM_PAGEBUILDER_PAGE_MANAGER', 'com-pagebuilder-page-manager', '', 'com-pagebuilder/com-pagebuilder-page-manager', 'index.php?option=com_pagebuilder&view=manager', 'component', 0, 2168, 2, 10047, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_pagebuilder/assets/images/icons-16/icon-monitor.png', 0, '{}', 142, 143, 0, '', 1),
(2170, 'main', 'COM_PAGEBUILDER_CONFIGURATION', 'com-pagebuilder-configuration', '', 'com-pagebuilder/com-pagebuilder-configuration', 'index.php?option=com_pagebuilder&view=configuration', 'component', 0, 2168, 2, 10047, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_pagebuilder/assets/images/icons-16/icon-cog.png', 0, '{}', 144, 145, 0, '', 1),
(2171, 'main', 'COM_PAGEBUILDER_ABOUT', 'com-pagebuilder-about', '', 'com-pagebuilder/com-pagebuilder-about', 'index.php?option=com_pagebuilder&view=about', 'component', 0, 2168, 2, 10047, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_poweradmin/assets/images/icons-16/icon-star.png', 0, '{}', 146, 147, 0, '', 1),
(2172, 'main', 'JSN_EASYSLIDER_MENU_TEXT', 'jsn-easyslider-menu-text', '', 'jsn-easyslider-menu-text', 'index.php?option=com_easyslider', 'component', 0, 1, 1, 10054, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_easyslider/assets/images/icon-easyslider.png', 0, '{}', 149, 156, 0, '', 1),
(2173, 'main', 'JSN_EASYSLIDER_MENU_SLIDERS_TEXT', 'jsn-easyslider-menu-sliders-text', '', 'jsn-easyslider-menu-text/jsn-easyslider-menu-sliders-text', 'index.php?option=com_easyslider&view=sliders', 'component', 0, 2172, 2, 10054, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_easyslider/assets/images/icons-16/icon-items.png', 0, '{}', 150, 151, 0, '', 1),
(2174, 'main', 'JSN_EASYSLIDER_MENU_CONFIGURARTION_TEXT', 'jsn-easyslider-menu-configurartion-text', '', 'jsn-easyslider-menu-text/jsn-easyslider-menu-configurartion-text', 'index.php?option=com_easyslider&view=configuration', 'component', 0, 2172, 2, 10054, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_easyslider/assets/images/icons-16/icon-configuration.png', 0, '{}', 152, 153, 0, '', 1),
(2175, 'main', 'JSN_EASYSLIDER_MENU_ABOUT_TEXT', 'jsn-easyslider-menu-about-text', '', 'jsn-easyslider-menu-text/jsn-easyslider-menu-about-text', 'index.php?option=com_easyslider&view=about', 'component', 0, 2172, 2, 10054, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_easyslider/assets/images/icons-16/icon-about.png', 0, '{}', 154, 155, 0, '', 1),
(2177, 'mainmenu', 'Suporte', 'contactos', '', 'contactos', 'index.php?option=com_content&view=article&id=116', 'component', 1, 1, 1, 22, 32, '2016-11-05 21:55:38', 0, 1, ' ', 0, '{"show_title":"0","link_titles":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"0","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 165, 176, 0, '*', 0),
(2178, 'mainmenu', 'Aréa de Sócio', 'area-de-socio', '', 'area-de-socio', 'index.php?option=com_users&view=login', 'component', 1, 1, 1, 25, 0, '0000-00-00 00:00:00', 0, 1, ' ', 21, '{"loginredirectchoice":"1","login_redirect_url":"","login_redirect_menuitem":"","logindescription_show":"1","login_description":"","login_image":"","logoutredirectchoice":"1","logout_redirect_url":"","logout_redirect_menuitem":"","logoutdescription_show":"1","logout_description":"","logout_image":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"Login","show_page_heading":"1","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 157, 164, 0, '*', 0),
(2180, 'mainmenu', 'Login', 'login', '', 'area-de-socio/login', 'index.php?option=com_users&view=login', 'component', 1, 2178, 2, 25, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"loginredirectchoice":"1","login_redirect_url":"","login_redirect_menuitem":"","logindescription_show":"1","login_description":"","login_image":"","logoutredirectchoice":"1","logout_redirect_url":"","logout_redirect_menuitem":"","logoutdescription_show":"1","logout_description":"","logout_image":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"1","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 158, 159, 0, '*', 0),
(2181, 'mainmenu', 'Logout', 'logout', '', 'area-de-socio/logout', 'index.php?option=com_users&view=login&layout=logout&task=user.menulogout', 'component', -2, 2178, 2, 25, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"logout":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 162, 163, 0, '*', 0),
(2185, 'mainmenu', 'Tiro', 'tiro', '', 'free-extensions/tiro', 'index.php?option=com_content&view=article&id=119', 'component', 1, 706, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"0","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 14, 15, 0, '*', 0),
(2186, 'mainmenu', 'Atletismo', 'atletismo', '', 'free-extensions/atletismo', 'index.php?option=com_content&view=article&id=120', 'component', 1, 706, 2, 22, 32, '2016-11-05 19:18:04', 0, 1, ' ', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"0","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 16, 17, 0, '*', 0),
(2187, 'mainmenu', 'Xadrez', 'xadrez', '', 'free-extensions/xadrez', 'index.php?option=com_content&view=article&id=121', 'component', 1, 706, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"0","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 18, 19, 0, '*', 0),
(2189, 'mainmenu', 'Karaté JUTSU', 'karate-jutsu', '', 'free-extensions/karate-jutsu', 'index.php?option=com_content&view=article&id=122', 'component', 1, 706, 2, 22, 32, '2016-11-05 16:24:16', 0, 1, ' ', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"0","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 20, 21, 0, '*', 0),
(2190, 'mainmenu', 'Contactos', 'contactos', '', 'contactos/contactos', 'index.php?option=com_content&view=article&id=124', 'component', 1, 2177, 2, 22, 32, '2016-11-05 21:30:51', 0, 1, ' ', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"0","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 166, 167, 0, '*', 0),
(2191, 'mainmenu', 'Morada', 'morada', '', 'contactos/morada', 'index.php?option=com_content&view=article&id=125', 'component', 1, 2177, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"0","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 168, 169, 0, '*', 0),
(2192, 'mainmenu', 'Pedido de Informações', 'pedido-de-informacoes', '', 'contactos/pedido-de-informacoes', 'index.php?option=com_uniform&view=form&form_id=2&show_form_title=1&show_form_description=1', 'component', 1, 2177, 2, 10039, 32, '2016-11-05 21:58:24', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 172, 173, 0, '*', 0),
(2196, 'mainmenu', 'Registo', 'registo', '', 'area-de-socio/registo', 'index.php?option=com_users&view=registration', 'component', 1, 2178, 2, 25, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 160, 161, 0, '*', 0),
(2197, 'mainmenu', 'Serviços de Sócio', 'servicos-de-socio', '', 'contactos/servicos-de-socio', 'index.php?option=com_content&view=article&id=126', 'component', 1, 2177, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"0","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 174, 175, 0, '*', 0);

-- --------------------------------------------------------

--
-- Table structure for table `j78lr_menu_types`
--

CREATE TABLE `j78lr_menu_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(11) NOT NULL,
  `menutype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `j78lr_menu_types`
--

INSERT INTO `j78lr_menu_types` (`id`, `asset_id`, `menutype`, `title`, `description`) VALUES
(6, 0, 'mainmenu', 'Main Menu', 'Simple Home Menu'),
(8, 0, 'topmenu', 'Top Menu', ''),
(9, 0, 'footermenu', 'Footer Menu', ''),
(10, 0, 'mustsee', 'Must-see Stuff', ''),
(11, 0, 'advanced-stuff', 'Advanced Stuff', '');

-- --------------------------------------------------------

--
-- Table structure for table `j78lr_messages`
--

CREATE TABLE `j78lr_messages` (
  `message_id` int(10) UNSIGNED NOT NULL,
  `user_id_from` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_id_to` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `j78lr_messages_cfg`
--

CREATE TABLE `j78lr_messages_cfg` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cfg_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `j78lr_modules`
--

CREATE TABLE `j78lr_modules` (
  `id` int(11) NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `j78lr_modules`
--

INSERT INTO `j78lr_modules` (`id`, `asset_id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(2, 40, 'Login', '', '', 1, 'login', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '', 1, '*'),
(3, 41, 'Popular Articles', '', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_popular', 3, 1, '{"count":"5","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(4, 42, 'Recently Added Articles', '', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_latest', 3, 1, '{"count":"5","ordering":"c_dsc","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(8, 43, 'Toolbar', '', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_toolbar', 3, 1, '', 1, '*'),
(9, 44, 'Quick Icons', '', '', 1, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_quickicon', 3, 1, '', 1, '*'),
(10, 45, 'Logged-in Users', '', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_logged', 3, 1, '{"count":"5","name":"1","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(12, 46, 'Admin Menu', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 3, 1, '{"layout":"","moduleclass_sfx":"","shownew":"1","showhelp":"1","cache":"0"}', 1, '*'),
(13, 47, 'Admin Submenu', '', '', 1, 'submenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_submenu', 3, 1, '', 1, '*'),
(14, 48, 'User Status', '', '', 2, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_status', 3, 1, '', 1, '*'),
(15, 49, 'Title', '', '', 1, 'title', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_title', 3, 1, '', 1, '*'),
(17, 0, 'Breadcrumbs', '', '', 1, 'position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_breadcrumbs', 1, 1, '{"moduleclass_sfx":"","showHome":"1","homeText":"Home","showComponent":"1","separator":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(25, 285, 'Site Map', '', '', 1, 'sitemapload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 0, '{"menutype":"mainmenu","base":"","startLevel":"2","endLevel":"3","showAllChildren":"1","tag_id":"","class_sfx":"sitemap","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"0","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(26, 0, 'This Site', '', '', 5, 'position-7', 32, '2016-11-04 18:03:38', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"mainmenu","startLevel":"1","endLevel":"1","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"","moduleclass_sfx":"_menu","cache":"0","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(27, 0, 'Archived Articles', '', '', 1, 'archiveload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_articles_archive', 1, 1, '{"count":"10","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(28, 0, 'Latest News', '', '', 1, 'articleslatestload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_articles_latest', 1, 1, '{"catid":["19"],"count":"5","ordering":"c_dsc","user_id":"0","show_featured":"","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(29, 0, 'Articles Most Read', '', '', 1, 'articlespopularload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_articles_popular', 1, 1, '{"show_front":"1","count":"5","catid":["26","29"],"layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(30, 0, 'Feed Display', '', '', 1, 'feeddisplayload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_feed', 1, 1, '{"rssurl":"http:\\/\\/community.joomla.org\\/blogs\\/community.feed?type=rss","rssrtl":"0","rsstitle":"1","rssdesc":"1","rssimage":"1","rssitems":"3","rssitemdesc":"1","word_count":"0","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900"}', 0, '*'),
(31, 0, 'News Flash: Latest', '', '', 1, 'newsflashload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_articles_news', 1, 1, '{"catid":["20"],"image":"0","item_title":"0","link_titles":"","item_heading":"h4","showLastSeparator":"1","readmore":"1","count":"1","ordering":"a.publish_up","layout":"horizontal","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(32, 0, 'News Flash: Random', '', '', 1, 'newsflashload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_articles_news', 1, 1, '{"catid":["19"],"image":"0","item_title":"0","link_titles":"","item_heading":"h4","showLastSeparator":"1","readmore":"0","count":"1","ordering":"rand()","layout":"vertical","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(33, 0, 'Random Image', '', '', 1, 'randomimageload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_random_image', 1, 1, '{"type":"jpg","folder":"images\\/sampledata\\/parks\\/animals","link":"","width":"180","height":"","layout":"","moduleclass_sfx":"","cache":"0"}', 0, '*'),
(34, 0, 'Articles Related Items', '', '', 1, 'relateditemsload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_related_items', 1, 1, '{"showDate":"0","layout":"","moduleclass_sfx":"","owncache":"1"}', 0, '*'),
(35, 0, 'Search', '', '', 1, 'searchload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_search', 1, 1, '{"width":"20","text":"","button":"","button_pos":"right","imagebutton":"","button_text":"","set_itemid":"","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(36, 0, 'Statistics', '', '', 1, 'statisticsload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_stats', 1, 1, '{"serverinfo":"1","siteinfo":"1","counter":"1","increase":"0","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(37, 0, 'Syndication', '', '', 1, 'syndicate', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_syndicate', 1, 0, '{"text":"Feed Entries","format":"rss","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 0, '*'),
(38, 0, 'Users Latest', '', '', 1, 'userslatestload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_users_latest', 1, 1, '{"shownumber":"5","filter_groups":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","cache_time":"900","cachemode":"static"}', 0, '*'),
(40, 0, 'Wrapper', '', '', 1, 'wrapperload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_wrapper', 1, 1, '{"url":"http:\\/\\/fsf.org","add":"1","scrolling":"auto","width":"100%","height":"200","height_auto":"1","target":"","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(41, 0, 'Footer', '', '', 1, 'footerload', 0, '0000-00-00 00:00:00', '2016-11-05 21:35:06', '0000-00-00 00:00:00', -2, 'mod_footer', 1, 1, '{"layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(44, 0, 'Login', '', '', 12, 'loginload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '{"pretext":"","posttext":"","login":"","logout":"","greeting":"1","name":"0","usesecure":"0","layout":"_:default","moduleclass_sfx":"lightbox-2","cache":"0"}', 0, '*'),
(45, 277, 'Menu', '', '', 1, 'menuload', 32, '2016-11-04 16:31:45', '2016-11-05 21:35:10', '0000-00-00 00:00:00', -2, 'mod_menu', 1, 0, '{"menutype":"mainmenu","base":"","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"0","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(47, 0, 'Latest Park Blogs', '', '', 6, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_articles_latest', 1, 1, '{"count":"5","ordering":"c_dsc","user_id":"0","show_front":"1","catid":"35","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900"}', 0, 'en-GB'),
(48, 0, 'Custom HTML', '', '<p>This is a custom html module. That means you can enter whatever content you want.</p>', 1, 'customload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(49, 0, 'Weblinks', '', '', 1, 'weblinksload', 0, '0000-00-00 00:00:00', '2016-04-26 07:37:54', '0000-00-00 00:00:00', -2, 'mod_weblinks', 1, 1, '{"catid":"32","count":"5","ordering":"title","direction":"asc","target":"3","description":"0","hits":"0","count_clicks":"0","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(52, 0, 'Breadcrumbs', '', '', 1, 'breadcrumbsload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_breadcrumbs', 1, 1, '{"showHome":"1","homeText":"Home","showLast":"1","separator":"","layout":"","moduleclass_sfx":"","cache":"0","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(58, 0, 'Special!', '', '<h1>This week we have a special, half price on delicious oranges!</h1><div>Only for our special customers!</div><div>Use the code: Joomla! when ordering</div><p><em>This module can only be seen by people in the customers group or higher.</em></p>', 1, 'position-12', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 4, 1, '{"prepare_content":"1","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(61, 0, 'Articles Categories', '', '', 1, 'articlescategoriesload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_articles_categories', 1, 1, '{"parent":"29","show_description":"0","show_children":"0","maxlevel":"0","count":"0","layout":"","moduleclass_sfx":"","owncache":"1","cache_time":"900"}', 0, '*'),
(63, 0, 'Search', '', '', 1, 'position-0', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_search', 1, 1, '{"width":"20","text":"","button":"","button_pos":"right","imagebutton":"1","button_text":"","set_itemid":"","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(65, 0, 'About Fruit Shop', '', '<p>The Fruit Shop site shows a number of Joomla! features.</p><p>The template uses classes in cascading style sheets to change the layout of items, such as creating the horizontal alphabetical list in the Fruit Encyclopedia.</p><p>Â </p>', 1, 'position-4', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(68, 0, 'About Parks', '', '<p>The Parks sample site is designed as a simple site that can be routinely updated from the front end of Joomla!.</p><p>As a site, it is largely focused on a blog which can be updated using the front end article submission.</p><p>New weblinks can also be added through the front end.</p><p>A simple image gallery uses com_content with thumbnails displayed in a blog layout and full size images shown in article layout.</p><p>The Parks site features the language switch module. All of the content and modules are tagged as English (en-GB). If a second language pack is added with sample data this can be filtered using the language switch.</p><p>Parks uses HTML5 which is a major web standard (along with XHTML which is used in other areas of sample data).</p>', 2, 'position-4', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(69, 0, 'Articles Category', '', '', 1, 'articlescategoryload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_articles_category', 1, 1, '{"mode":"normal","show_on_article_page":"1","show_front":"show","count":"0","category_filtering_type":"1","catid":["72"],"show_child_category_articles":"0","levels":"1","author_filtering_type":"1","created_by":[""],"author_alias_filtering_type":"1","created_by_alias":[""],"excluded_articles":"","date_filtering":"off","date_field":"a.created","start_date_range":"","end_date_range":"","relative_date":"30","article_ordering":"a.title","article_ordering_direction":"ASC","article_grouping":"none","article_grouping_direction":"ksort","month_year_format":"F Y","item_heading":"4","show_date":"0","show_date_field":"created","show_date_format":"Y-m-d H:i:s","show_category":"0","show_hits":"0","show_author":"0","show_introtext":"0","introtext_limit":"100","layout":"","moduleclass_sfx":"","owncache":"1","cache_time":"900"}', 0, '*'),
(70, 0, 'Search (Atomic Template)', '', '', 1, 'atomic-search', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_search', 1, 0, '{"width":"20","text":"","button":"","button_pos":"right","imagebutton":"","button_text":"","set_itemid":"","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(72, 0, 'Top Quote (Atomic Template)', '', '<hr />\n<h2 class="alt">Powerful Content Management and a Simple Extensible Framework.</h2>\n<hr />', 1, 'atomic-topquote', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(73, 0, 'Bottom Left Column (Atomic Template)', '', '<h6>This is a nested column</h6>\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>', 1, 'atomic-bottomleft', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(74, 0, 'Bottom Middle Column (Atomic Template)', '', '<h6>This is another nested column</h6>\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>', 1, 'atomic-bottommiddle', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(75, 0, 'Sidebar (Atomic Template)', '', '<h3>A <span class="alt">Simple</span> Sidebar</h3>\n<p>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Cras ornare mattis nunc. Mauris venenatis, pede sed aliquet vehicula, lectus tellus pulvinar neque, non cursus sem nisi vel augue.</p>\n<p class="quiet">Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Cras ornare mattis nunc. Mauris venenatis, pede sed aliquet vehicula, lectus tellus pulvinar neque, non cursus sem nisi vel augue.</p>\n<h5>Incremental leading</h5>\n<p class="incr">Vestibulum ante ipsum primis in faucibus orci luctus vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Cras ornare mattis nunc. Mauris venenatis, pede sed aliquet vehicula, lectus tellus pulvinar neque, non cursus sem nisi vel augue. sed aliquet vehicula, lectus tellus.</p>\n<p class="incr">Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Cras ornare mattis nunc. Mauris venenatis, pede sed aliquet vehicula, lectus tellus pulvinar neque, non cursus sem nisi vel augue. sed aliquet vehicula, lectus tellus pulvinar neque, non cursus sem nisi vel augue. ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Cras ornare mattis nunc. Mauris venenatis, pede sed aliquet vehicula, lectus tellus pulvinar neque, non cursus sem nisi vel augue. sed aliquet vehicula, lectus tellus pulvinar neque, non cursus sem nisi vel augue.</p>', 1, 'atomic-sidebar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(76, 300, 'Login (Atomic Template)', '', '', 2, 'atomic-sidebar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 0, '{"pretext":"","posttext":"","login":"","logout":"","greeting":"1","name":"0","usesecure":"0","usetext":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(77, 0, 'Top Menu', '', '', 1, 'top', 0, '0000-00-00 00:00:00', '2016-11-05 21:35:13', '0000-00-00 00:00:00', -2, 'mod_menu', 1, 0, '{"menutype":"topmenu","startLevel":"1","endLevel":"2","showAllChildren":"0","tag_id":"","class_sfx":"menu-topmenu menu-iconmenu","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(78, 0, 'Footer Menu', '', '', 3, 'footer', 32, '2016-11-04 19:12:11', '2016-11-05 21:35:06', '0000-00-00 00:00:00', -2, 'mod_menu', 1, 0, '{"menutype":"footermenu","startLevel":"1","endLevel":"1","showAllChildren":"0","tag_id":"","class_sfx":"menu-divmenu","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(81, 0, 'Tree Menu with rich text', '', '', 4, 'left', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"mainmenu","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"menu-treemenu menu-iconmenu menu-richmenu","window_open":"","layout":"_:default","moduleclass_sfx":"box-red","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(83, 0, 'Position "left"', '', '<p>This is a sample module in position <strong>left</strong>. All modules in this position will be arranged in <strong>vertical column</strong>. The whole position will be collapsed, if there are no modules published.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc varius nisl id lectus ultricies ut elementum nulla ornare. Nulla sed mi massa, at tincidunt felis.</p>', 6, 'left', 0, '0000-00-00 00:00:00', '2016-11-04 05:06:27', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"box-red","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(87, 243, 'Compatibility', '', '<p class="content-center"><img src="http://demo.joomlashine.com/joomla-templates/jsn_venture/free/images/extensions/custom-html/native-compatibility/joomla3x.png" border="0" alt="Joomla! 3.x fully support" width="134" height="66" /></p>\r\n<p>JSN Venture is now natively compatible with  <strong>Joomla! 3.x</strong>.</p>\r\n<p>The installation package is compatible with Joomla CMS.</p>', 3, 'right', 0, '0000-00-00 00:00:00', '2016-11-05 21:35:10', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"venture-1","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(88, 0, 'Docs', '', '<p>Full details about all template features can be found in comprehensive documentation package available for free download.</p>\r\n<p class="content-center"><a class="link-button button-light" href="http://www.joomlashine.com/joomla-templates/jsn-venture-docs.zip"><span class="link-icon">Free download</span></a></p>', 2, 'right', 0, '0000-00-00 00:00:00', '2016-11-05 21:35:10', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"venture-1","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(89, 0, 'Tree Menu', '', '', 14, 'right', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"mainmenu","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"menu-treemenu","window_open":"","layout":"_:default","moduleclass_sfx":"box-cyan","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(91, 0, 'Advanced Stuff', '', '', 6, 'right', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"advanced-stuff","startLevel":"1","endLevel":"0","showAllChildren":"1","tag_id":"","class_sfx":"menu-treemenu ","window_open":"","layout":"_:default","moduleclass_sfx":"box-cyan","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(98, 0, 'Position "right"', '', '<p>This is sample module in position <strong>right</strong>. All modules in this position will be arranged in <strong>vertical column</strong>. The whole position will be collapsed, if there are no modules published.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc varius nisl id lectus ultricies ut elementum nulla ornare. Nulla sed mi massa, at tincidunt felis.</p>', 13, 'right', 0, '0000-00-00 00:00:00', '2016-11-04 05:17:05', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"box-cyan","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(99, 0, 'Joomla! Copyright', '', '<p>The Joomla! name is used under a limited license from Open Source Matters in the United States and other countries. <br/>JoomlaShine.com is not affiliated with or endorsed by Open Source Matters or the Joomla! Project.</p>\r\n', 1, 'footer', 0, '0000-00-00 00:00:00', '2016-11-05 21:35:06', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(100, 302, 'Breadcrumbs', '', '', 1, 'breadcrumbs', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_breadcrumbs', 1, 1, '{"showHere":"0","showHome":"1","homeText":"Home","showLast":"1","separator":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(101, 275, 'Identificacao', '', '<p style="text-align: center;">Clube Desportivo do Arneiro - Fundado em Agosto de 1962</p>', 1, 'bottom', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(102, 0, 'Position "innerleft"', '', '<p>This is sample module in position <strong>innerleft</strong>. All modules in this position will be arranged in <strong>vertical column</strong>. The whole position will be collapsed, if there are no modules published.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc varius nisl id lectus ultricies ut elementum nulla ornare. Nulla sed mi massa, at tincidunt felis.</p>', 1, 'innerleft', 0, '0000-00-00 00:00:00', '2016-11-04 05:13:56', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(103, 0, 'Position "innerright"', '', '<p>This is sample module in position <strong>innerright</strong>. All modules in this position will be arranged in <strong>vertical column</strong>. The whole position will be collapsed, if there are no modules published.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc varius nisl id lectus ultricies ut elementum nulla ornare. Nulla sed mi massa, at tincidunt felis.</p>', 1, 'innerright', 0, '0000-00-00 00:00:00', '2016-11-04 05:56:34', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(107, 0, 'Position "stick-leftbottom"', '', '<a><img src="http://demo.joomlashine.com/joomla-templates/jsn_venture/free/images/extensions/custom-html/position-stick-x/position-stick-leftbottom.png" width="65" height="190" alt="Sample module in position -stick-leftbottom-" /></a>', 1, 'stick-leftbottom', 0, '0000-00-00 00:00:00', '2016-11-04 05:07:17', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(108, 0, 'Position "stick-leftmiddle\'', '', '<a><img src="http://demo.joomlashine.com/joomla-templates/jsn_venture/free/images/extensions/custom-html/position-stick-x/position-stick-leftmiddle.png" width="65" height="190" alt="Sample module in position -stick-leftmiddle-" /></a>', 1, 'stick-leftmiddle', 0, '0000-00-00 00:00:00', '2016-11-04 05:07:17', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(109, 0, 'Position "stick-lefttop"', '', '<a><img src="http://demo.joomlashine.com/joomla-templates/jsn_venture/free/images/extensions/custom-html/position-stick-x/position-stick-lefttop.png" width="65" height="190" alt="Sample module in position -stick-lefttop-" /></a>', 0, 'stick-lefttop', 0, '0000-00-00 00:00:00', '2016-11-04 05:07:17', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 0, '{"prepare_content":"1","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(110, 0, 'See other templates', '', '<a rel="{handler: \'iframe\', size: {x: 640, y: 510}}" href="http://www.joomlashine.com/free-joomla-templates-promo.html" class="modal link-tooltip" style="z-index: 90;"><img src="http://demo.joomlashine.com/joomla-templates/jsn_venture/free/images/extensions/custom-html/see-other-templates/see-other-templates-banner.png" width="120" height="120" alt="See other templates" /><span style="left: -90px; top: -260px"><img src="http://demo.joomlashine.com/joomla-templates/jsn_venture/free/images/extensions/custom-html/see-other-templates/see-other-templates-banner-text.png" width="200" height="200" alt="See other templates" /></span></a>', 1, 'stick-rightbottom', 0, '0000-00-00 00:00:00', '2016-11-05 21:35:13', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(112, 0, 'Position "stick-rightmiddle"', '', '<a><img src="http://demo.joomlashine.com/joomla-templates/jsn_venture/free/images/extensions/custom-html/position-stick-x/position-stick-rightmiddle.png" width="65" height="190" alt="Sample module in position -stickrightmiddle-" /></a>', 0, 'stick-rightmiddle', 0, '0000-00-00 00:00:00', '2016-11-04 05:07:31', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 0, '{"prepare_content":"1","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(116, 0, 'Layout Variations', '', '<div class="grid-layout" style="margin-top: 10px">\n	<div class="content-center"><a href="index.php?option=com_content&view=article&id=90&Itemid=472" class="link-highlight"><img src="http://demo.joomlashine.com/joomla-templates/jsn_venture/free/images/extensions/custom-html/layout-variations/layout-thumb-lcr.png" width="160" height="90" alt="Left | Center | Right" style="vertical-align: middle;" class="margin-right" /><br />\n		Left | Center | Right</a></div>\n	<div class="content-center"><a href="index.php?option=com_content&view=article&id=92&Itemid=477" class="link-highlight"><img src="http://demo.joomlashine.com/joomla-templates/jsn_venture/free/images/extensions/custom-html/layout-variations/layout-thumb-mc.png" width="160" height="90" alt="Main content only" style="vertical-align: middle;" class="margin-right" /><br />\n		Main content only</a></div>\n</div>\n<div class="grid-layout" style="margin-top: 10px">\n	<div class="content-center"><a href="index.php?option=com_content&view=article&id=89&Itemid=474" class="link-highlight"><img src="http://demo.joomlashine.com/joomla-templates/jsn_venture/free/images/extensions/custom-html/layout-variations/layout-thumb-lcir.png" width="160" height="90" alt="Left | Center | InnerRight" style="vertical-align: middle;" class="margin-right" /><br />\n		Left | Center | InnerRight</a></div>\n	<div class="content-center"><a href="index.php?option=com_content&view=article&id=88&Itemid=476" class="link-highlight"><img src="http://demo.joomlashine.com/joomla-templates/jsn_venture/free/images/extensions/custom-html/layout-variations/layout-thumb-ilcr.png" width="160" height="90" alt="InnerLeft | Center | Right" style="vertical-align: middle;" class="margin-right" /><br />\n		InnerLeft | Center | Right</a></div>\n</div>\n<div class="grid-layout" style="margin-top: 10px">\n	<div class="content-center"><a href="index.php?option=com_content&view=article&id=91&Itemid=473" class="link-highlight"><img src="http://demo.joomlashine.com/joomla-templates/jsn_venture/free/images/extensions/custom-html/layout-variations/layout-thumb-lilc.png" width="160" height="90" alt="Left | Center | InnerRight" style="vertical-align: middle;" class="margin-right" /><br />\n		Left | InnerLeft | Center</a></div>\n	<div class="content-center"><a href="index.php?option=com_content&view=article&id=87&Itemid=475" class="link-highlight"><img src="http://demo.joomlashine.com/joomla-templates/jsn_venture/free/images/extensions/custom-html/layout-variations/layout-thumb-cirr.png" width="160" height="90" alt="Left | Center | Right" style="vertical-align: middle;" class="margin-right" /><br />\n		Center | InnerRight | Right</a></div>\n</div>\n', 1, 'user-bottom', 0, '0000-00-00 00:00:00', '2016-11-04 05:13:25', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 1, '{"prepare_content":"1","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(118, 0, 'Position "content-top"', '', '<p>This is a sample module in position <strong>&ldquo;content-top&rdquo;</strong>. All modules in this position will be arranged in <strong>horizontal row</strong>. The whole position will be collapsed, if there are no modules published.</p>\n', 1, 'content-top', 0, '0000-00-00 00:00:00', '2016-11-04 05:10:52', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(120, 0, 'Position "content-top"', '', '<p>This is a sample module in position <strong>&ldquo;content-top&rdquo;</strong>. All modules in this position will be arranged in <strong>horizontal row</strong>. The whole position will be collapsed, if there are no modules published.</p>\n', 3, 'content-top', 0, '0000-00-00 00:00:00', '2016-11-04 05:10:52', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(121, 0, 'Position "user7"', '', '<p>This is a sample module in position <strong>&ldquo;user7&rdquo;</strong>. All modules in this position will be arranged in <strong>vertical column</strong>. The whole position will be collapsed, if there are no modules published.</p>', 1, 'user7', 0, '0000-00-00 00:00:00', '2016-11-04 05:11:37', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(122, 0, 'Position "user6"', '', '<p>This is a sample module in position <strong>&ldquo;user6&rdquo;</strong>. All modules in this position will be arranged in <strong>vertical column</strong>. The whole position will be collapsed, if there are no modules published.</p>', 1, 'user6', 0, '0000-00-00 00:00:00', '2016-11-04 05:11:37', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(123, 0, 'Position "user3"', '', '<p>This is a sample module in position <strong>&ldquo;user3&rdquo;</strong>. All modules in this position will be arranged in <strong>vertical column</strong>. The whole position will be collapsed, if there are no modules published.</p>', 1, 'user3', 0, '0000-00-00 00:00:00', '2016-11-04 05:08:23', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(128, 0, '"Box blue" Style', '', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc varius nisl id lectus ultricies ut elementum nulla ornare. Nulla sed mi massa, at tincidunt felis.</p>\r\n<p>Module Class Suffix:<br />\r\n  <strong>&quot;richbox-1&quot;</strong></p>', 1, 'left', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"box-blue","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(130, 278, '"Box cyan" Style', '', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc varius nisl id lectus ultricies ut elementum nulla ornare. Nulla sed mi massa, at tincidunt felis.</p>\r\n<p>Module Class Suffix:<br /> <strong>"richbox-2"</strong></p>', 11, 'right', 0, '0000-00-00 00:00:00', '2016-11-04 15:20:13', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"box-cyan","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(136, 0, 'Position "user1"', '', '<p>This is a sample module in position <strong>&ldquo;user1&rdquo;</strong>. All modules in this position will be arranged in <strong>vertical column</strong>. The whole position will be collapsed, if there are no modules published.</p>', 1, 'user1', 0, '0000-00-00 00:00:00', '2016-11-04 05:08:23', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(137, 0, 'Position "user2"', '', '<p>This is a sample module in position <strong>&ldquo;user2&rdquo;</strong>. All modules in this position will be arranged in <strong>vertical column</strong>. The whole position will be collapsed, if there are no modules published.</p>', 1, 'user2', 0, '0000-00-00 00:00:00', '2016-11-04 05:08:23', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(139, 0, 'Position "user4"', '', '<p>This is a sample module in position <strong>&ldquo;user4&rdquo;</strong>. All modules in this position will be arranged in <strong>vertical column</strong>. The whole position will be collapsed, if there are no modules published.</p>', 1, 'user4', 0, '0000-00-00 00:00:00', '2016-11-04 05:08:23', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(140, 0, 'Position "user5"', '', '<p>This is a sample module in position <strong>&ldquo;user5&rdquo;</strong>. All modules in this position will be arranged in <strong>vertical column</strong>. The whole position will be collapsed, if there are no modules published.</p>', 1, 'user5', 0, '0000-00-00 00:00:00', '2016-11-04 05:11:37', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(141, 238, 'Menu right', '', '', 12, 'right', 0, '0000-00-00 00:00:00', '2016-11-05 21:35:10', '0000-00-00 00:00:00', -2, 'mod_menu', 1, 0, '{"menutype":"mainmenu","base":"","startLevel":"2","endLevel":"3","showAllChildren":"0","tag_id":"","class_sfx":"menu-treemenu","window_open":"","layout":"_:default","moduleclass_sfx":"box-cyan","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(143, 0, 'See PRO edition', '', '<a href="http://demo.joomlashine.com/joomla-templates/jsn-venture.html" class="link-tooltip" style="z-index: 90;"><img src="http://demo.joomlashine.com/joomla-templates/jsn_venture/free/images/extensions/custom-html/pro-edition/pro-edition-banner.png" width="120" height="120" alt="See PRO edition" /><span style="left: -120px; top: -20px"><img src="http://demo.joomlashine.com/joomla-templates/jsn_venture/free/images/extensions/custom-html/pro-edition/pro-edition-banner-text.png" width="240" height="250" alt="See PRO edition" /></span></a>', 0, 'stick-righttop', 0, '0000-00-00 00:00:00', '2016-11-05 21:35:13', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(152, 0, 'PRO Edition', '', '<p><img src="http://demo.joomlashine.com/joomla-templates/jsn_venture/free/images/extensions/custom-html/editions-badge-pro.png" border="0" width="75" height="75" class="image-left" />If you are serious about your time and money, buy PRO edition with full features and dedicated support.</p>\r\n<p><a href="http://www.joomlashine.com/joomla-templates/jsn-venture-download.html" class="link-action">Buy PRO edition</a></p>', 9, 'left', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"richbox-2","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(159, 0, 'Position "promo-left"', '', '<p>This is a sample module in position <strong>&ldquo;promo-left&rdquo;</strong>. All modules in this position will be arranged in <strong>vertical column</strong>. The whole position will be collapsed, if there are no modules published.</p>', 0, 'promo-left', 0, '0000-00-00 00:00:00', '2016-11-04 05:09:10', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(160, 0, 'Position "promo-right"', '', '<p>This is a sample module in position <strong>&ldquo;promo-right&rdquo;</strong>. All modules in this position will be arranged in <strong>vertical column</strong>. The whole position will be collapsed, if there are no modules published.</p>', 0, 'promo-right', 0, '0000-00-00 00:00:00', '2016-11-04 05:09:10', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(161, 242, 'Position "promo"', '', '<div style="height: 204px; background: url(\'http://demo.joomlashine.com/joomla-templates/jsn_venture/free/images/extensions/custom-html/position-promo/position-promo.jpg\') center center no-repeat;"> </div>', 1, 'promo', 0, '0000-00-00 00:00:00', '2016-11-04 05:09:10', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(162, 0, 'Position "content-bottom"', '', '<p>This is a sample module in position <strong>&ldquo;content-bottom&rdquo;</strong>. All modules in this position will be arranged in <strong>horizontal row</strong>. The whole position will be collapsed, if there are no modules published.</p>\n', 1, 'content-bottom', 0, '0000-00-00 00:00:00', '2016-11-04 05:10:32', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(163, 0, 'Position "content-bottom"', '', '<p>This is a sample module in position <strong>&ldquo;content-bottom&rdquo;</strong>. All modules in this position will be arranged in <strong>horizontal row</strong>. The whole position will be collapsed, if there are no modules published.</p>\n', 2, 'content-bottom', 0, '0000-00-00 00:00:00', '2016-11-04 05:10:32', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(168, 0, 'Main Menu (Icons & Rich Text)', '', '', 0, 'mainmenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 0, '{"menutype":"mainmenu","startLevel":"1","endLevel":"0","showAllChildren":"1","tag_id":"","class_sfx":"menu-mainmenu menu-iconmenu menu-richmenu","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(173, 0, 'Reviews on JED', '', '<p>JSN UniForm has been <strong>approved on Joomla Extension Directory</strong>. Let\'s see how Joomla community enjoy it. If you use JSN UniForm, please post a rating and a review at the <a href="http://www.joomlashine.com/joomla-extensions/jsn-uniform-on-jed.html" target="_blank">Joomla! Extensions Directory</a></p>\r\n', 7, 'right', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"box-pink jsn-icon-user","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(174, 0, 'Free Joomla! Ebook', '', '<a href="http://www.joomlashine.com/index.php?option=com_lightcart&view=sharemessage&layout=askbefore&tmpl=component&utm_source=demo.joomlashine.com%20&utm_medium=banner&utm_campaign=Joomla%2B3.0%2BMade%2BEasy"><img src="http://demo.joomlashine.com/joomla-templates/jsn_venture/free/images/banners/banner-joomla-30-made-easy.jpg" alt="Free Joomla ebook | Joomla 3.0 Made Easy" /></a>', 8, 'left', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"richbox-1","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(176, 0, 'Our Facebook', '', '<iframe src="//www.facebook.com/plugins/likebox.php?href=http%3A%2F%2Fwww.facebook.com%2Fjoomlashine&amp;width=234&amp;height=303&amp;show_faces=true&amp;colorscheme=light&amp;stream=false&amp;border_color=%23ffffff&amp;header=false&amp;appId=350219141723323" scrolling="no" frameborder="0" style="border:none; overflow:hidden; width:234px; height:354px;" allowTransparency="true"></iframe>', 7, 'left', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"richbox-2","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(178, 0, 'Search ', '', '', 5, 'right', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_finder', 1, 1, '{"searchfilter":"","show_autosuggest":"1","show_advanced":"0","layout":"_:default","moduleclass_sfx":"","field_size":"25","alt_label":"","show_label":"1","label_pos":"top","show_button":"0","button_pos":"right","opensearch":"1","opensearch_title":""}', 0, '*'),
(179, 0, 'Must-see Stuff', '', '', 1, 'right', 0, '0000-00-00 00:00:00', '2016-11-05 21:35:10', '0000-00-00 00:00:00', -2, 'mod_menu', 1, 1, '{"menutype":"advanced-stuff","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"menu-treemenu","window_open":"","layout":"_:default","moduleclass_sfx":"venture-1","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(180, 0, 'Who\'s Online', '', '', 4, 'right', 0, '0000-00-00 00:00:00', '2016-11-05 21:35:10', '0000-00-00 00:00:00', -2, 'mod_whosonline', 1, 1, '{"showmode":"0","layout":"_:default","moduleclass_sfx":"venture-1","cache":"0","filter_groups":"0"}', 0, '*'),
(186, 0, 'Networks', '', '', 0, 'user7', 0, '0000-00-00 00:00:00', '2016-11-05 21:35:13', '0000-00-00 00:00:00', -2, 'mod_menu', 1, 1, '{"menutype":"advanced-stuff","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"menu-treemenu","window_open":"","layout":"_:default","moduleclass_sfx":"venture-1","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(190, 0, 'Promo Intro', '', '<div id="promo-intro">\r\n<h1 class="promo-intro-mainheading">Hello, party hunters</h1>\r\n<p class="promo-intro-desc">\r\nSearching for party event in the city?\r\n</p>\r\n<p class="promo-intro-desc">\r\nThis place has tons of information about events, congresses,<br />parties...\r\nTogether with the music, we\'re all connected.<br />So don\'t be a dreamer because you\'re not alone.\r\n</p>\r\n<p class="promo-intro-desc see-all-events">\r\nDon\'t think twice, let\'s dance until dawn!\r\n</p>\r\n<a href="#" class=""></a>\r\n</div>', 1, 'promo', 0, '0000-00-00 00:00:00', '2016-11-05 21:35:10', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"promo-homepage-demo","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(191, 0, 'Profile Intro', '', '<div class="infor-promo">\r\n<div>\r\n<img class="image-left" src="http://demo.joomlashine.com/joomla-templates/jsn_venture/free/images/extensions/custom-html/profile-intro/promo-right1.png" border="0" alt="">\r\n<div class="infor-promo-text">\r\n<h3 class="jsn-moduletitle">Flexible Layout</h3>\r\n<p>JSN Venture provides 36+ module positions allowing you to have multiple layout configurations. All module positions works well in RTL mode.</p>\r\n</div>\r\n</div>\r\n<div>\r\n<p><img class="image-left" src="http://demo.joomlashine.com/joomla-templates/jsn_venture/free/images/extensions/custom-html/profile-intro/promo-right2.png" border="0"></p>\r\n<div class="infor-promo-text">\r\n<h3 class="jsn-moduletitle">Native RTL Support</h3>\r\n<p>Native RTL support means that every elements on the page is mirror swapped including layout, menus, typography, icons...everything. </p>\r\n</div>\r\n</div>\r\n<div>\r\n<img class="image-left" src="http://demo.joomlashine.com/joomla-templates/jsn_venture/free/images/extensions/custom-html/profile-intro/promo-right3.png" border="0">\r\n<div class="infor-promo-text">\r\n<h3 class="jsn-moduletitle">Imageshow Included</h3>\r\n<p>The image gallery you see on this website is the FREE edition of another cool product: JSN ImageShow.  It will help you to display images lively and truthfully</p>\r\n<ul>\r\n<li style="line-height: 27px;"><strong>Multiple Image Sources</strong></li>\r\n<li style="line-height: 27px;"><strong>Multiple Gallery Themes</strong></li>\r\n<li style="line-height: 27px;"><strong>Present Anywhere</strong></li>\r\n</ul>\r\n</div>\r\n</div>\r\n\r\n</div>', 1, 'promo-right', 0, '0000-00-00 00:00:00', '2016-11-05 21:35:10', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(194, 0, 'Search', '', '', 0, 'left', 0, '0000-00-00 00:00:00', '2016-11-05 21:35:10', '0000-00-00 00:00:00', -2, 'mod_finder', 1, 0, '{"searchfilter":"","show_autosuggest":"1","show_advanced":"0","layout":"_:default","moduleclass_sfx":"","field_size":25,"alt_label":"","show_label":"1","label_pos":"top","show_button":"0","button_pos":"right","opensearch":"1","opensearch_title":""}', 0, '*'),
(199, 0, 'Search', '', '', 1, 'left', 0, '0000-00-00 00:00:00', '2016-11-05 21:35:10', '0000-00-00 00:00:00', -2, 'mod_search', 1, 0, '{"label":"","width":"20","text":"Search...","button":"","button_pos":"right","imagebutton":"","button_text":"","opensearch":"1","opensearch_title":"","set_itemid":"798","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*');
INSERT INTO `j78lr_modules` (`id`, `asset_id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(210, 0, 'Header Top ImageShow', '', '', 1, 'header-top', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_imageshow', 1, 0, '{"moduleclass_sfx":"header-top-is","showlist_id":"9","showcase_id":"3","width":"960px","height":"640","pretext":"","posttext":""}', 0, '*'),
(211, 296, 'Categories', '', '<div id="demo-event-cat">\r\n<div class="cat" style="text-align: left;"> </div>\r\n<div class="cat" style="text-align: left;"> </div>\r\n<div class="cat" style="text-align: left;"> </div>\r\n<div class="cat" style="text-align: left;"> </div>\r\n<div class="cat" style="text-align: left;"> </div>\r\n<div class="cat" style="text-align: left;"> </div>\r\n<div class="cat" style="text-align: left;"> </div>\r\n<div class="cat" style="text-align: left;"> </div>\r\n<div class="cat" style="text-align: left;"> </div>\r\n<div class="cat" style="text-align: left;"> </div>\r\n<div class="cat" style="text-align: left;"><a href="index.php/layout"><img style="display: block; margin-left: auto; margin-right: auto;" src="images/logo.png" alt="" /></a></div>\r\n<h2 class="grid-layout" style="text-align: center;">CLUBE </h2>\r\n<h2 class="grid-layout" style="text-align: center;">  </h2>\r\n<h2 class="grid-layout" style="text-align: center;"><a href="index.php/free-extensions"><img style="display: block; margin-left: auto; margin-right: auto;" src="images/Modalidades.png" alt="" width="169" height="170" /></a></h2>\r\n<h2 class="grid-layout" style="text-align: center;"> MODALIDADES</h2>\r\n<p style="text-align: center;">  </p>\r\n<p style="text-align: center;"><a href="index.php/area-de-socio/login"><img style="display: block; margin-left: auto; margin-right: auto;" src="images/login.png" alt="" width="151" height="151" /></a></p>\r\n<h2 class="grid-layout" style="text-align: center;">LOGIN</h2>\r\n<p style="text-align: left;"> </p>\r\n<div class="cat" style="text-align: center;">\r\n<p class="desc" style="text-align: left;"> </p>\r\n</div>\r\n</div>', 3, 'content-bottom', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"event-categories","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(214, 0, 'Our Team Heading', '', '<div id="our-team" class="demo-mainsection-intro">\r\n<h1 class="main-heading"><span><i class="main-heading-icon icon-groupuser"></i>Our Team</span></h1>\r\n<p class="main-heading-desc">\r\nPassionate web developers, talented designers, and helpful support staff.\r\n</p>\r\n</div>', 0, 'content-bottom-over', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(215, 0, 'Our Team Members', '', '<div id="our-team-member">\r\n\r\n<div class="grid-layout">\r\n<div class="grid-col">\r\n<div class="member-item">\r\n<img class="member-avatar" src="http://demo.joomlashine.com/joomla-templates/jsn_venture/free/images/extensions/custom-html/our-team/1.jpg" alt="" />\r\n<div class="member-desc">\r\n<div class="member-name">\r\n<h4>Michael Steele</h4>\r\n<span>CEO</span>\r\n</div>\r\n<div class="memer-info">\r\n"We focus on the products quality, which can be clearly seen in our design, functionality and usability."\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class="grid-col">\r\n<div class="member-item">\r\n<img class="member-avatar" src="http://demo.joomlashine.com/joomla-templates/jsn_venture/free/images/extensions/custom-html/our-team/2.jpg" alt="" />\r\n<div class="member-desc">\r\n<div class="member-name">\r\n<h4>Frank Thomas</h4>\r\n<span>Co-Founder</span>\r\n</div>\r\n<div class="memer-info">\r\n"Actively participating in Joomla forums, our staff are making a positive contribution to the community."\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class="grid-col">\r\n<div class="member-item">\r\n<img class="member-avatar" src="http://demo.joomlashine.com/joomla-templates/jsn_venture/free/images/extensions/custom-html/our-team/3.jpg" alt="" />\r\n<div class="member-desc">\r\n<div class="member-name">\r\n<h4>Tracy Belle</h4>\r\n<span>VFX Designer</span>\r\n</div>\r\n<div class="memer-info">\r\n"We strongly promote continuous learning and training, keep updated with the latest news and techniques."\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class="grid-layout">\r\n<div class="grid-col">\r\n<div class="member-item">\r\n<img class="member-avatar" src="http://demo.joomlashine.com/joomla-templates/jsn_venture/free/images/extensions/custom-html/our-team/4.jpg" alt="" />\r\n<div class="member-desc">\r\n<div class="member-name">\r\n<h4>Larry Queen</h4>\r\n<span>Marketer</span>\r\n</div>\r\n<div class="memer-info">\r\n"We share our knowledge and skills through various Joomla tutorials with full and detailed explanations."\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class="grid-col">\r\n<div class="member-item">\r\n<img class="member-avatar" src="http://demo.joomlashine.com/joomla-templates/jsn_venture/free/images/extensions/custom-html/our-team/5.jpg" alt="" />\r\n<div class="member-desc">\r\n<div class="member-name">\r\n<h4>Luke Richardson</h4>\r\n<span>Coder</span>\r\n</div>\r\n<div class="memer-info">\r\n" As a result, the code should be clean and well commented, and each line of the code in our products matters."\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class="grid-col">\r\n<div class="member-item">\r\n<img class="member-avatar" src="http://demo.joomlashine.com/joomla-templates/jsn_venture/free/images/extensions/custom-html/our-team/6.jpg" alt="" />\r\n<div class="member-desc">\r\n<div class="member-name">\r\n<h4>Martin Sinclair</h4>\r\n<span>Account Manager</span>\r\n</div>\r\n<div class="memer-info">\r\n"We know how support is important to you. The response, therefore, should be fast and helpful"\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n</div>', 0, 'content-bottom-over', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"our-team-member","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(217, 0, 'Contact Intro', '', '<div id="our-contact" class="demo-mainsection-intro">\r\n<h1 class="main-heading"><span><i class="main-heading-icon icon-maplocation"></i>Contact</span></h1>\r\n<p class="main-heading-desc">\r\nWe bring a personal and effective approach to every project we work on, which is why our clients love us.\r\n</p>\r\n</div>', 0, 'content-bottom', 0, '0000-00-00 00:00:00', '2016-11-05 21:35:06', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(218, 0, 'Office Branches', '', '<div class="demo-office-branch">\r\n<h3>Singapore Office</h3>\r\n<span>No 200/638 Peace Street, Singapore 065</span>\r\n<hr />\r\n<div class="office-desc">\r\n<p>Mobile: +065 01234 5678</p>\r\n<p>Fax: +065 1111 1111</p>\r\n<p>Email: <a href="#">venture-contact@gmail.com</a></p>\r\n</div>\r\n</div>\r\n\r\n<div class="demo-office-branch">\r\n<h3>Serbia Office</h3>\r\n<span>Tratenik, Serbia, Brace Spasojevic Street 27</span>\r\n<hr />\r\n<div class="office-desc">\r\n<p>Mobile: +027 1234 5678</p>\r\n<p>Fax: +027 1111 1111</p>\r\n<p>Email: <a href="#">venture-serbia@gmail.com</a></p>\r\n</div>\r\n</div>', 0, 'user5', 0, '0000-00-00 00:00:00', '2016-11-05 21:35:13', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(220, 0, 'Main Menu', '', '', 1, 'mainmenu', 32, '2016-11-05 20:38:47', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 0, '{"menutype":"mainmenu","startLevel":"1","endLevel":"0","showAllChildren":"1","tag_id":"","class_sfx":"menu-mainmenu","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(221, 0, 'Login ', '', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', '2016-11-05 21:35:13', '0000-00-00 00:00:00', -2, 'mod_login', 1, 1, '{"pretext":"","posttext":"","login":"","logout":"","greeting":"1","name":"0","usesecure":"0","layout":"_:default","moduleclass_sfx":"display-dropdown display-desktop display-tablet jsn-icon-user","cache":"0"}', 0, '*'),
(222, 276, 'Homepage Slideshow', '', '', 1, 'promo-over', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_imageshow', 1, 0, '{"moduleclass_sfx":"promo-top","showlist_id":"12","showcase_id":"1","width":"100%","height":"770","pretext":"","posttext":"","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(223, 274, 'Promo Intro Text', '', '<h2><br /><img style="display: block; margin-left: auto; margin-right: auto;" src="images/logo.png" alt="" width="192" height="291" /></h2>\r\n<p>  </p>\r\n<p style="text-align: center;">FUNDADO EM 10 DE AGOSTO DE 1962</p>\r\n<div style="text-align: center;"> </div>', 2, 'promo-over', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"promo-intro display-desktop display-tablet","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h1","header_class":"","style":"0"}', 0, '*'),
(224, 0, 'Main Sponsors', '', '<div id="demo-main-sponsors">\r\n\r\n<h3 class="main-heading">Event Sponsors</h3>\r\n\r\n<div class="grid-layout">\r\n\r\n	<div class="sponsor sp1">\r\n		<a href="http://www.joomlashine.com/joomla-extensions/jsn-poweradmin-joomla-admin-extension.html" target="_blank"></a>\r\n	</div>\r\n\r\n	<div class="sponsor sp2">\r\n		<a href="http://www.joomlashine.com/joomla-extensions/jsn-uniform-joomla-contact-form-extension.html" target="_blank"></a>\r\n	</div>\r\n\r\n	<div class="sponsor sp3">\r\n		<a href="http://www.joomlashine.com/joomla-extensions/jsn-imageshow-joomla-gallery-extension.html" target="_blank"></a>\r\n	</div>\r\n\r\n	<div class="sponsor sp4">\r\n		<a href="http://www.joomlashine.com/joomla-templates.html" target="_blank"></a>\r\n	</div>\r\n\r\n</div>\r\n\r\n</div>', 1, 'content-bottom-below', 0, '0000-00-00 00:00:00', '2016-11-05 21:35:06', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(225, 286, 'Custom map', '', '', 2, 'content-bottom-below', 32, '2016-11-04 18:19:10', '2016-11-05 21:35:06', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"demo-map","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(226, 0, 'Subcription Form', '', '', 2, 'content-bottom-below', 0, '0000-00-00 00:00:00', '2016-11-05 21:35:06', '0000-00-00 00:00:00', -2, 'mod_uniform', 1, 0, '{"uniform_top_content":"","form_id":"3","uniform_bottom_content":"<div class=\\"demo-contact-desc\\">\\r\\n<h3>JSN Venture INC.<\\/h3>\\r\\n<div class=\\"desc\\">\\r\\n<p>No 20\\/538, Grand Rue Charles de Gaulle, Paris<\\/p>\\r\\n<p>T: +967 012 3456<\\/p>\\r\\n<p>E: <a>demo@joomlashine.com<\\/a><\\/p>\\r\\n<p>W: <a>joomlashine.com<\\/a><\\/p>\\r\\n<\\/div>\\r\\n<\\/div>","show_form_title":"0","show_form_description":"0","moduleclass_sfx":"demo-contact-info","cache":"1","cache_time":"900"}', 0, '*'),
(227, 248, 'About Venture', '', '<!-- JSN VENTURE DEMO MODULE -->\r\n<div id="demo-about-intro-bg" class="parallax" data-velocity="-0.2"></div>\r\n<div id="demo-about-intro">\r\n\r\n<h3 class="main-heading">About Venture</h3>\r\n\r\n<div class="desc">\r\n<p>\r\nJSN Venture is the perfect template for all nightclub and disco bar websites. It is an outstanding Joomla! template inspired by the flat style and with an intensive background that will amaze you from the first look. </p>\r\n\r\n</div>\r\n\r\n<div id="guiding-icons">\r\n\r\n<div class="grid-layout">\r\n\r\n<div class="icon lightning">\r\n<a href="index.php?option=com_content&view=article&id=84&Itemid=543"></a>\r\n</div>\r\n\r\n<div class="icon responsive">\r\n<a href="http://demo.joomlashine.com/joomla-templates/jsn-venture.html"></a>\r\n</div>\r\n\r\n<div class="icon maintainance">\r\n<a href="index.php?option=com_content&view=article&id=77&Itemid=542"></a>\r\n</div>\r\n\r\n<div class="icon customize">\r\n<a href="index.php?option=com_content&view=article&id=71&Itemid=466"></a>\r\n</div>\r\n\r\n<div class="icon param">\r\n<a href="index.php?option=com_content&view=article&id=73&Itemid=470"></a>\r\n</div>\r\n\r\n</div>\r\n\r\n</div>\r\n\r\n</div>', 1, 'user6', 0, '0000-00-00 00:00:00', '2016-11-05 21:35:13', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(228, 0, 'Main Features', '', '', 1, 'innerright', 0, '0000-00-00 00:00:00', '2016-11-05 21:35:10', '0000-00-00 00:00:00', -2, 'mod_menu', 1, 1, '{"menutype":"mainmenu","startLevel":"1","endLevel":"2","showAllChildren":"0","tag_id":"","class_sfx":"menu-treemenu","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(229, 0, '"Box red" Style', '', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc varius nisl id lectus ultricies ut elementum nulla ornare. Nulla sed mi massa, at tincidunt felis.</p>\r\n<p>Module Class Suffix:<br /> <strong>"box-red jsn-icon-search"</strong></p>', 0, 'left', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"box-red ","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(230, 0, '"Box grey" Style', '', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc varius nisl id lectus ultricies ut elementum nulla ornare. Nulla sed mi massa, at tincidunt felis.</p>\r\n<p>Module Class Suffix:<br /> <strong>"box-grey jsn-icon-cart"</strong></p>', 0, 'left', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"box-grey","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(231, 0, '"Box purple" Style', '', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc varius nisl id lectus ultricies ut elementum nulla ornare. Nulla sed mi massa, at tincidunt felis.</p>\r\n<p>Module Class Suffix:<br /> <strong>"box-grey jsn-icon-cart"</strong></p>', 0, 'right', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"box-purple","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(232, 0, '"Box pink" Style', '', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc varius nisl id lectus ultricies ut elementum nulla ornare. Nulla sed mi massa, at tincidunt felis.</p>\r\n<p>Module Class Suffix:<br /> <strong>"box-grey jsn-icon-cart"</strong></p>', 0, 'right', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"box-pink","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(234, 0, 'JSN ImageShow Replacement', '', '<style>\r\n.jsn-demo-page .promo-replace {\r\nmargin-top: -40px;\r\nheight: 850px;\r\nmin-height: 850px;\r\nwidth: 100%;\r\nposition: relative;\r\noverflow: hidden;\r\n}\r\n.jsn-demo-page .promo-replace a {\r\nwidth: 100%;\r\nheight: 100%;\r\nposition: absolute;\r\ndisplay: block;\r\nbackground: url(media/joomlashine/jsn-venture/custom-html/jsn-imageshow-promo/jsn-imageshow-promo.jpg) center top no-repeat;\r\nbackground-size: 100% auto;\r\n}\r\n</style>\r\n<div class="promo-replace">\r\n<a href="http://www.joomlashine.com/joomla-extensions/jsn-imageshow.html" target="_blank" ></a>\r\n</div>', 1, 'promo-over', 0, '0000-00-00 00:00:00', '2016-11-05 21:35:10', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(235, 0, 'JSN Venture Demo Images', '', '<div style="display:none;">\r\n<img src="media/joomlashine/jsn-venture/custom-html/promo-intro/promo-intro-bg.png" alt="" />\r\n<img src="media/joomlashine/jsn-venture/custom-html/icons/sponsor-jsn-poweradmin.png" alt="" />\r\n<img src="media/joomlashine/jsn-venture/custom-html/icons/sponsor-jsn-uniform.png" alt="" />\r\n<img src="media/joomlashine/jsn-venture/custom-html/icons/sponsor-jsn-imageshow.png" alt="" />\r\n<img src="media/joomlashine/jsn-venture/custom-html/icons/sponsor-jsn-templates.png" alt="" />\r\n<img src="media/joomlashine/jsn-venture/custom-html/about-intro/content-bottom.jpg" alt="" />\r\n<img src="media/joomlashine/jsn-venture/custom-html/icons/iconround-lightning.png" alt="" />\r\n<img src="media/joomlashine/jsn-venture/custom-html/icons/iconround-mobile.png" alt="" />\r\n<img src="media/joomlashine/jsn-venture/custom-html/icons/iconround-maintain.png" alt="" />\r\n<img src="media/joomlashine/jsn-venture/custom-html/icons/iconround-customize.png" alt="" />\r\n<img src="media/joomlashine/jsn-venture/custom-html/icons/iconround-param.png" alt="" />\r\n</div>', 1, 'stick-leftbottom', 0, '0000-00-00 00:00:00', '2016-11-05 21:35:13', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"jsn-demo-images","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(236, 0, 'Demo Builder Button', '', '<style>\r\ndiv#jsn-demo-builder-toggle {\r\n    position: absolute;\r\n    width: 580px;\r\n    left: -495px;\r\n    transition: all 0.6s ease;\r\n    -moz-transition: all 0.6s ease;\r\n    -webkit-transition: all 0.6s ease;\r\n}\r\ndiv#jsn-demo-builder-toggle > a:hover:not(.active) {\r\n    left: -490px;\r\n}\r\ndiv#jsn-demo-builder-toggle.active {\r\n    left: 0;\r\n}\r\ndiv#jsn-demo-builder-toggle > div,\r\ndiv#jsn-demo-builder-toggle > a {\r\n    float: left;\r\n    cursor: default;\r\n}\r\ndiv#jsn-demo-builder-toggle > a {\r\n    overflow: hidden;\r\n}\r\ndiv#jsn-demo-builder-toggle > a img {\r\n    position: relative;\r\n    left: -5px;\r\n    transition: all 0.3s ease;\r\n    -moz-transition: all 0.3s ease;\r\n    -webkit-transition: all 0.3s ease;\r\n    cursor: pointer;\r\n}\r\ndiv#jsn-demo-builder-toggle > a img:hover,\r\ndiv#jsn-demo-builder-toggle > a.active img {\r\n    left: 0;\r\n}\r\ndiv#jsn-demo-builder-toggle > div > iframe {\r\n    background: #fff url(http://demo.joomlashine.com/joomla-templates/jsn_venture/free/images/extensions/custom-html/db-loading.gif) center center no-repeat;\r\n    border-top: solid 10px #434448;\r\n    border-right: solid 10px #434448;\r\n    border-bottom: solid 10px #434448;\r\n    border-left: none;\r\n    border-bottom-right-radius: 5px;\r\n}\r\ndiv#jsn-demo-builder-toggle {\r\n    margin: 0;\r\n    padding: 0;\r\n}\r\n</style>\r\n<div id="jsn-demo-builder-toggle">\r\n    <div id="jsn-demo-builder-wrapper">\r\n        <iframe id="jsn-demo-builder-iframe" width="480px" height="590"></iframe>\r\n    </div>\r\n    <a id="jsn-demo-builder-button" href="javascript:void(0);">\r\n        <img src="http://demo.joomlashine.com/joomla-templates/jsn_venture/free/images/extensions/custom-html/demo_builder_button_black.png" alt="Demo Builder Toggle" />\r\n    </a>\r\n</div>\r\n<script type="text/javascript">\r\n    var demoButton = document.getElementById("jsn-demo-builder-button");\r\n    demoButton.addEventListener("click", function() {\r\n        this.classList.toggle("active");\r\n\r\n        var outDiv = document.getElementById("jsn-demo-builder-toggle");\r\n        outDiv.classList.toggle("active");\r\n\r\n        // Only load the iframe if the button is clicked as active and the iframe is not loaded\r\n        if (this.classList.contains("active") && !outDiv.classList.contains("iframeloaded")) {\r\n            // Load the iframe\r\n            document.getElementById("jsn-demo-builder-iframe").src = "http://myjoomlashine.com/demo-builder/index.php?template=solid";\r\n        }\r\n\r\n        // Add an indicator that the iframe has been loaded, no reload if click the button again and again\r\n        outDiv.classList.add("iframeloaded")\r\n    }, false);\r\n</script>', 0, 'stick-lefttop', 0, '0000-00-00 00:00:00', '2016-11-05 21:35:13', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(238, 239, 'Reviews on JED', '', '<p>JSN PowerAdmin has been <strong>approved on Joomla Extension Directory</strong>. Let\'s see how Joomla community enjoy it. If you use JSN PowerAdmin, please post a rating and a review at the <a href="http://extensions.joomla.org/extensions/extension/administration/admin-navigation/jsn-poweradmin" target="_blank">Joomla! Extensions Directory</a></p>', 9, 'right', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"box-pink jsn-icon-user","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(239, 240, 'Reviews on JED', '', '<p>JSN ImageShow has been <strong>approved on Joomla Extension Directory</strong>. Let\'s see how Joomla community enjoy it. If you use JSN ImageShow, please post a rating and a review at the <a href="http://extensions.joomla.org/extensions/extension/photos-a-images/galleries/jsn-imageshow-pro" target="_blank">Joomla! Extensions Directory</a></p>', 8, 'right', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"box-pink jsn-icon-user","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(240, 241, 'Reviews on JED', '', '<p>JSN Mobilize has been <strong>approved on Joomla Extension Directory</strong>. Let\'s see how Joomla community enjoy it. If you use JSN Mobilize, please post a rating and a review at the <a href="http://extensions.joomla.org/extensions/extension/mobile/mobile-display/jsn-mobilize-pro" target="_blank">Joomla! Extensions Directory</a></p>', 10, 'right', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"box-pink jsn-icon-user","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(241, 245, 'mod_easyslider', '', '', 0, '', 32, '2016-11-05 16:11:36', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_easyslider', 1, 1, '', 0, '*'),
(242, 247, 'Reviews on JED ', '', '<p>JSN EasySlider has been <strong>approved on Joomla Extension Directory</strong>. Let\'s see how Joomla community enjoy it. If you use JSN EasySlider, please post a rating and a review at the <a href="http://www.joomlashine.com/joomla-extensions/jsn-uniform-on-jed.html" target="_blank">Joomla! Extensions Directory</a></p>\r\n', 7, 'right', 0, '0000-00-00 00:00:00', '2016-11-05 21:35:10', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"box-pink jsn-icon-user","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(579, 249, 'Instagram', '', '', 1, 'content-bottom-below', 0, '0000-00-00 00:00:00', '2016-11-05 21:35:06', '0000-00-00 00:00:00', -2, 'mod_imageshow', 1, 1, '{"moduleclass_sfx":"","showlist_id":"9","showcase_id":"12","width":"99%","height":"267","pretext":"","posttext":"","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(580, 250, 'mod_easyslider', '', '', 0, '', 32, '2016-11-05 15:49:20', '2016-11-05 21:35:06', '0000-00-00 00:00:00', -2, 'mod_easyslider', 1, 1, '', 0, '*'),
(581, 251, 'SCLogin', '', '', 0, '', 0, '0000-00-00 00:00:00', '2016-11-05 21:35:06', '0000-00-00 00:00:00', -2, 'mod_sclogin', 1, 1, '', 0, '*'),
(582, 252, 'Login Register', '', '', 1, '', 0, '0000-00-00 00:00:00', '2016-11-05 20:30:50', '0000-00-00 00:00:00', 1, 'mod_loginregister', 1, 1, '{"view":"0","disablelog":"0","pretext":"","posttext":"","regpretext":"","regposttext":"","login":"","logout":"","greeting":"1","name":"0","usesecure":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","checkbox1":"1","jqueryload":"local","tou":"1","checkbox":"checked","articleid":"1","title":"I Agree to the Terms of Use","enablecap":"0","public":"","private":"","jmtheme":"0","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(583, 253, 'JSN ImageShow', '', '', 0, '', 0, '0000-00-00 00:00:00', '2016-11-05 21:35:06', '0000-00-00 00:00:00', -2, 'mod_imageshow', 1, 1, '', 0, '*'),
(584, 254, 'JSN UniForm', '', '', 0, '', 0, '0000-00-00 00:00:00', '2016-11-05 21:35:06', '0000-00-00 00:00:00', -2, 'mod_uniform', 1, 1, '', 0, '*'),
(585, 255, 'mod_easyslider', '', '', 0, '', 0, '0000-00-00 00:00:00', '2016-11-05 21:35:06', '0000-00-00 00:00:00', -2, 'mod_easyslider', 1, 1, '', 0, '*'),
(586, 256, 'Homepage Slideshow', '', '', 1, 'promo-full', 0, '0000-00-00 00:00:00', '2016-11-05 21:35:10', '0000-00-00 00:00:00', -2, 'mod_imageshow', 1, 0, '{"moduleclass_sfx":"demo-homepage-slider","showlist_id":"11","showcase_id":"1","width":"100%","height":"615","pretext":"","posttext":"","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(587, 257, 'Newsletter', '', '', 3, 'content-bottom-below', 0, '0000-00-00 00:00:00', '2016-11-05 21:35:06', '0000-00-00 00:00:00', -2, 'mod_uniform', 1, 1, '{"uniform_top_content":"<div class=\\"demo-contact-desc\\">\\r\\n<div class=\\"desc\\">\\r\\n<p>By subscribing to our mailing list you will always be update with the latest news from us. We never spam.<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>","form_id":"2","uniform_bottom_content":"<br\\/>\\r\\n<h3 class=\\"jsn-moduletitle\\"><span>My Shop<\\/span><\\/h3>\\r\\n<div>Add: R39 David Building, London, G3 NYC<br>\\r\\nCall: +128 (44) 847 8472 938<br>\\r\\nEmail: support@ferado.com<\\/div>","show_form_title":"0","show_form_description":"0","moduleclass_sfx":"demo-contact-info","cache":"1","cache_time":"900","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(588, 258, 'Search ', '', '', 5, 'right', 0, '0000-00-00 00:00:00', '2016-11-05 21:35:10', '0000-00-00 00:00:00', -2, 'mod_finder', 1, 1, '{"searchfilter":"","show_autosuggest":"1","show_advanced":"0","layout":"_:default","moduleclass_sfx":"","field_size":"25","alt_label":"","show_label":"1","label_pos":"top","show_button":"0","button_pos":"right","opensearch":"1","opensearch_title":""}', 0, '*'),
(589, 259, 'Search', '', '', 0, 'left', 0, '0000-00-00 00:00:00', '2016-11-05 21:35:10', '0000-00-00 00:00:00', -2, 'mod_finder', 1, 0, '{"searchfilter":"","show_autosuggest":"1","show_advanced":"0","layout":"_:default","moduleclass_sfx":"","field_size":25,"alt_label":"","show_label":"1","label_pos":"top","show_button":"0","button_pos":"right","opensearch":"1","opensearch_title":""}', 0, '*'),
(590, 260, 'Header Top ImageShow', '', '', 1, 'header-top', 0, '0000-00-00 00:00:00', '2016-11-05 21:35:06', '0000-00-00 00:00:00', -2, 'mod_imageshow', 1, 0, '{"moduleclass_sfx":"header-top-is","showlist_id":"9","showcase_id":"3","width":"960px","height":"640","pretext":"","posttext":""}', 0, '*'),
(591, 261, 'Homepage Slideshow', '', '', 0, 'promo-over', 0, '0000-00-00 00:00:00', '2016-11-05 21:35:10', '0000-00-00 00:00:00', -2, 'mod_imageshow', 1, 0, '{"moduleclass_sfx":"promo-top","showlist_id":"9","showcase_id":"1","width":"100%","height":"810","pretext":"","posttext":""}', 0, '*'),
(592, 262, 'Subcription Form', '', '', 2, 'content-bottom-below', 0, '0000-00-00 00:00:00', '2016-11-05 21:35:06', '0000-00-00 00:00:00', -2, 'mod_uniform', 1, 0, '{"uniform_top_content":"","form_id":"3","uniform_bottom_content":"<div class=\\"demo-contact-desc\\">\\r\\n<h3>JSN Venture INC.<\\/h3>\\r\\n<div class=\\"desc\\">\\r\\n<p>No 20\\/538, Grand Rue Charles de Gaulle, Paris<\\/p>\\r\\n<p>T: +967 012 3456<\\/p>\\r\\n<p>E: <a>demo@joomlashine.com<\\/a><\\/p>\\r\\n<p>W: <a>joomlashine.com<\\/a><\\/p>\\r\\n<\\/div>\\r\\n<\\/div>","show_form_title":"0","show_form_description":"0","moduleclass_sfx":"demo-contact-info","cache":"1","cache_time":"900"}', 0, '*'),
(593, 263, 'mod_easyslider', '', '', 0, '', 0, '0000-00-00 00:00:00', '2016-11-05 21:35:06', '0000-00-00 00:00:00', -2, 'mod_easyslider', 1, 1, '', 0, '*'),
(594, 264, 'Search ', '', '', 5, 'right', 0, '0000-00-00 00:00:00', '2016-11-05 21:35:10', '0000-00-00 00:00:00', -2, 'mod_finder', 1, 1, '{"searchfilter":"","show_autosuggest":"1","show_advanced":"0","layout":"_:default","moduleclass_sfx":"","field_size":"25","alt_label":"","show_label":"1","label_pos":"top","show_button":"0","button_pos":"right","opensearch":"1","opensearch_title":""}', 0, '*'),
(595, 265, 'Search', '', '', 0, 'left', 0, '0000-00-00 00:00:00', '2016-11-05 21:35:10', '0000-00-00 00:00:00', -2, 'mod_finder', 1, 0, '{"searchfilter":"","show_autosuggest":"1","show_advanced":"0","layout":"_:default","moduleclass_sfx":"","field_size":25,"alt_label":"","show_label":"1","label_pos":"top","show_button":"0","button_pos":"right","opensearch":"1","opensearch_title":""}', 0, '*'),
(596, 266, 'Header Top ImageShow', '', '', 1, 'header-top', 32, '2016-11-05 14:19:52', '2016-11-05 21:35:06', '0000-00-00 00:00:00', -2, 'mod_imageshow', 1, 0, '{"moduleclass_sfx":"header-top-is","showlist_id":"9","showcase_id":"3","width":"960px","height":"640","pretext":"","posttext":""}', 0, '*'),
(597, 267, 'Homepage Slideshow', '', '', 0, 'promo-over', 0, '0000-00-00 00:00:00', '2016-11-05 21:35:10', '0000-00-00 00:00:00', -2, 'mod_imageshow', 1, 0, '{"moduleclass_sfx":"promo-top","showlist_id":"9","showcase_id":"1","width":"100%","height":"810","pretext":"","posttext":""}', 0, '*'),
(598, 268, 'Subcription Form', '', '', 2, 'content-bottom-below', 0, '0000-00-00 00:00:00', '2016-11-05 21:35:06', '0000-00-00 00:00:00', -2, 'mod_uniform', 1, 0, '{"uniform_top_content":"","form_id":"3","uniform_bottom_content":"<div class=\\"demo-contact-desc\\">\\r\\n<h3>JSN Venture INC.<\\/h3>\\r\\n<div class=\\"desc\\">\\r\\n<p>No 20\\/538, Grand Rue Charles de Gaulle, Paris<\\/p>\\r\\n<p>T: +967 012 3456<\\/p>\\r\\n<p>E: <a>demo@joomlashine.com<\\/a><\\/p>\\r\\n<p>W: <a>joomlashine.com<\\/a><\\/p>\\r\\n<\\/div>\\r\\n<\\/div>","show_form_title":"0","show_form_description":"0","moduleclass_sfx":"demo-contact-info","cache":"1","cache_time":"900"}', 0, '*'),
(599, 269, 'mod_easyslider', '', '', 0, '', 0, '0000-00-00 00:00:00', '2016-11-05 21:35:06', '0000-00-00 00:00:00', -2, 'mod_easyslider', 1, 1, '', 0, '*'),
(600, 270, 'Multilanguage status', '', '', 1, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_multilangstatus', 3, 1, '{"layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(601, 271, 'Joomla Version', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_version', 3, 1, '{"format":"short","product":"1","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(602, 272, 'JSN imageshow Quick Icons', '', '', 0, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_imageshow_quickicon', 1, 1, '', 1, '*'),
(603, 273, 'JSN PowerAdmin Quick Icons', '', '', 0, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_poweradmin', 1, 1, '', 1, '*'),
(604, 280, 'Menu', '', '', 1, 'left', 32, '2016-11-05 20:53:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 0, '{"menutype":"mainmenu","base":"","startLevel":"2","endLevel":"3","showAllChildren":"1","tag_id":"","class_sfx":"menu-treemenu menu-iconmenu menu-richmenu ","window_open":"","layout":"_:default","moduleclass_sfx":"box-red","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(605, 284, 'Site Map', '', '', 1, 'sitemapload', 32, '2016-11-04 18:03:56', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"mainmenu","base":"","startLevel":"2","endLevel":"3","showAllChildren":"1","tag_id":"","class_sfx":"sitemap","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(606, 287, 'Eventos', '', '', 1, '', 0, '0000-00-00 00:00:00', '2016-11-04 20:24:13', '0000-00-00 00:00:00', -2, 'mod_menu', 1, 1, '{"menutype":"mainmenu","base":"","startLevel":"3","endLevel":"4","showAllChildren":"1","tag_id":"","class_sfx":"menu-treemenu menu-iconmenu menu-richmenu ","window_open":"","layout":"_:default","moduleclass_sfx":"box-red","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(607, 295, 'Modalidades', '', '', 1, 'mainbody-top', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"mainmenu","base":"","startLevel":"2","endLevel":"3","showAllChildren":"1","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(608, 297, 'Suporte', '', '', 1, 'mainbody-top', 32, '2016-11-05 20:11:23', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"mainmenu","base":"","startLevel":"2","endLevel":"3","showAllChildren":"1","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*');

-- --------------------------------------------------------

--
-- Table structure for table `j78lr_modules_menu`
--

CREATE TABLE `j78lr_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `j78lr_modules_menu`
--

INSERT INTO `j78lr_modules_menu` (`moduleid`, `menuid`) VALUES
(1, 435),
(2, 0),
(3, 0),
(4, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(17, 0),
(19, -463),
(19, -462),
(19, -433),
(19, -432),
(19, -431),
(19, -430),
(19, -429),
(19, -427),
(19, -400),
(19, -399),
(19, -296),
(19, -244),
(19, -243),
(19, -242),
(19, -234),
(20, 0),
(22, 231),
(22, 234),
(22, 238),
(22, 242),
(22, 243),
(22, 244),
(22, 296),
(22, 399),
(22, 400),
(23, -463),
(23, -462),
(23, -433),
(23, -432),
(23, -431),
(23, -430),
(23, -429),
(23, -427),
(23, -400),
(23, -399),
(23, -296),
(23, -244),
(23, -243),
(23, -242),
(23, -238),
(23, -234),
(26, -463),
(26, -462),
(26, -433),
(26, -432),
(26, -431),
(26, -430),
(26, -429),
(26, -427),
(26, -400),
(26, -399),
(26, -296),
(26, -244),
(26, -243),
(26, -242),
(26, -238),
(26, -234),
(27, 325),
(28, 310),
(29, 302),
(30, 410),
(31, 309),
(32, 309),
(33, 307),
(34, 326),
(35, 306),
(36, 304),
(37, 0),
(40, 313),
(41, 435),
(47, 231),
(47, 234),
(47, 242),
(47, 243),
(47, 244),
(47, 296),
(47, 399),
(47, 400),
(48, 418),
(49, 417),
(52, 416),
(57, 238),
(57, 427),
(57, 429),
(57, 430),
(57, 431),
(57, 432),
(57, 433),
(57, 462),
(57, 463),
(58, 427),
(58, 429),
(58, 430),
(58, 431),
(58, 432),
(58, 433),
(58, 462),
(58, 463),
(61, 443),
(63, 0),
(65, 427),
(65, 429),
(65, 430),
(65, 431),
(65, 432),
(65, 433),
(65, 462),
(65, 463),
(68, 243),
(69, 459),
(70, 285),
(70, 316),
(71, 285),
(71, 316),
(72, 285),
(72, 316),
(73, 285),
(73, 316),
(74, 285),
(74, 316),
(75, 285),
(75, 316),
(77, 0),
(78, 435),
(81, 482),
(83, 472),
(83, 473),
(83, 474),
(87, 435),
(87, 707),
(87, 708),
(87, 798),
(88, 435),
(88, 466),
(88, 468),
(88, 479),
(89, 482),
(91, 542),
(91, 543),
(91, 544),
(91, 545),
(91, 546),
(91, 547),
(98, 472),
(98, 475),
(98, 476),
(99, 0),
(100, 466),
(100, 468),
(100, 472),
(100, 473),
(100, 474),
(100, 475),
(100, 476),
(100, 497),
(100, 498),
(100, 499),
(100, 500),
(100, 501),
(100, 502),
(100, 503),
(100, 504),
(100, 505),
(100, 506),
(100, 507),
(100, 542),
(100, 543),
(100, 544),
(100, 545),
(100, 546),
(100, 547),
(100, 706),
(100, 867),
(100, 868),
(100, 2177),
(100, 2178),
(100, 2180),
(100, 2185),
(100, 2186),
(100, 2187),
(100, 2189),
(100, 2190),
(100, 2191),
(100, 2192),
(100, 2196),
(100, 2197),
(101, 0),
(102, 473),
(102, 476),
(103, 474),
(103, 475),
(107, 472),
(107, 473),
(107, 474),
(107, 475),
(107, 476),
(107, 477),
(108, 472),
(108, 473),
(108, 474),
(108, 475),
(108, 476),
(108, 477),
(109, 472),
(109, 473),
(109, 474),
(109, 475),
(109, 476),
(109, 477),
(110, 0),
(112, 472),
(112, 473),
(112, 474),
(112, 475),
(112, 476),
(112, 477),
(116, 472),
(116, 473),
(116, 474),
(116, 475),
(116, 476),
(116, 477),
(118, 472),
(118, 473),
(118, 474),
(118, 475),
(118, 476),
(118, 477),
(120, 472),
(120, 473),
(120, 474),
(120, 475),
(120, 476),
(121, 472),
(121, 473),
(121, 474),
(121, 475),
(121, 476),
(121, 477),
(122, 472),
(122, 473),
(122, 474),
(122, 475),
(122, 476),
(122, 477),
(123, 472),
(123, 473),
(123, 474),
(123, 475),
(123, 476),
(123, 477),
(128, 470),
(133, 0),
(135, 0),
(135, 481),
(136, 472),
(136, 473),
(136, 474),
(136, 475),
(136, 476),
(136, 477),
(137, 472),
(137, 473),
(137, 474),
(137, 475),
(137, 476),
(137, 477),
(139, 472),
(139, 473),
(139, 474),
(139, 475),
(139, 476),
(139, 477),
(140, 472),
(140, 473),
(140, 474),
(140, 475),
(140, 476),
(140, 477),
(141, 466),
(141, 468),
(141, 479),
(141, 707),
(141, 708),
(141, 798),
(141, 993),
(141, 1250),
(141, 1532),
(143, 0),
(144, 0),
(159, 472),
(159, 473),
(159, 474),
(159, 475),
(159, 476),
(159, 477),
(160, 472),
(160, 473),
(160, 474),
(160, 475),
(160, 476),
(160, 477),
(161, 472),
(161, 473),
(161, 474),
(161, 475),
(161, 476),
(161, 477),
(162, 472),
(162, 473),
(162, 474),
(162, 475),
(162, 476),
(162, 477),
(163, 472),
(163, 473),
(163, 474),
(163, 475),
(163, 476),
(163, 477),
(168, 479),
(173, 708),
(175, 0),
(179, 435),
(180, 435),
(186, 435),
(190, 435),
(191, 435),
(194, 435),
(199, 435),
(206, 0),
(207, 0),
(207, 481),
(208, 0),
(210, 435),
(211, 435),
(214, 435),
(215, 435),
(217, 435),
(218, 435),
(220, -507),
(220, -506),
(220, -505),
(220, -504),
(220, -503),
(220, -502),
(220, -501),
(220, -500),
(220, -499),
(220, -479),
(221, 0),
(222, 435),
(223, 435),
(224, 435),
(225, 435),
(226, 435),
(227, 435),
(228, 435),
(229, 470),
(230, 470),
(231, 470),
(232, 470),
(234, 435),
(235, 0),
(236, -477),
(236, -476),
(236, -475),
(236, -474),
(236, -473),
(236, -472),
(237, 0),
(238, 798),
(239, 707),
(240, 993),
(242, 1532),
(582, 2188),
(600, 0),
(601, 0),
(602, 0),
(603, 0),
(604, 466),
(604, 472),
(604, 473),
(604, 474),
(604, 476),
(604, 2178),
(605, 0),
(606, 0),
(607, 706),
(608, 2177);

-- --------------------------------------------------------

--
-- Table structure for table `j78lr_newsfeeds`
--

CREATE TABLE `j78lr_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `link` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `cache_time` int(10) UNSIGNED NOT NULL DEFAULT '3600',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) UNSIGNED DEFAULT NULL,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `metakey` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `images` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `j78lr_overrider`
--

CREATE TABLE `j78lr_overrider` (
  `id` int(10) NOT NULL COMMENT 'Primary Key',
  `constant` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `string` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `j78lr_postinstall_messages`
--

CREATE TABLE `j78lr_postinstall_messages` (
  `postinstall_message_id` bigint(20) UNSIGNED NOT NULL,
  `extension_id` bigint(20) NOT NULL DEFAULT '700' COMMENT 'FK to #__extensions',
  `title_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language_extension` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint(3) NOT NULL DEFAULT '1',
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint(3) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `j78lr_postinstall_messages`
--

INSERT INTO `j78lr_postinstall_messages` (`postinstall_message_id`, `extension_id`, `title_key`, `description_key`, `action_key`, `language_extension`, `language_client_id`, `type`, `action_file`, `action`, `condition_file`, `condition_method`, `version_introduced`, `enabled`) VALUES
(1, 700, 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_TITLE', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_BODY', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_ACTION', 'plg_twofactorauth_totp', 1, 'action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_condition', '3.2.0', 1),
(2, 700, 'COM_CPANEL_WELCOME_BEGINNERS_TITLE', 'COM_CPANEL_WELCOME_BEGINNERS_MESSAGE', '', 'com_cpanel', 1, 'message', '', '', '', '', '3.2.0', 1),
(3, 700, 'COM_CPANEL_MSG_STATS_COLLECTION_TITLE', 'COM_CPANEL_MSG_STATS_COLLECTION_BODY', '', 'com_cpanel', 1, 'message', '', '', 'admin://components/com_admin/postinstall/statscollection.php', 'admin_postinstall_statscollection_condition', '3.5.0', 1),
(4, 700, 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME', 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME_BODY', 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME_ACTION', 'plg_system_updatenotification', 1, 'action', 'site://plugins/system/updatenotification/postinstall/updatecachetime.php', 'updatecachetime_postinstall_action', 'site://plugins/system/updatenotification/postinstall/updatecachetime.php', 'updatecachetime_postinstall_condition', '3.6.3', 1);

-- --------------------------------------------------------

--
-- Table structure for table `j78lr_redirect_links`
--

CREATE TABLE `j78lr_redirect_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `old_url` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `new_url` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referer` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `header` smallint(3) NOT NULL DEFAULT '301'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `j78lr_schemas`
--

CREATE TABLE `j78lr_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `j78lr_schemas`
--

INSERT INTO `j78lr_schemas` (`extension_id`, `version_id`) VALUES
(700, '3.6.3-2016-08-16'),
(10018, '4.8.7'),
(10025, '1.3.9'),
(10026, '1.1.9'),
(10027, '1.2.3'),
(10028, '1.0.1'),
(10029, '1.0.0'),
(10030, '1.0.6'),
(10031, '2.1.0'),
(10039, '4.0.3'),
(10044, '1.2.1'),
(10054, '1.0.0');

-- --------------------------------------------------------

--
-- Table structure for table `j78lr_session`
--

CREATE TABLE `j78lr_session` (
  `session_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `guest` tinyint(4) UNSIGNED DEFAULT '1',
  `time` varchar(14) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `data` mediumtext COLLATE utf8mb4_unicode_ci,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `j78lr_session`
--

INSERT INTO `j78lr_session` (`session_id`, `client_id`, `guest`, `time`, `data`, `userid`, `username`) VALUES
('9db882f349f1ce8448952fe72a303042', 1, 0, '1478694713', 'joomla|s:1364:"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjo0OntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aTo4O3M6NToidG9rZW4iO3M6MzI6InJ1MGdmejUyV2hQR29XSDZRQVJ0OGQ5aG9aWUdBZlVjIjtzOjU6InRpbWVyIjtPOjg6InN0ZENsYXNzIjozOntzOjU6InN0YXJ0IjtpOjE0Nzg2OTQ1NzM7czo0OiJsYXN0IjtpOjE0Nzg2OTQ2ODU7czozOiJub3ciO2k6MTQ3ODY5NDY4Njt9fXM6ODoicmVnaXN0cnkiO086MjQ6Ikpvb21sYVxSZWdpc3RyeVxSZWdpc3RyeSI6Mzp7czo3OiIAKgBkYXRhIjtPOjg6InN0ZENsYXNzIjozOntzOjEzOiJjb21faW5zdGFsbGVyIjtPOjg6InN0ZENsYXNzIjoyOntzOjc6Im1lc3NhZ2UiO3M6MDoiIjtzOjE3OiJleHRlbnNpb25fbWVzc2FnZSI7czowOiIiO31zOjEzOiJjb21fdGVtcGxhdGVzIjtPOjg6InN0ZENsYXNzIjoxOntzOjQ6ImVkaXQiO086ODoic3RkQ2xhc3MiOjE6e3M6NToic3R5bGUiO086ODoic3RkQ2xhc3MiOjI6e3M6MjoiaWQiO2E6MTp7aTowO2k6MjE7fXM6NDoiZGF0YSI7Tjt9fX1zOjM6ImpzbiI7Tzo4OiJzdGRDbGFzcyI6MTp7czo4OiJ0ZW1wbGF0ZSI7Tzo4OiJzdGRDbGFzcyI6Mjp7czoxODoibWF4Q29tcHJlc3Npb25TaXplIjtpOjEwMDtzOjE0OiJjYWNoZURpcmVjdG9yeSI7czo2OiJjYWNoZS8iO319fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjE7czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fXM6NDoidXNlciI7Tzo1OiJKVXNlciI6MTp7czoyOiJpZCI7czoyOiIzMiI7fXM6MzI6ImU5MjY1ODhlY2U4YjUxNzkzMzI3MTJhZWE3ZjNjYTg2IjtzOjc1OiJ7InF1ZXJ5U3RyaW5nIjoib3B0aW9uPWNvbV90ZW1wbGF0ZXMmdGFzaz1zdHlsZS5lZGl0JmlkPTIxIiwib2JqZWN0X2lkIjoyMX0iO319czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9";', 32, 'root');

-- --------------------------------------------------------

--
-- Table structure for table `j78lr_tags`
--

CREATE TABLE `j78lr_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `j78lr_tags`
--

INSERT INTO `j78lr_tags` (`id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `created_by_alias`, `modified_user_id`, `modified_time`, `images`, `urls`, `hits`, `language`, `version`, `publish_up`, `publish_down`) VALUES
(1, 0, 0, 1, 0, '', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '', '', '', '', 32, '2011-01-01 00:00:01', '', 0, '0000-00-00 00:00:00', '', '', 0, '*', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `j78lr_template_styles`
--

CREATE TABLE `j78lr_template_styles` (
  `id` int(10) UNSIGNED NOT NULL,
  `template` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `home` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `j78lr_template_styles`
--

INSERT INTO `j78lr_template_styles` (`id`, `template`, `client_id`, `home`, `title`, `params`) VALUES
(5, 'hathor', 1, '0', 'Hathor - Default', '{"showSiteName":"0","colourChoice":"","boldText":"0"}'),
(7, 'protostar', 0, '0', 'protostar - Default', '{"templateColor":"","logoFile":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}'),
(8, 'isis', 1, '1', 'isis - Default', '{"templateColor":"#10223e","headerColor":"#1a3867","sidebarColor":"#0088cc","linkColor":"#0088cc","loginBackgroundColor":"#17568c","logoFile":"","loginLogoFile":"","admin_menus":1,"displayHeader":1,"statusFixed":1,"stickyToolbar":1}'),
(18, 'jsn_mobilize', 0, '0', 'JSN Mobilize - Default', '{}'),
(21, 'jsn_venture_free', 0, '1', 'JSN Venture FREE - Default', '{"logoColored":"0","logoFile":"images\\/transferir.png","mobileLogo":"","favicon":"","logoLink":"index.php","logoSlogan":"Demo","templateWidth":{"type":"fixed","fixed":"1150","float":"90"},"showFrontpage":"1","desktopSwitcher":"1","promoColumns":{"01:promo-left":"span3","00:promo":"span6","02:promo-right":"span3"},"mainColumns":{"01:left":"span3","00:content":"span6","02:right":"span3"},"contentColumns":{"01:innerleft":"span3","00:component":"span6","02:innerright":"span3"},"userColumns":{"00:user5":"span4","00:user6":"span4","00:user7":"span4"},"menuSticky":{"mobile":"1","desktop":"0"},"sitetoolsColors":"{\\"list\\":[\\"blue\\",\\"red\\",\\"green\\",\\"violet\\",\\"orange\\",\\"grey\\"],\\"colors\\":[\\"blue\\",\\"red\\",\\"green\\",\\"violet\\",\\"orange\\",\\"grey\\"]}","socialIcons":{"status":["facebook","twitter","youtube"]},"language":""}');

-- --------------------------------------------------------

--
-- Table structure for table `j78lr_ucm_base`
--

CREATE TABLE `j78lr_ucm_base` (
  `ucm_id` int(10) UNSIGNED NOT NULL,
  `ucm_item_id` int(10) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `j78lr_ucm_content`
--

CREATE TABLE `j78lr_ucm_content` (
  `core_content_id` int(10) UNSIGNED NOT NULL,
  `core_type_alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `core_body` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_state` tinyint(1) NOT NULL DEFAULT '0',
  `core_checked_out_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_checked_out_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_featured` tinyint(4) UNSIGNED NOT NULL DEFAULT '0',
  `core_metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_publish_up` datetime NOT NULL,
  `core_publish_down` datetime NOT NULL,
  `core_content_item_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'ID from the individual type table',
  `asset_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'FK to the #__assets table.',
  `core_images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `core_ordering` int(11) NOT NULL DEFAULT '0',
  `core_metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `core_type_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Contains core content data in name spaced fields';

-- --------------------------------------------------------

--
-- Table structure for table `j78lr_ucm_history`
--

CREATE TABLE `j78lr_ucm_history` (
  `version_id` int(10) UNSIGNED NOT NULL,
  `ucm_item_id` int(10) UNSIGNED NOT NULL,
  `ucm_type_id` int(10) UNSIGNED NOT NULL,
  `version_note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `character_count` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=auto delete; 1=keep'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `j78lr_ucm_history`
--

INSERT INTO `j78lr_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(4, 8, 5, '', '2016-11-03 21:08:35', 32, 465, 'a23202a62b0040bfc251eea09e9aeb604fad778d', '{"id":8,"asset_id":58,"parent_id":"1","lft":"9","rgt":10,"level":1,"path":null,"extension":"com_content","title":"Article","alias":"article","note":null,"description":null,"published":1,"checked_out":null,"checked_out_time":null,"access":1,"params":null,"metadesc":null,"metakey":null,"metadata":null,"created_user_id":"32","created_time":"2016-11-03 21:08:35","modified_user_id":null,"modified_time":"2016-11-03 21:08:35","hits":null,"language":"*","version":null}', 0),
(5, 2, 1, '', '2016-11-03 21:08:35', 32, 3881, 'ea0f082b2508a2e1b875c33dacb4b220a6392d06', '{"id":2,"asset_id":59,"title":"Historial","alias":"historial","introtext":"<h1 class=\\"articleContentH1\\" style=\\"font-family: \'Century Gothic\', sans-serif; font-size: 25px; font-weight: normal; color: #1a7ae2; padding: 0px; margin: 0px; width: 940px; height: 33px;\\">Historial<\\/h1>\\r\\n<p style=\\"width: 940px; float: left; font-size: 13px; color: #141507; line-height: 19px; font-family: \'Century Gothic\', sans-serif; text-align: justify;\\">Em agosto de 1962 um grupo de amigos juntou-se e fundou aquele que viria a ser uma refer\\u00eancia no associativismo desportivo da regi\\u00e3o de Cascais, o Clube Desportivo do Arneiro (CDA). A partir dessa data, consideraram-se s\\u00f3cios fundadores do Clube as seguintes personalidades: Jo\\u00e3o Rodrigues de Almeida; Ant\\u00f3nio Faria, Francisco Fung\\u00e3o; Francisco Parreira e Alcindo Moreira.\\u00a0<br \\/>Inicialmente, o Clube desenvolvia a sua actividade num dos quartos da casa do s\\u00f3cio n\\u00ba 1 - Jo\\u00e3o Rodrigues de Almeida, no Largo do Chafariz - Arneiro. Mais tarde, este mesmo s\\u00f3cio e a sua esposa, a Sra. Virg\\u00ednia Rodrigues, cederam ao Clube o terreno onde est\\u00e1 arquitectada a sede do CDA. Nos finais dos anos 70 (1976) a sede do Clube sofreu uma amplia\\u00e7\\u00e3o, passando de um para dois pisos, situa\\u00e7\\u00e3o actual. Aquando desta amplia\\u00e7\\u00e3o foram muitas as individualidades que se comprometeram a direccionar os esfor\\u00e7os num s\\u00f3 sentido, atrav\\u00e9s de trabalho e de ajuda monet\\u00e1ria.\\u00a0<br \\/>De entre muitas, destacam-se alguns nomes: - Eng. Francisco dos Anjos Diniz. - Francisco da Silva Santos - Jo\\u00e3o Ribeiro Milheiro O Clube Desportivo do Arneiro, ao longo dos anos, tem desenvolvido v\\u00e1rias actividades, nomeadamente nas \\u00e1reas do Desporto, Cultura e Ac\\u00e7\\u00e3o Social.<\\/p>\\r\\n<p style=\\"width: 940px; float: left; font-size: 13px; color: #141507; line-height: 19px; font-family: \'Century Gothic\', sans-serif;\\">S\\u00f3cios Fundadores<\\/p>\\r\\n<p style=\\"width: 940px; float: left; font-size: 13px; color: #141507; line-height: 19px; font-family: \'Century Gothic\', sans-serif;\\">Da esquerda para a direita: Francisco Fung\\u00e3o, Jo\\u00e3o Rodrigues de Almeida, Francisco Parreira, Ant\\u00f3nio Faria, Alcindo Moreira.<\\/p>","fulltext":"","state":1,"catid":8,"created":"2016-11-03 21:08:35","created_by":"32","created_by_alias":"","modified":"2016-11-03 21:08:35","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2016-11-03 21:08:35","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(6, 8, 5, '', '2016-11-03 21:09:23', 32, 577, '56d6de964ad0bcbfff29fff7cf8226e2525a905b', '{"id":8,"asset_id":"58","parent_id":"1","lft":"9","rgt":"10","level":"1","path":"article","extension":"com_content","title":"Articles","alias":"article","note":"","description":"","published":"1","checked_out":"32","checked_out_time":"2016-11-03 21:09:19","access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"32","created_time":"2016-11-03 21:08:35","modified_user_id":"32","modified_time":"2016-11-03 21:09:23","hits":"0","language":"*","version":"1"}', 0);
INSERT INTO `j78lr_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(7, 2, 1, '', '2016-11-03 22:48:06', 32, 46492, '7c481011180ba204b41cd20e024ebce6239dd765', '{"id":2,"asset_id":"59","title":"Historial","alias":"historial","introtext":"<h1 class=\\"articleContentH1\\" style=\\"font-family: \'Century Gothic\', sans-serif; font-size: 25px; font-weight: normal; color: #1a7ae2; padding: 0px; margin: 0px; width: 940px; height: 33px;\\"><!-- [if gte mso 9]><xml>\\r\\n <o:OfficeDocumentSettings>\\r\\n  <o:AllowPNG\\/>\\r\\n  <o:PixelsPerInch>96<\\/o:PixelsPerInch>\\r\\n <\\/o:OfficeDocumentSettings>\\r\\n<\\/xml><![endif]--> <!-- [if gte mso 9]><xml>\\r\\n <w:WordDocument>\\r\\n  <w:View>Normal<\\/w:View>\\r\\n  <w:Zoom>0<\\/w:Zoom>\\r\\n  <w:TrackMoves\\/>\\r\\n  <w:TrackFormatting\\/>\\r\\n  <w:HyphenationZone>21<\\/w:HyphenationZone>\\r\\n  <w:PunctuationKerning\\/>\\r\\n  <w:ValidateAgainstSchemas\\/>\\r\\n  <w:SaveIfXMLInvalid>false<\\/w:SaveIfXMLInvalid>\\r\\n  <w:IgnoreMixedContent>false<\\/w:IgnoreMixedContent>\\r\\n  <w:AlwaysShowPlaceholderText>false<\\/w:AlwaysShowPlaceholderText>\\r\\n  <w:DoNotPromoteQF\\/>\\r\\n  <w:LidThemeOther>PT<\\/w:LidThemeOther>\\r\\n  <w:LidThemeAsian>X-NONE<\\/w:LidThemeAsian>\\r\\n  <w:LidThemeComplexScript>X-NONE<\\/w:LidThemeComplexScript>\\r\\n  <w:Compatibility>\\r\\n   <w:BreakWrappedTables\\/>\\r\\n   <w:SnapToGridInCell\\/>\\r\\n   <w:WrapTextWithPunct\\/>\\r\\n   <w:UseAsianBreakRules\\/>\\r\\n   <w:DontGrowAutofit\\/>\\r\\n   <w:SplitPgBreakAndParaMark\\/>\\r\\n   <w:EnableOpenTypeKerning\\/>\\r\\n   <w:DontFlipMirrorIndents\\/>\\r\\n   <w:OverrideTableStyleHps\\/>\\r\\n  <\\/w:Compatibility>\\r\\n  <m:mathPr>\\r\\n   <m:mathFont m:val=\\"Cambria Math\\"\\/>\\r\\n   <m:brkBin m:val=\\"before\\"\\/>\\r\\n   <m:brkBinSub m:val=\\"&#45;-\\"\\/>\\r\\n   <m:smallFrac m:val=\\"off\\"\\/>\\r\\n   <m:dispDef\\/>\\r\\n   <m:lMargin m:val=\\"0\\"\\/>\\r\\n   <m:rMargin m:val=\\"0\\"\\/>\\r\\n   <m:defJc m:val=\\"centerGroup\\"\\/>\\r\\n   <m:wrapIndent m:val=\\"1440\\"\\/>\\r\\n   <m:intLim m:val=\\"subSup\\"\\/>\\r\\n   <m:naryLim m:val=\\"undOvr\\"\\/>\\r\\n  <\\/m:mathPr><\\/w:WordDocument>\\r\\n<\\/xml><![endif]--><!-- [if gte mso 9]><xml>\\r\\n <w:LatentStyles DefLockedState=\\"false\\" DefUnhideWhenUsed=\\"false\\"\\r\\n  DefSemiHidden=\\"false\\" DefQFormat=\\"false\\" DefPriority=\\"99\\"\\r\\n  LatentStyleCount=\\"382\\">\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"0\\" QFormat=\\"true\\" Name=\\"Normal\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"9\\" QFormat=\\"true\\" Name=\\"heading 1\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"9\\" SemiHidden=\\"true\\"\\r\\n   UnhideWhenUsed=\\"true\\" QFormat=\\"true\\" Name=\\"heading 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"9\\" SemiHidden=\\"true\\"\\r\\n   UnhideWhenUsed=\\"true\\" QFormat=\\"true\\" Name=\\"heading 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"9\\" SemiHidden=\\"true\\"\\r\\n   UnhideWhenUsed=\\"true\\" QFormat=\\"true\\" Name=\\"heading 4\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"9\\" SemiHidden=\\"true\\"\\r\\n   UnhideWhenUsed=\\"true\\" QFormat=\\"true\\" Name=\\"heading 5\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"9\\" SemiHidden=\\"true\\"\\r\\n   UnhideWhenUsed=\\"true\\" QFormat=\\"true\\" Name=\\"heading 6\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"9\\" SemiHidden=\\"true\\"\\r\\n   UnhideWhenUsed=\\"true\\" QFormat=\\"true\\" Name=\\"heading 7\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"9\\" SemiHidden=\\"true\\"\\r\\n   UnhideWhenUsed=\\"true\\" QFormat=\\"true\\" Name=\\"heading 8\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"9\\" SemiHidden=\\"true\\"\\r\\n   UnhideWhenUsed=\\"true\\" QFormat=\\"true\\" Name=\\"heading 9\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"index 1\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"index 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"index 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"index 4\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"index 5\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"index 6\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"index 7\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"index 8\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"index 9\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"39\\" SemiHidden=\\"true\\"\\r\\n   UnhideWhenUsed=\\"true\\" Name=\\"toc 1\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"39\\" SemiHidden=\\"true\\"\\r\\n   UnhideWhenUsed=\\"true\\" Name=\\"toc 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"39\\" SemiHidden=\\"true\\"\\r\\n   UnhideWhenUsed=\\"true\\" Name=\\"toc 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"39\\" SemiHidden=\\"true\\"\\r\\n   UnhideWhenUsed=\\"true\\" Name=\\"toc 4\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"39\\" SemiHidden=\\"true\\"\\r\\n   UnhideWhenUsed=\\"true\\" Name=\\"toc 5\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"39\\" SemiHidden=\\"true\\"\\r\\n   UnhideWhenUsed=\\"true\\" Name=\\"toc 6\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"39\\" SemiHidden=\\"true\\"\\r\\n   UnhideWhenUsed=\\"true\\" Name=\\"toc 7\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"39\\" SemiHidden=\\"true\\"\\r\\n   UnhideWhenUsed=\\"true\\" Name=\\"toc 8\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"39\\" SemiHidden=\\"true\\"\\r\\n   UnhideWhenUsed=\\"true\\" Name=\\"toc 9\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Normal Indent\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"footnote text\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"annotation text\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"header\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"footer\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"index heading\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"35\\" SemiHidden=\\"true\\"\\r\\n   UnhideWhenUsed=\\"true\\" QFormat=\\"true\\" Name=\\"caption\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"table of figures\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"envelope address\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"envelope return\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"footnote reference\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"annotation reference\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"line number\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"page number\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"endnote reference\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"endnote text\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"table of authorities\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"macro\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"toa heading\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"List\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"List Bullet\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"List Number\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"List 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"List 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"List 4\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"List 5\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"List Bullet 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"List Bullet 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"List Bullet 4\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"List Bullet 5\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"List Number 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"List Number 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"List Number 4\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"List Number 5\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"10\\" QFormat=\\"true\\" Name=\\"Title\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Closing\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Signature\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"1\\" SemiHidden=\\"true\\"\\r\\n   UnhideWhenUsed=\\"true\\" Name=\\"Default Paragraph Font\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Body Text\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Body Text Indent\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"List Continue\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"List Continue 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"List Continue 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"List Continue 4\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"List Continue 5\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Message Header\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"11\\" QFormat=\\"true\\" Name=\\"Subtitle\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Salutation\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Date\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Body Text First Indent\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Body Text First Indent 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Note Heading\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Body Text 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Body Text 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Body Text Indent 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Body Text Indent 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Block Text\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Hyperlink\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"FollowedHyperlink\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"22\\" QFormat=\\"true\\" Name=\\"Strong\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"20\\" QFormat=\\"true\\" Name=\\"Emphasis\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Document Map\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Plain Text\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"E-mail Signature\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"HTML Top of Form\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"HTML Bottom of Form\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Normal (Web)\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"HTML Acronym\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"HTML Address\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"HTML Cite\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"HTML Code\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"HTML Definition\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"HTML Keyboard\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"HTML Preformatted\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"HTML Sample\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"HTML Typewriter\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"HTML Variable\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Normal Table\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"annotation subject\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"No List\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Outline List 1\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Outline List 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Outline List 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Table Simple 1\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Table Simple 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Table Simple 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Table Classic 1\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Table Classic 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Table Classic 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Table Classic 4\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Table Colorful 1\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Table Colorful 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Table Colorful 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Table Columns 1\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Table Columns 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Table Columns 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Table Columns 4\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Table Columns 5\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Table Grid 1\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Table Grid 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Table Grid 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Table Grid 4\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Table Grid 5\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Table Grid 6\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Table Grid 7\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Table Grid 8\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Table List 1\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Table List 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Table List 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Table List 4\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Table List 5\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Table List 6\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Table List 7\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Table List 8\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Table 3D effects 1\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Table 3D effects 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Table 3D effects 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Table Contemporary\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Table Elegant\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Table Professional\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Table Subtle 1\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Table Subtle 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Table Web 1\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Table Web 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Table Web 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Balloon Text\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"39\\" Name=\\"Table Grid\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Table Theme\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Note Level 1\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Note Level 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Note Level 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Note Level 4\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Note Level 5\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Note Level 6\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Note Level 7\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Note Level 8\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Note Level 9\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" Name=\\"Placeholder Text\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"1\\" QFormat=\\"true\\" Name=\\"No Spacing\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"60\\" Name=\\"Light Shading\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"61\\" Name=\\"Light List\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"62\\" Name=\\"Light Grid\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"63\\" Name=\\"Medium Shading 1\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"64\\" Name=\\"Medium Shading 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"65\\" Name=\\"Medium List 1\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"66\\" Name=\\"Medium List 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"67\\" Name=\\"Medium Grid 1\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"68\\" Name=\\"Medium Grid 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"69\\" Name=\\"Medium Grid 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"70\\" Name=\\"Dark List\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"71\\" Name=\\"Colorful Shading\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"72\\" Name=\\"Colorful List\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"73\\" Name=\\"Colorful Grid\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"60\\" Name=\\"Light Shading Accent 1\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"61\\" Name=\\"Light List Accent 1\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"62\\" Name=\\"Light Grid Accent 1\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"63\\" Name=\\"Medium Shading 1 Accent 1\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"64\\" Name=\\"Medium Shading 2 Accent 1\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"65\\" Name=\\"Medium List 1 Accent 1\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" Name=\\"Revision\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"34\\" QFormat=\\"true\\"\\r\\n   Name=\\"List Paragraph\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"29\\" QFormat=\\"true\\" Name=\\"Quote\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"30\\" QFormat=\\"true\\"\\r\\n   Name=\\"Intense Quote\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"66\\" Name=\\"Medium List 2 Accent 1\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"67\\" Name=\\"Medium Grid 1 Accent 1\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"68\\" Name=\\"Medium Grid 2 Accent 1\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"69\\" Name=\\"Medium Grid 3 Accent 1\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"70\\" Name=\\"Dark List Accent 1\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"71\\" Name=\\"Colorful Shading Accent 1\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"72\\" Name=\\"Colorful List Accent 1\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"73\\" Name=\\"Colorful Grid Accent 1\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"60\\" Name=\\"Light Shading Accent 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"61\\" Name=\\"Light List Accent 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"62\\" Name=\\"Light Grid Accent 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"63\\" Name=\\"Medium Shading 1 Accent 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"64\\" Name=\\"Medium Shading 2 Accent 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"65\\" Name=\\"Medium List 1 Accent 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"66\\" Name=\\"Medium List 2 Accent 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"67\\" Name=\\"Medium Grid 1 Accent 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"68\\" Name=\\"Medium Grid 2 Accent 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"69\\" Name=\\"Medium Grid 3 Accent 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"70\\" Name=\\"Dark List Accent 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"71\\" Name=\\"Colorful Shading Accent 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"72\\" Name=\\"Colorful List Accent 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"73\\" Name=\\"Colorful Grid Accent 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"60\\" Name=\\"Light Shading Accent 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"61\\" Name=\\"Light List Accent 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"62\\" Name=\\"Light Grid Accent 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"63\\" Name=\\"Medium Shading 1 Accent 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"64\\" Name=\\"Medium Shading 2 Accent 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"65\\" Name=\\"Medium List 1 Accent 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"66\\" Name=\\"Medium List 2 Accent 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"67\\" Name=\\"Medium Grid 1 Accent 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"68\\" Name=\\"Medium Grid 2 Accent 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"69\\" Name=\\"Medium Grid 3 Accent 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"70\\" Name=\\"Dark List Accent 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"71\\" Name=\\"Colorful Shading Accent 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"72\\" Name=\\"Colorful List Accent 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"73\\" Name=\\"Colorful Grid Accent 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"60\\" Name=\\"Light Shading Accent 4\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"61\\" Name=\\"Light List Accent 4\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"62\\" Name=\\"Light Grid Accent 4\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"63\\" Name=\\"Medium Shading 1 Accent 4\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"64\\" Name=\\"Medium Shading 2 Accent 4\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"65\\" Name=\\"Medium List 1 Accent 4\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"66\\" Name=\\"Medium List 2 Accent 4\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"67\\" Name=\\"Medium Grid 1 Accent 4\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"68\\" Name=\\"Medium Grid 2 Accent 4\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"69\\" Name=\\"Medium Grid 3 Accent 4\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"70\\" Name=\\"Dark List Accent 4\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"71\\" Name=\\"Colorful Shading Accent 4\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"72\\" Name=\\"Colorful List Accent 4\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"73\\" Name=\\"Colorful Grid Accent 4\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"60\\" Name=\\"Light Shading Accent 5\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"61\\" Name=\\"Light List Accent 5\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"62\\" Name=\\"Light Grid Accent 5\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"63\\" Name=\\"Medium Shading 1 Accent 5\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"64\\" Name=\\"Medium Shading 2 Accent 5\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"65\\" Name=\\"Medium List 1 Accent 5\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"66\\" Name=\\"Medium List 2 Accent 5\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"67\\" Name=\\"Medium Grid 1 Accent 5\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"68\\" Name=\\"Medium Grid 2 Accent 5\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"69\\" Name=\\"Medium Grid 3 Accent 5\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"70\\" Name=\\"Dark List Accent 5\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"71\\" Name=\\"Colorful Shading Accent 5\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"72\\" Name=\\"Colorful List Accent 5\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"73\\" Name=\\"Colorful Grid Accent 5\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"60\\" Name=\\"Light Shading Accent 6\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"61\\" Name=\\"Light List Accent 6\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"62\\" Name=\\"Light Grid Accent 6\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"63\\" Name=\\"Medium Shading 1 Accent 6\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"64\\" Name=\\"Medium Shading 2 Accent 6\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"65\\" Name=\\"Medium List 1 Accent 6\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"66\\" Name=\\"Medium List 2 Accent 6\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"67\\" Name=\\"Medium Grid 1 Accent 6\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"68\\" Name=\\"Medium Grid 2 Accent 6\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"69\\" Name=\\"Medium Grid 3 Accent 6\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"70\\" Name=\\"Dark List Accent 6\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"71\\" Name=\\"Colorful Shading Accent 6\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"72\\" Name=\\"Colorful List Accent 6\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"73\\" Name=\\"Colorful Grid Accent 6\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"19\\" QFormat=\\"true\\"\\r\\n   Name=\\"Subtle Emphasis\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"21\\" QFormat=\\"true\\"\\r\\n   Name=\\"Intense Emphasis\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"31\\" QFormat=\\"true\\"\\r\\n   Name=\\"Subtle Reference\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"32\\" QFormat=\\"true\\"\\r\\n   Name=\\"Intense Reference\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"33\\" QFormat=\\"true\\" Name=\\"Book Title\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"37\\" SemiHidden=\\"true\\"\\r\\n   UnhideWhenUsed=\\"true\\" Name=\\"Bibliography\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"39\\" SemiHidden=\\"true\\"\\r\\n   UnhideWhenUsed=\\"true\\" QFormat=\\"true\\" Name=\\"TOC Heading\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"41\\" Name=\\"Plain Table 1\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"42\\" Name=\\"Plain Table 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"43\\" Name=\\"Plain Table 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"44\\" Name=\\"Plain Table 4\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"45\\" Name=\\"Plain Table 5\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"40\\" Name=\\"Grid Table Light\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"46\\" Name=\\"Grid Table 1 Light\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"47\\" Name=\\"Grid Table 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"48\\" Name=\\"Grid Table 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"49\\" Name=\\"Grid Table 4\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"50\\" Name=\\"Grid Table 5 Dark\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"51\\" Name=\\"Grid Table 6 Colorful\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"52\\" Name=\\"Grid Table 7 Colorful\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"46\\"\\r\\n   Name=\\"Grid Table 1 Light Accent 1\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"47\\" Name=\\"Grid Table 2 Accent 1\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"48\\" Name=\\"Grid Table 3 Accent 1\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"49\\" Name=\\"Grid Table 4 Accent 1\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"50\\" Name=\\"Grid Table 5 Dark Accent 1\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"51\\"\\r\\n   Name=\\"Grid Table 6 Colorful Accent 1\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"52\\"\\r\\n   Name=\\"Grid Table 7 Colorful Accent 1\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"46\\"\\r\\n   Name=\\"Grid Table 1 Light Accent 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"47\\" Name=\\"Grid Table 2 Accent 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"48\\" Name=\\"Grid Table 3 Accent 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"49\\" Name=\\"Grid Table 4 Accent 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"50\\" Name=\\"Grid Table 5 Dark Accent 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"51\\"\\r\\n   Name=\\"Grid Table 6 Colorful Accent 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"52\\"\\r\\n   Name=\\"Grid Table 7 Colorful Accent 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"46\\"\\r\\n   Name=\\"Grid Table 1 Light Accent 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"47\\" Name=\\"Grid Table 2 Accent 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"48\\" Name=\\"Grid Table 3 Accent 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"49\\" Name=\\"Grid Table 4 Accent 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"50\\" Name=\\"Grid Table 5 Dark Accent 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"51\\"\\r\\n   Name=\\"Grid Table 6 Colorful Accent 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"52\\"\\r\\n   Name=\\"Grid Table 7 Colorful Accent 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"46\\"\\r\\n   Name=\\"Grid Table 1 Light Accent 4\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"47\\" Name=\\"Grid Table 2 Accent 4\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"48\\" Name=\\"Grid Table 3 Accent 4\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"49\\" Name=\\"Grid Table 4 Accent 4\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"50\\" Name=\\"Grid Table 5 Dark Accent 4\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"51\\"\\r\\n   Name=\\"Grid Table 6 Colorful Accent 4\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"52\\"\\r\\n   Name=\\"Grid Table 7 Colorful Accent 4\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"46\\"\\r\\n   Name=\\"Grid Table 1 Light Accent 5\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"47\\" Name=\\"Grid Table 2 Accent 5\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"48\\" Name=\\"Grid Table 3 Accent 5\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"49\\" Name=\\"Grid Table 4 Accent 5\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"50\\" Name=\\"Grid Table 5 Dark Accent 5\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"51\\"\\r\\n   Name=\\"Grid Table 6 Colorful Accent 5\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"52\\"\\r\\n   Name=\\"Grid Table 7 Colorful Accent 5\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"46\\"\\r\\n   Name=\\"Grid Table 1 Light Accent 6\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"47\\" Name=\\"Grid Table 2 Accent 6\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"48\\" Name=\\"Grid Table 3 Accent 6\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"49\\" Name=\\"Grid Table 4 Accent 6\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"50\\" Name=\\"Grid Table 5 Dark Accent 6\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"51\\"\\r\\n   Name=\\"Grid Table 6 Colorful Accent 6\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"52\\"\\r\\n   Name=\\"Grid Table 7 Colorful Accent 6\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"46\\" Name=\\"List Table 1 Light\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"47\\" Name=\\"List Table 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"48\\" Name=\\"List Table 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"49\\" Name=\\"List Table 4\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"50\\" Name=\\"List Table 5 Dark\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"51\\" Name=\\"List Table 6 Colorful\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"52\\" Name=\\"List Table 7 Colorful\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"46\\"\\r\\n   Name=\\"List Table 1 Light Accent 1\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"47\\" Name=\\"List Table 2 Accent 1\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"48\\" Name=\\"List Table 3 Accent 1\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"49\\" Name=\\"List Table 4 Accent 1\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"50\\" Name=\\"List Table 5 Dark Accent 1\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"51\\"\\r\\n   Name=\\"List Table 6 Colorful Accent 1\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"52\\"\\r\\n   Name=\\"List Table 7 Colorful Accent 1\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"46\\"\\r\\n   Name=\\"List Table 1 Light Accent 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"47\\" Name=\\"List Table 2 Accent 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"48\\" Name=\\"List Table 3 Accent 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"49\\" Name=\\"List Table 4 Accent 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"50\\" Name=\\"List Table 5 Dark Accent 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"51\\"\\r\\n   Name=\\"List Table 6 Colorful Accent 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"52\\"\\r\\n   Name=\\"List Table 7 Colorful Accent 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"46\\"\\r\\n   Name=\\"List Table 1 Light Accent 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"47\\" Name=\\"List Table 2 Accent 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"48\\" Name=\\"List Table 3 Accent 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"49\\" Name=\\"List Table 4 Accent 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"50\\" Name=\\"List Table 5 Dark Accent 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"51\\"\\r\\n   Name=\\"List Table 6 Colorful Accent 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"52\\"\\r\\n   Name=\\"List Table 7 Colorful Accent 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"46\\"\\r\\n   Name=\\"List Table 1 Light Accent 4\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"47\\" Name=\\"List Table 2 Accent 4\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"48\\" Name=\\"List Table 3 Accent 4\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"49\\" Name=\\"List Table 4 Accent 4\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"50\\" Name=\\"List Table 5 Dark Accent 4\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"51\\"\\r\\n   Name=\\"List Table 6 Colorful Accent 4\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"52\\"\\r\\n   Name=\\"List Table 7 Colorful Accent 4\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"46\\"\\r\\n   Name=\\"List Table 1 Light Accent 5\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"47\\" Name=\\"List Table 2 Accent 5\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"48\\" Name=\\"List Table 3 Accent 5\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"49\\" Name=\\"List Table 4 Accent 5\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"50\\" Name=\\"List Table 5 Dark Accent 5\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"51\\"\\r\\n   Name=\\"List Table 6 Colorful Accent 5\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"52\\"\\r\\n   Name=\\"List Table 7 Colorful Accent 5\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"46\\"\\r\\n   Name=\\"List Table 1 Light Accent 6\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"47\\" Name=\\"List Table 2 Accent 6\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"48\\" Name=\\"List Table 3 Accent 6\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"49\\" Name=\\"List Table 4 Accent 6\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"50\\" Name=\\"List Table 5 Dark Accent 6\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"51\\"\\r\\n   Name=\\"List Table 6 Colorful Accent 6\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"52\\"\\r\\n   Name=\\"List Table 7 Colorful Accent 6\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Mention\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Smart Hyperlink\\"\\/>\\r\\n <\\/w:LatentStyles>\\r\\n<\\/xml><![endif]--><!-- [if gte mso 10]>\\r\\n<style>\\r\\n \\/* Style Definitions *\\/\\r\\ntable.MsoNormalTable\\r\\n\\t{mso-style-name:\\"Tabela normal\\";\\r\\n\\tmso-tstyle-rowband-size:0;\\r\\n\\tmso-tstyle-colband-size:0;\\r\\n\\tmso-style-noshow:yes;\\r\\n\\tmso-style-priority:99;\\r\\n\\tmso-style-parent:\\"\\";\\r\\n\\tmso-padding-alt:0cm 5.4pt 0cm 5.4pt;\\r\\n\\tmso-para-margin:0cm;\\r\\n\\tmso-para-margin-bottom:.0001pt;\\r\\n\\tmso-pagination:widow-orphan;\\r\\n\\tfont-size:12.0pt;\\r\\n\\tfont-family:Calibri;\\r\\n\\tmso-ascii-font-family:Calibri;\\r\\n\\tmso-ascii-theme-font:minor-latin;\\r\\n\\tmso-hansi-font-family:Calibri;\\r\\n\\tmso-hansi-theme-font:minor-latin;\\r\\n\\tmso-fareast-language:EN-US;}\\r\\n<\\/style>\\r\\n<![endif]--> <!--StartFragment--><\\/h1>\\r\\n<p class=\\"MsoNormal\\"><span style=\\"font-family: \'Century Gothic\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: black; mso-themecolor: text1; mso-font-kerning: 18.0pt; mso-fareast-language: PT;\\">Em agosto de 1962 um grupo de amigos juntou-se e fundou aquele que viria a ser uma refer\\u00eancia no associativismo desportivo da regi\\u00e3o de Cascais, o Clube Desportivo do Arneiro (CDA). A partir dessa data, consideraram-se s\\u00f3cios fundadores do Clube as seguintes personalidades: Jo\\u00e3o Rodrigues de Almeida; Ant\\u00f3nio Faria, Francisco Fung\\u00e3o; Francisco Parreira e Alcindo Moreira.\\u00a0<\\/span><\\/p>\\r\\n<p class=\\"MsoNormal\\" style=\\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; text-align: justify; line-height: 14.25pt;\\">\\u00a0<\\/p>\\r\\n<p class=\\"MsoNormal\\" style=\\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; text-align: justify; line-height: 14.25pt;\\"><span style=\\"font-family: \'Century Gothic\'; mso-bidi-font-family: \'Times New Roman\'; color: black; mso-themecolor: text1; mso-fareast-language: PT;\\">Inicialmente, o Clube desenvolvia a sua actividade num dos quartos da casa do s\\u00f3cio n\\u00ba 1 - Jo\\u00e3o Rodrigues de Almeida, no Largo do Chafariz - Arneiro. Mais tarde, este mesmo s\\u00f3cio e a sua esposa, a Sra. Virg\\u00ednia Rodrigues, cederam ao Clube o terreno onde est\\u00e1 arquitectada a sede do CDA. Nos finais dos anos 70 (1976) a sede do Clube sofreu uma amplia\\u00e7\\u00e3o, passando de um para dois pisos, situa\\u00e7\\u00e3o actual. Aquando desta amplia\\u00e7\\u00e3o foram muitas as individualidades que se comprometeram a direccionar os esfor\\u00e7os num s\\u00f3 sentido, atrav\\u00e9s de trabalho e de ajuda monet\\u00e1ria.\\u00a0<br \\/> De entre muitas, destacam-se alguns nomes: - Eng. Francisco dos Anjos Diniz. - Francisco da Silva Santos - Jo\\u00e3o Ribeiro Milheiro O Clube Desportivo do Arneiro, ao longo dos anos, tem desenvolvido v\\u00e1rias actividades, nomeadamente nas \\u00e1reas do Desporto, Cultura e Ac\\u00e7\\u00e3o Social.<\\/span><\\/p>\\r\\n<p class=\\"MsoNormal\\" style=\\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: 14.25pt;\\">\\u00a0<\\/p>\\r\\n<p class=\\"MsoNormal\\" style=\\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: 14.25pt;\\"><span style=\\"font-family: \'Century Gothic\'; mso-bidi-font-family: \'Times New Roman\'; color: black; mso-themecolor: text1; mso-fareast-language: PT;\\">S\\u00f3cios Fundadores<\\/span><\\/p>\\r\\n<p class=\\"MsoNormal\\" style=\\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: 14.25pt;\\">\\u00a0<\\/p>\\r\\n<p class=\\"MsoNormal\\" style=\\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: 14.25pt;\\"><span style=\\"font-family: \'Century Gothic\'; mso-bidi-font-family: \'Times New Roman\'; color: black; mso-themecolor: text1; mso-fareast-language: PT;\\">Da esquerda para a direita: Francisco Fung\\u00e3o, Jo\\u00e3o Rodrigues de Almeida, Francisco Parreira, Ant\\u00f3nio Faria, Alcindo Moreira.<\\/span><\\/p>\\r\\n<p class=\\"MsoNormal\\"><span style=\\"color: black; mso-themecolor: text1;\\">\\u00a0<\\/span><\\/p>\\r\\n<h1 class=\\"articleContentH1\\" style=\\"font-family: \'Century Gothic\', sans-serif; font-size: 25px; font-weight: normal; color: #1a7ae2; padding: 0px; margin: 0px; width: 940px; height: 33px;\\"><!--EndFragment--><\\/h1>","fulltext":"","state":1,"catid":"8","created":"2016-11-03 21:08:35","created_by":"32","created_by_alias":"","modified":"2016-11-03 22:48:06","modified_by":"32","checked_out":"32","checked_out_time":"2016-11-03 22:46:32","publish_up":"2016-11-03 21:08:35","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":2,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"7","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0);
INSERT INTO `j78lr_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(8, 2, 1, '', '2016-11-03 22:50:30', 32, 46076, '29acd11f696bc4decab6ae9a8291e8c9db9bfdfd', '{"id":2,"asset_id":"59","title":"Historial","alias":"historial","introtext":"<h1 class=\\"articleContentH1\\" style=\\"font-family: \'Century Gothic\', sans-serif; font-size: 25px; font-weight: normal; color: #1a7ae2; padding: 0px; margin: 0px; width: 940px; height: 33px;\\"><!-- [if gte mso 9]><xml>\\r\\n <o:OfficeDocumentSettings>\\r\\n  <o:AllowPNG\\/>\\r\\n  <o:PixelsPerInch>96<\\/o:PixelsPerInch>\\r\\n <\\/o:OfficeDocumentSettings>\\r\\n<\\/xml><![endif]--> <!-- [if gte mso 9]><xml>\\r\\n <w:WordDocument>\\r\\n  <w:View>Normal<\\/w:View>\\r\\n  <w:Zoom>0<\\/w:Zoom>\\r\\n  <w:TrackMoves\\/>\\r\\n  <w:TrackFormatting\\/>\\r\\n  <w:HyphenationZone>21<\\/w:HyphenationZone>\\r\\n  <w:PunctuationKerning\\/>\\r\\n  <w:ValidateAgainstSchemas\\/>\\r\\n  <w:SaveIfXMLInvalid>false<\\/w:SaveIfXMLInvalid>\\r\\n  <w:IgnoreMixedContent>false<\\/w:IgnoreMixedContent>\\r\\n  <w:AlwaysShowPlaceholderText>false<\\/w:AlwaysShowPlaceholderText>\\r\\n  <w:DoNotPromoteQF\\/>\\r\\n  <w:LidThemeOther>PT<\\/w:LidThemeOther>\\r\\n  <w:LidThemeAsian>X-NONE<\\/w:LidThemeAsian>\\r\\n  <w:LidThemeComplexScript>X-NONE<\\/w:LidThemeComplexScript>\\r\\n  <w:Compatibility>\\r\\n   <w:BreakWrappedTables\\/>\\r\\n   <w:SnapToGridInCell\\/>\\r\\n   <w:WrapTextWithPunct\\/>\\r\\n   <w:UseAsianBreakRules\\/>\\r\\n   <w:DontGrowAutofit\\/>\\r\\n   <w:SplitPgBreakAndParaMark\\/>\\r\\n   <w:EnableOpenTypeKerning\\/>\\r\\n   <w:DontFlipMirrorIndents\\/>\\r\\n   <w:OverrideTableStyleHps\\/>\\r\\n  <\\/w:Compatibility>\\r\\n  <m:mathPr>\\r\\n   <m:mathFont m:val=\\"Cambria Math\\"\\/>\\r\\n   <m:brkBin m:val=\\"before\\"\\/>\\r\\n   <m:brkBinSub m:val=\\"&#45;-\\"\\/>\\r\\n   <m:smallFrac m:val=\\"off\\"\\/>\\r\\n   <m:dispDef\\/>\\r\\n   <m:lMargin m:val=\\"0\\"\\/>\\r\\n   <m:rMargin m:val=\\"0\\"\\/>\\r\\n   <m:defJc m:val=\\"centerGroup\\"\\/>\\r\\n   <m:wrapIndent m:val=\\"1440\\"\\/>\\r\\n   <m:intLim m:val=\\"subSup\\"\\/>\\r\\n   <m:naryLim m:val=\\"undOvr\\"\\/>\\r\\n  <\\/m:mathPr><\\/w:WordDocument>\\r\\n<\\/xml><![endif]--><!-- [if gte mso 9]><xml>\\r\\n <w:LatentStyles DefLockedState=\\"false\\" DefUnhideWhenUsed=\\"false\\"\\r\\n  DefSemiHidden=\\"false\\" DefQFormat=\\"false\\" DefPriority=\\"99\\"\\r\\n  LatentStyleCount=\\"382\\">\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"0\\" QFormat=\\"true\\" Name=\\"Normal\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"9\\" QFormat=\\"true\\" Name=\\"heading 1\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"9\\" SemiHidden=\\"true\\"\\r\\n   UnhideWhenUsed=\\"true\\" QFormat=\\"true\\" Name=\\"heading 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"9\\" SemiHidden=\\"true\\"\\r\\n   UnhideWhenUsed=\\"true\\" QFormat=\\"true\\" Name=\\"heading 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"9\\" SemiHidden=\\"true\\"\\r\\n   UnhideWhenUsed=\\"true\\" QFormat=\\"true\\" Name=\\"heading 4\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"9\\" SemiHidden=\\"true\\"\\r\\n   UnhideWhenUsed=\\"true\\" QFormat=\\"true\\" Name=\\"heading 5\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"9\\" SemiHidden=\\"true\\"\\r\\n   UnhideWhenUsed=\\"true\\" QFormat=\\"true\\" Name=\\"heading 6\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"9\\" SemiHidden=\\"true\\"\\r\\n   UnhideWhenUsed=\\"true\\" QFormat=\\"true\\" Name=\\"heading 7\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"9\\" SemiHidden=\\"true\\"\\r\\n   UnhideWhenUsed=\\"true\\" QFormat=\\"true\\" Name=\\"heading 8\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"9\\" SemiHidden=\\"true\\"\\r\\n   UnhideWhenUsed=\\"true\\" QFormat=\\"true\\" Name=\\"heading 9\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"index 1\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"index 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"index 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"index 4\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"index 5\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"index 6\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"index 7\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"index 8\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"index 9\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"39\\" SemiHidden=\\"true\\"\\r\\n   UnhideWhenUsed=\\"true\\" Name=\\"toc 1\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"39\\" SemiHidden=\\"true\\"\\r\\n   UnhideWhenUsed=\\"true\\" Name=\\"toc 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"39\\" SemiHidden=\\"true\\"\\r\\n   UnhideWhenUsed=\\"true\\" Name=\\"toc 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"39\\" SemiHidden=\\"true\\"\\r\\n   UnhideWhenUsed=\\"true\\" Name=\\"toc 4\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"39\\" SemiHidden=\\"true\\"\\r\\n   UnhideWhenUsed=\\"true\\" Name=\\"toc 5\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"39\\" SemiHidden=\\"true\\"\\r\\n   UnhideWhenUsed=\\"true\\" Name=\\"toc 6\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"39\\" SemiHidden=\\"true\\"\\r\\n   UnhideWhenUsed=\\"true\\" Name=\\"toc 7\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"39\\" SemiHidden=\\"true\\"\\r\\n   UnhideWhenUsed=\\"true\\" Name=\\"toc 8\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"39\\" SemiHidden=\\"true\\"\\r\\n   UnhideWhenUsed=\\"true\\" Name=\\"toc 9\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Normal Indent\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"footnote text\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"annotation text\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"header\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"footer\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"index heading\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"35\\" SemiHidden=\\"true\\"\\r\\n   UnhideWhenUsed=\\"true\\" QFormat=\\"true\\" Name=\\"caption\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"table of figures\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"envelope address\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"envelope return\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"footnote reference\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"annotation reference\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"line number\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"page number\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"endnote reference\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"endnote text\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"table of authorities\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"macro\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"toa heading\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"List\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"List Bullet\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"List Number\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"List 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"List 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"List 4\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"List 5\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"List Bullet 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"List Bullet 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"List Bullet 4\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"List Bullet 5\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"List Number 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"List Number 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"List Number 4\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"List Number 5\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"10\\" QFormat=\\"true\\" Name=\\"Title\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Closing\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Signature\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"1\\" SemiHidden=\\"true\\"\\r\\n   UnhideWhenUsed=\\"true\\" Name=\\"Default Paragraph Font\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Body Text\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Body Text Indent\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"List Continue\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"List Continue 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"List Continue 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"List Continue 4\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"List Continue 5\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Message Header\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"11\\" QFormat=\\"true\\" Name=\\"Subtitle\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Salutation\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Date\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Body Text First Indent\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Body Text First Indent 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Note Heading\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Body Text 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Body Text 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Body Text Indent 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Body Text Indent 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Block Text\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Hyperlink\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"FollowedHyperlink\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"22\\" QFormat=\\"true\\" Name=\\"Strong\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"20\\" QFormat=\\"true\\" Name=\\"Emphasis\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Document Map\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Plain Text\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"E-mail Signature\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"HTML Top of Form\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"HTML Bottom of Form\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Normal (Web)\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"HTML Acronym\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"HTML Address\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"HTML Cite\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"HTML Code\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"HTML Definition\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"HTML Keyboard\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"HTML Preformatted\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"HTML Sample\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"HTML Typewriter\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"HTML Variable\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Normal Table\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"annotation subject\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"No List\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Outline List 1\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Outline List 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Outline List 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Table Simple 1\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Table Simple 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Table Simple 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Table Classic 1\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Table Classic 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Table Classic 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Table Classic 4\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Table Colorful 1\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Table Colorful 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Table Colorful 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Table Columns 1\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Table Columns 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Table Columns 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Table Columns 4\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Table Columns 5\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Table Grid 1\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Table Grid 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Table Grid 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Table Grid 4\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Table Grid 5\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Table Grid 6\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Table Grid 7\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Table Grid 8\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Table List 1\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Table List 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Table List 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Table List 4\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Table List 5\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Table List 6\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Table List 7\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Table List 8\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Table 3D effects 1\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Table 3D effects 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Table 3D effects 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Table Contemporary\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Table Elegant\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Table Professional\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Table Subtle 1\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Table Subtle 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Table Web 1\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Table Web 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Table Web 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Balloon Text\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"39\\" Name=\\"Table Grid\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Table Theme\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Note Level 1\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Note Level 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Note Level 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Note Level 4\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Note Level 5\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Note Level 6\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Note Level 7\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Note Level 8\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Note Level 9\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" Name=\\"Placeholder Text\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"1\\" QFormat=\\"true\\" Name=\\"No Spacing\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"60\\" Name=\\"Light Shading\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"61\\" Name=\\"Light List\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"62\\" Name=\\"Light Grid\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"63\\" Name=\\"Medium Shading 1\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"64\\" Name=\\"Medium Shading 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"65\\" Name=\\"Medium List 1\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"66\\" Name=\\"Medium List 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"67\\" Name=\\"Medium Grid 1\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"68\\" Name=\\"Medium Grid 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"69\\" Name=\\"Medium Grid 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"70\\" Name=\\"Dark List\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"71\\" Name=\\"Colorful Shading\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"72\\" Name=\\"Colorful List\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"73\\" Name=\\"Colorful Grid\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"60\\" Name=\\"Light Shading Accent 1\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"61\\" Name=\\"Light List Accent 1\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"62\\" Name=\\"Light Grid Accent 1\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"63\\" Name=\\"Medium Shading 1 Accent 1\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"64\\" Name=\\"Medium Shading 2 Accent 1\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"65\\" Name=\\"Medium List 1 Accent 1\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" Name=\\"Revision\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"34\\" QFormat=\\"true\\"\\r\\n   Name=\\"List Paragraph\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"29\\" QFormat=\\"true\\" Name=\\"Quote\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"30\\" QFormat=\\"true\\"\\r\\n   Name=\\"Intense Quote\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"66\\" Name=\\"Medium List 2 Accent 1\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"67\\" Name=\\"Medium Grid 1 Accent 1\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"68\\" Name=\\"Medium Grid 2 Accent 1\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"69\\" Name=\\"Medium Grid 3 Accent 1\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"70\\" Name=\\"Dark List Accent 1\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"71\\" Name=\\"Colorful Shading Accent 1\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"72\\" Name=\\"Colorful List Accent 1\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"73\\" Name=\\"Colorful Grid Accent 1\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"60\\" Name=\\"Light Shading Accent 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"61\\" Name=\\"Light List Accent 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"62\\" Name=\\"Light Grid Accent 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"63\\" Name=\\"Medium Shading 1 Accent 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"64\\" Name=\\"Medium Shading 2 Accent 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"65\\" Name=\\"Medium List 1 Accent 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"66\\" Name=\\"Medium List 2 Accent 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"67\\" Name=\\"Medium Grid 1 Accent 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"68\\" Name=\\"Medium Grid 2 Accent 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"69\\" Name=\\"Medium Grid 3 Accent 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"70\\" Name=\\"Dark List Accent 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"71\\" Name=\\"Colorful Shading Accent 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"72\\" Name=\\"Colorful List Accent 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"73\\" Name=\\"Colorful Grid Accent 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"60\\" Name=\\"Light Shading Accent 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"61\\" Name=\\"Light List Accent 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"62\\" Name=\\"Light Grid Accent 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"63\\" Name=\\"Medium Shading 1 Accent 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"64\\" Name=\\"Medium Shading 2 Accent 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"65\\" Name=\\"Medium List 1 Accent 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"66\\" Name=\\"Medium List 2 Accent 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"67\\" Name=\\"Medium Grid 1 Accent 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"68\\" Name=\\"Medium Grid 2 Accent 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"69\\" Name=\\"Medium Grid 3 Accent 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"70\\" Name=\\"Dark List Accent 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"71\\" Name=\\"Colorful Shading Accent 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"72\\" Name=\\"Colorful List Accent 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"73\\" Name=\\"Colorful Grid Accent 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"60\\" Name=\\"Light Shading Accent 4\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"61\\" Name=\\"Light List Accent 4\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"62\\" Name=\\"Light Grid Accent 4\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"63\\" Name=\\"Medium Shading 1 Accent 4\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"64\\" Name=\\"Medium Shading 2 Accent 4\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"65\\" Name=\\"Medium List 1 Accent 4\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"66\\" Name=\\"Medium List 2 Accent 4\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"67\\" Name=\\"Medium Grid 1 Accent 4\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"68\\" Name=\\"Medium Grid 2 Accent 4\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"69\\" Name=\\"Medium Grid 3 Accent 4\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"70\\" Name=\\"Dark List Accent 4\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"71\\" Name=\\"Colorful Shading Accent 4\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"72\\" Name=\\"Colorful List Accent 4\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"73\\" Name=\\"Colorful Grid Accent 4\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"60\\" Name=\\"Light Shading Accent 5\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"61\\" Name=\\"Light List Accent 5\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"62\\" Name=\\"Light Grid Accent 5\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"63\\" Name=\\"Medium Shading 1 Accent 5\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"64\\" Name=\\"Medium Shading 2 Accent 5\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"65\\" Name=\\"Medium List 1 Accent 5\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"66\\" Name=\\"Medium List 2 Accent 5\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"67\\" Name=\\"Medium Grid 1 Accent 5\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"68\\" Name=\\"Medium Grid 2 Accent 5\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"69\\" Name=\\"Medium Grid 3 Accent 5\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"70\\" Name=\\"Dark List Accent 5\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"71\\" Name=\\"Colorful Shading Accent 5\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"72\\" Name=\\"Colorful List Accent 5\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"73\\" Name=\\"Colorful Grid Accent 5\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"60\\" Name=\\"Light Shading Accent 6\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"61\\" Name=\\"Light List Accent 6\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"62\\" Name=\\"Light Grid Accent 6\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"63\\" Name=\\"Medium Shading 1 Accent 6\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"64\\" Name=\\"Medium Shading 2 Accent 6\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"65\\" Name=\\"Medium List 1 Accent 6\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"66\\" Name=\\"Medium List 2 Accent 6\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"67\\" Name=\\"Medium Grid 1 Accent 6\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"68\\" Name=\\"Medium Grid 2 Accent 6\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"69\\" Name=\\"Medium Grid 3 Accent 6\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"70\\" Name=\\"Dark List Accent 6\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"71\\" Name=\\"Colorful Shading Accent 6\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"72\\" Name=\\"Colorful List Accent 6\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"73\\" Name=\\"Colorful Grid Accent 6\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"19\\" QFormat=\\"true\\"\\r\\n   Name=\\"Subtle Emphasis\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"21\\" QFormat=\\"true\\"\\r\\n   Name=\\"Intense Emphasis\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"31\\" QFormat=\\"true\\"\\r\\n   Name=\\"Subtle Reference\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"32\\" QFormat=\\"true\\"\\r\\n   Name=\\"Intense Reference\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"33\\" QFormat=\\"true\\" Name=\\"Book Title\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"37\\" SemiHidden=\\"true\\"\\r\\n   UnhideWhenUsed=\\"true\\" Name=\\"Bibliography\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"39\\" SemiHidden=\\"true\\"\\r\\n   UnhideWhenUsed=\\"true\\" QFormat=\\"true\\" Name=\\"TOC Heading\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"41\\" Name=\\"Plain Table 1\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"42\\" Name=\\"Plain Table 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"43\\" Name=\\"Plain Table 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"44\\" Name=\\"Plain Table 4\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"45\\" Name=\\"Plain Table 5\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"40\\" Name=\\"Grid Table Light\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"46\\" Name=\\"Grid Table 1 Light\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"47\\" Name=\\"Grid Table 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"48\\" Name=\\"Grid Table 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"49\\" Name=\\"Grid Table 4\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"50\\" Name=\\"Grid Table 5 Dark\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"51\\" Name=\\"Grid Table 6 Colorful\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"52\\" Name=\\"Grid Table 7 Colorful\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"46\\"\\r\\n   Name=\\"Grid Table 1 Light Accent 1\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"47\\" Name=\\"Grid Table 2 Accent 1\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"48\\" Name=\\"Grid Table 3 Accent 1\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"49\\" Name=\\"Grid Table 4 Accent 1\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"50\\" Name=\\"Grid Table 5 Dark Accent 1\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"51\\"\\r\\n   Name=\\"Grid Table 6 Colorful Accent 1\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"52\\"\\r\\n   Name=\\"Grid Table 7 Colorful Accent 1\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"46\\"\\r\\n   Name=\\"Grid Table 1 Light Accent 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"47\\" Name=\\"Grid Table 2 Accent 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"48\\" Name=\\"Grid Table 3 Accent 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"49\\" Name=\\"Grid Table 4 Accent 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"50\\" Name=\\"Grid Table 5 Dark Accent 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"51\\"\\r\\n   Name=\\"Grid Table 6 Colorful Accent 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"52\\"\\r\\n   Name=\\"Grid Table 7 Colorful Accent 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"46\\"\\r\\n   Name=\\"Grid Table 1 Light Accent 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"47\\" Name=\\"Grid Table 2 Accent 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"48\\" Name=\\"Grid Table 3 Accent 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"49\\" Name=\\"Grid Table 4 Accent 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"50\\" Name=\\"Grid Table 5 Dark Accent 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"51\\"\\r\\n   Name=\\"Grid Table 6 Colorful Accent 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"52\\"\\r\\n   Name=\\"Grid Table 7 Colorful Accent 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"46\\"\\r\\n   Name=\\"Grid Table 1 Light Accent 4\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"47\\" Name=\\"Grid Table 2 Accent 4\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"48\\" Name=\\"Grid Table 3 Accent 4\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"49\\" Name=\\"Grid Table 4 Accent 4\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"50\\" Name=\\"Grid Table 5 Dark Accent 4\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"51\\"\\r\\n   Name=\\"Grid Table 6 Colorful Accent 4\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"52\\"\\r\\n   Name=\\"Grid Table 7 Colorful Accent 4\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"46\\"\\r\\n   Name=\\"Grid Table 1 Light Accent 5\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"47\\" Name=\\"Grid Table 2 Accent 5\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"48\\" Name=\\"Grid Table 3 Accent 5\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"49\\" Name=\\"Grid Table 4 Accent 5\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"50\\" Name=\\"Grid Table 5 Dark Accent 5\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"51\\"\\r\\n   Name=\\"Grid Table 6 Colorful Accent 5\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"52\\"\\r\\n   Name=\\"Grid Table 7 Colorful Accent 5\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"46\\"\\r\\n   Name=\\"Grid Table 1 Light Accent 6\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"47\\" Name=\\"Grid Table 2 Accent 6\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"48\\" Name=\\"Grid Table 3 Accent 6\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"49\\" Name=\\"Grid Table 4 Accent 6\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"50\\" Name=\\"Grid Table 5 Dark Accent 6\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"51\\"\\r\\n   Name=\\"Grid Table 6 Colorful Accent 6\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"52\\"\\r\\n   Name=\\"Grid Table 7 Colorful Accent 6\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"46\\" Name=\\"List Table 1 Light\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"47\\" Name=\\"List Table 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"48\\" Name=\\"List Table 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"49\\" Name=\\"List Table 4\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"50\\" Name=\\"List Table 5 Dark\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"51\\" Name=\\"List Table 6 Colorful\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"52\\" Name=\\"List Table 7 Colorful\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"46\\"\\r\\n   Name=\\"List Table 1 Light Accent 1\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"47\\" Name=\\"List Table 2 Accent 1\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"48\\" Name=\\"List Table 3 Accent 1\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"49\\" Name=\\"List Table 4 Accent 1\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"50\\" Name=\\"List Table 5 Dark Accent 1\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"51\\"\\r\\n   Name=\\"List Table 6 Colorful Accent 1\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"52\\"\\r\\n   Name=\\"List Table 7 Colorful Accent 1\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"46\\"\\r\\n   Name=\\"List Table 1 Light Accent 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"47\\" Name=\\"List Table 2 Accent 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"48\\" Name=\\"List Table 3 Accent 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"49\\" Name=\\"List Table 4 Accent 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"50\\" Name=\\"List Table 5 Dark Accent 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"51\\"\\r\\n   Name=\\"List Table 6 Colorful Accent 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"52\\"\\r\\n   Name=\\"List Table 7 Colorful Accent 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"46\\"\\r\\n   Name=\\"List Table 1 Light Accent 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"47\\" Name=\\"List Table 2 Accent 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"48\\" Name=\\"List Table 3 Accent 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"49\\" Name=\\"List Table 4 Accent 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"50\\" Name=\\"List Table 5 Dark Accent 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"51\\"\\r\\n   Name=\\"List Table 6 Colorful Accent 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"52\\"\\r\\n   Name=\\"List Table 7 Colorful Accent 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"46\\"\\r\\n   Name=\\"List Table 1 Light Accent 4\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"47\\" Name=\\"List Table 2 Accent 4\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"48\\" Name=\\"List Table 3 Accent 4\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"49\\" Name=\\"List Table 4 Accent 4\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"50\\" Name=\\"List Table 5 Dark Accent 4\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"51\\"\\r\\n   Name=\\"List Table 6 Colorful Accent 4\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"52\\"\\r\\n   Name=\\"List Table 7 Colorful Accent 4\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"46\\"\\r\\n   Name=\\"List Table 1 Light Accent 5\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"47\\" Name=\\"List Table 2 Accent 5\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"48\\" Name=\\"List Table 3 Accent 5\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"49\\" Name=\\"List Table 4 Accent 5\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"50\\" Name=\\"List Table 5 Dark Accent 5\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"51\\"\\r\\n   Name=\\"List Table 6 Colorful Accent 5\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"52\\"\\r\\n   Name=\\"List Table 7 Colorful Accent 5\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"46\\"\\r\\n   Name=\\"List Table 1 Light Accent 6\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"47\\" Name=\\"List Table 2 Accent 6\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"48\\" Name=\\"List Table 3 Accent 6\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"49\\" Name=\\"List Table 4 Accent 6\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"50\\" Name=\\"List Table 5 Dark Accent 6\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"51\\"\\r\\n   Name=\\"List Table 6 Colorful Accent 6\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"52\\"\\r\\n   Name=\\"List Table 7 Colorful Accent 6\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Mention\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Smart Hyperlink\\"\\/>\\r\\n <\\/w:LatentStyles>\\r\\n<\\/xml><![endif]--><!-- [if gte mso 10]>\\r\\n<style>\\r\\n \\/* Style Definitions *\\/\\r\\ntable.MsoNormalTable\\r\\n\\t{mso-style-name:\\"Tabela normal\\";\\r\\n\\tmso-tstyle-rowband-size:0;\\r\\n\\tmso-tstyle-colband-size:0;\\r\\n\\tmso-style-noshow:yes;\\r\\n\\tmso-style-priority:99;\\r\\n\\tmso-style-parent:\\"\\";\\r\\n\\tmso-padding-alt:0cm 5.4pt 0cm 5.4pt;\\r\\n\\tmso-para-margin:0cm;\\r\\n\\tmso-para-margin-bottom:.0001pt;\\r\\n\\tmso-pagination:widow-orphan;\\r\\n\\tfont-size:12.0pt;\\r\\n\\tfont-family:Calibri;\\r\\n\\tmso-ascii-font-family:Calibri;\\r\\n\\tmso-ascii-theme-font:minor-latin;\\r\\n\\tmso-hansi-font-family:Calibri;\\r\\n\\tmso-hansi-theme-font:minor-latin;\\r\\n\\tmso-fareast-language:EN-US;}\\r\\n<\\/style>\\r\\n<![endif]--> <!--StartFragment--><\\/h1>\\r\\n<p><span style=\\"font-family: \'Century Gothic\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: black; mso-themecolor: text1; mso-font-kerning: 18.0pt; mso-fareast-language: PT;\\">Em agosto de 1962 um grupo de amigos juntou-se e fundou aquele que viria a ser uma refer\\u00eancia no associativismo desportivo da regi\\u00e3o de Cascais, o Clube Desportivo do Arneiro (CDA). A partir dessa data, consideraram-se s\\u00f3cios fundadores do Clube as seguintes personalidades: Jo\\u00e3o Rodrigues de Almeida; Ant\\u00f3nio Faria, Francisco Fung\\u00e3o; Francisco Parreira e Alcindo Moreira.\\u00a0<\\/span><\\/p>\\r\\n<p class=\\"MsoNormal\\" style=\\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; text-align: justify; line-height: 14.25pt;\\"><span style=\\"font-family: \'Century Gothic\'; mso-bidi-font-family: \'Times New Roman\'; color: black; mso-themecolor: text1; mso-fareast-language: PT;\\">Inicialmente, o Clube desenvolvia a sua actividade num dos quartos da casa do s\\u00f3cio n\\u00ba 1 - Jo\\u00e3o Rodrigues de Almeida, no Largo do Chafariz - Arneiro. Mais tarde, este mesmo s\\u00f3cio e a sua esposa, a Sra. Virg\\u00ednia Rodrigues, cederam ao Clube o terreno onde est\\u00e1 arquitectada a sede do CDA. Nos finais dos anos 70 (1976) a sede do Clube sofreu uma amplia\\u00e7\\u00e3o, passando de um para dois pisos, situa\\u00e7\\u00e3o actual. Aquando desta amplia\\u00e7\\u00e3o foram muitas as individualidades que se comprometeram a direccionar os esfor\\u00e7os num s\\u00f3 sentido, atrav\\u00e9s de trabalho e de ajuda monet\\u00e1ria.\\u00a0<br \\/> De entre muitas, destacam-se alguns nomes: - Eng. Francisco dos Anjos Diniz. - Francisco da Silva Santos - Jo\\u00e3o Ribeiro Milheiro O Clube Desportivo do Arneiro, ao longo dos anos, tem desenvolvido v\\u00e1rias actividades, nomeadamente nas \\u00e1reas do Desporto, Cultura e Ac\\u00e7\\u00e3o Social.<\\/span><\\/p>\\r\\n<p class=\\"MsoNormal\\" style=\\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: 14.25pt;\\"><span style=\\"font-family: \'Century Gothic\'; mso-bidi-font-family: \'Times New Roman\'; color: black; mso-themecolor: text1; mso-fareast-language: PT;\\">S\\u00f3cios Fundadores<\\/span><\\/p>\\r\\n<p class=\\"MsoNormal\\" style=\\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: 14.25pt;\\"><span style=\\"font-family: \'Century Gothic\'; mso-bidi-font-family: \'Times New Roman\'; color: black; mso-themecolor: text1; mso-fareast-language: PT;\\">Da esquerda para a direita: Francisco Fung\\u00e3o, Jo\\u00e3o Rodrigues de Almeida, Francisco Parreira, Ant\\u00f3nio Faria, Alcindo Moreira.<\\/span><\\/p>\\r\\n<p class=\\"MsoNormal\\"><span style=\\"color: black; mso-themecolor: text1;\\">\\u00a0<\\/span><\\/p>\\r\\n<h1 class=\\"articleContentH1\\" style=\\"font-family: \'Century Gothic\', sans-serif; font-size: 25px; font-weight: normal; color: #1a7ae2; padding: 0px; margin: 0px; width: 940px; height: 33px;\\"><!--EndFragment--><\\/h1>","fulltext":"","state":1,"catid":"8","created":"2016-11-03 21:08:35","created_by":"32","created_by_alias":"","modified":"2016-11-03 22:50:30","modified_by":"32","checked_out":"32","checked_out_time":"2016-11-03 22:48:54","publish_up":"2016-11-03 21:08:35","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":3,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"7","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0);

-- --------------------------------------------------------

--
-- Table structure for table `j78lr_update_sites`
--

CREATE TABLE `j78lr_update_sites` (
  `update_site_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `location` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Update Sites';

--
-- Dumping data for table `j78lr_update_sites`
--

INSERT INTO `j78lr_update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`, `extra_query`) VALUES
(1, 'Joomla! Core', 'collection', 'https://update.joomla.org/core/list.xml', 1, 1478694579, ''),
(2, 'Joomla! Extension Directory', 'collection', 'https://update.joomla.org/jed/list.xml', 1, 1478694578, ''),
(3, 'Accredited Joomla! Translations', 'collection', 'https://update.joomla.org/language/translationlist_3.xml', 1, 1478694580, ''),
(4, 'Joomla! Update Component Update Site', 'extension', 'https://update.joomla.org/core/extensions/com_joomlaupdate.xml', 1, 1478694581, ''),
(5, 'WebInstaller Update Site', 'extension', 'http://appscdn.joomla.org/webapps/jedapps/webinstaller.xml', 1, 1478694581, ''),
(7, 'SCLogin Updates', 'extension', 'http://www.sourcecoast.com/updates/sclogin.xml', 1, 1478694582, ''),
(8, 'imageshow', 'collection', 'http://www.joomlashine.com/versioning/extensions/com_imageshow.xml', 1, 1478694582, ''),
(9, 'poweradmin', 'collection', 'http://www.joomlashine.com/versioning/extensions/com_poweradmin.xml', 1, 1478694582, ''),
(10, 'uniform', 'collection', 'http://www.joomlashine.com/versioning/extensions/com_uniform.xml', 1, 1478694583, ''),
(11, 'mobilize', 'collection', 'http://www.joomlashine.com/versioning/extensions/com_mobilize.xml', 1, 1478694583, ''),
(12, 'pagebuilder', 'collection', 'http://www.joomlashine.com/versioning/extensions/com_pagebuilder.xml', 1, 1478694583, ''),
(13, 'easyslider', 'collection', 'http://www.joomlashine.com/versioning/extensions/com_easyslider.xml', 1, 1478694583, ''),
(14, 'Plugin Googlemap Update Site', 'extension', 'http://tech.reumer.net/update/plugin_googlemap3/extension.xml', 1, 1478694584, '');

-- --------------------------------------------------------

--
-- Table structure for table `j78lr_update_sites_extensions`
--

CREATE TABLE `j78lr_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Links extensions to update sites';

--
-- Dumping data for table `j78lr_update_sites_extensions`
--

INSERT INTO `j78lr_update_sites_extensions` (`update_site_id`, `extension_id`) VALUES
(1, 700),
(2, 700),
(3, 802),
(3, 10066),
(4, 28),
(5, 10000),
(7, 10010),
(8, 10018),
(9, 10031),
(10, 10039),
(11, 10044),
(12, 10047),
(13, 10054),
(14, 10063);

-- --------------------------------------------------------

--
-- Table structure for table `j78lr_updates`
--

CREATE TABLE `j78lr_updates` (
  `update_id` int(11) NOT NULL,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `folder` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `detailsurl` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `infourl` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Available Updates';

--
-- Dumping data for table `j78lr_updates`
--

INSERT INTO `j78lr_updates` (`update_id`, `update_site_id`, `extension_id`, `name`, `description`, `element`, `type`, `folder`, `client_id`, `version`, `data`, `detailsurl`, `infourl`, `extra_query`) VALUES
(1, 3, 0, 'Armenian', '', 'pkg_hy-AM', 'package', '', 0, '3.4.4.1', '', 'https://update.joomla.org/language/details3/hy-AM_details.xml', '', ''),
(2, 3, 0, 'Malay', '', 'pkg_ms-MY', 'package', '', 0, '3.4.1.2', '', 'https://update.joomla.org/language/details3/ms-MY_details.xml', '', ''),
(3, 3, 0, 'Romanian', '', 'pkg_ro-RO', 'package', '', 0, '3.6.0.1', '', 'https://update.joomla.org/language/details3/ro-RO_details.xml', '', ''),
(4, 3, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/nl-BE_details.xml', '', ''),
(5, 3, 0, 'Chinese Traditional', '', 'pkg_zh-TW', 'package', '', 0, '3.6.3.1', '', 'https://update.joomla.org/language/details3/zh-TW_details.xml', '', ''),
(6, 3, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/fr-FR_details.xml', '', ''),
(7, 3, 0, 'Galician', '', 'pkg_gl-ES', 'package', '', 0, '3.3.1.2', '', 'https://update.joomla.org/language/details3/gl-ES_details.xml', '', ''),
(8, 3, 0, 'Georgian', '', 'pkg_ka-GE', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/ka-GE_details.xml', '', ''),
(9, 3, 0, 'Greek', '', 'pkg_el-GR', 'package', '', 0, '3.6.3.2', '', 'https://update.joomla.org/language/details3/el-GR_details.xml', '', ''),
(10, 3, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/ja-JP_details.xml', '', ''),
(11, 3, 0, 'Hebrew', '', 'pkg_he-IL', 'package', '', 0, '3.1.1.1', '', 'https://update.joomla.org/language/details3/he-IL_details.xml', '', ''),
(12, 3, 0, 'Hungarian', '', 'pkg_hu-HU', 'package', '', 0, '3.6.3.1', '', 'https://update.joomla.org/language/details3/hu-HU_details.xml', '', ''),
(13, 3, 0, 'Afrikaans', '', 'pkg_af-ZA', 'package', '', 0, '3.6.3.1', '', 'https://update.joomla.org/language/details3/af-ZA_details.xml', '', ''),
(14, 3, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '3.6.4.2', '', 'https://update.joomla.org/language/details3/ar-AA_details.xml', '', ''),
(15, 3, 0, 'Belarusian', '', 'pkg_be-BY', 'package', '', 0, '3.2.1.1', '', 'https://update.joomla.org/language/details3/be-BY_details.xml', '', ''),
(16, 3, 0, 'Bulgarian', '', 'pkg_bg-BG', 'package', '', 0, '3.4.4.2', '', 'https://update.joomla.org/language/details3/bg-BG_details.xml', '', ''),
(17, 3, 0, 'Catalan', '', 'pkg_ca-ES', 'package', '', 0, '3.6.3.1', '', 'https://update.joomla.org/language/details3/ca-ES_details.xml', '', ''),
(18, 3, 0, 'Chinese Simplified', '', 'pkg_zh-CN', 'package', '', 0, '3.4.1.1', '', 'https://update.joomla.org/language/details3/zh-CN_details.xml', '', ''),
(19, 3, 0, 'Croatian', '', 'pkg_hr-HR', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/hr-HR_details.xml', '', ''),
(20, 3, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/cs-CZ_details.xml', '', ''),
(21, 3, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '3.6.3.1', '', 'https://update.joomla.org/language/details3/da-DK_details.xml', '', ''),
(22, 3, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '3.6.3.1', '', 'https://update.joomla.org/language/details3/nl-NL_details.xml', '', ''),
(23, 3, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '3.6.0.1', '', 'https://update.joomla.org/language/details3/et-EE_details.xml', '', ''),
(24, 3, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/it-IT_details.xml', '', ''),
(25, 3, 0, 'Khmer', '', 'pkg_km-KH', 'package', '', 0, '3.4.5.1', '', 'https://update.joomla.org/language/details3/km-KH_details.xml', '', ''),
(26, 3, 0, 'Korean', '', 'pkg_ko-KR', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/ko-KR_details.xml', '', ''),
(27, 3, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '3.6.2.2', '', 'https://update.joomla.org/language/details3/lv-LV_details.xml', '', ''),
(28, 3, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '3.6.3.1', '', 'https://update.joomla.org/language/details3/mk-MK_details.xml', '', ''),
(29, 3, 0, 'Norwegian Bokmal', '', 'pkg_nb-NO', 'package', '', 0, '3.5.1.1', '', 'https://update.joomla.org/language/details3/nb-NO_details.xml', '', ''),
(30, 3, 0, 'Norwegian Nynorsk', '', 'pkg_nn-NO', 'package', '', 0, '3.4.2.1', '', 'https://update.joomla.org/language/details3/nn-NO_details.xml', '', ''),
(31, 3, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/fa-IR_details.xml', '', ''),
(32, 3, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/pl-PL_details.xml', '', ''),
(33, 3, 0, 'Russian', '', 'pkg_ru-RU', 'package', '', 0, '3.6.2.2', '', 'https://update.joomla.org/language/details3/ru-RU_details.xml', '', ''),
(34, 3, 0, 'English AU', '', 'pkg_en-AU', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/en-AU_details.xml', '', ''),
(35, 3, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/sk-SK_details.xml', '', ''),
(36, 3, 0, 'English US', '', 'pkg_en-US', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/en-US_details.xml', '', ''),
(37, 3, 0, 'Swedish', '', 'pkg_sv-SE', 'package', '', 0, '3.6.3.1', '', 'https://update.joomla.org/language/details3/sv-SE_details.xml', '', ''),
(38, 3, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '3.4.5.1', '', 'https://update.joomla.org/language/details3/sy-IQ_details.xml', '', ''),
(39, 3, 0, 'Tamil', '', 'pkg_ta-IN', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/ta-IN_details.xml', '', ''),
(40, 3, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/th-TH_details.xml', '', ''),
(41, 3, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '3.6.2.1', '', 'https://update.joomla.org/language/details3/tr-TR_details.xml', '', ''),
(42, 3, 0, 'Ukrainian', '', 'pkg_uk-UA', 'package', '', 0, '3.6.3.1', '', 'https://update.joomla.org/language/details3/uk-UA_details.xml', '', ''),
(43, 3, 0, 'Uyghur', '', 'pkg_ug-CN', 'package', '', 0, '3.3.0.1', '', 'https://update.joomla.org/language/details3/ug-CN_details.xml', '', ''),
(44, 3, 0, 'Albanian', '', 'pkg_sq-AL', 'package', '', 0, '3.1.1.1', '', 'https://update.joomla.org/language/details3/sq-AL_details.xml', '', ''),
(45, 3, 0, 'Basque', '', 'pkg_eu-ES', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/eu-ES_details.xml', '', ''),
(46, 3, 0, 'Hindi', '', 'pkg_hi-IN', 'package', '', 0, '3.3.6.2', '', 'https://update.joomla.org/language/details3/hi-IN_details.xml', '', ''),
(47, 3, 0, 'German DE', '', 'pkg_de-DE', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/de-DE_details.xml', '', ''),
(48, 3, 0, 'Portuguese Brazil', '', 'pkg_pt-BR', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/pt-BR_details.xml', '', ''),
(49, 3, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '3.6.3.1', '', 'https://update.joomla.org/language/details3/sr-YU_details.xml', '', ''),
(50, 3, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '3.6.3.1', '', 'https://update.joomla.org/language/details3/es-ES_details.xml', '', ''),
(51, 3, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/bs-BA_details.xml', '', ''),
(52, 3, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '3.6.3.1', '', 'https://update.joomla.org/language/details3/sr-RS_details.xml', '', ''),
(53, 3, 0, 'Vietnamese', '', 'pkg_vi-VN', 'package', '', 0, '3.2.1.1', '', 'https://update.joomla.org/language/details3/vi-VN_details.xml', '', ''),
(54, 3, 0, 'Bahasa Indonesia', '', 'pkg_id-ID', 'package', '', 0, '3.6.2.1', '', 'https://update.joomla.org/language/details3/id-ID_details.xml', '', ''),
(55, 3, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '3.6.2.1', '', 'https://update.joomla.org/language/details3/fi-FI_details.xml', '', ''),
(56, 3, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/sw-KE_details.xml', '', ''),
(57, 3, 0, 'Montenegrin', '', 'pkg_srp-ME', 'package', '', 0, '3.3.1.1', '', 'https://update.joomla.org/language/details3/srp-ME_details.xml', '', ''),
(58, 3, 0, 'English CA', '', 'pkg_en-CA', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/en-CA_details.xml', '', ''),
(59, 3, 0, 'French CA', '', 'pkg_fr-CA', 'package', '', 0, '3.5.1.2', '', 'https://update.joomla.org/language/details3/fr-CA_details.xml', '', ''),
(60, 3, 0, 'Welsh', '', 'pkg_cy-GB', 'package', '', 0, '3.3.0.2', '', 'https://update.joomla.org/language/details3/cy-GB_details.xml', '', ''),
(61, 3, 0, 'Sinhala', '', 'pkg_si-LK', 'package', '', 0, '3.3.1.1', '', 'https://update.joomla.org/language/details3/si-LK_details.xml', '', ''),
(62, 3, 0, 'Dari Persian', '', 'pkg_prs-AF', 'package', '', 0, '3.4.4.1', '', 'https://update.joomla.org/language/details3/prs-AF_details.xml', '', ''),
(63, 3, 0, 'Turkmen', '', 'pkg_tk-TM', 'package', '', 0, '3.5.0.2', '', 'https://update.joomla.org/language/details3/tk-TM_details.xml', '', ''),
(64, 3, 0, 'Irish', '', 'pkg_ga-IE', 'package', '', 0, '3.6.0.1', '', 'https://update.joomla.org/language/details3/ga-IE_details.xml', '', ''),
(65, 3, 0, 'Dzongkha', '', 'pkg_dz-BT', 'package', '', 0, '3.6.2.1', '', 'https://update.joomla.org/language/details3/dz-BT_details.xml', '', ''),
(66, 3, 0, 'Slovenian', '', 'pkg_sl-SI', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/sl-SI_details.xml', '', ''),
(67, 3, 0, 'Spanish CO', '', 'pkg_es-CO', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/es-CO_details.xml', '', ''),
(68, 3, 0, 'German CH', '', 'pkg_de-CH', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/de-CH_details.xml', '', ''),
(69, 3, 0, 'German AT', '', 'pkg_de-AT', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/de-AT_details.xml', '', ''),
(70, 3, 0, 'German LI', '', 'pkg_de-LI', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/de-LI_details.xml', '', ''),
(71, 3, 0, 'German LU', '', 'pkg_de-LU', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/de-LU_details.xml', '', ''),
(72, 3, 0, 'English NZ', '', 'pkg_en-NZ', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/en-NZ_details.xml', '', ''),
(73, 8, 10018, 'JSN ImageShow', '', 'com_imageshow', 'component', '', 1, '5.0.3', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `j78lr_user_keys`
--

CREATE TABLE `j78lr_user_keys` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `series` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invalid` tinyint(4) NOT NULL,
  `time` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uastring` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `j78lr_user_notes`
--

CREATE TABLE `j78lr_user_notes` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `subject` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) UNSIGNED NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `j78lr_user_profiles`
--

CREATE TABLE `j78lr_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Simple user profile storage table';

-- --------------------------------------------------------

--
-- Table structure for table `j78lr_user_usergroup_map`
--

CREATE TABLE `j78lr_user_usergroup_map` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `j78lr_user_usergroup_map`
--

INSERT INTO `j78lr_user_usergroup_map` (`user_id`, `group_id`) VALUES
(32, 8);

-- --------------------------------------------------------

--
-- Table structure for table `j78lr_usergroups`
--

CREATE TABLE `j78lr_usergroups` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `j78lr_usergroups`
--

INSERT INTO `j78lr_usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`) VALUES
(1, 0, 1, 18, 'Public'),
(2, 1, 8, 15, 'Registered'),
(3, 2, 9, 14, 'Author'),
(4, 3, 10, 13, 'Editor'),
(5, 4, 11, 12, 'Publisher'),
(6, 1, 4, 7, 'Manager'),
(7, 6, 5, 6, 'Administrator'),
(8, 1, 16, 17, 'Super Users'),
(9, 1, 2, 3, 'Guest');

-- --------------------------------------------------------

--
-- Table structure for table `j78lr_users`
--

CREATE TABLE `j78lr_users` (
  `id` int(11) NOT NULL,
  `name` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'One time emergency passwords',
  `requireReset` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Require user to reset password on next login'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `j78lr_users`
--

INSERT INTO `j78lr_users` (`id`, `name`, `username`, `email`, `password`, `block`, `sendEmail`, `registerDate`, `lastvisitDate`, `activation`, `params`, `lastResetTime`, `resetCount`, `otpKey`, `otep`, `requireReset`) VALUES
(32, 'Super User', 'root', 'joaoagm90@gmail.com', '$2y$10$XwTNrNj9LPbodzmQLAC2IeJQ5qOd0POFxdQZx9SJS7eWRRt1B30nm', 0, 0, '2016-11-03 18:13:11', '2016-11-09 12:29:34', '0', '{"admin_style":"","admin_language":"","language":"","editor":"","helpsite":"","timezone":""}', '0000-00-00 00:00:00', 0, '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `j78lr_utf8_conversion`
--

CREATE TABLE `j78lr_utf8_conversion` (
  `converted` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `j78lr_utf8_conversion`
--

INSERT INTO `j78lr_utf8_conversion` (`converted`) VALUES
(2);

-- --------------------------------------------------------

--
-- Table structure for table `j78lr_viewlevels`
--

CREATE TABLE `j78lr_viewlevels` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `j78lr_viewlevels`
--

INSERT INTO `j78lr_viewlevels` (`id`, `title`, `ordering`, `rules`) VALUES
(1, 'Public', 0, '[1]'),
(2, 'Registered', 2, '[6,2,8]'),
(3, 'Special', 3, '[6,3,8]'),
(5, 'Guest', 1, '[9]'),
(6, 'Super Users', 4, '[8]');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `j78lr_assets`
--
ALTER TABLE `j78lr_assets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_asset_name` (`name`),
  ADD KEY `idx_lft_rgt` (`lft`,`rgt`),
  ADD KEY `idx_parent_id` (`parent_id`);

--
-- Indexes for table `j78lr_associations`
--
ALTER TABLE `j78lr_associations`
  ADD PRIMARY KEY (`context`,`id`),
  ADD KEY `idx_key` (`key`);

--
-- Indexes for table `j78lr_banner_clients`
--
ALTER TABLE `j78lr_banner_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_own_prefix` (`own_prefix`),
  ADD KEY `idx_metakey_prefix` (`metakey_prefix`(100));

--
-- Indexes for table `j78lr_banner_tracks`
--
ALTER TABLE `j78lr_banner_tracks`
  ADD PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  ADD KEY `idx_track_date` (`track_date`),
  ADD KEY `idx_track_type` (`track_type`),
  ADD KEY `idx_banner_id` (`banner_id`);

--
-- Indexes for table `j78lr_banners`
--
ALTER TABLE `j78lr_banners`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_own_prefix` (`own_prefix`),
  ADD KEY `idx_banner_catid` (`catid`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_metakey_prefix` (`metakey_prefix`(100));

--
-- Indexes for table `j78lr_categories`
--
ALTER TABLE `j78lr_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cat_idx` (`extension`,`published`,`access`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_alias` (`alias`(100));

--
-- Indexes for table `j78lr_contact_details`
--
ALTER TABLE `j78lr_contact_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`published`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_featured_catid` (`featured`,`catid`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`);

--
-- Indexes for table `j78lr_content`
--
ALTER TABLE `j78lr_content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_featured_catid` (`featured`,`catid`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`);

--
-- Indexes for table `j78lr_content_frontpage`
--
ALTER TABLE `j78lr_content_frontpage`
  ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `j78lr_content_rating`
--
ALTER TABLE `j78lr_content_rating`
  ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `j78lr_content_types`
--
ALTER TABLE `j78lr_content_types`
  ADD PRIMARY KEY (`type_id`),
  ADD KEY `idx_alias` (`type_alias`(100));

--
-- Indexes for table `j78lr_contentitem_tag_map`
--
ALTER TABLE `j78lr_contentitem_tag_map`
  ADD UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`),
  ADD KEY `idx_tag_type` (`tag_id`,`type_id`),
  ADD KEY `idx_date_id` (`tag_date`,`tag_id`),
  ADD KEY `idx_core_content_id` (`core_content_id`);

--
-- Indexes for table `j78lr_extensions`
--
ALTER TABLE `j78lr_extensions`
  ADD PRIMARY KEY (`extension_id`),
  ADD KEY `element_clientid` (`element`,`client_id`),
  ADD KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  ADD KEY `extension` (`type`,`element`,`folder`,`client_id`);

--
-- Indexes for table `j78lr_finder_filters`
--
ALTER TABLE `j78lr_finder_filters`
  ADD PRIMARY KEY (`filter_id`);

--
-- Indexes for table `j78lr_finder_links`
--
ALTER TABLE `j78lr_finder_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `idx_type` (`type_id`),
  ADD KEY `idx_title` (`title`(100)),
  ADD KEY `idx_md5` (`md5sum`),
  ADD KEY `idx_url` (`url`(75)),
  ADD KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  ADD KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`);

--
-- Indexes for table `j78lr_finder_links_terms0`
--
ALTER TABLE `j78lr_finder_links_terms0`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `j78lr_finder_links_terms1`
--
ALTER TABLE `j78lr_finder_links_terms1`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `j78lr_finder_links_terms2`
--
ALTER TABLE `j78lr_finder_links_terms2`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `j78lr_finder_links_terms3`
--
ALTER TABLE `j78lr_finder_links_terms3`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `j78lr_finder_links_terms4`
--
ALTER TABLE `j78lr_finder_links_terms4`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `j78lr_finder_links_terms5`
--
ALTER TABLE `j78lr_finder_links_terms5`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `j78lr_finder_links_terms6`
--
ALTER TABLE `j78lr_finder_links_terms6`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `j78lr_finder_links_terms7`
--
ALTER TABLE `j78lr_finder_links_terms7`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `j78lr_finder_links_terms8`
--
ALTER TABLE `j78lr_finder_links_terms8`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `j78lr_finder_links_terms9`
--
ALTER TABLE `j78lr_finder_links_terms9`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `j78lr_finder_links_termsa`
--
ALTER TABLE `j78lr_finder_links_termsa`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `j78lr_finder_links_termsb`
--
ALTER TABLE `j78lr_finder_links_termsb`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `j78lr_finder_links_termsc`
--
ALTER TABLE `j78lr_finder_links_termsc`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `j78lr_finder_links_termsd`
--
ALTER TABLE `j78lr_finder_links_termsd`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `j78lr_finder_links_termse`
--
ALTER TABLE `j78lr_finder_links_termse`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `j78lr_finder_links_termsf`
--
ALTER TABLE `j78lr_finder_links_termsf`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `j78lr_finder_taxonomy`
--
ALTER TABLE `j78lr_finder_taxonomy`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `state` (`state`),
  ADD KEY `ordering` (`ordering`),
  ADD KEY `access` (`access`),
  ADD KEY `idx_parent_published` (`parent_id`,`state`,`access`);

--
-- Indexes for table `j78lr_finder_taxonomy_map`
--
ALTER TABLE `j78lr_finder_taxonomy_map`
  ADD PRIMARY KEY (`link_id`,`node_id`),
  ADD KEY `link_id` (`link_id`),
  ADD KEY `node_id` (`node_id`);

--
-- Indexes for table `j78lr_finder_terms`
--
ALTER TABLE `j78lr_finder_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD UNIQUE KEY `idx_term` (`term`),
  ADD KEY `idx_term_phrase` (`term`,`phrase`),
  ADD KEY `idx_stem_phrase` (`stem`,`phrase`),
  ADD KEY `idx_soundex_phrase` (`soundex`,`phrase`);

--
-- Indexes for table `j78lr_finder_terms_common`
--
ALTER TABLE `j78lr_finder_terms_common`
  ADD KEY `idx_word_lang` (`term`,`language`),
  ADD KEY `idx_lang` (`language`);

--
-- Indexes for table `j78lr_finder_tokens`
--
ALTER TABLE `j78lr_finder_tokens`
  ADD KEY `idx_word` (`term`),
  ADD KEY `idx_context` (`context`);

--
-- Indexes for table `j78lr_finder_tokens_aggregate`
--
ALTER TABLE `j78lr_finder_tokens_aggregate`
  ADD KEY `token` (`term`),
  ADD KEY `keyword_id` (`term_id`);

--
-- Indexes for table `j78lr_finder_types`
--
ALTER TABLE `j78lr_finder_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Indexes for table `j78lr_imageshow_external_source_picasa`
--
ALTER TABLE `j78lr_imageshow_external_source_picasa`
  ADD PRIMARY KEY (`external_source_id`);

--
-- Indexes for table `j78lr_imageshow_images`
--
ALTER TABLE `j78lr_imageshow_images`
  ADD PRIMARY KEY (`image_id`);

--
-- Indexes for table `j78lr_imageshow_log`
--
ALTER TABLE `j78lr_imageshow_log`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `j78lr_imageshow_showcase`
--
ALTER TABLE `j78lr_imageshow_showcase`
  ADD PRIMARY KEY (`showcase_id`);

--
-- Indexes for table `j78lr_imageshow_showlist`
--
ALTER TABLE `j78lr_imageshow_showlist`
  ADD PRIMARY KEY (`showlist_id`);

--
-- Indexes for table `j78lr_imageshow_source_profile`
--
ALTER TABLE `j78lr_imageshow_source_profile`
  ADD PRIMARY KEY (`external_source_profile_id`);

--
-- Indexes for table `j78lr_imageshow_theme_carousel`
--
ALTER TABLE `j78lr_imageshow_theme_carousel`
  ADD PRIMARY KEY (`theme_id`);

--
-- Indexes for table `j78lr_imageshow_theme_classic_flash`
--
ALTER TABLE `j78lr_imageshow_theme_classic_flash`
  ADD PRIMARY KEY (`theme_id`);

--
-- Indexes for table `j78lr_imageshow_theme_classic_javascript`
--
ALTER TABLE `j78lr_imageshow_theme_classic_javascript`
  ADD PRIMARY KEY (`theme_id`);

--
-- Indexes for table `j78lr_imageshow_theme_classic_parameters`
--
ALTER TABLE `j78lr_imageshow_theme_classic_parameters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `j78lr_imageshow_theme_flow`
--
ALTER TABLE `j78lr_imageshow_theme_flow`
  ADD PRIMARY KEY (`theme_id`);

--
-- Indexes for table `j78lr_imageshow_theme_grid`
--
ALTER TABLE `j78lr_imageshow_theme_grid`
  ADD PRIMARY KEY (`theme_id`);

--
-- Indexes for table `j78lr_imageshow_theme_slider`
--
ALTER TABLE `j78lr_imageshow_theme_slider`
  ADD PRIMARY KEY (`theme_id`);

--
-- Indexes for table `j78lr_imageshow_theme_strip`
--
ALTER TABLE `j78lr_imageshow_theme_strip`
  ADD PRIMARY KEY (`theme_id`);

--
-- Indexes for table `j78lr_jsn_easyslider_config`
--
ALTER TABLE `j78lr_jsn_easyslider_config`
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `j78lr_jsn_easyslider_messages`
--
ALTER TABLE `j78lr_jsn_easyslider_messages`
  ADD PRIMARY KEY (`msg_id`),
  ADD UNIQUE KEY `message` (`msg_screen`,`ordering`);

--
-- Indexes for table `j78lr_jsn_easyslider_sliders`
--
ALTER TABLE `j78lr_jsn_easyslider_sliders`
  ADD PRIMARY KEY (`slider_id`);

--
-- Indexes for table `j78lr_jsn_imageshow_config`
--
ALTER TABLE `j78lr_jsn_imageshow_config`
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `j78lr_jsn_imageshow_messages`
--
ALTER TABLE `j78lr_jsn_imageshow_messages`
  ADD PRIMARY KEY (`msg_id`);

--
-- Indexes for table `j78lr_jsn_mobilize_config`
--
ALTER TABLE `j78lr_jsn_mobilize_config`
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `j78lr_jsn_mobilize_design`
--
ALTER TABLE `j78lr_jsn_mobilize_design`
  ADD PRIMARY KEY (`design_id`);

--
-- Indexes for table `j78lr_jsn_mobilize_messages`
--
ALTER TABLE `j78lr_jsn_mobilize_messages`
  ADD PRIMARY KEY (`msg_id`),
  ADD UNIQUE KEY `message` (`msg_screen`,`ordering`);

--
-- Indexes for table `j78lr_jsn_mobilize_os`
--
ALTER TABLE `j78lr_jsn_mobilize_os`
  ADD PRIMARY KEY (`os_id`);

--
-- Indexes for table `j78lr_jsn_mobilize_os_support`
--
ALTER TABLE `j78lr_jsn_mobilize_os_support`
  ADD PRIMARY KEY (`support_id`);

--
-- Indexes for table `j78lr_jsn_mobilize_profiles`
--
ALTER TABLE `j78lr_jsn_mobilize_profiles`
  ADD PRIMARY KEY (`profile_id`);

--
-- Indexes for table `j78lr_jsn_pagebuilder_config`
--
ALTER TABLE `j78lr_jsn_pagebuilder_config`
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `j78lr_jsn_pagebuilder_content_custom_css`
--
ALTER TABLE `j78lr_jsn_pagebuilder_content_custom_css`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `j78lr_jsn_pagebuilder_messages`
--
ALTER TABLE `j78lr_jsn_pagebuilder_messages`
  ADD PRIMARY KEY (`msg_id`),
  ADD UNIQUE KEY `message` (`msg_screen`,`ordering`);

--
-- Indexes for table `j78lr_jsn_poweradmin_config`
--
ALTER TABLE `j78lr_jsn_poweradmin_config`
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `j78lr_jsn_poweradmin_favourite`
--
ALTER TABLE `j78lr_jsn_poweradmin_favourite`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `j78lr_jsn_poweradmin_history`
--
ALTER TABLE `j78lr_jsn_poweradmin_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `j78lr_jsn_tplframework_megamenu`
--
ALTER TABLE `j78lr_jsn_tplframework_megamenu`
  ADD PRIMARY KEY (`megamenu_id`);

--
-- Indexes for table `j78lr_jsn_uniform_config`
--
ALTER TABLE `j78lr_jsn_uniform_config`
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `j78lr_jsn_uniform_data`
--
ALTER TABLE `j78lr_jsn_uniform_data`
  ADD PRIMARY KEY (`data_id`),
  ADD KEY `fk_uniform_data_forms` (`form_id`);

--
-- Indexes for table `j78lr_jsn_uniform_emails`
--
ALTER TABLE `j78lr_jsn_uniform_emails`
  ADD PRIMARY KEY (`email_id`),
  ADD KEY `fk_uniform_emails_forms` (`form_id`);

--
-- Indexes for table `j78lr_jsn_uniform_fields`
--
ALTER TABLE `j78lr_jsn_uniform_fields`
  ADD PRIMARY KEY (`field_id`),
  ADD KEY `fk_uniform_fields_forms` (`form_id`);

--
-- Indexes for table `j78lr_jsn_uniform_form_pages`
--
ALTER TABLE `j78lr_jsn_uniform_form_pages`
  ADD PRIMARY KEY (`page_id`);

--
-- Indexes for table `j78lr_jsn_uniform_forms`
--
ALTER TABLE `j78lr_jsn_uniform_forms`
  ADD PRIMARY KEY (`form_id`);

--
-- Indexes for table `j78lr_jsn_uniform_messages`
--
ALTER TABLE `j78lr_jsn_uniform_messages`
  ADD PRIMARY KEY (`msg_id`),
  ADD UNIQUE KEY `message` (`msg_screen`,`ordering`);

--
-- Indexes for table `j78lr_jsn_uniform_submission_data`
--
ALTER TABLE `j78lr_jsn_uniform_submission_data`
  ADD PRIMARY KEY (`submission_data_id`),
  ADD KEY `submission_data_id` (`submission_data_id`),
  ADD KEY `submission_id` (`submission_id`),
  ADD KEY `form_id` (`form_id`),
  ADD KEY `field_id` (`field_id`);

--
-- Indexes for table `j78lr_jsn_uniform_submissions`
--
ALTER TABLE `j78lr_jsn_uniform_submissions`
  ADD PRIMARY KEY (`submission_id`);

--
-- Indexes for table `j78lr_jsn_uniform_templates`
--
ALTER TABLE `j78lr_jsn_uniform_templates`
  ADD PRIMARY KEY (`template_id`),
  ADD KEY `fk_uniform_templates_forms` (`form_id`);

--
-- Indexes for table `j78lr_languages`
--
ALTER TABLE `j78lr_languages`
  ADD PRIMARY KEY (`lang_id`),
  ADD UNIQUE KEY `idx_sef` (`sef`),
  ADD UNIQUE KEY `idx_image` (`image`),
  ADD UNIQUE KEY `idx_langcode` (`lang_code`),
  ADD KEY `idx_ordering` (`ordering`),
  ADD KEY `idx_access` (`access`);

--
-- Indexes for table `j78lr_menu`
--
ALTER TABLE `j78lr_menu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`(100),`language`),
  ADD KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  ADD KEY `idx_menutype` (`menutype`),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_path` (`path`(100));

--
-- Indexes for table `j78lr_menu_types`
--
ALTER TABLE `j78lr_menu_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_menutype` (`menutype`);

--
-- Indexes for table `j78lr_messages`
--
ALTER TABLE `j78lr_messages`
  ADD PRIMARY KEY (`message_id`),
  ADD KEY `useridto_state` (`user_id_to`,`state`);

--
-- Indexes for table `j78lr_messages_cfg`
--
ALTER TABLE `j78lr_messages_cfg`
  ADD UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`);

--
-- Indexes for table `j78lr_modules`
--
ALTER TABLE `j78lr_modules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `published` (`published`,`access`),
  ADD KEY `newsfeeds` (`module`,`published`),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `j78lr_modules_menu`
--
ALTER TABLE `j78lr_modules_menu`
  ADD PRIMARY KEY (`moduleid`,`menuid`);

--
-- Indexes for table `j78lr_newsfeeds`
--
ALTER TABLE `j78lr_newsfeeds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`published`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`);

--
-- Indexes for table `j78lr_overrider`
--
ALTER TABLE `j78lr_overrider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `j78lr_postinstall_messages`
--
ALTER TABLE `j78lr_postinstall_messages`
  ADD PRIMARY KEY (`postinstall_message_id`);

--
-- Indexes for table `j78lr_redirect_links`
--
ALTER TABLE `j78lr_redirect_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_old_url` (`old_url`(100)),
  ADD KEY `idx_link_modifed` (`modified_date`);

--
-- Indexes for table `j78lr_schemas`
--
ALTER TABLE `j78lr_schemas`
  ADD PRIMARY KEY (`extension_id`,`version_id`);

--
-- Indexes for table `j78lr_session`
--
ALTER TABLE `j78lr_session`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `time` (`time`);

--
-- Indexes for table `j78lr_tags`
--
ALTER TABLE `j78lr_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tag_idx` (`published`,`access`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `j78lr_template_styles`
--
ALTER TABLE `j78lr_template_styles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_template` (`template`),
  ADD KEY `idx_home` (`home`);

--
-- Indexes for table `j78lr_ucm_base`
--
ALTER TABLE `j78lr_ucm_base`
  ADD PRIMARY KEY (`ucm_id`),
  ADD KEY `idx_ucm_item_id` (`ucm_item_id`),
  ADD KEY `idx_ucm_type_id` (`ucm_type_id`),
  ADD KEY `idx_ucm_language_id` (`ucm_language_id`);

--
-- Indexes for table `j78lr_ucm_content`
--
ALTER TABLE `j78lr_ucm_content`
  ADD PRIMARY KEY (`core_content_id`),
  ADD KEY `tag_idx` (`core_state`,`core_access`),
  ADD KEY `idx_access` (`core_access`),
  ADD KEY `idx_alias` (`core_alias`(100)),
  ADD KEY `idx_language` (`core_language`),
  ADD KEY `idx_title` (`core_title`(100)),
  ADD KEY `idx_modified_time` (`core_modified_time`),
  ADD KEY `idx_created_time` (`core_created_time`),
  ADD KEY `idx_content_type` (`core_type_alias`(100)),
  ADD KEY `idx_core_modified_user_id` (`core_modified_user_id`),
  ADD KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`),
  ADD KEY `idx_core_created_user_id` (`core_created_user_id`),
  ADD KEY `idx_core_type_id` (`core_type_id`);

--
-- Indexes for table `j78lr_ucm_history`
--
ALTER TABLE `j78lr_ucm_history`
  ADD PRIMARY KEY (`version_id`),
  ADD KEY `idx_ucm_item_id` (`ucm_type_id`,`ucm_item_id`),
  ADD KEY `idx_save_date` (`save_date`);

--
-- Indexes for table `j78lr_update_sites`
--
ALTER TABLE `j78lr_update_sites`
  ADD PRIMARY KEY (`update_site_id`);

--
-- Indexes for table `j78lr_update_sites_extensions`
--
ALTER TABLE `j78lr_update_sites_extensions`
  ADD PRIMARY KEY (`update_site_id`,`extension_id`);

--
-- Indexes for table `j78lr_updates`
--
ALTER TABLE `j78lr_updates`
  ADD PRIMARY KEY (`update_id`);

--
-- Indexes for table `j78lr_user_keys`
--
ALTER TABLE `j78lr_user_keys`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `series` (`series`),
  ADD UNIQUE KEY `series_2` (`series`),
  ADD UNIQUE KEY `series_3` (`series`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `j78lr_user_notes`
--
ALTER TABLE `j78lr_user_notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`),
  ADD KEY `idx_category_id` (`catid`);

--
-- Indexes for table `j78lr_user_profiles`
--
ALTER TABLE `j78lr_user_profiles`
  ADD UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`);

--
-- Indexes for table `j78lr_user_usergroup_map`
--
ALTER TABLE `j78lr_user_usergroup_map`
  ADD PRIMARY KEY (`user_id`,`group_id`);

--
-- Indexes for table `j78lr_usergroups`
--
ALTER TABLE `j78lr_usergroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  ADD KEY `idx_usergroup_title_lookup` (`title`),
  ADD KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  ADD KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE;

--
-- Indexes for table `j78lr_users`
--
ALTER TABLE `j78lr_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_name` (`name`(100)),
  ADD KEY `idx_block` (`block`),
  ADD KEY `username` (`username`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `j78lr_viewlevels`
--
ALTER TABLE `j78lr_viewlevels`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_assetgroup_title_lookup` (`title`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `j78lr_assets`
--
ALTER TABLE `j78lr_assets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=303;
--
-- AUTO_INCREMENT for table `j78lr_banner_clients`
--
ALTER TABLE `j78lr_banner_clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `j78lr_banners`
--
ALTER TABLE `j78lr_banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `j78lr_categories`
--
ALTER TABLE `j78lr_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;
--
-- AUTO_INCREMENT for table `j78lr_contact_details`
--
ALTER TABLE `j78lr_contact_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `j78lr_content`
--
ALTER TABLE `j78lr_content`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;
--
-- AUTO_INCREMENT for table `j78lr_content_types`
--
ALTER TABLE `j78lr_content_types`
  MODIFY `type_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `j78lr_extensions`
--
ALTER TABLE `j78lr_extensions`
  MODIFY `extension_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10067;
--
-- AUTO_INCREMENT for table `j78lr_finder_filters`
--
ALTER TABLE `j78lr_finder_filters`
  MODIFY `filter_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `j78lr_finder_links`
--
ALTER TABLE `j78lr_finder_links`
  MODIFY `link_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `j78lr_finder_taxonomy`
--
ALTER TABLE `j78lr_finder_taxonomy`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `j78lr_finder_terms`
--
ALTER TABLE `j78lr_finder_terms`
  MODIFY `term_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `j78lr_finder_types`
--
ALTER TABLE `j78lr_finder_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `j78lr_imageshow_external_source_picasa`
--
ALTER TABLE `j78lr_imageshow_external_source_picasa`
  MODIFY `external_source_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `j78lr_imageshow_images`
--
ALTER TABLE `j78lr_imageshow_images`
  MODIFY `image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=386;
--
-- AUTO_INCREMENT for table `j78lr_imageshow_log`
--
ALTER TABLE `j78lr_imageshow_log`
  MODIFY `log_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `j78lr_imageshow_showcase`
--
ALTER TABLE `j78lr_imageshow_showcase`
  MODIFY `showcase_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `j78lr_imageshow_showlist`
--
ALTER TABLE `j78lr_imageshow_showlist`
  MODIFY `showlist_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `j78lr_imageshow_source_profile`
--
ALTER TABLE `j78lr_imageshow_source_profile`
  MODIFY `external_source_profile_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `j78lr_imageshow_theme_carousel`
--
ALTER TABLE `j78lr_imageshow_theme_carousel`
  MODIFY `theme_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `j78lr_imageshow_theme_classic_flash`
--
ALTER TABLE `j78lr_imageshow_theme_classic_flash`
  MODIFY `theme_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `j78lr_imageshow_theme_classic_javascript`
--
ALTER TABLE `j78lr_imageshow_theme_classic_javascript`
  MODIFY `theme_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `j78lr_imageshow_theme_classic_parameters`
--
ALTER TABLE `j78lr_imageshow_theme_classic_parameters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `j78lr_imageshow_theme_flow`
--
ALTER TABLE `j78lr_imageshow_theme_flow`
  MODIFY `theme_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `j78lr_imageshow_theme_grid`
--
ALTER TABLE `j78lr_imageshow_theme_grid`
  MODIFY `theme_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `j78lr_imageshow_theme_slider`
--
ALTER TABLE `j78lr_imageshow_theme_slider`
  MODIFY `theme_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `j78lr_imageshow_theme_strip`
--
ALTER TABLE `j78lr_imageshow_theme_strip`
  MODIFY `theme_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `j78lr_jsn_easyslider_messages`
--
ALTER TABLE `j78lr_jsn_easyslider_messages`
  MODIFY `msg_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `j78lr_jsn_easyslider_sliders`
--
ALTER TABLE `j78lr_jsn_easyslider_sliders`
  MODIFY `slider_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `j78lr_jsn_imageshow_messages`
--
ALTER TABLE `j78lr_jsn_imageshow_messages`
  MODIFY `msg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `j78lr_jsn_mobilize_design`
--
ALTER TABLE `j78lr_jsn_mobilize_design`
  MODIFY `design_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `j78lr_jsn_mobilize_messages`
--
ALTER TABLE `j78lr_jsn_mobilize_messages`
  MODIFY `msg_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `j78lr_jsn_mobilize_os`
--
ALTER TABLE `j78lr_jsn_mobilize_os`
  MODIFY `os_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `j78lr_jsn_mobilize_os_support`
--
ALTER TABLE `j78lr_jsn_mobilize_os_support`
  MODIFY `support_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `j78lr_jsn_mobilize_profiles`
--
ALTER TABLE `j78lr_jsn_mobilize_profiles`
  MODIFY `profile_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `j78lr_jsn_pagebuilder_content_custom_css`
--
ALTER TABLE `j78lr_jsn_pagebuilder_content_custom_css`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `j78lr_jsn_pagebuilder_messages`
--
ALTER TABLE `j78lr_jsn_pagebuilder_messages`
  MODIFY `msg_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `j78lr_jsn_poweradmin_favourite`
--
ALTER TABLE `j78lr_jsn_poweradmin_favourite`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `j78lr_jsn_poweradmin_history`
--
ALTER TABLE `j78lr_jsn_poweradmin_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `j78lr_jsn_tplframework_megamenu`
--
ALTER TABLE `j78lr_jsn_tplframework_megamenu`
  MODIFY `megamenu_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `j78lr_jsn_uniform_data`
--
ALTER TABLE `j78lr_jsn_uniform_data`
  MODIFY `data_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `j78lr_jsn_uniform_emails`
--
ALTER TABLE `j78lr_jsn_uniform_emails`
  MODIFY `email_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `j78lr_jsn_uniform_fields`
--
ALTER TABLE `j78lr_jsn_uniform_fields`
  MODIFY `field_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `j78lr_jsn_uniform_form_pages`
--
ALTER TABLE `j78lr_jsn_uniform_form_pages`
  MODIFY `page_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `j78lr_jsn_uniform_forms`
--
ALTER TABLE `j78lr_jsn_uniform_forms`
  MODIFY `form_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `j78lr_jsn_uniform_messages`
--
ALTER TABLE `j78lr_jsn_uniform_messages`
  MODIFY `msg_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `j78lr_jsn_uniform_submission_data`
--
ALTER TABLE `j78lr_jsn_uniform_submission_data`
  MODIFY `submission_data_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `j78lr_jsn_uniform_submissions`
--
ALTER TABLE `j78lr_jsn_uniform_submissions`
  MODIFY `submission_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `j78lr_jsn_uniform_templates`
--
ALTER TABLE `j78lr_jsn_uniform_templates`
  MODIFY `template_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `j78lr_languages`
--
ALTER TABLE `j78lr_languages`
  MODIFY `lang_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `j78lr_menu`
--
ALTER TABLE `j78lr_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2198;
--
-- AUTO_INCREMENT for table `j78lr_menu_types`
--
ALTER TABLE `j78lr_menu_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `j78lr_messages`
--
ALTER TABLE `j78lr_messages`
  MODIFY `message_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `j78lr_modules`
--
ALTER TABLE `j78lr_modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=609;
--
-- AUTO_INCREMENT for table `j78lr_newsfeeds`
--
ALTER TABLE `j78lr_newsfeeds`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `j78lr_overrider`
--
ALTER TABLE `j78lr_overrider`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key';
--
-- AUTO_INCREMENT for table `j78lr_postinstall_messages`
--
ALTER TABLE `j78lr_postinstall_messages`
  MODIFY `postinstall_message_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `j78lr_redirect_links`
--
ALTER TABLE `j78lr_redirect_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `j78lr_tags`
--
ALTER TABLE `j78lr_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `j78lr_template_styles`
--
ALTER TABLE `j78lr_template_styles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `j78lr_ucm_content`
--
ALTER TABLE `j78lr_ucm_content`
  MODIFY `core_content_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `j78lr_ucm_history`
--
ALTER TABLE `j78lr_ucm_history`
  MODIFY `version_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `j78lr_update_sites`
--
ALTER TABLE `j78lr_update_sites`
  MODIFY `update_site_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `j78lr_updates`
--
ALTER TABLE `j78lr_updates`
  MODIFY `update_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;
--
-- AUTO_INCREMENT for table `j78lr_user_keys`
--
ALTER TABLE `j78lr_user_keys`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `j78lr_user_notes`
--
ALTER TABLE `j78lr_user_notes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `j78lr_usergroups`
--
ALTER TABLE `j78lr_usergroups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `j78lr_users`
--
ALTER TABLE `j78lr_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `j78lr_viewlevels`
--
ALTER TABLE `j78lr_viewlevels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
