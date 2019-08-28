-- phpMyAdmin SQL Dump
-- version 4.2.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 02, 2016 at 02:02 PM
-- Server version: 5.5.37
-- PHP Version: 5.4.45

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `royalhotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `AreaPermissionAssignments`
--

DROP TABLE IF EXISTS `AreaPermissionAssignments`;
CREATE TABLE IF NOT EXISTS `AreaPermissionAssignments` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) NOT NULL,
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `AreaPermissionBlockTypeAccessList`
--

DROP TABLE IF EXISTS `AreaPermissionBlockTypeAccessList`;
CREATE TABLE IF NOT EXISTS `AreaPermissionBlockTypeAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `AreaPermissionBlockTypeAccessListCustom`
--

DROP TABLE IF EXISTS `AreaPermissionBlockTypeAccessListCustom`;
CREATE TABLE IF NOT EXISTS `AreaPermissionBlockTypeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `btID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Areas`
--

DROP TABLE IF EXISTS `Areas`;
CREATE TABLE IF NOT EXISTS `Areas` (
`arID` int(10) unsigned NOT NULL,
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) NOT NULL,
  `arOverrideCollectionPermissions` tinyint(1) NOT NULL DEFAULT '0',
  `arInheritPermissionsFromAreaOnCID` int(10) unsigned NOT NULL DEFAULT '0',
  `arIsGlobal` int(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=112 ;

--
-- Dumping data for table `Areas`
--

INSERT INTO `Areas` (`arID`, `cID`, `arHandle`, `arOverrideCollectionPermissions`, `arInheritPermissionsFromAreaOnCID`, `arIsGlobal`) VALUES
(1, 106, 'Header', 0, 0, 0),
(2, 106, 'Column 1', 0, 0, 0),
(3, 106, 'Column 2', 0, 0, 0),
(4, 106, 'Column 3', 0, 0, 0),
(5, 106, 'Column 4', 0, 0, 0),
(6, 107, 'Primary', 0, 0, 0),
(7, 107, 'Secondary 1', 0, 0, 0),
(8, 107, 'Secondary 2', 0, 0, 0),
(9, 107, 'Secondary 3', 0, 0, 0),
(10, 107, 'Secondary 4', 0, 0, 0),
(11, 107, 'Secondary 5', 0, 0, 0),
(12, 121, 'Main', 0, 0, 0),
(13, 122, 'Main', 0, 0, 0),
(14, 123, 'Main', 0, 0, 0),
(15, 124, 'Main', 0, 0, 0),
(16, 124, 'Sidebar', 0, 0, 0),
(17, 124, 'Thumbnail Image', 0, 0, 0),
(18, 124, 'Header Image', 0, 0, 0),
(19, 125, 'Header Image', 0, 0, 0),
(20, 126, 'Header Image', 0, 0, 0),
(21, 127, 'Header Image', 0, 0, 0),
(22, 1, 'Sidebar', 0, 0, 0),
(23, 1, 'Main', 0, 0, 0),
(24, 1, 'Header Image', 0, 0, 0),
(25, 128, 'Sidebar', 0, 0, 0),
(26, 128, 'Main', 0, 0, 0),
(27, 128, 'Header Image', 0, 0, 0),
(28, 131, 'Sidebar', 0, 0, 0),
(29, 131, 'Main', 0, 0, 0),
(30, 131, 'Header Image', 0, 0, 0),
(31, 132, 'Sidebar', 0, 0, 0),
(32, 132, 'Main', 0, 0, 0),
(33, 132, 'Header Image', 0, 0, 0),
(34, 129, 'Sidebar', 0, 0, 0),
(35, 129, 'Main', 0, 0, 0),
(36, 129, 'Header Image', 0, 0, 0),
(37, 130, 'Main', 0, 0, 0),
(38, 130, 'Sidebar', 0, 0, 0),
(39, 130, 'Header Image', 0, 0, 0),
(40, 133, 'Header Image', 0, 0, 0),
(41, 133, 'Main', 0, 0, 0),
(42, 133, 'Thumbnail Image', 0, 0, 0),
(43, 133, 'Sidebar', 0, 0, 0),
(44, 134, 'Main', 0, 0, 0),
(45, 134, 'Sidebar', 0, 0, 0),
(46, 134, 'Header Image', 0, 0, 0),
(47, 1, 'Site Name', 0, 0, 1),
(48, 1, 'Header Nav', 0, 0, 1),
(49, 128, 'Site Name', 0, 0, 1),
(50, 128, 'Header Nav', 0, 0, 1),
(51, 1, 'Site Logo', 0, 0, 1),
(52, 135, 'Main', 0, 0, 0),
(53, 1, 'Header Booking', 0, 0, 1),
(54, 136, 'Main', 0, 0, 0),
(55, 1, 'Body Text', 0, 0, 0),
(56, 1, 'Body Banner01', 0, 0, 1),
(57, 1, 'Body Banner02', 0, 0, 1),
(58, 1, 'Body Banner03', 0, 0, 1),
(59, 1, 'Map Heading', 0, 0, 1),
(60, 1, 'Location Map', 0, 0, 1),
(61, 1, 'Map Description', 0, 0, 1),
(62, 1, 'Footer Logo', 0, 0, 1),
(63, 1, 'Footer Address', 0, 0, 1),
(64, 1, 'Footer Menu', 0, 0, 1),
(65, 130, 'Header Nav', 0, 0, 1),
(66, 130, 'Site Logo', 0, 0, 1),
(67, 130, 'Header Booking', 0, 0, 1),
(68, 130, 'Body Text', 0, 0, 0),
(69, 130, 'Body Banner01', 0, 0, 1),
(70, 130, 'Body Banner02', 0, 0, 1),
(71, 130, 'Body Banner03', 0, 0, 1),
(72, 130, 'Map Heading', 0, 0, 1),
(73, 130, 'Location Map', 0, 0, 1),
(74, 130, 'Map Description', 0, 0, 1),
(75, 130, 'Footer Logo', 0, 0, 1),
(76, 130, 'Footer Address', 0, 0, 1),
(77, 130, 'Footer Menu', 0, 0, 1),
(78, 129, 'Header Nav', 0, 0, 1),
(79, 129, 'Site Logo', 0, 0, 1),
(80, 129, 'Header Booking', 0, 0, 1),
(81, 129, 'Body Text', 0, 0, 0),
(82, 129, 'Body Banner01', 0, 0, 1),
(83, 129, 'Body Banner02', 0, 0, 1),
(84, 129, 'Body Banner03', 0, 0, 1),
(85, 129, 'Map Heading', 0, 0, 1),
(86, 129, 'Location Map', 0, 0, 1),
(87, 129, 'Map Description', 0, 0, 1),
(88, 129, 'Footer Logo', 0, 0, 1),
(89, 129, 'Footer Address', 0, 0, 1),
(90, 129, 'Footer Menu', 0, 0, 1),
(91, 128, 'Site Logo', 0, 0, 1),
(92, 128, 'Header Booking', 0, 0, 1),
(93, 128, 'Footer Logo', 0, 0, 1),
(94, 128, 'Footer Address', 0, 0, 1),
(95, 128, 'Footer Menu', 0, 0, 1),
(96, 128, 'Body Banner01', 0, 0, 1),
(97, 128, 'Body Banner02', 0, 0, 1),
(98, 128, 'Body Banner03', 0, 0, 1),
(99, 128, 'Map Heading', 0, 0, 1),
(100, 128, 'Location Map', 0, 0, 1),
(101, 128, 'Map Description', 0, 0, 1),
(102, 137, 'Main', 0, 0, 0),
(103, 138, 'Main', 0, 0, 0),
(104, 139, 'Main', 0, 0, 0),
(105, 140, 'Main', 0, 0, 0),
(106, 141, 'Main', 0, 0, 0),
(107, 142, 'Main', 0, 0, 0),
(108, 143, 'Main', 0, 0, 0),
(109, 144, 'Main', 0, 0, 0),
(110, 145, 'Main', 0, 0, 0),
(111, 128, 'Body Content', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `atAddress`
--

DROP TABLE IF EXISTS `atAddress`;
CREATE TABLE IF NOT EXISTS `atAddress` (
  `avID` int(10) unsigned NOT NULL DEFAULT '0',
  `address1` varchar(255) DEFAULT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state_province` varchar(255) DEFAULT NULL,
  `country` varchar(4) DEFAULT NULL,
  `postal_code` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `atAddressCustomCountries`
--

DROP TABLE IF EXISTS `atAddressCustomCountries`;
CREATE TABLE IF NOT EXISTS `atAddressCustomCountries` (
`atAddressCustomCountryID` int(10) unsigned NOT NULL,
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `country` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `atAddressSettings`
--

DROP TABLE IF EXISTS `atAddressSettings`;
CREATE TABLE IF NOT EXISTS `atAddressSettings` (
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `akHasCustomCountries` int(1) NOT NULL DEFAULT '0',
  `akDefaultCountry` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `atBoolean`
--

DROP TABLE IF EXISTS `atBoolean`;
CREATE TABLE IF NOT EXISTS `atBoolean` (
  `avID` int(10) unsigned NOT NULL,
  `value` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `atBoolean`
--

INSERT INTO `atBoolean` (`avID`, `value`) VALUES
(20, 1),
(31, 1),
(34, 1),
(64, 1),
(65, 1),
(68, 1),
(69, 1),
(75, 1),
(109, 1),
(118, 1),
(119, 1),
(120, 1),
(139, 1),
(140, 1),
(141, 1);

-- --------------------------------------------------------

--
-- Table structure for table `atBooleanSettings`
--

DROP TABLE IF EXISTS `atBooleanSettings`;
CREATE TABLE IF NOT EXISTS `atBooleanSettings` (
  `akID` int(10) unsigned NOT NULL,
  `akCheckedByDefault` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `atBooleanSettings`
--

INSERT INTO `atBooleanSettings` (`akID`, `akCheckedByDefault`) VALUES
(5, 0),
(6, 0),
(8, 0),
(9, 0),
(10, 1),
(11, 1);

-- --------------------------------------------------------

--
-- Table structure for table `atDateTime`
--

DROP TABLE IF EXISTS `atDateTime`;
CREATE TABLE IF NOT EXISTS `atDateTime` (
  `avID` int(10) unsigned NOT NULL,
  `value` datetime DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `atDateTimeSettings`
--

DROP TABLE IF EXISTS `atDateTimeSettings`;
CREATE TABLE IF NOT EXISTS `atDateTimeSettings` (
  `akID` int(10) unsigned NOT NULL,
  `akDateDisplayMode` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `atDefault`
--

DROP TABLE IF EXISTS `atDefault`;
CREATE TABLE IF NOT EXISTS `atDefault` (
  `avID` int(10) unsigned NOT NULL,
  `value` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `atDefault`
--

INSERT INTO `atDefault` (`avID`, `value`) VALUES
(1, 'blog, blogging'),
(2, 'icon-book'),
(3, 'new blog, write blog, blogging'),
(4, 'icon-pencil'),
(5, 'blog drafts, composer'),
(6, 'icon-book'),
(7, 'pages, add page, delete page, copy, move, alias'),
(8, 'pages, add page, delete page, copy, move, alias'),
(9, 'icon-home'),
(10, 'pages, add page, delete page, copy, move, alias, bulk'),
(11, 'icon-road'),
(12, 'find page, search page, search, find, pages, sitemap'),
(13, 'icon-search'),
(14, 'add file, delete file, copy, move, alias, resize, crop, rename, images, title, attribute'),
(15, 'icon-picture'),
(16, 'file, file attributes, title, attribute, description, rename'),
(17, 'icon-cog'),
(18, 'files, category, categories'),
(19, 'icon-list-alt'),
(21, 'new file set'),
(22, 'icon-plus-sign'),
(23, 'users, groups, people, find, delete user, remove user, change password, password'),
(24, 'find, search, people, delete user, remove user, change password, password'),
(25, 'icon-user'),
(26, 'user, group, people, permissions, access, expire'),
(27, 'icon-globe'),
(28, 'user attributes, user data, gather data, registration data'),
(29, 'icon-cog'),
(30, 'new user, create'),
(32, 'icon-plus-sign'),
(33, 'new user group, new group, group, create'),
(35, 'icon-plus'),
(36, 'group set'),
(37, 'icon-list'),
(38, 'forms, log, error, email, mysql, exception, survey'),
(39, 'hits, pageviews, visitors, activity'),
(40, 'icon-signal'),
(41, 'forms, questions, response, data'),
(42, 'icon-briefcase'),
(43, 'questions, quiz, response'),
(44, 'icon-tasks'),
(45, 'forms, log, error, email, mysql, exception, survey, history'),
(46, 'icon-time'),
(47, 'new theme, theme, active theme, change theme, template, css'),
(48, 'icon-font'),
(49, 'theme'),
(50, 'page types'),
(51, 'custom theme, change theme, custom css, css'),
(52, 'page type defaults, global block, global area, starter, template'),
(53, 'icon-file'),
(54, 'page attributes, custom'),
(55, 'icon-cog'),
(56, 'single, page, custom, application'),
(57, 'icon-wrench'),
(58, 'add workflow, remove workflow'),
(59, 'icon-list'),
(60, 'icon-user'),
(61, 'stacks, reusable content, scrapbook, copy, paste, paste block, copy block, site name, logo'),
(62, 'icon-th'),
(63, 'icon-lock'),
(66, 'block, refresh, custom'),
(67, 'icon-wrench'),
(70, 'add-on, addon, ecommerce, install, discussions, forums, themes, templates, blocks'),
(71, 'update, upgrade'),
(72, 'concrete5.org, my account, marketplace'),
(73, 'buy theme, new theme, marketplace, template'),
(74, 'buy addon, buy add on, buy add-on, purchase addon, purchase add on, purchase add-on, find addon, new addon, marketplace'),
(76, 'website name, title'),
(77, 'logo, favicon, iphone, icon, bookmark'),
(78, 'tinymce, content block, fonts, editor, content, overlay'),
(79, 'translate, translation, internationalization, multilingual'),
(80, 'timezone, profile, locale'),
(81, 'interface, quick nav, dashboard background, background image'),
(82, 'vanity, pretty url, seo, pageview, view'),
(83, 'bulk, seo, change keywords, engine, optimization, search'),
(84, 'traffic, statistics, google analytics, quant, pageviews, hits'),
(85, 'pretty, slug'),
(86, 'turn off statistics, tracking, statistics, pageviews, hits'),
(87, 'configure search, site search, search option'),
(88, 'cache option, change cache, override, turn on cache, turn off cache, no cache, page cache, caching'),
(89, 'cache option, turn off cache, no cache, page cache, caching'),
(90, 'index search, reindex search, build sitemap, sitemap.xml, clear old versions, page versions, remove old'),
(91, 'editors, hide site, offline, private, public, access'),
(92, 'file options, file manager, upload, modify'),
(93, 'security, files, media, extension, manager, upload'),
(94, 'security, actions, administrator, admin, package, marketplace, search'),
(95, 'security, lock ip, lock out, block ip, address, restrict, access'),
(96, 'security, registration'),
(97, 'antispam, block spam, security'),
(98, 'lock site, under construction, hide, hidden'),
(99, 'profile, login, redirect, specific, dashboard, administrators'),
(100, 'member profile, member page, community, forums, social, avatar'),
(101, 'signup, new user, community'),
(102, 'smtp, mail settings'),
(103, 'email server, mail settings, mail configuration, external, internal'),
(104, 'test smtp, test mail'),
(105, 'email server, mail settings, mail configuration, private message, message system, import, email, message'),
(106, 'attribute configuration'),
(107, 'attributes, sets'),
(108, 'attributes, types'),
(110, 'overrides, system info, debug, support, help'),
(111, 'errors, exceptions, develop, support, help'),
(112, 'email, logging, logs, smtp, pop, errors, mysql, log'),
(113, 'security, alternate storage, hide files'),
(114, 'network, proxy server'),
(115, 'export, backup, database, sql, mysql, encryption, restore'),
(116, 'upgrade, new version, update'),
(117, 'export, database, xml, starting, points, schema, refresh, custom, tables');

-- --------------------------------------------------------

--
-- Table structure for table `atFile`
--

DROP TABLE IF EXISTS `atFile`;
CREATE TABLE IF NOT EXISTS `atFile` (
  `avID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `atNumber`
--

DROP TABLE IF EXISTS `atNumber`;
CREATE TABLE IF NOT EXISTS `atNumber` (
  `avID` int(10) unsigned NOT NULL,
  `value` decimal(14,4) DEFAULT '0.0000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `atNumber`
--

INSERT INTO `atNumber` (`avID`, `value`) VALUES
(121, 960.0000),
(122, 212.0000),
(123, 960.0000),
(124, 212.0000),
(125, 960.0000),
(126, 212.0000),
(127, 960.0000),
(128, 212.0000),
(129, 960.0000),
(130, 212.0000),
(131, 150.0000),
(132, 150.0000),
(133, 960.0000),
(134, 212.0000),
(135, 960.0000),
(136, 212.0000),
(143, 1530.0000),
(144, 716.0000),
(145, 1530.0000),
(146, 716.0000),
(147, 1530.0000),
(148, 716.0000),
(149, 107.0000),
(150, 75.0000),
(151, 424.0000),
(152, 508.0000),
(153, 424.0000),
(154, 508.0000),
(155, 424.0000),
(156, 508.0000),
(157, 107.0000),
(158, 75.0000),
(159, 994.0000),
(160, 2.0000),
(161, 424.0000),
(162, 505.0000),
(163, 424.0000),
(164, 505.0000),
(165, 424.0000),
(166, 505.0000);

-- --------------------------------------------------------

--
-- Table structure for table `atSelectOptions`
--

DROP TABLE IF EXISTS `atSelectOptions`;
CREATE TABLE IF NOT EXISTS `atSelectOptions` (
`ID` int(10) unsigned NOT NULL,
  `akID` int(10) unsigned DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `displayOrder` int(10) unsigned DEFAULT NULL,
  `isEndUserAdded` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `atSelectOptions`
--

INSERT INTO `atSelectOptions` (`ID`, `akID`, `value`, `displayOrder`, `isEndUserAdded`) VALUES
(1, 15, 'composer', 0, 1),
(2, 15, 'hello', 1, 1),
(3, 15, 'world', 2, 1),
(4, 15, 'first post', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `atSelectOptionsSelected`
--

DROP TABLE IF EXISTS `atSelectOptionsSelected`;
CREATE TABLE IF NOT EXISTS `atSelectOptionsSelected` (
  `avID` int(10) unsigned NOT NULL,
  `atSelectOptionID` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `atSelectOptionsSelected`
--

INSERT INTO `atSelectOptionsSelected` (`avID`, `atSelectOptionID`) VALUES
(138, 1),
(138, 2),
(138, 3),
(138, 4);

-- --------------------------------------------------------

--
-- Table structure for table `atSelectSettings`
--

DROP TABLE IF EXISTS `atSelectSettings`;
CREATE TABLE IF NOT EXISTS `atSelectSettings` (
  `akID` int(10) unsigned NOT NULL,
  `akSelectAllowMultipleValues` tinyint(1) NOT NULL DEFAULT '0',
  `akSelectOptionDisplayOrder` varchar(255) NOT NULL DEFAULT 'display_asc',
  `akSelectAllowOtherValues` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `atSelectSettings`
--

INSERT INTO `atSelectSettings` (`akID`, `akSelectAllowMultipleValues`, `akSelectOptionDisplayOrder`, `akSelectAllowOtherValues`) VALUES
(15, 1, 'display_asc', 1);

-- --------------------------------------------------------

--
-- Table structure for table `atTextareaSettings`
--

DROP TABLE IF EXISTS `atTextareaSettings`;
CREATE TABLE IF NOT EXISTS `atTextareaSettings` (
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `akTextareaDisplayMode` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `atTextareaSettings`
--

INSERT INTO `atTextareaSettings` (`akID`, `akTextareaDisplayMode`) VALUES
(2, ''),
(3, ''),
(4, ''),
(7, '');

-- --------------------------------------------------------

--
-- Table structure for table `AttributeKeyCategories`
--

DROP TABLE IF EXISTS `AttributeKeyCategories`;
CREATE TABLE IF NOT EXISTS `AttributeKeyCategories` (
`akCategoryID` int(10) unsigned NOT NULL,
  `akCategoryHandle` varchar(255) NOT NULL,
  `akCategoryAllowSets` smallint(4) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `AttributeKeyCategories`
--

INSERT INTO `AttributeKeyCategories` (`akCategoryID`, `akCategoryHandle`, `akCategoryAllowSets`, `pkgID`) VALUES
(1, 'collection', 1, NULL),
(2, 'user', 1, NULL),
(3, 'file', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `AttributeKeys`
--

DROP TABLE IF EXISTS `AttributeKeys`;
CREATE TABLE IF NOT EXISTS `AttributeKeys` (
`akID` int(10) unsigned NOT NULL,
  `akHandle` varchar(255) NOT NULL,
  `akName` varchar(255) NOT NULL,
  `akIsSearchable` tinyint(1) NOT NULL DEFAULT '0',
  `akIsSearchableIndexed` tinyint(1) NOT NULL DEFAULT '0',
  `akIsAutoCreated` tinyint(1) NOT NULL DEFAULT '0',
  `akIsInternal` tinyint(1) NOT NULL DEFAULT '0',
  `akIsColumnHeader` tinyint(1) NOT NULL DEFAULT '0',
  `akIsEditable` tinyint(1) NOT NULL DEFAULT '0',
  `atID` int(10) unsigned DEFAULT NULL,
  `akCategoryID` int(10) unsigned DEFAULT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `AttributeKeys`
--

INSERT INTO `AttributeKeys` (`akID`, `akHandle`, `akName`, `akIsSearchable`, `akIsSearchableIndexed`, `akIsAutoCreated`, `akIsInternal`, `akIsColumnHeader`, `akIsEditable`, `atID`, `akCategoryID`, `pkgID`) VALUES
(1, 'meta_title', 'Meta Title', 1, 1, 0, 0, 0, 1, 1, 1, 0),
(2, 'meta_description', 'Meta Description', 1, 1, 0, 0, 0, 1, 2, 1, 0),
(3, 'meta_keywords', 'Meta Keywords', 1, 1, 0, 0, 0, 1, 2, 1, 0),
(4, 'icon_dashboard', 'Dashboard Icon', 1, 1, 0, 1, 0, 1, 2, 1, 0),
(5, 'exclude_nav', 'Exclude From Nav', 1, 1, 0, 0, 0, 1, 3, 1, 0),
(6, 'exclude_page_list', 'Exclude From Page List', 1, 1, 0, 0, 0, 1, 3, 1, 0),
(7, 'header_extra_content', 'Header Extra Content', 1, 1, 0, 0, 0, 1, 2, 1, 0),
(8, 'exclude_search_index', 'Exclude From Search Index', 1, 1, 0, 0, 0, 1, 3, 1, 0),
(9, 'exclude_sitemapxml', 'Exclude From sitemap.xml', 1, 1, 0, 0, 0, 1, 3, 1, 0),
(10, 'profile_private_messages_enabled', 'I would like to receive private messages.', 1, 1, 0, 0, 0, 1, 3, 2, 0),
(11, 'profile_private_messages_notification_enabled', 'Send me email notifications when I receive a private message.', 1, 1, 0, 0, 0, 1, 3, 2, 0),
(12, 'width', 'Width', 1, 1, 0, 0, 0, 1, 6, 3, 0),
(13, 'height', 'Height', 1, 1, 0, 0, 0, 1, 6, 3, 0),
(14, 'duration', 'Duration', 1, 1, 0, 0, 0, 1, 6, 3, 0),
(15, 'tags', 'Tags', 1, 1, 0, 0, 0, 1, 8, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `AttributeSetKeys`
--

DROP TABLE IF EXISTS `AttributeSetKeys`;
CREATE TABLE IF NOT EXISTS `AttributeSetKeys` (
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `asID` int(10) unsigned NOT NULL DEFAULT '0',
  `displayOrder` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `AttributeSetKeys`
--

INSERT INTO `AttributeSetKeys` (`akID`, `asID`, `displayOrder`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(5, 2, 1),
(6, 2, 2),
(7, 1, 4),
(8, 2, 3),
(9, 2, 4);

-- --------------------------------------------------------

--
-- Table structure for table `AttributeSets`
--

DROP TABLE IF EXISTS `AttributeSets`;
CREATE TABLE IF NOT EXISTS `AttributeSets` (
`asID` int(10) unsigned NOT NULL,
  `asName` varchar(255) DEFAULT NULL,
  `asHandle` varchar(255) NOT NULL,
  `akCategoryID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `asIsLocked` int(1) NOT NULL DEFAULT '1',
  `asDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `AttributeSets`
--

INSERT INTO `AttributeSets` (`asID`, `asName`, `asHandle`, `akCategoryID`, `pkgID`, `asIsLocked`, `asDisplayOrder`) VALUES
(1, 'Page Header', 'page_header', 1, 0, 0, 0),
(2, 'Navigation and Indexing', 'navigation', 1, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `AttributeTypeCategories`
--

DROP TABLE IF EXISTS `AttributeTypeCategories`;
CREATE TABLE IF NOT EXISTS `AttributeTypeCategories` (
  `atID` int(10) unsigned NOT NULL DEFAULT '0',
  `akCategoryID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `AttributeTypeCategories`
--

INSERT INTO `AttributeTypeCategories` (`atID`, `akCategoryID`) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 1),
(2, 2),
(2, 3),
(3, 1),
(3, 2),
(3, 3),
(4, 1),
(4, 2),
(4, 3),
(5, 1),
(6, 1),
(6, 2),
(6, 3),
(7, 1),
(7, 3),
(8, 1),
(8, 2),
(8, 3),
(9, 2);

-- --------------------------------------------------------

--
-- Table structure for table `AttributeTypes`
--

DROP TABLE IF EXISTS `AttributeTypes`;
CREATE TABLE IF NOT EXISTS `AttributeTypes` (
`atID` int(10) unsigned NOT NULL,
  `atHandle` varchar(255) NOT NULL,
  `atName` varchar(255) NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `AttributeTypes`
--

INSERT INTO `AttributeTypes` (`atID`, `atHandle`, `atName`, `pkgID`) VALUES
(1, 'text', 'Text', 0),
(2, 'textarea', 'Text Area', 0),
(3, 'boolean', 'Checkbox', 0),
(4, 'date_time', 'Date/Time', 0),
(5, 'image_file', 'Image/File', 0),
(6, 'number', 'Number', 0),
(7, 'rating', 'Rating', 0),
(8, 'select', 'Select', 0),
(9, 'address', 'Address', 0);

-- --------------------------------------------------------

--
-- Table structure for table `AttributeValues`
--

DROP TABLE IF EXISTS `AttributeValues`;
CREATE TABLE IF NOT EXISTS `AttributeValues` (
`avID` int(10) unsigned NOT NULL,
  `akID` int(10) unsigned DEFAULT NULL,
  `avDateAdded` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `uID` int(10) unsigned DEFAULT NULL,
  `atID` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=167 ;

--
-- Dumping data for table `AttributeValues`
--

INSERT INTO `AttributeValues` (`avID`, `akID`, `avDateAdded`, `uID`, `atID`) VALUES
(1, 3, '2016-01-29 15:04:36', 1, 2),
(2, 4, '2016-01-29 15:04:36', 1, 2),
(3, 3, '2016-01-29 15:04:36', 1, 2),
(4, 4, '2016-01-29 15:04:37', 1, 2),
(5, 3, '2016-01-29 15:04:37', 1, 2),
(6, 4, '2016-01-29 15:04:37', 1, 2),
(7, 3, '2016-01-29 15:04:37', 1, 2),
(8, 3, '2016-01-29 15:04:37', 1, 2),
(9, 4, '2016-01-29 15:04:38', 1, 2),
(10, 3, '2016-01-29 15:04:38', 1, 2),
(11, 4, '2016-01-29 15:04:38', 1, 2),
(12, 3, '2016-01-29 15:04:38', 1, 2),
(13, 4, '2016-01-29 15:04:38', 1, 2),
(14, 3, '2016-01-29 15:04:39', 1, 2),
(15, 4, '2016-01-29 15:04:40', 1, 2),
(16, 3, '2016-01-29 15:04:40', 1, 2),
(17, 4, '2016-01-29 15:04:40', 1, 2),
(18, 3, '2016-01-29 15:04:40', 1, 2),
(19, 4, '2016-01-29 15:04:40', 1, 2),
(20, 5, '2016-01-29 15:04:41', 1, 3),
(21, 3, '2016-01-29 15:04:41', 1, 2),
(22, 4, '2016-01-29 15:04:41', 1, 2),
(23, 3, '2016-01-29 15:04:41', 1, 2),
(24, 3, '2016-01-29 15:04:42', 1, 2),
(25, 4, '2016-01-29 15:04:42', 1, 2),
(26, 3, '2016-01-29 15:04:42', 1, 2),
(27, 4, '2016-01-29 15:04:42', 1, 2),
(28, 3, '2016-01-29 15:04:43', 1, 2),
(29, 4, '2016-01-29 15:04:43', 1, 2),
(30, 3, '2016-01-29 15:04:43', 1, 2),
(31, 5, '2016-01-29 15:04:43', 1, 3),
(32, 4, '2016-01-29 15:04:44', 1, 2),
(33, 3, '2016-01-29 15:04:44', 1, 2),
(34, 5, '2016-01-29 15:04:44', 1, 3),
(35, 4, '2016-01-29 15:04:44', 1, 2),
(36, 3, '2016-01-29 15:04:45', 1, 2),
(37, 4, '2016-01-29 15:04:45', 1, 2),
(38, 3, '2016-01-29 15:04:45', 1, 2),
(39, 3, '2016-01-29 15:04:45', 1, 2),
(40, 4, '2016-01-29 15:04:45', 1, 2),
(41, 3, '2016-01-29 15:04:46', 1, 2),
(42, 4, '2016-01-29 15:04:46', 1, 2),
(43, 3, '2016-01-29 15:04:46', 1, 2),
(44, 4, '2016-01-29 15:04:46', 1, 2),
(45, 3, '2016-01-29 15:04:47', 1, 2),
(46, 4, '2016-01-29 15:04:47', 1, 2),
(47, 3, '2016-01-29 15:04:47', 1, 2),
(48, 4, '2016-01-29 15:04:47', 1, 2),
(49, 3, '2016-01-29 15:04:48', 1, 2),
(50, 3, '2016-01-29 15:04:48', 1, 2),
(51, 3, '2016-01-29 15:04:48', 1, 2),
(52, 3, '2016-01-29 15:04:48', 1, 2),
(53, 4, '2016-01-29 15:04:48', 1, 2),
(54, 3, '2016-01-29 15:04:49', 1, 2),
(55, 4, '2016-01-29 15:04:49', 1, 2),
(56, 3, '2016-01-29 15:04:49', 1, 2),
(57, 4, '2016-01-29 15:04:49', 1, 2),
(58, 3, '2016-01-29 15:04:50', 1, 2),
(59, 4, '2016-01-29 15:04:50', 1, 2),
(60, 4, '2016-01-29 15:04:51', 1, 2),
(61, 3, '2016-01-29 15:04:51', 1, 2),
(62, 4, '2016-01-29 15:04:51', 1, 2),
(63, 4, '2016-01-29 15:04:51', 1, 2),
(64, 5, '2016-01-29 15:04:52', 1, 3),
(65, 8, '2016-01-29 15:04:52', 1, 3),
(66, 3, '2016-01-29 15:04:52', 1, 2),
(67, 4, '2016-01-29 15:04:52', 1, 2),
(68, 5, '2016-01-29 15:04:53', 1, 3),
(69, 5, '2016-01-29 15:04:53', 1, 3),
(70, 3, '2016-01-29 15:04:53', 1, 2),
(71, 3, '2016-01-29 15:04:53', 1, 2),
(72, 3, '2016-01-29 15:04:53', 1, 2),
(73, 3, '2016-01-29 15:04:54', 1, 2),
(74, 3, '2016-01-29 15:04:54', 1, 2),
(75, 5, '2016-01-29 15:04:54', 1, 3),
(76, 3, '2016-01-29 15:04:54', 1, 2),
(77, 3, '2016-01-29 15:04:55', 1, 2),
(78, 3, '2016-01-29 15:04:55', 1, 2),
(79, 3, '2016-01-29 15:04:55', 1, 2),
(80, 3, '2016-01-29 15:04:55', 1, 2),
(81, 3, '2016-01-29 15:04:55', 1, 2),
(82, 3, '2016-01-29 15:04:56', 1, 2),
(83, 3, '2016-01-29 15:04:56', 1, 2),
(84, 3, '2016-01-29 15:04:56', 1, 2),
(85, 3, '2016-01-29 15:04:56', 1, 2),
(86, 3, '2016-01-29 15:04:56', 1, 2),
(87, 3, '2016-01-29 15:04:57', 1, 2),
(88, 3, '2016-01-29 15:04:57', 1, 2),
(89, 3, '2016-01-29 15:04:57', 1, 2),
(90, 3, '2016-01-29 15:04:57', 1, 2),
(91, 3, '2016-01-29 15:04:57', 1, 2),
(92, 3, '2016-01-29 15:04:57', 1, 2),
(93, 3, '2016-01-29 15:04:58', 1, 2),
(94, 3, '2016-01-29 15:04:58', 1, 2),
(95, 3, '2016-01-29 15:04:59', 1, 2),
(96, 3, '2016-01-29 15:04:59', 1, 2),
(97, 3, '2016-01-29 15:04:59', 1, 2),
(98, 3, '2016-01-29 15:05:00', 1, 2),
(99, 3, '2016-01-29 15:05:00', 1, 2),
(100, 3, '2016-01-29 15:05:01', 1, 2),
(101, 3, '2016-01-29 15:05:01', 1, 2),
(102, 3, '2016-01-29 15:05:02', 1, 2),
(103, 3, '2016-01-29 15:05:02', 1, 2),
(104, 3, '2016-01-29 15:05:02', 1, 2),
(105, 3, '2016-01-29 15:05:02', 1, 2),
(106, 3, '2016-01-29 15:05:02', 1, 2),
(107, 3, '2016-01-29 15:05:03', 1, 2),
(108, 3, '2016-01-29 15:05:03', 1, 2),
(109, 8, '2016-01-29 15:05:03', 1, 3),
(110, 3, '2016-01-29 15:05:03', 1, 2),
(111, 3, '2016-01-29 15:05:03', 1, 2),
(112, 3, '2016-01-29 15:05:04', 1, 2),
(113, 3, '2016-01-29 15:05:04', 1, 2),
(114, 3, '2016-01-29 15:05:04', 1, 2),
(115, 3, '2016-01-29 15:05:04', 1, 2),
(116, 3, '2016-01-29 15:05:04', 1, 2),
(117, 3, '2016-01-29 15:05:05', 1, 2),
(118, 5, '2016-01-29 15:05:07', 1, 3),
(119, 5, '2016-01-29 15:05:11', 1, 3),
(120, 8, '2016-01-29 15:05:12', 1, 3),
(121, 12, '2016-01-29 15:05:22', 1, 6),
(122, 13, '2016-01-29 15:05:23', 1, 6),
(123, 12, '2016-01-29 15:05:24', 1, 6),
(124, 13, '2016-01-29 15:05:25', 1, 6),
(125, 12, '2016-01-29 15:05:25', 1, 6),
(126, 13, '2016-01-29 15:05:26', 1, 6),
(127, 12, '2016-01-29 15:05:26', 1, 6),
(128, 13, '2016-01-29 15:05:26', 1, 6),
(129, 12, '2016-01-29 15:05:27', 1, 6),
(130, 13, '2016-01-29 15:05:27', 1, 6),
(131, 12, '2016-01-29 15:05:28', 1, 6),
(132, 13, '2016-01-29 15:05:28', 1, 6),
(133, 12, '2016-01-29 15:05:29', 1, 6),
(134, 13, '2016-01-29 15:05:30', 1, 6),
(135, 12, '2016-01-29 15:05:31', 1, 6),
(136, 13, '2016-01-29 15:05:32', 1, 6),
(137, 15, '2016-01-29 15:05:57', 1, 8),
(138, 15, '2016-01-29 15:06:00', 1, 8),
(139, 5, '2016-01-29 15:06:03', 1, 3),
(140, 6, '2016-01-29 15:06:03', 1, 3),
(141, 8, '2016-01-29 15:06:03', 1, 3),
(142, 15, '2016-01-29 15:06:03', 1, 8),
(143, 12, '2016-01-29 16:34:59', 1, 6),
(144, 13, '2016-01-29 16:35:00', 1, 6),
(145, 12, '2016-01-29 16:35:00', 1, 6),
(146, 13, '2016-01-29 16:35:01', 1, 6),
(147, 12, '2016-01-29 16:35:10', 1, 6),
(148, 13, '2016-01-29 16:35:10', 1, 6),
(149, 12, '2016-01-29 16:52:02', 1, 6),
(150, 13, '2016-01-29 16:52:02', 1, 6),
(151, 12, '2016-02-01 12:59:45', 1, 6),
(152, 13, '2016-02-01 12:59:45', 1, 6),
(153, 12, '2016-02-01 12:59:46', 1, 6),
(154, 13, '2016-02-01 12:59:47', 1, 6),
(155, 12, '2016-02-01 12:59:47', 1, 6),
(156, 13, '2016-02-01 12:59:48', 1, 6),
(157, 12, '2016-02-01 15:32:21', 1, 6),
(158, 13, '2016-02-01 15:32:21', 1, 6),
(159, 12, '2016-02-01 15:32:37', 1, 6),
(160, 13, '2016-02-01 15:32:37', 1, 6),
(161, 12, '2016-02-01 15:58:15', 1, 6),
(162, 13, '2016-02-01 15:58:16', 1, 6),
(163, 12, '2016-02-01 15:58:17', 1, 6),
(164, 13, '2016-02-01 15:58:17', 1, 6),
(165, 12, '2016-02-01 15:58:18', 1, 6),
(166, 13, '2016-02-01 15:58:18', 1, 6);

-- --------------------------------------------------------

--
-- Table structure for table `BasicWorkflowPermissionAssignments`
--

DROP TABLE IF EXISTS `BasicWorkflowPermissionAssignments`;
CREATE TABLE IF NOT EXISTS `BasicWorkflowPermissionAssignments` (
  `wfID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `BasicWorkflowProgressData`
--

DROP TABLE IF EXISTS `BasicWorkflowProgressData`;
CREATE TABLE IF NOT EXISTS `BasicWorkflowProgressData` (
  `wpID` int(10) unsigned NOT NULL DEFAULT '0',
  `uIDStarted` int(10) unsigned NOT NULL DEFAULT '0',
  `uIDCompleted` int(10) unsigned NOT NULL DEFAULT '0',
  `wpDateCompleted` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `BlockPermissionAssignments`
--

DROP TABLE IF EXISTS `BlockPermissionAssignments`;
CREATE TABLE IF NOT EXISTS `BlockPermissionAssignments` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `BlockRelations`
--

DROP TABLE IF EXISTS `BlockRelations`;
CREATE TABLE IF NOT EXISTS `BlockRelations` (
`brID` int(10) unsigned NOT NULL,
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `originalBID` int(10) unsigned NOT NULL DEFAULT '0',
  `relationType` varchar(50) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `BlockRelations`
--

INSERT INTO `BlockRelations` (`brID`, `bID`, `originalBID`, `relationType`) VALUES
(1, 52, 51, 'DUPLICATE'),
(2, 53, 50, 'DUPLICATE'),
(3, 56, 55, 'DUPLICATE'),
(4, 57, 56, 'DUPLICATE'),
(5, 58, 53, 'DUPLICATE'),
(6, 65, 64, 'DUPLICATE'),
(7, 67, 66, 'DUPLICATE'),
(8, 68, 67, 'DUPLICATE'),
(9, 69, 68, 'DUPLICATE'),
(10, 72, 71, 'DUPLICATE'),
(11, 73, 60, 'DUPLICATE'),
(12, 74, 61, 'DUPLICATE'),
(13, 75, 62, 'DUPLICATE'),
(14, 76, 73, 'DUPLICATE'),
(15, 77, 76, 'DUPLICATE'),
(16, 78, 74, 'DUPLICATE'),
(17, 79, 75, 'DUPLICATE'),
(18, 90, 86, 'DUPLICATE'),
(19, 93, 92, 'DUPLICATE'),
(20, 95, 94, 'DUPLICATE');

-- --------------------------------------------------------

--
-- Table structure for table `Blocks`
--

DROP TABLE IF EXISTS `Blocks`;
CREATE TABLE IF NOT EXISTS `Blocks` (
`bID` int(10) unsigned NOT NULL,
  `bName` varchar(60) DEFAULT NULL,
  `bDateAdded` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `bDateModified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `bFilename` varchar(255) DEFAULT NULL,
  `bIsActive` varchar(1) NOT NULL DEFAULT '1',
  `btID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned DEFAULT NULL,
  `btCachedBlockRecord` longtext
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=99 ;

--
-- Dumping data for table `Blocks`
--

INSERT INTO `Blocks` (`bID`, `bName`, `bDateAdded`, `bDateModified`, `bFilename`, `bIsActive`, `btID`, `uID`, `btCachedBlockRecord`) VALUES
(1, '', '2016-01-29 15:05:05', '2016-01-29 15:05:05', NULL, '1', 9, 1, NULL),
(2, '', '2016-01-29 15:05:05', '2016-01-29 15:05:06', NULL, '1', 9, 1, NULL),
(3, '', '2016-01-29 15:05:06', '2016-01-29 15:05:06', NULL, '1', 9, 1, NULL),
(4, '', '2016-01-29 15:05:06', '2016-01-29 15:05:06', NULL, '1', 9, 1, NULL),
(5, '', '2016-01-29 15:05:06', '2016-01-29 15:05:07', NULL, '1', 9, 1, NULL),
(6, '', '2016-01-29 15:05:08', '2016-01-29 15:05:08', NULL, '1', 6, 1, NULL),
(7, '', '2016-01-29 15:05:08', '2016-01-29 15:05:08', NULL, '1', 7, 1, NULL),
(8, '', '2016-01-29 15:05:08', '2016-01-29 15:05:09', NULL, '1', 5, 1, 'O:11:"BlockRecord":11:{s:5:"_dbat";i:1;s:6:"_table";s:25:"btDashboardNewsflowLatest";s:8:"_tableat";s:25:"btDashboardNewsflowLatest";s:6:"_where";s:5:"bID=8";s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:1:"8";i:1;s:1:"A";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:1:"8";s:4:"slot";s:1:"A";}'),
(9, '', '2016-01-29 15:05:09', '2016-01-29 15:05:10', NULL, '1', 5, 1, 'O:11:"BlockRecord":11:{s:5:"_dbat";i:1;s:6:"_table";s:25:"btDashboardNewsflowLatest";s:8:"_tableat";s:25:"btDashboardNewsflowLatest";s:6:"_where";s:5:"bID=9";s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:1:"9";i:1;s:1:"B";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:1:"9";s:4:"slot";s:1:"B";}'),
(10, '', '2016-01-29 15:05:10', '2016-01-29 15:05:10', NULL, '1', 4, 1, NULL),
(11, '', '2016-01-29 15:05:10', '2016-01-29 15:05:11', NULL, '1', 3, 1, NULL),
(12, '', '2016-01-29 15:05:11', '2016-01-29 15:05:11', NULL, '1', 5, 1, 'O:11:"BlockRecord":11:{s:5:"_dbat";i:1;s:6:"_table";s:25:"btDashboardNewsflowLatest";s:8:"_tableat";s:25:"btDashboardNewsflowLatest";s:6:"_where";s:6:"bID=12";s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"12";i:1;s:1:"C";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"12";s:4:"slot";s:1:"C";}'),
(13, 'Blog Content', '2016-01-29 15:05:40', '2016-01-29 15:05:40', NULL, '1', 9, 1, NULL),
(14, '', '2016-01-29 15:05:40', '2016-01-29 15:05:40', NULL, '1', 25, 1, NULL),
(15, 'Thumbnail Image', '2016-01-29 15:05:41', '2016-01-29 15:05:41', NULL, '1', 18, 1, NULL),
(16, 'Header Image', '2016-01-29 15:05:41', '2016-01-29 15:05:41', NULL, '1', 18, 1, NULL),
(17, '', '2016-01-29 15:05:42', '2016-01-29 15:05:42', NULL, '1', 18, 1, NULL),
(18, '', '2016-01-29 15:05:42', '2016-01-29 15:05:42', NULL, '1', 18, 1, 'O:11:"BlockRecord":18:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentImage";s:8:"_tableat";s:14:"btContentImage";s:6:"_where";s:6:"bID=18";s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:9:{i:0;s:2:"18";i:1;s:1:"3";i:2;s:1:"0";i:3;s:3:"960";i:4;s:3:"212";i:5;s:0:"";i:6;s:1:"0";i:7;s:1:"1";i:8;s:0:"";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"18";s:3:"fID";s:1:"3";s:10:"fOnstateID";s:1:"0";s:8:"maxWidth";s:3:"960";s:9:"maxHeight";s:3:"212";s:12:"externalLink";s:0:"";s:15:"internalLinkCID";s:1:"0";s:27:"forceImageToMatchDimensions";s:1:"1";s:7:"altText";s:0:"";}'),
(19, '', '2016-01-29 15:05:42', '2016-01-29 15:05:43', NULL, '1', 18, 1, 'O:11:"BlockRecord":18:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentImage";s:8:"_tableat";s:14:"btContentImage";s:6:"_where";s:6:"bID=19";s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:9:{i:0;s:2:"19";i:1;s:1:"7";i:2;s:1:"0";i:3;s:3:"960";i:4;s:3:"212";i:5;s:0:"";i:6;s:1:"0";i:7;s:1:"1";i:8;s:0:"";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"19";s:3:"fID";s:1:"7";s:10:"fOnstateID";s:1:"0";s:8:"maxWidth";s:3:"960";s:9:"maxHeight";s:3:"212";s:12:"externalLink";s:0:"";s:15:"internalLinkCID";s:1:"0";s:27:"forceImageToMatchDimensions";s:1:"1";s:7:"altText";s:0:"";}'),
(20, '', '2016-01-29 15:05:43', '2016-01-29 15:05:43', NULL, '1', 8, 1, 'O:11:"BlockRecord":18:{s:5:"_dbat";i:1;s:6:"_table";s:12:"btNavigation";s:8:"_tableat";s:12:"btNavigation";s:6:"_where";s:6:"bID=20";s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:9:{i:0;s:2:"20";i:1;s:11:"display_asc";i:2;s:3:"top";i:3;s:1:"0";i:4;s:1:"0";i:5;s:4:"none";i:6;s:6:"enough";i:7;s:1:"0";i:8;s:1:"0";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"20";s:7:"orderBy";s:11:"display_asc";s:12:"displayPages";s:3:"top";s:15:"displayPagesCID";s:1:"0";s:23:"displayPagesIncludeSelf";s:1:"0";s:15:"displaySubPages";s:4:"none";s:20:"displaySubPageLevels";s:6:"enough";s:23:"displaySubPageLevelsNum";s:1:"0";s:23:"displayUnavailablePages";s:1:"0";}'),
(21, '', '2016-01-29 15:05:43', '2016-01-29 15:05:43', NULL, '1', 9, 1, 'O:11:"BlockRecord":11:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";s:6:"bID=21";s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"21";i:1;s:15:"<h3>Links:</h3>";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"21";s:7:"content";s:15:"<h3>Links:</h3>";}'),
(22, '', '2016-01-29 15:05:43', '2016-01-29 15:05:44', NULL, '1', 8, 1, 'O:11:"BlockRecord":18:{s:5:"_dbat";i:1;s:6:"_table";s:12:"btNavigation";s:8:"_tableat";s:12:"btNavigation";s:6:"_where";s:6:"bID=22";s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:9:{i:0;s:2:"22";i:1;s:11:"display_asc";i:2;s:12:"second_level";i:3;s:1:"0";i:4;s:1:"0";i:5;s:3:"all";i:6;s:3:"all";i:7;s:1:"0";i:8;s:1:"0";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"22";s:7:"orderBy";s:11:"display_asc";s:12:"displayPages";s:12:"second_level";s:15:"displayPagesCID";s:1:"0";s:23:"displayPagesIncludeSelf";s:1:"0";s:15:"displaySubPages";s:3:"all";s:20:"displaySubPageLevels";s:3:"all";s:23:"displaySubPageLevelsNum";s:1:"0";s:23:"displayUnavailablePages";s:1:"0";}'),
(23, '', '2016-01-29 15:05:44', '2016-01-29 15:05:44', NULL, '1', 9, 1, 'O:11:"BlockRecord":11:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";s:6:"bID=23";s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"23";i:1;s:125:"<h1><a title="Home" \n                                	href="{CCM:CID_1}"\n                                >royalhotel</a></h1>";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"23";s:7:"content";s:125:"<h1><a title="Home" \n                                	href="{CCM:CID_1}"\n                                >royalhotel</a></h1>";}'),
(24, '', '2016-01-29 15:05:44', '2016-01-29 15:05:45', NULL, '1', 9, 1, 'O:11:"BlockRecord":11:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";s:6:"bID=24";s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"24";i:1;s:16:"<h3>Sidebar</h3>";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"24";s:7:"content";s:16:"<h3>Sidebar</h3>";}'),
(25, '', '2016-01-29 15:05:45', '2016-01-29 15:05:45', NULL, '1', 9, 1, 'O:11:"BlockRecord":11:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";s:6:"bID=25";s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"25";i:1;s:343:"<p>Everything about concrete5 is completely customizable through the CMS. This is a separate area from the main content on the homepage. You can&nbsp;<a title="Move blocks in concrete5" href="http://www.concrete5.org/documentation/general-topics/blocks-and-areas" target="_blank">drag and drop blocks</a>&nbsp;like this around your layout.</p>";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"25";s:7:"content";s:343:"<p>Everything about concrete5 is completely customizable through the CMS. This is a separate area from the main content on the homepage. You can&nbsp;<a title="Move blocks in concrete5" href="http://www.concrete5.org/documentation/general-topics/blocks-and-areas" target="_blank">drag and drop blocks</a>&nbsp;like this around your layout.</p>";}'),
(26, '', '2016-01-29 15:05:45', '2016-01-29 15:05:46', NULL, '1', 9, 1, 'O:11:"BlockRecord":11:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";s:6:"bID=26";s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"26";i:1;s:1592:"<h2>Welcome to concrete5!</h2>\n                                        <p>Content Management is easy with concrete5''s in-context editing. Just <a href="{CCM:CID_111}">login</a> and you can change things as you browse your site.</p>\n                                        <p>You can watch videos and learn how to:</p>\n                                        <ul>\n                                        <li><a title="In-context editing CMS" href="http://www.concrete5.org/documentation/general-topics/in-context-editing/" target="_blank">Edit</a>&nbsp;this page.</li>\n                                        <li>Add a <a title="Add a page in concrete5" href="http://www.concrete5.org/documentation/general-topics/add-a-page/" target="_blank">new page</a>.</li>\n                                        <li>Add some basic functionality, like&nbsp;<a title="Add a simple form in concrete5" href="http://www.concrete5.org/documentation/general-topics/add_a_form" target="_blank">a Form</a>.</li>\n                                        <li><a title="add-on marketplace for concrete5" href="http://www.concrete5.org/marketplace/how_to_install_add_ons_and_themes_/" target="_blank">Finding &amp; adding</a>&nbsp;more functionality and themes.</li>\n                                        </ul>\n                                        <p>We''ve taken the liberty to build out the rest of this site with some sample content that will help you learn concrete5. Wander around a bit, or click Dashboard to get to the&nbsp;<a href="{CCM:CID_6}">Sitemap</a> and quickly delete the parts you don''t want.</p>";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"26";s:7:"content";s:1592:"<h2>Welcome to concrete5!</h2>\n                                        <p>Content Management is easy with concrete5''s in-context editing. Just <a href="{CCM:CID_111}">login</a> and you can change things as you browse your site.</p>\n                                        <p>You can watch videos and learn how to:</p>\n                                        <ul>\n                                        <li><a title="In-context editing CMS" href="http://www.concrete5.org/documentation/general-topics/in-context-editing/" target="_blank">Edit</a>&nbsp;this page.</li>\n                                        <li>Add a <a title="Add a page in concrete5" href="http://www.concrete5.org/documentation/general-topics/add-a-page/" target="_blank">new page</a>.</li>\n                                        <li>Add some basic functionality, like&nbsp;<a title="Add a simple form in concrete5" href="http://www.concrete5.org/documentation/general-topics/add_a_form" target="_blank">a Form</a>.</li>\n                                        <li><a title="add-on marketplace for concrete5" href="http://www.concrete5.org/marketplace/how_to_install_add_ons_and_themes_/" target="_blank">Finding &amp; adding</a>&nbsp;more functionality and themes.</li>\n                                        </ul>\n                                        <p>We''ve taken the liberty to build out the rest of this site with some sample content that will help you learn concrete5. Wander around a bit, or click Dashboard to get to the&nbsp;<a href="{CCM:CID_6}">Sitemap</a> and quickly delete the parts you don''t want.</p>";}'),
(27, '', '2016-01-29 15:05:46', '2016-01-29 15:05:47', NULL, '1', 18, 1, NULL),
(28, '', '2016-01-29 15:05:47', '2016-01-29 15:05:48', NULL, '1', 2, 1, 'O:11:"BlockRecord":11:{s:5:"_dbat";i:1;s:6:"_table";s:18:"btCoreStackDisplay";s:8:"_tableat";s:18:"btCoreStackDisplay";s:6:"_where";s:6:"bID=28";s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"28";i:1;s:3:"122";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"28";s:4:"stID";s:3:"122";}'),
(29, '', '2016-01-29 15:05:48', '2016-01-29 15:05:49', NULL, '1', 9, 1, 'O:11:"BlockRecord":11:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";s:6:"bID=29";s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"29";i:1;s:1739:"<h2>Learn More</h2>\n																<p>Visit&nbsp;<a title="concrete5 Content Management System" href="http://www.concrete5.org/" target="_blank">concrete5.org</a>&nbsp;to learn more from the&nbsp;<a title="open source content management system" href="http://www.concrete5.org/community" target="_blank">community</a>&nbsp;and the&nbsp;<a href="http://www.concrete5.org/documentation/general-topics/" target="_blank">documentation</a>. You can also browse our&nbsp;<a title="concrete5 marketplace" href="http://www.concrete5.org/marketplace/" target="_blank">marketplace</a>&nbsp;for more&nbsp;<a title="Add-ons for concrete5" href="http://www.concrete5.org/marketplace/addons/" target="_blank">add-ons</a>&nbsp;and&nbsp;<a title="Themes for concrete5" href="http://www.concrete5.org/marketplace/themes/" target="_blank">themes</a>&nbsp;to quickly build the site you really need.&nbsp;</p>\n																<h3>&nbsp;</h3>\n																<h3>Getting Help</h3>\n																<p>You can get free help in the <a href="http://www.concrete5.org/community/forums/" target="_blank">forums</a> and post for free to the&nbsp;<a href="http://www.concrete5.org/community/forums/jobs1/" target="_blank">jobs board</a>.&nbsp;</p>\n																<p>You can also pay the concrete5 team of developers to help with&nbsp;<a href="http://www.concrete5.org/services/support/" target="_blank">any problem</a>&nbsp;you run into. We offer <a href="http://www.concrete5.org/services/training/" target="_blank">training courses</a>&nbsp;and&nbsp;<a href="http://www.concrete5.org/services/hosting/" target="_blank">hosting packages</a>, just let us know <a href="http://www.concrete5.org/services/professional_services/" target="_blank">how we can help</a>.</p>";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"29";s:7:"content";s:1739:"<h2>Learn More</h2>\n																<p>Visit&nbsp;<a title="concrete5 Content Management System" href="http://www.concrete5.org/" target="_blank">concrete5.org</a>&nbsp;to learn more from the&nbsp;<a title="open source content management system" href="http://www.concrete5.org/community" target="_blank">community</a>&nbsp;and the&nbsp;<a href="http://www.concrete5.org/documentation/general-topics/" target="_blank">documentation</a>. You can also browse our&nbsp;<a title="concrete5 marketplace" href="http://www.concrete5.org/marketplace/" target="_blank">marketplace</a>&nbsp;for more&nbsp;<a title="Add-ons for concrete5" href="http://www.concrete5.org/marketplace/addons/" target="_blank">add-ons</a>&nbsp;and&nbsp;<a title="Themes for concrete5" href="http://www.concrete5.org/marketplace/themes/" target="_blank">themes</a>&nbsp;to quickly build the site you really need.&nbsp;</p>\n																<h3>&nbsp;</h3>\n																<h3>Getting Help</h3>\n																<p>You can get free help in the <a href="http://www.concrete5.org/community/forums/" target="_blank">forums</a> and post for free to the&nbsp;<a href="http://www.concrete5.org/community/forums/jobs1/" target="_blank">jobs board</a>.&nbsp;</p>\n																<p>You can also pay the concrete5 team of developers to help with&nbsp;<a href="http://www.concrete5.org/services/support/" target="_blank">any problem</a>&nbsp;you run into. We offer <a href="http://www.concrete5.org/services/training/" target="_blank">training courses</a>&nbsp;and&nbsp;<a href="http://www.concrete5.org/services/hosting/" target="_blank">hosting packages</a>, just let us know <a href="http://www.concrete5.org/services/professional_services/" target="_blank">how we can help</a>.</p>";}'),
(30, '', '2016-01-29 15:05:49', '2016-01-29 15:05:50', NULL, '1', 2, 1, NULL),
(31, '', '2016-01-29 15:05:50', '2016-01-29 15:05:50', NULL, '1', 16, 1, NULL),
(32, '', '2016-01-29 15:05:51', '2016-01-29 15:05:51', NULL, '1', 2, 1, NULL),
(33, '', '2016-01-29 15:05:52', '2016-01-29 15:05:52', NULL, '1', 9, 1, NULL),
(34, '', '2016-01-29 15:05:52', '2016-01-29 15:05:53', NULL, '1', 14, 1, NULL),
(35, '', '2016-01-29 15:05:53', '2016-01-29 15:05:54', NULL, '1', 9, 1, 'O:11:"BlockRecord":11:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";s:6:"bID=35";s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"35";i:1;s:17:"<h3>Site Map</h3>";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"35";s:7:"content";s:17:"<h3>Site Map</h3>";}'),
(36, '', '2016-01-29 15:05:54', '2016-01-29 15:05:55', NULL, '1', 8, 1, 'O:11:"BlockRecord":18:{s:5:"_dbat";i:1;s:6:"_table";s:12:"btNavigation";s:8:"_tableat";s:12:"btNavigation";s:6:"_where";s:6:"bID=36";s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:9:{i:0;s:2:"36";i:1;s:11:"display_asc";i:2;s:3:"top";i:3;s:1:"0";i:4;s:1:"0";i:5;s:3:"all";i:6;s:3:"all";i:7;s:1:"0";i:8;s:1:"0";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"36";s:7:"orderBy";s:11:"display_asc";s:12:"displayPages";s:3:"top";s:15:"displayPagesCID";s:1:"0";s:23:"displayPagesIncludeSelf";s:1:"0";s:15:"displaySubPages";s:3:"all";s:20:"displaySubPageLevels";s:3:"all";s:23:"displaySubPageLevelsNum";s:1:"0";s:23:"displayUnavailablePages";s:1:"0";}'),
(37, '', '2016-01-29 15:05:55', '2016-01-29 15:05:55', NULL, '1', 22, 1, NULL),
(38, '', '2016-01-29 15:05:55', '2016-01-29 15:05:55', 'blog_index_thumbnail.php', '1', 20, 1, 'O:11:"BlockRecord":24:{s:5:"_dbat";i:1;s:6:"_table";s:10:"btPageList";s:8:"_tableat";s:10:"btPageList";s:6:"_where";s:6:"bID=38";s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:15:{i:0;s:2:"38";i:1;s:2:"12";i:2;s:11:"chrono_desc";i:3;s:3:"130";i:4;s:1:"0";i:5;s:1:"0";i:6;s:1:"1";i:7;s:1:"0";i:8;s:1:"4";i:9;s:1:"0";i:10;s:0:"";i:11;s:0:"";i:12;s:1:"1";i:13;s:1:"0";i:14;s:3:"128";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"38";s:3:"num";s:2:"12";s:7:"orderBy";s:11:"chrono_desc";s:9:"cParentID";s:3:"130";s:5:"cThis";s:1:"0";s:21:"includeAllDescendents";s:1:"0";s:8:"paginate";s:1:"1";s:14:"displayAliases";s:1:"0";s:4:"ctID";s:1:"4";s:3:"rss";s:1:"0";s:8:"rssTitle";s:0:"";s:14:"rssDescription";s:0:"";s:17:"truncateSummaries";s:1:"1";s:19:"displayFeaturedOnly";s:1:"0";s:13:"truncateChars";s:3:"128";}'),
(39, '', '2016-01-29 15:05:56', '2016-01-29 15:05:56', NULL, '1', 9, 1, 'O:11:"BlockRecord":11:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";s:6:"bID=39";s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"39";i:1;s:13:"<h3>Tags</h3>";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"39";s:7:"content";s:13:"<h3>Tags</h3>";}'),
(40, '', '2016-01-29 15:05:56', '2016-01-29 15:05:56', NULL, '1', 25, 1, 'O:11:"BlockRecord":14:{s:5:"_dbat";i:1;s:6:"_table";s:6:"btTags";s:8:"_tableat";s:6:"btTags";s:6:"_where";s:6:"bID=40";s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:5:{i:0;s:2:"40";i:1;s:0:"";i:2;s:3:"134";i:3;s:5:"cloud";i:4;s:1:"0";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"40";s:5:"title";s:0:"";s:9:"targetCID";s:3:"134";s:11:"displayMode";s:5:"cloud";s:10:"cloudCount";s:1:"0";}'),
(41, '', '2016-01-29 15:05:56', '2016-01-29 15:05:57', NULL, '1', 28, 1, 'O:11:"BlockRecord":13:{s:5:"_dbat";i:1;s:6:"_table";s:13:"btDateArchive";s:8:"_tableat";s:13:"btDateArchive";s:6:"_where";s:6:"bID=41";s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:4:{i:0;s:2:"41";i:1;s:8:"Archives";i:2;s:3:"134";i:3;s:2:"12";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"41";s:5:"title";s:8:"Archives";s:9:"targetCID";s:3:"134";s:9:"numMonths";s:2:"12";}'),
(42, 'Header Image', '2016-01-29 15:05:57', '2016-01-29 15:05:58', NULL, '1', 18, 1, NULL),
(43, 'Blog Content', '2016-01-29 15:05:58', '2016-01-29 15:05:59', NULL, '1', 9, 1, NULL),
(44, 'Thumbnail Image', '2016-01-29 15:05:59', '2016-01-29 15:06:00', NULL, '1', 18, 1, NULL),
(45, '', '2016-01-29 15:06:01', '2016-01-29 15:06:02', NULL, '1', 22, 1, NULL),
(46, '', '2016-01-29 15:06:02', '2016-01-29 15:06:02', NULL, '1', 25, 1, NULL),
(47, '', '2016-01-29 15:06:02', '2016-01-29 15:06:03', NULL, '1', 28, 1, NULL),
(50, NULL, '2016-01-29 15:59:33', '2016-01-29 15:59:33', NULL, '1', 30, 1, 'O:11:"BlockRecord":14:{s:5:"_dbat";i:1;s:6:"_table";s:18:"btResponsiveSlider";s:8:"_tableat";s:18:"btResponsiveSlider";s:6:"_where";s:6:"bID=50";s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:5:{i:0;s:2:"50";i:1;s:1:"0";i:2;s:5:"ORDER";i:3;N;i:4;N;}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"50";s:4:"fsID";s:1:"0";s:8:"playback";s:5:"ORDER";s:8:"duration";N;s:12:"fadeDuration";N;}'),
(51, NULL, '2016-01-29 16:00:04', '2016-01-29 16:00:04', NULL, '1', 30, 1, NULL),
(52, NULL, '2016-01-29 16:23:47', '2016-01-29 16:23:47', NULL, '1', 30, 1, 'O:11:"BlockRecord":14:{s:5:"_dbat";i:1;s:6:"_table";s:18:"btResponsiveSlider";s:8:"_tableat";s:18:"btResponsiveSlider";s:6:"_where";s:6:"bID=52";s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:5:{i:0;s:2:"52";i:1;s:1:"0";i:2;s:5:"ORDER";i:3;N;i:4;N;}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"52";s:4:"fsID";s:1:"0";s:8:"playback";s:5:"ORDER";s:8:"duration";N;s:12:"fadeDuration";N;}'),
(53, NULL, '2016-01-29 16:36:25', '2016-01-29 16:36:26', NULL, '1', 30, 1, 'O:11:"BlockRecord":14:{s:5:"_dbat";i:1;s:6:"_table";s:18:"btResponsiveSlider";s:8:"_tableat";s:18:"btResponsiveSlider";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:5:{i:0;s:2:"53";i:1;i:0;i:2;s:5:"ORDER";i:3;N;i:4;N;}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"53";s:4:"fsID";i:0;s:8:"playback";s:5:"ORDER";s:8:"duration";N;s:12:"fadeDuration";N;}'),
(54, NULL, '2016-01-29 16:52:19', '2016-01-29 16:52:19', NULL, '1', 9, 1, 'O:11:"BlockRecord":11:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"54";i:1;s:88:"<p><a href="#"><img src="{CCM:FID_12}" alt="logo.png" width="107" height="75" /></a></p>";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"54";s:7:"content";s:88:"<p><a href="#"><img src="{CCM:FID_12}" alt="logo.png" width="107" height="75" /></a></p>";}'),
(55, NULL, '2016-01-29 16:52:47', '2016-01-29 16:52:47', NULL, '1', 9, 1, 'O:11:"BlockRecord":11:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"55";i:1;s:27:"<p><a href="#">Book</a></p>";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"55";s:7:"content";s:27:"<p><a href="#">Book</a></p>";}'),
(56, NULL, '2016-01-29 17:59:22', '2016-01-29 17:59:22', NULL, '1', 9, 1, 'O:11:"BlockRecord":11:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"56";i:1;s:44:"<p><a class="btn-book" href="#">Book</a></p>";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"56";s:7:"content";s:44:"<p><a class="btn-book" href="#">Book</a></p>";}'),
(57, NULL, '2016-01-29 18:02:20', '2016-01-29 18:02:20', NULL, '1', 9, 1, 'O:11:"BlockRecord":11:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"57";i:1;s:44:"<p><a class="btn-book" href="#">Book</a></p>";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"57";s:7:"content";s:44:"<p><a class="btn-book" href="#">Book</a></p>";}'),
(58, NULL, '2016-02-01 10:28:23', '2016-02-01 10:28:24', NULL, '1', 30, 1, 'O:11:"BlockRecord":14:{s:5:"_dbat";i:1;s:6:"_table";s:18:"btResponsiveSlider";s:8:"_tableat";s:18:"btResponsiveSlider";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:5:{i:0;s:2:"58";i:1;i:0;i:2;s:5:"ORDER";i:3;N;i:4;N;}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"58";s:4:"fsID";i:0;s:8:"playback";s:5:"ORDER";s:8:"duration";N;s:12:"fadeDuration";N;}'),
(59, NULL, '2016-02-01 12:14:13', '2016-02-01 12:14:13', NULL, '1', 9, 1, 'O:11:"BlockRecord":11:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"59";i:1;s:706:"<h1><span>YOU</span>are the most important part of our Royal story</h1>\r\n<p>Poemata reddit, scire velim, chartis pretium quotus arroget annus scriptor abhinc annos centum qui decidit, inter perfectos veteresque referri debet an inter vilis atque novos. Excludat iurgia finis, est vetus atque probus, centum qui perficit annos. Quid, qui deperiit minor uno mense vel anno, inter quos referendus erit. Iste quidem veteres inter ponetur honeste, qui vel mense brevi vel toto est iunior anno. Utor permisso, caudaeque pilos ut equinae paulatim vello unum, demo etiam unum, dum cadat elusus ratione ruentis acervi, qui redit in fastos et virtutem aestimat annis miraturque nihil nisi quod Libitina sacravit.</p>";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"59";s:7:"content";s:706:"<h1><span>YOU</span>are the most important part of our Royal story</h1>\r\n<p>Poemata reddit, scire velim, chartis pretium quotus arroget annus scriptor abhinc annos centum qui decidit, inter perfectos veteresque referri debet an inter vilis atque novos. Excludat iurgia finis, est vetus atque probus, centum qui perficit annos. Quid, qui deperiit minor uno mense vel anno, inter quos referendus erit. Iste quidem veteres inter ponetur honeste, qui vel mense brevi vel toto est iunior anno. Utor permisso, caudaeque pilos ut equinae paulatim vello unum, demo etiam unum, dum cadat elusus ratione ruentis acervi, qui redit in fastos et virtutem aestimat annis miraturque nihil nisi quod Libitina sacravit.</p>";}'),
(60, NULL, '2016-02-01 12:59:57', '2016-02-01 13:01:03', NULL, '1', 9, 1, 'O:11:"BlockRecord":11:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"60";i:1;s:115:"<p><img src="{CCM:FID_13}" alt="banner01.jpg" width="424" height="508" /></p>\r\n<p><a href="#">Find Out More</a></p>";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"60";s:7:"content";s:115:"<p><img src="{CCM:FID_13}" alt="banner01.jpg" width="424" height="508" /></p>\r\n<p><a href="#">Find Out More</a></p>";}'),
(61, NULL, '2016-02-01 13:00:08', '2016-02-01 13:01:15', NULL, '1', 9, 1, 'O:11:"BlockRecord":11:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"61";i:1;s:115:"<p><img src="{CCM:FID_14}" alt="banner02.jpg" width="424" height="508" /></p>\r\n<p><a href="#">Find Out More</a></p>";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"61";s:7:"content";s:115:"<p><img src="{CCM:FID_14}" alt="banner02.jpg" width="424" height="508" /></p>\r\n<p><a href="#">Find Out More</a></p>";}'),
(62, NULL, '2016-02-01 13:00:18', '2016-02-01 13:01:24', NULL, '1', 9, 1, 'O:11:"BlockRecord":11:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"62";i:1;s:115:"<p><img src="{CCM:FID_15}" alt="banner03.jpg" width="424" height="508" /></p>\r\n<p><a href="#">Find Out More</a></p>";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"62";s:7:"content";s:115:"<p><img src="{CCM:FID_15}" alt="banner03.jpg" width="424" height="508" /></p>\r\n<p><a href="#">Find Out More</a></p>";}'),
(63, NULL, '2016-02-01 14:40:25', '2016-02-01 14:40:25', NULL, '1', 9, 1, 'O:11:"BlockRecord":11:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"63";i:1;s:17:"<h2>Location</h2>";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"63";s:7:"content";s:17:"<h2>Location</h2>";}'),
(64, NULL, '2016-02-01 14:43:08', '2016-02-01 14:43:08', NULL, '1', 9, 1, 'O:11:"BlockRecord":11:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"64";i:1;s:342:"<p><iframe style="border: 0;" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2222.128011569134!2d-3.9484010839309414!3d56.1548912683754!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x48888817de862d1f%3A0xd0e5b2a7c42b7868!2sRoyal+Hotel!5e0!3m2!1sen!2sin!4v1454317956293" frameborder="0" width="100%" height="484"></iframe></p>";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"64";s:7:"content";s:342:"<p><iframe style="border: 0;" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2222.128011569134!2d-3.9484010839309414!3d56.1548912683754!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x48888817de862d1f%3A0xd0e5b2a7c42b7868!2sRoyal+Hotel!5e0!3m2!1sen!2sin!4v1454317956293" frameborder="0" width="100%" height="484"></iframe></p>";}'),
(65, NULL, '2016-02-01 14:49:27', '2016-02-01 14:49:27', NULL, '1', 9, 1, 'O:11:"BlockRecord":11:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"65";i:1;s:342:"<p><iframe style="border: 0;" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2222.128011569134!2d-3.9484010839309414!3d56.1548912683754!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x48888817de862d1f%3A0xd0e5b2a7c42b7868!2sRoyal+Hotel!5e0!3m2!1sen!2sin!4v1454317956293" frameborder="0" width="100%" height="484"></iframe></p>";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"65";s:7:"content";s:342:"<p><iframe style="border: 0;" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2222.128011569134!2d-3.9484010839309414!3d56.1548912683754!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x48888817de862d1f%3A0xd0e5b2a7c42b7868!2sRoyal+Hotel!5e0!3m2!1sen!2sin!4v1454317956293" frameborder="0" width="100%" height="484"></iframe></p>";}'),
(66, NULL, '2016-02-01 14:52:33', '2016-02-01 14:52:33', NULL, '1', 9, 1, 'O:11:"BlockRecord":11:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"66";i:1;s:268:"<p>Located in the heart of Scotland, our luxury hotel is ideally situated for retium Golf arroget Rambling scriptor abhinc annos centum qui decidit, inter perfectos veteresque referri debet an inter vilis atque novos. Excludat iurgia finis, est vetus atque probus,</p>";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"66";s:7:"content";s:268:"<p>Located in the heart of Scotland, our luxury hotel is ideally situated for retium Golf arroget Rambling scriptor abhinc annos centum qui decidit, inter perfectos veteresque referri debet an inter vilis atque novos. Excludat iurgia finis, est vetus atque probus,</p>";}'),
(67, NULL, '2016-02-01 14:53:53', '2016-02-01 14:53:54', NULL, '1', 9, 1, 'O:11:"BlockRecord":11:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"67";i:1;s:305:"<p>Located in the heart of Scotland, our luxury hotel is ideally situated for retium Golf arroget Rambling scriptor abhinc annos centum qui decidit, inter perfectos veteresque referri debet an inter vilis atque novos. Excludat iurgia finis, est vetus atque probus,</p>\r\n<p><a href="#">See &amp; Do</a></p>";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"67";s:7:"content";s:305:"<p>Located in the heart of Scotland, our luxury hotel is ideally situated for retium Golf arroget Rambling scriptor abhinc annos centum qui decidit, inter perfectos veteresque referri debet an inter vilis atque novos. Excludat iurgia finis, est vetus atque probus,</p>\r\n<p><a href="#">See &amp; Do</a></p>";}'),
(68, NULL, '2016-02-01 14:58:26', '2016-02-01 14:59:11', NULL, '1', 9, 1, 'O:11:"BlockRecord":11:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"68";i:1;s:366:"<p>Located in the heart of Scotland, our luxury hotel is ideally situated for retium <a href="#">Golf</a> arroget <a href="#">Rambling</a> scriptor abhinc annos centum qui decidit, inter perfectos veteresque referri debet an inter vilis atque novos. Excludat iurgia finis, est vetus atque probus,</p>\r\n<p><a class="=&quot;btn-map&quot;" href="#">See &amp; Do</a></p>";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"68";s:7:"content";s:366:"<p>Located in the heart of Scotland, our luxury hotel is ideally situated for retium <a href="#">Golf</a> arroget <a href="#">Rambling</a> scriptor abhinc annos centum qui decidit, inter perfectos veteresque referri debet an inter vilis atque novos. Excludat iurgia finis, est vetus atque probus,</p>\r\n<p><a class="=&quot;btn-map&quot;" href="#">See &amp; Do</a></p>";}'),
(69, NULL, '2016-02-01 15:07:16', '2016-02-01 15:07:16', NULL, '1', 9, 1, 'O:11:"BlockRecord":11:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"69";i:1;s:353:"<p>Located in the heart of Scotland, our luxury hotel is ideally situated for retium <a href="#">Golf</a> arroget <a href="#">Rambling</a> scriptor abhinc annos centum qui decidit, inter perfectos veteresque referri debet an inter vilis atque novos. Excludat iurgia finis, est vetus atque probus,</p>\r\n<p><a class="btn-map" href="#">See &amp; Do</a></p>";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"69";s:7:"content";s:353:"<p>Located in the heart of Scotland, our luxury hotel is ideally situated for retium <a href="#">Golf</a> arroget <a href="#">Rambling</a> scriptor abhinc annos centum qui decidit, inter perfectos veteresque referri debet an inter vilis atque novos. Excludat iurgia finis, est vetus atque probus,</p>\r\n<p><a class="btn-map" href="#">See &amp; Do</a></p>";}'),
(70, NULL, '2016-02-01 15:32:47', '2016-02-01 15:32:47', NULL, '1', 9, 1, 'O:11:"BlockRecord":11:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"70";i:1;s:154:"<p><img src="{CCM:FID_16}" alt="logo-footer.png" width="107" height="75" /><img src="{CCM:FID_17}" alt="footer-fadeline.png" width="994" height="2" /></p>";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"70";s:7:"content";s:154:"<p><img src="{CCM:FID_16}" alt="logo-footer.png" width="107" height="75" /><img src="{CCM:FID_17}" alt="footer-fadeline.png" width="994" height="2" /></p>";}'),
(71, NULL, '2016-02-01 15:38:47', '2016-02-01 15:38:47', NULL, '1', 9, 1, 'O:11:"BlockRecord":11:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"71";i:1;s:204:"<p>Royal Hotel<br /> 55 Henderson St,<br /> Bridge of Allan, <br /> Stirlingshire FK9 4HG<br /> <br /> T: 01786 832 284<br /> E: <a href="mailto:info@royalhotel.co.uk">info@royalhotel.co.uk<br /> </a></p>";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"71";s:7:"content";s:204:"<p>Royal Hotel<br /> 55 Henderson St,<br /> Bridge of Allan, <br /> Stirlingshire FK9 4HG<br /> <br /> T: 01786 832 284<br /> E: <a href="mailto:info@royalhotel.co.uk">info@royalhotel.co.uk<br /> </a></p>";}'),
(72, NULL, '2016-02-01 15:41:29', '2016-02-01 15:41:29', NULL, '1', 9, 1, 'O:11:"BlockRecord":11:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"72";i:1;s:217:"<p><span>Royal Hotel</span><br /> 55 Henderson St,<br /> Bridge of Allan, <br /> Stirlingshire FK9 4HG<br /> <br /> T: 01786 832 284<br /> E: <a href="mailto:info@royalhotel.co.uk">info@royalhotel.co.uk<br /> </a></p>";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"72";s:7:"content";s:217:"<p><span>Royal Hotel</span><br /> 55 Henderson St,<br /> Bridge of Allan, <br /> Stirlingshire FK9 4HG<br /> <br /> T: 01786 832 284<br /> E: <a href="mailto:info@royalhotel.co.uk">info@royalhotel.co.uk<br /> </a></p>";}'),
(73, NULL, '2016-02-01 15:59:06', '2016-02-01 15:59:07', NULL, '1', 9, 1, 'O:11:"BlockRecord":11:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"73";i:1;s:116:"<h2>STAY &amp; PLAY</h2>\r\n<p><img src="{CCM:FID_18}" alt="banner01.jpg" /></p>\r\n<p><a href="#">Find Out More</a></p>";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"73";s:7:"content";s:116:"<h2>STAY &amp; PLAY</h2>\r\n<p><img src="{CCM:FID_18}" alt="banner01.jpg" /></p>\r\n<p><a href="#">Find Out More</a></p>";}'),
(74, NULL, '2016-02-01 15:59:49', '2016-02-01 15:59:49', NULL, '1', 9, 1, 'O:11:"BlockRecord":11:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"74";i:1;s:111:"<h2>JUNIPER 55</h2>\r\n<p><img src="{CCM:FID_19}" alt="banner02.jpg" /></p>\r\n<p><a href="#">Find Out More</a></p>";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"74";s:7:"content";s:111:"<h2>JUNIPER 55</h2>\r\n<p><img src="{CCM:FID_19}" alt="banner02.jpg" /></p>\r\n<p><a href="#">Find Out More</a></p>";}'),
(75, NULL, '2016-02-01 16:00:33', '2016-02-01 16:00:33', NULL, '1', 9, 1, 'O:11:"BlockRecord":11:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"75";i:1;s:115:"<h2>ROYAL WEDDINGS</h2>\r\n<p><img src="{CCM:FID_20}" alt="banner03.jpg" /></p>\r\n<p><a href="#">Find Out More</a></p>";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"75";s:7:"content";s:115:"<h2>ROYAL WEDDINGS</h2>\r\n<p><img src="{CCM:FID_20}" alt="banner03.jpg" /></p>\r\n<p><a href="#">Find Out More</a></p>";}'),
(76, NULL, '2016-02-01 16:16:39', '2016-02-01 16:16:39', NULL, '1', 9, 1, 'O:11:"BlockRecord":11:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"76";i:1;s:668:"<h2>STAY &amp; PLAY</h2>\r\n<div class="banner-des">Ennius et sapines et fortis et alter Homerus, ut critici dicunt, leviter curare videtur, quo promissa cadant et somnia. Naevius in manibus non est et mentibus haeret paene recens. Adeo sanctum est vetus omne poema. ambigitur quotiens, uter utro sit prior, aufert Pacuvius docti famam senis Accius alti, dicitur Afrani toga convenisse Menandro, Plautus dicunt, leviter curare videtur, quo promissa cadant et somnia. Naevius in manibus non est et mentibuad exemplar Siculi properare epicharmi. Adeo sanctum est vetus omni.</div>\r\n<p><img src="{CCM:FID_18}" alt="banner01.jpg" /></p>\r\n<p><a href="#">Find Out More</a></p>";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"76";s:7:"content";s:668:"<h2>STAY &amp; PLAY</h2>\r\n<div class="banner-des">Ennius et sapines et fortis et alter Homerus, ut critici dicunt, leviter curare videtur, quo promissa cadant et somnia. Naevius in manibus non est et mentibus haeret paene recens. Adeo sanctum est vetus omne poema. ambigitur quotiens, uter utro sit prior, aufert Pacuvius docti famam senis Accius alti, dicitur Afrani toga convenisse Menandro, Plautus dicunt, leviter curare videtur, quo promissa cadant et somnia. Naevius in manibus non est et mentibuad exemplar Siculi properare epicharmi. Adeo sanctum est vetus omni.</div>\r\n<p><img src="{CCM:FID_18}" alt="banner01.jpg" /></p>\r\n<p><a href="#">Find Out More</a></p>";}'),
(77, NULL, '2016-02-01 16:24:15', '2016-02-01 16:24:16', NULL, '1', 9, 1, 'O:11:"BlockRecord":11:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"77";i:1;s:668:"<h2>STAY &amp; PLAY</h2>\r\n<div class="banner-des">Ennius et sapines et fortis et alter Homerus, ut critici dicunt, leviter curare videtur, quo promissa cadant et somnia. Naevius in manibus non est et mentibus haeret paene recens. Adeo sanctum est vetus omne poema. ambigitur quotiens, uter utro sit prior, aufert Pacuvius docti famam senis Accius alti, dicitur Afrani toga convenisse Menandro, Plautus dicunt, leviter curare videtur, quo promissa cadant et somnia. Naevius in manibus non est et mentibuad exemplar Siculi properare epicharmi. Adeo sanctum est vetus omni.</div>\r\n<p><img src="{CCM:FID_18}" alt="banner01.jpg" /></p>\r\n<p><a href="#">Find Out More</a></p>";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"77";s:7:"content";s:668:"<h2>STAY &amp; PLAY</h2>\r\n<div class="banner-des">Ennius et sapines et fortis et alter Homerus, ut critici dicunt, leviter curare videtur, quo promissa cadant et somnia. Naevius in manibus non est et mentibus haeret paene recens. Adeo sanctum est vetus omne poema. ambigitur quotiens, uter utro sit prior, aufert Pacuvius docti famam senis Accius alti, dicitur Afrani toga convenisse Menandro, Plautus dicunt, leviter curare videtur, quo promissa cadant et somnia. Naevius in manibus non est et mentibuad exemplar Siculi properare epicharmi. Adeo sanctum est vetus omni.</div>\r\n<p><img src="{CCM:FID_18}" alt="banner01.jpg" /></p>\r\n<p><a href="#">Find Out More</a></p>";}'),
(78, NULL, '2016-02-01 16:24:26', '2016-02-01 16:24:26', NULL, '1', 9, 1, 'O:11:"BlockRecord":11:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"78";i:1;s:663:"<h2>JUNIPER 55</h2>\r\n<div class="banner-des">Ennius et sapines et fortis et alter Homerus, ut critici dicunt, leviter curare videtur, quo promissa cadant et somnia. Naevius in manibus non est et mentibus haeret paene recens. Adeo sanctum est vetus omne poema. ambigitur quotiens, uter utro sit prior, aufert Pacuvius docti famam senis Accius alti, dicitur Afrani toga convenisse Menandro, Plautus dicunt, leviter curare videtur, quo promissa cadant et somnia. Naevius in manibus non est et mentibuad exemplar Siculi properare epicharmi. Adeo sanctum est vetus omni.</div>\r\n<p><img src="{CCM:FID_19}" alt="banner02.jpg" /></p>\r\n<p><a href="#">Find Out More</a></p>";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"78";s:7:"content";s:663:"<h2>JUNIPER 55</h2>\r\n<div class="banner-des">Ennius et sapines et fortis et alter Homerus, ut critici dicunt, leviter curare videtur, quo promissa cadant et somnia. Naevius in manibus non est et mentibus haeret paene recens. Adeo sanctum est vetus omne poema. ambigitur quotiens, uter utro sit prior, aufert Pacuvius docti famam senis Accius alti, dicitur Afrani toga convenisse Menandro, Plautus dicunt, leviter curare videtur, quo promissa cadant et somnia. Naevius in manibus non est et mentibuad exemplar Siculi properare epicharmi. Adeo sanctum est vetus omni.</div>\r\n<p><img src="{CCM:FID_19}" alt="banner02.jpg" /></p>\r\n<p><a href="#">Find Out More</a></p>";}'),
(79, NULL, '2016-02-01 16:24:34', '2016-02-01 16:24:34', NULL, '1', 9, 1, 'O:11:"BlockRecord":11:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"79";i:1;s:667:"<h2>ROYAL WEDDINGS</h2>\r\n<div class="banner-des">Ennius et sapines et fortis et alter Homerus, ut critici dicunt, leviter curare videtur, quo promissa cadant et somnia. Naevius in manibus non est et mentibus haeret paene recens. Adeo sanctum est vetus omne poema. ambigitur quotiens, uter utro sit prior, aufert Pacuvius docti famam senis Accius alti, dicitur Afrani toga convenisse Menandro, Plautus dicunt, leviter curare videtur, quo promissa cadant et somnia. Naevius in manibus non est et mentibuad exemplar Siculi properare epicharmi. Adeo sanctum est vetus omni.</div>\r\n<p><img src="{CCM:FID_20}" alt="banner03.jpg" /></p>\r\n<p><a href="#">Find Out More</a></p>";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"79";s:7:"content";s:667:"<h2>ROYAL WEDDINGS</h2>\r\n<div class="banner-des">Ennius et sapines et fortis et alter Homerus, ut critici dicunt, leviter curare videtur, quo promissa cadant et somnia. Naevius in manibus non est et mentibus haeret paene recens. Adeo sanctum est vetus omne poema. ambigitur quotiens, uter utro sit prior, aufert Pacuvius docti famam senis Accius alti, dicitur Afrani toga convenisse Menandro, Plautus dicunt, leviter curare videtur, quo promissa cadant et somnia. Naevius in manibus non est et mentibuad exemplar Siculi properare epicharmi. Adeo sanctum est vetus omni.</div>\r\n<p><img src="{CCM:FID_20}" alt="banner03.jpg" /></p>\r\n<p><a href="#">Find Out More</a></p>";}'),
(80, NULL, '2016-02-01 16:40:04', '2016-02-01 16:40:04', NULL, '1', 8, 1, 'O:11:"BlockRecord":18:{s:5:"_dbat";i:1;s:6:"_table";s:12:"btNavigation";s:8:"_tableat";s:12:"btNavigation";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:9:{i:0;s:2:"80";i:1;s:11:"display_asc";i:2;s:3:"top";i:3;i:0;i:4;i:0;i:5;s:3:"all";i:6;s:6:"enough";i:7;i:0;i:8;i:0;}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"80";s:7:"orderBy";s:11:"display_asc";s:12:"displayPages";s:3:"top";s:15:"displayPagesCID";i:0;s:23:"displayPagesIncludeSelf";i:0;s:15:"displaySubPages";s:3:"all";s:20:"displaySubPageLevels";s:6:"enough";s:23:"displaySubPageLevelsNum";i:0;s:23:"displayUnavailablePages";i:0;}'),
(81, NULL, '2016-02-01 18:06:16', '2016-02-01 18:06:16', NULL, '1', 30, 1, 'O:11:"BlockRecord":14:{s:5:"_dbat";i:1;s:6:"_table";s:18:"btResponsiveSlider";s:8:"_tableat";s:18:"btResponsiveSlider";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:5:{i:0;s:2:"81";i:1;i:0;i:2;s:5:"ORDER";i:3;N;i:4;N;}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"81";s:4:"fsID";i:0;s:8:"playback";s:5:"ORDER";s:8:"duration";N;s:12:"fadeDuration";N;}'),
(82, NULL, '2016-02-01 18:09:13', '2016-02-01 18:09:13', NULL, '1', 9, 1, 'O:11:"BlockRecord":11:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"82";i:1;s:18:"<p>cxxcfxdcadc</p>";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"82";s:7:"content";s:18:"<p>cxxcfxdcadc</p>";}'),
(83, NULL, '2016-02-01 18:13:08', '2016-02-01 18:13:08', NULL, '1', 9, 1, 'O:11:"BlockRecord":11:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"83";i:1;s:217:"<p><span>Royal Hotel</span><br /> 55 Henderson St,<br /> Bridge of Allan, <br /> Stirlingshire FK9 4HG<br /> <br /> T: 01786 832 284<br /> E: <a href="mailto:info@royalhotel.co.uk">info@royalhotel.co.uk<br /> </a></p>";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"83";s:7:"content";s:217:"<p><span>Royal Hotel</span><br /> 55 Henderson St,<br /> Bridge of Allan, <br /> Stirlingshire FK9 4HG<br /> <br /> T: 01786 832 284<br /> E: <a href="mailto:info@royalhotel.co.uk">info@royalhotel.co.uk<br /> </a></p>";}'),
(84, NULL, '2016-02-01 18:13:20', '2016-02-01 18:13:20', NULL, '1', 8, 1, 'O:11:"BlockRecord":18:{s:5:"_dbat";i:1;s:6:"_table";s:12:"btNavigation";s:8:"_tableat";s:12:"btNavigation";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:9:{i:0;s:2:"84";i:1;s:11:"display_asc";i:2;s:3:"top";i:3;i:0;i:4;i:0;i:5;s:4:"none";i:6;s:3:"all";i:7;i:0;i:8;i:0;}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"84";s:7:"orderBy";s:11:"display_asc";s:12:"displayPages";s:3:"top";s:15:"displayPagesCID";i:0;s:23:"displayPagesIncludeSelf";i:0;s:15:"displaySubPages";s:4:"none";s:20:"displaySubPageLevels";s:3:"all";s:23:"displaySubPageLevelsNum";i:0;s:23:"displayUnavailablePages";i:0;}');
INSERT INTO `Blocks` (`bID`, `bName`, `bDateAdded`, `bDateModified`, `bFilename`, `bIsActive`, `btID`, `uID`, `btCachedBlockRecord`) VALUES
(85, NULL, '2016-02-01 18:15:01', '2016-02-01 18:15:01', NULL, '1', 9, 1, 'O:11:"BlockRecord":11:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"85";i:1;s:154:"<p><img src="{CCM:FID_16}" alt="logo-footer.png" width="107" height="75" /><img src="{CCM:FID_17}" alt="footer-fadeline.png" width="994" height="2" /></p>";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"85";s:7:"content";s:154:"<p><img src="{CCM:FID_16}" alt="logo-footer.png" width="107" height="75" /><img src="{CCM:FID_17}" alt="footer-fadeline.png" width="994" height="2" /></p>";}'),
(86, NULL, '2016-02-01 18:18:56', '2016-02-01 18:18:56', NULL, '1', 9, 1, 'O:11:"BlockRecord":11:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"86";i:1;s:709:"<p><iframe style="border: 0;" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2222.128011569134!2d-3.9484010839309622!3d56.1548912683754!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x48888817de862d1f%3A0xd0e5b2a7c42b7868!2sRoyal+Hotel!5e0!3m2!1sen!2sin!4v1454330817119" frameborder="0" width="100%" height="450"></iframe></p>\r\n<div class="map-des">Located in the heart of Scotland, our luxury hotel is ideally situated for retium <a href="#">Golf</a> arroget <a href="#">Rambling</a> scriptor abhinc annos centum qui decidit, inter perfectos veteresque referri debet an inter vilis atque novos. Excludat iurgia finis, est vetus atque probus, <a class="btn-map" href="#">See &amp; Do</a></div>";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"86";s:7:"content";s:709:"<p><iframe style="border: 0;" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2222.128011569134!2d-3.9484010839309622!3d56.1548912683754!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x48888817de862d1f%3A0xd0e5b2a7c42b7868!2sRoyal+Hotel!5e0!3m2!1sen!2sin!4v1454330817119" frameborder="0" width="100%" height="450"></iframe></p>\r\n<div class="map-des">Located in the heart of Scotland, our luxury hotel is ideally situated for retium <a href="#">Golf</a> arroget <a href="#">Rambling</a> scriptor abhinc annos centum qui decidit, inter perfectos veteresque referri debet an inter vilis atque novos. Excludat iurgia finis, est vetus atque probus, <a class="btn-map" href="#">See &amp; Do</a></div>";}'),
(87, NULL, '2016-02-01 18:26:51', '2016-02-01 18:26:51', NULL, '1', 9, 1, 'O:11:"BlockRecord":11:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"87";i:1;s:701:"<h2>STAY &amp; PLAY</h2>\r\n<div class="banner-des">Ennius et sapines et fortis et alter Homerus, ut critici dicunt, leviter curare videtur, quo promissa cadant et somnia. Naevius in manibus non est et mentibus haeret paene recens. Adeo sanctum est vetus omne poema. ambigitur quotiens, uter utro sit prior, aufert Pacuvius docti famam senis Accius alti, dicitur Afrani toga convenisse Menandro, Plautus dicunt, leviter curare videtur, quo promissa cadant et somnia. Naevius in manibus non est et mentibuad exemplar Siculi properare epicharmi. Adeo sanctum est vetus omni.</div>\r\n<p><img src="/royalhotel/files/5014/5432/2495/banner01.jpg" alt="banner01.jpg" /></p>\r\n<p><a href="#">Find Out More</a></p>";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"87";s:7:"content";s:701:"<h2>STAY &amp; PLAY</h2>\r\n<div class="banner-des">Ennius et sapines et fortis et alter Homerus, ut critici dicunt, leviter curare videtur, quo promissa cadant et somnia. Naevius in manibus non est et mentibus haeret paene recens. Adeo sanctum est vetus omne poema. ambigitur quotiens, uter utro sit prior, aufert Pacuvius docti famam senis Accius alti, dicitur Afrani toga convenisse Menandro, Plautus dicunt, leviter curare videtur, quo promissa cadant et somnia. Naevius in manibus non est et mentibuad exemplar Siculi properare epicharmi. Adeo sanctum est vetus omni.</div>\r\n<p><img src="/royalhotel/files/5014/5432/2495/banner01.jpg" alt="banner01.jpg" /></p>\r\n<p><a href="#">Find Out More</a></p>";}'),
(88, NULL, '2016-02-01 18:27:18', '2016-02-01 18:27:18', NULL, '1', 9, 1, 'O:11:"BlockRecord":11:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"88";i:1;s:696:"<h2>JUNIPER 55</h2>\r\n<div class="banner-des">Ennius et sapines et fortis et alter Homerus, ut critici dicunt, leviter curare videtur, quo promissa cadant et somnia. Naevius in manibus non est et mentibus haeret paene recens. Adeo sanctum est vetus omne poema. ambigitur quotiens, uter utro sit prior, aufert Pacuvius docti famam senis Accius alti, dicitur Afrani toga convenisse Menandro, Plautus dicunt, leviter curare videtur, quo promissa cadant et somnia. Naevius in manibus non est et mentibuad exemplar Siculi properare epicharmi. Adeo sanctum est vetus omni.</div>\r\n<p><img src="/royalhotel/files/2314/5432/2497/banner02.jpg" alt="banner02.jpg" /></p>\r\n<p><a href="#">Find Out More</a></p>";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"88";s:7:"content";s:696:"<h2>JUNIPER 55</h2>\r\n<div class="banner-des">Ennius et sapines et fortis et alter Homerus, ut critici dicunt, leviter curare videtur, quo promissa cadant et somnia. Naevius in manibus non est et mentibus haeret paene recens. Adeo sanctum est vetus omne poema. ambigitur quotiens, uter utro sit prior, aufert Pacuvius docti famam senis Accius alti, dicitur Afrani toga convenisse Menandro, Plautus dicunt, leviter curare videtur, quo promissa cadant et somnia. Naevius in manibus non est et mentibuad exemplar Siculi properare epicharmi. Adeo sanctum est vetus omni.</div>\r\n<p><img src="/royalhotel/files/2314/5432/2497/banner02.jpg" alt="banner02.jpg" /></p>\r\n<p><a href="#">Find Out More</a></p>";}'),
(89, NULL, '2016-02-01 18:27:43', '2016-02-01 18:27:43', NULL, '1', 9, 1, 'O:11:"BlockRecord":11:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"89";i:1;s:700:"<h2>ROYAL WEDDINGS</h2>\r\n<div class="banner-des">Ennius et sapines et fortis et alter Homerus, ut critici dicunt, leviter curare videtur, quo promissa cadant et somnia. Naevius in manibus non est et mentibus haeret paene recens. Adeo sanctum est vetus omne poema. ambigitur quotiens, uter utro sit prior, aufert Pacuvius docti famam senis Accius alti, dicitur Afrani toga convenisse Menandro, Plautus dicunt, leviter curare videtur, quo promissa cadant et somnia. Naevius in manibus non est et mentibuad exemplar Siculi properare epicharmi. Adeo sanctum est vetus omni.</div>\r\n<p><img src="/royalhotel/files/4414/5432/2498/banner03.jpg" alt="banner03.jpg" /></p>\r\n<p><a href="#">Find Out More</a></p>";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"89";s:7:"content";s:700:"<h2>ROYAL WEDDINGS</h2>\r\n<div class="banner-des">Ennius et sapines et fortis et alter Homerus, ut critici dicunt, leviter curare videtur, quo promissa cadant et somnia. Naevius in manibus non est et mentibus haeret paene recens. Adeo sanctum est vetus omne poema. ambigitur quotiens, uter utro sit prior, aufert Pacuvius docti famam senis Accius alti, dicitur Afrani toga convenisse Menandro, Plautus dicunt, leviter curare videtur, quo promissa cadant et somnia. Naevius in manibus non est et mentibuad exemplar Siculi properare epicharmi. Adeo sanctum est vetus omni.</div>\r\n<p><img src="/royalhotel/files/4414/5432/2498/banner03.jpg" alt="banner03.jpg" /></p>\r\n<p><a href="#">Find Out More</a></p>";}'),
(90, NULL, '2016-02-01 18:29:54', '2016-02-01 18:29:54', NULL, '1', 9, 1, 'O:11:"BlockRecord":11:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"90";i:1;s:0:"";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"90";s:7:"content";s:0:"";}'),
(91, NULL, '2016-02-01 18:30:24', '2016-02-01 18:30:24', NULL, '1', 9, 1, 'O:11:"BlockRecord":11:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"91";i:1;s:17:"<h2>Location</h2>";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"91";s:7:"content";s:17:"<h2>Location</h2>";}'),
(92, NULL, '2016-02-01 18:30:35', '2016-02-01 18:30:35', NULL, '1', 9, 1, 'O:11:"BlockRecord":11:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"92";i:1;s:709:"<p><iframe style="border: 0;" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2222.128011569134!2d-3.9484010839309622!3d56.1548912683754!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x48888817de862d1f%3A0xd0e5b2a7c42b7868!2sRoyal+Hotel!5e0!3m2!1sen!2sin!4v1454330817119" frameborder="0" width="100%" height="450"></iframe></p>\r\n<div class="map-des">Located in the heart of Scotland, our luxury hotel is ideally situated for retium <a href="#">Golf</a> arroget <a href="#">Rambling</a> scriptor abhinc annos centum qui decidit, inter perfectos veteresque referri debet an inter vilis atque novos. Excludat iurgia finis, est vetus atque probus, <a class="btn-map" href="#">See &amp; Do</a></div>";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"92";s:7:"content";s:709:"<p><iframe style="border: 0;" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2222.128011569134!2d-3.9484010839309622!3d56.1548912683754!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x48888817de862d1f%3A0xd0e5b2a7c42b7868!2sRoyal+Hotel!5e0!3m2!1sen!2sin!4v1454330817119" frameborder="0" width="100%" height="450"></iframe></p>\r\n<div class="map-des">Located in the heart of Scotland, our luxury hotel is ideally situated for retium <a href="#">Golf</a> arroget <a href="#">Rambling</a> scriptor abhinc annos centum qui decidit, inter perfectos veteresque referri debet an inter vilis atque novos. Excludat iurgia finis, est vetus atque probus, <a class="btn-map" href="#">See &amp; Do</a></div>";}'),
(93, NULL, '2016-02-01 18:31:41', '2016-02-01 18:31:41', NULL, '1', 9, 1, 'O:11:"BlockRecord":11:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"93";i:1;s:342:"<p><iframe style="border: 0;" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2222.128011569134!2d-3.9484010839309622!3d56.1548912683754!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x48888817de862d1f%3A0xd0e5b2a7c42b7868!2sRoyal+Hotel!5e0!3m2!1sen!2sin!4v1454330817119" frameborder="0" width="100%" height="450"></iframe></p>";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"93";s:7:"content";s:342:"<p><iframe style="border: 0;" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2222.128011569134!2d-3.9484010839309622!3d56.1548912683754!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x48888817de862d1f%3A0xd0e5b2a7c42b7868!2sRoyal+Hotel!5e0!3m2!1sen!2sin!4v1454330817119" frameborder="0" width="100%" height="450"></iframe></p>";}'),
(94, NULL, '2016-02-01 18:31:58', '2016-02-01 18:31:58', NULL, '1', 9, 1, 'O:11:"BlockRecord":11:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"94";i:1;s:365:"<div class="map-des">Located in the heart of Scotland, our luxury hotel is ideally situated for retium <a href="#">Golf</a> arroget <a href="#">Rambling</a> scriptor abhinc annos centum qui decidit, inter perfectos veteresque referri debet an inter vilis atque novos. Excludat iurgia finis, est vetus atque probus, <a class="btn-map" href="#">See &amp; Do</a></div>";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"94";s:7:"content";s:365:"<div class="map-des">Located in the heart of Scotland, our luxury hotel is ideally situated for retium <a href="#">Golf</a> arroget <a href="#">Rambling</a> scriptor abhinc annos centum qui decidit, inter perfectos veteresque referri debet an inter vilis atque novos. Excludat iurgia finis, est vetus atque probus, <a class="btn-map" href="#">See &amp; Do</a></div>";}'),
(95, NULL, '2016-02-01 18:32:35', '2016-02-01 18:32:35', NULL, '1', 9, 1, 'O:11:"BlockRecord":11:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"95";i:1;s:345:"<p>Located in the heart of Scotland, our luxury hotel is ideally situated for retium <a href="#">Golf</a> arroget <a href="#">Rambling</a> scriptor abhinc annos centum qui decidit, inter perfectos veteresque referri debet an inter vilis atque novos. Excludat iurgia finis, est vetus atque probus, <a class="btn-map" href="#">See &amp; Do</a></p>";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"95";s:7:"content";s:345:"<p>Located in the heart of Scotland, our luxury hotel is ideally situated for retium <a href="#">Golf</a> arroget <a href="#">Rambling</a> scriptor abhinc annos centum qui decidit, inter perfectos veteresque referri debet an inter vilis atque novos. Excludat iurgia finis, est vetus atque probus, <a class="btn-map" href="#">See &amp; Do</a></p>";}'),
(96, NULL, '2016-02-01 18:36:06', '2016-02-01 18:36:37', NULL, '1', 9, 1, 'O:11:"BlockRecord":11:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"96";i:1;s:1888:"<h1>Large intro title to page</h1>\r\n<p>Paragraph style arroget annus scriptor abhinc annos centum qui decidit, inter perfectos veteresque referri debet an inter vilis atque novos. Excludat iurgia finis, est vetus atque probus, centum qui perficit annos. Quid, qui link style uno mense vel anno, inter quos referendus erit. Veteresne poetas, an quos et praesens et postera respuat aetas.</p>\r\n<p> Iste quidem veteres inter ponetur honeste, qui vel mense brevi vel toto est iunior anno. Utor permisso, caudaeque pilos ut equinae paulatim vello unum, demo etiam unum, dum cadat elusus ratione ruentis acervi, qui redit in fastos et virtutem aestimat annis.</p>\r\n<h2>Subheading style when applied it should come in with rules above and below</h2>\r\n<ul>\r\n<li>Ennius et sapines et fortis et alter Homerus, ut critici dicunt, leviter curare videtur, quo promissa cadant et somnia.</li>\r\n<li>Naevius in manibus non est et mentibus haeret paene recens. Adeo sanctum est vetus omne poema.</li>\r\n<li>Ambigitur quotiens, uter utro sit prior, aufert Pacuvius docti famam senis Accius alti, dicitur Afrani toga.</li>\r\n<li>Menandro lautus ad exemplar Siculi properare Epicharmi, vincere Caecilius gravitate, Terentius arte.</li>\r\n</ul>\r\n<p>Hos ediscit et hos arto stipata theatro spectat Roma potens; habet hos numeratque poetas ad nostrum tempus Livi scriptoris ab aevo. Interdum volgus rectum videt, est ubi peccat. Si veteres ita miratur laudatque poetas, ut nihil anteferat, nihil illis comparet, errat. Si quaedam nimis antique, si peraque dure dicere credit eos, ignave multa fatetur, et sapit et mecum facit et Iova iudicat aequo.</p>\r\n<p>Non equidem insector delendave carmina Livi esse reor, memini quae plagosum mihi parvo Orbilium dictare; sed emendata videri pulchraque et exactis minimum distantia miror. Inter quae verbum emicuit si forte decorum, et si versus paulo concinnior unus.</p>";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"96";s:7:"content";s:1888:"<h1>Large intro title to page</h1>\r\n<p>Paragraph style arroget annus scriptor abhinc annos centum qui decidit, inter perfectos veteresque referri debet an inter vilis atque novos. Excludat iurgia finis, est vetus atque probus, centum qui perficit annos. Quid, qui link style uno mense vel anno, inter quos referendus erit. Veteresne poetas, an quos et praesens et postera respuat aetas.</p>\r\n<p> Iste quidem veteres inter ponetur honeste, qui vel mense brevi vel toto est iunior anno. Utor permisso, caudaeque pilos ut equinae paulatim vello unum, demo etiam unum, dum cadat elusus ratione ruentis acervi, qui redit in fastos et virtutem aestimat annis.</p>\r\n<h2>Subheading style when applied it should come in with rules above and below</h2>\r\n<ul>\r\n<li>Ennius et sapines et fortis et alter Homerus, ut critici dicunt, leviter curare videtur, quo promissa cadant et somnia.</li>\r\n<li>Naevius in manibus non est et mentibus haeret paene recens. Adeo sanctum est vetus omne poema.</li>\r\n<li>Ambigitur quotiens, uter utro sit prior, aufert Pacuvius docti famam senis Accius alti, dicitur Afrani toga.</li>\r\n<li>Menandro lautus ad exemplar Siculi properare Epicharmi, vincere Caecilius gravitate, Terentius arte.</li>\r\n</ul>\r\n<p>Hos ediscit et hos arto stipata theatro spectat Roma potens; habet hos numeratque poetas ad nostrum tempus Livi scriptoris ab aevo. Interdum volgus rectum videt, est ubi peccat. Si veteres ita miratur laudatque poetas, ut nihil anteferat, nihil illis comparet, errat. Si quaedam nimis antique, si peraque dure dicere credit eos, ignave multa fatetur, et sapit et mecum facit et Iova iudicat aequo.</p>\r\n<p>Non equidem insector delendave carmina Livi esse reor, memini quae plagosum mihi parvo Orbilium dictare; sed emendata videri pulchraque et exactis minimum distantia miror. Inter quae verbum emicuit si forte decorum, et si versus paulo concinnior unus.</p>";}'),
(97, NULL, '2016-02-01 18:49:37', '2016-02-01 18:49:37', NULL, '1', 30, 1, 'O:11:"BlockRecord":14:{s:5:"_dbat";i:1;s:6:"_table";s:18:"btResponsiveSlider";s:8:"_tableat";s:18:"btResponsiveSlider";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:5:{i:0;s:2:"97";i:1;i:0;i:2;s:5:"ORDER";i:3;N;i:4;N;}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"97";s:4:"fsID";i:0;s:8:"playback";s:5:"ORDER";s:8:"duration";N;s:12:"fadeDuration";N;}'),
(98, NULL, '2016-02-01 18:50:42', '2016-02-01 18:50:42', NULL, '1', 30, 1, 'O:11:"BlockRecord":14:{s:5:"_dbat";i:1;s:6:"_table";s:18:"btResponsiveSlider";s:8:"_tableat";s:18:"btResponsiveSlider";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:5:{i:0;s:2:"98";i:1;i:0;i:2;s:5:"ORDER";i:3;N;i:4;N;}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"98";s:4:"fsID";i:0;s:8:"playback";s:5:"ORDER";s:8:"duration";N;s:12:"fadeDuration";N;}');

-- --------------------------------------------------------

--
-- Table structure for table `BlockTypePermissionBlockTypeAccessList`
--

DROP TABLE IF EXISTS `BlockTypePermissionBlockTypeAccessList`;
CREATE TABLE IF NOT EXISTS `BlockTypePermissionBlockTypeAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `BlockTypePermissionBlockTypeAccessListCustom`
--

DROP TABLE IF EXISTS `BlockTypePermissionBlockTypeAccessListCustom`;
CREATE TABLE IF NOT EXISTS `BlockTypePermissionBlockTypeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `btID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `BlockTypes`
--

DROP TABLE IF EXISTS `BlockTypes`;
CREATE TABLE IF NOT EXISTS `BlockTypes` (
`btID` int(10) unsigned NOT NULL,
  `btHandle` varchar(32) NOT NULL,
  `btName` varchar(128) NOT NULL,
  `btDescription` text,
  `btActiveWhenAdded` tinyint(1) NOT NULL DEFAULT '1',
  `btCopyWhenPropagate` tinyint(1) NOT NULL DEFAULT '0',
  `btIncludeAll` tinyint(1) NOT NULL DEFAULT '0',
  `btIsInternal` tinyint(1) NOT NULL DEFAULT '0',
  `btDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `btInterfaceWidth` int(10) unsigned NOT NULL DEFAULT '400',
  `btInterfaceHeight` int(10) unsigned NOT NULL DEFAULT '400',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=31 ;

--
-- Dumping data for table `BlockTypes`
--

INSERT INTO `BlockTypes` (`btID`, `btHandle`, `btName`, `btDescription`, `btActiveWhenAdded`, `btCopyWhenPropagate`, `btIncludeAll`, `btIsInternal`, `btDisplayOrder`, `btInterfaceWidth`, `btInterfaceHeight`, `pkgID`) VALUES
(1, 'core_scrapbook_display', 'Scrapbook Display (Core)', 'Proxy block for blocks pasted through the scrapbook.', 1, 0, 0, 1, 0, 400, 400, 0),
(2, 'core_stack_display', 'Stack Display (Core)', 'Proxy block for stacks added through the UI.', 1, 0, 0, 1, 0, 400, 400, 0),
(3, 'dashboard_featured_addon', 'Dashboard Featured Add-On', 'Features an add-on from concrete5.org.', 1, 0, 0, 1, 0, 300, 100, 0),
(4, 'dashboard_featured_theme', 'Dashboard Featured Theme', 'Features a theme from concrete5.org.', 1, 0, 0, 1, 0, 300, 100, 0),
(5, 'dashboard_newsflow_latest', 'Dashboard Newsflow Latest', 'Grabs the latest newsflow data from concrete5.org.', 1, 0, 0, 1, 0, 400, 400, 0),
(6, 'dashboard_app_status', 'Dashboard App Status', 'Displays update and welcome back information on your dashboard.', 1, 0, 0, 1, 0, 400, 400, 0),
(7, 'dashboard_site_activity', 'Dashboard Site Activity', 'Displays a summary of website activity.', 1, 0, 0, 1, 0, 400, 400, 0),
(8, 'autonav', 'Auto-Nav', 'Creates navigation trees and sitemaps.', 1, 0, 0, 0, 1, 500, 350, 0),
(9, 'content', 'Content', 'HTML/WYSIWYG Editor Content.', 1, 0, 0, 0, 2, 600, 465, 0),
(10, 'date_nav', 'Date Navigation', 'A collapsible date based navigation tree', 1, 0, 0, 0, 3, 500, 350, 0),
(11, 'external_form', 'External Form', 'Include external forms in the filesystem and place them on pages.', 1, 0, 0, 0, 4, 370, 100, 0),
(12, 'file', 'File', 'Link to files stored in the asset library.', 1, 0, 0, 0, 5, 300, 250, 0),
(13, 'flash_content', 'Flash Content', 'Embeds SWF files, including flash detection.', 1, 0, 0, 0, 6, 380, 200, 0),
(14, 'form', 'Form', 'Build simple forms and surveys.', 1, 0, 0, 0, 7, 420, 430, 0),
(15, 'google_map', 'Google Map', 'Enter an address and a Google Map of that location will be placed in your page.', 1, 0, 0, 0, 8, 750, 460, 0),
(16, 'guestbook', 'Guestbook / Comments', 'Adds blog-style comments (a guestbook) to your page.', 1, 0, 1, 0, 9, 370, 480, 0),
(17, 'html', 'HTML', 'For adding HTML by hand.', 1, 0, 0, 0, 10, 600, 465, 0),
(18, 'image', 'Image', 'Adds images and onstates from the library to pages.', 1, 0, 0, 0, 11, 400, 550, 0),
(19, 'next_previous', 'Next & Previous Nav', 'Navigate through sibling pages.', 1, 0, 0, 0, 12, 430, 400, 0),
(20, 'page_list', 'Page List', 'List pages based on type, area.', 1, 0, 0, 0, 13, 500, 350, 0),
(21, 'rss_displayer', 'RSS Displayer', 'Fetch, parse and display the contents of an RSS or Atom feed.', 1, 0, 0, 0, 14, 400, 330, 0),
(22, 'search', 'Search', 'Add a search box to your site.', 1, 0, 0, 0, 15, 400, 240, 0),
(23, 'slideshow', 'Slideshow', 'Display a running loop of images.', 1, 0, 0, 0, 16, 550, 400, 0),
(24, 'survey', 'Survey', 'Provide a simple survey, along with results in a pie chart format.', 1, 0, 0, 0, 17, 420, 300, 0),
(25, 'tags', 'Tags', 'List pages based on type, area.', 1, 0, 0, 0, 18, 450, 260, 0),
(26, 'video', 'Video Player', 'Embeds uploaded video into a web page. Supports AVI, WMV, Quicktime/MPEG4 and FLV formats.', 1, 0, 0, 0, 19, 320, 220, 0),
(27, 'youtube', 'YouTube Video', 'Embeds a YouTube Video in your web page.', 1, 0, 0, 0, 20, 400, 210, 0),
(28, 'date_archive', 'Blog Date Archive', 'Displays month archive for pages', 1, 0, 0, 0, 21, 500, 350, 0),
(30, 'responsive_slider', 'Responsive Slider', 'Display a running loop of images.', 1, 0, 0, 0, 22, 550, 400, 2);

-- --------------------------------------------------------

--
-- Table structure for table `btContentFile`
--

DROP TABLE IF EXISTS `btContentFile`;
CREATE TABLE IF NOT EXISTS `btContentFile` (
  `bID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned DEFAULT NULL,
  `fileLinkText` varchar(255) DEFAULT NULL,
  `filePassword` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `btContentImage`
--

DROP TABLE IF EXISTS `btContentImage`;
CREATE TABLE IF NOT EXISTS `btContentImage` (
  `bID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned DEFAULT '0',
  `fOnstateID` int(10) unsigned DEFAULT '0',
  `maxWidth` int(10) unsigned DEFAULT '0',
  `maxHeight` int(10) unsigned DEFAULT '0',
  `externalLink` varchar(255) DEFAULT NULL,
  `internalLinkCID` int(10) unsigned DEFAULT '0',
  `forceImageToMatchDimensions` int(10) unsigned DEFAULT '0',
  `altText` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `btContentImage`
--

INSERT INTO `btContentImage` (`bID`, `fID`, `fOnstateID`, `maxWidth`, `maxHeight`, `externalLink`, `internalLinkCID`, `forceImageToMatchDimensions`, `altText`) VALUES
(15, 6, 0, 0, 0, '', 0, 0, ''),
(16, 2, 0, 960, 212, '', 0, 1, 'My concrete5 Blog'),
(17, 1, 0, 960, 212, '', 0, 1, ''),
(18, 3, 0, 960, 212, '', 0, 1, ''),
(19, 7, 0, 960, 212, '', 0, 1, ''),
(27, 5, 0, 960, 212, '', 0, 1, ''),
(42, 2, 0, 960, 212, '', 0, 1, 'My concrete5 Blog'),
(44, 6, 0, 0, 0, '', 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `btContentLocal`
--

DROP TABLE IF EXISTS `btContentLocal`;
CREATE TABLE IF NOT EXISTS `btContentLocal` (
  `bID` int(10) unsigned NOT NULL,
  `content` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `btContentLocal`
--

INSERT INTO `btContentLocal` (`bID`, `content`) VALUES
(1, '	<div id="newsflow-header-first-run"><h1>Welcome to concrete5.</h1>\n						<h2>It''s easy to edit content and add pages using in-context editing.</h2></div>\n						'),
(2, '<div class="newsflow-column-first-run">\n							<h3>Building Your Own Site</h3>\n							<p>Editing with concrete5 is a breeze. Just point and click to make changes.</p>\n							<br/>\n							<p><a href="javascript:void(0)" onclick="ccm_getNewsflowByPath(''/welcome/editors'')" class="btn primary">Editor''s Guide</a></p>\n							</div>'),
(3, '<div class="newsflow-column-first-run">\n							<h3>Developing Applications</h3>\n							<p>If you’re comfortable in PHP concrete5 should be a breeze to learn. Take a few moments to understand the architecture.</p>\n							<p><a href="javascript:void(0)" onclick="ccm_getNewsflowByPath(''/welcome/developers'')" class="btn primary">Developer''s Guide</a></p>\n							</div>'),
(4, '<div class="newsflow-column-first-run">\n							<h3>Designing Websites</h3>\n							<p>Good with CSS and HTML? You can easily theme anything with concrete5.</p>\n							<br/>\n							<p><a href="javascript:void(0)" onclick="ccm_getNewsflowByPath(''/welcome/designers'')" class="btn primary">Designer''s Guide</a></p>\n							</div>'),
(5, '\n						<div class="newsflow-column-first-run">\n						<h3>Business Background</h3>\n						<p>Worried about license structures, white-labeling or why concrete5 is a good choice for your agency?</p>\n						<p><a href="javascript:void(0)" onclick="ccm_getNewsflowByPath(''/welcome/executives'')" class="btn primary">Executive''s Guide</a></p>\n						</div>'),
(13, '<p>This is my first blog post.</p>'),
(21, '<h3>Links:</h3>'),
(23, '<h1><a title="Home" \n                                	href="{CCM:CID_1}"\n                                >royalhotel</a></h1>'),
(24, '<h3>Sidebar</h3>'),
(25, '<p>Everything about concrete5 is completely customizable through the CMS. This is a separate area from the main content on the homepage. You can&nbsp;<a title="Move blocks in concrete5" href="http://www.concrete5.org/documentation/general-topics/blocks-and-areas" target="_blank">drag and drop blocks</a>&nbsp;like this around your layout.</p>'),
(26, '<h2>Welcome to concrete5!</h2>\n                                        <p>Content Management is easy with concrete5''s in-context editing. Just <a href="{CCM:CID_111}">login</a> and you can change things as you browse your site.</p>\n                                        <p>You can watch videos and learn how to:</p>\n                                        <ul>\n                                        <li><a title="In-context editing CMS" href="http://www.concrete5.org/documentation/general-topics/in-context-editing/" target="_blank">Edit</a>&nbsp;this page.</li>\n                                        <li>Add a <a title="Add a page in concrete5" href="http://www.concrete5.org/documentation/general-topics/add-a-page/" target="_blank">new page</a>.</li>\n                                        <li>Add some basic functionality, like&nbsp;<a title="Add a simple form in concrete5" href="http://www.concrete5.org/documentation/general-topics/add_a_form" target="_blank">a Form</a>.</li>\n                                        <li><a title="add-on marketplace for concrete5" href="http://www.concrete5.org/marketplace/how_to_install_add_ons_and_themes_/" target="_blank">Finding &amp; adding</a>&nbsp;more functionality and themes.</li>\n                                        </ul>\n                                        <p>We''ve taken the liberty to build out the rest of this site with some sample content that will help you learn concrete5. Wander around a bit, or click Dashboard to get to the&nbsp;<a href="{CCM:CID_6}">Sitemap</a> and quickly delete the parts you don''t want.</p>'),
(29, '<h2>Learn More</h2>\n																<p>Visit&nbsp;<a title="concrete5 Content Management System" href="http://www.concrete5.org/" target="_blank">concrete5.org</a>&nbsp;to learn more from the&nbsp;<a title="open source content management system" href="http://www.concrete5.org/community" target="_blank">community</a>&nbsp;and the&nbsp;<a href="http://www.concrete5.org/documentation/general-topics/" target="_blank">documentation</a>. You can also browse our&nbsp;<a title="concrete5 marketplace" href="http://www.concrete5.org/marketplace/" target="_blank">marketplace</a>&nbsp;for more&nbsp;<a title="Add-ons for concrete5" href="http://www.concrete5.org/marketplace/addons/" target="_blank">add-ons</a>&nbsp;and&nbsp;<a title="Themes for concrete5" href="http://www.concrete5.org/marketplace/themes/" target="_blank">themes</a>&nbsp;to quickly build the site you really need.&nbsp;</p>\n																<h3>&nbsp;</h3>\n																<h3>Getting Help</h3>\n																<p>You can get free help in the <a href="http://www.concrete5.org/community/forums/" target="_blank">forums</a> and post for free to the&nbsp;<a href="http://www.concrete5.org/community/forums/jobs1/" target="_blank">jobs board</a>.&nbsp;</p>\n																<p>You can also pay the concrete5 team of developers to help with&nbsp;<a href="http://www.concrete5.org/services/support/" target="_blank">any problem</a>&nbsp;you run into. We offer <a href="http://www.concrete5.org/services/training/" target="_blank">training courses</a>&nbsp;and&nbsp;<a href="http://www.concrete5.org/services/hosting/" target="_blank">hosting packages</a>, just let us know <a href="http://www.concrete5.org/services/professional_services/" target="_blank">how we can help</a>.</p>'),
(33, '<h2>Contact Us</h2>\n									<p>Building a form is easy to do. Learn how to <a href="http://www.concrete5.org/documentation/general-topics/add_a_form" target="_blank">add a form block</a>.</p>'),
(35, '<h3>Site Map</h3>'),
(39, '<h3>Tags</h3>'),
(43, '<p>Here is some sample content! I''m writing it using composer!</p>'),
(54, '<p><a href="#"><img src="{CCM:FID_12}" alt="logo.png" width="107" height="75" /></a></p>'),
(55, '<p><a href="#">Book</a></p>'),
(56, '<p><a class="btn-book" href="#">Book</a></p>'),
(57, '<p><a class="btn-book" href="#">Book</a></p>'),
(59, '<h1><span>YOU</span>are the most important part of our Royal story</h1>\r\n<p>Poemata reddit, scire velim, chartis pretium quotus arroget annus scriptor abhinc annos centum qui decidit, inter perfectos veteresque referri debet an inter vilis atque novos. Excludat iurgia finis, est vetus atque probus, centum qui perficit annos. Quid, qui deperiit minor uno mense vel anno, inter quos referendus erit. Iste quidem veteres inter ponetur honeste, qui vel mense brevi vel toto est iunior anno. Utor permisso, caudaeque pilos ut equinae paulatim vello unum, demo etiam unum, dum cadat elusus ratione ruentis acervi, qui redit in fastos et virtutem aestimat annis miraturque nihil nisi quod Libitina sacravit.</p>'),
(60, '<p><img src="{CCM:FID_13}" alt="banner01.jpg" width="424" height="508" /></p>\r\n<p><a href="#">Find Out More</a></p>'),
(61, '<p><img src="{CCM:FID_14}" alt="banner02.jpg" width="424" height="508" /></p>\r\n<p><a href="#">Find Out More</a></p>'),
(62, '<p><img src="{CCM:FID_15}" alt="banner03.jpg" width="424" height="508" /></p>\r\n<p><a href="#">Find Out More</a></p>'),
(63, '<h2>Location</h2>'),
(64, '<p><iframe style="border: 0;" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2222.128011569134!2d-3.9484010839309414!3d56.1548912683754!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x48888817de862d1f%3A0xd0e5b2a7c42b7868!2sRoyal+Hotel!5e0!3m2!1sen!2sin!4v1454317956293" frameborder="0" width="100%" height="484"></iframe></p>'),
(65, '<p><iframe style="border: 0;" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2222.128011569134!2d-3.9484010839309414!3d56.1548912683754!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x48888817de862d1f%3A0xd0e5b2a7c42b7868!2sRoyal+Hotel!5e0!3m2!1sen!2sin!4v1454317956293" frameborder="0" width="100%" height="484"></iframe></p>'),
(66, '<p>Located in the heart of Scotland, our luxury hotel is ideally situated for retium Golf arroget Rambling scriptor abhinc annos centum qui decidit, inter perfectos veteresque referri debet an inter vilis atque novos. Excludat iurgia finis, est vetus atque probus,</p>'),
(67, '<p>Located in the heart of Scotland, our luxury hotel is ideally situated for retium Golf arroget Rambling scriptor abhinc annos centum qui decidit, inter perfectos veteresque referri debet an inter vilis atque novos. Excludat iurgia finis, est vetus atque probus,</p>\r\n<p><a href="#">See &amp; Do</a></p>'),
(68, '<p>Located in the heart of Scotland, our luxury hotel is ideally situated for retium <a href="#">Golf</a> arroget <a href="#">Rambling</a> scriptor abhinc annos centum qui decidit, inter perfectos veteresque referri debet an inter vilis atque novos. Excludat iurgia finis, est vetus atque probus,</p>\r\n<p><a class="=&quot;btn-map&quot;" href="#">See &amp; Do</a></p>'),
(69, '<p>Located in the heart of Scotland, our luxury hotel is ideally situated for retium <a href="#">Golf</a> arroget <a href="#">Rambling</a> scriptor abhinc annos centum qui decidit, inter perfectos veteresque referri debet an inter vilis atque novos. Excludat iurgia finis, est vetus atque probus,</p>\r\n<p><a class="btn-map" href="#">See &amp; Do</a></p>'),
(70, '<p><img src="{CCM:FID_16}" alt="logo-footer.png" width="107" height="75" /><img src="{CCM:FID_17}" alt="footer-fadeline.png" width="994" height="2" /></p>'),
(71, '<p>Royal Hotel<br /> 55 Henderson St,<br /> Bridge of Allan, <br /> Stirlingshire FK9 4HG<br /> <br /> T: 01786 832 284<br /> E: <a href="mailto:info@royalhotel.co.uk">info@royalhotel.co.uk<br /> </a></p>'),
(72, '<p><span>Royal Hotel</span><br /> 55 Henderson St,<br /> Bridge of Allan, <br /> Stirlingshire FK9 4HG<br /> <br /> T: 01786 832 284<br /> E: <a href="mailto:info@royalhotel.co.uk">info@royalhotel.co.uk<br /> </a></p>'),
(73, '<h2>STAY &amp; PLAY</h2>\r\n<p><img src="{CCM:FID_18}" alt="banner01.jpg" /></p>\r\n<p><a href="#">Find Out More</a></p>'),
(74, '<h2>JUNIPER 55</h2>\r\n<p><img src="{CCM:FID_19}" alt="banner02.jpg" /></p>\r\n<p><a href="#">Find Out More</a></p>'),
(75, '<h2>ROYAL WEDDINGS</h2>\r\n<p><img src="{CCM:FID_20}" alt="banner03.jpg" /></p>\r\n<p><a href="#">Find Out More</a></p>'),
(76, '<h2>STAY &amp; PLAY</h2>\r\n<div class="banner-des">Ennius et sapines et fortis et alter Homerus, ut critici dicunt, leviter curare videtur, quo promissa cadant et somnia. Naevius in manibus non est et mentibus haeret paene recens. Adeo sanctum est vetus omne poema. ambigitur quotiens, uter utro sit prior, aufert Pacuvius docti famam senis Accius alti, dicitur Afrani toga convenisse Menandro, Plautus dicunt, leviter curare videtur, quo promissa cadant et somnia. Naevius in manibus non est et mentibuad exemplar Siculi properare epicharmi. Adeo sanctum est vetus omni.</div>\r\n<p><img src="{CCM:FID_18}" alt="banner01.jpg" /></p>\r\n<p><a href="#">Find Out More</a></p>'),
(77, '<h2>STAY &amp; PLAY</h2>\r\n<div class="banner-des">Ennius et sapines et fortis et alter Homerus, ut critici dicunt, leviter curare videtur, quo promissa cadant et somnia. Naevius in manibus non est et mentibus haeret paene recens. Adeo sanctum est vetus omne poema. ambigitur quotiens, uter utro sit prior, aufert Pacuvius docti famam senis Accius alti, dicitur Afrani toga convenisse Menandro, Plautus dicunt, leviter curare videtur, quo promissa cadant et somnia. Naevius in manibus non est et mentibuad exemplar Siculi properare epicharmi. Adeo sanctum est vetus omni.</div>\r\n<p><img src="{CCM:FID_18}" alt="banner01.jpg" /></p>\r\n<p><a href="#">Find Out More</a></p>'),
(78, '<h2>JUNIPER 55</h2>\r\n<div class="banner-des">Ennius et sapines et fortis et alter Homerus, ut critici dicunt, leviter curare videtur, quo promissa cadant et somnia. Naevius in manibus non est et mentibus haeret paene recens. Adeo sanctum est vetus omne poema. ambigitur quotiens, uter utro sit prior, aufert Pacuvius docti famam senis Accius alti, dicitur Afrani toga convenisse Menandro, Plautus dicunt, leviter curare videtur, quo promissa cadant et somnia. Naevius in manibus non est et mentibuad exemplar Siculi properare epicharmi. Adeo sanctum est vetus omni.</div>\r\n<p><img src="{CCM:FID_19}" alt="banner02.jpg" /></p>\r\n<p><a href="#">Find Out More</a></p>'),
(79, '<h2>ROYAL WEDDINGS</h2>\r\n<div class="banner-des">Ennius et sapines et fortis et alter Homerus, ut critici dicunt, leviter curare videtur, quo promissa cadant et somnia. Naevius in manibus non est et mentibus haeret paene recens. Adeo sanctum est vetus omne poema. ambigitur quotiens, uter utro sit prior, aufert Pacuvius docti famam senis Accius alti, dicitur Afrani toga convenisse Menandro, Plautus dicunt, leviter curare videtur, quo promissa cadant et somnia. Naevius in manibus non est et mentibuad exemplar Siculi properare epicharmi. Adeo sanctum est vetus omni.</div>\r\n<p><img src="{CCM:FID_20}" alt="banner03.jpg" /></p>\r\n<p><a href="#">Find Out More</a></p>'),
(82, '<p>cxxcfxdcadc</p>'),
(83, '<p><span>Royal Hotel</span><br /> 55 Henderson St,<br /> Bridge of Allan, <br /> Stirlingshire FK9 4HG<br /> <br /> T: 01786 832 284<br /> E: <a href="mailto:info@royalhotel.co.uk">info@royalhotel.co.uk<br /> </a></p>'),
(85, '<p><img src="{CCM:FID_16}" alt="logo-footer.png" width="107" height="75" /><img src="{CCM:FID_17}" alt="footer-fadeline.png" width="994" height="2" /></p>'),
(86, '<p><iframe style="border: 0;" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2222.128011569134!2d-3.9484010839309622!3d56.1548912683754!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x48888817de862d1f%3A0xd0e5b2a7c42b7868!2sRoyal+Hotel!5e0!3m2!1sen!2sin!4v1454330817119" frameborder="0" width="100%" height="450"></iframe></p>\r\n<div class="map-des">Located in the heart of Scotland, our luxury hotel is ideally situated for retium <a href="#">Golf</a> arroget <a href="#">Rambling</a> scriptor abhinc annos centum qui decidit, inter perfectos veteresque referri debet an inter vilis atque novos. Excludat iurgia finis, est vetus atque probus, <a class="btn-map" href="#">See &amp; Do</a></div>'),
(87, '<h2>STAY &amp; PLAY</h2>\r\n<div class="banner-des">Ennius et sapines et fortis et alter Homerus, ut critici dicunt, leviter curare videtur, quo promissa cadant et somnia. Naevius in manibus non est et mentibus haeret paene recens. Adeo sanctum est vetus omne poema. ambigitur quotiens, uter utro sit prior, aufert Pacuvius docti famam senis Accius alti, dicitur Afrani toga convenisse Menandro, Plautus dicunt, leviter curare videtur, quo promissa cadant et somnia. Naevius in manibus non est et mentibuad exemplar Siculi properare epicharmi. Adeo sanctum est vetus omni.</div>\r\n<p><img src="/royalhotel/files/5014/5432/2495/banner01.jpg" alt="banner01.jpg" /></p>\r\n<p><a href="#">Find Out More</a></p>'),
(88, '<h2>JUNIPER 55</h2>\r\n<div class="banner-des">Ennius et sapines et fortis et alter Homerus, ut critici dicunt, leviter curare videtur, quo promissa cadant et somnia. Naevius in manibus non est et mentibus haeret paene recens. Adeo sanctum est vetus omne poema. ambigitur quotiens, uter utro sit prior, aufert Pacuvius docti famam senis Accius alti, dicitur Afrani toga convenisse Menandro, Plautus dicunt, leviter curare videtur, quo promissa cadant et somnia. Naevius in manibus non est et mentibuad exemplar Siculi properare epicharmi. Adeo sanctum est vetus omni.</div>\r\n<p><img src="/royalhotel/files/2314/5432/2497/banner02.jpg" alt="banner02.jpg" /></p>\r\n<p><a href="#">Find Out More</a></p>'),
(89, '<h2>ROYAL WEDDINGS</h2>\r\n<div class="banner-des">Ennius et sapines et fortis et alter Homerus, ut critici dicunt, leviter curare videtur, quo promissa cadant et somnia. Naevius in manibus non est et mentibus haeret paene recens. Adeo sanctum est vetus omne poema. ambigitur quotiens, uter utro sit prior, aufert Pacuvius docti famam senis Accius alti, dicitur Afrani toga convenisse Menandro, Plautus dicunt, leviter curare videtur, quo promissa cadant et somnia. Naevius in manibus non est et mentibuad exemplar Siculi properare epicharmi. Adeo sanctum est vetus omni.</div>\r\n<p><img src="/royalhotel/files/4414/5432/2498/banner03.jpg" alt="banner03.jpg" /></p>\r\n<p><a href="#">Find Out More</a></p>'),
(90, ''),
(91, '<h2>Location</h2>'),
(92, '<p><iframe style="border: 0;" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2222.128011569134!2d-3.9484010839309622!3d56.1548912683754!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x48888817de862d1f%3A0xd0e5b2a7c42b7868!2sRoyal+Hotel!5e0!3m2!1sen!2sin!4v1454330817119" frameborder="0" width="100%" height="450"></iframe></p>\r\n<div class="map-des">Located in the heart of Scotland, our luxury hotel is ideally situated for retium <a href="#">Golf</a> arroget <a href="#">Rambling</a> scriptor abhinc annos centum qui decidit, inter perfectos veteresque referri debet an inter vilis atque novos. Excludat iurgia finis, est vetus atque probus, <a class="btn-map" href="#">See &amp; Do</a></div>'),
(93, '<p><iframe style="border: 0;" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2222.128011569134!2d-3.9484010839309622!3d56.1548912683754!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x48888817de862d1f%3A0xd0e5b2a7c42b7868!2sRoyal+Hotel!5e0!3m2!1sen!2sin!4v1454330817119" frameborder="0" width="100%" height="450"></iframe></p>'),
(94, '<div class="map-des">Located in the heart of Scotland, our luxury hotel is ideally situated for retium <a href="#">Golf</a> arroget <a href="#">Rambling</a> scriptor abhinc annos centum qui decidit, inter perfectos veteresque referri debet an inter vilis atque novos. Excludat iurgia finis, est vetus atque probus, <a class="btn-map" href="#">See &amp; Do</a></div>'),
(95, '<p>Located in the heart of Scotland, our luxury hotel is ideally situated for retium <a href="#">Golf</a> arroget <a href="#">Rambling</a> scriptor abhinc annos centum qui decidit, inter perfectos veteresque referri debet an inter vilis atque novos. Excludat iurgia finis, est vetus atque probus, <a class="btn-map" href="#">See &amp; Do</a></p>'),
(96, '<h1>Large intro title to page</h1>\r\n<p>Paragraph style arroget annus scriptor abhinc annos centum qui decidit, inter perfectos veteresque referri debet an inter vilis atque novos. Excludat iurgia finis, est vetus atque probus, centum qui perficit annos. Quid, qui link style uno mense vel anno, inter quos referendus erit. Veteresne poetas, an quos et praesens et postera respuat aetas.</p>\r\n<p> Iste quidem veteres inter ponetur honeste, qui vel mense brevi vel toto est iunior anno. Utor permisso, caudaeque pilos ut equinae paulatim vello unum, demo etiam unum, dum cadat elusus ratione ruentis acervi, qui redit in fastos et virtutem aestimat annis.</p>\r\n<h2>Subheading style when applied it should come in with rules above and below</h2>\r\n<ul>\r\n<li>Ennius et sapines et fortis et alter Homerus, ut critici dicunt, leviter curare videtur, quo promissa cadant et somnia.</li>\r\n<li>Naevius in manibus non est et mentibus haeret paene recens. Adeo sanctum est vetus omne poema.</li>\r\n<li>Ambigitur quotiens, uter utro sit prior, aufert Pacuvius docti famam senis Accius alti, dicitur Afrani toga.</li>\r\n<li>Menandro lautus ad exemplar Siculi properare Epicharmi, vincere Caecilius gravitate, Terentius arte.</li>\r\n</ul>\r\n<p>Hos ediscit et hos arto stipata theatro spectat Roma potens; habet hos numeratque poetas ad nostrum tempus Livi scriptoris ab aevo. Interdum volgus rectum videt, est ubi peccat. Si veteres ita miratur laudatque poetas, ut nihil anteferat, nihil illis comparet, errat. Si quaedam nimis antique, si peraque dure dicere credit eos, ignave multa fatetur, et sapit et mecum facit et Iova iudicat aequo.</p>\r\n<p>Non equidem insector delendave carmina Livi esse reor, memini quae plagosum mihi parvo Orbilium dictare; sed emendata videri pulchraque et exactis minimum distantia miror. Inter quae verbum emicuit si forte decorum, et si versus paulo concinnior unus.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `btCoreScrapbookDisplay`
--

DROP TABLE IF EXISTS `btCoreScrapbookDisplay`;
CREATE TABLE IF NOT EXISTS `btCoreScrapbookDisplay` (
  `bID` int(10) unsigned NOT NULL,
  `bOriginalID` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `btCoreStackDisplay`
--

DROP TABLE IF EXISTS `btCoreStackDisplay`;
CREATE TABLE IF NOT EXISTS `btCoreStackDisplay` (
  `bID` int(10) unsigned NOT NULL,
  `stID` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `btCoreStackDisplay`
--

INSERT INTO `btCoreStackDisplay` (`bID`, `stID`) VALUES
(28, 122),
(30, 122),
(32, 122);

-- --------------------------------------------------------

--
-- Table structure for table `btDashboardNewsflowLatest`
--

DROP TABLE IF EXISTS `btDashboardNewsflowLatest`;
CREATE TABLE IF NOT EXISTS `btDashboardNewsflowLatest` (
  `bID` int(10) unsigned NOT NULL,
  `slot` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `btDashboardNewsflowLatest`
--

INSERT INTO `btDashboardNewsflowLatest` (`bID`, `slot`) VALUES
(8, 'A'),
(9, 'B'),
(12, 'C');

-- --------------------------------------------------------

--
-- Table structure for table `btDateArchive`
--

DROP TABLE IF EXISTS `btDateArchive`;
CREATE TABLE IF NOT EXISTS `btDateArchive` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `targetCID` int(11) DEFAULT NULL,
  `numMonths` int(11) DEFAULT '12'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `btDateArchive`
--

INSERT INTO `btDateArchive` (`bID`, `title`, `targetCID`, `numMonths`) VALUES
(41, 'Archives', 134, 12),
(47, 'Archives', 134, 12);

-- --------------------------------------------------------

--
-- Table structure for table `btDateNav`
--

DROP TABLE IF EXISTS `btDateNav`;
CREATE TABLE IF NOT EXISTS `btDateNav` (
  `bID` int(10) unsigned NOT NULL,
  `num` smallint(5) unsigned NOT NULL,
  `cParentID` int(10) unsigned NOT NULL DEFAULT '1',
  `cThis` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ctID` smallint(5) unsigned DEFAULT NULL,
  `flatDisplay` int(11) DEFAULT '0',
  `defaultNode` varchar(64) DEFAULT 'current_page',
  `truncateTitles` int(11) DEFAULT '0',
  `truncateSummaries` int(11) DEFAULT '0',
  `displayFeaturedOnly` int(11) DEFAULT '0',
  `truncateChars` int(11) DEFAULT '128',
  `truncateTitleChars` int(11) DEFAULT '128',
  `showDescriptions` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `btExternalForm`
--

DROP TABLE IF EXISTS `btExternalForm`;
CREATE TABLE IF NOT EXISTS `btExternalForm` (
  `bID` int(10) unsigned NOT NULL,
  `filename` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `btFlashContent`
--

DROP TABLE IF EXISTS `btFlashContent`;
CREATE TABLE IF NOT EXISTS `btFlashContent` (
  `bID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned DEFAULT NULL,
  `quality` varchar(255) DEFAULT NULL,
  `minVersion` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `btForm`
--

DROP TABLE IF EXISTS `btForm`;
CREATE TABLE IF NOT EXISTS `btForm` (
  `bID` int(10) unsigned NOT NULL,
  `questionSetId` int(10) unsigned DEFAULT '0',
  `surveyName` varchar(255) DEFAULT NULL,
  `thankyouMsg` text,
  `notifyMeOnSubmission` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `recipientEmail` varchar(255) DEFAULT NULL,
  `displayCaptcha` int(11) DEFAULT '1',
  `redirectCID` int(11) DEFAULT '0',
  `addFilesToSet` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `btForm`
--

INSERT INTO `btForm` (`bID`, `questionSetId`, `surveyName`, `thankyouMsg`, `notifyMeOnSubmission`, `recipientEmail`, `displayCaptcha`, `redirectCID`, `addFilesToSet`) VALUES
(34, 1454060152, 'Contact Us', 'Thanks!', 0, '', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `btFormAnswers`
--

DROP TABLE IF EXISTS `btFormAnswers`;
CREATE TABLE IF NOT EXISTS `btFormAnswers` (
`aID` int(10) unsigned NOT NULL,
  `asID` int(10) unsigned DEFAULT '0',
  `msqID` int(10) unsigned DEFAULT '0',
  `answer` varchar(255) DEFAULT NULL,
  `answerLong` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `btFormAnswerSet`
--

DROP TABLE IF EXISTS `btFormAnswerSet`;
CREATE TABLE IF NOT EXISTS `btFormAnswerSet` (
`asID` int(10) unsigned NOT NULL,
  `questionSetId` int(10) unsigned DEFAULT '0',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `uID` int(10) unsigned DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `btFormQuestions`
--

DROP TABLE IF EXISTS `btFormQuestions`;
CREATE TABLE IF NOT EXISTS `btFormQuestions` (
`qID` int(10) unsigned NOT NULL,
  `msqID` int(10) unsigned DEFAULT '0',
  `bID` int(10) unsigned DEFAULT '0',
  `questionSetId` int(10) unsigned DEFAULT '0',
  `question` varchar(255) DEFAULT NULL,
  `inputType` varchar(255) DEFAULT NULL,
  `options` text,
  `position` int(10) unsigned DEFAULT '1000',
  `width` int(10) unsigned DEFAULT '50',
  `height` int(10) unsigned DEFAULT '3',
  `required` int(11) DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `btFormQuestions`
--

INSERT INTO `btFormQuestions` (`qID`, `msqID`, `bID`, `questionSetId`, `question`, `inputType`, `options`, `position`, `width`, `height`, `required`) VALUES
(1, 4, 34, 1454060152, 'Name', 'field', '', 0, 50, 3, 1),
(2, 5, 34, 1454060152, 'Email:', 'email', '', 0, 50, 3, 1),
(3, 6, 34, 1454060152, 'What are you contacting us about?', 'radios', 'Question%%Comment%%Urgent Issue%%To Say Hello%%Other', 0, 50, 3, 1),
(4, 7, 34, 1454060152, 'Message', 'text', '', 0, 50, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `btGoogleMap`
--

DROP TABLE IF EXISTS `btGoogleMap`;
CREATE TABLE IF NOT EXISTS `btGoogleMap` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `zoom` int(8) DEFAULT NULL,
  `balloonShow` tinyint(4) DEFAULT NULL,
  `balloonContent` longtext,
  `balloonWithLinkToMaps` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `btGuestBook`
--

DROP TABLE IF EXISTS `btGuestBook`;
CREATE TABLE IF NOT EXISTS `btGuestBook` (
  `bID` int(10) unsigned NOT NULL,
  `requireApproval` int(11) DEFAULT '0',
  `title` varchar(100) DEFAULT 'Comments',
  `dateFormat` varchar(100) DEFAULT NULL,
  `displayGuestBookForm` int(11) DEFAULT '1',
  `displayCaptcha` int(11) DEFAULT '1',
  `authenticationRequired` int(11) DEFAULT '0',
  `notifyEmail` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `btGuestBook`
--

INSERT INTO `btGuestBook` (`bID`, `requireApproval`, `title`, `dateFormat`, `displayGuestBookForm`, `displayCaptcha`, `authenticationRequired`, `notifyEmail`) VALUES
(31, 0, 'Tell us what you think', 'M jS, Y', 1, 1, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `btGuestBookEntries`
--

DROP TABLE IF EXISTS `btGuestBookEntries`;
CREATE TABLE IF NOT EXISTS `btGuestBookEntries` (
  `bID` int(11) DEFAULT NULL,
  `cID` int(11) DEFAULT '1',
`entryID` int(11) NOT NULL,
  `uID` int(11) DEFAULT '0',
  `commentText` longtext,
  `user_name` varchar(100) DEFAULT NULL,
  `user_email` varchar(100) DEFAULT NULL,
  `entryDate` datetime DEFAULT '0000-00-00 00:00:00',
  `approved` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `btNavigation`
--

DROP TABLE IF EXISTS `btNavigation`;
CREATE TABLE IF NOT EXISTS `btNavigation` (
  `bID` int(10) unsigned NOT NULL,
  `orderBy` varchar(255) DEFAULT 'alpha_asc',
  `displayPages` varchar(255) DEFAULT 'top',
  `displayPagesCID` int(10) unsigned NOT NULL DEFAULT '1',
  `displayPagesIncludeSelf` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `displaySubPages` varchar(255) DEFAULT 'none',
  `displaySubPageLevels` varchar(255) DEFAULT 'none',
  `displaySubPageLevelsNum` smallint(5) unsigned NOT NULL DEFAULT '0',
  `displayUnavailablePages` tinyint(3) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `btNavigation`
--

INSERT INTO `btNavigation` (`bID`, `orderBy`, `displayPages`, `displayPagesCID`, `displayPagesIncludeSelf`, `displaySubPages`, `displaySubPageLevels`, `displaySubPageLevelsNum`, `displayUnavailablePages`) VALUES
(20, 'display_asc', 'top', 0, 0, 'none', 'enough', 0, 0),
(22, 'display_asc', 'second_level', 0, 0, 'all', 'all', 0, 0),
(36, 'display_asc', 'top', 0, 0, 'all', 'all', 0, 0),
(80, 'display_asc', 'top', 0, 0, 'all', 'enough', 0, 0),
(84, 'display_asc', 'top', 0, 0, 'none', 'all', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `btNextPrevious`
--

DROP TABLE IF EXISTS `btNextPrevious`;
CREATE TABLE IF NOT EXISTS `btNextPrevious` (
  `bID` int(10) unsigned NOT NULL,
  `linkStyle` varchar(32) DEFAULT NULL,
  `nextLabel` varchar(128) DEFAULT NULL,
  `previousLabel` varchar(128) DEFAULT NULL,
  `parentLabel` varchar(128) DEFAULT NULL,
  `showArrows` int(11) DEFAULT '1',
  `loopSequence` int(11) DEFAULT '1',
  `excludeSystemPages` int(11) DEFAULT '1',
  `orderBy` varchar(20) DEFAULT 'display_asc'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `btPageList`
--

DROP TABLE IF EXISTS `btPageList`;
CREATE TABLE IF NOT EXISTS `btPageList` (
  `bID` int(10) unsigned NOT NULL,
  `num` smallint(5) unsigned NOT NULL,
  `orderBy` varchar(32) DEFAULT NULL,
  `cParentID` int(10) unsigned NOT NULL DEFAULT '1',
  `cThis` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `includeAllDescendents` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `paginate` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `displayAliases` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `ctID` smallint(5) unsigned DEFAULT NULL,
  `rss` int(11) DEFAULT '0',
  `rssTitle` varchar(255) DEFAULT NULL,
  `rssDescription` longtext,
  `truncateSummaries` int(11) DEFAULT '0',
  `displayFeaturedOnly` int(11) DEFAULT '0',
  `truncateChars` int(11) DEFAULT '128'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `btPageList`
--

INSERT INTO `btPageList` (`bID`, `num`, `orderBy`, `cParentID`, `cThis`, `includeAllDescendents`, `paginate`, `displayAliases`, `ctID`, `rss`, `rssTitle`, `rssDescription`, `truncateSummaries`, `displayFeaturedOnly`, `truncateChars`) VALUES
(38, 12, 'chrono_desc', 130, 0, 0, 1, 0, 4, 0, '', '', 1, 0, 128);

-- --------------------------------------------------------

--
-- Table structure for table `btResponsiveSlider`
--

DROP TABLE IF EXISTS `btResponsiveSlider`;
CREATE TABLE IF NOT EXISTS `btResponsiveSlider` (
  `bID` int(10) unsigned NOT NULL,
  `fsID` int(10) unsigned DEFAULT NULL,
  `playback` varchar(50) DEFAULT NULL,
  `duration` int(10) unsigned DEFAULT NULL,
  `fadeDuration` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `btResponsiveSlider`
--

INSERT INTO `btResponsiveSlider` (`bID`, `fsID`, `playback`, `duration`, `fadeDuration`) VALUES
(50, 0, 'ORDER', NULL, NULL),
(51, 0, 'ORDER', NULL, NULL),
(52, 0, 'ORDER', NULL, NULL),
(53, 0, 'ORDER', NULL, NULL),
(58, 0, 'ORDER', NULL, NULL),
(81, 0, 'ORDER', NULL, NULL),
(97, 0, 'ORDER', NULL, NULL),
(98, 0, 'ORDER', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `btResponsiveSliderImg`
--

DROP TABLE IF EXISTS `btResponsiveSliderImg`;
CREATE TABLE IF NOT EXISTS `btResponsiveSliderImg` (
`responsivesliderImgId` int(10) unsigned NOT NULL,
  `bID` int(10) unsigned DEFAULT NULL,
  `fID` int(10) unsigned DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(1500) DEFAULT NULL,
  `position` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=30 ;

--
-- Dumping data for table `btResponsiveSliderImg`
--

INSERT INTO `btResponsiveSliderImg` (`responsivesliderImgId`, `bID`, `fID`, `url`, `title`, `description`, `position`) VALUES
(5, 50, 3, '', '', '', 0),
(6, 50, 2, '', '', '', 1),
(7, 51, 7, '', '', '', 0),
(8, 51, 4, '', '', '', 1),
(11, 52, 7, '', '', '', 0),
(12, 52, 4, '', '', '', 1),
(15, 53, 11, 'Found Out More', 'ROYAL LUXURY', 'Every visit is a unique experience', 0),
(16, 53, 9, 'Found Out More', 'ROYAL LUXURY', 'Every visit is a unique experience', 1),
(17, 53, 10, 'Found Out More', 'ROYAL LUXURY', 'Every visit is a unique experience', 2),
(21, 58, 11, '#', 'ROYAL LUXURY', 'Every visit is a unique experience', 0),
(22, 58, 9, '#', 'ROYAL LUXURY', 'Every visit is a unique experience', 1),
(23, 58, 10, '#', 'ROYAL LUXURY', 'Every visit is a unique experience', 2),
(24, 81, 11, '', 'STYLE OVER IMAGE', 'Small subheading font style over image', 0),
(25, 81, 9, '', 'STYLE OVER IMAGE', 'Small subheading font style over image', 1),
(26, 97, 11, '', 'STYLE OVER IMAGE', 'Small subheading font style over image', 0),
(27, 97, 9, '', 'STYLE OVER IMAGE', 'Small subheading font style over image', 1),
(28, 98, 11, '', 'STYLE OVER IMAGE', 'Small subheading font style over image', 0),
(29, 98, 9, '', 'STYLE OVER IMAGE', 'Small subheading font style over image', 1);

-- --------------------------------------------------------

--
-- Table structure for table `btRssDisplay`
--

DROP TABLE IF EXISTS `btRssDisplay`;
CREATE TABLE IF NOT EXISTS `btRssDisplay` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `dateFormat` varchar(100) DEFAULT NULL,
  `itemsToDisplay` int(10) unsigned DEFAULT '5',
  `showSummary` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `launchInNewWindow` tinyint(3) unsigned NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `btSearch`
--

DROP TABLE IF EXISTS `btSearch`;
CREATE TABLE IF NOT EXISTS `btSearch` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `buttonText` varchar(128) DEFAULT NULL,
  `baseSearchPath` varchar(255) DEFAULT NULL,
  `postTo_cID` varchar(255) DEFAULT NULL,
  `resultsURL` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `btSearch`
--

INSERT INTO `btSearch` (`bID`, `title`, `buttonText`, `baseSearchPath`, `postTo_cID`, `resultsURL`) VALUES
(37, 'Search This Site', 'Search', '', '', ''),
(45, 'Search Blog', 'Search', '/blog', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `btSlideshow`
--

DROP TABLE IF EXISTS `btSlideshow`;
CREATE TABLE IF NOT EXISTS `btSlideshow` (
  `bID` int(10) unsigned NOT NULL,
  `fsID` int(10) unsigned DEFAULT NULL,
  `playback` varchar(50) DEFAULT NULL,
  `duration` int(10) unsigned DEFAULT NULL,
  `fadeDuration` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `btSlideshowImg`
--

DROP TABLE IF EXISTS `btSlideshowImg`;
CREATE TABLE IF NOT EXISTS `btSlideshowImg` (
`slideshowImgId` int(10) unsigned NOT NULL,
  `bID` int(10) unsigned DEFAULT NULL,
  `fID` int(10) unsigned DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `duration` int(10) unsigned DEFAULT NULL,
  `fadeDuration` int(10) unsigned DEFAULT NULL,
  `groupSet` int(10) unsigned DEFAULT NULL,
  `position` int(10) unsigned DEFAULT NULL,
  `imgHeight` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `btSurvey`
--

DROP TABLE IF EXISTS `btSurvey`;
CREATE TABLE IF NOT EXISTS `btSurvey` (
  `bID` int(10) unsigned NOT NULL,
  `question` varchar(255) DEFAULT '',
  `requiresRegistration` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `btSurveyOptions`
--

DROP TABLE IF EXISTS `btSurveyOptions`;
CREATE TABLE IF NOT EXISTS `btSurveyOptions` (
`optionID` int(10) unsigned NOT NULL,
  `bID` int(11) DEFAULT NULL,
  `optionName` varchar(255) DEFAULT NULL,
  `displayOrder` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `btSurveyResults`
--

DROP TABLE IF EXISTS `btSurveyResults`;
CREATE TABLE IF NOT EXISTS `btSurveyResults` (
`resultID` int(10) unsigned NOT NULL,
  `optionID` int(10) unsigned DEFAULT '0',
  `uID` int(10) unsigned DEFAULT '0',
  `bID` int(11) DEFAULT NULL,
  `cID` int(11) DEFAULT NULL,
  `ipAddress` varchar(128) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `btTags`
--

DROP TABLE IF EXISTS `btTags`;
CREATE TABLE IF NOT EXISTS `btTags` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `targetCID` int(11) DEFAULT NULL,
  `displayMode` varchar(20) DEFAULT 'page',
  `cloudCount` int(11) DEFAULT '10'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `btTags`
--

INSERT INTO `btTags` (`bID`, `title`, `targetCID`, `displayMode`, `cloudCount`) VALUES
(14, 'Tags', 134, 'page', 0),
(40, '', 134, 'cloud', 0),
(46, 'Tags', 134, 'cloud', 0);

-- --------------------------------------------------------

--
-- Table structure for table `btVideo`
--

DROP TABLE IF EXISTS `btVideo`;
CREATE TABLE IF NOT EXISTS `btVideo` (
  `bID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned DEFAULT NULL,
  `width` int(10) unsigned DEFAULT NULL,
  `height` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `btYouTube`
--

DROP TABLE IF EXISTS `btYouTube`;
CREATE TABLE IF NOT EXISTS `btYouTube` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `videoURL` varchar(255) DEFAULT NULL,
  `vHeight` varchar(255) DEFAULT NULL,
  `vWidth` varchar(255) DEFAULT NULL,
  `vPlayer` tinyint(3) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `CollectionAttributeValues`
--

DROP TABLE IF EXISTS `CollectionAttributeValues`;
CREATE TABLE IF NOT EXISTS `CollectionAttributeValues` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `avID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `CollectionAttributeValues`
--

INSERT INTO `CollectionAttributeValues` (`cID`, `cvID`, `akID`, `avID`) VALUES
(3, 1, 3, 1),
(3, 1, 4, 2),
(4, 1, 3, 3),
(4, 1, 4, 4),
(5, 1, 3, 5),
(5, 1, 4, 6),
(6, 1, 3, 7),
(7, 1, 3, 8),
(7, 1, 4, 9),
(8, 1, 3, 10),
(8, 1, 4, 11),
(9, 1, 3, 12),
(9, 1, 4, 13),
(11, 1, 3, 14),
(11, 1, 4, 15),
(12, 1, 3, 16),
(12, 1, 4, 17),
(13, 1, 3, 18),
(13, 1, 4, 19),
(14, 1, 3, 21),
(14, 1, 4, 22),
(14, 1, 5, 20),
(15, 1, 3, 23),
(16, 1, 3, 24),
(16, 1, 4, 25),
(17, 1, 3, 26),
(17, 1, 4, 27),
(18, 1, 3, 28),
(18, 1, 4, 29),
(19, 1, 3, 30),
(19, 1, 4, 32),
(19, 1, 5, 31),
(20, 1, 3, 33),
(20, 1, 4, 35),
(20, 1, 5, 34),
(21, 1, 3, 36),
(21, 1, 4, 37),
(22, 1, 3, 38),
(23, 1, 3, 39),
(23, 1, 4, 40),
(24, 1, 3, 41),
(24, 1, 4, 42),
(25, 1, 3, 43),
(25, 1, 4, 44),
(26, 1, 3, 45),
(26, 1, 4, 46),
(28, 1, 3, 47),
(28, 1, 4, 48),
(29, 1, 3, 49),
(30, 1, 3, 50),
(31, 1, 3, 51),
(32, 1, 3, 52),
(32, 1, 4, 53),
(34, 1, 3, 54),
(34, 1, 4, 55),
(35, 1, 3, 56),
(35, 1, 4, 57),
(36, 1, 3, 58),
(37, 1, 4, 59),
(38, 1, 4, 60),
(40, 1, 3, 61),
(40, 1, 4, 62),
(41, 1, 4, 63),
(42, 1, 5, 64),
(42, 1, 8, 65),
(43, 1, 3, 66),
(43, 1, 4, 67),
(44, 1, 5, 68),
(45, 1, 5, 69),
(46, 1, 3, 70),
(47, 1, 3, 71),
(48, 1, 3, 72),
(49, 1, 3, 73),
(50, 1, 3, 74),
(51, 1, 5, 75),
(53, 1, 3, 76),
(54, 1, 3, 77),
(55, 1, 3, 78),
(56, 1, 3, 79),
(57, 1, 3, 80),
(58, 1, 3, 81),
(60, 1, 3, 82),
(61, 1, 3, 83),
(62, 1, 3, 84),
(63, 1, 3, 85),
(64, 1, 3, 86),
(65, 1, 3, 87),
(67, 1, 3, 88),
(68, 1, 3, 89),
(69, 1, 3, 90),
(71, 1, 3, 91),
(72, 1, 3, 92),
(73, 1, 3, 93),
(74, 1, 3, 94),
(77, 1, 3, 95),
(78, 1, 3, 96),
(79, 1, 3, 97),
(80, 1, 3, 98),
(82, 1, 3, 99),
(83, 1, 3, 100),
(84, 1, 3, 101),
(85, 1, 3, 102),
(86, 1, 3, 103),
(87, 1, 3, 104),
(88, 1, 3, 105),
(89, 1, 3, 106),
(90, 1, 3, 107),
(91, 1, 3, 108),
(92, 1, 8, 109),
(93, 1, 3, 110),
(94, 1, 3, 111),
(95, 1, 3, 112),
(96, 1, 3, 113),
(97, 1, 3, 114),
(98, 1, 3, 115),
(100, 1, 3, 116),
(101, 1, 3, 117),
(106, 1, 5, 118),
(107, 1, 5, 119),
(107, 1, 8, 120),
(130, 1, 15, 137),
(130, 2, 15, 137),
(133, 1, 15, 138),
(134, 1, 5, 139),
(134, 1, 6, 140),
(134, 1, 8, 141),
(134, 1, 15, 142);

-- --------------------------------------------------------

--
-- Table structure for table `Collections`
--

DROP TABLE IF EXISTS `Collections`;
CREATE TABLE IF NOT EXISTS `Collections` (
`cID` int(10) unsigned NOT NULL,
  `cDateAdded` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cDateModified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cHandle` varchar(255) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=146 ;

--
-- Dumping data for table `Collections`
--

INSERT INTO `Collections` (`cID`, `cDateAdded`, `cDateModified`, `cHandle`) VALUES
(1, '2016-01-29 15:03:08', '2016-02-01 16:40:09', 'home'),
(2, '2016-01-29 15:03:24', '2016-01-29 15:03:28', 'dashboard'),
(3, '2016-01-29 15:03:28', '2016-01-29 15:03:28', 'composer'),
(4, '2016-01-29 15:03:29', '2016-01-29 15:03:29', 'write'),
(5, '2016-01-29 15:03:29', '2016-01-29 15:03:30', 'drafts'),
(6, '2016-01-29 15:03:30', '2016-01-29 15:03:30', 'sitemap'),
(7, '2016-01-29 15:03:30', '2016-01-29 15:03:31', 'full'),
(8, '2016-01-29 15:03:31', '2016-01-29 15:03:31', 'explore'),
(9, '2016-01-29 15:03:31', '2016-01-29 15:03:32', 'search'),
(10, '2016-01-29 15:03:32', '2016-01-29 15:03:32', 'files'),
(11, '2016-01-29 15:03:32', '2016-01-29 15:03:33', 'search'),
(12, '2016-01-29 15:03:34', '2016-01-29 15:03:34', 'attributes'),
(13, '2016-01-29 15:03:34', '2016-01-29 15:03:35', 'sets'),
(14, '2016-01-29 15:03:35', '2016-01-29 15:03:35', 'add_set'),
(15, '2016-01-29 15:03:35', '2016-01-29 15:03:36', 'users'),
(16, '2016-01-29 15:03:36', '2016-01-29 15:03:36', 'search'),
(17, '2016-01-29 15:03:36', '2016-01-29 15:03:37', 'groups'),
(18, '2016-01-29 15:03:37', '2016-01-29 15:03:37', 'attributes'),
(19, '2016-01-29 15:03:37', '2016-01-29 15:03:38', 'add'),
(20, '2016-01-29 15:03:38', '2016-01-29 15:03:39', 'add_group'),
(21, '2016-01-29 15:03:39', '2016-01-29 15:03:39', 'group_sets'),
(22, '2016-01-29 15:03:40', '2016-01-29 15:03:40', 'reports'),
(23, '2016-01-29 15:03:40', '2016-01-29 15:03:41', 'statistics'),
(24, '2016-01-29 15:03:41', '2016-01-29 15:03:41', 'forms'),
(25, '2016-01-29 15:03:42', '2016-01-29 15:03:42', 'surveys'),
(26, '2016-01-29 15:03:42', '2016-01-29 15:03:43', 'logs'),
(27, '2016-01-29 15:03:43', '2016-01-29 15:03:43', 'pages'),
(28, '2016-01-29 15:03:44', '2016-01-29 15:03:45', 'themes'),
(29, '2016-01-29 15:03:45', '2016-01-29 15:03:45', 'add'),
(30, '2016-01-29 15:03:45', '2016-01-29 15:03:45', 'inspect'),
(31, '2016-01-29 15:03:46', '2016-01-29 15:03:46', 'customize'),
(32, '2016-01-29 15:03:46', '2016-01-29 15:03:47', 'types'),
(33, '2016-01-29 15:03:47', '2016-01-29 15:03:47', 'add'),
(34, '2016-01-29 15:03:47', '2016-01-29 15:03:48', 'attributes'),
(35, '2016-01-29 15:03:48', '2016-01-29 15:03:48', 'single'),
(36, '2016-01-29 15:03:48', '2016-01-29 15:03:49', 'workflow'),
(37, '2016-01-29 15:03:49', '2016-01-29 15:03:50', 'list'),
(38, '2016-01-29 15:03:50', '2016-01-29 15:03:50', 'me'),
(39, '2016-01-29 15:03:50', '2016-01-29 15:03:51', 'blocks'),
(40, '2016-01-29 15:03:51', '2016-01-29 15:03:52', 'stacks'),
(41, '2016-01-29 15:03:52', '2016-01-29 15:03:52', 'permissions'),
(42, '2016-01-29 15:03:52', '2016-01-29 15:03:54', 'list'),
(43, '2016-01-29 15:03:54', '2016-01-29 15:03:55', 'types'),
(44, '2016-01-29 15:03:55', '2016-01-29 15:03:56', 'extend'),
(45, '2016-01-29 15:03:56', '2016-01-29 15:03:57', 'news'),
(46, '2016-01-29 15:03:57', '2016-01-29 15:03:58', 'install'),
(47, '2016-01-29 15:03:58', '2016-01-29 15:03:58', 'update'),
(48, '2016-01-29 15:03:58', '2016-01-29 15:03:59', 'connect'),
(49, '2016-01-29 15:03:59', '2016-01-29 15:03:59', 'themes'),
(50, '2016-01-29 15:04:00', '2016-01-29 15:04:00', 'add-ons'),
(51, '2016-01-29 15:04:00', '2016-01-29 15:04:01', 'system'),
(52, '2016-01-29 15:04:01', '2016-01-29 15:04:01', 'basics'),
(53, '2016-01-29 15:04:02', '2016-01-29 15:04:02', 'site_name'),
(54, '2016-01-29 15:04:02', '2016-01-29 15:04:02', 'icons'),
(55, '2016-01-29 15:04:03', '2016-01-29 15:04:03', 'editor'),
(56, '2016-01-29 15:04:03', '2016-01-29 15:04:04', 'multilingual'),
(57, '2016-01-29 15:04:04', '2016-01-29 15:04:04', 'timezone'),
(58, '2016-01-29 15:04:04', '2016-01-29 15:04:05', 'interface'),
(59, '2016-01-29 15:04:05', '2016-01-29 15:04:06', 'seo'),
(60, '2016-01-29 15:04:06', '2016-01-29 15:04:07', 'urls'),
(61, '2016-01-29 15:04:07', '2016-01-29 15:04:07', 'bulk_seo_tool'),
(62, '2016-01-29 15:04:07', '2016-01-29 15:04:08', 'tracking_codes'),
(63, '2016-01-29 15:04:08', '2016-01-29 15:04:08', 'excluded'),
(64, '2016-01-29 15:04:09', '2016-01-29 15:04:09', 'statistics'),
(65, '2016-01-29 15:04:09', '2016-01-29 15:04:10', 'search_index'),
(66, '2016-01-29 15:04:10', '2016-01-29 15:04:10', 'optimization'),
(67, '2016-01-29 15:04:11', '2016-01-29 15:04:11', 'cache'),
(68, '2016-01-29 15:04:11', '2016-01-29 15:04:12', 'clear_cache'),
(69, '2016-01-29 15:04:12', '2016-01-29 15:04:12', 'jobs'),
(70, '2016-01-29 15:04:12', '2016-01-29 15:04:13', 'permissions'),
(71, '2016-01-29 15:04:13', '2016-01-29 15:04:13', 'site'),
(72, '2016-01-29 15:04:13', '2016-01-29 15:04:14', 'files'),
(73, '2016-01-29 15:04:14', '2016-01-29 15:04:14', 'file_types'),
(74, '2016-01-29 15:04:14', '2016-01-29 15:04:15', 'tasks'),
(75, '2016-01-29 15:04:15', '2016-01-29 15:04:16', 'users'),
(76, '2016-01-29 15:04:16', '2016-01-29 15:04:16', 'advanced'),
(77, '2016-01-29 15:04:17', '2016-01-29 15:04:18', 'ip_blacklist'),
(78, '2016-01-29 15:04:18', '2016-01-29 15:04:19', 'captcha'),
(79, '2016-01-29 15:04:19', '2016-01-29 15:04:20', 'antispam'),
(80, '2016-01-29 15:04:20', '2016-01-29 15:04:21', 'maintenance_mode'),
(81, '2016-01-29 15:04:21', '2016-01-29 15:04:21', 'registration'),
(82, '2016-01-29 15:04:22', '2016-01-29 15:04:22', 'postlogin'),
(83, '2016-01-29 15:04:22', '2016-01-29 15:04:22', 'profiles'),
(84, '2016-01-29 15:04:23', '2016-01-29 15:04:23', 'public_registration'),
(85, '2016-01-29 15:04:23', '2016-01-29 15:04:24', 'mail'),
(86, '2016-01-29 15:04:24', '2016-01-29 15:04:24', 'method'),
(87, '2016-01-29 15:04:24', '2016-01-29 15:04:25', 'test_settings'),
(88, '2016-01-29 15:04:25', '2016-01-29 15:04:25', 'importers'),
(89, '2016-01-29 15:04:25', '2016-01-29 15:04:26', 'attributes'),
(90, '2016-01-29 15:04:26', '2016-01-29 15:04:26', 'sets'),
(91, '2016-01-29 15:04:27', '2016-01-29 15:04:27', 'types'),
(92, '2016-01-29 15:04:27', '2016-01-29 15:04:28', 'environment'),
(93, '2016-01-29 15:04:28', '2016-01-29 15:04:29', 'info'),
(94, '2016-01-29 15:04:29', '2016-01-29 15:04:29', 'debug'),
(95, '2016-01-29 15:04:29', '2016-01-29 15:04:30', 'logging'),
(96, '2016-01-29 15:04:30', '2016-01-29 15:04:30', 'file_storage_locations'),
(97, '2016-01-29 15:04:31', '2016-01-29 15:04:31', 'proxy'),
(98, '2016-01-29 15:04:31', '2016-01-29 15:04:32', 'backup_restore'),
(99, '2016-01-29 15:04:32', '2016-01-29 15:04:32', 'backup'),
(100, '2016-01-29 15:04:33', '2016-01-29 15:04:33', 'update'),
(101, '2016-01-29 15:04:33', '2016-01-29 15:04:34', 'database'),
(102, '2016-01-29 15:04:34', '2016-01-29 15:04:34', 'composer'),
(103, '2016-01-29 15:04:34', '2016-01-29 15:04:34', NULL),
(104, '2016-01-29 15:04:35', '2016-01-29 15:04:35', NULL),
(105, '2016-01-29 15:04:35', '2016-01-29 15:04:35', NULL),
(106, '2016-01-29 15:04:35', '2016-01-29 15:04:35', 'welcome'),
(107, '2016-01-29 15:04:36', '2016-01-29 15:04:36', 'home'),
(108, '2016-01-29 15:05:13', '2016-01-29 15:05:14', '!drafts'),
(109, '2016-01-29 15:05:14', '2016-01-29 15:05:14', '!trash'),
(110, '2016-01-29 15:05:14', '2016-01-29 15:05:15', '!stacks'),
(111, '2016-01-29 15:05:15', '2016-01-29 15:05:16', 'login'),
(112, '2016-01-29 15:05:16', '2016-01-29 15:05:17', 'register'),
(113, '2016-01-29 15:05:17', '2016-01-29 15:05:18', 'profile'),
(114, '2016-01-29 15:05:18', '2016-01-29 15:05:18', 'edit'),
(115, '2016-01-29 15:05:18', '2016-01-29 15:05:19', 'avatar'),
(116, '2016-01-29 15:05:19', '2016-01-29 15:05:19', 'messages'),
(117, '2016-01-29 15:05:19', '2016-01-29 15:05:20', 'friends'),
(118, '2016-01-29 15:05:20', '2016-01-29 15:05:20', 'page_not_found'),
(119, '2016-01-29 15:05:20', '2016-01-29 15:05:21', 'page_forbidden'),
(120, '2016-01-29 15:05:21', '2016-01-29 15:05:21', 'download_file'),
(121, '2016-01-29 15:05:33', '2016-01-29 15:05:33', 'header-nav'),
(122, '2016-01-29 15:05:33', '2016-01-29 15:05:33', 'side-nav'),
(123, '2016-01-29 15:05:34', '2016-01-29 15:05:34', 'site-name'),
(124, '2016-01-29 15:05:36', '2016-01-29 15:05:36', NULL),
(125, '2016-01-29 15:05:36', '2016-01-29 15:05:36', NULL),
(126, '2016-01-29 15:05:36', '2016-01-29 15:05:36', NULL),
(127, '2016-01-29 15:05:37', '2016-01-29 15:05:37', NULL),
(128, '2016-01-29 15:05:37', '2016-02-01 18:36:40', 'about'),
(129, '2016-01-29 15:05:37', '2016-02-01 18:49:45', 'search'),
(130, '2016-01-29 15:05:38', '2016-02-01 18:50:49', 'blog'),
(131, '2016-01-29 15:05:38', '2016-01-29 15:05:38', 'guestbook'),
(132, '2016-01-29 15:05:39', '2016-01-29 15:05:39', 'contact-us'),
(133, '2016-01-29 15:05:39', '2016-01-29 15:05:39', 'hello-world'),
(134, '2016-01-29 15:05:39', '2016-01-29 15:05:40', 'blog-archives'),
(135, '2016-01-29 16:51:45', '2016-01-29 16:57:58', 'site-logo'),
(136, '2016-01-29 16:51:45', '2016-01-29 18:02:25', 'header-booking'),
(137, '2016-02-01 18:11:33', '2016-02-01 18:27:53', 'body-banner01'),
(138, '2016-02-01 18:11:33', '2016-02-01 18:27:53', 'body-banner02'),
(139, '2016-02-01 18:11:34', '2016-02-01 18:27:54', 'body-banner03'),
(140, '2016-02-01 18:11:34', '2016-02-01 18:30:44', 'map-heading'),
(141, '2016-02-01 18:11:35', '2016-02-01 18:32:10', 'location-map'),
(142, '2016-02-01 18:11:35', '2016-02-01 18:32:42', 'map-description'),
(143, '2016-02-01 18:11:36', '2016-02-01 18:15:25', 'footer-logo'),
(144, '2016-02-01 18:11:36', '2016-02-01 18:15:26', 'footer-address'),
(145, '2016-02-01 18:11:37', '2016-02-01 18:15:26', 'footer-menu');

-- --------------------------------------------------------

--
-- Table structure for table `CollectionSearchIndexAttributes`
--

DROP TABLE IF EXISTS `CollectionSearchIndexAttributes`;
CREATE TABLE IF NOT EXISTS `CollectionSearchIndexAttributes` (
  `cID` int(11) unsigned NOT NULL DEFAULT '0',
  `ak_meta_title` text,
  `ak_meta_description` text,
  `ak_meta_keywords` text,
  `ak_icon_dashboard` text,
  `ak_exclude_nav` tinyint(4) DEFAULT '0',
  `ak_exclude_page_list` tinyint(4) DEFAULT '0',
  `ak_header_extra_content` text,
  `ak_exclude_search_index` tinyint(4) DEFAULT '0',
  `ak_exclude_sitemapxml` tinyint(4) DEFAULT '0',
  `ak_tags` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `CollectionSearchIndexAttributes`
--

INSERT INTO `CollectionSearchIndexAttributes` (`cID`, `ak_meta_title`, `ak_meta_description`, `ak_meta_keywords`, `ak_icon_dashboard`, `ak_exclude_nav`, `ak_exclude_page_list`, `ak_header_extra_content`, `ak_exclude_search_index`, `ak_exclude_sitemapxml`, `ak_tags`) VALUES
(1, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 0, NULL),
(3, NULL, NULL, 'blog, blogging', 'icon-book', 0, 0, NULL, 0, 0, NULL),
(4, NULL, NULL, 'new blog, write blog, blogging', 'icon-pencil', 0, 0, NULL, 0, 0, NULL),
(5, NULL, NULL, 'blog drafts, composer', 'icon-book', 0, 0, NULL, 0, 0, NULL),
(6, NULL, NULL, 'pages, add page, delete page, copy, move, alias', NULL, 0, 0, NULL, 0, 0, NULL),
(7, NULL, NULL, 'pages, add page, delete page, copy, move, alias', 'icon-home', 0, 0, NULL, 0, 0, NULL),
(8, NULL, NULL, 'pages, add page, delete page, copy, move, alias, bulk', 'icon-road', 0, 0, NULL, 0, 0, NULL),
(9, NULL, NULL, 'find page, search page, search, find, pages, sitemap', 'icon-search', 0, 0, NULL, 0, 0, NULL),
(11, NULL, NULL, 'add file, delete file, copy, move, alias, resize, crop, rename, images, title, attribute', 'icon-picture', 0, 0, NULL, 0, 0, NULL),
(12, NULL, NULL, 'file, file attributes, title, attribute, description, rename', 'icon-cog', 0, 0, NULL, 0, 0, NULL),
(13, NULL, NULL, 'files, category, categories', 'icon-list-alt', 0, 0, NULL, 0, 0, NULL),
(14, NULL, NULL, 'new file set', 'icon-plus-sign', 1, 0, NULL, 0, 0, NULL),
(15, NULL, NULL, 'users, groups, people, find, delete user, remove user, change password, password', NULL, 0, 0, NULL, 0, 0, NULL),
(16, NULL, NULL, 'find, search, people, delete user, remove user, change password, password', 'icon-user', 0, 0, NULL, 0, 0, NULL),
(17, NULL, NULL, 'user, group, people, permissions, access, expire', 'icon-globe', 0, 0, NULL, 0, 0, NULL),
(18, NULL, NULL, 'user attributes, user data, gather data, registration data', 'icon-cog', 0, 0, NULL, 0, 0, NULL),
(19, NULL, NULL, 'new user, create', 'icon-plus-sign', 1, 0, NULL, 0, 0, NULL),
(20, NULL, NULL, 'new user group, new group, group, create', 'icon-plus', 1, 0, NULL, 0, 0, NULL),
(21, NULL, NULL, 'group set', 'icon-list', 0, 0, NULL, 0, 0, NULL),
(22, NULL, NULL, 'forms, log, error, email, mysql, exception, survey', NULL, 0, 0, NULL, 0, 0, NULL),
(23, NULL, NULL, 'hits, pageviews, visitors, activity', 'icon-signal', 0, 0, NULL, 0, 0, NULL),
(24, NULL, NULL, 'forms, questions, response, data', 'icon-briefcase', 0, 0, NULL, 0, 0, NULL),
(25, NULL, NULL, 'questions, quiz, response', 'icon-tasks', 0, 0, NULL, 0, 0, NULL),
(26, NULL, NULL, 'forms, log, error, email, mysql, exception, survey, history', 'icon-time', 0, 0, NULL, 0, 0, NULL),
(28, NULL, NULL, 'new theme, theme, active theme, change theme, template, css', 'icon-font', 0, 0, NULL, 0, 0, NULL),
(29, NULL, NULL, 'theme', NULL, 0, 0, NULL, 0, 0, NULL),
(30, NULL, NULL, 'page types', NULL, 0, 0, NULL, 0, 0, NULL),
(31, NULL, NULL, 'custom theme, change theme, custom css, css', NULL, 0, 0, NULL, 0, 0, NULL),
(32, NULL, NULL, 'page type defaults, global block, global area, starter, template', 'icon-file', 0, 0, NULL, 0, 0, NULL),
(34, NULL, NULL, 'page attributes, custom', 'icon-cog', 0, 0, NULL, 0, 0, NULL),
(35, NULL, NULL, 'single, page, custom, application', 'icon-wrench', 0, 0, NULL, 0, 0, NULL),
(36, NULL, NULL, 'add workflow, remove workflow', NULL, 0, 0, NULL, 0, 0, NULL),
(37, NULL, NULL, NULL, 'icon-list', 0, 0, NULL, 0, 0, NULL),
(38, NULL, NULL, NULL, 'icon-user', 0, 0, NULL, 0, 0, NULL),
(40, NULL, NULL, 'stacks, reusable content, scrapbook, copy, paste, paste block, copy block, site name, logo', 'icon-th', 0, 0, NULL, 0, 0, NULL),
(41, NULL, NULL, NULL, 'icon-lock', 0, 0, NULL, 0, 0, NULL),
(42, NULL, NULL, NULL, NULL, 1, 0, NULL, 1, 0, NULL),
(43, NULL, NULL, 'block, refresh, custom', 'icon-wrench', 0, 0, NULL, 0, 0, NULL),
(44, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 0, NULL),
(45, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 0, NULL),
(46, NULL, NULL, 'add-on, addon, ecommerce, install, discussions, forums, themes, templates, blocks', NULL, 0, 0, NULL, 0, 0, NULL),
(47, NULL, NULL, 'update, upgrade', NULL, 0, 0, NULL, 0, 0, NULL),
(48, NULL, NULL, 'concrete5.org, my account, marketplace', NULL, 0, 0, NULL, 0, 0, NULL),
(49, NULL, NULL, 'buy theme, new theme, marketplace, template', NULL, 0, 0, NULL, 0, 0, NULL),
(50, NULL, NULL, 'buy addon, buy add on, buy add-on, purchase addon, purchase add on, purchase add-on, find addon, new addon, marketplace', NULL, 0, 0, NULL, 0, 0, NULL),
(51, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 0, NULL),
(53, NULL, NULL, 'website name, title', NULL, 0, 0, NULL, 0, 0, NULL),
(54, NULL, NULL, 'logo, favicon, iphone, icon, bookmark', NULL, 0, 0, NULL, 0, 0, NULL),
(55, NULL, NULL, 'tinymce, content block, fonts, editor, content, overlay', NULL, 0, 0, NULL, 0, 0, NULL),
(56, NULL, NULL, 'translate, translation, internationalization, multilingual', NULL, 0, 0, NULL, 0, 0, NULL),
(57, NULL, NULL, 'timezone, profile, locale', NULL, 0, 0, NULL, 0, 0, NULL),
(58, NULL, NULL, 'interface, quick nav, dashboard background, background image', NULL, 0, 0, NULL, 0, 0, NULL),
(60, NULL, NULL, 'vanity, pretty url, seo, pageview, view', NULL, 0, 0, NULL, 0, 0, NULL),
(61, NULL, NULL, 'bulk, seo, change keywords, engine, optimization, search', NULL, 0, 0, NULL, 0, 0, NULL),
(62, NULL, NULL, 'traffic, statistics, google analytics, quant, pageviews, hits', NULL, 0, 0, NULL, 0, 0, NULL),
(63, NULL, NULL, 'pretty, slug', NULL, 0, 0, NULL, 0, 0, NULL),
(64, NULL, NULL, 'turn off statistics, tracking, statistics, pageviews, hits', NULL, 0, 0, NULL, 0, 0, NULL),
(65, NULL, NULL, 'configure search, site search, search option', NULL, 0, 0, NULL, 0, 0, NULL),
(67, NULL, NULL, 'cache option, change cache, override, turn on cache, turn off cache, no cache, page cache, caching', NULL, 0, 0, NULL, 0, 0, NULL),
(68, NULL, NULL, 'cache option, turn off cache, no cache, page cache, caching', NULL, 0, 0, NULL, 0, 0, NULL),
(69, NULL, NULL, 'index search, reindex search, build sitemap, sitemap.xml, clear old versions, page versions, remove old', NULL, 0, 0, NULL, 0, 0, NULL),
(71, NULL, NULL, 'editors, hide site, offline, private, public, access', NULL, 0, 0, NULL, 0, 0, NULL),
(72, NULL, NULL, 'file options, file manager, upload, modify', NULL, 0, 0, NULL, 0, 0, NULL),
(73, NULL, NULL, 'security, files, media, extension, manager, upload', NULL, 0, 0, NULL, 0, 0, NULL),
(74, NULL, NULL, 'security, actions, administrator, admin, package, marketplace, search', NULL, 0, 0, NULL, 0, 0, NULL),
(77, NULL, NULL, 'security, lock ip, lock out, block ip, address, restrict, access', NULL, 0, 0, NULL, 0, 0, NULL),
(78, NULL, NULL, 'security, registration', NULL, 0, 0, NULL, 0, 0, NULL),
(79, NULL, NULL, 'antispam, block spam, security', NULL, 0, 0, NULL, 0, 0, NULL),
(80, NULL, NULL, 'lock site, under construction, hide, hidden', NULL, 0, 0, NULL, 0, 0, NULL),
(82, NULL, NULL, 'profile, login, redirect, specific, dashboard, administrators', NULL, 0, 0, NULL, 0, 0, NULL),
(83, NULL, NULL, 'member profile, member page, community, forums, social, avatar', NULL, 0, 0, NULL, 0, 0, NULL),
(84, NULL, NULL, 'signup, new user, community', NULL, 0, 0, NULL, 0, 0, NULL),
(85, NULL, NULL, 'smtp, mail settings', NULL, 0, 0, NULL, 0, 0, NULL),
(86, NULL, NULL, 'email server, mail settings, mail configuration, external, internal', NULL, 0, 0, NULL, 0, 0, NULL),
(87, NULL, NULL, 'test smtp, test mail', NULL, 0, 0, NULL, 0, 0, NULL),
(88, NULL, NULL, 'email server, mail settings, mail configuration, private message, message system, import, email, message', NULL, 0, 0, NULL, 0, 0, NULL),
(89, NULL, NULL, 'attribute configuration', NULL, 0, 0, NULL, 0, 0, NULL),
(90, NULL, NULL, 'attributes, sets', NULL, 0, 0, NULL, 0, 0, NULL),
(91, NULL, NULL, 'attributes, types', NULL, 0, 0, NULL, 0, 0, NULL),
(92, NULL, NULL, NULL, NULL, 0, 0, NULL, 1, 0, NULL),
(93, NULL, NULL, 'overrides, system info, debug, support, help', NULL, 0, 0, NULL, 0, 0, NULL),
(94, NULL, NULL, 'errors, exceptions, develop, support, help', NULL, 0, 0, NULL, 0, 0, NULL),
(95, NULL, NULL, 'email, logging, logs, smtp, pop, errors, mysql, log', NULL, 0, 0, NULL, 0, 0, NULL),
(96, NULL, NULL, 'security, alternate storage, hide files', NULL, 0, 0, NULL, 0, 0, NULL),
(97, NULL, NULL, 'network, proxy server', NULL, 0, 0, NULL, 0, 0, NULL),
(98, NULL, NULL, 'export, backup, database, sql, mysql, encryption, restore', NULL, 0, 0, NULL, 0, 0, NULL),
(100, NULL, NULL, 'upgrade, new version, update', NULL, 0, 0, NULL, 0, 0, NULL),
(101, NULL, NULL, 'export, database, xml, starting, points, schema, refresh, custom, tables', NULL, 0, 0, NULL, 0, 0, NULL),
(106, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 0, NULL),
(107, NULL, NULL, NULL, NULL, 1, 0, NULL, 1, 0, NULL),
(128, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 0, NULL),
(129, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 0, NULL),
(130, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 0, ''),
(131, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 0, NULL),
(132, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 0, NULL),
(133, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 0, '\ncomposer\nhello\nworld\nfirst post\n'),
(134, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, ''),
(135, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 0, NULL),
(136, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 0, NULL),
(137, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 0, NULL),
(138, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 0, NULL),
(139, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 0, NULL),
(140, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 0, NULL),
(141, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 0, NULL),
(142, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 0, NULL),
(143, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 0, NULL),
(144, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 0, NULL),
(145, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `CollectionVersionAreaLayouts`
--

DROP TABLE IF EXISTS `CollectionVersionAreaLayouts`;
CREATE TABLE IF NOT EXISTS `CollectionVersionAreaLayouts` (
`cvalID` int(10) unsigned NOT NULL,
  `cID` int(10) unsigned DEFAULT '0',
  `cvID` int(10) unsigned DEFAULT '0',
  `arHandle` varchar(255) DEFAULT NULL,
  `layoutID` int(10) unsigned NOT NULL DEFAULT '0',
  `position` int(10) DEFAULT '1000',
  `areaNameNumber` int(10) unsigned DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `CollectionVersionAreaStyles`
--

DROP TABLE IF EXISTS `CollectionVersionAreaStyles`;
CREATE TABLE IF NOT EXISTS `CollectionVersionAreaStyles` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) NOT NULL,
  `csrID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `CollectionVersionBlocks`
--

DROP TABLE IF EXISTS `CollectionVersionBlocks`;
CREATE TABLE IF NOT EXISTS `CollectionVersionBlocks` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '1',
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) NOT NULL,
  `cbDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `isOriginal` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `cbOverrideAreaPermissions` tinyint(1) NOT NULL DEFAULT '0',
  `cbIncludeAll` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `CollectionVersionBlocks`
--

INSERT INTO `CollectionVersionBlocks` (`cID`, `cvID`, `bID`, `arHandle`, `cbDisplayOrder`, `isOriginal`, `cbOverrideAreaPermissions`, `cbIncludeAll`) VALUES
(1, 1, 24, 'Sidebar', 0, 1, 0, 0),
(1, 1, 25, 'Sidebar', 1, 1, 0, 0),
(1, 1, 26, 'Main', 0, 1, 0, 0),
(1, 1, 27, 'Header Image', 0, 1, 0, 0),
(1, 2, 24, 'Sidebar', 0, 0, 0, 0),
(1, 2, 25, 'Sidebar', 1, 0, 0, 0),
(1, 2, 26, 'Main', 0, 0, 0, 0),
(1, 3, 24, 'Sidebar', 0, 0, 0, 0),
(1, 3, 25, 'Sidebar', 1, 0, 0, 0),
(1, 3, 26, 'Main', 0, 0, 0, 0),
(1, 4, 24, 'Sidebar', 0, 0, 0, 0),
(1, 4, 25, 'Sidebar', 1, 0, 0, 0),
(1, 4, 26, 'Main', 0, 0, 0, 0),
(1, 5, 24, 'Sidebar', 0, 0, 0, 0),
(1, 5, 25, 'Sidebar', 1, 0, 0, 0),
(1, 5, 26, 'Main', 0, 0, 0, 0),
(1, 5, 50, 'Header Image', 0, 1, 0, 0),
(1, 5, 51, 'Header Image', 1, 1, 0, 0),
(1, 6, 24, 'Sidebar', 0, 0, 0, 0),
(1, 6, 25, 'Sidebar', 1, 0, 0, 0),
(1, 6, 26, 'Main', 0, 0, 0, 0),
(1, 6, 50, 'Header Image', 0, 0, 0, 0),
(1, 6, 52, 'Header Image', 1, 1, 0, 0),
(1, 7, 24, 'Sidebar', 0, 0, 0, 0),
(1, 7, 25, 'Sidebar', 1, 0, 0, 0),
(1, 7, 26, 'Main', 0, 0, 0, 0),
(1, 7, 53, 'Header Image', 0, 1, 0, 0),
(1, 8, 24, 'Sidebar', 0, 0, 0, 0),
(1, 8, 25, 'Sidebar', 1, 0, 0, 0),
(1, 8, 26, 'Main', 0, 0, 0, 0),
(1, 8, 53, 'Header Image', 0, 0, 0, 0),
(1, 9, 24, 'Sidebar', 0, 0, 0, 0),
(1, 9, 25, 'Sidebar', 1, 0, 0, 0),
(1, 9, 26, 'Main', 0, 0, 0, 0),
(1, 9, 53, 'Header Image', 0, 0, 0, 0),
(1, 10, 24, 'Sidebar', 0, 0, 0, 0),
(1, 10, 25, 'Sidebar', 1, 0, 0, 0),
(1, 10, 26, 'Main', 0, 0, 0, 0),
(1, 10, 58, 'Header Image', 0, 1, 0, 0),
(1, 11, 24, 'Sidebar', 0, 0, 0, 0),
(1, 11, 25, 'Sidebar', 1, 0, 0, 0),
(1, 11, 26, 'Main', 0, 0, 0, 0),
(1, 11, 58, 'Header Image', 0, 0, 0, 0),
(1, 11, 59, 'Body Text', 0, 1, 0, 0),
(1, 12, 24, 'Sidebar', 0, 0, 0, 0),
(1, 12, 25, 'Sidebar', 1, 0, 0, 0),
(1, 12, 26, 'Main', 0, 0, 0, 0),
(1, 12, 58, 'Header Image', 0, 0, 0, 0),
(1, 12, 59, 'Body Text', 0, 0, 0, 0),
(1, 12, 60, 'Body Banner01', 0, 1, 0, 0),
(1, 12, 61, 'Body Banner02', 0, 1, 0, 0),
(1, 12, 62, 'Body Banner03', 0, 1, 0, 0),
(1, 13, 24, 'Sidebar', 0, 0, 0, 0),
(1, 13, 25, 'Sidebar', 1, 0, 0, 0),
(1, 13, 26, 'Main', 0, 0, 0, 0),
(1, 13, 58, 'Header Image', 0, 0, 0, 0),
(1, 13, 59, 'Body Text', 0, 0, 0, 0),
(1, 13, 60, 'Body Banner01', 0, 0, 0, 0),
(1, 13, 61, 'Body Banner02', 0, 0, 0, 0),
(1, 13, 62, 'Body Banner03', 0, 0, 0, 0),
(1, 13, 63, 'Map Heading', 0, 1, 0, 0),
(1, 13, 64, 'Location Map', 0, 1, 0, 0),
(1, 14, 24, 'Sidebar', 0, 0, 0, 0),
(1, 14, 25, 'Sidebar', 1, 0, 0, 0),
(1, 14, 26, 'Main', 0, 0, 0, 0),
(1, 14, 58, 'Header Image', 0, 0, 0, 0),
(1, 14, 59, 'Body Text', 0, 0, 0, 0),
(1, 14, 60, 'Body Banner01', 0, 0, 0, 0),
(1, 14, 61, 'Body Banner02', 0, 0, 0, 0),
(1, 14, 62, 'Body Banner03', 0, 0, 0, 0),
(1, 14, 63, 'Map Heading', 0, 0, 0, 0),
(1, 14, 65, 'Location Map', 0, 1, 0, 0),
(1, 14, 66, 'Map Description', 0, 1, 0, 0),
(1, 15, 24, 'Sidebar', 0, 0, 0, 0),
(1, 15, 25, 'Sidebar', 1, 0, 0, 0),
(1, 15, 26, 'Main', 0, 0, 0, 0),
(1, 15, 58, 'Header Image', 0, 0, 0, 0),
(1, 15, 59, 'Body Text', 0, 0, 0, 0),
(1, 15, 60, 'Body Banner01', 0, 0, 0, 0),
(1, 15, 61, 'Body Banner02', 0, 0, 0, 0),
(1, 15, 62, 'Body Banner03', 0, 0, 0, 0),
(1, 15, 63, 'Map Heading', 0, 0, 0, 0),
(1, 15, 65, 'Location Map', 0, 0, 0, 0),
(1, 15, 67, 'Map Description', 0, 1, 0, 0),
(1, 16, 24, 'Sidebar', 0, 0, 0, 0),
(1, 16, 25, 'Sidebar', 1, 0, 0, 0),
(1, 16, 26, 'Main', 0, 0, 0, 0),
(1, 16, 58, 'Header Image', 0, 0, 0, 0),
(1, 16, 59, 'Body Text', 0, 0, 0, 0),
(1, 16, 60, 'Body Banner01', 0, 0, 0, 0),
(1, 16, 61, 'Body Banner02', 0, 0, 0, 0),
(1, 16, 62, 'Body Banner03', 0, 0, 0, 0),
(1, 16, 63, 'Map Heading', 0, 0, 0, 0),
(1, 16, 65, 'Location Map', 0, 0, 0, 0),
(1, 16, 68, 'Map Description', 0, 1, 0, 0),
(1, 17, 24, 'Sidebar', 0, 0, 0, 0),
(1, 17, 25, 'Sidebar', 1, 0, 0, 0),
(1, 17, 26, 'Main', 0, 0, 0, 0),
(1, 17, 58, 'Header Image', 0, 0, 0, 0),
(1, 17, 59, 'Body Text', 0, 0, 0, 0),
(1, 17, 60, 'Body Banner01', 0, 0, 0, 0),
(1, 17, 61, 'Body Banner02', 0, 0, 0, 0),
(1, 17, 62, 'Body Banner03', 0, 0, 0, 0),
(1, 17, 63, 'Map Heading', 0, 0, 0, 0),
(1, 17, 65, 'Location Map', 0, 0, 0, 0),
(1, 17, 69, 'Map Description', 0, 1, 0, 0),
(1, 18, 24, 'Sidebar', 0, 0, 0, 0),
(1, 18, 25, 'Sidebar', 1, 0, 0, 0),
(1, 18, 26, 'Main', 0, 0, 0, 0),
(1, 18, 58, 'Header Image', 0, 0, 0, 0),
(1, 18, 59, 'Body Text', 0, 0, 0, 0),
(1, 18, 60, 'Body Banner01', 0, 0, 0, 0),
(1, 18, 61, 'Body Banner02', 0, 0, 0, 0),
(1, 18, 62, 'Body Banner03', 0, 0, 0, 0),
(1, 18, 63, 'Map Heading', 0, 0, 0, 0),
(1, 18, 65, 'Location Map', 0, 0, 0, 0),
(1, 18, 69, 'Map Description', 0, 0, 0, 0),
(1, 18, 70, 'Footer Logo', 0, 1, 0, 0),
(1, 19, 24, 'Sidebar', 0, 0, 0, 0),
(1, 19, 25, 'Sidebar', 1, 0, 0, 0),
(1, 19, 26, 'Main', 0, 0, 0, 0),
(1, 19, 58, 'Header Image', 0, 0, 0, 0),
(1, 19, 59, 'Body Text', 0, 0, 0, 0),
(1, 19, 60, 'Body Banner01', 0, 0, 0, 0),
(1, 19, 61, 'Body Banner02', 0, 0, 0, 0),
(1, 19, 62, 'Body Banner03', 0, 0, 0, 0),
(1, 19, 63, 'Map Heading', 0, 0, 0, 0),
(1, 19, 65, 'Location Map', 0, 0, 0, 0),
(1, 19, 69, 'Map Description', 0, 0, 0, 0),
(1, 19, 70, 'Footer Logo', 0, 0, 0, 0),
(1, 19, 71, 'Footer Address', 0, 1, 0, 0),
(1, 20, 24, 'Sidebar', 0, 0, 0, 0),
(1, 20, 25, 'Sidebar', 1, 0, 0, 0),
(1, 20, 26, 'Main', 0, 0, 0, 0),
(1, 20, 58, 'Header Image', 0, 0, 0, 0),
(1, 20, 59, 'Body Text', 0, 0, 0, 0),
(1, 20, 60, 'Body Banner01', 0, 0, 0, 0),
(1, 20, 61, 'Body Banner02', 0, 0, 0, 0),
(1, 20, 62, 'Body Banner03', 0, 0, 0, 0),
(1, 20, 63, 'Map Heading', 0, 0, 0, 0),
(1, 20, 65, 'Location Map', 0, 0, 0, 0),
(1, 20, 69, 'Map Description', 0, 0, 0, 0),
(1, 20, 70, 'Footer Logo', 0, 0, 0, 0),
(1, 20, 72, 'Footer Address', 0, 1, 0, 0),
(1, 21, 24, 'Sidebar', 0, 0, 0, 0),
(1, 21, 25, 'Sidebar', 1, 0, 0, 0),
(1, 21, 26, 'Main', 0, 0, 0, 0),
(1, 21, 58, 'Header Image', 0, 0, 0, 0),
(1, 21, 59, 'Body Text', 0, 0, 0, 0),
(1, 21, 63, 'Map Heading', 0, 0, 0, 0),
(1, 21, 65, 'Location Map', 0, 0, 0, 0),
(1, 21, 69, 'Map Description', 0, 0, 0, 0),
(1, 21, 70, 'Footer Logo', 0, 0, 0, 0),
(1, 21, 72, 'Footer Address', 0, 0, 0, 0),
(1, 21, 73, 'Body Banner01', 0, 1, 0, 0),
(1, 21, 74, 'Body Banner02', 0, 1, 0, 0),
(1, 21, 75, 'Body Banner03', 0, 1, 0, 0),
(1, 22, 24, 'Sidebar', 0, 0, 0, 0),
(1, 22, 25, 'Sidebar', 1, 0, 0, 0),
(1, 22, 26, 'Main', 0, 0, 0, 0),
(1, 22, 58, 'Header Image', 0, 0, 0, 0),
(1, 22, 59, 'Body Text', 0, 0, 0, 0),
(1, 22, 63, 'Map Heading', 0, 0, 0, 0),
(1, 22, 65, 'Location Map', 0, 0, 0, 0),
(1, 22, 69, 'Map Description', 0, 0, 0, 0),
(1, 22, 70, 'Footer Logo', 0, 0, 0, 0),
(1, 22, 72, 'Footer Address', 0, 0, 0, 0),
(1, 22, 74, 'Body Banner02', 0, 0, 0, 0),
(1, 22, 75, 'Body Banner03', 0, 0, 0, 0),
(1, 22, 76, 'Body Banner01', 0, 1, 0, 0),
(1, 23, 24, 'Sidebar', 0, 0, 0, 0),
(1, 23, 25, 'Sidebar', 1, 0, 0, 0),
(1, 23, 26, 'Main', 0, 0, 0, 0),
(1, 23, 58, 'Header Image', 0, 0, 0, 0),
(1, 23, 59, 'Body Text', 0, 0, 0, 0),
(1, 23, 63, 'Map Heading', 0, 0, 0, 0),
(1, 23, 65, 'Location Map', 0, 0, 0, 0),
(1, 23, 69, 'Map Description', 0, 0, 0, 0),
(1, 23, 70, 'Footer Logo', 0, 0, 0, 0),
(1, 23, 72, 'Footer Address', 0, 0, 0, 0),
(1, 23, 77, 'Body Banner01', 0, 1, 0, 0),
(1, 23, 78, 'Body Banner02', 0, 1, 0, 0),
(1, 23, 79, 'Body Banner03', 0, 1, 0, 0),
(1, 24, 24, 'Sidebar', 0, 0, 0, 0),
(1, 24, 25, 'Sidebar', 1, 0, 0, 0),
(1, 24, 26, 'Main', 0, 0, 0, 0),
(1, 24, 58, 'Header Image', 0, 0, 0, 0),
(1, 24, 59, 'Body Text', 0, 0, 0, 0),
(1, 24, 63, 'Map Heading', 0, 0, 0, 0),
(1, 24, 65, 'Location Map', 0, 0, 0, 0),
(1, 24, 69, 'Map Description', 0, 0, 0, 0),
(1, 24, 70, 'Footer Logo', 0, 0, 0, 0),
(1, 24, 72, 'Footer Address', 0, 0, 0, 0),
(1, 24, 77, 'Body Banner01', 0, 0, 0, 0),
(1, 24, 78, 'Body Banner02', 0, 0, 0, 0),
(1, 24, 79, 'Body Banner03', 0, 0, 0, 0),
(1, 24, 80, 'Footer Menu', 0, 1, 0, 0),
(106, 1, 1, 'Header', 0, 1, 0, 0),
(106, 1, 2, 'Column 1', 0, 1, 0, 0),
(106, 1, 3, 'Column 2', 0, 1, 0, 0),
(106, 1, 4, 'Column 3', 0, 1, 0, 0),
(106, 1, 5, 'Column 4', 0, 1, 0, 0),
(107, 1, 6, 'Primary', 0, 1, 0, 0),
(107, 1, 7, 'Primary', 1, 1, 0, 0),
(107, 1, 8, 'Secondary 1', 0, 1, 0, 0),
(107, 1, 9, 'Secondary 2', 0, 1, 0, 0),
(107, 1, 10, 'Secondary 3', 0, 1, 0, 0),
(107, 1, 11, 'Secondary 4', 0, 1, 0, 0),
(107, 1, 12, 'Secondary 5', 0, 1, 0, 0),
(121, 1, 20, 'Main', 0, 1, 0, 0),
(122, 1, 21, 'Main', 0, 1, 0, 0),
(122, 1, 22, 'Main', 1, 1, 0, 0),
(123, 1, 23, 'Main', 0, 1, 0, 0),
(124, 1, 13, 'Main', 0, 1, 0, 0),
(124, 1, 14, 'Sidebar', 0, 1, 0, 0),
(124, 1, 15, 'Thumbnail Image', 0, 1, 0, 0),
(124, 1, 16, 'Header Image', 0, 1, 0, 0),
(125, 1, 17, 'Header Image', 0, 1, 0, 0),
(126, 1, 18, 'Header Image', 0, 1, 0, 0),
(127, 1, 19, 'Header Image', 0, 1, 0, 0),
(128, 1, 18, 'Header Image', 0, 0, 0, 0),
(128, 1, 28, 'Sidebar', 0, 1, 0, 0),
(128, 1, 29, 'Main', 0, 1, 0, 0),
(128, 2, 28, 'Sidebar', 0, 0, 0, 0),
(128, 2, 29, 'Main', 0, 0, 0, 0),
(128, 3, 28, 'Sidebar', 0, 0, 0, 0),
(128, 3, 29, 'Main', 0, 0, 0, 0),
(128, 3, 81, 'Header Image', 0, 1, 0, 0),
(128, 4, 28, 'Sidebar', 0, 0, 0, 0),
(128, 4, 29, 'Main', 0, 0, 0, 0),
(128, 4, 81, 'Header Image', 0, 0, 0, 0),
(128, 5, 28, 'Sidebar', 0, 0, 0, 0),
(128, 5, 29, 'Main', 0, 0, 0, 0),
(128, 5, 81, 'Header Image', 0, 0, 0, 0),
(128, 5, 82, 'Footer Address', 0, 1, 0, 0),
(128, 6, 28, 'Sidebar', 0, 0, 0, 0),
(128, 6, 29, 'Main', 0, 0, 0, 0),
(128, 6, 81, 'Header Image', 0, 0, 0, 0),
(128, 6, 82, 'Footer Address', 0, 0, 0, 0),
(128, 7, 28, 'Sidebar', 0, 0, 0, 0),
(128, 7, 29, 'Main', 0, 0, 0, 0),
(128, 7, 81, 'Header Image', 0, 0, 0, 0),
(128, 7, 82, 'Footer Address', 0, 0, 0, 0),
(128, 8, 28, 'Sidebar', 0, 0, 0, 0),
(128, 8, 29, 'Main', 0, 0, 0, 0),
(128, 8, 81, 'Header Image', 0, 0, 0, 0),
(128, 8, 82, 'Footer Address', 0, 0, 0, 0),
(128, 9, 28, 'Sidebar', 0, 0, 0, 0),
(128, 9, 29, 'Main', 0, 0, 0, 0),
(128, 9, 81, 'Header Image', 0, 0, 0, 0),
(128, 9, 82, 'Footer Address', 0, 0, 0, 0),
(128, 10, 28, 'Sidebar', 0, 0, 0, 0),
(128, 10, 29, 'Main', 0, 0, 0, 0),
(128, 10, 81, 'Header Image', 0, 0, 0, 0),
(128, 10, 82, 'Footer Address', 0, 0, 0, 0),
(128, 11, 28, 'Sidebar', 0, 0, 0, 0),
(128, 11, 29, 'Main', 0, 0, 0, 0),
(128, 11, 81, 'Header Image', 0, 0, 0, 0),
(128, 11, 82, 'Footer Address', 0, 0, 0, 0),
(128, 11, 96, 'Body Content', 0, 1, 0, 0),
(129, 1, 19, 'Header Image', 0, 0, 0, 0),
(129, 1, 35, 'Sidebar', 0, 1, 0, 0),
(129, 1, 36, 'Sidebar', 1, 1, 0, 0),
(129, 1, 37, 'Main', 0, 1, 0, 0),
(129, 2, 35, 'Sidebar', 0, 0, 0, 0),
(129, 2, 36, 'Sidebar', 1, 0, 0, 0),
(129, 2, 37, 'Main', 0, 0, 0, 0),
(129, 2, 97, 'Header Image', 0, 1, 0, 0),
(130, 1, 19, 'Header Image', 0, 0, 0, 0),
(130, 1, 38, 'Main', 0, 1, 0, 0),
(130, 1, 39, 'Sidebar', 0, 1, 0, 0),
(130, 1, 40, 'Sidebar', 1, 1, 0, 0),
(130, 1, 41, 'Sidebar', 2, 1, 0, 0),
(130, 2, 38, 'Main', 0, 0, 0, 0),
(130, 2, 39, 'Sidebar', 0, 0, 0, 0),
(130, 2, 40, 'Sidebar', 1, 0, 0, 0),
(130, 2, 41, 'Sidebar', 2, 0, 0, 0),
(130, 2, 98, 'Header Image', 0, 1, 0, 0),
(131, 1, 19, 'Header Image', 0, 0, 0, 0),
(131, 1, 30, 'Sidebar', 0, 1, 0, 0),
(131, 1, 31, 'Main', 0, 1, 0, 1),
(132, 1, 18, 'Header Image', 0, 0, 0, 0),
(132, 1, 32, 'Sidebar', 0, 1, 0, 0),
(132, 1, 33, 'Main', 0, 1, 0, 0),
(132, 1, 34, 'Main', 1, 1, 0, 0),
(133, 1, 14, 'Sidebar', 0, 0, 0, 0),
(133, 1, 42, 'Header Image', 0, 1, 0, 0),
(133, 1, 43, 'Main', 0, 1, 0, 0),
(133, 1, 44, 'Thumbnail Image', 0, 1, 0, 0),
(134, 1, 19, 'Header Image', 0, 0, 0, 0),
(134, 1, 45, 'Main', 0, 1, 0, 0),
(134, 1, 46, 'Sidebar', 0, 1, 0, 0),
(134, 1, 47, 'Sidebar', 1, 1, 0, 0),
(135, 2, 54, 'Main', 0, 1, 0, 0),
(136, 2, 55, 'Main', 0, 1, 0, 0),
(136, 3, 56, 'Main', 0, 1, 0, 0),
(136, 4, 57, 'Main', 0, 1, 0, 0),
(137, 2, 87, 'Main', 0, 1, 0, 0),
(138, 2, 88, 'Main', 0, 1, 0, 0),
(139, 2, 89, 'Main', 0, 1, 0, 0),
(140, 2, 91, 'Main', 0, 1, 0, 0),
(141, 2, 92, 'Main', 0, 1, 0, 0),
(141, 3, 93, 'Main', 0, 1, 0, 0),
(142, 2, 86, 'Main', 0, 1, 0, 0),
(142, 3, 90, 'Main', 0, 1, 0, 0),
(142, 4, 90, 'Main', 0, 0, 0, 0),
(142, 4, 94, 'Main', 1, 1, 0, 0),
(142, 5, 90, 'Main', 0, 0, 0, 0),
(142, 5, 95, 'Main', 1, 1, 0, 0),
(143, 2, 85, 'Main', 0, 1, 0, 0),
(144, 2, 83, 'Main', 0, 1, 0, 0),
(145, 2, 84, 'Main', 0, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `CollectionVersionBlocksOutputCache`
--

DROP TABLE IF EXISTS `CollectionVersionBlocksOutputCache`;
CREATE TABLE IF NOT EXISTS `CollectionVersionBlocksOutputCache` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '1',
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) NOT NULL,
  `btCachedBlockOutput` longtext,
  `btCachedBlockOutputExpires` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `CollectionVersionBlocksOutputCache`
--

INSERT INTO `CollectionVersionBlocksOutputCache` (`cID`, `cvID`, `bID`, `arHandle`, `btCachedBlockOutput`, `btCachedBlockOutputExpires`) VALUES
(1, 6, 20, 'Header Nav', '<ul class="nav"><li class="nav-selected nav-path-selected"><a href="/royalhotel/" target="_self" class="nav-selected nav-path-selected">Home</a></li><li class=""><a href="/royalhotel/index.php/about/" target="_self" class="">About</a></li><li class=""><a href="/royalhotel/index.php/search/" target="_self" class="">Search</a></li><li class=""><a href="/royalhotel/index.php/blog/" target="_self" class="">Blog</a></li></ul>', 1454065418),
(1, 6, 23, 'Site Name', '<h1><a title="Home" \n                                	href="/royalhotel/"\n                                >royalhotel</a></h1>', 1611917918),
(1, 6, 24, 'Sidebar', '<h3>Sidebar</h3>', 1611917918),
(1, 6, 25, 'Sidebar', '<p>Everything about concrete5 is completely customizable through the CMS. This is a separate area from the main content on the homepage. You can&nbsp;<a title="Move blocks in concrete5" href="http://www.concrete5.org/documentation/general-topics/blocks-and-areas" target="_blank">drag and drop blocks</a>&nbsp;like this around your layout.</p>', 1611917918),
(1, 6, 26, 'Main', '<h2>Welcome to concrete5!</h2>\n                                        <p>Content Management is easy with concrete5''s in-context editing. Just <a href="/royalhotel/index.php/login/">login</a> and you can change things as you browse your site.</p>\n                                        <p>You can watch videos and learn how to:</p>\n                                        <ul>\n                                        <li><a title="In-context editing CMS" href="http://www.concrete5.org/documentation/general-topics/in-context-editing/" target="_blank">Edit</a>&nbsp;this page.</li>\n                                        <li>Add a <a title="Add a page in concrete5" href="http://www.concrete5.org/documentation/general-topics/add-a-page/" target="_blank">new page</a>.</li>\n                                        <li>Add some basic functionality, like&nbsp;<a title="Add a simple form in concrete5" href="http://www.concrete5.org/documentation/general-topics/add_a_form" target="_blank">a Form</a>.</li>\n                                        <li><a title="add-on marketplace for concrete5" href="http://www.concrete5.org/marketplace/how_to_install_add_ons_and_themes_/" target="_blank">Finding &amp; adding</a>&nbsp;more functionality and themes.</li>\n                                        </ul>\n                                        <p>We''ve taken the liberty to build out the rest of this site with some sample content that will help you learn concrete5. Wander around a bit, or click Dashboard to get to the&nbsp;<a href="/royalhotel/index.php/dashboard/sitemap/">Sitemap</a> and quickly delete the parts you don''t want.</p>', 1611917918),
(1, 6, 50, 'Header Image', '\r\n\r\n<div class="thumb-slider01">\r\n<div id="owl-demo2" class="carousel-inner">\r\n  <!-- Indicators -->\r\n  \r\n\r\n  <!-- Wrapper for slides -->\r\n\r\n  \r\n  \r\n    <div class="item">\r\n      <img src="/royalhotel/files/6014/5406/0125/europe_valencia_hemispheric.jpg" alt="europe_valencia_hemispheric.jpg">\r\n	  	\r\n      <div class="carousel-caption ">\r\n	 \r\n       \r\n	              <h4></h4>\r\n          <div class="text-des"></div>\r\n             </div>\r\n	\r\n	  <div>\r\n      \r\n      </div>\r\n    </div>\r\n   \r\n    <div class="item">\r\n      <img src="/royalhotel/files/6414/5406/0124/europe_england_stonehenge.jpg" alt="europe_england_stonehenge.jpg">\r\n	  	\r\n      <div class="carousel-caption ">\r\n	 \r\n       \r\n	              <h4></h4>\r\n          <div class="text-des"></div>\r\n             </div>\r\n	\r\n	  <div>\r\n      \r\n      </div>\r\n    </div>\r\n   \r\n	 \r\n  </div>\r\n</div>\r\n  \r\n<script>\r\n	\r\njQuery(document).ready(function() {     \r\n    $("#owl-demo2").owlCarousel({ \r\n		nav : true, // Show next and prev buttons\r\n		smartSpeed : 800,\r\n		items:1,\r\n		autoplay: true, \r\n		loop:true,		 \r\n		// "singleItem:true" is a shortcut for:\r\n		// items : 1,\r\n		// itemsDesktop : false,\r\n		// itemsDesktopSmall : false,\r\n		// itemsTablet: false,\r\n		// itemsMobile : false\r\n		 \r\n	});\r\n \r\n     \r\n});\r\n\r\n\r\n</script>\r\n', 1611917918),
(1, 6, 52, 'Header Image', '\r\n\r\n<div class="thumb-slider01">\r\n<div id="owl-demo2" class="carousel-inner">\r\n  <!-- Indicators -->\r\n  \r\n\r\n  <!-- Wrapper for slides -->\r\n\r\n  \r\n  \r\n    <div class="item">\r\n      <img src="/royalhotel/files/1314/5406/0129/europe_rotterdam_port.jpg" alt="europe_rotterdam_port.jpg">\r\n	  	\r\n      <div class="carousel-caption ">\r\n	 \r\n       \r\n	              <h4></h4>\r\n          <div class="text-des"></div>\r\n             </div>\r\n	\r\n	  <div>\r\n      \r\n      </div>\r\n    </div>\r\n   \r\n    <div class="item">\r\n      <img src="/royalhotel/files/6514/5406/0126/europe_spain_grenada_alhambra.jpg" alt="europe_spain_grenada_alhambra.jpg">\r\n	  	\r\n      <div class="carousel-caption ">\r\n	 \r\n       \r\n	              <h4></h4>\r\n          <div class="text-des"></div>\r\n             </div>\r\n	\r\n	  <div>\r\n      \r\n      </div>\r\n    </div>\r\n   \r\n	 \r\n  </div>\r\n</div>\r\n  \r\n<script>\r\n	\r\njQuery(document).ready(function() {     \r\n    $("#owl-demo2").owlCarousel({ \r\n		nav : true, // Show next and prev buttons\r\n		smartSpeed : 800,\r\n		items:1,\r\n		autoplay: true, \r\n		loop:true,		 \r\n		// "singleItem:true" is a shortcut for:\r\n		// items : 1,\r\n		// itemsDesktop : false,\r\n		// itemsDesktopSmall : false,\r\n		// itemsTablet: false,\r\n		// itemsMobile : false\r\n		 \r\n	});\r\n \r\n     \r\n});\r\n\r\n\r\n</script>\r\n', 1611917918),
(1, 7, 23, 'Site Name', '<h1><a title="Home" \n                                	href="/royalhotel/"\n                                >royalhotel</a></h1>', 1611918394),
(1, 7, 24, 'Sidebar', '<h3>Sidebar</h3>', 1611918395),
(1, 7, 25, 'Sidebar', '<p>Everything about concrete5 is completely customizable through the CMS. This is a separate area from the main content on the homepage. You can&nbsp;<a title="Move blocks in concrete5" href="http://www.concrete5.org/documentation/general-topics/blocks-and-areas" target="_blank">drag and drop blocks</a>&nbsp;like this around your layout.</p>', 1611918395),
(1, 7, 26, 'Main', '<h2>Welcome to concrete5!</h2>\n                                        <p>Content Management is easy with concrete5''s in-context editing. Just <a href="/royalhotel/index.php/login/">login</a> and you can change things as you browse your site.</p>\n                                        <p>You can watch videos and learn how to:</p>\n                                        <ul>\n                                        <li><a title="In-context editing CMS" href="http://www.concrete5.org/documentation/general-topics/in-context-editing/" target="_blank">Edit</a>&nbsp;this page.</li>\n                                        <li>Add a <a title="Add a page in concrete5" href="http://www.concrete5.org/documentation/general-topics/add-a-page/" target="_blank">new page</a>.</li>\n                                        <li>Add some basic functionality, like&nbsp;<a title="Add a simple form in concrete5" href="http://www.concrete5.org/documentation/general-topics/add_a_form" target="_blank">a Form</a>.</li>\n                                        <li><a title="add-on marketplace for concrete5" href="http://www.concrete5.org/marketplace/how_to_install_add_ons_and_themes_/" target="_blank">Finding &amp; adding</a>&nbsp;more functionality and themes.</li>\n                                        </ul>\n                                        <p>We''ve taken the liberty to build out the rest of this site with some sample content that will help you learn concrete5. Wander around a bit, or click Dashboard to get to the&nbsp;<a href="/royalhotel/index.php/dashboard/sitemap/">Sitemap</a> and quickly delete the parts you don''t want.</p>', 1611918395),
(1, 7, 53, 'Header Image', '\r\n\r\n<div class="thumb-slider01">\r\n<div id="owl-demo2" class="carousel-inner">\r\n  <!-- Indicators -->\r\n  \r\n\r\n  <!-- Wrapper for slides -->\r\n\r\n  \r\n  \r\n    <div class="item">\r\n      <img src="/royalhotel/files/4214/5406/5510/slider01.jpg" alt="slider01.jpg">\r\n	  	\r\n      <div class="carousel-caption ">\r\n	 \r\n       \r\n	    	  	<a href="Found Out More">\r\n                   <h4>ROYAL LUXURY</h4>\r\n          <div class="text-des">Every visit is a unique experience</div>\r\n         \r\n        </a>\r\n	        </div>\r\n	\r\n	  <div>\r\n      \r\n      </div>\r\n    </div>\r\n   \r\n    <div class="item">\r\n      <img src="/royalhotel/files/7814/5406/5499/slider02.jpg" alt="slider02.jpg">\r\n	  	\r\n      <div class="carousel-caption ">\r\n	 \r\n       \r\n	    	  	<a href="Found Out More">\r\n                   <h4>ROYAL LUXURY</h4>\r\n          <div class="text-des">Every visit is a unique experience</div>\r\n         \r\n        </a>\r\n	        </div>\r\n	\r\n	  <div>\r\n      \r\n      </div>\r\n    </div>\r\n   \r\n    <div class="item">\r\n      <img src="/royalhotel/files/4814/5406/5500/slider03.jpg" alt="slider03.jpg">\r\n	  	\r\n      <div class="carousel-caption ">\r\n	 \r\n       \r\n	    	  	<a href="Found Out More">\r\n                   <h4>ROYAL LUXURY</h4>\r\n          <div class="text-des">Every visit is a unique experience</div>\r\n         \r\n        </a>\r\n	        </div>\r\n	\r\n	  <div>\r\n      \r\n      </div>\r\n    </div>\r\n   \r\n	 \r\n  </div>\r\n</div>\r\n  \r\n<script>\r\n	\r\njQuery(document).ready(function() {     \r\n    $("#owl-demo2").owlCarousel({ \r\n		nav : true, // Show next and prev buttons\r\n		smartSpeed : 800,\r\n		items:1,\r\n		autoplay: true, \r\n		loop:true,		 \r\n		// "singleItem:true" is a shortcut for:\r\n		// items : 1,\r\n		// itemsDesktop : false,\r\n		// itemsDesktopSmall : false,\r\n		// itemsTablet: false,\r\n		// itemsMobile : false\r\n		 \r\n	});\r\n \r\n     \r\n});\r\n\r\n\r\n</script>\r\n', 1611918387),
(1, 8, 24, 'Sidebar', '<h3>Sidebar</h3>', 1611919679),
(1, 8, 25, 'Sidebar', '<p>Everything about concrete5 is completely customizable through the CMS. This is a separate area from the main content on the homepage. You can&nbsp;<a title="Move blocks in concrete5" href="http://www.concrete5.org/documentation/general-topics/blocks-and-areas" target="_blank">drag and drop blocks</a>&nbsp;like this around your layout.</p>', 1611919679),
(1, 8, 26, 'Main', '<h2>Welcome to concrete5!</h2>\n                                        <p>Content Management is easy with concrete5''s in-context editing. Just <a href="/royalhotel/index.php/login/">login</a> and you can change things as you browse your site.</p>\n                                        <p>You can watch videos and learn how to:</p>\n                                        <ul>\n                                        <li><a title="In-context editing CMS" href="http://www.concrete5.org/documentation/general-topics/in-context-editing/" target="_blank">Edit</a>&nbsp;this page.</li>\n                                        <li>Add a <a title="Add a page in concrete5" href="http://www.concrete5.org/documentation/general-topics/add-a-page/" target="_blank">new page</a>.</li>\n                                        <li>Add some basic functionality, like&nbsp;<a title="Add a simple form in concrete5" href="http://www.concrete5.org/documentation/general-topics/add_a_form" target="_blank">a Form</a>.</li>\n                                        <li><a title="add-on marketplace for concrete5" href="http://www.concrete5.org/marketplace/how_to_install_add_ons_and_themes_/" target="_blank">Finding &amp; adding</a>&nbsp;more functionality and themes.</li>\n                                        </ul>\n                                        <p>We''ve taken the liberty to build out the rest of this site with some sample content that will help you learn concrete5. Wander around a bit, or click Dashboard to get to the&nbsp;<a href="/royalhotel/index.php/dashboard/sitemap/">Sitemap</a> and quickly delete the parts you don''t want.</p>', 1611919679),
(1, 8, 53, 'Header Image', '\r\n\r\n<div class="thumb-slider01">\r\n<div id="owl-demo2" class="carousel-inner">\r\n  <!-- Indicators -->\r\n  \r\n\r\n  <!-- Wrapper for slides -->\r\n\r\n  \r\n  \r\n    <div class="item">\r\n      <img src="/royalhotel/files/4214/5406/5510/slider01.jpg" alt="slider01.jpg">\r\n	  	\r\n      <div class="carousel-caption ">\r\n	 \r\n       \r\n	    	  	<a href="Found Out More">\r\n                   <h4>ROYAL LUXURY</h4>\r\n          <div class="text-des">Every visit is a unique experience</div>\r\n         \r\n        </a>\r\n	        </div>\r\n	\r\n	  <div>\r\n      \r\n      </div>\r\n    </div>\r\n   \r\n    <div class="item">\r\n      <img src="/royalhotel/files/7814/5406/5499/slider02.jpg" alt="slider02.jpg">\r\n	  	\r\n      <div class="carousel-caption ">\r\n	 \r\n       \r\n	    	  	<a href="Found Out More">\r\n                   <h4>ROYAL LUXURY</h4>\r\n          <div class="text-des">Every visit is a unique experience</div>\r\n         \r\n        </a>\r\n	        </div>\r\n	\r\n	  <div>\r\n      \r\n      </div>\r\n    </div>\r\n   \r\n    <div class="item">\r\n      <img src="/royalhotel/files/4814/5406/5500/slider03.jpg" alt="slider03.jpg">\r\n	  	\r\n      <div class="carousel-caption ">\r\n	 \r\n       \r\n	    	  	<a href="Found Out More">\r\n                   <h4>ROYAL LUXURY</h4>\r\n          <div class="text-des">Every visit is a unique experience</div>\r\n         \r\n        </a>\r\n	        </div>\r\n	\r\n	  <div>\r\n      \r\n      </div>\r\n    </div>\r\n   \r\n	 \r\n  </div>\r\n</div>\r\n  \r\n<script>\r\n	\r\njQuery(document).ready(function() {     \r\n    $("#owl-demo2").owlCarousel({ \r\n		nav : true, // Show next and prev buttons\r\n		smartSpeed : 800,\r\n		items:1,\r\n		autoplay: true, \r\n		loop:true,		 \r\n		// "singleItem:true" is a shortcut for:\r\n		// items : 1,\r\n		// itemsDesktop : false,\r\n		// itemsDesktopSmall : false,\r\n		// itemsTablet: false,\r\n		// itemsMobile : false\r\n		 \r\n	});\r\n \r\n     \r\n});\r\n\r\n\r\n</script>\r\n', 1611919679),
(1, 8, 54, 'Site Logo', '<p><a href="#"><img src="/royalhotel/files/3014/5406/6521/logo.png" alt="logo.png" width="107" height="75" /></a></p>', 1611919340),
(1, 8, 55, 'Header Booking', '<p><a href="#">Book</a></p>', 1611919367),
(1, 9, 24, 'Sidebar', '<h3>Sidebar</h3>', 1611923442),
(1, 9, 25, 'Sidebar', '<p>Everything about concrete5 is completely customizable through the CMS. This is a separate area from the main content on the homepage. You can&nbsp;<a title="Move blocks in concrete5" href="http://www.concrete5.org/documentation/general-topics/blocks-and-areas" target="_blank">drag and drop blocks</a>&nbsp;like this around your layout.</p>', 1611923442),
(1, 9, 26, 'Main', '<h2>Welcome to concrete5!</h2>\n                                        <p>Content Management is easy with concrete5''s in-context editing. Just <a href="/royalhotel/index.php/login/">login</a> and you can change things as you browse your site.</p>\n                                        <p>You can watch videos and learn how to:</p>\n                                        <ul>\n                                        <li><a title="In-context editing CMS" href="http://www.concrete5.org/documentation/general-topics/in-context-editing/" target="_blank">Edit</a>&nbsp;this page.</li>\n                                        <li>Add a <a title="Add a page in concrete5" href="http://www.concrete5.org/documentation/general-topics/add-a-page/" target="_blank">new page</a>.</li>\n                                        <li>Add some basic functionality, like&nbsp;<a title="Add a simple form in concrete5" href="http://www.concrete5.org/documentation/general-topics/add_a_form" target="_blank">a Form</a>.</li>\n                                        <li><a title="add-on marketplace for concrete5" href="http://www.concrete5.org/marketplace/how_to_install_add_ons_and_themes_/" target="_blank">Finding &amp; adding</a>&nbsp;more functionality and themes.</li>\n                                        </ul>\n                                        <p>We''ve taken the liberty to build out the rest of this site with some sample content that will help you learn concrete5. Wander around a bit, or click Dashboard to get to the&nbsp;<a href="/royalhotel/index.php/dashboard/sitemap/">Sitemap</a> and quickly delete the parts you don''t want.</p>', 1611923442),
(1, 9, 53, 'Header Image', '\r\n\r\n<div class="thumb-slider01">\r\n<div id="owl-demo2" class="carousel-inner">\r\n  <!-- Indicators -->\r\n  \r\n\r\n  <!-- Wrapper for slides -->\r\n\r\n  \r\n  \r\n    <div class="item">\r\n      <img src="/royalhotel/files/4214/5406/5510/slider01.jpg" alt="slider01.jpg">\r\n	  	\r\n      <div class="carousel-caption ">\r\n	 \r\n       \r\n	    	  	<a href="Found Out More">\r\n                   <h4>ROYAL LUXURY</h4>\r\n          <div class="text-des">Every visit is a unique experience</div>\r\n         \r\n        </a>\r\n	        </div>\r\n	\r\n	  <div>\r\n      \r\n      </div>\r\n    </div>\r\n   \r\n    <div class="item">\r\n      <img src="/royalhotel/files/7814/5406/5499/slider02.jpg" alt="slider02.jpg">\r\n	  	\r\n      <div class="carousel-caption ">\r\n	 \r\n       \r\n	    	  	<a href="Found Out More">\r\n                   <h4>ROYAL LUXURY</h4>\r\n          <div class="text-des">Every visit is a unique experience</div>\r\n         \r\n        </a>\r\n	        </div>\r\n	\r\n	  <div>\r\n      \r\n      </div>\r\n    </div>\r\n   \r\n    <div class="item">\r\n      <img src="/royalhotel/files/4814/5406/5500/slider03.jpg" alt="slider03.jpg">\r\n	  	\r\n      <div class="carousel-caption ">\r\n	 \r\n       \r\n	    	  	<a href="Found Out More">\r\n                   <h4>ROYAL LUXURY</h4>\r\n          <div class="text-des">Every visit is a unique experience</div>\r\n         \r\n        </a>\r\n	        </div>\r\n	\r\n	  <div>\r\n      \r\n      </div>\r\n    </div>\r\n   \r\n	 \r\n  </div>\r\n</div>\r\n  \r\n<script>\r\n	\r\njQuery(document).ready(function() {     \r\n    $("#owl-demo2").owlCarousel({ \r\n		nav : true, // Show next and prev buttons\r\n		smartSpeed : 800,\r\n		items:1,\r\n		autoplay: true, \r\n		loop:true,		 \r\n		// "singleItem:true" is a shortcut for:\r\n		// items : 1,\r\n		// itemsDesktop : false,\r\n		// itemsDesktopSmall : false,\r\n		// itemsTablet: false,\r\n		// itemsMobile : false\r\n		 \r\n	});\r\n \r\n     \r\n});\r\n\r\n\r\n</script>\r\n', 1611923442),
(1, 9, 54, 'Site Logo', '<p><a href="#"><img src="/royalhotel/files/3014/5406/6521/logo.png" alt="logo.png" width="107" height="75" /></a></p>', 1611923442),
(1, 9, 56, 'Header Booking', '<p><a class="btn-book" href="#">Book</a></p>', 1611923362),
(1, 9, 57, 'Header Booking', '<p><a class="btn-book" href="#">Book</a></p>', 1611923540),
(1, 10, 24, 'Sidebar', '<h3>Sidebar</h3>', 1612155517),
(1, 10, 25, 'Sidebar', '<p>Everything about concrete5 is completely customizable through the CMS. This is a separate area from the main content on the homepage. You can&nbsp;<a title="Move blocks in concrete5" href="http://www.concrete5.org/documentation/general-topics/blocks-and-areas" target="_blank">drag and drop blocks</a>&nbsp;like this around your layout.</p>', 1612155518),
(1, 10, 26, 'Main', '<h2>Welcome to concrete5!</h2>\n                                        <p>Content Management is easy with concrete5''s in-context editing. Just <a href="/royalhotel/index.php/login/">login</a> and you can change things as you browse your site.</p>\n                                        <p>You can watch videos and learn how to:</p>\n                                        <ul>\n                                        <li><a title="In-context editing CMS" href="http://www.concrete5.org/documentation/general-topics/in-context-editing/" target="_blank">Edit</a>&nbsp;this page.</li>\n                                        <li>Add a <a title="Add a page in concrete5" href="http://www.concrete5.org/documentation/general-topics/add-a-page/" target="_blank">new page</a>.</li>\n                                        <li>Add some basic functionality, like&nbsp;<a title="Add a simple form in concrete5" href="http://www.concrete5.org/documentation/general-topics/add_a_form" target="_blank">a Form</a>.</li>\n                                        <li><a title="add-on marketplace for concrete5" href="http://www.concrete5.org/marketplace/how_to_install_add_ons_and_themes_/" target="_blank">Finding &amp; adding</a>&nbsp;more functionality and themes.</li>\n                                        </ul>\n                                        <p>We''ve taken the liberty to build out the rest of this site with some sample content that will help you learn concrete5. Wander around a bit, or click Dashboard to get to the&nbsp;<a href="/royalhotel/index.php/dashboard/sitemap/">Sitemap</a> and quickly delete the parts you don''t want.</p>', 1612155517),
(1, 10, 54, 'Site Logo', '<p><a href="#"><img src="/royalhotel/files/3014/5406/6521/logo.png" alt="logo.png" width="107" height="75" /></a></p>', 1612155517),
(1, 10, 57, 'Header Booking', '<p><a class="btn-book" href="#">Book</a></p>', 1612155517),
(1, 10, 58, 'Header Image', '\r\n\r\n<div class="thumb-slider01">\r\n<div id="owl-demo2" class="carousel-inner">\r\n  <!-- Indicators -->\r\n  \r\n\r\n  <!-- Wrapper for slides -->\r\n\r\n  \r\n  \r\n    <div class="item">\r\n      <img src="/royalhotel/files/4214/5406/5510/slider01.jpg" alt="slider01.jpg">\r\n	  	\r\n      <div class="carousel-caption ">\r\n	 \r\n       \r\n	    	  	\r\n                   <h4>ROYAL LUXURY</h4>\r\n          <div class="text-des">Every visit is a unique experience</div>\r\n         \r\n       <a href="#">Find out More</a>\r\n	        </div>\r\n	\r\n	  <div>\r\n      \r\n      </div>\r\n    </div>\r\n   \r\n    <div class="item">\r\n      <img src="/royalhotel/files/7814/5406/5499/slider02.jpg" alt="slider02.jpg">\r\n	  	\r\n      <div class="carousel-caption ">\r\n	 \r\n       \r\n	    	  	\r\n                   <h4>ROYAL LUXURY</h4>\r\n          <div class="text-des">Every visit is a unique experience</div>\r\n         \r\n       <a href="#">Find out More</a>\r\n	        </div>\r\n	\r\n	  <div>\r\n      \r\n      </div>\r\n    </div>\r\n   \r\n    <div class="item">\r\n      <img src="/royalhotel/files/4814/5406/5500/slider03.jpg" alt="slider03.jpg">\r\n	  	\r\n      <div class="carousel-caption ">\r\n	 \r\n       \r\n	    	  	\r\n                   <h4>ROYAL LUXURY</h4>\r\n          <div class="text-des">Every visit is a unique experience</div>\r\n         \r\n       <a href="#">Find out More</a>\r\n	        </div>\r\n	\r\n	  <div>\r\n      \r\n      </div>\r\n    </div>\r\n   \r\n	 \r\n  </div>\r\n</div>\r\n  \r\n<script>\r\n	\r\njQuery(document).ready(function() {     \r\n    $("#owl-demo2").owlCarousel({ \r\n		nav : true, // Show next and prev buttons\r\n		smartSpeed : 800,\r\n		items:1,\r\n		autoplay: true, \r\n		loop:true,		 \r\n		// "singleItem:true" is a shortcut for:\r\n		// items : 1,\r\n		// itemsDesktop : false,\r\n		// itemsDesktopSmall : false,\r\n		// itemsTablet: false,\r\n		// itemsMobile : false\r\n		 \r\n	});\r\n \r\n     \r\n});\r\n\r\n\r\n</script>\r\n', 1612155508),
(1, 11, 24, 'Sidebar', '<h3>Sidebar</h3>', 1612161858),
(1, 11, 25, 'Sidebar', '<p>Everything about concrete5 is completely customizable through the CMS. This is a separate area from the main content on the homepage. You can&nbsp;<a title="Move blocks in concrete5" href="http://www.concrete5.org/documentation/general-topics/blocks-and-areas" target="_blank">drag and drop blocks</a>&nbsp;like this around your layout.</p>', 1612161858),
(1, 11, 26, 'Main', '<h2>Welcome to concrete5!</h2>\n                                        <p>Content Management is easy with concrete5''s in-context editing. Just <a href="/royalhotel/index.php/login/">login</a> and you can change things as you browse your site.</p>\n                                        <p>You can watch videos and learn how to:</p>\n                                        <ul>\n                                        <li><a title="In-context editing CMS" href="http://www.concrete5.org/documentation/general-topics/in-context-editing/" target="_blank">Edit</a>&nbsp;this page.</li>\n                                        <li>Add a <a title="Add a page in concrete5" href="http://www.concrete5.org/documentation/general-topics/add-a-page/" target="_blank">new page</a>.</li>\n                                        <li>Add some basic functionality, like&nbsp;<a title="Add a simple form in concrete5" href="http://www.concrete5.org/documentation/general-topics/add_a_form" target="_blank">a Form</a>.</li>\n                                        <li><a title="add-on marketplace for concrete5" href="http://www.concrete5.org/marketplace/how_to_install_add_ons_and_themes_/" target="_blank">Finding &amp; adding</a>&nbsp;more functionality and themes.</li>\n                                        </ul>\n                                        <p>We''ve taken the liberty to build out the rest of this site with some sample content that will help you learn concrete5. Wander around a bit, or click Dashboard to get to the&nbsp;<a href="/royalhotel/index.php/dashboard/sitemap/">Sitemap</a> and quickly delete the parts you don''t want.</p>', 1612161858),
(1, 11, 54, 'Site Logo', '<p><a href="#"><img src="/royalhotel/files/3014/5406/6521/logo.png" alt="logo.png" width="107" height="75" /></a></p>', 1612161858),
(1, 11, 57, 'Header Booking', '<p><a class="btn-book" href="#">Book</a></p>', 1612161858),
(1, 11, 58, 'Header Image', '\r\n\r\n<div class="thumb-slider01">\r\n<div id="owl-demo2" class="carousel-inner">\r\n  <!-- Indicators -->\r\n  \r\n\r\n  <!-- Wrapper for slides -->\r\n\r\n  \r\n  \r\n    <div class="item">\r\n      <img src="/royalhotel/files/4214/5406/5510/slider01.jpg" alt="slider01.jpg">\r\n	  	\r\n      <div class="carousel-caption ">\r\n	 \r\n       \r\n	    	  	\r\n                   <h4>ROYAL LUXURY</h4>\r\n          <div class="text-des">Every visit is a unique experience</div>\r\n         \r\n       <a class="read-more" href="#">Find out More</a>\r\n	        </div>\r\n	\r\n	  <div>\r\n      \r\n      </div>\r\n    </div>\r\n   \r\n    <div class="item">\r\n      <img src="/royalhotel/files/7814/5406/5499/slider02.jpg" alt="slider02.jpg">\r\n	  	\r\n      <div class="carousel-caption ">\r\n	 \r\n       \r\n	    	  	\r\n                   <h4>ROYAL LUXURY</h4>\r\n          <div class="text-des">Every visit is a unique experience</div>\r\n         \r\n       <a class="read-more" href="#">Find out More</a>\r\n	        </div>\r\n	\r\n	  <div>\r\n      \r\n      </div>\r\n    </div>\r\n   \r\n    <div class="item">\r\n      <img src="/royalhotel/files/4814/5406/5500/slider03.jpg" alt="slider03.jpg">\r\n	  	\r\n      <div class="carousel-caption ">\r\n	 \r\n       \r\n	    	  	\r\n                   <h4>ROYAL LUXURY</h4>\r\n          <div class="text-des">Every visit is a unique experience</div>\r\n         \r\n       <a class="read-more" href="#">Find out More</a>\r\n	        </div>\r\n	\r\n	  <div>\r\n      \r\n      </div>\r\n    </div>\r\n   \r\n	 \r\n  </div>\r\n</div>\r\n  \r\n<script>\r\n	\r\njQuery(document).ready(function() {     \r\n    $("#owl-demo2").owlCarousel({ \r\n		nav : true, // Show next and prev buttons\r\n		smartSpeed : 800,\r\n		items:1,\r\n		autoplay: true, \r\n		loop:true,		 \r\n		// "singleItem:true" is a shortcut for:\r\n		// items : 1,\r\n		// itemsDesktop : false,\r\n		// itemsDesktopSmall : false,\r\n		// itemsTablet: false,\r\n		// itemsMobile : false\r\n		 \r\n	});\r\n \r\n     \r\n});\r\n\r\n\r\n</script>\r\n', 1612161858),
(1, 11, 59, 'Body Text', '<h1><span>YOU</span>are the most important part of our Royal story</h1>\r\n<p>Poemata reddit, scire velim, chartis pretium quotus arroget annus scriptor abhinc annos centum qui decidit, inter perfectos veteresque referri debet an inter vilis atque novos. Excludat iurgia finis, est vetus atque probus, centum qui perficit annos. Quid, qui deperiit minor uno mense vel anno, inter quos referendus erit. Iste quidem veteres inter ponetur honeste, qui vel mense brevi vel toto est iunior anno. Utor permisso, caudaeque pilos ut equinae paulatim vello unum, demo etiam unum, dum cadat elusus ratione ruentis acervi, qui redit in fastos et virtutem aestimat annis miraturque nihil nisi quod Libitina sacravit.</p>', 1612161853),
(1, 12, 24, 'Sidebar', '<h3>Sidebar</h3>', 1612164693),
(1, 12, 25, 'Sidebar', '<p>Everything about concrete5 is completely customizable through the CMS. This is a separate area from the main content on the homepage. You can&nbsp;<a title="Move blocks in concrete5" href="http://www.concrete5.org/documentation/general-topics/blocks-and-areas" target="_blank">drag and drop blocks</a>&nbsp;like this around your layout.</p>', 1612164693),
(1, 12, 26, 'Main', '<h2>Welcome to concrete5!</h2>\n                                        <p>Content Management is easy with concrete5''s in-context editing. Just <a href="/royalhotel/index.php/login/">login</a> and you can change things as you browse your site.</p>\n                                        <p>You can watch videos and learn how to:</p>\n                                        <ul>\n                                        <li><a title="In-context editing CMS" href="http://www.concrete5.org/documentation/general-topics/in-context-editing/" target="_blank">Edit</a>&nbsp;this page.</li>\n                                        <li>Add a <a title="Add a page in concrete5" href="http://www.concrete5.org/documentation/general-topics/add-a-page/" target="_blank">new page</a>.</li>\n                                        <li>Add some basic functionality, like&nbsp;<a title="Add a simple form in concrete5" href="http://www.concrete5.org/documentation/general-topics/add_a_form" target="_blank">a Form</a>.</li>\n                                        <li><a title="add-on marketplace for concrete5" href="http://www.concrete5.org/marketplace/how_to_install_add_ons_and_themes_/" target="_blank">Finding &amp; adding</a>&nbsp;more functionality and themes.</li>\n                                        </ul>\n                                        <p>We''ve taken the liberty to build out the rest of this site with some sample content that will help you learn concrete5. Wander around a bit, or click Dashboard to get to the&nbsp;<a href="/royalhotel/index.php/dashboard/sitemap/">Sitemap</a> and quickly delete the parts you don''t want.</p>', 1612164693),
(1, 12, 54, 'Site Logo', '<p><a href="#"><img src="/royalhotel/files/3014/5406/6521/logo.png" alt="logo.png" width="107" height="75" /></a></p>', 1612164693),
(1, 12, 57, 'Header Booking', '<p><a class="btn-book" href="#">Book</a></p>', 1612164693),
(1, 12, 58, 'Header Image', '\r\n\r\n<div class="thumb-slider01">\r\n<div id="owl-demo2" class="carousel-inner">\r\n  <!-- Indicators -->\r\n  \r\n\r\n  <!-- Wrapper for slides -->\r\n\r\n  \r\n  \r\n    <div class="item">\r\n      <img src="/royalhotel/files/4214/5406/5510/slider01.jpg" alt="slider01.jpg">\r\n	  	\r\n      <div class="carousel-caption ">\r\n	 \r\n       \r\n	    	  	\r\n                   <h4>ROYAL LUXURY</h4>\r\n          <div class="text-des">Every visit is a unique experience</div>\r\n         \r\n       <a class="read-more" href="#">Find out More</a>\r\n	        </div>\r\n	\r\n	  <div>\r\n      \r\n      </div>\r\n    </div>\r\n   \r\n    <div class="item">\r\n      <img src="/royalhotel/files/7814/5406/5499/slider02.jpg" alt="slider02.jpg">\r\n	  	\r\n      <div class="carousel-caption ">\r\n	 \r\n       \r\n	    	  	\r\n                   <h4>ROYAL LUXURY</h4>\r\n          <div class="text-des">Every visit is a unique experience</div>\r\n         \r\n       <a class="read-more" href="#">Find out More</a>\r\n	        </div>\r\n	\r\n	  <div>\r\n      \r\n      </div>\r\n    </div>\r\n   \r\n    <div class="item">\r\n      <img src="/royalhotel/files/4814/5406/5500/slider03.jpg" alt="slider03.jpg">\r\n	  	\r\n      <div class="carousel-caption ">\r\n	 \r\n       \r\n	    	  	\r\n                   <h4>ROYAL LUXURY</h4>\r\n          <div class="text-des">Every visit is a unique experience</div>\r\n         \r\n       <a class="read-more" href="#">Find out More</a>\r\n	        </div>\r\n	\r\n	  <div>\r\n      \r\n      </div>\r\n    </div>\r\n   \r\n	 \r\n  </div>\r\n</div>\r\n  \r\n<script>\r\n	\r\njQuery(document).ready(function() {     \r\n    $("#owl-demo2").owlCarousel({ \r\n		nav : true, // Show next and prev buttons\r\n		smartSpeed : 800,\r\n		items:1,\r\n		autoplay: true, \r\n		loop:true,		 \r\n		// "singleItem:true" is a shortcut for:\r\n		// items : 1,\r\n		// itemsDesktop : false,\r\n		// itemsDesktopSmall : false,\r\n		// itemsTablet: false,\r\n		// itemsMobile : false\r\n		 \r\n	});\r\n \r\n     \r\n});\r\n\r\n\r\n</script>\r\n', 1612164693),
(1, 12, 59, 'Body Text', '<h1><span>YOU</span>are the most important part of our Royal story</h1>\r\n<p>Poemata reddit, scire velim, chartis pretium quotus arroget annus scriptor abhinc annos centum qui decidit, inter perfectos veteresque referri debet an inter vilis atque novos. Excludat iurgia finis, est vetus atque probus, centum qui perficit annos. Quid, qui deperiit minor uno mense vel anno, inter quos referendus erit. Iste quidem veteres inter ponetur honeste, qui vel mense brevi vel toto est iunior anno. Utor permisso, caudaeque pilos ut equinae paulatim vello unum, demo etiam unum, dum cadat elusus ratione ruentis acervi, qui redit in fastos et virtutem aestimat annis miraturque nihil nisi quod Libitina sacravit.</p>', 1612164693),
(1, 12, 60, 'Body Banner01', '<p><img src="/royalhotel/files/5714/5431/1785/banner01.jpg" alt="banner01.jpg" width="424" height="508" /></p>\r\n<p><a href="#">Find Out More</a></p>', 1612164663),
(1, 12, 61, 'Body Banner02', '<p><img src="/royalhotel/files/8414/5431/1786/banner02.jpg" alt="banner02.jpg" width="424" height="508" /></p>\r\n<p><a href="#">Find Out More</a></p>', 1612164675),
(1, 12, 62, 'Body Banner03', '<p><img src="/royalhotel/files/4714/5431/1787/banner03.jpg" alt="banner03.jpg" width="424" height="508" /></p>\r\n<p><a href="#">Find Out More</a></p>', 1612164685),
(1, 13, 24, 'Sidebar', '<h3>Sidebar</h3>', 1612170799),
(1, 13, 25, 'Sidebar', '<p>Everything about concrete5 is completely customizable through the CMS. This is a separate area from the main content on the homepage. You can&nbsp;<a title="Move blocks in concrete5" href="http://www.concrete5.org/documentation/general-topics/blocks-and-areas" target="_blank">drag and drop blocks</a>&nbsp;like this around your layout.</p>', 1612170799),
(1, 13, 26, 'Main', '<h2>Welcome to concrete5!</h2>\n                                        <p>Content Management is easy with concrete5''s in-context editing. Just <a href="/royalhotel/index.php/login/">login</a> and you can change things as you browse your site.</p>\n                                        <p>You can watch videos and learn how to:</p>\n                                        <ul>\n                                        <li><a title="In-context editing CMS" href="http://www.concrete5.org/documentation/general-topics/in-context-editing/" target="_blank">Edit</a>&nbsp;this page.</li>\n                                        <li>Add a <a title="Add a page in concrete5" href="http://www.concrete5.org/documentation/general-topics/add-a-page/" target="_blank">new page</a>.</li>\n                                        <li>Add some basic functionality, like&nbsp;<a title="Add a simple form in concrete5" href="http://www.concrete5.org/documentation/general-topics/add_a_form" target="_blank">a Form</a>.</li>\n                                        <li><a title="add-on marketplace for concrete5" href="http://www.concrete5.org/marketplace/how_to_install_add_ons_and_themes_/" target="_blank">Finding &amp; adding</a>&nbsp;more functionality and themes.</li>\n                                        </ul>\n                                        <p>We''ve taken the liberty to build out the rest of this site with some sample content that will help you learn concrete5. Wander around a bit, or click Dashboard to get to the&nbsp;<a href="/royalhotel/index.php/dashboard/sitemap/">Sitemap</a> and quickly delete the parts you don''t want.</p>', 1612170799),
(1, 13, 54, 'Site Logo', '<p><a href="#"><img src="/royalhotel/files/3014/5406/6521/logo.png" alt="logo.png" width="107" height="75" /></a></p>', 1612170798),
(1, 13, 57, 'Header Booking', '<p><a class="btn-book" href="#">Book</a></p>', 1612170798),
(1, 13, 58, 'Header Image', '\r\n\r\n<div class="thumb-slider01">\r\n<div id="owl-demo2" class="carousel-inner">\r\n  <!-- Indicators -->\r\n  \r\n\r\n  <!-- Wrapper for slides -->\r\n\r\n  \r\n  \r\n    <div class="item">\r\n      <img src="/royalhotel/files/4214/5406/5510/slider01.jpg" alt="slider01.jpg">\r\n	  	\r\n      <div class="carousel-caption ">\r\n	 \r\n       \r\n	    	  	\r\n                   <h4>ROYAL LUXURY</h4>\r\n          <div class="text-des">Every visit is a unique experience</div>\r\n         \r\n       <a class="read-more" href="#">Find out More</a>\r\n	        </div>\r\n	\r\n	  <div>\r\n      \r\n      </div>\r\n    </div>\r\n   \r\n    <div class="item">\r\n      <img src="/royalhotel/files/7814/5406/5499/slider02.jpg" alt="slider02.jpg">\r\n	  	\r\n      <div class="carousel-caption ">\r\n	 \r\n       \r\n	    	  	\r\n                   <h4>ROYAL LUXURY</h4>\r\n          <div class="text-des">Every visit is a unique experience</div>\r\n         \r\n       <a class="read-more" href="#">Find out More</a>\r\n	        </div>\r\n	\r\n	  <div>\r\n      \r\n      </div>\r\n    </div>\r\n   \r\n    <div class="item">\r\n      <img src="/royalhotel/files/4814/5406/5500/slider03.jpg" alt="slider03.jpg">\r\n	  	\r\n      <div class="carousel-caption ">\r\n	 \r\n       \r\n	    	  	\r\n                   <h4>ROYAL LUXURY</h4>\r\n          <div class="text-des">Every visit is a unique experience</div>\r\n         \r\n       <a class="read-more" href="#">Find out More</a>\r\n	        </div>\r\n	\r\n	  <div>\r\n      \r\n      </div>\r\n    </div>\r\n   \r\n	 \r\n  </div>\r\n</div>\r\n  \r\n<script>\r\n	\r\njQuery(document).ready(function() {     \r\n    $("#owl-demo2").owlCarousel({ \r\n		nav : true, // Show next and prev buttons\r\n		smartSpeed : 800,\r\n		items:1,\r\n		autoplay: true, \r\n		loop:true,		 \r\n		// "singleItem:true" is a shortcut for:\r\n		// items : 1,\r\n		// itemsDesktop : false,\r\n		// itemsDesktopSmall : false,\r\n		// itemsTablet: false,\r\n		// itemsMobile : false\r\n		 \r\n	});\r\n \r\n     \r\n});\r\n\r\n\r\n</script>\r\n', 1612170798),
(1, 13, 59, 'Body Text', '<h1><span>YOU</span>are the most important part of our Royal story</h1>\r\n<p>Poemata reddit, scire velim, chartis pretium quotus arroget annus scriptor abhinc annos centum qui decidit, inter perfectos veteresque referri debet an inter vilis atque novos. Excludat iurgia finis, est vetus atque probus, centum qui perficit annos. Quid, qui deperiit minor uno mense vel anno, inter quos referendus erit. Iste quidem veteres inter ponetur honeste, qui vel mense brevi vel toto est iunior anno. Utor permisso, caudaeque pilos ut equinae paulatim vello unum, demo etiam unum, dum cadat elusus ratione ruentis acervi, qui redit in fastos et virtutem aestimat annis miraturque nihil nisi quod Libitina sacravit.</p>', 1612170799),
(1, 13, 60, 'Body Banner01', '<p><img src="/royalhotel/files/5714/5431/1785/banner01.jpg" alt="banner01.jpg" width="424" height="508" /></p>\r\n<p><a href="#">Find Out More</a></p>', 1612170799),
(1, 13, 61, 'Body Banner02', '<p><img src="/royalhotel/files/8414/5431/1786/banner02.jpg" alt="banner02.jpg" width="424" height="508" /></p>\r\n<p><a href="#">Find Out More</a></p>', 1612170799),
(1, 13, 62, 'Body Banner03', '<p><img src="/royalhotel/files/4714/5431/1787/banner03.jpg" alt="banner03.jpg" width="424" height="508" /></p>\r\n<p><a href="#">Find Out More</a></p>', 1612170799),
(1, 13, 63, 'Map Heading', '<h2>Location</h2>', 1612170625),
(1, 13, 64, 'Location Map', '<p><iframe style="border: 0;" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2222.128011569134!2d-3.9484010839309414!3d56.1548912683754!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x48888817de862d1f%3A0xd0e5b2a7c42b7868!2sRoyal+Hotel!5e0!3m2!1sen!2sin!4v1454317956293" frameborder="0" width="100%" height="484"></iframe></p>', 1612170789),
(1, 14, 24, 'Sidebar', '<h3>Sidebar</h3>', 1612171251),
(1, 14, 25, 'Sidebar', '<p>Everything about concrete5 is completely customizable through the CMS. This is a separate area from the main content on the homepage. You can&nbsp;<a title="Move blocks in concrete5" href="http://www.concrete5.org/documentation/general-topics/blocks-and-areas" target="_blank">drag and drop blocks</a>&nbsp;like this around your layout.</p>', 1612171251),
(1, 14, 26, 'Main', '<h2>Welcome to concrete5!</h2>\n                                        <p>Content Management is easy with concrete5''s in-context editing. Just <a href="/royalhotel/index.php/login/">login</a> and you can change things as you browse your site.</p>\n                                        <p>You can watch videos and learn how to:</p>\n                                        <ul>\n                                        <li><a title="In-context editing CMS" href="http://www.concrete5.org/documentation/general-topics/in-context-editing/" target="_blank">Edit</a>&nbsp;this page.</li>\n                                        <li>Add a <a title="Add a page in concrete5" href="http://www.concrete5.org/documentation/general-topics/add-a-page/" target="_blank">new page</a>.</li>\n                                        <li>Add some basic functionality, like&nbsp;<a title="Add a simple form in concrete5" href="http://www.concrete5.org/documentation/general-topics/add_a_form" target="_blank">a Form</a>.</li>\n                                        <li><a title="add-on marketplace for concrete5" href="http://www.concrete5.org/marketplace/how_to_install_add_ons_and_themes_/" target="_blank">Finding &amp; adding</a>&nbsp;more functionality and themes.</li>\n                                        </ul>\n                                        <p>We''ve taken the liberty to build out the rest of this site with some sample content that will help you learn concrete5. Wander around a bit, or click Dashboard to get to the&nbsp;<a href="/royalhotel/index.php/dashboard/sitemap/">Sitemap</a> and quickly delete the parts you don''t want.</p>', 1612171251),
(1, 14, 54, 'Site Logo', '<p><a href="#"><img src="/royalhotel/files/3014/5406/6521/logo.png" alt="logo.png" width="107" height="75" /></a></p>', 1612171250),
(1, 14, 57, 'Header Booking', '<p><a class="btn-book" href="#">Book</a></p>', 1612171250),
(1, 14, 58, 'Header Image', '\r\n\r\n<div class="thumb-slider01">\r\n<div id="owl-demo2" class="carousel-inner">\r\n  <!-- Indicators -->\r\n  \r\n\r\n  <!-- Wrapper for slides -->\r\n\r\n  \r\n  \r\n    <div class="item">\r\n      <img src="/royalhotel/files/4214/5406/5510/slider01.jpg" alt="slider01.jpg">\r\n	  	\r\n      <div class="carousel-caption ">\r\n	 \r\n       \r\n	    	  	\r\n                   <h4>ROYAL LUXURY</h4>\r\n          <div class="text-des">Every visit is a unique experience</div>\r\n         \r\n       <a class="read-more" href="#">Find out More</a>\r\n	        </div>\r\n	\r\n	  <div>\r\n      \r\n      </div>\r\n    </div>\r\n   \r\n    <div class="item">\r\n      <img src="/royalhotel/files/7814/5406/5499/slider02.jpg" alt="slider02.jpg">\r\n	  	\r\n      <div class="carousel-caption ">\r\n	 \r\n       \r\n	    	  	\r\n                   <h4>ROYAL LUXURY</h4>\r\n          <div class="text-des">Every visit is a unique experience</div>\r\n         \r\n       <a class="read-more" href="#">Find out More</a>\r\n	        </div>\r\n	\r\n	  <div>\r\n      \r\n      </div>\r\n    </div>\r\n   \r\n    <div class="item">\r\n      <img src="/royalhotel/files/4814/5406/5500/slider03.jpg" alt="slider03.jpg">\r\n	  	\r\n      <div class="carousel-caption ">\r\n	 \r\n       \r\n	    	  	\r\n                   <h4>ROYAL LUXURY</h4>\r\n          <div class="text-des">Every visit is a unique experience</div>\r\n         \r\n       <a class="read-more" href="#">Find out More</a>\r\n	        </div>\r\n	\r\n	  <div>\r\n      \r\n      </div>\r\n    </div>\r\n   \r\n	 \r\n  </div>\r\n</div>\r\n  \r\n<script>\r\n	\r\njQuery(document).ready(function() {     \r\n    $("#owl-demo2").owlCarousel({ \r\n		nav : true, // Show next and prev buttons\r\n		smartSpeed : 800,\r\n		items:1,\r\n		autoplay: true, \r\n		loop:true,		 \r\n		// "singleItem:true" is a shortcut for:\r\n		// items : 1,\r\n		// itemsDesktop : false,\r\n		// itemsDesktopSmall : false,\r\n		// itemsTablet: false,\r\n		// itemsMobile : false\r\n		 \r\n	});\r\n \r\n     \r\n});\r\n\r\n\r\n</script>\r\n', 1612171250),
(1, 14, 59, 'Body Text', '<h1><span>YOU</span>are the most important part of our Royal story</h1>\r\n<p>Poemata reddit, scire velim, chartis pretium quotus arroget annus scriptor abhinc annos centum qui decidit, inter perfectos veteresque referri debet an inter vilis atque novos. Excludat iurgia finis, est vetus atque probus, centum qui perficit annos. Quid, qui deperiit minor uno mense vel anno, inter quos referendus erit. Iste quidem veteres inter ponetur honeste, qui vel mense brevi vel toto est iunior anno. Utor permisso, caudaeque pilos ut equinae paulatim vello unum, demo etiam unum, dum cadat elusus ratione ruentis acervi, qui redit in fastos et virtutem aestimat annis miraturque nihil nisi quod Libitina sacravit.</p>', 1612171250),
(1, 14, 60, 'Body Banner01', '<p><img src="/royalhotel/files/5714/5431/1785/banner01.jpg" alt="banner01.jpg" width="424" height="508" /></p>\r\n<p><a href="#">Find Out More</a></p>', 1612171251),
(1, 14, 61, 'Body Banner02', '<p><img src="/royalhotel/files/8414/5431/1786/banner02.jpg" alt="banner02.jpg" width="424" height="508" /></p>\r\n<p><a href="#">Find Out More</a></p>', 1612171251),
(1, 14, 62, 'Body Banner03', '<p><img src="/royalhotel/files/4714/5431/1787/banner03.jpg" alt="banner03.jpg" width="424" height="508" /></p>\r\n<p><a href="#">Find Out More</a></p>', 1612171251),
(1, 14, 63, 'Map Heading', '<h2>Location</h2>', 1612171251),
(1, 14, 65, 'Location Map', '<p><iframe style="border: 0;" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2222.128011569134!2d-3.9484010839309414!3d56.1548912683754!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x48888817de862d1f%3A0xd0e5b2a7c42b7868!2sRoyal+Hotel!5e0!3m2!1sen!2sin!4v1454317956293" frameborder="0" width="100%" height="484"></iframe></p>', 1612171168),
(1, 14, 66, 'Map Description', '<p>Located in the heart of Scotland, our luxury hotel is ideally situated for retium Golf arroget Rambling scriptor abhinc annos centum qui decidit, inter perfectos veteresque referri debet an inter vilis atque novos. Excludat iurgia finis, est vetus atque probus,</p>', 1612171354),
(1, 15, 24, 'Sidebar', '<h3>Sidebar</h3>', 1612171458),
(1, 15, 25, 'Sidebar', '<p>Everything about concrete5 is completely customizable through the CMS. This is a separate area from the main content on the homepage. You can&nbsp;<a title="Move blocks in concrete5" href="http://www.concrete5.org/documentation/general-topics/blocks-and-areas" target="_blank">drag and drop blocks</a>&nbsp;like this around your layout.</p>', 1612171458),
(1, 15, 26, 'Main', '<h2>Welcome to concrete5!</h2>\n                                        <p>Content Management is easy with concrete5''s in-context editing. Just <a href="/royalhotel/index.php/login/">login</a> and you can change things as you browse your site.</p>\n                                        <p>You can watch videos and learn how to:</p>\n                                        <ul>\n                                        <li><a title="In-context editing CMS" href="http://www.concrete5.org/documentation/general-topics/in-context-editing/" target="_blank">Edit</a>&nbsp;this page.</li>\n                                        <li>Add a <a title="Add a page in concrete5" href="http://www.concrete5.org/documentation/general-topics/add-a-page/" target="_blank">new page</a>.</li>\n                                        <li>Add some basic functionality, like&nbsp;<a title="Add a simple form in concrete5" href="http://www.concrete5.org/documentation/general-topics/add_a_form" target="_blank">a Form</a>.</li>\n                                        <li><a title="add-on marketplace for concrete5" href="http://www.concrete5.org/marketplace/how_to_install_add_ons_and_themes_/" target="_blank">Finding &amp; adding</a>&nbsp;more functionality and themes.</li>\n                                        </ul>\n                                        <p>We''ve taken the liberty to build out the rest of this site with some sample content that will help you learn concrete5. Wander around a bit, or click Dashboard to get to the&nbsp;<a href="/royalhotel/index.php/dashboard/sitemap/">Sitemap</a> and quickly delete the parts you don''t want.</p>', 1612171458),
(1, 15, 54, 'Site Logo', '<p><a href="#"><img src="/royalhotel/files/3014/5406/6521/logo.png" alt="logo.png" width="107" height="75" /></a></p>', 1612171457),
(1, 15, 57, 'Header Booking', '<p><a class="btn-book" href="#">Book</a></p>', 1612171457);
INSERT INTO `CollectionVersionBlocksOutputCache` (`cID`, `cvID`, `bID`, `arHandle`, `btCachedBlockOutput`, `btCachedBlockOutputExpires`) VALUES
(1, 15, 58, 'Header Image', '\r\n\r\n<div class="thumb-slider01">\r\n<div id="owl-demo2" class="carousel-inner">\r\n  <!-- Indicators -->\r\n  \r\n\r\n  <!-- Wrapper for slides -->\r\n\r\n  \r\n  \r\n    <div class="item">\r\n      <img src="/royalhotel/files/4214/5406/5510/slider01.jpg" alt="slider01.jpg">\r\n	  	\r\n      <div class="carousel-caption ">\r\n	 \r\n       \r\n	    	  	\r\n                   <h4>ROYAL LUXURY</h4>\r\n          <div class="text-des">Every visit is a unique experience</div>\r\n         \r\n       <a class="read-more" href="#">Find out More</a>\r\n	        </div>\r\n	\r\n	  <div>\r\n      \r\n      </div>\r\n    </div>\r\n   \r\n    <div class="item">\r\n      <img src="/royalhotel/files/7814/5406/5499/slider02.jpg" alt="slider02.jpg">\r\n	  	\r\n      <div class="carousel-caption ">\r\n	 \r\n       \r\n	    	  	\r\n                   <h4>ROYAL LUXURY</h4>\r\n          <div class="text-des">Every visit is a unique experience</div>\r\n         \r\n       <a class="read-more" href="#">Find out More</a>\r\n	        </div>\r\n	\r\n	  <div>\r\n      \r\n      </div>\r\n    </div>\r\n   \r\n    <div class="item">\r\n      <img src="/royalhotel/files/4814/5406/5500/slider03.jpg" alt="slider03.jpg">\r\n	  	\r\n      <div class="carousel-caption ">\r\n	 \r\n       \r\n	    	  	\r\n                   <h4>ROYAL LUXURY</h4>\r\n          <div class="text-des">Every visit is a unique experience</div>\r\n         \r\n       <a class="read-more" href="#">Find out More</a>\r\n	        </div>\r\n	\r\n	  <div>\r\n      \r\n      </div>\r\n    </div>\r\n   \r\n	 \r\n  </div>\r\n</div>\r\n  \r\n<script>\r\n	\r\njQuery(document).ready(function() {     \r\n    $("#owl-demo2").owlCarousel({ \r\n		nav : true, // Show next and prev buttons\r\n		smartSpeed : 800,\r\n		items:1,\r\n		autoplay: true, \r\n		loop:true,		 \r\n		// "singleItem:true" is a shortcut for:\r\n		// items : 1,\r\n		// itemsDesktop : false,\r\n		// itemsDesktopSmall : false,\r\n		// itemsTablet: false,\r\n		// itemsMobile : false\r\n		 \r\n	});\r\n \r\n     \r\n});\r\n\r\n\r\n</script>\r\n', 1612171457),
(1, 15, 59, 'Body Text', '<h1><span>YOU</span>are the most important part of our Royal story</h1>\r\n<p>Poemata reddit, scire velim, chartis pretium quotus arroget annus scriptor abhinc annos centum qui decidit, inter perfectos veteresque referri debet an inter vilis atque novos. Excludat iurgia finis, est vetus atque probus, centum qui perficit annos. Quid, qui deperiit minor uno mense vel anno, inter quos referendus erit. Iste quidem veteres inter ponetur honeste, qui vel mense brevi vel toto est iunior anno. Utor permisso, caudaeque pilos ut equinae paulatim vello unum, demo etiam unum, dum cadat elusus ratione ruentis acervi, qui redit in fastos et virtutem aestimat annis miraturque nihil nisi quod Libitina sacravit.</p>', 1612171457),
(1, 15, 60, 'Body Banner01', '<p><img src="/royalhotel/files/5714/5431/1785/banner01.jpg" alt="banner01.jpg" width="424" height="508" /></p>\r\n<p><a href="#">Find Out More</a></p>', 1612171457),
(1, 15, 61, 'Body Banner02', '<p><img src="/royalhotel/files/8414/5431/1786/banner02.jpg" alt="banner02.jpg" width="424" height="508" /></p>\r\n<p><a href="#">Find Out More</a></p>', 1612171457),
(1, 15, 62, 'Body Banner03', '<p><img src="/royalhotel/files/4714/5431/1787/banner03.jpg" alt="banner03.jpg" width="424" height="508" /></p>\r\n<p><a href="#">Find Out More</a></p>', 1612171457),
(1, 15, 63, 'Map Heading', '<h2>Location</h2>', 1612171457),
(1, 15, 65, 'Location Map', '<p><iframe style="border: 0;" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2222.128011569134!2d-3.9484010839309414!3d56.1548912683754!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x48888817de862d1f%3A0xd0e5b2a7c42b7868!2sRoyal+Hotel!5e0!3m2!1sen!2sin!4v1454317956293" frameborder="0" width="100%" height="484"></iframe></p>', 1612171458),
(1, 15, 67, 'Map Description', '<p>Located in the heart of Scotland, our luxury hotel is ideally situated for retium Golf arroget Rambling scriptor abhinc annos centum qui decidit, inter perfectos veteresque referri debet an inter vilis atque novos. Excludat iurgia finis, est vetus atque probus,</p>\r\n<p><a href="#">See &amp; Do</a></p>', 1612171434),
(1, 16, 24, 'Sidebar', '<h3>Sidebar</h3>', 1612171755),
(1, 16, 25, 'Sidebar', '<p>Everything about concrete5 is completely customizable through the CMS. This is a separate area from the main content on the homepage. You can&nbsp;<a title="Move blocks in concrete5" href="http://www.concrete5.org/documentation/general-topics/blocks-and-areas" target="_blank">drag and drop blocks</a>&nbsp;like this around your layout.</p>', 1612171755),
(1, 16, 26, 'Main', '<h2>Welcome to concrete5!</h2>\n                                        <p>Content Management is easy with concrete5''s in-context editing. Just <a href="/royalhotel/index.php/login/">login</a> and you can change things as you browse your site.</p>\n                                        <p>You can watch videos and learn how to:</p>\n                                        <ul>\n                                        <li><a title="In-context editing CMS" href="http://www.concrete5.org/documentation/general-topics/in-context-editing/" target="_blank">Edit</a>&nbsp;this page.</li>\n                                        <li>Add a <a title="Add a page in concrete5" href="http://www.concrete5.org/documentation/general-topics/add-a-page/" target="_blank">new page</a>.</li>\n                                        <li>Add some basic functionality, like&nbsp;<a title="Add a simple form in concrete5" href="http://www.concrete5.org/documentation/general-topics/add_a_form" target="_blank">a Form</a>.</li>\n                                        <li><a title="add-on marketplace for concrete5" href="http://www.concrete5.org/marketplace/how_to_install_add_ons_and_themes_/" target="_blank">Finding &amp; adding</a>&nbsp;more functionality and themes.</li>\n                                        </ul>\n                                        <p>We''ve taken the liberty to build out the rest of this site with some sample content that will help you learn concrete5. Wander around a bit, or click Dashboard to get to the&nbsp;<a href="/royalhotel/index.php/dashboard/sitemap/">Sitemap</a> and quickly delete the parts you don''t want.</p>', 1612171755),
(1, 16, 54, 'Site Logo', '<p><a href="#"><img src="/royalhotel/files/3014/5406/6521/logo.png" alt="logo.png" width="107" height="75" /></a></p>', 1612171755),
(1, 16, 57, 'Header Booking', '<p><a class="btn-book" href="#">Book</a></p>', 1612171755),
(1, 16, 58, 'Header Image', '\r\n\r\n<div class="thumb-slider01">\r\n<div id="owl-demo2" class="carousel-inner">\r\n  <!-- Indicators -->\r\n  \r\n\r\n  <!-- Wrapper for slides -->\r\n\r\n  \r\n  \r\n    <div class="item">\r\n      <img src="/royalhotel/files/4214/5406/5510/slider01.jpg" alt="slider01.jpg">\r\n	  	\r\n      <div class="carousel-caption ">\r\n	 \r\n       \r\n	    	  	\r\n                   <h4>ROYAL LUXURY</h4>\r\n          <div class="text-des">Every visit is a unique experience</div>\r\n         \r\n       <a class="read-more" href="#">Find out More</a>\r\n	        </div>\r\n	\r\n	  <div>\r\n      \r\n      </div>\r\n    </div>\r\n   \r\n    <div class="item">\r\n      <img src="/royalhotel/files/7814/5406/5499/slider02.jpg" alt="slider02.jpg">\r\n	  	\r\n      <div class="carousel-caption ">\r\n	 \r\n       \r\n	    	  	\r\n                   <h4>ROYAL LUXURY</h4>\r\n          <div class="text-des">Every visit is a unique experience</div>\r\n         \r\n       <a class="read-more" href="#">Find out More</a>\r\n	        </div>\r\n	\r\n	  <div>\r\n      \r\n      </div>\r\n    </div>\r\n   \r\n    <div class="item">\r\n      <img src="/royalhotel/files/4814/5406/5500/slider03.jpg" alt="slider03.jpg">\r\n	  	\r\n      <div class="carousel-caption ">\r\n	 \r\n       \r\n	    	  	\r\n                   <h4>ROYAL LUXURY</h4>\r\n          <div class="text-des">Every visit is a unique experience</div>\r\n         \r\n       <a class="read-more" href="#">Find out More</a>\r\n	        </div>\r\n	\r\n	  <div>\r\n      \r\n      </div>\r\n    </div>\r\n   \r\n	 \r\n  </div>\r\n</div>\r\n  \r\n<script>\r\n	\r\njQuery(document).ready(function() {     \r\n    $("#owl-demo2").owlCarousel({ \r\n		nav : true, // Show next and prev buttons\r\n		smartSpeed : 800,\r\n		items:1,\r\n		autoplay: true, \r\n		loop:true,		 \r\n		// "singleItem:true" is a shortcut for:\r\n		// items : 1,\r\n		// itemsDesktop : false,\r\n		// itemsDesktopSmall : false,\r\n		// itemsTablet: false,\r\n		// itemsMobile : false\r\n		 \r\n	});\r\n \r\n     \r\n});\r\n\r\n\r\n</script>\r\n', 1612171755),
(1, 16, 59, 'Body Text', '<h1><span>YOU</span>are the most important part of our Royal story</h1>\r\n<p>Poemata reddit, scire velim, chartis pretium quotus arroget annus scriptor abhinc annos centum qui decidit, inter perfectos veteresque referri debet an inter vilis atque novos. Excludat iurgia finis, est vetus atque probus, centum qui perficit annos. Quid, qui deperiit minor uno mense vel anno, inter quos referendus erit. Iste quidem veteres inter ponetur honeste, qui vel mense brevi vel toto est iunior anno. Utor permisso, caudaeque pilos ut equinae paulatim vello unum, demo etiam unum, dum cadat elusus ratione ruentis acervi, qui redit in fastos et virtutem aestimat annis miraturque nihil nisi quod Libitina sacravit.</p>', 1612171755),
(1, 16, 60, 'Body Banner01', '<p><img src="/royalhotel/files/5714/5431/1785/banner01.jpg" alt="banner01.jpg" width="424" height="508" /></p>\r\n<p><a href="#">Find Out More</a></p>', 1612171755),
(1, 16, 61, 'Body Banner02', '<p><img src="/royalhotel/files/8414/5431/1786/banner02.jpg" alt="banner02.jpg" width="424" height="508" /></p>\r\n<p><a href="#">Find Out More</a></p>', 1612171755),
(1, 16, 62, 'Body Banner03', '<p><img src="/royalhotel/files/4714/5431/1787/banner03.jpg" alt="banner03.jpg" width="424" height="508" /></p>\r\n<p><a href="#">Find Out More</a></p>', 1612171755),
(1, 16, 63, 'Map Heading', '<h2>Location</h2>', 1612171755),
(1, 16, 65, 'Location Map', '<p><iframe style="border: 0;" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2222.128011569134!2d-3.9484010839309414!3d56.1548912683754!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x48888817de862d1f%3A0xd0e5b2a7c42b7868!2sRoyal+Hotel!5e0!3m2!1sen!2sin!4v1454317956293" frameborder="0" width="100%" height="484"></iframe></p>', 1612171755),
(1, 16, 68, 'Map Description', '<p>Located in the heart of Scotland, our luxury hotel is ideally situated for retium <a href="#">Golf</a> arroget <a href="#">Rambling</a> scriptor abhinc annos centum qui decidit, inter perfectos veteresque referri debet an inter vilis atque novos. Excludat iurgia finis, est vetus atque probus,</p>\r\n<p><a class="=&quot;btn-map&quot;" href="#">See &amp; Do</a></p>', 1612171752),
(1, 17, 24, 'Sidebar', '<h3>Sidebar</h3>', 1612172246),
(1, 17, 25, 'Sidebar', '<p>Everything about concrete5 is completely customizable through the CMS. This is a separate area from the main content on the homepage. You can&nbsp;<a title="Move blocks in concrete5" href="http://www.concrete5.org/documentation/general-topics/blocks-and-areas" target="_blank">drag and drop blocks</a>&nbsp;like this around your layout.</p>', 1612172246),
(1, 17, 26, 'Main', '<h2>Welcome to concrete5!</h2>\n                                        <p>Content Management is easy with concrete5''s in-context editing. Just <a href="/royalhotel/index.php/login/">login</a> and you can change things as you browse your site.</p>\n                                        <p>You can watch videos and learn how to:</p>\n                                        <ul>\n                                        <li><a title="In-context editing CMS" href="http://www.concrete5.org/documentation/general-topics/in-context-editing/" target="_blank">Edit</a>&nbsp;this page.</li>\n                                        <li>Add a <a title="Add a page in concrete5" href="http://www.concrete5.org/documentation/general-topics/add-a-page/" target="_blank">new page</a>.</li>\n                                        <li>Add some basic functionality, like&nbsp;<a title="Add a simple form in concrete5" href="http://www.concrete5.org/documentation/general-topics/add_a_form" target="_blank">a Form</a>.</li>\n                                        <li><a title="add-on marketplace for concrete5" href="http://www.concrete5.org/marketplace/how_to_install_add_ons_and_themes_/" target="_blank">Finding &amp; adding</a>&nbsp;more functionality and themes.</li>\n                                        </ul>\n                                        <p>We''ve taken the liberty to build out the rest of this site with some sample content that will help you learn concrete5. Wander around a bit, or click Dashboard to get to the&nbsp;<a href="/royalhotel/index.php/dashboard/sitemap/">Sitemap</a> and quickly delete the parts you don''t want.</p>', 1612172246),
(1, 17, 54, 'Site Logo', '<p><a href="#"><img src="/royalhotel/files/3014/5406/6521/logo.png" alt="logo.png" width="107" height="75" /></a></p>', 1612172246),
(1, 17, 57, 'Header Booking', '<p><a class="btn-book" href="#">Book</a></p>', 1612172246),
(1, 17, 58, 'Header Image', '\r\n\r\n<div class="thumb-slider01">\r\n<div id="owl-demo2" class="carousel-inner">\r\n  <!-- Indicators -->\r\n  \r\n\r\n  <!-- Wrapper for slides -->\r\n\r\n  \r\n  \r\n    <div class="item">\r\n      <img src="/royalhotel/files/4214/5406/5510/slider01.jpg" alt="slider01.jpg">\r\n	  	\r\n      <div class="carousel-caption ">\r\n	 \r\n       \r\n	    	  	\r\n                   <h4>ROYAL LUXURY</h4>\r\n          <div class="text-des">Every visit is a unique experience</div>\r\n         \r\n       <a class="read-more" href="#">Find out More</a>\r\n	        </div>\r\n	\r\n	  <div>\r\n      \r\n      </div>\r\n    </div>\r\n   \r\n    <div class="item">\r\n      <img src="/royalhotel/files/7814/5406/5499/slider02.jpg" alt="slider02.jpg">\r\n	  	\r\n      <div class="carousel-caption ">\r\n	 \r\n       \r\n	    	  	\r\n                   <h4>ROYAL LUXURY</h4>\r\n          <div class="text-des">Every visit is a unique experience</div>\r\n         \r\n       <a class="read-more" href="#">Find out More</a>\r\n	        </div>\r\n	\r\n	  <div>\r\n      \r\n      </div>\r\n    </div>\r\n   \r\n    <div class="item">\r\n      <img src="/royalhotel/files/4814/5406/5500/slider03.jpg" alt="slider03.jpg">\r\n	  	\r\n      <div class="carousel-caption ">\r\n	 \r\n       \r\n	    	  	\r\n                   <h4>ROYAL LUXURY</h4>\r\n          <div class="text-des">Every visit is a unique experience</div>\r\n         \r\n       <a class="read-more" href="#">Find out More</a>\r\n	        </div>\r\n	\r\n	  <div>\r\n      \r\n      </div>\r\n    </div>\r\n   \r\n	 \r\n  </div>\r\n</div>\r\n  \r\n<script>\r\n	\r\njQuery(document).ready(function() {     \r\n    $("#owl-demo2").owlCarousel({ \r\n		nav : true, // Show next and prev buttons\r\n		smartSpeed : 800,\r\n		items:1,\r\n		autoplay: true, \r\n		loop:true,		 \r\n		// "singleItem:true" is a shortcut for:\r\n		// items : 1,\r\n		// itemsDesktop : false,\r\n		// itemsDesktopSmall : false,\r\n		// itemsTablet: false,\r\n		// itemsMobile : false\r\n		 \r\n	});\r\n \r\n     \r\n});\r\n\r\n\r\n</script>\r\n', 1612172246),
(1, 17, 59, 'Body Text', '<h1><span>YOU</span>are the most important part of our Royal story</h1>\r\n<p>Poemata reddit, scire velim, chartis pretium quotus arroget annus scriptor abhinc annos centum qui decidit, inter perfectos veteresque referri debet an inter vilis atque novos. Excludat iurgia finis, est vetus atque probus, centum qui perficit annos. Quid, qui deperiit minor uno mense vel anno, inter quos referendus erit. Iste quidem veteres inter ponetur honeste, qui vel mense brevi vel toto est iunior anno. Utor permisso, caudaeque pilos ut equinae paulatim vello unum, demo etiam unum, dum cadat elusus ratione ruentis acervi, qui redit in fastos et virtutem aestimat annis miraturque nihil nisi quod Libitina sacravit.</p>', 1612172246),
(1, 17, 60, 'Body Banner01', '<p><img src="/royalhotel/files/5714/5431/1785/banner01.jpg" alt="banner01.jpg" width="424" height="508" /></p>\r\n<p><a href="#">Find Out More</a></p>', 1612172246),
(1, 17, 61, 'Body Banner02', '<p><img src="/royalhotel/files/8414/5431/1786/banner02.jpg" alt="banner02.jpg" width="424" height="508" /></p>\r\n<p><a href="#">Find Out More</a></p>', 1612172246),
(1, 17, 62, 'Body Banner03', '<p><img src="/royalhotel/files/4714/5431/1787/banner03.jpg" alt="banner03.jpg" width="424" height="508" /></p>\r\n<p><a href="#">Find Out More</a></p>', 1612172246),
(1, 17, 63, 'Map Heading', '<h2>Location</h2>', 1612172246),
(1, 17, 65, 'Location Map', '<p><iframe style="border: 0;" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2222.128011569134!2d-3.9484010839309414!3d56.1548912683754!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x48888817de862d1f%3A0xd0e5b2a7c42b7868!2sRoyal+Hotel!5e0!3m2!1sen!2sin!4v1454317956293" frameborder="0" width="100%" height="484"></iframe></p>', 1612172246),
(1, 17, 69, 'Map Description', '<p>Located in the heart of Scotland, our luxury hotel is ideally situated for retium <a href="#">Golf</a> arroget <a href="#">Rambling</a> scriptor abhinc annos centum qui decidit, inter perfectos veteresque referri debet an inter vilis atque novos. Excludat iurgia finis, est vetus atque probus,</p>\r\n<p><a class="btn-map" href="#">See &amp; Do</a></p>', 1612172237),
(1, 18, 54, 'Site Logo', '<p><a href="#"><img src="/royalhotel/files/3014/5406/6521/logo.png" alt="logo.png" width="107" height="75" /></a></p>', 1612173819),
(1, 18, 57, 'Header Booking', '<p><a class="btn-book" href="#">Book</a></p>', 1612173819),
(1, 18, 58, 'Header Image', '\r\n\r\n<div class="thumb-slider01">\r\n<div id="owl-demo2" class="carousel-inner">\r\n  <!-- Indicators -->\r\n  \r\n\r\n  <!-- Wrapper for slides -->\r\n\r\n  \r\n  \r\n    <div class="item">\r\n      <img src="/royalhotel/files/4214/5406/5510/slider01.jpg" alt="slider01.jpg">\r\n	  	\r\n      <div class="carousel-caption ">\r\n	 \r\n       \r\n	    	  	\r\n                   <h4>ROYAL LUXURY</h4>\r\n          <div class="text-des">Every visit is a unique experience</div>\r\n         \r\n       <a class="read-more" href="#">Find out More</a>\r\n	        </div>\r\n	\r\n	  <div>\r\n      \r\n      </div>\r\n    </div>\r\n   \r\n    <div class="item">\r\n      <img src="/royalhotel/files/7814/5406/5499/slider02.jpg" alt="slider02.jpg">\r\n	  	\r\n      <div class="carousel-caption ">\r\n	 \r\n       \r\n	    	  	\r\n                   <h4>ROYAL LUXURY</h4>\r\n          <div class="text-des">Every visit is a unique experience</div>\r\n         \r\n       <a class="read-more" href="#">Find out More</a>\r\n	        </div>\r\n	\r\n	  <div>\r\n      \r\n      </div>\r\n    </div>\r\n   \r\n    <div class="item">\r\n      <img src="/royalhotel/files/4814/5406/5500/slider03.jpg" alt="slider03.jpg">\r\n	  	\r\n      <div class="carousel-caption ">\r\n	 \r\n       \r\n	    	  	\r\n                   <h4>ROYAL LUXURY</h4>\r\n          <div class="text-des">Every visit is a unique experience</div>\r\n         \r\n       <a class="read-more" href="#">Find out More</a>\r\n	        </div>\r\n	\r\n	  <div>\r\n      \r\n      </div>\r\n    </div>\r\n   \r\n	 \r\n  </div>\r\n</div>\r\n  \r\n<script>\r\n	\r\njQuery(document).ready(function() {     \r\n    $("#owl-demo2").owlCarousel({ \r\n		nav : true, // Show next and prev buttons\r\n		smartSpeed : 800,\r\n		items:1,\r\n		autoplay: true, \r\n		loop:true,		 \r\n		// "singleItem:true" is a shortcut for:\r\n		// items : 1,\r\n		// itemsDesktop : false,\r\n		// itemsDesktopSmall : false,\r\n		// itemsTablet: false,\r\n		// itemsMobile : false\r\n		 \r\n	});\r\n \r\n     \r\n});\r\n\r\n\r\n</script>\r\n', 1612173819),
(1, 18, 59, 'Body Text', '<h1><span>YOU</span>are the most important part of our Royal story</h1>\r\n<p>Poemata reddit, scire velim, chartis pretium quotus arroget annus scriptor abhinc annos centum qui decidit, inter perfectos veteresque referri debet an inter vilis atque novos. Excludat iurgia finis, est vetus atque probus, centum qui perficit annos. Quid, qui deperiit minor uno mense vel anno, inter quos referendus erit. Iste quidem veteres inter ponetur honeste, qui vel mense brevi vel toto est iunior anno. Utor permisso, caudaeque pilos ut equinae paulatim vello unum, demo etiam unum, dum cadat elusus ratione ruentis acervi, qui redit in fastos et virtutem aestimat annis miraturque nihil nisi quod Libitina sacravit.</p>', 1612173819),
(1, 18, 60, 'Body Banner01', '<p><img src="/royalhotel/files/5714/5431/1785/banner01.jpg" alt="banner01.jpg" width="424" height="508" /></p>\r\n<p><a href="#">Find Out More</a></p>', 1612173819),
(1, 18, 61, 'Body Banner02', '<p><img src="/royalhotel/files/8414/5431/1786/banner02.jpg" alt="banner02.jpg" width="424" height="508" /></p>\r\n<p><a href="#">Find Out More</a></p>', 1612173819),
(1, 18, 62, 'Body Banner03', '<p><img src="/royalhotel/files/4714/5431/1787/banner03.jpg" alt="banner03.jpg" width="424" height="508" /></p>\r\n<p><a href="#">Find Out More</a></p>', 1612173819),
(1, 18, 63, 'Map Heading', '<h2>Location</h2>', 1612173819),
(1, 18, 65, 'Location Map', '<p><iframe style="border: 0;" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2222.128011569134!2d-3.9484010839309414!3d56.1548912683754!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x48888817de862d1f%3A0xd0e5b2a7c42b7868!2sRoyal+Hotel!5e0!3m2!1sen!2sin!4v1454317956293" frameborder="0" width="100%" height="484"></iframe></p>', 1612173819),
(1, 18, 69, 'Map Description', '<p>Located in the heart of Scotland, our luxury hotel is ideally situated for retium <a href="#">Golf</a> arroget <a href="#">Rambling</a> scriptor abhinc annos centum qui decidit, inter perfectos veteresque referri debet an inter vilis atque novos. Excludat iurgia finis, est vetus atque probus,</p>\r\n<p><a class="btn-map" href="#">See &amp; Do</a></p>', 1612173820),
(1, 18, 70, 'Footer Logo', '<p><img src="/royalhotel/files/5514/5432/0940/logo-footer.png" alt="logo-footer.png" width="107" height="75" /><img src="/royalhotel/files/3114/5432/0957/footer-fadeline.png" alt="footer-fadeline.png" width="994" height="2" /></p>', 1612173768),
(1, 19, 54, 'Site Logo', '<p><a href="#"><img src="/royalhotel/files/3014/5406/6521/logo.png" alt="logo.png" width="107" height="75" /></a></p>', 1612174183),
(1, 19, 57, 'Header Booking', '<p><a class="btn-book" href="#">Book</a></p>', 1612174183),
(1, 19, 58, 'Header Image', '\r\n\r\n<div class="thumb-slider01">\r\n<div id="owl-demo2" class="carousel-inner">\r\n  <!-- Indicators -->\r\n  \r\n\r\n  <!-- Wrapper for slides -->\r\n\r\n  \r\n  \r\n    <div class="item">\r\n      <img src="/royalhotel/files/4214/5406/5510/slider01.jpg" alt="slider01.jpg">\r\n	  	\r\n      <div class="carousel-caption ">\r\n	 \r\n       \r\n	    	  	\r\n                   <h4>ROYAL LUXURY</h4>\r\n          <div class="text-des">Every visit is a unique experience</div>\r\n         \r\n       <a class="read-more" href="#">Find out More</a>\r\n	        </div>\r\n	\r\n	  <div>\r\n      \r\n      </div>\r\n    </div>\r\n   \r\n    <div class="item">\r\n      <img src="/royalhotel/files/7814/5406/5499/slider02.jpg" alt="slider02.jpg">\r\n	  	\r\n      <div class="carousel-caption ">\r\n	 \r\n       \r\n	    	  	\r\n                   <h4>ROYAL LUXURY</h4>\r\n          <div class="text-des">Every visit is a unique experience</div>\r\n         \r\n       <a class="read-more" href="#">Find out More</a>\r\n	        </div>\r\n	\r\n	  <div>\r\n      \r\n      </div>\r\n    </div>\r\n   \r\n    <div class="item">\r\n      <img src="/royalhotel/files/4814/5406/5500/slider03.jpg" alt="slider03.jpg">\r\n	  	\r\n      <div class="carousel-caption ">\r\n	 \r\n       \r\n	    	  	\r\n                   <h4>ROYAL LUXURY</h4>\r\n          <div class="text-des">Every visit is a unique experience</div>\r\n         \r\n       <a class="read-more" href="#">Find out More</a>\r\n	        </div>\r\n	\r\n	  <div>\r\n      \r\n      </div>\r\n    </div>\r\n   \r\n	 \r\n  </div>\r\n</div>\r\n  \r\n<script>\r\n	\r\njQuery(document).ready(function() {     \r\n    $("#owl-demo2").owlCarousel({ \r\n		nav : true, // Show next and prev buttons\r\n		smartSpeed : 800,\r\n		items:1,\r\n		autoplay: true, \r\n		loop:true,		 \r\n		// "singleItem:true" is a shortcut for:\r\n		// items : 1,\r\n		// itemsDesktop : false,\r\n		// itemsDesktopSmall : false,\r\n		// itemsTablet: false,\r\n		// itemsMobile : false\r\n		 \r\n	});\r\n \r\n     \r\n});\r\n\r\n\r\n</script>\r\n', 1612174183),
(1, 19, 59, 'Body Text', '<h1><span>YOU</span>are the most important part of our Royal story</h1>\r\n<p>Poemata reddit, scire velim, chartis pretium quotus arroget annus scriptor abhinc annos centum qui decidit, inter perfectos veteresque referri debet an inter vilis atque novos. Excludat iurgia finis, est vetus atque probus, centum qui perficit annos. Quid, qui deperiit minor uno mense vel anno, inter quos referendus erit. Iste quidem veteres inter ponetur honeste, qui vel mense brevi vel toto est iunior anno. Utor permisso, caudaeque pilos ut equinae paulatim vello unum, demo etiam unum, dum cadat elusus ratione ruentis acervi, qui redit in fastos et virtutem aestimat annis miraturque nihil nisi quod Libitina sacravit.</p>', 1612174184),
(1, 19, 60, 'Body Banner01', '<p><img src="/royalhotel/files/5714/5431/1785/banner01.jpg" alt="banner01.jpg" width="424" height="508" /></p>\r\n<p><a href="#">Find Out More</a></p>', 1612174184),
(1, 19, 61, 'Body Banner02', '<p><img src="/royalhotel/files/8414/5431/1786/banner02.jpg" alt="banner02.jpg" width="424" height="508" /></p>\r\n<p><a href="#">Find Out More</a></p>', 1612174184),
(1, 19, 62, 'Body Banner03', '<p><img src="/royalhotel/files/4714/5431/1787/banner03.jpg" alt="banner03.jpg" width="424" height="508" /></p>\r\n<p><a href="#">Find Out More</a></p>', 1612174184),
(1, 19, 63, 'Map Heading', '<h2>Location</h2>', 1612174184),
(1, 19, 65, 'Location Map', '<p><iframe style="border: 0;" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2222.128011569134!2d-3.9484010839309414!3d56.1548912683754!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x48888817de862d1f%3A0xd0e5b2a7c42b7868!2sRoyal+Hotel!5e0!3m2!1sen!2sin!4v1454317956293" frameborder="0" width="100%" height="484"></iframe></p>', 1612174184),
(1, 19, 69, 'Map Description', '<p>Located in the heart of Scotland, our luxury hotel is ideally situated for retium <a href="#">Golf</a> arroget <a href="#">Rambling</a> scriptor abhinc annos centum qui decidit, inter perfectos veteresque referri debet an inter vilis atque novos. Excludat iurgia finis, est vetus atque probus,</p>\r\n<p><a class="btn-map" href="#">See &amp; Do</a></p>', 1612174184),
(1, 19, 70, 'Footer Logo', '<p><img src="/royalhotel/files/5514/5432/0940/logo-footer.png" alt="logo-footer.png" width="107" height="75" /><img src="/royalhotel/files/3114/5432/0957/footer-fadeline.png" alt="footer-fadeline.png" width="994" height="2" /></p>', 1612174184),
(1, 19, 71, 'Footer Address', '<p>Royal Hotel<br /> 55 Henderson St,<br /> Bridge of Allan, <br /> Stirlingshire FK9 4HG<br /> <br /> T: 01786 832 284<br /> E: <a href="mailto:info@royalhotel.co.uk">info@royalhotel.co.uk<br /> </a></p>', 1612174128),
(1, 20, 54, 'Site Logo', '<p><a href="#"><img src="/royalhotel/files/3014/5406/6521/logo.png" alt="logo.png" width="107" height="75" /></a></p>', 1612174325),
(1, 20, 57, 'Header Booking', '<p><a class="btn-book" href="#">Book</a></p>', 1612174325),
(1, 20, 58, 'Header Image', '\r\n\r\n<div class="thumb-slider01">\r\n<div id="owl-demo2" class="carousel-inner">\r\n  <!-- Indicators -->\r\n  \r\n\r\n  <!-- Wrapper for slides -->\r\n\r\n  \r\n  \r\n    <div class="item">\r\n      <img src="/royalhotel/files/4214/5406/5510/slider01.jpg" alt="slider01.jpg">\r\n	  	\r\n      <div class="carousel-caption ">\r\n	 \r\n       \r\n	    	  	\r\n                   <h4>ROYAL LUXURY</h4>\r\n          <div class="text-des">Every visit is a unique experience</div>\r\n         \r\n       <a class="read-more" href="#">Find out More</a>\r\n	        </div>\r\n	\r\n	  <div>\r\n      \r\n      </div>\r\n    </div>\r\n   \r\n    <div class="item">\r\n      <img src="/royalhotel/files/7814/5406/5499/slider02.jpg" alt="slider02.jpg">\r\n	  	\r\n      <div class="carousel-caption ">\r\n	 \r\n       \r\n	    	  	\r\n                   <h4>ROYAL LUXURY</h4>\r\n          <div class="text-des">Every visit is a unique experience</div>\r\n         \r\n       <a class="read-more" href="#">Find out More</a>\r\n	        </div>\r\n	\r\n	  <div>\r\n      \r\n      </div>\r\n    </div>\r\n   \r\n    <div class="item">\r\n      <img src="/royalhotel/files/4814/5406/5500/slider03.jpg" alt="slider03.jpg">\r\n	  	\r\n      <div class="carousel-caption ">\r\n	 \r\n       \r\n	    	  	\r\n                   <h4>ROYAL LUXURY</h4>\r\n          <div class="text-des">Every visit is a unique experience</div>\r\n         \r\n       <a class="read-more" href="#">Find out More</a>\r\n	        </div>\r\n	\r\n	  <div>\r\n      \r\n      </div>\r\n    </div>\r\n   \r\n	 \r\n  </div>\r\n</div>\r\n  \r\n<script>\r\n	\r\njQuery(document).ready(function() {     \r\n    $("#owl-demo2").owlCarousel({ \r\n		nav : true, // Show next and prev buttons\r\n		smartSpeed : 800,\r\n		items:1,\r\n		autoplay: true, \r\n		loop:true,		 \r\n		// "singleItem:true" is a shortcut for:\r\n		// items : 1,\r\n		// itemsDesktop : false,\r\n		// itemsDesktopSmall : false,\r\n		// itemsTablet: false,\r\n		// itemsMobile : false\r\n		 \r\n	});\r\n \r\n     \r\n});\r\n\r\n\r\n</script>\r\n', 1612174325),
(1, 20, 59, 'Body Text', '<h1><span>YOU</span>are the most important part of our Royal story</h1>\r\n<p>Poemata reddit, scire velim, chartis pretium quotus arroget annus scriptor abhinc annos centum qui decidit, inter perfectos veteresque referri debet an inter vilis atque novos. Excludat iurgia finis, est vetus atque probus, centum qui perficit annos. Quid, qui deperiit minor uno mense vel anno, inter quos referendus erit. Iste quidem veteres inter ponetur honeste, qui vel mense brevi vel toto est iunior anno. Utor permisso, caudaeque pilos ut equinae paulatim vello unum, demo etiam unum, dum cadat elusus ratione ruentis acervi, qui redit in fastos et virtutem aestimat annis miraturque nihil nisi quod Libitina sacravit.</p>', 1612174325),
(1, 20, 60, 'Body Banner01', '<p><img src="/royalhotel/files/5714/5431/1785/banner01.jpg" alt="banner01.jpg" width="424" height="508" /></p>\r\n<p><a href="#">Find Out More</a></p>', 1612174325),
(1, 20, 61, 'Body Banner02', '<p><img src="/royalhotel/files/8414/5431/1786/banner02.jpg" alt="banner02.jpg" width="424" height="508" /></p>\r\n<p><a href="#">Find Out More</a></p>', 1612174325),
(1, 20, 62, 'Body Banner03', '<p><img src="/royalhotel/files/4714/5431/1787/banner03.jpg" alt="banner03.jpg" width="424" height="508" /></p>\r\n<p><a href="#">Find Out More</a></p>', 1612174326),
(1, 20, 63, 'Map Heading', '<h2>Location</h2>', 1612174326),
(1, 20, 65, 'Location Map', '<p><iframe style="border: 0;" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2222.128011569134!2d-3.9484010839309414!3d56.1548912683754!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x48888817de862d1f%3A0xd0e5b2a7c42b7868!2sRoyal+Hotel!5e0!3m2!1sen!2sin!4v1454317956293" frameborder="0" width="100%" height="484"></iframe></p>', 1612174326),
(1, 20, 69, 'Map Description', '<p>Located in the heart of Scotland, our luxury hotel is ideally situated for retium <a href="#">Golf</a> arroget <a href="#">Rambling</a> scriptor abhinc annos centum qui decidit, inter perfectos veteresque referri debet an inter vilis atque novos. Excludat iurgia finis, est vetus atque probus,</p>\r\n<p><a class="btn-map" href="#">See &amp; Do</a></p>', 1612174326),
(1, 20, 70, 'Footer Logo', '<p><img src="/royalhotel/files/5514/5432/0940/logo-footer.png" alt="logo-footer.png" width="107" height="75" /><img src="/royalhotel/files/3114/5432/0957/footer-fadeline.png" alt="footer-fadeline.png" width="994" height="2" /></p>', 1612174326),
(1, 20, 72, 'Footer Address', '<p><span>Royal Hotel</span><br /> 55 Henderson St,<br /> Bridge of Allan, <br /> Stirlingshire FK9 4HG<br /> <br /> T: 01786 832 284<br /> E: <a href="mailto:info@royalhotel.co.uk">info@royalhotel.co.uk<br /> </a></p>', 1612174290),
(1, 21, 54, 'Site Logo', '<p><a href="#"><img src="/royalhotel/files/3014/5406/6521/logo.png" alt="logo.png" width="107" height="75" /></a></p>', 1612175439),
(1, 21, 57, 'Header Booking', '<p><a class="btn-book" href="#">Book</a></p>', 1612175439),
(1, 21, 58, 'Header Image', '\r\n\r\n<div class="thumb-slider01">\r\n<div id="owl-demo2" class="carousel-inner">\r\n  <!-- Indicators -->\r\n  \r\n\r\n  <!-- Wrapper for slides -->\r\n\r\n  \r\n  \r\n    <div class="item">\r\n      <img src="/royalhotel/files/4214/5406/5510/slider01.jpg" alt="slider01.jpg">\r\n	  	\r\n      <div class="carousel-caption ">\r\n	 \r\n       \r\n	    	  	\r\n                   <h4>ROYAL LUXURY</h4>\r\n          <div class="text-des">Every visit is a unique experience</div>\r\n         \r\n       <a class="read-more" href="#">Find out More</a>\r\n	        </div>\r\n	\r\n	  <div>\r\n      \r\n      </div>\r\n    </div>\r\n   \r\n    <div class="item">\r\n      <img src="/royalhotel/files/7814/5406/5499/slider02.jpg" alt="slider02.jpg">\r\n	  	\r\n      <div class="carousel-caption ">\r\n	 \r\n       \r\n	    	  	\r\n                   <h4>ROYAL LUXURY</h4>\r\n          <div class="text-des">Every visit is a unique experience</div>\r\n         \r\n       <a class="read-more" href="#">Find out More</a>\r\n	        </div>\r\n	\r\n	  <div>\r\n      \r\n      </div>\r\n    </div>\r\n   \r\n    <div class="item">\r\n      <img src="/royalhotel/files/4814/5406/5500/slider03.jpg" alt="slider03.jpg">\r\n	  	\r\n      <div class="carousel-caption ">\r\n	 \r\n       \r\n	    	  	\r\n                   <h4>ROYAL LUXURY</h4>\r\n          <div class="text-des">Every visit is a unique experience</div>\r\n         \r\n       <a class="read-more" href="#">Find out More</a>\r\n	        </div>\r\n	\r\n	  <div>\r\n      \r\n      </div>\r\n    </div>\r\n   \r\n	 \r\n  </div>\r\n</div>\r\n  \r\n<script>\r\n	\r\njQuery(document).ready(function() {     \r\n    $("#owl-demo2").owlCarousel({ \r\n		nav : true, // Show next and prev buttons\r\n		smartSpeed : 800,\r\n		items:1,\r\n		autoplay: true, \r\n		loop:true,		 \r\n		// "singleItem:true" is a shortcut for:\r\n		// items : 1,\r\n		// itemsDesktop : false,\r\n		// itemsDesktopSmall : false,\r\n		// itemsTablet: false,\r\n		// itemsMobile : false\r\n		 \r\n	});\r\n \r\n     \r\n});\r\n\r\n\r\n</script>\r\n', 1612175439),
(1, 21, 59, 'Body Text', '<h1><span>YOU</span>are the most important part of our Royal story</h1>\r\n<p>Poemata reddit, scire velim, chartis pretium quotus arroget annus scriptor abhinc annos centum qui decidit, inter perfectos veteresque referri debet an inter vilis atque novos. Excludat iurgia finis, est vetus atque probus, centum qui perficit annos. Quid, qui deperiit minor uno mense vel anno, inter quos referendus erit. Iste quidem veteres inter ponetur honeste, qui vel mense brevi vel toto est iunior anno. Utor permisso, caudaeque pilos ut equinae paulatim vello unum, demo etiam unum, dum cadat elusus ratione ruentis acervi, qui redit in fastos et virtutem aestimat annis miraturque nihil nisi quod Libitina sacravit.</p>', 1612175440),
(1, 21, 63, 'Map Heading', '<h2>Location</h2>', 1612175440),
(1, 21, 65, 'Location Map', '<p><iframe style="border: 0;" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2222.128011569134!2d-3.9484010839309414!3d56.1548912683754!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x48888817de862d1f%3A0xd0e5b2a7c42b7868!2sRoyal+Hotel!5e0!3m2!1sen!2sin!4v1454317956293" frameborder="0" width="100%" height="484"></iframe></p>', 1612175440),
(1, 21, 69, 'Map Description', '<p>Located in the heart of Scotland, our luxury hotel is ideally situated for retium <a href="#">Golf</a> arroget <a href="#">Rambling</a> scriptor abhinc annos centum qui decidit, inter perfectos veteresque referri debet an inter vilis atque novos. Excludat iurgia finis, est vetus atque probus,</p>\r\n<p><a class="btn-map" href="#">See &amp; Do</a></p>', 1612175440),
(1, 21, 70, 'Footer Logo', '<p><img src="/royalhotel/files/5514/5432/0940/logo-footer.png" alt="logo-footer.png" width="107" height="75" /><img src="/royalhotel/files/3114/5432/0957/footer-fadeline.png" alt="footer-fadeline.png" width="994" height="2" /></p>', 1612175440),
(1, 21, 72, 'Footer Address', '<p><span>Royal Hotel</span><br /> 55 Henderson St,<br /> Bridge of Allan, <br /> Stirlingshire FK9 4HG<br /> <br /> T: 01786 832 284<br /> E: <a href="mailto:info@royalhotel.co.uk">info@royalhotel.co.uk<br /> </a></p>', 1612175440),
(1, 21, 73, 'Body Banner01', '<h2>STAY &amp; PLAY</h2>\r\n<p><img src="/royalhotel/files/5014/5432/2495/banner01.jpg" alt="banner01.jpg" /></p>\r\n<p><a href="#">Find Out More</a></p>', 1612175347),
(1, 21, 74, 'Body Banner02', '<h2>JUNIPER 55</h2>\r\n<p><img src="/royalhotel/files/2314/5432/2497/banner02.jpg" alt="banner02.jpg" /></p>\r\n<p><a href="#">Find Out More</a></p>', 1612175390),
(1, 21, 75, 'Body Banner03', '<h2>ROYAL WEDDINGS</h2>\r\n<p><img src="/royalhotel/files/4414/5432/2498/banner03.jpg" alt="banner03.jpg" /></p>\r\n<p><a href="#">Find Out More</a></p>', 1612175433),
(1, 22, 54, 'Site Logo', '<p><a href="#"><img src="/royalhotel/files/3014/5406/6521/logo.png" alt="logo.png" width="107" height="75" /></a></p>', 1612176405),
(1, 22, 57, 'Header Booking', '<p><a class="btn-book" href="#">Book</a></p>', 1612176405),
(1, 22, 58, 'Header Image', '\r\n\r\n<div class="thumb-slider01">\r\n<div id="owl-demo2" class="carousel-inner">\r\n  <!-- Indicators -->\r\n  \r\n\r\n  <!-- Wrapper for slides -->\r\n\r\n  \r\n  \r\n    <div class="item">\r\n      <img src="/royalhotel/files/4214/5406/5510/slider01.jpg" alt="slider01.jpg">\r\n	  	\r\n      <div class="carousel-caption ">\r\n	 \r\n       \r\n	    	  	\r\n                   <h4>ROYAL LUXURY</h4>\r\n          <div class="text-des">Every visit is a unique experience</div>\r\n         \r\n       <a class="read-more" href="#">Find out More</a>\r\n	        </div>\r\n	\r\n	  <div>\r\n      \r\n      </div>\r\n    </div>\r\n   \r\n    <div class="item">\r\n      <img src="/royalhotel/files/7814/5406/5499/slider02.jpg" alt="slider02.jpg">\r\n	  	\r\n      <div class="carousel-caption ">\r\n	 \r\n       \r\n	    	  	\r\n                   <h4>ROYAL LUXURY</h4>\r\n          <div class="text-des">Every visit is a unique experience</div>\r\n         \r\n       <a class="read-more" href="#">Find out More</a>\r\n	        </div>\r\n	\r\n	  <div>\r\n      \r\n      </div>\r\n    </div>\r\n   \r\n    <div class="item">\r\n      <img src="/royalhotel/files/4814/5406/5500/slider03.jpg" alt="slider03.jpg">\r\n	  	\r\n      <div class="carousel-caption ">\r\n	 \r\n       \r\n	    	  	\r\n                   <h4>ROYAL LUXURY</h4>\r\n          <div class="text-des">Every visit is a unique experience</div>\r\n         \r\n       <a class="read-more" href="#">Find out More</a>\r\n	        </div>\r\n	\r\n	  <div>\r\n      \r\n      </div>\r\n    </div>\r\n   \r\n	 \r\n  </div>\r\n</div>\r\n  \r\n<script>\r\n	\r\njQuery(document).ready(function() {     \r\n    $("#owl-demo2").owlCarousel({ \r\n		nav : true, // Show next and prev buttons\r\n		smartSpeed : 800,\r\n		items:1,\r\n		autoplay: true, \r\n		loop:true,		 \r\n		// "singleItem:true" is a shortcut for:\r\n		// items : 1,\r\n		// itemsDesktop : false,\r\n		// itemsDesktopSmall : false,\r\n		// itemsTablet: false,\r\n		// itemsMobile : false\r\n		 \r\n	});\r\n \r\n     \r\n});\r\n\r\n\r\n</script>\r\n', 1612176405),
(1, 22, 59, 'Body Text', '<h1><span>YOU</span>are the most important part of our Royal story</h1>\r\n<p>Poemata reddit, scire velim, chartis pretium quotus arroget annus scriptor abhinc annos centum qui decidit, inter perfectos veteresque referri debet an inter vilis atque novos. Excludat iurgia finis, est vetus atque probus, centum qui perficit annos. Quid, qui deperiit minor uno mense vel anno, inter quos referendus erit. Iste quidem veteres inter ponetur honeste, qui vel mense brevi vel toto est iunior anno. Utor permisso, caudaeque pilos ut equinae paulatim vello unum, demo etiam unum, dum cadat elusus ratione ruentis acervi, qui redit in fastos et virtutem aestimat annis miraturque nihil nisi quod Libitina sacravit.</p>', 1612176405),
(1, 22, 63, 'Map Heading', '<h2>Location</h2>', 1612176405),
(1, 22, 65, 'Location Map', '<p><iframe style="border: 0;" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2222.128011569134!2d-3.9484010839309414!3d56.1548912683754!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x48888817de862d1f%3A0xd0e5b2a7c42b7868!2sRoyal+Hotel!5e0!3m2!1sen!2sin!4v1454317956293" frameborder="0" width="100%" height="484"></iframe></p>', 1612176405),
(1, 22, 69, 'Map Description', '<p>Located in the heart of Scotland, our luxury hotel is ideally situated for retium <a href="#">Golf</a> arroget <a href="#">Rambling</a> scriptor abhinc annos centum qui decidit, inter perfectos veteresque referri debet an inter vilis atque novos. Excludat iurgia finis, est vetus atque probus,</p>\r\n<p><a class="btn-map" href="#">See &amp; Do</a></p>', 1612176405),
(1, 22, 70, 'Footer Logo', '<p><img src="/royalhotel/files/5514/5432/0940/logo-footer.png" alt="logo-footer.png" width="107" height="75" /><img src="/royalhotel/files/3114/5432/0957/footer-fadeline.png" alt="footer-fadeline.png" width="994" height="2" /></p>', 1612176405),
(1, 22, 72, 'Footer Address', '<p><span>Royal Hotel</span><br /> 55 Henderson St,<br /> Bridge of Allan, <br /> Stirlingshire FK9 4HG<br /> <br /> T: 01786 832 284<br /> E: <a href="mailto:info@royalhotel.co.uk">info@royalhotel.co.uk<br /> </a></p>', 1612176405),
(1, 22, 74, 'Body Banner02', '<h2>JUNIPER 55</h2>\r\n<p><img src="/royalhotel/files/2314/5432/2497/banner02.jpg" alt="banner02.jpg" /></p>\r\n<p><a href="#">Find Out More</a></p>', 1612176405),
(1, 22, 75, 'Body Banner03', '<h2>ROYAL WEDDINGS</h2>\r\n<p><img src="/royalhotel/files/4414/5432/2498/banner03.jpg" alt="banner03.jpg" /></p>\r\n<p><a href="#">Find Out More</a></p>', 1612176405),
(1, 22, 76, 'Body Banner01', '<h2>STAY &amp; PLAY</h2>\r\n<div class="banner-des">Ennius et sapines et fortis et alter Homerus, ut critici dicunt, leviter curare videtur, quo promissa cadant et somnia. Naevius in manibus non est et mentibus haeret paene recens. Adeo sanctum est vetus omne poema. ambigitur quotiens, uter utro sit prior, aufert Pacuvius docti famam senis Accius alti, dicitur Afrani toga convenisse Menandro, Plautus dicunt, leviter curare videtur, quo promissa cadant et somnia. Naevius in manibus non est et mentibuad exemplar Siculi properare epicharmi. Adeo sanctum est vetus omni.</div>\r\n<p><img src="/royalhotel/files/5014/5432/2495/banner01.jpg" alt="banner01.jpg" /></p>\r\n<p><a href="#">Find Out More</a></p>', 1612176399),
(1, 23, 20, 'Header Nav', '<ul class="nav"><li class="nav-selected nav-path-selected"><a href="/royalhotel/" target="_self" class="nav-selected nav-path-selected">Home</a></li><li class=""><a href="/royalhotel/index.php/about/" target="_self" class="">About</a></li><li class=""><a href="/royalhotel/index.php/search/" target="_self" class="">Search</a></li><li class=""><a href="/royalhotel/index.php/blog/" target="_self" class="">Blog</a></li></ul>', 1454325056),
(1, 23, 54, 'Site Logo', '<p><a href="#"><img src="/royalhotel/files/3014/5406/6521/logo.png" alt="logo.png" width="107" height="75" /></a></p>', 1612176880),
(1, 23, 57, 'Header Booking', '<p><a class="btn-book" href="#">Book</a></p>', 1612176880),
(1, 23, 58, 'Header Image', '\r\n\r\n<div class="thumb-slider01">\r\n<div id="owl-demo2" class="carousel-inner">\r\n  <!-- Indicators -->\r\n  \r\n\r\n  <!-- Wrapper for slides -->\r\n\r\n  \r\n  \r\n    <div class="item">\r\n      <img src="/royalhotel/files/4214/5406/5510/slider01.jpg" alt="slider01.jpg">\r\n	  	\r\n      <div class="carousel-caption ">\r\n	 \r\n       \r\n	    	  	\r\n                   <h4>ROYAL LUXURY</h4>\r\n          <div class="text-des">Every visit is a unique experience</div>\r\n         \r\n       <a class="read-more" href="#">Find out More</a>\r\n	        </div>\r\n	\r\n	  <div>\r\n      \r\n      </div>\r\n    </div>\r\n   \r\n    <div class="item">\r\n      <img src="/royalhotel/files/7814/5406/5499/slider02.jpg" alt="slider02.jpg">\r\n	  	\r\n      <div class="carousel-caption ">\r\n	 \r\n       \r\n	    	  	\r\n                   <h4>ROYAL LUXURY</h4>\r\n          <div class="text-des">Every visit is a unique experience</div>\r\n         \r\n       <a class="read-more" href="#">Find out More</a>\r\n	        </div>\r\n	\r\n	  <div>\r\n      \r\n      </div>\r\n    </div>\r\n   \r\n    <div class="item">\r\n      <img src="/royalhotel/files/4814/5406/5500/slider03.jpg" alt="slider03.jpg">\r\n	  	\r\n      <div class="carousel-caption ">\r\n	 \r\n       \r\n	    	  	\r\n                   <h4>ROYAL LUXURY</h4>\r\n          <div class="text-des">Every visit is a unique experience</div>\r\n         \r\n       <a class="read-more" href="#">Find out More</a>\r\n	        </div>\r\n	\r\n	  <div>\r\n      \r\n      </div>\r\n    </div>\r\n   \r\n	 \r\n  </div>\r\n</div>\r\n  \r\n<script>\r\n	\r\njQuery(document).ready(function() {     \r\n    $("#owl-demo2").owlCarousel({ \r\n		nav : true, // Show next and prev buttons\r\n		smartSpeed : 800,\r\n		items:1,\r\n		autoplay: true, \r\n		loop:true,		 \r\n		// "singleItem:true" is a shortcut for:\r\n		// items : 1,\r\n		// itemsDesktop : false,\r\n		// itemsDesktopSmall : false,\r\n		// itemsTablet: false,\r\n		// itemsMobile : false\r\n		 \r\n	});\r\n \r\n     \r\n});\r\n\r\n\r\n</script>\r\n', 1612176880),
(1, 23, 59, 'Body Text', '<h1><span>YOU</span>are the most important part of our Royal story</h1>\r\n<p>Poemata reddit, scire velim, chartis pretium quotus arroget annus scriptor abhinc annos centum qui decidit, inter perfectos veteresque referri debet an inter vilis atque novos. Excludat iurgia finis, est vetus atque probus, centum qui perficit annos. Quid, qui deperiit minor uno mense vel anno, inter quos referendus erit. Iste quidem veteres inter ponetur honeste, qui vel mense brevi vel toto est iunior anno. Utor permisso, caudaeque pilos ut equinae paulatim vello unum, demo etiam unum, dum cadat elusus ratione ruentis acervi, qui redit in fastos et virtutem aestimat annis miraturque nihil nisi quod Libitina sacravit.</p>', 1612176880),
(1, 23, 63, 'Map Heading', '<h2>Location</h2>', 1612176880),
(1, 23, 65, 'Location Map', '<p><iframe style="border: 0;" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2222.128011569134!2d-3.9484010839309414!3d56.1548912683754!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x48888817de862d1f%3A0xd0e5b2a7c42b7868!2sRoyal+Hotel!5e0!3m2!1sen!2sin!4v1454317956293" frameborder="0" width="100%" height="484"></iframe></p>', 1612176880),
(1, 23, 69, 'Map Description', '<p>Located in the heart of Scotland, our luxury hotel is ideally situated for retium <a href="#">Golf</a> arroget <a href="#">Rambling</a> scriptor abhinc annos centum qui decidit, inter perfectos veteresque referri debet an inter vilis atque novos. Excludat iurgia finis, est vetus atque probus,</p>\r\n<p><a class="btn-map" href="#">See &amp; Do</a></p>', 1612176881),
(1, 23, 70, 'Footer Logo', '<p><img src="/royalhotel/files/5514/5432/0940/logo-footer.png" alt="logo-footer.png" width="107" height="75" /><img src="/royalhotel/files/3114/5432/0957/footer-fadeline.png" alt="footer-fadeline.png" width="994" height="2" /></p>', 1612176881),
(1, 23, 72, 'Footer Address', '<p><span>Royal Hotel</span><br /> 55 Henderson St,<br /> Bridge of Allan, <br /> Stirlingshire FK9 4HG<br /> <br /> T: 01786 832 284<br /> E: <a href="mailto:info@royalhotel.co.uk">info@royalhotel.co.uk<br /> </a></p>', 1612176881),
(1, 23, 77, 'Body Banner01', '<h2>STAY &amp; PLAY</h2>\r\n<div class="banner-des">Ennius et sapines et fortis et alter Homerus, ut critici dicunt, leviter curare videtur, quo promissa cadant et somnia. Naevius in manibus non est et mentibus haeret paene recens. Adeo sanctum est vetus omne poema. ambigitur quotiens, uter utro sit prior, aufert Pacuvius docti famam senis Accius alti, dicitur Afrani toga convenisse Menandro, Plautus dicunt, leviter curare videtur, quo promissa cadant et somnia. Naevius in manibus non est et mentibuad exemplar Siculi properare epicharmi. Adeo sanctum est vetus omni.</div>\r\n<p><img src="/royalhotel/files/5014/5432/2495/banner01.jpg" alt="banner01.jpg" /></p>\r\n<p><a href="#">Find Out More</a></p>', 1612176857),
(1, 23, 78, 'Body Banner02', '<h2>JUNIPER 55</h2>\r\n<div class="banner-des">Ennius et sapines et fortis et alter Homerus, ut critici dicunt, leviter curare videtur, quo promissa cadant et somnia. Naevius in manibus non est et mentibus haeret paene recens. Adeo sanctum est vetus omne poema. ambigitur quotiens, uter utro sit prior, aufert Pacuvius docti famam senis Accius alti, dicitur Afrani toga convenisse Menandro, Plautus dicunt, leviter curare videtur, quo promissa cadant et somnia. Naevius in manibus non est et mentibuad exemplar Siculi properare epicharmi. Adeo sanctum est vetus omni.</div>\r\n<p><img src="/royalhotel/files/2314/5432/2497/banner02.jpg" alt="banner02.jpg" /></p>\r\n<p><a href="#">Find Out More</a></p>', 1612176866);
INSERT INTO `CollectionVersionBlocksOutputCache` (`cID`, `cvID`, `bID`, `arHandle`, `btCachedBlockOutput`, `btCachedBlockOutputExpires`) VALUES
(1, 23, 79, 'Body Banner03', '<h2>ROYAL WEDDINGS</h2>\r\n<div class="banner-des">Ennius et sapines et fortis et alter Homerus, ut critici dicunt, leviter curare videtur, quo promissa cadant et somnia. Naevius in manibus non est et mentibus haeret paene recens. Adeo sanctum est vetus omne poema. ambigitur quotiens, uter utro sit prior, aufert Pacuvius docti famam senis Accius alti, dicitur Afrani toga convenisse Menandro, Plautus dicunt, leviter curare videtur, quo promissa cadant et somnia. Naevius in manibus non est et mentibuad exemplar Siculi properare epicharmi. Adeo sanctum est vetus omni.</div>\r\n<p><img src="/royalhotel/files/4414/5432/2498/banner03.jpg" alt="banner03.jpg" /></p>\r\n<p><a href="#">Find Out More</a></p>', 1612176875),
(1, 24, 20, 'Header Nav', '<ul class="nav"><li class="nav-selected nav-path-selected"><a href="/royalhotel/" target="_self" class="nav-selected nav-path-selected">Home</a></li><li class=""><a href="/royalhotel/index.php/about/" target="_self" class="">About</a></li><li class=""><a href="/royalhotel/index.php/search/" target="_self" class="">Search</a></li><li class=""><a href="/royalhotel/index.php/blog/" target="_self" class="">Blog</a></li></ul>', 1454421976),
(1, 24, 54, 'Site Logo', '<p><a href="#"><img src="/royalhotel/files/3014/5406/6521/logo.png" alt="logo.png" width="107" height="75" /></a></p>', 1612177810),
(1, 24, 57, 'Header Booking', '<p><a class="btn-book" href="#">Book</a></p>', 1612177810),
(1, 24, 58, 'Header Image', '\r\n\r\n<div class="thumb-slider01">\r\n<div id="owl-demo2" class="carousel-inner">\r\n  <!-- Indicators -->\r\n  \r\n\r\n  <!-- Wrapper for slides -->\r\n\r\n  \r\n  \r\n    <div class="item">\r\n      <img src="/royalhotel/files/4214/5406/5510/slider01.jpg" alt="slider01.jpg">\r\n	  	\r\n      <div class="carousel-caption ">\r\n	 \r\n       \r\n	    	  	\r\n                   <h4>ROYAL LUXURY</h4>\r\n          <div class="text-des">Every visit is a unique experience</div>\r\n         \r\n       <a class="read-more" href="#">Find out More</a>\r\n	        </div>\r\n	\r\n	  <div>\r\n      \r\n      </div>\r\n    </div>\r\n   \r\n    <div class="item">\r\n      <img src="/royalhotel/files/7814/5406/5499/slider02.jpg" alt="slider02.jpg">\r\n	  	\r\n      <div class="carousel-caption ">\r\n	 \r\n       \r\n	    	  	\r\n                   <h4>ROYAL LUXURY</h4>\r\n          <div class="text-des">Every visit is a unique experience</div>\r\n         \r\n       <a class="read-more" href="#">Find out More</a>\r\n	        </div>\r\n	\r\n	  <div>\r\n      \r\n      </div>\r\n    </div>\r\n   \r\n    <div class="item">\r\n      <img src="/royalhotel/files/4814/5406/5500/slider03.jpg" alt="slider03.jpg">\r\n	  	\r\n      <div class="carousel-caption ">\r\n	 \r\n       \r\n	    	  	\r\n                   <h4>ROYAL LUXURY</h4>\r\n          <div class="text-des">Every visit is a unique experience</div>\r\n         \r\n       <a class="read-more" href="#">Find out More</a>\r\n	        </div>\r\n	\r\n	  <div>\r\n      \r\n      </div>\r\n    </div>\r\n   \r\n	 \r\n  </div>\r\n</div>\r\n  \r\n<script>\r\n	\r\njQuery(document).ready(function() {     \r\n    $("#owl-demo2").owlCarousel({ \r\n		nav : true, // Show next and prev buttons\r\n		smartSpeed : 800,\r\n		items:1,\r\n		autoplay: true, \r\n		loop:true,		 \r\n		// "singleItem:true" is a shortcut for:\r\n		// items : 1,\r\n		// itemsDesktop : false,\r\n		// itemsDesktopSmall : false,\r\n		// itemsTablet: false,\r\n		// itemsMobile : false\r\n		 \r\n	});\r\n \r\n     \r\n});\r\n\r\n\r\n</script>\r\n', 1612177810),
(1, 24, 59, 'Body Text', '<h1><span>YOU</span>are the most important part of our Royal story</h1>\r\n<p>Poemata reddit, scire velim, chartis pretium quotus arroget annus scriptor abhinc annos centum qui decidit, inter perfectos veteresque referri debet an inter vilis atque novos. Excludat iurgia finis, est vetus atque probus, centum qui perficit annos. Quid, qui deperiit minor uno mense vel anno, inter quos referendus erit. Iste quidem veteres inter ponetur honeste, qui vel mense brevi vel toto est iunior anno. Utor permisso, caudaeque pilos ut equinae paulatim vello unum, demo etiam unum, dum cadat elusus ratione ruentis acervi, qui redit in fastos et virtutem aestimat annis miraturque nihil nisi quod Libitina sacravit.</p>', 1612177810),
(1, 24, 63, 'Map Heading', '<h2>Location</h2>', 1612177810),
(1, 24, 65, 'Location Map', '<p><iframe style="border: 0;" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2222.128011569134!2d-3.9484010839309414!3d56.1548912683754!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x48888817de862d1f%3A0xd0e5b2a7c42b7868!2sRoyal+Hotel!5e0!3m2!1sen!2sin!4v1454317956293" frameborder="0" width="100%" height="484"></iframe></p>', 1612177810),
(1, 24, 69, 'Map Description', '<p>Located in the heart of Scotland, our luxury hotel is ideally situated for retium <a href="#">Golf</a> arroget <a href="#">Rambling</a> scriptor abhinc annos centum qui decidit, inter perfectos veteresque referri debet an inter vilis atque novos. Excludat iurgia finis, est vetus atque probus,</p>\r\n<p><a class="btn-map" href="#">See &amp; Do</a></p>', 1612177810),
(1, 24, 70, 'Footer Logo', '<p><img src="/royalhotel/files/5514/5432/0940/logo-footer.png" alt="logo-footer.png" width="107" height="75" /><img src="/royalhotel/files/3114/5432/0957/footer-fadeline.png" alt="footer-fadeline.png" width="994" height="2" /></p>', 1612177810),
(1, 24, 72, 'Footer Address', '<p><span>Royal Hotel</span><br /> 55 Henderson St,<br /> Bridge of Allan, <br /> Stirlingshire FK9 4HG<br /> <br /> T: 01786 832 284<br /> E: <a href="mailto:info@royalhotel.co.uk">info@royalhotel.co.uk<br /> </a></p>', 1612177810),
(1, 24, 77, 'Body Banner01', '<h2>STAY &amp; PLAY</h2>\r\n<div class="banner-des">Ennius et sapines et fortis et alter Homerus, ut critici dicunt, leviter curare videtur, quo promissa cadant et somnia. Naevius in manibus non est et mentibus haeret paene recens. Adeo sanctum est vetus omne poema. ambigitur quotiens, uter utro sit prior, aufert Pacuvius docti famam senis Accius alti, dicitur Afrani toga convenisse Menandro, Plautus dicunt, leviter curare videtur, quo promissa cadant et somnia. Naevius in manibus non est et mentibuad exemplar Siculi properare epicharmi. Adeo sanctum est vetus omni.</div>\r\n<p><img src="/royalhotel/files/5014/5432/2495/banner01.jpg" alt="banner01.jpg" /></p>\r\n<p><a href="#">Find Out More</a></p>', 1612177810),
(1, 24, 78, 'Body Banner02', '<h2>JUNIPER 55</h2>\r\n<div class="banner-des">Ennius et sapines et fortis et alter Homerus, ut critici dicunt, leviter curare videtur, quo promissa cadant et somnia. Naevius in manibus non est et mentibus haeret paene recens. Adeo sanctum est vetus omne poema. ambigitur quotiens, uter utro sit prior, aufert Pacuvius docti famam senis Accius alti, dicitur Afrani toga convenisse Menandro, Plautus dicunt, leviter curare videtur, quo promissa cadant et somnia. Naevius in manibus non est et mentibuad exemplar Siculi properare epicharmi. Adeo sanctum est vetus omni.</div>\r\n<p><img src="/royalhotel/files/2314/5432/2497/banner02.jpg" alt="banner02.jpg" /></p>\r\n<p><a href="#">Find Out More</a></p>', 1612177810),
(1, 24, 79, 'Body Banner03', '<h2>ROYAL WEDDINGS</h2>\r\n<div class="banner-des">Ennius et sapines et fortis et alter Homerus, ut critici dicunt, leviter curare videtur, quo promissa cadant et somnia. Naevius in manibus non est et mentibus haeret paene recens. Adeo sanctum est vetus omne poema. ambigitur quotiens, uter utro sit prior, aufert Pacuvius docti famam senis Accius alti, dicitur Afrani toga convenisse Menandro, Plautus dicunt, leviter curare videtur, quo promissa cadant et somnia. Naevius in manibus non est et mentibuad exemplar Siculi properare epicharmi. Adeo sanctum est vetus omni.</div>\r\n<p><img src="/royalhotel/files/4414/5432/2498/banner03.jpg" alt="banner03.jpg" /></p>\r\n<p><a href="#">Find Out More</a></p>', 1612177810),
(1, 24, 80, 'Footer Menu', '<ul class="nav"><li class="nav-selected nav-path-selected"><a href="/royalhotel/" target="_self" class="nav-selected nav-path-selected">Home</a></li><li class=""><a href="/royalhotel/index.php/about/" target="_self" class="">About</a></li><li class=""><a href="/royalhotel/index.php/search/" target="_self" class="">Search</a></li><li class=""><a href="/royalhotel/index.php/blog/" target="_self" class="">Blog</a></li></ul>', 1454404882),
(1, 24, 83, 'Footer Address', '<p><span>Royal Hotel</span><br /> 55 Henderson St,<br /> Bridge of Allan, <br /> Stirlingshire FK9 4HG<br /> <br /> T: 01786 832 284<br /> E: <a href="mailto:info@royalhotel.co.uk">info@royalhotel.co.uk<br /> </a></p>', 1612184323),
(1, 24, 84, 'Footer Menu', '<ul class="nav"><li class="nav-selected nav-path-selected"><a href="/royalhotel/" target="_self" class="nav-selected nav-path-selected">Home</a></li><li class=""><a href="/royalhotel/index.php/about/" target="_self" class="">About</a></li><li class=""><a href="/royalhotel/index.php/search/" target="_self" class="">Search</a></li><li class=""><a href="/royalhotel/index.php/blog/" target="_self" class="">Blog</a></li></ul>', 1454421977),
(1, 24, 85, 'Footer Logo', '<p><img src="/royalhotel/files/5514/5432/0940/logo-footer.png" alt="logo-footer.png" width="107" height="75" /><img src="/royalhotel/files/3114/5432/0957/footer-fadeline.png" alt="footer-fadeline.png" width="994" height="2" /></p>', 1612184322),
(1, 24, 86, 'Map Description', '<p><iframe style="border: 0;" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2222.128011569134!2d-3.9484010839309622!3d56.1548912683754!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x48888817de862d1f%3A0xd0e5b2a7c42b7868!2sRoyal+Hotel!5e0!3m2!1sen!2sin!4v1454330817119" frameborder="0" width="100%" height="450"></iframe></p>\r\n<div class="map-des">Located in the heart of Scotland, our luxury hotel is ideally situated for retium <a href="#">Golf</a> arroget <a href="#">Rambling</a> scriptor abhinc annos centum qui decidit, inter perfectos veteresque referri debet an inter vilis atque novos. Excludat iurgia finis, est vetus atque probus, <a class="btn-map" href="#">See &amp; Do</a></div>', 1612184322),
(1, 24, 87, 'Body Banner01', '<h2>STAY &amp; PLAY</h2>\r\n<div class="banner-des">Ennius et sapines et fortis et alter Homerus, ut critici dicunt, leviter curare videtur, quo promissa cadant et somnia. Naevius in manibus non est et mentibus haeret paene recens. Adeo sanctum est vetus omne poema. ambigitur quotiens, uter utro sit prior, aufert Pacuvius docti famam senis Accius alti, dicitur Afrani toga convenisse Menandro, Plautus dicunt, leviter curare videtur, quo promissa cadant et somnia. Naevius in manibus non est et mentibuad exemplar Siculi properare epicharmi. Adeo sanctum est vetus omni.</div>\r\n<p><img src="/royalhotel/files/5014/5432/2495/banner01.jpg" alt="banner01.jpg" /></p>\r\n<p><a href="#">Find Out More</a></p>', 1612184321),
(1, 24, 88, 'Body Banner02', '<h2>JUNIPER 55</h2>\r\n<div class="banner-des">Ennius et sapines et fortis et alter Homerus, ut critici dicunt, leviter curare videtur, quo promissa cadant et somnia. Naevius in manibus non est et mentibus haeret paene recens. Adeo sanctum est vetus omne poema. ambigitur quotiens, uter utro sit prior, aufert Pacuvius docti famam senis Accius alti, dicitur Afrani toga convenisse Menandro, Plautus dicunt, leviter curare videtur, quo promissa cadant et somnia. Naevius in manibus non est et mentibuad exemplar Siculi properare epicharmi. Adeo sanctum est vetus omni.</div>\r\n<p><img src="/royalhotel/files/2314/5432/2497/banner02.jpg" alt="banner02.jpg" /></p>\r\n<p><a href="#">Find Out More</a></p>', 1612184321),
(1, 24, 89, 'Body Banner03', '<h2>ROYAL WEDDINGS</h2>\r\n<div class="banner-des">Ennius et sapines et fortis et alter Homerus, ut critici dicunt, leviter curare videtur, quo promissa cadant et somnia. Naevius in manibus non est et mentibus haeret paene recens. Adeo sanctum est vetus omne poema. ambigitur quotiens, uter utro sit prior, aufert Pacuvius docti famam senis Accius alti, dicitur Afrani toga convenisse Menandro, Plautus dicunt, leviter curare videtur, quo promissa cadant et somnia. Naevius in manibus non est et mentibuad exemplar Siculi properare epicharmi. Adeo sanctum est vetus omni.</div>\r\n<p><img src="/royalhotel/files/4414/5432/2498/banner03.jpg" alt="banner03.jpg" /></p>\r\n<p><a href="#">Find Out More</a></p>', 1612184322),
(1, 24, 90, 'Map Description', '', 1612274476),
(1, 24, 91, 'Map Heading', '<h2>Location</h2>', 1612185422),
(1, 24, 93, 'Location Map', '<p><iframe style="border: 0;" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2222.128011569134!2d-3.9484010839309622!3d56.1548912683754!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x48888817de862d1f%3A0xd0e5b2a7c42b7868!2sRoyal+Hotel!5e0!3m2!1sen!2sin!4v1454330817119" frameborder="0" width="100%" height="450"></iframe></p>', 1612185422),
(1, 24, 95, 'Map Description', '<p>Located in the heart of Scotland, our luxury hotel is ideally situated for retium <a href="#">Golf</a> arroget <a href="#">Rambling</a> scriptor abhinc annos centum qui decidit, inter perfectos veteresque referri debet an inter vilis atque novos. Excludat iurgia finis, est vetus atque probus, <a class="btn-map" href="#">See &amp; Do</a></p>', 1612185422),
(40, 1, 21, 'Main', '<h3>Links:</h3>', 1612182892),
(107, 1, 6, 'Primary', '\n<h1>Welcome Back</h1>\n<br/>\n\n\n\n', 1454389009),
(107, 1, 8, 'Secondary 1', '<div>\n<h2><span style="font-size: 1.5em;">Concrete5 Picked for U.S. Army MWR Unified Web Presence</span></h2>\r\n<p>The U.S. Army Family, Morale, Welfare and Recreation (MWR) program supports Soldiers, Families and the more than 3 million individuals associated with the U.S. Army. </p>\r\n<p><a href="http://www.concrete5.org/about/blog/concrete5-sightings/concrete5-picked-for-u-s-army-mwr-unified-web-presence/">Read Full Post</a></p></div>\n\n', 1454309811),
(107, 1, 9, 'Secondary 2', '<div>\n<h2><a href="https://www.concrete5.org/about/blog/concrete5-sightings/you-are-invited-what-s-coming-in-2016/">You are invited - What''s coming in 2016</a></h2>\r\n<p><span>We’ve got huge plans and big expectations for 2016, and you need to know all about them.</span></p>\r\n<p>Our CEO Franz will be hosting live global webinar on Thursday, January 28th to cover our plans for 2016.</p>\r\n<h3><a href="https://www.concrete5.org/about/blog/concrete5-sightings/you-are-invited-what-s-coming-in-2016/">Save Your Seat</a></h3></div>\n\n', 1454309811),
(107, 1, 10, 'Secondary 3', '<h6>Featured Theme</h6>\n	<div class="clearfix">\n	<img src="http://www.concrete5.org/files/2713/5103/3580/theme_little_boxes_icon.png" width="97" height="97" style="float: left; margin-right: 10px; margin-bottom: 10px" />\n	<h3>Little Boxes</h3>\n	<p>Little boxes hold all your header contents</p>\n	</div>\n	\n	<a href="javascript:void(0)" onclick="ccm_getMarketplaceItemDetails(1068)" href="http://www.concrete5.org/marketplace/themes/little-boxes" class="btn">Learn More</a>\n', 1454309813),
(107, 1, 11, 'Secondary 4', '<h6>Featured Add-On</h6>\n	<div class="clearfix">\n	<img src="http://www.concrete5.org/files/8614/2385/3748/wrap_anything_icon.png" width="97" height="97" style="float: left; margin-right: 10px; margin-bottom: 10px" />\n	<h3>Wrap Anything</h3>\n	<p>Wrap anything and everything!</p>\n	</div>\n	\n	<a href="javascript:void(0)" onclick="ccm_getMarketplaceItemDetails(1985)" class="btn">Learn More</a>\n', 1454309816),
(107, 1, 12, 'Secondary 5', '<div>\n<style type="text/css">\n\ndiv.deal-of-day { padding-left: 30px; }\ndiv.deal-of-day p { margin-bottom: 10px;}\ndiv.deal-of-day h4 { margin-bottom: 8px;}\n\n.deal-of-day span.deal-of-day-offer-marketplace-icon { \n	display: block;\n	float: left;\n	width: 40px;\n}\n\n.deal-of-day .deal-of-day-offer-description {\n	\n}\n\n.deal-of-day .deal-of-day-offer-deal-description {\n	display: block;\n	float: right;\n	width: 80%;\n}\n.deal-of-day br { clear: both; }\n\n.deal-of-day .deal-of-day-offer-marketplace-title { display: none;}\n.deal-of-day .deal-of-day-offer-marketplace-description { display: none;}\n\n.deal-of-day .deal-of-day-offer-deal-description span { clear:both; }\n\n.deal-of-day .deal-of-day-offer-addons { \n	font-size: 10px; \n	text-transform: uppercase;\n	color: #999;\n}\n</style>\n\n<div id="deal-of-day-0" class="deal-of-day">\n	<h6>Marketplace Deal of the Day</h6>\n		<div class="deal">\n			<a href="http://www.concrete5.org/marketplace/deal/" target="_blank"><h4>Mega Menu 5.7 90% off! </h4></a>\n			<div class="deal-summary">\n				\n						\n						<p class="deal-of-day-offer-description">\n							Grab 10 licenses of the new Mega Menu for Concrete5 5.7 for the price of 1. Save $135! The popular 5.6 version has been used on thousands of websites. Now you can use this flexible menu system for your new 5.7 projects. 						</p>\n						<p class="deal-of-day-offer-addons">\n												Addon:\n						\n						<span>Mega Menu 5.7</span>						</p>\n						\n										<div class="deal-link">\n					<a class="btn btn-default" href="http://www.concrete5.org/marketplace/deal/" target="_blank">\n						$15.00 - Get the Deal \n					</a>\n				</div>\n			</div>\n		</div>\n		</div></div>\n\n	<div class="newsflow-paging-next"><a href="javascript:void(0)" onclick="ccm_showNewsflowOffsite(341)"><span></span></a></div>\n\n	<script type="text/javascript">\n	$(function() {\n		ccm_setNewsflowPagingArrowHeight();\n	});\n	</script>\n	\n', 1454309817),
(128, 1, 18, 'Header Image', '<img border="0" class="ccm-image-block" alt="" src="/royalhotel/files/6014/5406/0125/europe_valencia_hemispheric.jpg" width="960" height="212" />', 1612182741),
(128, 1, 20, 'Header Nav', '<ul class="nav"><li class=""><a href="/royalhotel/" target="_self" class="">Home</a></li><li class="nav-selected nav-path-selected"><a href="/royalhotel/index.php/about/" target="_self" class="nav-selected nav-path-selected">About</a></li><li class=""><a href="/royalhotel/index.php/search/" target="_self" class="">Search</a></li><li class=""><a href="/royalhotel/index.php/blog/" target="_self" class="">Blog</a></li></ul>', 1454330241),
(128, 1, 21, 'Main', '<h3>Links:</h3>', 1612182741),
(128, 1, 22, 'Main', '<ul class="nav"><li class=""><a href="/royalhotel/index.php/about/guestbook/" target="_self" class="">Guestbook</a></li><li class=""><a href="/royalhotel/index.php/about/contact-us/" target="_self" class="">Contact Us</a></li></ul>', 1454330241),
(128, 1, 29, 'Main', '<h2>Learn More</h2>\n																<p>Visit&nbsp;<a title="concrete5 Content Management System" href="http://www.concrete5.org/" target="_blank">concrete5.org</a>&nbsp;to learn more from the&nbsp;<a title="open source content management system" href="http://www.concrete5.org/community" target="_blank">community</a>&nbsp;and the&nbsp;<a href="http://www.concrete5.org/documentation/general-topics/" target="_blank">documentation</a>. You can also browse our&nbsp;<a title="concrete5 marketplace" href="http://www.concrete5.org/marketplace/" target="_blank">marketplace</a>&nbsp;for more&nbsp;<a title="Add-ons for concrete5" href="http://www.concrete5.org/marketplace/addons/" target="_blank">add-ons</a>&nbsp;and&nbsp;<a title="Themes for concrete5" href="http://www.concrete5.org/marketplace/themes/" target="_blank">themes</a>&nbsp;to quickly build the site you really need.&nbsp;</p>\n																<h3>&nbsp;</h3>\n																<h3>Getting Help</h3>\n																<p>You can get free help in the <a href="http://www.concrete5.org/community/forums/" target="_blank">forums</a> and post for free to the&nbsp;<a href="http://www.concrete5.org/community/forums/jobs1/" target="_blank">jobs board</a>.&nbsp;</p>\n																<p>You can also pay the concrete5 team of developers to help with&nbsp;<a href="http://www.concrete5.org/services/support/" target="_blank">any problem</a>&nbsp;you run into. We offer <a href="http://www.concrete5.org/services/training/" target="_blank">training courses</a>&nbsp;and&nbsp;<a href="http://www.concrete5.org/services/hosting/" target="_blank">hosting packages</a>, just let us know <a href="http://www.concrete5.org/services/professional_services/" target="_blank">how we can help</a>.</p>', 1612182741),
(128, 1, 54, 'Site Logo', '<p><a href="#"><img src="/royalhotel/files/3014/5406/6521/logo.png" alt="logo.png" width="107" height="75" /></a></p>', 1612182741),
(128, 1, 57, 'Header Booking', '<p><a class="btn-book" href="#">Book</a></p>', 1612182741),
(128, 2, 21, 'Main', '<h3>Links:</h3>', 1612182835),
(128, 2, 29, 'Main', '<h2>Learn More</h2>\n																<p>Visit&nbsp;<a title="concrete5 Content Management System" href="http://www.concrete5.org/" target="_blank">concrete5.org</a>&nbsp;to learn more from the&nbsp;<a title="open source content management system" href="http://www.concrete5.org/community" target="_blank">community</a>&nbsp;and the&nbsp;<a href="http://www.concrete5.org/documentation/general-topics/" target="_blank">documentation</a>. You can also browse our&nbsp;<a title="concrete5 marketplace" href="http://www.concrete5.org/marketplace/" target="_blank">marketplace</a>&nbsp;for more&nbsp;<a title="Add-ons for concrete5" href="http://www.concrete5.org/marketplace/addons/" target="_blank">add-ons</a>&nbsp;and&nbsp;<a title="Themes for concrete5" href="http://www.concrete5.org/marketplace/themes/" target="_blank">themes</a>&nbsp;to quickly build the site you really need.&nbsp;</p>\n																<h3>&nbsp;</h3>\n																<h3>Getting Help</h3>\n																<p>You can get free help in the <a href="http://www.concrete5.org/community/forums/" target="_blank">forums</a> and post for free to the&nbsp;<a href="http://www.concrete5.org/community/forums/jobs1/" target="_blank">jobs board</a>.&nbsp;</p>\n																<p>You can also pay the concrete5 team of developers to help with&nbsp;<a href="http://www.concrete5.org/services/support/" target="_blank">any problem</a>&nbsp;you run into. We offer <a href="http://www.concrete5.org/services/training/" target="_blank">training courses</a>&nbsp;and&nbsp;<a href="http://www.concrete5.org/services/hosting/" target="_blank">hosting packages</a>, just let us know <a href="http://www.concrete5.org/services/professional_services/" target="_blank">how we can help</a>.</p>', 1612182835),
(128, 2, 54, 'Site Logo', '<p><a href="#"><img src="/royalhotel/files/3014/5406/6521/logo.png" alt="logo.png" width="107" height="75" /></a></p>', 1612182835),
(128, 2, 57, 'Header Booking', '<p><a class="btn-book" href="#">Book</a></p>', 1612182835),
(128, 3, 20, 'Header Nav', '<ul class="nav"><li class=""><a href="/royalhotel/" target="_self" class="">Home</a></li><li class="nav-selected nav-path-selected"><a href="/royalhotel/index.php/about/" target="_self" class="nav-selected nav-path-selected">About</a></li><li class=""><a href="/royalhotel/index.php/search/" target="_self" class="">Search</a></li><li class=""><a href="/royalhotel/index.php/blog/" target="_self" class="">Blog</a></li></ul>', 1454330510),
(128, 3, 21, 'Main', '<h3>Links:</h3>', 1612182986),
(128, 3, 22, 'Main', '<ul class="nav"><li class=""><a href="/royalhotel/index.php/about/guestbook/" target="_self" class="">Guestbook</a></li><li class=""><a href="/royalhotel/index.php/about/contact-us/" target="_self" class="">Contact Us</a></li></ul>', 1454330510),
(128, 3, 29, 'Main', '<h2>Learn More</h2>\n																<p>Visit&nbsp;<a title="concrete5 Content Management System" href="http://www.concrete5.org/" target="_blank">concrete5.org</a>&nbsp;to learn more from the&nbsp;<a title="open source content management system" href="http://www.concrete5.org/community" target="_blank">community</a>&nbsp;and the&nbsp;<a href="http://www.concrete5.org/documentation/general-topics/" target="_blank">documentation</a>. You can also browse our&nbsp;<a title="concrete5 marketplace" href="http://www.concrete5.org/marketplace/" target="_blank">marketplace</a>&nbsp;for more&nbsp;<a title="Add-ons for concrete5" href="http://www.concrete5.org/marketplace/addons/" target="_blank">add-ons</a>&nbsp;and&nbsp;<a title="Themes for concrete5" href="http://www.concrete5.org/marketplace/themes/" target="_blank">themes</a>&nbsp;to quickly build the site you really need.&nbsp;</p>\n																<h3>&nbsp;</h3>\n																<h3>Getting Help</h3>\n																<p>You can get free help in the <a href="http://www.concrete5.org/community/forums/" target="_blank">forums</a> and post for free to the&nbsp;<a href="http://www.concrete5.org/community/forums/jobs1/" target="_blank">jobs board</a>.&nbsp;</p>\n																<p>You can also pay the concrete5 team of developers to help with&nbsp;<a href="http://www.concrete5.org/services/support/" target="_blank">any problem</a>&nbsp;you run into. We offer <a href="http://www.concrete5.org/services/training/" target="_blank">training courses</a>&nbsp;and&nbsp;<a href="http://www.concrete5.org/services/hosting/" target="_blank">hosting packages</a>, just let us know <a href="http://www.concrete5.org/services/professional_services/" target="_blank">how we can help</a>.</p>', 1612182986),
(128, 3, 54, 'Site Logo', '<p><a href="#"><img src="/royalhotel/files/3014/5406/6521/logo.png" alt="logo.png" width="107" height="75" /></a></p>', 1612182986),
(128, 3, 57, 'Header Booking', '<p><a class="btn-book" href="#">Book</a></p>', 1612182986),
(128, 3, 81, 'Header Image', '\r\n\r\n<div class="thumb-slider01">\r\n<div id="owl-demo2" class="carousel-inner">\r\n  <!-- Indicators -->\r\n  \r\n\r\n  <!-- Wrapper for slides -->\r\n\r\n  \r\n  \r\n    <div class="item">\r\n      <img src="/royalhotel/files/4214/5406/5510/slider01.jpg" alt="slider01.jpg">\r\n	  	\r\n      <div class="carousel-caption ">\r\n	 \r\n       \r\n	              <h4>STYLE OVER IMAGE</h4>\r\n          <div class="text-des">Small subheading font style over image</div>\r\n             </div>\r\n	\r\n	  <div>\r\n      \r\n      </div>\r\n    </div>\r\n   \r\n    <div class="item">\r\n      <img src="/royalhotel/files/7814/5406/5499/slider02.jpg" alt="slider02.jpg">\r\n	  	\r\n      <div class="carousel-caption ">\r\n	 \r\n       \r\n	              <h4>STYLE OVER IMAGE</h4>\r\n          <div class="text-des">Small subheading font style over image</div>\r\n             </div>\r\n	\r\n	  <div>\r\n      \r\n      </div>\r\n    </div>\r\n   \r\n	 \r\n  </div>\r\n</div>\r\n  \r\n<script>\r\n	\r\njQuery(document).ready(function() {     \r\n    $("#owl-demo2").owlCarousel({ \r\n		nav : true, // Show next and prev buttons\r\n		smartSpeed : 800,\r\n		items:1,\r\n		autoplay: true, \r\n		loop:true,		 \r\n		// "singleItem:true" is a shortcut for:\r\n		// items : 1,\r\n		// itemsDesktop : false,\r\n		// itemsDesktopSmall : false,\r\n		// itemsTablet: false,\r\n		// itemsMobile : false\r\n		 \r\n	});\r\n \r\n     \r\n});\r\n\r\n\r\n</script>\r\n', 1612182976),
(128, 4, 20, 'Header Nav', '<ul class="nav"><li class=""><a href="/royalhotel/" target="_self" class="">Home</a></li><li class="nav-selected nav-path-selected"><a href="/royalhotel/index.php/about/" target="_self" class="nav-selected nav-path-selected">About</a></li><li class=""><a href="/royalhotel/index.php/search/" target="_self" class="">Search</a></li><li class=""><a href="/royalhotel/index.php/blog/" target="_self" class="">Blog</a></li></ul>', 1454330621),
(128, 4, 54, 'Site Logo', '<p><a href="#"><img src="/royalhotel/files/3014/5406/6521/logo.png" alt="logo.png" width="107" height="75" /></a></p>', 1612183109),
(128, 4, 57, 'Header Booking', '<p><a class="btn-book" href="#">Book</a></p>', 1612183109),
(128, 4, 81, 'Header Image', '\r\n\r\n<div class="thumb-slider01">\r\n<div id="owl-demo2" class="carousel-inner">\r\n  <!-- Indicators -->\r\n  \r\n\r\n  <!-- Wrapper for slides -->\r\n\r\n  \r\n  \r\n    <div class="item">\r\n      <img src="/royalhotel/files/4214/5406/5510/slider01.jpg" alt="slider01.jpg">\r\n	  	\r\n      <div class="carousel-caption ">\r\n	 \r\n       \r\n	              <h4>STYLE OVER IMAGE</h4>\r\n          <div class="text-des">Small subheading font style over image</div>\r\n             </div>\r\n	\r\n	  <div>\r\n      \r\n      </div>\r\n    </div>\r\n   \r\n    <div class="item">\r\n      <img src="/royalhotel/files/7814/5406/5499/slider02.jpg" alt="slider02.jpg">\r\n	  	\r\n      <div class="carousel-caption ">\r\n	 \r\n       \r\n	              <h4>STYLE OVER IMAGE</h4>\r\n          <div class="text-des">Small subheading font style over image</div>\r\n             </div>\r\n	\r\n	  <div>\r\n      \r\n      </div>\r\n    </div>\r\n   \r\n	 \r\n  </div>\r\n</div>\r\n  \r\n<script>\r\n	\r\njQuery(document).ready(function() {     \r\n    $("#owl-demo2").owlCarousel({ \r\n		nav : true, // Show next and prev buttons\r\n		smartSpeed : 800,\r\n		items:1,\r\n		autoplay: true, \r\n		loop:true,		 \r\n		// "singleItem:true" is a shortcut for:\r\n		// items : 1,\r\n		// itemsDesktop : false,\r\n		// itemsDesktopSmall : false,\r\n		// itemsTablet: false,\r\n		// itemsMobile : false\r\n		 \r\n	});\r\n \r\n     \r\n});\r\n\r\n\r\n</script>\r\n', 1612183109),
(128, 5, 54, 'Site Logo', '<p><a href="#"><img src="/royalhotel/files/3014/5406/6521/logo.png" alt="logo.png" width="107" height="75" /></a></p>', 1612183374),
(128, 5, 57, 'Header Booking', '<p><a class="btn-book" href="#">Book</a></p>', 1612183374),
(128, 5, 81, 'Header Image', '\r\n\r\n<div class="thumb-slider01">\r\n<div id="owl-demo2" class="carousel-inner">\r\n  <!-- Indicators -->\r\n  \r\n\r\n  <!-- Wrapper for slides -->\r\n\r\n  \r\n  \r\n    <div class="item">\r\n      <img src="/royalhotel/files/4214/5406/5510/slider01.jpg" alt="slider01.jpg">\r\n	  	\r\n      <div class="carousel-caption ">\r\n	 \r\n       \r\n	              <h4>STYLE OVER IMAGE</h4>\r\n          <div class="text-des">Small subheading font style over image</div>\r\n             </div>\r\n	\r\n	  <div>\r\n      \r\n      </div>\r\n    </div>\r\n   \r\n    <div class="item">\r\n      <img src="/royalhotel/files/7814/5406/5499/slider02.jpg" alt="slider02.jpg">\r\n	  	\r\n      <div class="carousel-caption ">\r\n	 \r\n       \r\n	              <h4>STYLE OVER IMAGE</h4>\r\n          <div class="text-des">Small subheading font style over image</div>\r\n             </div>\r\n	\r\n	  <div>\r\n      \r\n      </div>\r\n    </div>\r\n   \r\n	 \r\n  </div>\r\n</div>\r\n  \r\n<script>\r\n	\r\njQuery(document).ready(function() {     \r\n    $("#owl-demo2").owlCarousel({ \r\n		nav : true, // Show next and prev buttons\r\n		smartSpeed : 800,\r\n		items:1,\r\n		autoplay: true, \r\n		loop:true,		 \r\n		// "singleItem:true" is a shortcut for:\r\n		// items : 1,\r\n		// itemsDesktop : false,\r\n		// itemsDesktopSmall : false,\r\n		// itemsTablet: false,\r\n		// itemsMobile : false\r\n		 \r\n	});\r\n \r\n     \r\n});\r\n\r\n\r\n</script>\r\n', 1612183374),
(128, 5, 82, 'Footer Address', '<p>cxxcfxdcadc</p>', 1612183154),
(128, 5, 83, 'Footer Address', '<p><span>Royal Hotel</span><br /> 55 Henderson St,<br /> Bridge of Allan, <br /> Stirlingshire FK9 4HG<br /> <br /> T: 01786 832 284<br /> E: <a href="mailto:info@royalhotel.co.uk">info@royalhotel.co.uk<br /> </a></p>', 1612183389),
(128, 5, 85, 'Footer Logo', '<p><img src="/royalhotel/files/5514/5432/0940/logo-footer.png" alt="logo-footer.png" width="107" height="75" /><img src="/royalhotel/files/3114/5432/0957/footer-fadeline.png" alt="footer-fadeline.png" width="994" height="2" /></p>', 1612183501),
(128, 6, 20, 'Header Nav', '<ul class="nav"><li class=""><a href="/royalhotel/" target="_self" class="">Home</a></li><li class="nav-selected nav-path-selected"><a href="/royalhotel/index.php/about/" target="_self" class="nav-selected nav-path-selected">About</a></li><li class=""><a href="/royalhotel/index.php/search/" target="_self" class="">Search</a></li><li class=""><a href="/royalhotel/index.php/blog/" target="_self" class="">Blog</a></li></ul>', 1454331447),
(128, 6, 54, 'Site Logo', '<p><a href="#"><img src="/royalhotel/files/3014/5406/6521/logo.png" alt="logo.png" width="107" height="75" /></a></p>', 1612183745),
(128, 6, 57, 'Header Booking', '<p><a class="btn-book" href="#">Book</a></p>', 1612183745),
(128, 6, 81, 'Header Image', '\r\n\r\n<div class="thumb-slider01">\r\n<div id="owl-demo2" class="carousel-inner">\r\n  <!-- Indicators -->\r\n  \r\n\r\n  <!-- Wrapper for slides -->\r\n\r\n  \r\n  \r\n    <div class="item">\r\n      <img src="/royalhotel/files/4214/5406/5510/slider01.jpg" alt="slider01.jpg">\r\n	  	\r\n      <div class="carousel-caption ">\r\n	 \r\n       \r\n	              <h4>STYLE OVER IMAGE</h4>\r\n          <div class="text-des">Small subheading font style over image</div>\r\n             </div>\r\n	\r\n	  <div>\r\n      \r\n      </div>\r\n    </div>\r\n   \r\n    <div class="item">\r\n      <img src="/royalhotel/files/7814/5406/5499/slider02.jpg" alt="slider02.jpg">\r\n	  	\r\n      <div class="carousel-caption ">\r\n	 \r\n       \r\n	              <h4>STYLE OVER IMAGE</h4>\r\n          <div class="text-des">Small subheading font style over image</div>\r\n             </div>\r\n	\r\n	  <div>\r\n      \r\n      </div>\r\n    </div>\r\n   \r\n	 \r\n  </div>\r\n</div>\r\n  \r\n<script>\r\n	\r\njQuery(document).ready(function() {     \r\n    $("#owl-demo2").owlCarousel({ \r\n		nav : true, // Show next and prev buttons\r\n		smartSpeed : 800,\r\n		items:1,\r\n		autoplay: true, \r\n		loop:true,		 \r\n		// "singleItem:true" is a shortcut for:\r\n		// items : 1,\r\n		// itemsDesktop : false,\r\n		// itemsDesktopSmall : false,\r\n		// itemsTablet: false,\r\n		// itemsMobile : false\r\n		 \r\n	});\r\n \r\n     \r\n});\r\n\r\n\r\n</script>\r\n', 1612183745),
(128, 6, 82, 'Footer Address', '<p>cxxcfxdcadc</p>', 1612183746),
(128, 6, 83, 'Footer Address', '<p><span>Royal Hotel</span><br /> 55 Henderson St,<br /> Bridge of Allan, <br /> Stirlingshire FK9 4HG<br /> <br /> T: 01786 832 284<br /> E: <a href="mailto:info@royalhotel.co.uk">info@royalhotel.co.uk<br /> </a></p>', 1612183783),
(128, 6, 84, 'Footer Menu', '<ul class="nav"><li class=""><a href="/royalhotel/" target="_self" class="">Home</a></li><li class="nav-selected nav-path-selected"><a href="/royalhotel/index.php/about/" target="_self" class="nav-selected nav-path-selected">About</a></li><li class=""><a href="/royalhotel/index.php/search/" target="_self" class="">Search</a></li><li class=""><a href="/royalhotel/index.php/blog/" target="_self" class="">Blog</a></li></ul>', 1454331448),
(128, 6, 85, 'Footer Logo', '<p><img src="/royalhotel/files/5514/5432/0940/logo-footer.png" alt="logo-footer.png" width="107" height="75" /><img src="/royalhotel/files/3114/5432/0957/footer-fadeline.png" alt="footer-fadeline.png" width="994" height="2" /></p>', 1612183746),
(128, 6, 86, 'Map Description', '<p><iframe style="border: 0;" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2222.128011569134!2d-3.9484010839309622!3d56.1548912683754!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x48888817de862d1f%3A0xd0e5b2a7c42b7868!2sRoyal+Hotel!5e0!3m2!1sen!2sin!4v1454330817119" frameborder="0" width="100%" height="450"></iframe></p>\r\n<div class="map-des">Located in the heart of Scotland, our luxury hotel is ideally situated for retium <a href="#">Golf</a> arroget <a href="#">Rambling</a> scriptor abhinc annos centum qui decidit, inter perfectos veteresque referri debet an inter vilis atque novos. Excludat iurgia finis, est vetus atque probus, <a class="btn-map" href="#">See &amp; Do</a></div>', 1612183737),
(128, 7, 20, 'Header Nav', '<ul class="nav"><li class=""><a href="/royalhotel/" target="_self" class="">Home</a></li><li class="nav-selected nav-path-selected"><a href="/royalhotel/index.php/about/" target="_self" class="nav-selected nav-path-selected">About</a></li><li class=""><a href="/royalhotel/index.php/search/" target="_self" class="">Search</a></li><li class=""><a href="/royalhotel/index.php/blog/" target="_self" class="">Blog</a></li></ul>', 1454331808),
(128, 7, 54, 'Site Logo', '<p><a href="#"><img src="/royalhotel/files/3014/5406/6521/logo.png" alt="logo.png" width="107" height="75" /></a></p>', 1612184275),
(128, 7, 57, 'Header Booking', '<p><a class="btn-book" href="#">Book</a></p>', 1612184275),
(128, 7, 81, 'Header Image', '\r\n\r\n<div class="thumb-slider01">\r\n<div id="owl-demo2" class="carousel-inner">\r\n  <!-- Indicators -->\r\n  \r\n\r\n  <!-- Wrapper for slides -->\r\n\r\n  \r\n  \r\n    <div class="item">\r\n      <img src="/royalhotel/files/4214/5406/5510/slider01.jpg" alt="slider01.jpg">\r\n	  	\r\n      <div class="carousel-caption ">\r\n	 \r\n       \r\n	              <h4>STYLE OVER IMAGE</h4>\r\n          <div class="text-des">Small subheading font style over image</div>\r\n             </div>\r\n	\r\n	  <div>\r\n      \r\n      </div>\r\n    </div>\r\n   \r\n    <div class="item">\r\n      <img src="/royalhotel/files/7814/5406/5499/slider02.jpg" alt="slider02.jpg">\r\n	  	\r\n      <div class="carousel-caption ">\r\n	 \r\n       \r\n	              <h4>STYLE OVER IMAGE</h4>\r\n          <div class="text-des">Small subheading font style over image</div>\r\n             </div>\r\n	\r\n	  <div>\r\n      \r\n      </div>\r\n    </div>\r\n   \r\n	 \r\n  </div>\r\n</div>\r\n  \r\n<script>\r\n	\r\njQuery(document).ready(function() {     \r\n    $("#owl-demo2").owlCarousel({ \r\n		nav : true, // Show next and prev buttons\r\n		smartSpeed : 800,\r\n		items:1,\r\n		autoplay: true, \r\n		loop:true,		 \r\n		// "singleItem:true" is a shortcut for:\r\n		// items : 1,\r\n		// itemsDesktop : false,\r\n		// itemsDesktopSmall : false,\r\n		// itemsTablet: false,\r\n		// itemsMobile : false\r\n		 \r\n	});\r\n \r\n     \r\n});\r\n\r\n\r\n</script>\r\n', 1612184275),
(128, 7, 82, 'Footer Address', '<p>cxxcfxdcadc</p>', 1612184275),
(128, 7, 83, 'Footer Address', '<p><span>Royal Hotel</span><br /> 55 Henderson St,<br /> Bridge of Allan, <br /> Stirlingshire FK9 4HG<br /> <br /> T: 01786 832 284<br /> E: <a href="mailto:info@royalhotel.co.uk">info@royalhotel.co.uk<br /> </a></p>', 1612184301),
(128, 7, 84, 'Footer Menu', '<ul class="nav"><li class=""><a href="/royalhotel/" target="_self" class="">Home</a></li><li class="nav-selected nav-path-selected"><a href="/royalhotel/index.php/about/" target="_self" class="nav-selected nav-path-selected">About</a></li><li class=""><a href="/royalhotel/index.php/search/" target="_self" class="">Search</a></li><li class=""><a href="/royalhotel/index.php/blog/" target="_self" class="">Blog</a></li></ul>', 1454331808),
(128, 7, 85, 'Footer Logo', '<p><img src="/royalhotel/files/5514/5432/0940/logo-footer.png" alt="logo-footer.png" width="107" height="75" /><img src="/royalhotel/files/3114/5432/0957/footer-fadeline.png" alt="footer-fadeline.png" width="994" height="2" /></p>', 1612184275),
(128, 7, 86, 'Map Description', '<p><iframe style="border: 0;" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2222.128011569134!2d-3.9484010839309622!3d56.1548912683754!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x48888817de862d1f%3A0xd0e5b2a7c42b7868!2sRoyal+Hotel!5e0!3m2!1sen!2sin!4v1454330817119" frameborder="0" width="100%" height="450"></iframe></p>\r\n<div class="map-des">Located in the heart of Scotland, our luxury hotel is ideally situated for retium <a href="#">Golf</a> arroget <a href="#">Rambling</a> scriptor abhinc annos centum qui decidit, inter perfectos veteresque referri debet an inter vilis atque novos. Excludat iurgia finis, est vetus atque probus, <a class="btn-map" href="#">See &amp; Do</a></div>', 1612184275),
(128, 7, 87, 'Body Banner01', '<h2>STAY &amp; PLAY</h2>\r\n<div class="banner-des">Ennius et sapines et fortis et alter Homerus, ut critici dicunt, leviter curare videtur, quo promissa cadant et somnia. Naevius in manibus non est et mentibus haeret paene recens. Adeo sanctum est vetus omne poema. ambigitur quotiens, uter utro sit prior, aufert Pacuvius docti famam senis Accius alti, dicitur Afrani toga convenisse Menandro, Plautus dicunt, leviter curare videtur, quo promissa cadant et somnia. Naevius in manibus non est et mentibuad exemplar Siculi properare epicharmi. Adeo sanctum est vetus omni.</div>\r\n<p><img src="/royalhotel/files/5014/5432/2495/banner01.jpg" alt="banner01.jpg" /></p>\r\n<p><a href="#">Find Out More</a></p>', 1612184212),
(128, 7, 88, 'Body Banner02', '<h2>JUNIPER 55</h2>\r\n<div class="banner-des">Ennius et sapines et fortis et alter Homerus, ut critici dicunt, leviter curare videtur, quo promissa cadant et somnia. Naevius in manibus non est et mentibus haeret paene recens. Adeo sanctum est vetus omne poema. ambigitur quotiens, uter utro sit prior, aufert Pacuvius docti famam senis Accius alti, dicitur Afrani toga convenisse Menandro, Plautus dicunt, leviter curare videtur, quo promissa cadant et somnia. Naevius in manibus non est et mentibuad exemplar Siculi properare epicharmi. Adeo sanctum est vetus omni.</div>\r\n<p><img src="/royalhotel/files/2314/5432/2497/banner02.jpg" alt="banner02.jpg" /></p>\r\n<p><a href="#">Find Out More</a></p>', 1612184238),
(128, 7, 89, 'Body Banner03', '<h2>ROYAL WEDDINGS</h2>\r\n<div class="banner-des">Ennius et sapines et fortis et alter Homerus, ut critici dicunt, leviter curare videtur, quo promissa cadant et somnia. Naevius in manibus non est et mentibus haeret paene recens. Adeo sanctum est vetus omne poema. ambigitur quotiens, uter utro sit prior, aufert Pacuvius docti famam senis Accius alti, dicitur Afrani toga convenisse Menandro, Plautus dicunt, leviter curare videtur, quo promissa cadant et somnia. Naevius in manibus non est et mentibuad exemplar Siculi properare epicharmi. Adeo sanctum est vetus omni.</div>\r\n<p><img src="/royalhotel/files/4414/5432/2498/banner03.jpg" alt="banner03.jpg" /></p>\r\n<p><a href="#">Find Out More</a></p>', 1612184264),
(128, 8, 20, 'Header Nav', '<ul class="nav"><li class=""><a href="/royalhotel/" target="_self" class="">Home</a></li><li class="nav-selected nav-path-selected"><a href="/royalhotel/index.php/about/" target="_self" class="nav-selected nav-path-selected">About</a></li><li class=""><a href="/royalhotel/index.php/search/" target="_self" class="">Search</a></li><li class=""><a href="/royalhotel/index.php/blog/" target="_self" class="">Blog</a></li></ul>', 1454331960),
(128, 8, 54, 'Site Logo', '<p><a href="#"><img src="/royalhotel/files/3014/5406/6521/logo.png" alt="logo.png" width="107" height="75" /></a></p>', 1612184446),
(128, 8, 57, 'Header Booking', '<p><a class="btn-book" href="#">Book</a></p>', 1612184446),
(128, 8, 81, 'Header Image', '\r\n\r\n<div class="thumb-slider01">\r\n<div id="owl-demo2" class="carousel-inner">\r\n  <!-- Indicators -->\r\n  \r\n\r\n  <!-- Wrapper for slides -->\r\n\r\n  \r\n  \r\n    <div class="item">\r\n      <img src="/royalhotel/files/4214/5406/5510/slider01.jpg" alt="slider01.jpg">\r\n	  	\r\n      <div class="carousel-caption ">\r\n	 \r\n       \r\n	              <h4>STYLE OVER IMAGE</h4>\r\n          <div class="text-des">Small subheading font style over image</div>\r\n             </div>\r\n	\r\n	  <div>\r\n      \r\n      </div>\r\n    </div>\r\n   \r\n    <div class="item">\r\n      <img src="/royalhotel/files/7814/5406/5499/slider02.jpg" alt="slider02.jpg">\r\n	  	\r\n      <div class="carousel-caption ">\r\n	 \r\n       \r\n	              <h4>STYLE OVER IMAGE</h4>\r\n          <div class="text-des">Small subheading font style over image</div>\r\n             </div>\r\n	\r\n	  <div>\r\n      \r\n      </div>\r\n    </div>\r\n   \r\n	 \r\n  </div>\r\n</div>\r\n  \r\n<script>\r\n	\r\njQuery(document).ready(function() {     \r\n    $("#owl-demo2").owlCarousel({ \r\n		nav : true, // Show next and prev buttons\r\n		smartSpeed : 800,\r\n		items:1,\r\n		autoplay: true, \r\n		loop:true,		 \r\n		// "singleItem:true" is a shortcut for:\r\n		// items : 1,\r\n		// itemsDesktop : false,\r\n		// itemsDesktopSmall : false,\r\n		// itemsTablet: false,\r\n		// itemsMobile : false\r\n		 \r\n	});\r\n \r\n     \r\n});\r\n\r\n\r\n</script>\r\n', 1612184446),
(128, 8, 82, 'Footer Address', '<p>cxxcfxdcadc</p>', 1612184446),
(128, 8, 83, 'Footer Address', '<p><span>Royal Hotel</span><br /> 55 Henderson St,<br /> Bridge of Allan, <br /> Stirlingshire FK9 4HG<br /> <br /> T: 01786 832 284<br /> E: <a href="mailto:info@royalhotel.co.uk">info@royalhotel.co.uk<br /> </a></p>', 1612184455),
(128, 8, 84, 'Footer Menu', '<ul class="nav"><li class=""><a href="/royalhotel/" target="_self" class="">Home</a></li><li class="nav-selected nav-path-selected"><a href="/royalhotel/index.php/about/" target="_self" class="nav-selected nav-path-selected">About</a></li><li class=""><a href="/royalhotel/index.php/search/" target="_self" class="">Search</a></li><li class=""><a href="/royalhotel/index.php/blog/" target="_self" class="">Blog</a></li></ul>', 1454331960),
(128, 8, 85, 'Footer Logo', '<p><img src="/royalhotel/files/5514/5432/0940/logo-footer.png" alt="logo-footer.png" width="107" height="75" /><img src="/royalhotel/files/3114/5432/0957/footer-fadeline.png" alt="footer-fadeline.png" width="994" height="2" /></p>', 1612184446),
(128, 8, 87, 'Body Banner01', '<h2>STAY &amp; PLAY</h2>\r\n<div class="banner-des">Ennius et sapines et fortis et alter Homerus, ut critici dicunt, leviter curare videtur, quo promissa cadant et somnia. Naevius in manibus non est et mentibus haeret paene recens. Adeo sanctum est vetus omne poema. ambigitur quotiens, uter utro sit prior, aufert Pacuvius docti famam senis Accius alti, dicitur Afrani toga convenisse Menandro, Plautus dicunt, leviter curare videtur, quo promissa cadant et somnia. Naevius in manibus non est et mentibuad exemplar Siculi properare epicharmi. Adeo sanctum est vetus omni.</div>\r\n<p><img src="/royalhotel/files/5014/5432/2495/banner01.jpg" alt="banner01.jpg" /></p>\r\n<p><a href="#">Find Out More</a></p>', 1612184446),
(128, 8, 88, 'Body Banner02', '<h2>JUNIPER 55</h2>\r\n<div class="banner-des">Ennius et sapines et fortis et alter Homerus, ut critici dicunt, leviter curare videtur, quo promissa cadant et somnia. Naevius in manibus non est et mentibus haeret paene recens. Adeo sanctum est vetus omne poema. ambigitur quotiens, uter utro sit prior, aufert Pacuvius docti famam senis Accius alti, dicitur Afrani toga convenisse Menandro, Plautus dicunt, leviter curare videtur, quo promissa cadant et somnia. Naevius in manibus non est et mentibuad exemplar Siculi properare epicharmi. Adeo sanctum est vetus omni.</div>\r\n<p><img src="/royalhotel/files/2314/5432/2497/banner02.jpg" alt="banner02.jpg" /></p>\r\n<p><a href="#">Find Out More</a></p>', 1612184446),
(128, 8, 89, 'Body Banner03', '<h2>ROYAL WEDDINGS</h2>\r\n<div class="banner-des">Ennius et sapines et fortis et alter Homerus, ut critici dicunt, leviter curare videtur, quo promissa cadant et somnia. Naevius in manibus non est et mentibus haeret paene recens. Adeo sanctum est vetus omne poema. ambigitur quotiens, uter utro sit prior, aufert Pacuvius docti famam senis Accius alti, dicitur Afrani toga convenisse Menandro, Plautus dicunt, leviter curare videtur, quo promissa cadant et somnia. Naevius in manibus non est et mentibuad exemplar Siculi properare epicharmi. Adeo sanctum est vetus omni.</div>\r\n<p><img src="/royalhotel/files/4414/5432/2498/banner03.jpg" alt="banner03.jpg" /></p>\r\n<p><a href="#">Find Out More</a></p>', 1612184446),
(128, 8, 90, 'Map Description', '', 1612184484),
(128, 8, 91, 'Map Heading', '<h2>Location</h2>', 1612184424),
(128, 8, 92, 'Location Map', '<p><iframe style="border: 0;" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2222.128011569134!2d-3.9484010839309622!3d56.1548912683754!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x48888817de862d1f%3A0xd0e5b2a7c42b7868!2sRoyal+Hotel!5e0!3m2!1sen!2sin!4v1454330817119" frameborder="0" width="100%" height="450"></iframe></p>\r\n<div class="map-des">Located in the heart of Scotland, our luxury hotel is ideally situated for retium <a href="#">Golf</a> arroget <a href="#">Rambling</a> scriptor abhinc annos centum qui decidit, inter perfectos veteresque referri debet an inter vilis atque novos. Excludat iurgia finis, est vetus atque probus, <a class="btn-map" href="#">See &amp; Do</a></div>', 1612184435),
(128, 9, 54, 'Site Logo', '<p><a href="#"><img src="/royalhotel/files/3014/5406/6521/logo.png" alt="logo.png" width="107" height="75" /></a></p>', 1612184531),
(128, 9, 57, 'Header Booking', '<p><a class="btn-book" href="#">Book</a></p>', 1612184532),
(128, 9, 81, 'Header Image', '\r\n\r\n<div class="thumb-slider01">\r\n<div id="owl-demo2" class="carousel-inner">\r\n  <!-- Indicators -->\r\n  \r\n\r\n  <!-- Wrapper for slides -->\r\n\r\n  \r\n  \r\n    <div class="item">\r\n      <img src="/royalhotel/files/4214/5406/5510/slider01.jpg" alt="slider01.jpg">\r\n	  	\r\n      <div class="carousel-caption ">\r\n	 \r\n       \r\n	              <h4>STYLE OVER IMAGE</h4>\r\n          <div class="text-des">Small subheading font style over image</div>\r\n             </div>\r\n	\r\n	  <div>\r\n      \r\n      </div>\r\n    </div>\r\n   \r\n    <div class="item">\r\n      <img src="/royalhotel/files/7814/5406/5499/slider02.jpg" alt="slider02.jpg">\r\n	  	\r\n      <div class="carousel-caption ">\r\n	 \r\n       \r\n	              <h4>STYLE OVER IMAGE</h4>\r\n          <div class="text-des">Small subheading font style over image</div>\r\n             </div>\r\n	\r\n	  <div>\r\n      \r\n      </div>\r\n    </div>\r\n   \r\n	 \r\n  </div>\r\n</div>\r\n  \r\n<script>\r\n	\r\njQuery(document).ready(function() {     \r\n    $("#owl-demo2").owlCarousel({ \r\n		nav : true, // Show next and prev buttons\r\n		smartSpeed : 800,\r\n		items:1,\r\n		autoplay: true, \r\n		loop:true,		 \r\n		// "singleItem:true" is a shortcut for:\r\n		// items : 1,\r\n		// itemsDesktop : false,\r\n		// itemsDesktopSmall : false,\r\n		// itemsTablet: false,\r\n		// itemsMobile : false\r\n		 \r\n	});\r\n \r\n     \r\n});\r\n\r\n\r\n</script>\r\n', 1612184532);
INSERT INTO `CollectionVersionBlocksOutputCache` (`cID`, `cvID`, `bID`, `arHandle`, `btCachedBlockOutput`, `btCachedBlockOutputExpires`) VALUES
(128, 9, 82, 'Footer Address', '<p>cxxcfxdcadc</p>', 1612184532),
(128, 9, 85, 'Footer Logo', '<p><img src="/royalhotel/files/5514/5432/0940/logo-footer.png" alt="logo-footer.png" width="107" height="75" /><img src="/royalhotel/files/3114/5432/0957/footer-fadeline.png" alt="footer-fadeline.png" width="994" height="2" /></p>', 1612184532),
(128, 9, 87, 'Body Banner01', '<h2>STAY &amp; PLAY</h2>\r\n<div class="banner-des">Ennius et sapines et fortis et alter Homerus, ut critici dicunt, leviter curare videtur, quo promissa cadant et somnia. Naevius in manibus non est et mentibus haeret paene recens. Adeo sanctum est vetus omne poema. ambigitur quotiens, uter utro sit prior, aufert Pacuvius docti famam senis Accius alti, dicitur Afrani toga convenisse Menandro, Plautus dicunt, leviter curare videtur, quo promissa cadant et somnia. Naevius in manibus non est et mentibuad exemplar Siculi properare epicharmi. Adeo sanctum est vetus omni.</div>\r\n<p><img src="/royalhotel/files/5014/5432/2495/banner01.jpg" alt="banner01.jpg" /></p>\r\n<p><a href="#">Find Out More</a></p>', 1612184532),
(128, 9, 88, 'Body Banner02', '<h2>JUNIPER 55</h2>\r\n<div class="banner-des">Ennius et sapines et fortis et alter Homerus, ut critici dicunt, leviter curare videtur, quo promissa cadant et somnia. Naevius in manibus non est et mentibus haeret paene recens. Adeo sanctum est vetus omne poema. ambigitur quotiens, uter utro sit prior, aufert Pacuvius docti famam senis Accius alti, dicitur Afrani toga convenisse Menandro, Plautus dicunt, leviter curare videtur, quo promissa cadant et somnia. Naevius in manibus non est et mentibuad exemplar Siculi properare epicharmi. Adeo sanctum est vetus omni.</div>\r\n<p><img src="/royalhotel/files/2314/5432/2497/banner02.jpg" alt="banner02.jpg" /></p>\r\n<p><a href="#">Find Out More</a></p>', 1612184532),
(128, 9, 89, 'Body Banner03', '<h2>ROYAL WEDDINGS</h2>\r\n<div class="banner-des">Ennius et sapines et fortis et alter Homerus, ut critici dicunt, leviter curare videtur, quo promissa cadant et somnia. Naevius in manibus non est et mentibus haeret paene recens. Adeo sanctum est vetus omne poema. ambigitur quotiens, uter utro sit prior, aufert Pacuvius docti famam senis Accius alti, dicitur Afrani toga convenisse Menandro, Plautus dicunt, leviter curare videtur, quo promissa cadant et somnia. Naevius in manibus non est et mentibuad exemplar Siculi properare epicharmi. Adeo sanctum est vetus omni.</div>\r\n<p><img src="/royalhotel/files/4414/5432/2498/banner03.jpg" alt="banner03.jpg" /></p>\r\n<p><a href="#">Find Out More</a></p>', 1612184532),
(128, 9, 90, 'Map Description', '', 1612184536),
(128, 9, 91, 'Map Heading', '<h2>Location</h2>', 1612184532),
(128, 9, 93, 'Location Map', '<p><iframe style="border: 0;" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2222.128011569134!2d-3.9484010839309622!3d56.1548912683754!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x48888817de862d1f%3A0xd0e5b2a7c42b7868!2sRoyal+Hotel!5e0!3m2!1sen!2sin!4v1454330817119" frameborder="0" width="100%" height="450"></iframe></p>', 1612184502),
(128, 9, 94, 'Map Description', '<div class="map-des">Located in the heart of Scotland, our luxury hotel is ideally situated for retium <a href="#">Golf</a> arroget <a href="#">Rambling</a> scriptor abhinc annos centum qui decidit, inter perfectos veteresque referri debet an inter vilis atque novos. Excludat iurgia finis, est vetus atque probus, <a class="btn-map" href="#">See &amp; Do</a></div>', 1612184519),
(128, 10, 20, 'Header Nav', '<ul class="nav"><li class=""><a href="/royalhotel/" target="_self" class="">Home</a></li><li class="nav-selected nav-path-selected"><a href="/royalhotel/index.php/about/" target="_self" class="nav-selected nav-path-selected">About</a></li><li class=""><a href="/royalhotel/index.php/search/" target="_self" class="">Search</a></li><li class=""><a href="/royalhotel/index.php/blog/" target="_self" class="">Blog</a></li></ul>', 1454332075),
(128, 10, 54, 'Site Logo', '<p><a href="#"><img src="/royalhotel/files/3014/5406/6521/logo.png" alt="logo.png" width="107" height="75" /></a></p>', 1612184562),
(128, 10, 57, 'Header Booking', '<p><a class="btn-book" href="#">Book</a></p>', 1612184562),
(128, 10, 81, 'Header Image', '\r\n\r\n<div class="thumb-slider01">\r\n<div id="owl-demo2" class="carousel-inner">\r\n  <!-- Indicators -->\r\n  \r\n\r\n  <!-- Wrapper for slides -->\r\n\r\n  \r\n  \r\n    <div class="item">\r\n      <img src="/royalhotel/files/4214/5406/5510/slider01.jpg" alt="slider01.jpg">\r\n	  	\r\n      <div class="carousel-caption ">\r\n	 \r\n       \r\n	              <h4>STYLE OVER IMAGE</h4>\r\n          <div class="text-des">Small subheading font style over image</div>\r\n             </div>\r\n	\r\n	  <div>\r\n      \r\n      </div>\r\n    </div>\r\n   \r\n    <div class="item">\r\n      <img src="/royalhotel/files/7814/5406/5499/slider02.jpg" alt="slider02.jpg">\r\n	  	\r\n      <div class="carousel-caption ">\r\n	 \r\n       \r\n	              <h4>STYLE OVER IMAGE</h4>\r\n          <div class="text-des">Small subheading font style over image</div>\r\n             </div>\r\n	\r\n	  <div>\r\n      \r\n      </div>\r\n    </div>\r\n   \r\n	 \r\n  </div>\r\n</div>\r\n  \r\n<script>\r\n	\r\njQuery(document).ready(function() {     \r\n    $("#owl-demo2").owlCarousel({ \r\n		nav : true, // Show next and prev buttons\r\n		smartSpeed : 800,\r\n		items:1,\r\n		autoplay: true, \r\n		loop:true,		 \r\n		// "singleItem:true" is a shortcut for:\r\n		// items : 1,\r\n		// itemsDesktop : false,\r\n		// itemsDesktopSmall : false,\r\n		// itemsTablet: false,\r\n		// itemsMobile : false\r\n		 \r\n	});\r\n \r\n     \r\n});\r\n\r\n\r\n</script>\r\n', 1612184563),
(128, 10, 82, 'Footer Address', '<p>cxxcfxdcadc</p>', 1612184563),
(128, 10, 83, 'Footer Address', '<p><span>Royal Hotel</span><br /> 55 Henderson St,<br /> Bridge of Allan, <br /> Stirlingshire FK9 4HG<br /> <br /> T: 01786 832 284<br /> E: <a href="mailto:info@royalhotel.co.uk">info@royalhotel.co.uk<br /> </a></p>', 1612184619),
(128, 10, 84, 'Footer Menu', '<ul class="nav"><li class=""><a href="/royalhotel/" target="_self" class="">Home</a></li><li class="nav-selected nav-path-selected"><a href="/royalhotel/index.php/about/" target="_self" class="nav-selected nav-path-selected">About</a></li><li class=""><a href="/royalhotel/index.php/search/" target="_self" class="">Search</a></li><li class=""><a href="/royalhotel/index.php/blog/" target="_self" class="">Blog</a></li></ul>', 1454332075),
(128, 10, 85, 'Footer Logo', '<p><img src="/royalhotel/files/5514/5432/0940/logo-footer.png" alt="logo-footer.png" width="107" height="75" /><img src="/royalhotel/files/3114/5432/0957/footer-fadeline.png" alt="footer-fadeline.png" width="994" height="2" /></p>', 1612184563),
(128, 10, 87, 'Body Banner01', '<h2>STAY &amp; PLAY</h2>\r\n<div class="banner-des">Ennius et sapines et fortis et alter Homerus, ut critici dicunt, leviter curare videtur, quo promissa cadant et somnia. Naevius in manibus non est et mentibus haeret paene recens. Adeo sanctum est vetus omne poema. ambigitur quotiens, uter utro sit prior, aufert Pacuvius docti famam senis Accius alti, dicitur Afrani toga convenisse Menandro, Plautus dicunt, leviter curare videtur, quo promissa cadant et somnia. Naevius in manibus non est et mentibuad exemplar Siculi properare epicharmi. Adeo sanctum est vetus omni.</div>\r\n<p><img src="/royalhotel/files/5014/5432/2495/banner01.jpg" alt="banner01.jpg" /></p>\r\n<p><a href="#">Find Out More</a></p>', 1612184563),
(128, 10, 88, 'Body Banner02', '<h2>JUNIPER 55</h2>\r\n<div class="banner-des">Ennius et sapines et fortis et alter Homerus, ut critici dicunt, leviter curare videtur, quo promissa cadant et somnia. Naevius in manibus non est et mentibus haeret paene recens. Adeo sanctum est vetus omne poema. ambigitur quotiens, uter utro sit prior, aufert Pacuvius docti famam senis Accius alti, dicitur Afrani toga convenisse Menandro, Plautus dicunt, leviter curare videtur, quo promissa cadant et somnia. Naevius in manibus non est et mentibuad exemplar Siculi properare epicharmi. Adeo sanctum est vetus omni.</div>\r\n<p><img src="/royalhotel/files/2314/5432/2497/banner02.jpg" alt="banner02.jpg" /></p>\r\n<p><a href="#">Find Out More</a></p>', 1612184563),
(128, 10, 89, 'Body Banner03', '<h2>ROYAL WEDDINGS</h2>\r\n<div class="banner-des">Ennius et sapines et fortis et alter Homerus, ut critici dicunt, leviter curare videtur, quo promissa cadant et somnia. Naevius in manibus non est et mentibus haeret paene recens. Adeo sanctum est vetus omne poema. ambigitur quotiens, uter utro sit prior, aufert Pacuvius docti famam senis Accius alti, dicitur Afrani toga convenisse Menandro, Plautus dicunt, leviter curare videtur, quo promissa cadant et somnia. Naevius in manibus non est et mentibuad exemplar Siculi properare epicharmi. Adeo sanctum est vetus omni.</div>\r\n<p><img src="/royalhotel/files/4414/5432/2498/banner03.jpg" alt="banner03.jpg" /></p>\r\n<p><a href="#">Find Out More</a></p>', 1612184563),
(128, 10, 90, 'Map Description', '', 1612184627),
(128, 10, 91, 'Map Heading', '<h2>Location</h2>', 1612184563),
(128, 10, 93, 'Location Map', '<p><iframe style="border: 0;" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2222.128011569134!2d-3.9484010839309622!3d56.1548912683754!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x48888817de862d1f%3A0xd0e5b2a7c42b7868!2sRoyal+Hotel!5e0!3m2!1sen!2sin!4v1454330817119" frameborder="0" width="100%" height="450"></iframe></p>', 1612184563),
(128, 10, 95, 'Map Description', '<p>Located in the heart of Scotland, our luxury hotel is ideally situated for retium <a href="#">Golf</a> arroget <a href="#">Rambling</a> scriptor abhinc annos centum qui decidit, inter perfectos veteresque referri debet an inter vilis atque novos. Excludat iurgia finis, est vetus atque probus, <a class="btn-map" href="#">See &amp; Do</a></p>', 1612184556),
(128, 11, 20, 'Header Nav', '<ul class="nav"><li class=""><a href="/royalhotel/" target="_self" class="">Home</a></li><li class="nav-selected nav-path-selected"><a href="/royalhotel/index.php/about/" target="_self" class="nav-selected nav-path-selected">About</a></li><li class=""><a href="/royalhotel/index.php/search/" target="_self" class="">Search</a></li><li class=""><a href="/royalhotel/index.php/blog/" target="_self" class="">Blog</a></li></ul>', 1454406957),
(128, 11, 54, 'Site Logo', '<p><a href="#"><img src="/royalhotel/files/3014/5406/6521/logo.png" alt="logo.png" width="107" height="75" /></a></p>', 1612184801),
(128, 11, 57, 'Header Booking', '<p><a class="btn-book" href="#">Book</a></p>', 1612184801),
(128, 11, 81, 'Header Image', '\r\n\r\n<div class="thumb-slider01">\r\n<div id="owl-demo2" class="carousel-inner">\r\n  <!-- Indicators -->\r\n  \r\n\r\n  <!-- Wrapper for slides -->\r\n\r\n  \r\n  \r\n    <div class="item">\r\n      <img src="/royalhotel/files/4214/5406/5510/slider01.jpg" alt="slider01.jpg">\r\n	  	\r\n      <div class="carousel-caption ">\r\n	 \r\n       \r\n	              <h4>STYLE OVER IMAGE</h4>\r\n          <div class="text-des">Small subheading font style over image</div>\r\n             </div>\r\n	\r\n	  <div>\r\n      \r\n      </div>\r\n    </div>\r\n   \r\n    <div class="item">\r\n      <img src="/royalhotel/files/7814/5406/5499/slider02.jpg" alt="slider02.jpg">\r\n	  	\r\n      <div class="carousel-caption ">\r\n	 \r\n       \r\n	              <h4>STYLE OVER IMAGE</h4>\r\n          <div class="text-des">Small subheading font style over image</div>\r\n             </div>\r\n	\r\n	  <div>\r\n      \r\n      </div>\r\n    </div>\r\n   \r\n	 \r\n  </div>\r\n</div>\r\n  \r\n<script>\r\n	\r\njQuery(document).ready(function() {     \r\n    $("#owl-demo2").owlCarousel({ \r\n		nav : true, // Show next and prev buttons\r\n		smartSpeed : 800,\r\n		items:1,\r\n		autoplay: true, \r\n		loop:true,		 \r\n		// "singleItem:true" is a shortcut for:\r\n		// items : 1,\r\n		// itemsDesktop : false,\r\n		// itemsDesktopSmall : false,\r\n		// itemsTablet: false,\r\n		// itemsMobile : false\r\n		 \r\n	});\r\n \r\n     \r\n});\r\n\r\n\r\n</script>\r\n', 1612184801),
(128, 11, 82, 'Footer Address', '<p>cxxcfxdcadc</p>', 1612184802),
(128, 11, 83, 'Footer Address', '<p><span>Royal Hotel</span><br /> 55 Henderson St,<br /> Bridge of Allan, <br /> Stirlingshire FK9 4HG<br /> <br /> T: 01786 832 284<br /> E: <a href="mailto:info@royalhotel.co.uk">info@royalhotel.co.uk<br /> </a></p>', 1612184861),
(128, 11, 84, 'Footer Menu', '<ul class="nav"><li class=""><a href="/royalhotel/" target="_self" class="">Home</a></li><li class="nav-selected nav-path-selected"><a href="/royalhotel/index.php/about/" target="_self" class="nav-selected nav-path-selected">About</a></li><li class=""><a href="/royalhotel/index.php/search/" target="_self" class="">Search</a></li><li class=""><a href="/royalhotel/index.php/blog/" target="_self" class="">Blog</a></li></ul>', 1454406958),
(128, 11, 85, 'Footer Logo', '<p><img src="/royalhotel/files/5514/5432/0940/logo-footer.png" alt="logo-footer.png" width="107" height="75" /><img src="/royalhotel/files/3114/5432/0957/footer-fadeline.png" alt="footer-fadeline.png" width="994" height="2" /></p>', 1612184802),
(128, 11, 87, 'Body Banner01', '<h2>STAY &amp; PLAY</h2>\r\n<div class="banner-des">Ennius et sapines et fortis et alter Homerus, ut critici dicunt, leviter curare videtur, quo promissa cadant et somnia. Naevius in manibus non est et mentibus haeret paene recens. Adeo sanctum est vetus omne poema. ambigitur quotiens, uter utro sit prior, aufert Pacuvius docti famam senis Accius alti, dicitur Afrani toga convenisse Menandro, Plautus dicunt, leviter curare videtur, quo promissa cadant et somnia. Naevius in manibus non est et mentibuad exemplar Siculi properare epicharmi. Adeo sanctum est vetus omni.</div>\r\n<p><img src="/royalhotel/files/5014/5432/2495/banner01.jpg" alt="banner01.jpg" /></p>\r\n<p><a href="#">Find Out More</a></p>', 1612184801),
(128, 11, 88, 'Body Banner02', '<h2>JUNIPER 55</h2>\r\n<div class="banner-des">Ennius et sapines et fortis et alter Homerus, ut critici dicunt, leviter curare videtur, quo promissa cadant et somnia. Naevius in manibus non est et mentibus haeret paene recens. Adeo sanctum est vetus omne poema. ambigitur quotiens, uter utro sit prior, aufert Pacuvius docti famam senis Accius alti, dicitur Afrani toga convenisse Menandro, Plautus dicunt, leviter curare videtur, quo promissa cadant et somnia. Naevius in manibus non est et mentibuad exemplar Siculi properare epicharmi. Adeo sanctum est vetus omni.</div>\r\n<p><img src="/royalhotel/files/2314/5432/2497/banner02.jpg" alt="banner02.jpg" /></p>\r\n<p><a href="#">Find Out More</a></p>', 1612184801),
(128, 11, 89, 'Body Banner03', '<h2>ROYAL WEDDINGS</h2>\r\n<div class="banner-des">Ennius et sapines et fortis et alter Homerus, ut critici dicunt, leviter curare videtur, quo promissa cadant et somnia. Naevius in manibus non est et mentibus haeret paene recens. Adeo sanctum est vetus omne poema. ambigitur quotiens, uter utro sit prior, aufert Pacuvius docti famam senis Accius alti, dicitur Afrani toga convenisse Menandro, Plautus dicunt, leviter curare videtur, quo promissa cadant et somnia. Naevius in manibus non est et mentibuad exemplar Siculi properare epicharmi. Adeo sanctum est vetus omni.</div>\r\n<p><img src="/royalhotel/files/4414/5432/2498/banner03.jpg" alt="banner03.jpg" /></p>\r\n<p><a href="#">Find Out More</a></p>', 1612184801),
(128, 11, 90, 'Map Description', '', 1612259457),
(128, 11, 91, 'Map Heading', '<h2>Location</h2>', 1612184801),
(128, 11, 93, 'Location Map', '<p><iframe style="border: 0;" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2222.128011569134!2d-3.9484010839309622!3d56.1548912683754!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x48888817de862d1f%3A0xd0e5b2a7c42b7868!2sRoyal+Hotel!5e0!3m2!1sen!2sin!4v1454330817119" frameborder="0" width="100%" height="450"></iframe></p>', 1612184802),
(128, 11, 95, 'Map Description', '<p>Located in the heart of Scotland, our luxury hotel is ideally situated for retium <a href="#">Golf</a> arroget <a href="#">Rambling</a> scriptor abhinc annos centum qui decidit, inter perfectos veteresque referri debet an inter vilis atque novos. Excludat iurgia finis, est vetus atque probus, <a class="btn-map" href="#">See &amp; Do</a></p>', 1612184802),
(128, 11, 96, 'Body Content', '<h1>Large intro title to page</h1>\r\n<p>Paragraph style arroget annus scriptor abhinc annos centum qui decidit, inter perfectos veteresque referri debet an inter vilis atque novos. Excludat iurgia finis, est vetus atque probus, centum qui perficit annos. Quid, qui link style uno mense vel anno, inter quos referendus erit. Veteresne poetas, an quos et praesens et postera respuat aetas.</p>\r\n<p> Iste quidem veteres inter ponetur honeste, qui vel mense brevi vel toto est iunior anno. Utor permisso, caudaeque pilos ut equinae paulatim vello unum, demo etiam unum, dum cadat elusus ratione ruentis acervi, qui redit in fastos et virtutem aestimat annis.</p>\r\n<h2>Subheading style when applied it should come in with rules above and below</h2>\r\n<ul>\r\n<li>Ennius et sapines et fortis et alter Homerus, ut critici dicunt, leviter curare videtur, quo promissa cadant et somnia.</li>\r\n<li>Naevius in manibus non est et mentibus haeret paene recens. Adeo sanctum est vetus omne poema.</li>\r\n<li>Ambigitur quotiens, uter utro sit prior, aufert Pacuvius docti famam senis Accius alti, dicitur Afrani toga.</li>\r\n<li>Menandro lautus ad exemplar Siculi properare Epicharmi, vincere Caecilius gravitate, Terentius arte.</li>\r\n</ul>\r\n<p>Hos ediscit et hos arto stipata theatro spectat Roma potens; habet hos numeratque poetas ad nostrum tempus Livi scriptoris ab aevo. Interdum volgus rectum videt, est ubi peccat. Si veteres ita miratur laudatque poetas, ut nihil anteferat, nihil illis comparet, errat. Si quaedam nimis antique, si peraque dure dicere credit eos, ignave multa fatetur, et sapit et mecum facit et Iova iudicat aequo.</p>\r\n<p>Non equidem insector delendave carmina Livi esse reor, memini quae plagosum mihi parvo Orbilium dictare; sed emendata videri pulchraque et exactis minimum distantia miror. Inter quae verbum emicuit si forte decorum, et si versus paulo concinnior unus.</p>', 1612184797),
(129, 1, 19, 'Header Image', '<img border="0" class="ccm-image-block" alt="" src="/royalhotel/files/1314/5406/0129/europe_rotterdam_port.jpg" width="960" height="212" />', 1612182491),
(129, 1, 20, 'Header Nav', '<ul class="nav"><li class=""><a href="/royalhotel/" target="_self" class="">Home</a></li><li class=""><a href="/royalhotel/index.php/about/" target="_self" class="">About</a></li><li class="nav-selected nav-path-selected"><a href="/royalhotel/index.php/search/" target="_self" class="nav-selected nav-path-selected">Search</a></li><li class=""><a href="/royalhotel/index.php/blog/" target="_self" class="">Blog</a></li></ul>', 1454332934),
(129, 1, 54, 'Site Logo', '<p><a href="#"><img src="/royalhotel/files/3014/5406/6521/logo.png" alt="logo.png" width="107" height="75" /></a></p>', 1612182491),
(129, 1, 57, 'Header Booking', '<p><a class="btn-book" href="#">Book</a></p>', 1612182491),
(129, 1, 83, 'Footer Address', '<p><span>Royal Hotel</span><br /> 55 Henderson St,<br /> Bridge of Allan, <br /> Stirlingshire FK9 4HG<br /> <br /> T: 01786 832 284<br /> E: <a href="mailto:info@royalhotel.co.uk">info@royalhotel.co.uk<br /> </a></p>', 1612185435),
(129, 1, 84, 'Footer Menu', '<ul class="nav"><li class=""><a href="/royalhotel/" target="_self" class="">Home</a></li><li class=""><a href="/royalhotel/index.php/about/" target="_self" class="">About</a></li><li class="nav-selected nav-path-selected"><a href="/royalhotel/index.php/search/" target="_self" class="nav-selected nav-path-selected">Search</a></li><li class=""><a href="/royalhotel/index.php/blog/" target="_self" class="">Blog</a></li></ul>', 1454332935),
(129, 1, 85, 'Footer Logo', '<p><img src="/royalhotel/files/5514/5432/0940/logo-footer.png" alt="logo-footer.png" width="107" height="75" /><img src="/royalhotel/files/3114/5432/0957/footer-fadeline.png" alt="footer-fadeline.png" width="994" height="2" /></p>', 1612185435),
(129, 1, 87, 'Body Banner01', '<h2>STAY &amp; PLAY</h2>\r\n<div class="banner-des">Ennius et sapines et fortis et alter Homerus, ut critici dicunt, leviter curare videtur, quo promissa cadant et somnia. Naevius in manibus non est et mentibus haeret paene recens. Adeo sanctum est vetus omne poema. ambigitur quotiens, uter utro sit prior, aufert Pacuvius docti famam senis Accius alti, dicitur Afrani toga convenisse Menandro, Plautus dicunt, leviter curare videtur, quo promissa cadant et somnia. Naevius in manibus non est et mentibuad exemplar Siculi properare epicharmi. Adeo sanctum est vetus omni.</div>\r\n<p><img src="/royalhotel/files/5014/5432/2495/banner01.jpg" alt="banner01.jpg" /></p>\r\n<p><a href="#">Find Out More</a></p>', 1612185434),
(129, 1, 88, 'Body Banner02', '<h2>JUNIPER 55</h2>\r\n<div class="banner-des">Ennius et sapines et fortis et alter Homerus, ut critici dicunt, leviter curare videtur, quo promissa cadant et somnia. Naevius in manibus non est et mentibus haeret paene recens. Adeo sanctum est vetus omne poema. ambigitur quotiens, uter utro sit prior, aufert Pacuvius docti famam senis Accius alti, dicitur Afrani toga convenisse Menandro, Plautus dicunt, leviter curare videtur, quo promissa cadant et somnia. Naevius in manibus non est et mentibuad exemplar Siculi properare epicharmi. Adeo sanctum est vetus omni.</div>\r\n<p><img src="/royalhotel/files/2314/5432/2497/banner02.jpg" alt="banner02.jpg" /></p>\r\n<p><a href="#">Find Out More</a></p>', 1612185434),
(129, 1, 89, 'Body Banner03', '<h2>ROYAL WEDDINGS</h2>\r\n<div class="banner-des">Ennius et sapines et fortis et alter Homerus, ut critici dicunt, leviter curare videtur, quo promissa cadant et somnia. Naevius in manibus non est et mentibus haeret paene recens. Adeo sanctum est vetus omne poema. ambigitur quotiens, uter utro sit prior, aufert Pacuvius docti famam senis Accius alti, dicitur Afrani toga convenisse Menandro, Plautus dicunt, leviter curare videtur, quo promissa cadant et somnia. Naevius in manibus non est et mentibuad exemplar Siculi properare epicharmi. Adeo sanctum est vetus omni.</div>\r\n<p><img src="/royalhotel/files/4414/5432/2498/banner03.jpg" alt="banner03.jpg" /></p>\r\n<p><a href="#">Find Out More</a></p>', 1612185434),
(129, 1, 90, 'Map Description', '', 1612185449),
(129, 1, 91, 'Map Heading', '<h2>Location</h2>', 1612185434),
(129, 1, 93, 'Location Map', '<p><iframe style="border: 0;" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2222.128011569134!2d-3.9484010839309622!3d56.1548912683754!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x48888817de862d1f%3A0xd0e5b2a7c42b7868!2sRoyal+Hotel!5e0!3m2!1sen!2sin!4v1454330817119" frameborder="0" width="100%" height="450"></iframe></p>', 1612185435),
(129, 1, 95, 'Map Description', '<p>Located in the heart of Scotland, our luxury hotel is ideally situated for retium <a href="#">Golf</a> arroget <a href="#">Rambling</a> scriptor abhinc annos centum qui decidit, inter perfectos veteresque referri debet an inter vilis atque novos. Excludat iurgia finis, est vetus atque probus, <a class="btn-map" href="#">See &amp; Do</a></p>', 1612185435),
(129, 2, 20, 'Header Nav', '<ul class="nav"><li class=""><a href="/royalhotel/" target="_self" class="">Home</a></li><li class=""><a href="/royalhotel/index.php/about/" target="_self" class="">About</a></li><li class="nav-selected nav-path-selected"><a href="/royalhotel/index.php/search/" target="_self" class="nav-selected nav-path-selected">Search</a></li><li class=""><a href="/royalhotel/index.php/blog/" target="_self" class="">Blog</a></li></ul>', 1454403584),
(129, 2, 54, 'Site Logo', '<p><a href="#"><img src="/royalhotel/files/3014/5406/6521/logo.png" alt="logo.png" width="107" height="75" /></a></p>', 1612185587),
(129, 2, 57, 'Header Booking', '<p><a class="btn-book" href="#">Book</a></p>', 1612185587),
(129, 2, 83, 'Footer Address', '<p><span>Royal Hotel</span><br /> 55 Henderson St,<br /> Bridge of Allan, <br /> Stirlingshire FK9 4HG<br /> <br /> T: 01786 832 284<br /> E: <a href="mailto:info@royalhotel.co.uk">info@royalhotel.co.uk<br /> </a></p>', 1612185588),
(129, 2, 84, 'Footer Menu', '<ul class="nav"><li class=""><a href="/royalhotel/" target="_self" class="">Home</a></li><li class=""><a href="/royalhotel/index.php/about/" target="_self" class="">About</a></li><li class="nav-selected nav-path-selected"><a href="/royalhotel/index.php/search/" target="_self" class="nav-selected nav-path-selected">Search</a></li><li class=""><a href="/royalhotel/index.php/blog/" target="_self" class="">Blog</a></li></ul>', 1454403584),
(129, 2, 85, 'Footer Logo', '<p><img src="/royalhotel/files/5514/5432/0940/logo-footer.png" alt="logo-footer.png" width="107" height="75" /><img src="/royalhotel/files/3114/5432/0957/footer-fadeline.png" alt="footer-fadeline.png" width="994" height="2" /></p>', 1612185588),
(129, 2, 87, 'Body Banner01', '<h2>STAY &amp; PLAY</h2>\r\n<div class="banner-des">Ennius et sapines et fortis et alter Homerus, ut critici dicunt, leviter curare videtur, quo promissa cadant et somnia. Naevius in manibus non est et mentibus haeret paene recens. Adeo sanctum est vetus omne poema. ambigitur quotiens, uter utro sit prior, aufert Pacuvius docti famam senis Accius alti, dicitur Afrani toga convenisse Menandro, Plautus dicunt, leviter curare videtur, quo promissa cadant et somnia. Naevius in manibus non est et mentibuad exemplar Siculi properare epicharmi. Adeo sanctum est vetus omni.</div>\r\n<p><img src="/royalhotel/files/5014/5432/2495/banner01.jpg" alt="banner01.jpg" /></p>\r\n<p><a href="#">Find Out More</a></p>', 1612185587),
(129, 2, 88, 'Body Banner02', '<h2>JUNIPER 55</h2>\r\n<div class="banner-des">Ennius et sapines et fortis et alter Homerus, ut critici dicunt, leviter curare videtur, quo promissa cadant et somnia. Naevius in manibus non est et mentibus haeret paene recens. Adeo sanctum est vetus omne poema. ambigitur quotiens, uter utro sit prior, aufert Pacuvius docti famam senis Accius alti, dicitur Afrani toga convenisse Menandro, Plautus dicunt, leviter curare videtur, quo promissa cadant et somnia. Naevius in manibus non est et mentibuad exemplar Siculi properare epicharmi. Adeo sanctum est vetus omni.</div>\r\n<p><img src="/royalhotel/files/2314/5432/2497/banner02.jpg" alt="banner02.jpg" /></p>\r\n<p><a href="#">Find Out More</a></p>', 1612185587),
(129, 2, 89, 'Body Banner03', '<h2>ROYAL WEDDINGS</h2>\r\n<div class="banner-des">Ennius et sapines et fortis et alter Homerus, ut critici dicunt, leviter curare videtur, quo promissa cadant et somnia. Naevius in manibus non est et mentibus haeret paene recens. Adeo sanctum est vetus omne poema. ambigitur quotiens, uter utro sit prior, aufert Pacuvius docti famam senis Accius alti, dicitur Afrani toga convenisse Menandro, Plautus dicunt, leviter curare videtur, quo promissa cadant et somnia. Naevius in manibus non est et mentibuad exemplar Siculi properare epicharmi. Adeo sanctum est vetus omni.</div>\r\n<p><img src="/royalhotel/files/4414/5432/2498/banner03.jpg" alt="banner03.jpg" /></p>\r\n<p><a href="#">Find Out More</a></p>', 1612185587),
(129, 2, 90, 'Map Description', '', 1612256187),
(129, 2, 91, 'Map Heading', '<h2>Location</h2>', 1612185588),
(129, 2, 93, 'Location Map', '<p><iframe style="border: 0;" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2222.128011569134!2d-3.9484010839309622!3d56.1548912683754!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x48888817de862d1f%3A0xd0e5b2a7c42b7868!2sRoyal+Hotel!5e0!3m2!1sen!2sin!4v1454330817119" frameborder="0" width="100%" height="450"></iframe></p>', 1612185588),
(129, 2, 95, 'Map Description', '<p>Located in the heart of Scotland, our luxury hotel is ideally situated for retium <a href="#">Golf</a> arroget <a href="#">Rambling</a> scriptor abhinc annos centum qui decidit, inter perfectos veteresque referri debet an inter vilis atque novos. Excludat iurgia finis, est vetus atque probus, <a class="btn-map" href="#">See &amp; Do</a></p>', 1612185588),
(129, 2, 97, 'Header Image', '\r\n\r\n<div class="thumb-slider01">\r\n<div id="owl-demo2" class="carousel-inner">\r\n  <!-- Indicators -->\r\n  \r\n\r\n  <!-- Wrapper for slides -->\r\n\r\n  \r\n  \r\n    <div class="item">\r\n      <img src="/royalhotel/files/4214/5406/5510/slider01.jpg" alt="slider01.jpg">\r\n	  	\r\n      <div class="carousel-caption ">\r\n	 \r\n       \r\n	              <h4>STYLE OVER IMAGE</h4>\r\n          <div class="text-des">Small subheading font style over image</div>\r\n             </div>\r\n	\r\n	  <div>\r\n      \r\n      </div>\r\n    </div>\r\n   \r\n    <div class="item">\r\n      <img src="/royalhotel/files/7814/5406/5499/slider02.jpg" alt="slider02.jpg">\r\n	  	\r\n      <div class="carousel-caption ">\r\n	 \r\n       \r\n	              <h4>STYLE OVER IMAGE</h4>\r\n          <div class="text-des">Small subheading font style over image</div>\r\n             </div>\r\n	\r\n	  <div>\r\n      \r\n      </div>\r\n    </div>\r\n   \r\n	 \r\n  </div>\r\n</div>\r\n  \r\n<script>\r\n	\r\njQuery(document).ready(function() {     \r\n    $("#owl-demo2").owlCarousel({ \r\n		nav : true, // Show next and prev buttons\r\n		smartSpeed : 800,\r\n		items:1,\r\n		autoplay: true, \r\n		loop:true,		 \r\n		// "singleItem:true" is a shortcut for:\r\n		// items : 1,\r\n		// itemsDesktop : false,\r\n		// itemsDesktopSmall : false,\r\n		// itemsTablet: false,\r\n		// itemsMobile : false\r\n		 \r\n	});\r\n \r\n     \r\n});\r\n\r\n\r\n</script>\r\n', 1612185579),
(130, 1, 19, 'Header Image', '<img border="0" class="ccm-image-block" alt="" src="/royalhotel/files/1314/5406/0129/europe_rotterdam_port.jpg" width="960" height="212" />', 1612177261),
(130, 1, 20, 'Header Nav', '<ul class="nav"><li class=""><a href="/royalhotel/" target="_self" class="">Home</a></li><li class=""><a href="/royalhotel/index.php/about/" target="_self" class="">About</a></li><li class=""><a href="/royalhotel/index.php/search/" target="_self" class="">Search</a></li><li class="nav-selected nav-path-selected"><a href="/royalhotel/index.php/blog/" target="_self" class="nav-selected nav-path-selected">Blog</a></li></ul>', 1454324761),
(130, 1, 54, 'Site Logo', '<p><a href="#"><img src="/royalhotel/files/3014/5406/6521/logo.png" alt="logo.png" width="107" height="75" /></a></p>', 1612177261),
(130, 1, 57, 'Header Booking', '<p><a class="btn-book" href="#">Book</a></p>', 1612177261),
(130, 1, 83, 'Footer Address', '<p><span>Royal Hotel</span><br /> 55 Henderson St,<br /> Bridge of Allan, <br /> Stirlingshire FK9 4HG<br /> <br /> T: 01786 832 284<br /> E: <a href="mailto:info@royalhotel.co.uk">info@royalhotel.co.uk<br /> </a></p>', 1612185600),
(130, 1, 85, 'Footer Logo', '<p><img src="/royalhotel/files/5514/5432/0940/logo-footer.png" alt="logo-footer.png" width="107" height="75" /><img src="/royalhotel/files/3114/5432/0957/footer-fadeline.png" alt="footer-fadeline.png" width="994" height="2" /></p>', 1612185600),
(130, 1, 87, 'Body Banner01', '<h2>STAY &amp; PLAY</h2>\r\n<div class="banner-des">Ennius et sapines et fortis et alter Homerus, ut critici dicunt, leviter curare videtur, quo promissa cadant et somnia. Naevius in manibus non est et mentibus haeret paene recens. Adeo sanctum est vetus omne poema. ambigitur quotiens, uter utro sit prior, aufert Pacuvius docti famam senis Accius alti, dicitur Afrani toga convenisse Menandro, Plautus dicunt, leviter curare videtur, quo promissa cadant et somnia. Naevius in manibus non est et mentibuad exemplar Siculi properare epicharmi. Adeo sanctum est vetus omni.</div>\r\n<p><img src="/royalhotel/files/5014/5432/2495/banner01.jpg" alt="banner01.jpg" /></p>\r\n<p><a href="#">Find Out More</a></p>', 1612185596),
(130, 1, 88, 'Body Banner02', '<h2>JUNIPER 55</h2>\r\n<div class="banner-des">Ennius et sapines et fortis et alter Homerus, ut critici dicunt, leviter curare videtur, quo promissa cadant et somnia. Naevius in manibus non est et mentibus haeret paene recens. Adeo sanctum est vetus omne poema. ambigitur quotiens, uter utro sit prior, aufert Pacuvius docti famam senis Accius alti, dicitur Afrani toga convenisse Menandro, Plautus dicunt, leviter curare videtur, quo promissa cadant et somnia. Naevius in manibus non est et mentibuad exemplar Siculi properare epicharmi. Adeo sanctum est vetus omni.</div>\r\n<p><img src="/royalhotel/files/2314/5432/2497/banner02.jpg" alt="banner02.jpg" /></p>\r\n<p><a href="#">Find Out More</a></p>', 1612185596),
(130, 1, 89, 'Body Banner03', '<h2>ROYAL WEDDINGS</h2>\r\n<div class="banner-des">Ennius et sapines et fortis et alter Homerus, ut critici dicunt, leviter curare videtur, quo promissa cadant et somnia. Naevius in manibus non est et mentibus haeret paene recens. Adeo sanctum est vetus omne poema. ambigitur quotiens, uter utro sit prior, aufert Pacuvius docti famam senis Accius alti, dicitur Afrani toga convenisse Menandro, Plautus dicunt, leviter curare videtur, quo promissa cadant et somnia. Naevius in manibus non est et mentibuad exemplar Siculi properare epicharmi. Adeo sanctum est vetus omni.</div>\r\n<p><img src="/royalhotel/files/4414/5432/2498/banner03.jpg" alt="banner03.jpg" /></p>\r\n<p><a href="#">Find Out More</a></p>', 1612185598),
(130, 1, 90, 'Map Description', '', 1612185611),
(130, 1, 91, 'Map Heading', '<h2>Location</h2>', 1612185598),
(130, 1, 93, 'Location Map', '<p><iframe style="border: 0;" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2222.128011569134!2d-3.9484010839309622!3d56.1548912683754!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x48888817de862d1f%3A0xd0e5b2a7c42b7868!2sRoyal+Hotel!5e0!3m2!1sen!2sin!4v1454330817119" frameborder="0" width="100%" height="450"></iframe></p>', 1612185599),
(130, 1, 95, 'Map Description', '<p>Located in the heart of Scotland, our luxury hotel is ideally situated for retium <a href="#">Golf</a> arroget <a href="#">Rambling</a> scriptor abhinc annos centum qui decidit, inter perfectos veteresque referri debet an inter vilis atque novos. Excludat iurgia finis, est vetus atque probus, <a class="btn-map" href="#">See &amp; Do</a></p>', 1612185599),
(130, 2, 20, 'Header Nav', '<ul class="nav"><li class=""><a href="/royalhotel/" target="_self" class="">Home</a></li><li class=""><a href="/royalhotel/index.php/about/" target="_self" class="">About</a></li><li class=""><a href="/royalhotel/index.php/search/" target="_self" class="">Search</a></li><li class="nav-selected nav-path-selected"><a href="/royalhotel/index.php/blog/" target="_self" class="nav-selected nav-path-selected">Blog</a></li></ul>', 1454403590),
(130, 2, 54, 'Site Logo', '<p><a href="#"><img src="/royalhotel/files/3014/5406/6521/logo.png" alt="logo.png" width="107" height="75" /></a></p>', 1612185655),
(130, 2, 57, 'Header Booking', '<p><a class="btn-book" href="#">Book</a></p>', 1612185655),
(130, 2, 83, 'Footer Address', '<p><span>Royal Hotel</span><br /> 55 Henderson St,<br /> Bridge of Allan, <br /> Stirlingshire FK9 4HG<br /> <br /> T: 01786 832 284<br /> E: <a href="mailto:info@royalhotel.co.uk">info@royalhotel.co.uk<br /> </a></p>', 1612185657),
(130, 2, 84, 'Footer Menu', '<ul class="nav"><li class=""><a href="/royalhotel/" target="_self" class="">Home</a></li><li class=""><a href="/royalhotel/index.php/about/" target="_self" class="">About</a></li><li class=""><a href="/royalhotel/index.php/search/" target="_self" class="">Search</a></li><li class="nav-selected nav-path-selected"><a href="/royalhotel/index.php/blog/" target="_self" class="nav-selected nav-path-selected">Blog</a></li></ul>', 1454403591),
(130, 2, 85, 'Footer Logo', '<p><img src="/royalhotel/files/5514/5432/0940/logo-footer.png" alt="logo-footer.png" width="107" height="75" /><img src="/royalhotel/files/3114/5432/0957/footer-fadeline.png" alt="footer-fadeline.png" width="994" height="2" /></p>', 1612185657),
(130, 2, 87, 'Body Banner01', '<h2>STAY &amp; PLAY</h2>\r\n<div class="banner-des">Ennius et sapines et fortis et alter Homerus, ut critici dicunt, leviter curare videtur, quo promissa cadant et somnia. Naevius in manibus non est et mentibus haeret paene recens. Adeo sanctum est vetus omne poema. ambigitur quotiens, uter utro sit prior, aufert Pacuvius docti famam senis Accius alti, dicitur Afrani toga convenisse Menandro, Plautus dicunt, leviter curare videtur, quo promissa cadant et somnia. Naevius in manibus non est et mentibuad exemplar Siculi properare epicharmi. Adeo sanctum est vetus omni.</div>\r\n<p><img src="/royalhotel/files/5014/5432/2495/banner01.jpg" alt="banner01.jpg" /></p>\r\n<p><a href="#">Find Out More</a></p>', 1612185655),
(130, 2, 88, 'Body Banner02', '<h2>JUNIPER 55</h2>\r\n<div class="banner-des">Ennius et sapines et fortis et alter Homerus, ut critici dicunt, leviter curare videtur, quo promissa cadant et somnia. Naevius in manibus non est et mentibus haeret paene recens. Adeo sanctum est vetus omne poema. ambigitur quotiens, uter utro sit prior, aufert Pacuvius docti famam senis Accius alti, dicitur Afrani toga convenisse Menandro, Plautus dicunt, leviter curare videtur, quo promissa cadant et somnia. Naevius in manibus non est et mentibuad exemplar Siculi properare epicharmi. Adeo sanctum est vetus omni.</div>\r\n<p><img src="/royalhotel/files/2314/5432/2497/banner02.jpg" alt="banner02.jpg" /></p>\r\n<p><a href="#">Find Out More</a></p>', 1612185656),
(130, 2, 89, 'Body Banner03', '<h2>ROYAL WEDDINGS</h2>\r\n<div class="banner-des">Ennius et sapines et fortis et alter Homerus, ut critici dicunt, leviter curare videtur, quo promissa cadant et somnia. Naevius in manibus non est et mentibus haeret paene recens. Adeo sanctum est vetus omne poema. ambigitur quotiens, uter utro sit prior, aufert Pacuvius docti famam senis Accius alti, dicitur Afrani toga convenisse Menandro, Plautus dicunt, leviter curare videtur, quo promissa cadant et somnia. Naevius in manibus non est et mentibuad exemplar Siculi properare epicharmi. Adeo sanctum est vetus omni.</div>\r\n<p><img src="/royalhotel/files/4414/5432/2498/banner03.jpg" alt="banner03.jpg" /></p>\r\n<p><a href="#">Find Out More</a></p>', 1612185656),
(130, 2, 90, 'Map Description', '', 1612256387),
(130, 2, 91, 'Map Heading', '<h2>Location</h2>', 1612185656),
(130, 2, 93, 'Location Map', '<p><iframe style="border: 0;" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2222.128011569134!2d-3.9484010839309622!3d56.1548912683754!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x48888817de862d1f%3A0xd0e5b2a7c42b7868!2sRoyal+Hotel!5e0!3m2!1sen!2sin!4v1454330817119" frameborder="0" width="100%" height="450"></iframe></p>', 1612185656),
(130, 2, 95, 'Map Description', '<p>Located in the heart of Scotland, our luxury hotel is ideally situated for retium <a href="#">Golf</a> arroget <a href="#">Rambling</a> scriptor abhinc annos centum qui decidit, inter perfectos veteresque referri debet an inter vilis atque novos. Excludat iurgia finis, est vetus atque probus, <a class="btn-map" href="#">See &amp; Do</a></p>', 1612185657),
(130, 2, 98, 'Header Image', '\r\n\r\n<div class="thumb-slider01">\r\n<div id="owl-demo2" class="carousel-inner">\r\n  <!-- Indicators -->\r\n  \r\n\r\n  <!-- Wrapper for slides -->\r\n\r\n  \r\n  \r\n    <div class="item">\r\n      <img src="/royalhotel/files/4214/5406/5510/slider01.jpg" alt="slider01.jpg">\r\n	  	\r\n      <div class="carousel-caption ">\r\n	 \r\n       \r\n	              <h4>STYLE OVER IMAGE</h4>\r\n          <div class="text-des">Small subheading font style over image</div>\r\n             </div>\r\n	\r\n	  <div>\r\n      \r\n      </div>\r\n    </div>\r\n   \r\n    <div class="item">\r\n      <img src="/royalhotel/files/7814/5406/5499/slider02.jpg" alt="slider02.jpg">\r\n	  	\r\n      <div class="carousel-caption ">\r\n	 \r\n       \r\n	              <h4>STYLE OVER IMAGE</h4>\r\n          <div class="text-des">Small subheading font style over image</div>\r\n             </div>\r\n	\r\n	  <div>\r\n      \r\n      </div>\r\n    </div>\r\n   \r\n	 \r\n  </div>\r\n</div>\r\n  \r\n<script>\r\n	\r\njQuery(document).ready(function() {     \r\n    $("#owl-demo2").owlCarousel({ \r\n		nav : true, // Show next and prev buttons\r\n		smartSpeed : 800,\r\n		items:1,\r\n		autoplay: true, \r\n		loop:true,		 \r\n		// "singleItem:true" is a shortcut for:\r\n		// items : 1,\r\n		// itemsDesktop : false,\r\n		// itemsDesktopSmall : false,\r\n		// itemsTablet: false,\r\n		// itemsMobile : false\r\n		 \r\n	});\r\n \r\n     \r\n});\r\n\r\n\r\n</script>\r\n', 1612185643);

-- --------------------------------------------------------

--
-- Table structure for table `CollectionVersionBlockStyles`
--

DROP TABLE IF EXISTS `CollectionVersionBlockStyles`;
CREATE TABLE IF NOT EXISTS `CollectionVersionBlockStyles` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) NOT NULL,
  `csrID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `CollectionVersionRelatedEdits`
--

DROP TABLE IF EXISTS `CollectionVersionRelatedEdits`;
CREATE TABLE IF NOT EXISTS `CollectionVersionRelatedEdits` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `cRelationID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvRelationID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `CollectionVersions`
--

DROP TABLE IF EXISTS `CollectionVersions`;
CREATE TABLE IF NOT EXISTS `CollectionVersions` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '1',
  `cvName` text,
  `cvHandle` varchar(255) DEFAULT NULL,
  `cvDescription` text,
  `cvDatePublic` datetime DEFAULT NULL,
  `cvDateCreated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cvComments` varchar(255) DEFAULT NULL,
  `cvIsApproved` tinyint(1) NOT NULL DEFAULT '0',
  `cvIsNew` tinyint(1) NOT NULL DEFAULT '0',
  `cvAuthorUID` int(10) unsigned DEFAULT NULL,
  `cvApproverUID` int(10) unsigned DEFAULT NULL,
  `ptID` int(10) unsigned NOT NULL DEFAULT '0',
  `ctID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvActivateDatetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `CollectionVersions`
--

INSERT INTO `CollectionVersions` (`cID`, `cvID`, `cvName`, `cvHandle`, `cvDescription`, `cvDatePublic`, `cvDateCreated`, `cvComments`, `cvIsApproved`, `cvIsNew`, `cvAuthorUID`, `cvApproverUID`, `ptID`, `ctID`, `cvActivateDatetime`) VALUES
(1, 1, 'Home', 'home', '', '2016-01-29 15:03:08', '2016-01-29 15:03:08', 'Initial Version', 0, 0, 1, NULL, 5, 7, NULL),
(1, 2, 'Home', 'home', '', '2016-01-29 15:03:08', '2016-01-29 15:08:07', 'New Version 2', 0, 0, 1, 1, 5, 7, NULL),
(1, 3, 'Home', 'home', '', '2016-01-29 15:03:08', '2016-01-29 15:46:56', 'Version 3', 0, 0, 1, 1, 5, 7, NULL),
(1, 4, 'Home', 'home', '', '2016-01-29 15:03:08', '2016-01-29 15:51:09', 'Version 4', 0, 0, 1, 1, 5, 7, NULL),
(1, 5, 'Home', 'home', '', '2016-01-29 15:03:08', '2016-01-29 15:59:33', 'Version 5', 0, 0, 1, 1, 5, 7, NULL),
(1, 6, 'Home', 'home', '', '2016-01-29 15:03:08', '2016-01-29 16:23:47', 'Version 6', 0, 0, 1, 1, 5, 7, NULL),
(1, 7, 'Home', 'home', '', '2016-01-29 15:03:08', '2016-01-29 16:30:29', 'Version 7', 0, 0, 1, 1, 5, 7, NULL),
(1, 8, 'Home', 'home', '', '2016-01-29 15:03:08', '2016-01-29 16:52:19', 'Version 8', 0, 0, 1, 1, 5, 7, NULL),
(1, 9, 'Home', 'home', '', '2016-01-29 15:03:08', '2016-01-29 17:59:22', 'Version 9', 0, 0, 1, 1, 5, 7, NULL),
(1, 10, 'Home', 'home', '', '2016-01-29 15:03:08', '2016-02-01 10:28:22', 'Version 10', 0, 0, 1, 1, 5, 7, NULL),
(1, 11, 'Home', 'home', '', '2016-01-29 15:03:08', '2016-02-01 12:14:13', 'Version 11', 0, 0, 1, 1, 5, 7, NULL),
(1, 12, 'Home', 'home', '', '2016-01-29 15:03:08', '2016-02-01 12:59:57', 'Version 12', 0, 0, 1, 1, 5, 7, NULL),
(1, 13, 'Home', 'home', '', '2016-01-29 15:03:08', '2016-02-01 14:40:22', 'Version 13', 0, 0, 1, 1, 5, 7, NULL),
(1, 14, 'Home', 'home', '', '2016-01-29 15:03:08', '2016-02-01 14:49:26', 'Version 14', 0, 0, 1, 1, 5, 7, NULL),
(1, 15, 'Home', 'home', '', '2016-01-29 15:03:08', '2016-02-01 14:53:53', 'Version 15', 0, 0, 1, 1, 5, 7, NULL),
(1, 16, 'Home', 'home', '', '2016-01-29 15:03:08', '2016-02-01 14:58:25', 'Version 16', 0, 0, 1, 1, 5, 7, NULL),
(1, 17, 'Home', 'home', '', '2016-01-29 15:03:08', '2016-02-01 15:07:15', 'Version 17', 0, 0, 1, 1, 5, 7, NULL),
(1, 18, 'Home', 'home', '', '2016-01-29 15:03:08', '2016-02-01 15:32:46', 'Version 18', 0, 0, 1, 1, 5, 7, NULL),
(1, 19, 'Home', 'home', '', '2016-01-29 15:03:08', '2016-02-01 15:38:46', 'Version 19', 0, 0, 1, 1, 5, 7, NULL),
(1, 20, 'Home', 'home', '', '2016-01-29 15:03:08', '2016-02-01 15:41:27', 'Version 20', 0, 0, 1, 1, 5, 7, NULL),
(1, 21, 'Home', 'home', '', '2016-01-29 15:03:08', '2016-02-01 15:59:05', 'Version 21', 0, 0, 1, 1, 5, 7, NULL),
(1, 22, 'Home', 'home', '', '2016-01-29 15:03:08', '2016-02-01 16:16:38', 'Version 22', 0, 0, 1, 1, 5, 7, NULL),
(1, 23, 'Home', 'home', '', '2016-01-29 15:03:08', '2016-02-01 16:24:14', 'Version 23', 0, 0, 1, 1, 5, 7, NULL),
(1, 24, 'Home', 'home', '', '2016-01-29 15:03:08', '2016-02-01 16:40:03', 'Version 24', 1, 0, 1, 1, 5, 7, NULL),
(2, 1, 'Dashboard', 'dashboard', '', '2016-01-29 15:03:24', '2016-01-29 15:03:24', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(3, 1, 'Composer', 'composer', 'Write for your site.', '2016-01-29 15:03:28', '2016-01-29 15:03:28', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(4, 1, 'Write', 'write', '', '2016-01-29 15:03:29', '2016-01-29 15:03:29', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(5, 1, 'Drafts', 'drafts', '', '2016-01-29 15:03:29', '2016-01-29 15:03:29', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(6, 1, 'Sitemap', 'sitemap', 'Whole world at a glance.', '2016-01-29 15:03:30', '2016-01-29 15:03:30', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(7, 1, 'Full Sitemap', 'full', '', '2016-01-29 15:03:30', '2016-01-29 15:03:30', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(8, 1, 'Flat View', 'explore', '', '2016-01-29 15:03:31', '2016-01-29 15:03:31', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(9, 1, 'Page Search', 'search', '', '2016-01-29 15:03:31', '2016-01-29 15:03:31', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(10, 1, 'Files', 'files', 'All documents and images.', '2016-01-29 15:03:32', '2016-01-29 15:03:32', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(11, 1, 'File Manager', 'search', '', '2016-01-29 15:03:32', '2016-01-29 15:03:32', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(12, 1, 'Attributes', 'attributes', '', '2016-01-29 15:03:34', '2016-01-29 15:03:34', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(13, 1, 'File Sets', 'sets', '', '2016-01-29 15:03:34', '2016-01-29 15:03:34', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(14, 1, 'Add File Set', 'add_set', '', '2016-01-29 15:03:35', '2016-01-29 15:03:35', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(15, 1, 'Members', 'users', 'Add and manage the user accounts and groups on your website.', '2016-01-29 15:03:35', '2016-01-29 15:03:35', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(16, 1, 'Search Users', 'search', '', '2016-01-29 15:03:36', '2016-01-29 15:03:36', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(17, 1, 'User Groups', 'groups', '', '2016-01-29 15:03:36', '2016-01-29 15:03:36', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(18, 1, 'Attributes', 'attributes', '', '2016-01-29 15:03:37', '2016-01-29 15:03:37', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(19, 1, 'Add User', 'add', '', '2016-01-29 15:03:37', '2016-01-29 15:03:37', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(20, 1, 'Add Group', 'add_group', '', '2016-01-29 15:03:38', '2016-01-29 15:03:38', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(21, 1, 'Group Sets', 'group_sets', '', '2016-01-29 15:03:39', '2016-01-29 15:03:39', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(22, 1, 'Reports', 'reports', 'Get data from forms and logs.', '2016-01-29 15:03:40', '2016-01-29 15:03:40', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(23, 1, 'Statistics', 'statistics', 'View your site activity.', '2016-01-29 15:03:40', '2016-01-29 15:03:40', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(24, 1, 'Form Results', 'forms', 'Get submission data.', '2016-01-29 15:03:41', '2016-01-29 15:03:41', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(25, 1, 'Surveys', 'surveys', '', '2016-01-29 15:03:42', '2016-01-29 15:03:42', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(26, 1, 'Logs', 'logs', '', '2016-01-29 15:03:42', '2016-01-29 15:03:42', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(27, 1, 'Pages & Themes', 'pages', 'Reskin your site.', '2016-01-29 15:03:43', '2016-01-29 15:03:43', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(28, 1, 'Themes', 'themes', 'Reskin your site.', '2016-01-29 15:03:44', '2016-01-29 15:03:44', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(29, 1, 'Add', 'add', '', '2016-01-29 15:03:45', '2016-01-29 15:03:45', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(30, 1, 'Inspect', 'inspect', '', '2016-01-29 15:03:45', '2016-01-29 15:03:45', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(31, 1, 'Customize', 'customize', '', '2016-01-29 15:03:46', '2016-01-29 15:03:46', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(32, 1, 'Page Types', 'types', 'What goes in your site.', '2016-01-29 15:03:46', '2016-01-29 15:03:46', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(33, 1, 'Add Page Type', 'add', 'Add page types to your site.', '2016-01-29 15:03:47', '2016-01-29 15:03:47', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(34, 1, 'Attributes', 'attributes', '', '2016-01-29 15:03:47', '2016-01-29 15:03:47', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(35, 1, 'Single Pages', 'single', '', '2016-01-29 15:03:48', '2016-01-29 15:03:48', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(36, 1, 'Workflow', 'workflow', '', '2016-01-29 15:03:48', '2016-01-29 15:03:48', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(37, 1, 'Workflow List', 'list', '', '2016-01-29 15:03:49', '2016-01-29 15:03:49', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(38, 1, 'Waiting for Me', 'me', '', '2016-01-29 15:03:50', '2016-01-29 15:03:50', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(39, 1, 'Stacks & Blocks', 'blocks', 'Manage sitewide content and administer block types.', '2016-01-29 15:03:50', '2016-01-29 15:03:50', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(40, 1, 'Stacks', 'stacks', 'Share content across your site.', '2016-01-29 15:03:51', '2016-01-29 15:03:51', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(41, 1, 'Block & Stack Permissions', 'permissions', 'Control who can add blocks and stacks on your site.', '2016-01-29 15:03:52', '2016-01-29 15:03:52', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(42, 1, 'Stack List', 'list', '', '2016-01-29 15:03:52', '2016-01-29 15:03:52', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(43, 1, 'Block Types', 'types', 'Manage the installed block types in your site.', '2016-01-29 15:03:54', '2016-01-29 15:03:54', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(44, 1, 'Extend concrete5', 'extend', 'Connect to the concrete5 marketplace, install custom add-ons, and download updates for marketplace add-ons and themes.', '2016-01-29 15:03:55', '2016-01-29 15:03:55', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(45, 1, 'Dashboard', 'news', '', '2016-01-29 15:03:56', '2016-01-29 15:03:56', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(46, 1, 'Add Functionality', 'install', 'Install add-ons & themes.', '2016-01-29 15:03:57', '2016-01-29 15:03:57', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(47, 1, 'Update Add-Ons', 'update', 'Update your installed packages.', '2016-01-29 15:03:58', '2016-01-29 15:03:58', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(48, 1, 'Connect to the Community', 'connect', 'Connect to the concrete5 community.', '2016-01-29 15:03:58', '2016-01-29 15:03:58', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(49, 1, 'Get More Themes', 'themes', 'Download themes from concrete5.org.', '2016-01-29 15:03:59', '2016-01-29 15:03:59', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(50, 1, 'Get More Add-Ons', 'add-ons', 'Download add-ons from concrete5.org.', '2016-01-29 15:04:00', '2016-01-29 15:04:00', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(51, 1, 'System & Settings', 'system', 'Secure and setup your site.', '2016-01-29 15:04:00', '2016-01-29 15:04:00', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(52, 1, 'Basics', 'basics', 'Basic information about your website.', '2016-01-29 15:04:01', '2016-01-29 15:04:01', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(53, 1, 'Site Name', 'site_name', '', '2016-01-29 15:04:02', '2016-01-29 15:04:02', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(54, 1, 'Bookmark Icons', 'icons', 'Bookmark icon and mobile home screen icon setup.', '2016-01-29 15:04:02', '2016-01-29 15:04:02', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(55, 1, 'Rich Text Editor', 'editor', '', '2016-01-29 15:04:03', '2016-01-29 15:04:03', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(56, 1, 'Languages', 'multilingual', '', '2016-01-29 15:04:03', '2016-01-29 15:04:03', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(57, 1, 'Time Zone', 'timezone', '', '2016-01-29 15:04:04', '2016-01-29 15:04:04', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(58, 1, 'Interface Preferences', 'interface', '', '2016-01-29 15:04:04', '2016-01-29 15:04:04', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(59, 1, 'SEO & Statistics', 'seo', 'Enable pretty URLs, statistics and tracking codes.', '2016-01-29 15:04:05', '2016-01-29 15:04:05', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(60, 1, 'Pretty URLs', 'urls', '', '2016-01-29 15:04:06', '2016-01-29 15:04:06', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(61, 1, 'Bulk SEO Updater', 'bulk_seo_tool', '', '2016-01-29 15:04:07', '2016-01-29 15:04:07', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(62, 1, 'Tracking Codes', 'tracking_codes', '', '2016-01-29 15:04:07', '2016-01-29 15:04:07', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(63, 1, 'Excluded URL Word List', 'excluded', '', '2016-01-29 15:04:08', '2016-01-29 15:04:08', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(64, 1, 'Statistics', 'statistics', '', '2016-01-29 15:04:09', '2016-01-29 15:04:09', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(65, 1, 'Search Index', 'search_index', '', '2016-01-29 15:04:09', '2016-01-29 15:04:09', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(66, 1, 'Optimization', 'optimization', 'Keep your site running well.', '2016-01-29 15:04:10', '2016-01-29 15:04:10', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(67, 1, 'Cache & Speed Settings', 'cache', '', '2016-01-29 15:04:11', '2016-01-29 15:04:11', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(68, 1, 'Clear Cache', 'clear_cache', '', '2016-01-29 15:04:11', '2016-01-29 15:04:11', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(69, 1, 'Automated Jobs', 'jobs', '', '2016-01-29 15:04:12', '2016-01-29 15:04:12', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(70, 1, 'Permissions & Access', 'permissions', 'Control who sees and edits your site.', '2016-01-29 15:04:12', '2016-01-29 15:04:12', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(71, 1, 'Site Access', 'site', '', '2016-01-29 15:04:13', '2016-01-29 15:04:13', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(72, 1, 'File Manager Permissions', 'files', '', '2016-01-29 15:04:13', '2016-01-29 15:04:13', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(73, 1, 'Allowed File Types', 'file_types', '', '2016-01-29 15:04:14', '2016-01-29 15:04:14', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(74, 1, 'Task Permissions', 'tasks', '', '2016-01-29 15:04:14', '2016-01-29 15:04:14', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(75, 1, 'User Permissions', 'users', '', '2016-01-29 15:04:15', '2016-01-29 15:04:15', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(76, 1, 'Advanced Permissions', 'advanced', '', '2016-01-29 15:04:16', '2016-01-29 15:04:16', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(77, 1, 'IP Blacklist', 'ip_blacklist', '', '2016-01-29 15:04:17', '2016-01-29 15:04:17', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(78, 1, 'Captcha Setup', 'captcha', '', '2016-01-29 15:04:18', '2016-01-29 15:04:18', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(79, 1, 'Spam Control', 'antispam', '', '2016-01-29 15:04:19', '2016-01-29 15:04:19', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(80, 1, 'Maintenance Mode', 'maintenance_mode', '', '2016-01-29 15:04:20', '2016-01-29 15:04:20', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(81, 1, 'Login & Registration', 'registration', 'Change login behaviors and setup public profiles.', '2016-01-29 15:04:21', '2016-01-29 15:04:21', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(82, 1, 'Login Destination', 'postlogin', '', '2016-01-29 15:04:22', '2016-01-29 15:04:22', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(83, 1, 'Public Profiles', 'profiles', '', '2016-01-29 15:04:22', '2016-01-29 15:04:22', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(84, 1, 'Public Registration', 'public_registration', '', '2016-01-29 15:04:23', '2016-01-29 15:04:23', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(85, 1, 'Email', 'mail', 'Control how your site send and processes mail.', '2016-01-29 15:04:23', '2016-01-29 15:04:23', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(86, 1, 'SMTP Method', 'method', '', '2016-01-29 15:04:24', '2016-01-29 15:04:24', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(87, 1, 'Test Mail Settings', 'test_settings', '', '2016-01-29 15:04:24', '2016-01-29 15:04:24', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(88, 1, 'Email Importers', 'importers', '', '2016-01-29 15:04:25', '2016-01-29 15:04:25', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(89, 1, 'Attributes', 'attributes', 'Setup attributes for pages, users, files and more.', '2016-01-29 15:04:25', '2016-01-29 15:04:25', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(90, 1, 'Sets', 'sets', 'Group attributes into sets for easier organization', '2016-01-29 15:04:26', '2016-01-29 15:04:26', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(91, 1, 'Types', 'types', 'Choose which attribute types are available for different items.', '2016-01-29 15:04:27', '2016-01-29 15:04:27', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(92, 1, 'Environment', 'environment', 'Advanced settings for web developers.', '2016-01-29 15:04:27', '2016-01-29 15:04:27', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(93, 1, 'Environment Information', 'info', '', '2016-01-29 15:04:28', '2016-01-29 15:04:28', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(94, 1, 'Debug Settings', 'debug', '', '2016-01-29 15:04:29', '2016-01-29 15:04:29', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(95, 1, 'Logging Settings', 'logging', '', '2016-01-29 15:04:29', '2016-01-29 15:04:29', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(96, 1, 'File Storage Locations', 'file_storage_locations', '', '2016-01-29 15:04:30', '2016-01-29 15:04:30', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(97, 1, 'Proxy Server', 'proxy', '', '2016-01-29 15:04:31', '2016-01-29 15:04:31', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(98, 1, 'Backup & Restore', 'backup_restore', 'Backup or restore your website.', '2016-01-29 15:04:31', '2016-01-29 15:04:31', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(99, 1, 'Backup Database', 'backup', '', '2016-01-29 15:04:32', '2016-01-29 15:04:32', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(100, 1, 'Update concrete5', 'update', '', '2016-01-29 15:04:33', '2016-01-29 15:04:33', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(101, 1, 'Database XML', 'database', '', '2016-01-29 15:04:33', '2016-01-29 15:04:33', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(102, 1, 'Composer', 'composer', '', '2016-01-29 15:04:34', '2016-01-29 15:04:34', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(103, 1, '', NULL, NULL, '2016-01-29 15:04:34', '2016-01-29 15:04:34', 'Initial Version', 1, 0, NULL, NULL, 0, 1, NULL),
(104, 1, '', NULL, NULL, '2016-01-29 15:04:35', '2016-01-29 15:04:35', 'Initial Version', 1, 0, NULL, NULL, 0, 2, NULL),
(105, 1, '', NULL, NULL, '2016-01-29 15:04:35', '2016-01-29 15:04:35', 'Initial Version', 1, 0, NULL, NULL, 0, 3, NULL),
(106, 1, 'Welcome to concrete5', 'welcome', 'Learn about how to use concrete5, how to develop for concrete5, and get general help.', '2016-01-29 15:04:35', '2016-01-29 15:04:35', 'Initial Version', 1, 0, 1, NULL, 5, 3, NULL),
(107, 1, 'Customize Dashboard Home', 'home', '', '2016-01-29 15:04:36', '2016-01-29 15:04:36', 'Initial Version', 1, 0, 1, NULL, 5, 2, NULL),
(108, 1, 'Drafts', '!drafts', '', '2016-01-29 15:05:13', '2016-01-29 15:05:13', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(109, 1, 'Trash', '!trash', '', '2016-01-29 15:05:14', '2016-01-29 15:05:14', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(110, 1, 'Stacks', '!stacks', '', '2016-01-29 15:05:14', '2016-01-29 15:05:14', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(111, 1, 'Login', 'login', '', '2016-01-29 15:05:15', '2016-01-29 15:05:15', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(112, 1, 'Register', 'register', '', '2016-01-29 15:05:16', '2016-01-29 15:05:16', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(113, 1, 'Profile', 'profile', '', '2016-01-29 15:05:17', '2016-01-29 15:05:17', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(114, 1, 'Edit', 'edit', '', '2016-01-29 15:05:18', '2016-01-29 15:05:18', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(115, 1, 'Avatar', 'avatar', '', '2016-01-29 15:05:18', '2016-01-29 15:05:18', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(116, 1, 'Messages', 'messages', '', '2016-01-29 15:05:19', '2016-01-29 15:05:19', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(117, 1, 'Friends', 'friends', '', '2016-01-29 15:05:19', '2016-01-29 15:05:19', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(118, 1, 'Page Not Found', 'page_not_found', '', '2016-01-29 15:05:20', '2016-01-29 15:05:20', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(119, 1, 'Page Forbidden', 'page_forbidden', '', '2016-01-29 15:05:20', '2016-01-29 15:05:20', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(120, 1, 'Download File', 'download_file', '', '2016-01-29 15:05:21', '2016-01-29 15:05:21', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(121, 1, 'Header Nav', 'header-nav', NULL, '2016-01-29 15:05:33', '2016-01-29 15:05:33', 'Initial Version', 1, 0, 1, NULL, 5, 1, NULL),
(122, 1, 'Side Nav', 'side-nav', NULL, '2016-01-29 15:05:33', '2016-01-29 15:05:33', 'Initial Version', 1, 0, 1, NULL, 5, 1, NULL),
(123, 1, 'Site Name', 'site-name', NULL, '2016-01-29 15:05:34', '2016-01-29 15:05:34', 'Initial Version', 1, 0, 1, NULL, 5, 1, NULL),
(124, 1, '', NULL, NULL, '2016-01-29 15:05:36', '2016-01-29 15:05:36', 'Initial Version', 1, 0, NULL, NULL, 0, 4, NULL),
(125, 1, '', NULL, NULL, '2016-01-29 15:05:36', '2016-01-29 15:05:36', 'Initial Version', 1, 0, NULL, NULL, 0, 5, NULL),
(126, 1, '', NULL, NULL, '2016-01-29 15:05:36', '2016-01-29 15:05:36', 'Initial Version', 1, 0, NULL, NULL, 0, 6, NULL),
(127, 1, '', NULL, NULL, '2016-01-29 15:05:37', '2016-01-29 15:05:37', 'Initial Version', 1, 0, NULL, NULL, 0, 7, NULL),
(128, 1, 'About', 'about', '', '2016-01-29 15:05:37', '2016-01-29 15:05:37', 'Initial Version', 0, 0, 1, NULL, 5, 6, NULL),
(128, 2, 'About', 'about', '', '2016-01-29 15:05:37', '2016-02-01 18:03:29', 'Version 2', 0, 0, 1, 1, 5, 6, NULL),
(128, 3, 'About', 'about', '', '2016-01-29 15:05:37', '2016-02-01 18:06:15', 'Version 3', 0, 0, 1, 1, 5, 6, NULL),
(128, 4, 'About', 'about', '', '2016-01-29 15:05:37', '2016-02-01 18:08:28', 'Version 4', 0, 0, 1, 1, 5, 5, NULL),
(128, 5, 'About', 'about', '', '2016-01-29 15:05:37', '2016-02-01 18:09:13', 'Version 5', 0, 0, 1, 1, 5, 5, NULL),
(128, 6, 'About', 'about', '', '2016-01-29 15:05:37', '2016-02-01 18:18:56', 'Version 6', 0, 0, 1, 1, 5, 5, NULL),
(128, 7, 'About', 'about', '', '2016-01-29 15:05:37', '2016-02-01 18:26:52', 'Version 7', 0, 0, 1, 1, 5, 5, NULL),
(128, 8, 'About', 'about', '', '2016-01-29 15:05:37', '2016-02-01 18:29:54', 'Version 8', 0, 0, 1, 1, 5, 5, NULL),
(128, 9, 'About', 'about', '', '2016-01-29 15:05:37', '2016-02-01 18:31:41', 'Version 9', 0, 0, 1, 1, 5, 5, NULL),
(128, 10, 'About', 'about', '', '2016-01-29 15:05:37', '2016-02-01 18:32:35', 'Version 10', 0, 0, 1, 1, 5, 5, NULL),
(128, 11, 'About', 'about', '', '2016-01-29 15:05:37', '2016-02-01 18:36:06', 'Version 11', 1, 0, 1, 1, 5, 5, NULL),
(129, 1, 'Search', 'search', '', '2016-01-29 15:05:37', '2016-01-29 15:05:37', 'Initial Version', 0, 0, 1, NULL, 5, 7, NULL),
(129, 2, 'Search', 'search', '', '2016-01-29 15:05:37', '2016-02-01 18:47:38', 'Version 2', 1, 0, 1, 1, 5, 7, NULL),
(130, 1, 'Blog', 'blog', '', '2016-01-29 15:05:38', '2016-01-29 15:05:38', 'Initial Version', 0, 0, 1, NULL, 5, 7, NULL),
(130, 2, 'Blog', 'blog', '', '2016-01-29 15:05:38', '2016-02-01 18:50:15', 'Version 2', 1, 0, 1, 1, 5, 7, NULL),
(131, 1, 'Guestbook', 'guestbook', '', '2016-01-29 15:05:38', '2016-01-29 15:05:38', 'Initial Version', 1, 0, 1, NULL, 5, 7, NULL),
(132, 1, 'Contact Us', 'contact-us', '', '2016-01-29 15:05:39', '2016-01-29 15:05:39', 'Initial Version', 1, 0, 1, NULL, 5, 6, NULL),
(133, 1, 'Hello World', 'hello-world', 'This is my first blog post!', '2016-01-29 15:05:39', '2016-01-29 15:05:39', 'Initial Version', 1, 0, 1, NULL, 5, 4, NULL),
(134, 1, 'Blog Archives', 'blog-archives', '', '2016-01-29 15:05:39', '2016-01-29 15:05:39', 'Initial Version', 1, 0, 1, NULL, 5, 7, NULL),
(135, 1, 'Site Logo', 'site-logo', NULL, '2016-01-29 16:51:45', '2016-01-29 16:51:45', 'Initial Version', 0, 0, 1, NULL, 5, 1, NULL),
(135, 2, 'Site Logo', 'site-logo', NULL, '2016-01-29 16:51:45', '2016-01-29 16:52:19', 'New Version 2', 1, 0, 1, 1, 5, 1, NULL),
(136, 1, 'Header Booking', 'header-booking', NULL, '2016-01-29 16:51:45', '2016-01-29 16:51:45', 'Initial Version', 0, 0, 1, NULL, 5, 1, NULL),
(136, 2, 'Header Booking', 'header-booking', NULL, '2016-01-29 16:51:45', '2016-01-29 16:52:47', 'New Version 2', 0, 0, 1, 1, 5, 1, NULL),
(136, 3, 'Header Booking', 'header-booking', NULL, '2016-01-29 16:51:45', '2016-01-29 17:59:21', 'New Version 3', 0, 0, 1, 1, 5, 1, NULL),
(136, 4, 'Header Booking', 'header-booking', NULL, '2016-01-29 16:51:45', '2016-01-29 18:02:19', 'New Version 4', 1, 0, 1, 1, 5, 1, NULL),
(137, 1, 'Body Banner01', 'body-banner01', NULL, '2016-02-01 18:11:33', '2016-02-01 18:11:33', 'Initial Version', 0, 0, NULL, NULL, 5, 1, NULL),
(137, 2, 'Body Banner01', 'body-banner01', NULL, '2016-02-01 18:11:33', '2016-02-01 18:26:51', 'New Version 2', 1, 0, 1, 1, 5, 1, NULL),
(138, 1, 'Body Banner02', 'body-banner02', NULL, '2016-02-01 18:11:33', '2016-02-01 18:11:33', 'Initial Version', 0, 0, NULL, NULL, 5, 1, NULL),
(138, 2, 'Body Banner02', 'body-banner02', NULL, '2016-02-01 18:11:33', '2016-02-01 18:27:18', 'New Version 2', 1, 0, 1, 1, 5, 1, NULL),
(139, 1, 'Body Banner03', 'body-banner03', NULL, '2016-02-01 18:11:34', '2016-02-01 18:11:34', 'Initial Version', 0, 0, NULL, NULL, 5, 1, NULL),
(139, 2, 'Body Banner03', 'body-banner03', NULL, '2016-02-01 18:11:34', '2016-02-01 18:27:43', 'New Version 2', 1, 0, 1, 1, 5, 1, NULL),
(140, 1, 'Map Heading', 'map-heading', NULL, '2016-02-01 18:11:34', '2016-02-01 18:11:34', 'Initial Version', 0, 0, NULL, NULL, 5, 1, NULL),
(140, 2, 'Map Heading', 'map-heading', NULL, '2016-02-01 18:11:34', '2016-02-01 18:30:24', 'New Version 2', 1, 0, 1, 1, 5, 1, NULL),
(141, 1, 'Location Map', 'location-map', NULL, '2016-02-01 18:11:35', '2016-02-01 18:11:35', 'Initial Version', 0, 0, NULL, NULL, 5, 1, NULL),
(141, 2, 'Location Map', 'location-map', NULL, '2016-02-01 18:11:35', '2016-02-01 18:30:34', 'New Version 2', 0, 0, 1, 1, 5, 1, NULL),
(141, 3, 'Location Map', 'location-map', NULL, '2016-02-01 18:11:35', '2016-02-01 18:31:41', 'New Version 3', 1, 0, 1, 1, 5, 1, NULL),
(142, 1, 'Map Description', 'map-description', NULL, '2016-02-01 18:11:35', '2016-02-01 18:11:35', 'Initial Version', 0, 0, NULL, NULL, 5, 1, NULL),
(142, 2, 'Map Description', 'map-description', NULL, '2016-02-01 18:11:35', '2016-02-01 18:18:55', 'New Version 2', 0, 0, 1, 1, 5, 1, NULL),
(142, 3, 'Map Description', 'map-description', NULL, '2016-02-01 18:11:35', '2016-02-01 18:29:54', 'New Version 3', 0, 0, 1, 1, 5, 1, NULL),
(142, 4, 'Map Description', 'map-description', NULL, '2016-02-01 18:11:35', '2016-02-01 18:31:58', 'New Version 4', 0, 0, 1, 1, 5, 1, NULL),
(142, 5, 'Map Description', 'map-description', NULL, '2016-02-01 18:11:35', '2016-02-01 18:32:35', 'New Version 5', 1, 0, 1, 1, 5, 1, NULL),
(143, 1, 'Footer Logo', 'footer-logo', NULL, '2016-02-01 18:11:36', '2016-02-01 18:11:36', 'Initial Version', 0, 0, NULL, NULL, 5, 1, NULL),
(143, 2, 'Footer Logo', 'footer-logo', NULL, '2016-02-01 18:11:36', '2016-02-01 18:15:01', 'New Version 2', 1, 0, 1, 1, 5, 1, NULL),
(144, 1, 'Footer Address', 'footer-address', NULL, '2016-02-01 18:11:36', '2016-02-01 18:11:36', 'Initial Version', 0, 0, NULL, NULL, 5, 1, NULL),
(144, 2, 'Footer Address', 'footer-address', NULL, '2016-02-01 18:11:36', '2016-02-01 18:13:08', 'New Version 2', 1, 0, 1, 1, 5, 1, NULL),
(145, 1, 'Footer Menu', 'footer-menu', NULL, '2016-02-01 18:11:37', '2016-02-01 18:11:37', 'Initial Version', 0, 0, NULL, NULL, 5, 1, NULL),
(145, 2, 'Footer Menu', 'footer-menu', NULL, '2016-02-01 18:11:37', '2016-02-01 18:13:19', 'New Version 2', 1, 0, 1, 1, 5, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ComposerContentLayout`
--

DROP TABLE IF EXISTS `ComposerContentLayout`;
CREATE TABLE IF NOT EXISTS `ComposerContentLayout` (
`cclID` int(10) unsigned NOT NULL,
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `displayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `ctID` int(10) unsigned NOT NULL DEFAULT '0',
  `ccFilename` varchar(128) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `ComposerContentLayout`
--

INSERT INTO `ComposerContentLayout` (`cclID`, `bID`, `akID`, `displayOrder`, `ctID`, `ccFilename`) VALUES
(1, 16, 0, 1, 4, 'header.php'),
(2, 15, 0, 2, 4, 'thumbnail.php'),
(3, 13, 0, 3, 4, ''),
(4, 0, 15, 4, 4, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ComposerDrafts`
--

DROP TABLE IF EXISTS `ComposerDrafts`;
CREATE TABLE IF NOT EXISTS `ComposerDrafts` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cpPublishParentID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ComposerTypes`
--

DROP TABLE IF EXISTS `ComposerTypes`;
CREATE TABLE IF NOT EXISTS `ComposerTypes` (
  `ctID` int(10) unsigned NOT NULL DEFAULT '0',
  `ctComposerPublishPageMethod` varchar(64) NOT NULL DEFAULT 'CHOOSE',
  `ctComposerPublishPageTypeID` int(10) unsigned NOT NULL DEFAULT '0',
  `ctComposerPublishPageParentID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ComposerTypes`
--

INSERT INTO `ComposerTypes` (`ctID`, `ctComposerPublishPageMethod`, `ctComposerPublishPageTypeID`, `ctComposerPublishPageParentID`) VALUES
(4, 'PARENT', 0, 130);

-- --------------------------------------------------------

--
-- Table structure for table `Config`
--

DROP TABLE IF EXISTS `Config`;
CREATE TABLE IF NOT EXISTS `Config` (
  `cfKey` varchar(64) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `cfValue` longtext,
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Config`
--

INSERT INTO `Config` (`cfKey`, `timestamp`, `cfValue`, `uID`, `pkgID`) VALUES
('ACCESS_ENTITY_UPDATED', '2016-01-29 09:35:22', '1454060122', 0, 0),
('ANTISPAM_LOG_SPAM', '2016-01-29 09:35:22', '1', 0, 0),
('APP_VERSION_LATEST', '2016-02-01 04:56:48', '5.6.3.3', 0, 0),
('DO_PAGE_REINDEX_CHECK', '2016-02-01 13:20:59', '0', 0, 0),
('ENABLE_BLOCK_CACHE', '2016-01-29 09:35:22', '1', 0, 0),
('ENABLE_LOG_EMAILS', '2016-01-29 09:35:22', '1', 0, 0),
('ENABLE_LOG_ERRORS', '2016-01-29 09:35:22', '1', 0, 0),
('ENABLE_MARKETPLACE_SUPPORT', '2016-01-29 09:35:22', '1', 0, 0),
('ENABLE_OVERRIDE_CACHE', '2016-01-29 09:35:22', '1', 0, 0),
('FULL_PAGE_CACHE_GLOBAL', '2016-01-29 09:35:22', '0', 0, 0),
('NEWSFLOW_LAST_VIEWED', '2016-02-01 04:56:47', '1454302607', 1, 0),
('SECURITY_TOKEN_ENCRYPTION', '2016-01-29 09:36:10', 'PaBfusowahKw4eCjtXZUJqyiAs2RupUsjqymg4egNx71tqNS0gHhcZ8jCIeaab0f', 0, 0),
('SECURITY_TOKEN_JOBS', '2016-01-29 09:36:10', 'bviKy0jfefBH6Z2hqDLzxS3pMy6CSPztsvaKH3kYfbD3jixXZVJ4lkFvhftNju8C', 0, 0),
('SECURITY_TOKEN_VALIDATION', '2016-01-29 09:36:10', 'TkS7K2YoNEjVZaJL7cxlJ4z4ErJp0yQM4Q1Z9SFg7wVRmsRUmqoq6TQI2LTyyuah', 0, 0),
('SEEN_INTRODUCTION', '2016-01-29 09:36:29', '1', 0, 0),
('SITE', '2016-01-29 09:36:06', 'royalhotel', 0, 0),
('SITE_APP_VERSION', '2016-01-29 09:36:06', '5.6.3.4', 0, 0),
('SITE_DEBUG_LEVEL', '2016-01-29 09:35:22', '1', 0, 0),
('SITE_INSTALLED_APP_VERSION', '2016-01-29 09:36:06', '5.6.3.4', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `CustomStylePresets`
--

DROP TABLE IF EXISTS `CustomStylePresets`;
CREATE TABLE IF NOT EXISTS `CustomStylePresets` (
`cspID` int(10) unsigned NOT NULL,
  `cspName` varchar(255) NOT NULL,
  `csrID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `CustomStyleRules`
--

DROP TABLE IF EXISTS `CustomStyleRules`;
CREATE TABLE IF NOT EXISTS `CustomStyleRules` (
`csrID` int(10) unsigned NOT NULL,
  `css_id` varchar(128) DEFAULT NULL,
  `css_class` varchar(128) DEFAULT NULL,
  `css_serialized` text,
  `css_custom` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `DownloadStatistics`
--

DROP TABLE IF EXISTS `DownloadStatistics`;
CREATE TABLE IF NOT EXISTS `DownloadStatistics` (
`dsID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned NOT NULL,
  `fvID` int(10) unsigned NOT NULL,
  `uID` int(10) unsigned NOT NULL,
  `rcID` int(10) unsigned NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `FileAttributeValues`
--

DROP TABLE IF EXISTS `FileAttributeValues`;
CREATE TABLE IF NOT EXISTS `FileAttributeValues` (
  `fID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `avID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `FileAttributeValues`
--

INSERT INTO `FileAttributeValues` (`fID`, `fvID`, `akID`, `avID`) VALUES
(1, 1, 12, 121),
(1, 1, 13, 122),
(2, 1, 12, 123),
(2, 1, 13, 124),
(3, 1, 12, 125),
(3, 1, 13, 126),
(4, 1, 12, 127),
(4, 1, 13, 128),
(5, 1, 12, 129),
(5, 1, 13, 130),
(6, 1, 12, 131),
(6, 1, 13, 132),
(7, 1, 12, 133),
(7, 1, 13, 134),
(8, 1, 12, 135),
(8, 1, 13, 136),
(9, 1, 12, 143),
(9, 1, 13, 144),
(10, 1, 12, 145),
(10, 1, 13, 146),
(11, 1, 12, 147),
(11, 1, 13, 148),
(12, 1, 12, 149),
(12, 1, 13, 150),
(16, 1, 12, 157),
(16, 1, 13, 158),
(17, 1, 12, 159),
(17, 1, 13, 160),
(18, 1, 12, 161),
(18, 1, 13, 162),
(19, 1, 12, 163),
(19, 1, 13, 164),
(20, 1, 12, 165),
(20, 1, 13, 166);

-- --------------------------------------------------------

--
-- Table structure for table `FilePermissionAssignments`
--

DROP TABLE IF EXISTS `FilePermissionAssignments`;
CREATE TABLE IF NOT EXISTS `FilePermissionAssignments` (
  `fID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `FilePermissionFileTypes`
--

DROP TABLE IF EXISTS `FilePermissionFileTypes`;
CREATE TABLE IF NOT EXISTS `FilePermissionFileTypes` (
  `fsID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `extension` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Files`
--

DROP TABLE IF EXISTS `Files`;
CREATE TABLE IF NOT EXISTS `Files` (
`fID` int(10) unsigned NOT NULL,
  `fDateAdded` datetime DEFAULT NULL,
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `fslID` int(10) unsigned NOT NULL DEFAULT '0',
  `ocID` int(10) unsigned NOT NULL DEFAULT '0',
  `fOverrideSetPermissions` int(1) NOT NULL DEFAULT '0',
  `fPassword` varchar(255) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `Files`
--

INSERT INTO `Files` (`fID`, `fDateAdded`, `uID`, `fslID`, `ocID`, `fOverrideSetPermissions`, `fPassword`) VALUES
(1, '2016-01-29 15:05:22', 1, 0, 0, 0, NULL),
(2, '2016-01-29 15:05:24', 1, 0, 0, 0, NULL),
(3, '2016-01-29 15:05:25', 1, 0, 0, 0, NULL),
(4, '2016-01-29 15:05:26', 1, 0, 0, 0, NULL),
(5, '2016-01-29 15:05:27', 1, 0, 0, 0, NULL),
(6, '2016-01-29 15:05:28', 1, 0, 0, 0, NULL),
(7, '2016-01-29 15:05:29', 1, 0, 0, 0, NULL),
(8, '2016-01-29 15:05:31', 1, 0, 0, 0, NULL),
(9, '2016-01-29 16:34:59', 1, 0, 1, 0, NULL),
(10, '2016-01-29 16:35:00', 1, 0, 1, 0, NULL),
(11, '2016-01-29 16:35:10', 1, 0, 0, 0, NULL),
(12, '2016-01-29 16:52:01', 1, 0, 1, 0, NULL),
(16, '2016-02-01 15:32:20', 1, 0, 1, 0, NULL),
(17, '2016-02-01 15:32:37', 1, 0, 1, 0, NULL),
(18, '2016-02-01 15:58:15', 1, 0, 0, 0, NULL),
(19, '2016-02-01 15:58:17', 1, 0, 0, 0, NULL),
(20, '2016-02-01 15:58:18', 1, 0, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `FileSearchIndexAttributes`
--

DROP TABLE IF EXISTS `FileSearchIndexAttributes`;
CREATE TABLE IF NOT EXISTS `FileSearchIndexAttributes` (
  `fID` int(11) unsigned NOT NULL DEFAULT '0',
  `ak_width` decimal(14,4) DEFAULT '0.0000',
  `ak_height` decimal(14,4) DEFAULT '0.0000',
  `ak_duration` decimal(14,4) DEFAULT '0.0000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `FileSearchIndexAttributes`
--

INSERT INTO `FileSearchIndexAttributes` (`fID`, `ak_width`, `ak_height`, `ak_duration`) VALUES
(1, 960.0000, 212.0000, 0.0000),
(2, 960.0000, 212.0000, 0.0000),
(3, 960.0000, 212.0000, 0.0000),
(4, 960.0000, 212.0000, 0.0000),
(5, 960.0000, 212.0000, 0.0000),
(6, 150.0000, 150.0000, 0.0000),
(7, 960.0000, 212.0000, 0.0000),
(8, 960.0000, 212.0000, 0.0000),
(9, 1530.0000, 716.0000, 0.0000),
(10, 1530.0000, 716.0000, 0.0000),
(11, 1530.0000, 716.0000, 0.0000),
(12, 107.0000, 75.0000, 0.0000),
(16, 107.0000, 75.0000, 0.0000),
(17, 994.0000, 2.0000, 0.0000),
(18, 424.0000, 505.0000, 0.0000),
(19, 424.0000, 505.0000, 0.0000),
(20, 424.0000, 505.0000, 0.0000);

-- --------------------------------------------------------

--
-- Table structure for table `FileSetFiles`
--

DROP TABLE IF EXISTS `FileSetFiles`;
CREATE TABLE IF NOT EXISTS `FileSetFiles` (
`fsfID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned NOT NULL,
  `fsID` int(10) unsigned NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fsDisplayOrder` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `FileSetPermissionAssignments`
--

DROP TABLE IF EXISTS `FileSetPermissionAssignments`;
CREATE TABLE IF NOT EXISTS `FileSetPermissionAssignments` (
  `fsID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `FileSetPermissionAssignments`
--

INSERT INTO `FileSetPermissionAssignments` (`fsID`, `paID`, `pkID`) VALUES
(0, 44, 35),
(0, 45, 36),
(0, 46, 37),
(0, 47, 38),
(0, 48, 39),
(0, 49, 40),
(0, 50, 42),
(0, 51, 41),
(0, 52, 43);

-- --------------------------------------------------------

--
-- Table structure for table `FileSetPermissionFileTypeAccessList`
--

DROP TABLE IF EXISTS `FileSetPermissionFileTypeAccessList`;
CREATE TABLE IF NOT EXISTS `FileSetPermissionFileTypeAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `FileSetPermissionFileTypeAccessListCustom`
--

DROP TABLE IF EXISTS `FileSetPermissionFileTypeAccessListCustom`;
CREATE TABLE IF NOT EXISTS `FileSetPermissionFileTypeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `extension` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `FileSets`
--

DROP TABLE IF EXISTS `FileSets`;
CREATE TABLE IF NOT EXISTS `FileSets` (
`fsID` int(10) unsigned NOT NULL,
  `fsName` varchar(64) NOT NULL,
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `fsType` int(4) NOT NULL,
  `fsOverrideGlobalPermissions` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `FileSetSavedSearches`
--

DROP TABLE IF EXISTS `FileSetSavedSearches`;
CREATE TABLE IF NOT EXISTS `FileSetSavedSearches` (
  `fsID` int(10) unsigned NOT NULL DEFAULT '0',
  `fsSearchRequest` text,
  `fsResultColumns` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `FileStorageLocations`
--

DROP TABLE IF EXISTS `FileStorageLocations`;
CREATE TABLE IF NOT EXISTS `FileStorageLocations` (
  `fslID` int(10) unsigned NOT NULL DEFAULT '0',
  `fslName` varchar(255) NOT NULL,
  `fslDirectory` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `FileVersionLog`
--

DROP TABLE IF EXISTS `FileVersionLog`;
CREATE TABLE IF NOT EXISTS `FileVersionLog` (
`fvlID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvUpdateTypeID` int(3) unsigned NOT NULL DEFAULT '0',
  `fvUpdateTypeAttributeID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=41 ;

--
-- Dumping data for table `FileVersionLog`
--

INSERT INTO `FileVersionLog` (`fvlID`, `fID`, `fvID`, `fvUpdateTypeID`, `fvUpdateTypeAttributeID`) VALUES
(1, 1, 1, 5, 12),
(2, 1, 1, 5, 13),
(3, 2, 1, 5, 12),
(4, 2, 1, 5, 13),
(5, 3, 1, 5, 12),
(6, 3, 1, 5, 13),
(7, 4, 1, 5, 12),
(8, 4, 1, 5, 13),
(9, 5, 1, 5, 12),
(10, 5, 1, 5, 13),
(11, 6, 1, 5, 12),
(12, 6, 1, 5, 13),
(13, 7, 1, 5, 12),
(14, 7, 1, 5, 13),
(15, 8, 1, 5, 12),
(16, 8, 1, 5, 13),
(17, 9, 1, 5, 12),
(18, 9, 1, 5, 13),
(19, 10, 1, 5, 12),
(20, 10, 1, 5, 13),
(21, 11, 1, 5, 12),
(22, 11, 1, 5, 13),
(23, 12, 1, 5, 12),
(24, 12, 1, 5, 13),
(31, 16, 1, 5, 12),
(32, 16, 1, 5, 13),
(33, 17, 1, 5, 12),
(34, 17, 1, 5, 13),
(35, 18, 1, 5, 12),
(36, 18, 1, 5, 13),
(37, 19, 1, 5, 12),
(38, 19, 1, 5, 13),
(39, 20, 1, 5, 12),
(40, 20, 1, 5, 13);

-- --------------------------------------------------------

--
-- Table structure for table `FileVersions`
--

DROP TABLE IF EXISTS `FileVersions`;
CREATE TABLE IF NOT EXISTS `FileVersions` (
  `fID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvFilename` varchar(255) NOT NULL,
  `fvPrefix` varchar(12) DEFAULT NULL,
  `fvGenericType` int(3) unsigned NOT NULL DEFAULT '0',
  `fvSize` int(20) unsigned NOT NULL DEFAULT '0',
  `fvTitle` varchar(255) DEFAULT NULL,
  `fvDescription` text,
  `fvTags` varchar(255) DEFAULT NULL,
  `fvIsApproved` int(10) unsigned NOT NULL DEFAULT '1',
  `fvDateAdded` datetime DEFAULT NULL,
  `fvApproverUID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvAuthorUID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvActivateDatetime` datetime DEFAULT NULL,
  `fvHasThumbnail1` int(1) NOT NULL DEFAULT '0',
  `fvHasThumbnail2` int(1) NOT NULL DEFAULT '0',
  `fvHasThumbnail3` int(1) NOT NULL DEFAULT '0',
  `fvExtension` varchar(32) DEFAULT NULL,
  `fvType` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `FileVersions`
--

INSERT INTO `FileVersions` (`fID`, `fvID`, `fvFilename`, `fvPrefix`, `fvGenericType`, `fvSize`, `fvTitle`, `fvDescription`, `fvTags`, `fvIsApproved`, `fvDateAdded`, `fvApproverUID`, `fvAuthorUID`, `fvActivateDatetime`, `fvHasThumbnail1`, `fvHasThumbnail2`, `fvHasThumbnail3`, `fvExtension`, `fvType`) VALUES
(1, 1, 'northern_az_lake_powell_house_boats.jpg', '461454060122', 1, 226976, 'northern_az_lake_powell_house_boats.jpg', '', '', 1, '2016-01-29 15:05:22', 1, 1, '2016-01-29 15:05:22', 1, 1, 0, 'jpg', 1),
(2, 1, 'europe_england_stonehenge.jpg', '641454060124', 1, 286856, 'europe_england_stonehenge.jpg', '', '', 1, '2016-01-29 15:05:24', 1, 1, '2016-01-29 15:05:24', 1, 1, 0, 'jpg', 1),
(3, 1, 'europe_valencia_hemispheric.jpg', '601454060125', 1, 262679, 'europe_valencia_hemispheric.jpg', '', '', 1, '2016-01-29 15:05:25', 1, 1, '2016-01-29 15:05:25', 1, 1, 0, 'jpg', 1),
(4, 1, 'europe_spain_grenada_alhambra.jpg', '651454060126', 1, 320805, 'europe_spain_grenada_alhambra.jpg', '', '', 1, '2016-01-29 15:05:26', 1, 1, '2016-01-29 15:05:26', 1, 1, 0, 'jpg', 1),
(5, 1, 'england_village.jpg', '451454060127', 1, 333117, 'england_village.jpg', '', '', 1, '2016-01-29 15:05:27', 1, 1, '2016-01-29 15:05:27', 1, 1, 0, 'jpg', 1),
(6, 1, 'sh_thumbnail.jpg', '161454060128', 1, 15243, 'sh_thumbnail.jpg', '', '', 1, '2016-01-29 15:05:28', 1, 1, '2016-01-29 15:05:28', 1, 1, 0, 'jpg', 1),
(7, 1, 'europe_rotterdam_port.jpg', '131454060129', 1, 203784, 'europe_rotterdam_port.jpg', '', '', 1, '2016-01-29 15:05:29', 1, 1, '2016-01-29 15:05:29', 1, 1, 0, 'jpg', 1),
(8, 1, 'europe_germany_munich_arch.jpg', '461454060131', 1, 229235, 'europe_germany_munich_arch.jpg', '', '', 1, '2016-01-29 15:05:31', 1, 1, '2016-01-29 15:05:31', 1, 1, 0, 'jpg', 1),
(9, 1, 'slider02.jpg', '781454065499', 1, 144385, 'slider02.jpg', '', '', 1, '2016-01-29 16:34:59', 1, 1, '2016-01-29 16:34:59', 1, 1, 0, 'jpg', 1),
(10, 1, 'slider03.jpg', '481454065500', 1, 138960, 'slider03.jpg', '', '', 1, '2016-01-29 16:35:00', 1, 1, '2016-01-29 16:35:00', 1, 1, 0, 'jpg', 1),
(11, 1, 'slider01.jpg', '421454065510', 1, 226102, 'slider01.jpg', '', '', 1, '2016-01-29 16:35:10', 1, 1, '2016-01-29 16:35:10', 1, 1, 0, 'jpg', 1),
(12, 1, 'logo.png', '301454066521', 1, 4025, 'logo.png', '', '', 1, '2016-01-29 16:52:02', 1, 1, '2016-01-29 16:52:02', 1, 1, 0, 'png', 1),
(19, 1, 'banner02.jpg', '231454322497', 1, 48865, 'banner02.jpg', '', '', 1, '2016-02-01 15:58:17', 1, 1, '2016-02-01 15:58:17', 1, 1, 0, 'jpg', 1),
(18, 1, 'banner01.jpg', '501454322495', 1, 69215, 'banner01.jpg', '', '', 1, '2016-02-01 15:58:15', 1, 1, '2016-02-01 15:58:15', 1, 1, 0, 'jpg', 1),
(20, 1, 'banner03.jpg', '441454322498', 1, 55404, 'banner03.jpg', '', '', 1, '2016-02-01 15:58:18', 1, 1, '2016-02-01 15:58:18', 1, 1, 0, 'jpg', 1),
(16, 1, 'logo-footer.png', '551454320940', 1, 4018, 'logo-footer.png', '', '', 1, '2016-02-01 15:32:21', 1, 1, '2016-02-01 15:32:21', 1, 1, 0, 'png', 1),
(17, 1, 'footer-fadeline.png', '311454320957', 1, 1158, 'footer-fadeline.png', '', '', 1, '2016-02-01 15:32:37', 1, 1, '2016-02-01 15:32:37', 0, 0, 0, 'png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `Groups`
--

DROP TABLE IF EXISTS `Groups`;
CREATE TABLE IF NOT EXISTS `Groups` (
`gID` int(10) unsigned NOT NULL,
  `gName` varchar(128) NOT NULL,
  `gDescription` varchar(255) NOT NULL,
  `gUserExpirationIsEnabled` int(1) NOT NULL DEFAULT '0',
  `gUserExpirationMethod` varchar(12) DEFAULT NULL,
  `gUserExpirationSetDateTime` datetime DEFAULT NULL,
  `gUserExpirationInterval` int(10) unsigned NOT NULL DEFAULT '0',
  `gUserExpirationAction` varchar(20) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `Groups`
--

INSERT INTO `Groups` (`gID`, `gName`, `gDescription`, `gUserExpirationIsEnabled`, `gUserExpirationMethod`, `gUserExpirationSetDateTime`, `gUserExpirationInterval`, `gUserExpirationAction`) VALUES
(1, 'Guest', 'The guest group represents unregistered visitors to your site.', 0, NULL, NULL, 0, NULL),
(2, 'Registered Users', 'The registered users group represents all user accounts.', 0, NULL, NULL, 0, NULL),
(3, 'Administrators', '', 0, NULL, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `GroupSetGroups`
--

DROP TABLE IF EXISTS `GroupSetGroups`;
CREATE TABLE IF NOT EXISTS `GroupSetGroups` (
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  `gsID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `GroupSets`
--

DROP TABLE IF EXISTS `GroupSets`;
CREATE TABLE IF NOT EXISTS `GroupSets` (
`gsID` int(10) unsigned NOT NULL,
  `gsName` varchar(255) DEFAULT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `Jobs`
--

DROP TABLE IF EXISTS `Jobs`;
CREATE TABLE IF NOT EXISTS `Jobs` (
`jID` int(10) unsigned NOT NULL,
  `jName` varchar(100) NOT NULL,
  `jDescription` varchar(255) NOT NULL,
  `jDateInstalled` datetime DEFAULT NULL,
  `jDateLastRun` datetime DEFAULT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `jLastStatusText` longtext,
  `jLastStatusCode` smallint(4) NOT NULL DEFAULT '0',
  `jStatus` varchar(14) NOT NULL DEFAULT 'ENABLED',
  `jHandle` varchar(255) NOT NULL,
  `jNotUninstallable` smallint(4) NOT NULL DEFAULT '0',
  `isScheduled` smallint(1) NOT NULL DEFAULT '0',
  `scheduledInterval` varchar(255) NOT NULL DEFAULT 'days',
  `scheduledValue` int(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `Jobs`
--

INSERT INTO `Jobs` (`jID`, `jName`, `jDescription`, `jDateInstalled`, `jDateLastRun`, `pkgID`, `jLastStatusText`, `jLastStatusCode`, `jStatus`, `jHandle`, `jNotUninstallable`, `isScheduled`, `scheduledInterval`, `scheduledValue`) VALUES
(1, 'Index Search Engine - Updates', 'Index the site to allow searching to work quickly and accurately. Only reindexes pages that have changed since last indexing.', '2016-01-29 15:03:23', NULL, 0, NULL, 0, 'ENABLED', 'index_search', 1, 0, 'days', 0),
(2, 'Index Search Engine - All', 'Empties the page search index and reindexes all pages.', '2016-01-29 15:03:23', NULL, 0, NULL, 0, 'ENABLED', 'index_search_all', 1, 0, 'days', 0),
(3, 'Generate the sitemap.xml file', 'Generate the sitemap.xml file that search engines use to crawl your site.', '2016-01-29 15:03:24', NULL, 0, NULL, 0, 'ENABLED', 'generate_sitemap', 0, 0, 'days', 0),
(4, 'Process Email Posts', 'Polls an email account and grabs private messages/postings that are sent there..', '2016-01-29 15:03:24', NULL, 0, NULL, 0, 'ENABLED', 'process_email', 0, 0, 'days', 0),
(5, 'Remove Old Page Versions', 'Removes all except the 10 most recent page versions for each page.', '2016-01-29 15:03:24', NULL, 0, NULL, 0, 'ENABLED', 'remove_old_page_versions', 0, 0, 'days', 0);

-- --------------------------------------------------------

--
-- Table structure for table `JobSetJobs`
--

DROP TABLE IF EXISTS `JobSetJobs`;
CREATE TABLE IF NOT EXISTS `JobSetJobs` (
  `jsID` int(10) unsigned NOT NULL DEFAULT '0',
  `jID` int(10) unsigned NOT NULL DEFAULT '0',
  `jRunOrder` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `JobSetJobs`
--

INSERT INTO `JobSetJobs` (`jsID`, `jID`, `jRunOrder`) VALUES
(1, 1, 0),
(1, 3, 0),
(1, 4, 0),
(1, 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `JobSets`
--

DROP TABLE IF EXISTS `JobSets`;
CREATE TABLE IF NOT EXISTS `JobSets` (
`jsID` int(10) unsigned NOT NULL,
  `jsName` varchar(128) NOT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `jDateLastRun` datetime DEFAULT NULL,
  `isScheduled` smallint(1) NOT NULL DEFAULT '0',
  `scheduledInterval` varchar(255) NOT NULL DEFAULT 'days',
  `scheduledValue` int(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `JobSets`
--

INSERT INTO `JobSets` (`jsID`, `jsName`, `pkgID`, `jDateLastRun`, `isScheduled`, `scheduledInterval`, `scheduledValue`) VALUES
(1, 'Default', 0, NULL, 0, 'days', 0);

-- --------------------------------------------------------

--
-- Table structure for table `JobsLog`
--

DROP TABLE IF EXISTS `JobsLog`;
CREATE TABLE IF NOT EXISTS `JobsLog` (
`jlID` int(10) unsigned NOT NULL,
  `jID` int(10) unsigned NOT NULL,
  `jlMessage` longtext,
  `jlTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `jlError` int(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `LayoutPresets`
--

DROP TABLE IF EXISTS `LayoutPresets`;
CREATE TABLE IF NOT EXISTS `LayoutPresets` (
`lpID` int(10) unsigned NOT NULL,
  `lpName` varchar(128) NOT NULL,
  `layoutID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `Layouts`
--

DROP TABLE IF EXISTS `Layouts`;
CREATE TABLE IF NOT EXISTS `Layouts` (
`layoutID` int(10) unsigned NOT NULL,
  `layout_rows` int(5) NOT NULL DEFAULT '3',
  `layout_columns` int(3) NOT NULL DEFAULT '3',
  `spacing` int(3) NOT NULL DEFAULT '3',
  `breakpoints` varchar(255) NOT NULL DEFAULT '',
  `locked` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `Logs`
--

DROP TABLE IF EXISTS `Logs`;
CREATE TABLE IF NOT EXISTS `Logs` (
`logID` int(10) unsigned NOT NULL,
  `logType` varchar(64) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `logText` longtext,
  `logUserID` int(10) unsigned DEFAULT NULL,
  `logIsInternal` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=98 ;

--
-- Dumping data for table `Logs`
--

INSERT INTO `Logs` (`logID`, `logType`, `timestamp`, `logText`, `logUserID`, `logIsInternal`) VALUES
(1, 'packages', '2016-01-29 10:10:01', 'Warning - failed to load package with pkgHandle ''responsive_slider''. Could not find package controller file: ''/var/www/html/royalhotel/packages/responsive_slider/controller.php''\n', 1, 0),
(2, 'packages', '2016-01-29 10:15:58', 'Warning - failed to load package with pkgHandle ''responsive_slider''. Could not find package controller file: ''/var/www/html/royalhotel/packages/responsive_slider/controller.php''\n', 1, 0),
(3, 'packages', '2016-01-29 10:16:07', 'Warning - failed to load package with pkgHandle ''responsive_slider''. Could not find package controller file: ''/var/www/html/royalhotel/packages/responsive_slider/controller.php''\n', 1, 0),
(4, 'packages', '2016-01-29 10:16:20', 'Warning - failed to load package with pkgHandle ''responsive_slider''. Could not find package controller file: ''/var/www/html/royalhotel/packages/responsive_slider/controller.php''\n', NULL, 0),
(5, 'packages', '2016-01-29 10:16:21', 'Warning - failed to load package with pkgHandle ''responsive_slider''. Could not find package controller file: ''/var/www/html/royalhotel/packages/responsive_slider/controller.php''\n', NULL, 0),
(6, 'packages', '2016-01-29 10:16:22', 'Warning - failed to load package with pkgHandle ''responsive_slider''. Could not find package controller file: ''/var/www/html/royalhotel/packages/responsive_slider/controller.php''\n', NULL, 0),
(7, 'packages', '2016-01-29 10:16:22', 'Warning - failed to load package with pkgHandle ''responsive_slider''. Could not find package controller file: ''/var/www/html/royalhotel/packages/responsive_slider/controller.php''\n', NULL, 0),
(8, 'packages', '2016-01-29 10:16:22', 'Warning - failed to load package with pkgHandle ''responsive_slider''. Could not find package controller file: ''/var/www/html/royalhotel/packages/responsive_slider/controller.php''\n', NULL, 0),
(9, 'packages', '2016-01-29 10:16:22', 'Warning - failed to load package with pkgHandle ''responsive_slider''. Could not find package controller file: ''/var/www/html/royalhotel/packages/responsive_slider/controller.php''\n', NULL, 0),
(10, 'packages', '2016-01-29 10:16:23', 'Warning - failed to load package with pkgHandle ''responsive_slider''. Could not find package controller file: ''/var/www/html/royalhotel/packages/responsive_slider/controller.php''\n', NULL, 0),
(11, 'packages', '2016-01-29 10:16:23', 'Warning - failed to load package with pkgHandle ''responsive_slider''. Could not find package controller file: ''/var/www/html/royalhotel/packages/responsive_slider/controller.php''\n', NULL, 0),
(12, 'packages', '2016-01-29 10:16:23', 'Warning - failed to load package with pkgHandle ''responsive_slider''. Could not find package controller file: ''/var/www/html/royalhotel/packages/responsive_slider/controller.php''\n', NULL, 0),
(13, 'packages', '2016-01-29 10:16:23', 'Warning - failed to load package with pkgHandle ''responsive_slider''. Could not find package controller file: ''/var/www/html/royalhotel/packages/responsive_slider/controller.php''\n', NULL, 0),
(14, 'packages', '2016-01-29 10:16:24', 'Warning - failed to load package with pkgHandle ''responsive_slider''. Could not find package controller file: ''/var/www/html/royalhotel/packages/responsive_slider/controller.php''\n', NULL, 0),
(15, 'packages', '2016-01-29 10:16:24', 'Warning - failed to load package with pkgHandle ''responsive_slider''. Could not find package controller file: ''/var/www/html/royalhotel/packages/responsive_slider/controller.php''\n', NULL, 0),
(16, 'packages', '2016-01-29 10:56:23', 'Warning - failed to load package with pkgHandle ''responsive_slider''. Could not find package controller file: ''/var/www/html/royalhotel/packages/responsive_slider/controller.php''\n', 1, 0),
(17, 'packages', '2016-01-29 10:56:24', 'Warning - failed to load package with pkgHandle ''responsive_slider''. Could not find package controller file: ''/var/www/html/royalhotel/packages/responsive_slider/controller.php''\n', 1, 0),
(18, 'packages', '2016-01-29 10:56:24', 'Warning - failed to load package with pkgHandle ''responsive_slider''. Could not find package controller file: ''/var/www/html/royalhotel/packages/responsive_slider/controller.php''\n', 1, 0),
(19, 'packages', '2016-01-29 10:56:27', 'Warning - failed to load package with pkgHandle ''responsive_slider''. Could not find package controller file: ''/var/www/html/royalhotel/packages/responsive_slider/controller.php''\n', 1, 0),
(20, 'packages', '2016-01-29 10:56:28', 'Warning - failed to load package with pkgHandle ''responsive_slider''. Could not find package controller file: ''/var/www/html/royalhotel/packages/responsive_slider/controller.php''\n', 1, 0),
(21, 'packages', '2016-01-29 10:56:32', 'Warning - failed to load package with pkgHandle ''responsive_slider''. Could not find package controller file: ''/var/www/html/royalhotel/packages/responsive_slider/controller.php''\n', 1, 0),
(22, 'packages', '2016-01-29 10:56:32', 'Warning - failed to load package with pkgHandle ''responsive_slider''. Could not find package controller file: ''/var/www/html/royalhotel/packages/responsive_slider/controller.php''\n', 1, 0),
(23, 'packages', '2016-01-29 10:56:34', 'Warning - failed to load package with pkgHandle ''responsive_slider''. Could not find package controller file: ''/var/www/html/royalhotel/packages/responsive_slider/controller.php''\n', 1, 0),
(24, 'packages', '2016-01-29 10:56:34', 'Warning - failed to load package with pkgHandle ''responsive_slider''. Could not find package controller file: ''/var/www/html/royalhotel/packages/responsive_slider/controller.php''\n', 1, 0),
(25, 'packages', '2016-01-29 10:56:45', 'Warning - failed to load package with pkgHandle ''responsive_slider''. Could not find package controller file: ''/var/www/html/royalhotel/packages/responsive_slider/controller.php''\n', 1, 0),
(26, 'packages', '2016-01-29 10:56:45', 'Warning - failed to load package with pkgHandle ''responsive_slider''. Could not find package controller file: ''/var/www/html/royalhotel/packages/responsive_slider/controller.php''\n', 1, 0),
(27, 'packages', '2016-01-29 10:56:46', 'Warning - failed to load package with pkgHandle ''responsive_slider''. Could not find package controller file: ''/var/www/html/royalhotel/packages/responsive_slider/controller.php''\n', 1, 0),
(28, 'packages', '2016-01-29 10:56:48', 'Warning - failed to load package with pkgHandle ''responsive_slider''. Could not find package controller file: ''/var/www/html/royalhotel/packages/responsive_slider/controller.php''\n', 1, 0),
(29, 'packages', '2016-01-29 10:56:48', 'Warning - failed to load package with pkgHandle ''responsive_slider''. Could not find package controller file: ''/var/www/html/royalhotel/packages/responsive_slider/controller.php''\n', 1, 0),
(30, 'packages', '2016-01-29 10:56:48', 'Warning - failed to load package with pkgHandle ''responsive_slider''. Could not find package controller file: ''/var/www/html/royalhotel/packages/responsive_slider/controller.php''\n', 1, 0),
(31, 'packages', '2016-01-29 10:56:50', 'Warning - failed to load package with pkgHandle ''responsive_slider''. Could not find package controller file: ''/var/www/html/royalhotel/packages/responsive_slider/controller.php''\n', 1, 0),
(32, 'packages', '2016-01-29 10:56:52', 'Warning - failed to load package with pkgHandle ''responsive_slider''. Could not find package controller file: ''/var/www/html/royalhotel/packages/responsive_slider/controller.php''\n', 1, 0),
(33, 'packages', '2016-01-29 10:56:52', 'Warning - failed to load package with pkgHandle ''responsive_slider''. Could not find package controller file: ''/var/www/html/royalhotel/packages/responsive_slider/controller.php''\n', 1, 0),
(34, 'packages', '2016-01-29 10:56:54', 'Warning - failed to load package with pkgHandle ''responsive_slider''. Could not find package controller file: ''/var/www/html/royalhotel/packages/responsive_slider/controller.php''\n', 1, 0),
(35, 'packages', '2016-01-29 10:56:55', 'Warning - failed to load package with pkgHandle ''responsive_slider''. Could not find package controller file: ''/var/www/html/royalhotel/packages/responsive_slider/controller.php''\n', 1, 0),
(36, 'packages', '2016-01-29 10:56:58', 'Warning - failed to load package with pkgHandle ''responsive_slider''. Could not find package controller file: ''/var/www/html/royalhotel/packages/responsive_slider/controller.php''\n', 1, 0),
(37, 'packages', '2016-01-29 10:56:58', 'Warning - failed to load package with pkgHandle ''responsive_slider''. Could not find package controller file: ''/var/www/html/royalhotel/packages/responsive_slider/controller.php''\n', 1, 0),
(38, 'packages', '2016-01-29 10:56:58', 'Warning - failed to load package with pkgHandle ''responsive_slider''. Could not find package controller file: ''/var/www/html/royalhotel/packages/responsive_slider/controller.php''\n', 1, 0),
(39, 'packages', '2016-01-29 10:57:01', 'Warning - failed to load package with pkgHandle ''responsive_slider''. Could not find package controller file: ''/var/www/html/royalhotel/packages/responsive_slider/controller.php''\n', 1, 0),
(40, 'packages', '2016-01-29 10:57:02', 'Warning - failed to load package with pkgHandle ''responsive_slider''. Could not find package controller file: ''/var/www/html/royalhotel/packages/responsive_slider/controller.php''\n', 1, 0),
(41, 'packages', '2016-01-29 10:57:04', 'Warning - failed to load package with pkgHandle ''responsive_slider''. Could not find package controller file: ''/var/www/html/royalhotel/packages/responsive_slider/controller.php''\n', 1, 0),
(42, 'packages', '2016-01-29 10:57:04', 'Warning - failed to load package with pkgHandle ''responsive_slider''. Could not find package controller file: ''/var/www/html/royalhotel/packages/responsive_slider/controller.php''\n', 1, 0),
(43, 'packages', '2016-01-29 10:57:04', 'Warning - failed to load package with pkgHandle ''responsive_slider''. Could not find package controller file: ''/var/www/html/royalhotel/packages/responsive_slider/controller.php''\n', 1, 0),
(44, 'packages', '2016-01-29 10:57:06', 'Warning - failed to load package with pkgHandle ''responsive_slider''. Could not find package controller file: ''/var/www/html/royalhotel/packages/responsive_slider/controller.php''\n', 1, 0),
(45, 'packages', '2016-01-29 10:57:07', 'Warning - failed to load package with pkgHandle ''responsive_slider''. Could not find package controller file: ''/var/www/html/royalhotel/packages/responsive_slider/controller.php''\n', 1, 0),
(46, 'packages', '2016-01-29 10:57:17', 'Warning - failed to load package with pkgHandle ''responsive_slider''. Could not find package controller file: ''/var/www/html/royalhotel/packages/responsive_slider/controller.php''\n', 1, 0),
(47, 'packages', '2016-01-29 10:57:18', 'Warning - failed to load package with pkgHandle ''responsive_slider''. Could not find package controller file: ''/var/www/html/royalhotel/packages/responsive_slider/controller.php''\n', 1, 0),
(48, 'packages', '2016-01-29 10:57:19', 'Warning - failed to load package with pkgHandle ''responsive_slider''. Could not find package controller file: ''/var/www/html/royalhotel/packages/responsive_slider/controller.php''\n', 1, 0),
(49, 'packages', '2016-01-29 10:57:21', 'Warning - failed to load package with pkgHandle ''responsive_slider''. Could not find package controller file: ''/var/www/html/royalhotel/packages/responsive_slider/controller.php''\n', 1, 0),
(50, 'packages', '2016-01-29 10:57:23', 'Warning - failed to load package with pkgHandle ''responsive_slider''. Could not find package controller file: ''/var/www/html/royalhotel/packages/responsive_slider/controller.php''\n', NULL, 0),
(51, 'packages', '2016-01-29 10:57:24', 'Warning - failed to load package with pkgHandle ''responsive_slider''. Could not find package controller file: ''/var/www/html/royalhotel/packages/responsive_slider/controller.php''\n', NULL, 0),
(52, 'packages', '2016-01-29 10:57:25', 'Warning - failed to load package with pkgHandle ''responsive_slider''. Could not find package controller file: ''/var/www/html/royalhotel/packages/responsive_slider/controller.php''\n', NULL, 0),
(53, 'packages', '2016-01-29 10:57:25', 'Warning - failed to load package with pkgHandle ''responsive_slider''. Could not find package controller file: ''/var/www/html/royalhotel/packages/responsive_slider/controller.php''\n', NULL, 0),
(54, 'packages', '2016-01-29 10:57:26', 'Warning - failed to load package with pkgHandle ''responsive_slider''. Could not find package controller file: ''/var/www/html/royalhotel/packages/responsive_slider/controller.php''\n', NULL, 0),
(55, 'packages', '2016-01-29 10:57:26', 'Warning - failed to load package with pkgHandle ''responsive_slider''. Could not find package controller file: ''/var/www/html/royalhotel/packages/responsive_slider/controller.php''\n', 1, 0),
(56, 'packages', '2016-01-29 10:57:26', 'Warning - failed to load package with pkgHandle ''responsive_slider''. Could not find package controller file: ''/var/www/html/royalhotel/packages/responsive_slider/controller.php''\n', 1, 0),
(57, 'packages', '2016-01-29 10:57:26', 'Warning - failed to load package with pkgHandle ''responsive_slider''. Could not find package controller file: ''/var/www/html/royalhotel/packages/responsive_slider/controller.php''\n', NULL, 0),
(58, 'packages', '2016-01-29 10:57:27', 'Warning - failed to load package with pkgHandle ''responsive_slider''. Could not find package controller file: ''/var/www/html/royalhotel/packages/responsive_slider/controller.php''\n', 1, 0),
(59, 'packages', '2016-01-29 10:57:27', 'Warning - failed to load package with pkgHandle ''responsive_slider''. Could not find package controller file: ''/var/www/html/royalhotel/packages/responsive_slider/controller.php''\n', NULL, 0),
(60, 'packages', '2016-01-29 10:57:28', 'Warning - failed to load package with pkgHandle ''responsive_slider''. Could not find package controller file: ''/var/www/html/royalhotel/packages/responsive_slider/controller.php''\n', NULL, 0),
(61, 'packages', '2016-01-29 10:57:28', 'Warning - failed to load package with pkgHandle ''responsive_slider''. Could not find package controller file: ''/var/www/html/royalhotel/packages/responsive_slider/controller.php''\n', NULL, 0),
(62, 'packages', '2016-01-29 10:57:29', 'Warning - failed to load package with pkgHandle ''responsive_slider''. Could not find package controller file: ''/var/www/html/royalhotel/packages/responsive_slider/controller.php''\n', NULL, 0),
(63, 'packages', '2016-01-29 10:57:29', 'Warning - failed to load package with pkgHandle ''responsive_slider''. Could not find package controller file: ''/var/www/html/royalhotel/packages/responsive_slider/controller.php''\n', NULL, 0),
(64, 'packages', '2016-01-29 10:57:29', 'Warning - failed to load package with pkgHandle ''responsive_slider''. Could not find package controller file: ''/var/www/html/royalhotel/packages/responsive_slider/controller.php''\n', NULL, 0),
(65, 'packages', '2016-01-29 10:57:30', 'Warning - failed to load package with pkgHandle ''responsive_slider''. Could not find package controller file: ''/var/www/html/royalhotel/packages/responsive_slider/controller.php''\n', NULL, 0),
(66, 'packages', '2016-01-29 10:57:30', 'Warning - failed to load package with pkgHandle ''responsive_slider''. Could not find package controller file: ''/var/www/html/royalhotel/packages/responsive_slider/controller.php''\n', NULL, 0),
(67, 'packages', '2016-01-29 10:57:31', 'Warning - failed to load package with pkgHandle ''responsive_slider''. Could not find package controller file: ''/var/www/html/royalhotel/packages/responsive_slider/controller.php''\n', NULL, 0),
(68, 'packages', '2016-01-29 10:57:31', 'Warning - failed to load package with pkgHandle ''responsive_slider''. Could not find package controller file: ''/var/www/html/royalhotel/packages/responsive_slider/controller.php''\n', 1, 0),
(69, 'packages', '2016-01-29 10:57:31', 'Warning - failed to load package with pkgHandle ''responsive_slider''. Could not find package controller file: ''/var/www/html/royalhotel/packages/responsive_slider/controller.php''\n', 1, 0),
(70, 'packages', '2016-01-29 10:57:32', 'Warning - failed to load package with pkgHandle ''responsive_slider''. Could not find package controller file: ''/var/www/html/royalhotel/packages/responsive_slider/controller.php''\n', NULL, 0),
(71, 'packages', '2016-01-29 10:57:32', 'Warning - failed to load package with pkgHandle ''responsive_slider''. Could not find package controller file: ''/var/www/html/royalhotel/packages/responsive_slider/controller.php''\n', NULL, 0),
(72, 'packages', '2016-01-29 10:57:32', 'Warning - failed to load package with pkgHandle ''responsive_slider''. Could not find package controller file: ''/var/www/html/royalhotel/packages/responsive_slider/controller.php''\n', NULL, 0),
(73, 'packages', '2016-01-29 10:57:32', 'Warning - failed to load package with pkgHandle ''responsive_slider''. Could not find package controller file: ''/var/www/html/royalhotel/packages/responsive_slider/controller.php''\n', NULL, 0),
(74, 'packages', '2016-01-29 10:57:32', 'Warning - failed to load package with pkgHandle ''responsive_slider''. Could not find package controller file: ''/var/www/html/royalhotel/packages/responsive_slider/controller.php''\n', NULL, 0),
(75, 'packages', '2016-01-29 10:57:32', 'Warning - failed to load package with pkgHandle ''responsive_slider''. Could not find package controller file: ''/var/www/html/royalhotel/packages/responsive_slider/controller.php''\n', NULL, 0),
(76, 'packages', '2016-01-29 10:57:32', 'Warning - failed to load package with pkgHandle ''responsive_slider''. Could not find package controller file: ''/var/www/html/royalhotel/packages/responsive_slider/controller.php''\n', NULL, 0),
(77, 'packages', '2016-01-29 10:57:33', 'Warning - failed to load package with pkgHandle ''responsive_slider''. Could not find package controller file: ''/var/www/html/royalhotel/packages/responsive_slider/controller.php''\n', NULL, 0),
(78, 'packages', '2016-01-29 10:57:33', 'Warning - failed to load package with pkgHandle ''responsive_slider''. Could not find package controller file: ''/var/www/html/royalhotel/packages/responsive_slider/controller.php''\n', NULL, 0),
(79, 'packages', '2016-01-29 10:57:33', 'Warning - failed to load package with pkgHandle ''responsive_slider''. Could not find package controller file: ''/var/www/html/royalhotel/packages/responsive_slider/controller.php''\n', NULL, 0),
(80, 'packages', '2016-01-29 10:57:33', 'Warning - failed to load package with pkgHandle ''responsive_slider''. Could not find package controller file: ''/var/www/html/royalhotel/packages/responsive_slider/controller.php''\n', NULL, 0),
(81, 'packages', '2016-01-29 10:57:33', 'Warning - failed to load package with pkgHandle ''responsive_slider''. Could not find package controller file: ''/var/www/html/royalhotel/packages/responsive_slider/controller.php''\n', NULL, 0),
(82, 'packages', '2016-01-29 10:57:33', 'Warning - failed to load package with pkgHandle ''responsive_slider''. Could not find package controller file: ''/var/www/html/royalhotel/packages/responsive_slider/controller.php''\n', NULL, 0),
(83, 'packages', '2016-01-29 10:57:33', 'Warning - failed to load package with pkgHandle ''responsive_slider''. Could not find package controller file: ''/var/www/html/royalhotel/packages/responsive_slider/controller.php''\n', NULL, 0),
(84, 'packages', '2016-01-29 10:57:33', 'Warning - failed to load package with pkgHandle ''responsive_slider''. Could not find package controller file: ''/var/www/html/royalhotel/packages/responsive_slider/controller.php''\n', NULL, 0),
(85, 'packages', '2016-01-29 10:57:33', 'Warning - failed to load package with pkgHandle ''responsive_slider''. Could not find package controller file: ''/var/www/html/royalhotel/packages/responsive_slider/controller.php''\n', NULL, 0),
(86, 'packages', '2016-01-29 10:57:33', 'Warning - failed to load package with pkgHandle ''responsive_slider''. Could not find package controller file: ''/var/www/html/royalhotel/packages/responsive_slider/controller.php''\n', NULL, 0),
(87, 'packages', '2016-01-29 10:57:33', 'Warning - failed to load package with pkgHandle ''responsive_slider''. Could not find package controller file: ''/var/www/html/royalhotel/packages/responsive_slider/controller.php''\n', 1, 0),
(88, 'packages', '2016-01-29 10:57:33', 'Warning - failed to load package with pkgHandle ''responsive_slider''. Could not find package controller file: ''/var/www/html/royalhotel/packages/responsive_slider/controller.php''\n', NULL, 0),
(89, 'packages', '2016-01-29 10:57:33', 'Warning - failed to load package with pkgHandle ''responsive_slider''. Could not find package controller file: ''/var/www/html/royalhotel/packages/responsive_slider/controller.php''\n', NULL, 0),
(90, 'packages', '2016-01-29 10:57:33', 'Warning - failed to load package with pkgHandle ''responsive_slider''. Could not find package controller file: ''/var/www/html/royalhotel/packages/responsive_slider/controller.php''\n', NULL, 0),
(91, 'packages', '2016-01-29 10:57:33', 'Warning - failed to load package with pkgHandle ''responsive_slider''. Could not find package controller file: ''/var/www/html/royalhotel/packages/responsive_slider/controller.php''\n', NULL, 0),
(92, 'packages', '2016-01-29 10:57:34', 'Warning - failed to load package with pkgHandle ''responsive_slider''. Could not find package controller file: ''/var/www/html/royalhotel/packages/responsive_slider/controller.php''\n', NULL, 0),
(93, 'packages', '2016-01-29 10:57:34', 'Warning - failed to load package with pkgHandle ''responsive_slider''. Could not find package controller file: ''/var/www/html/royalhotel/packages/responsive_slider/controller.php''\n', 1, 0),
(94, 'packages', '2016-01-29 10:57:35', 'Warning - failed to load package with pkgHandle ''responsive_slider''. Could not find package controller file: ''/var/www/html/royalhotel/packages/responsive_slider/controller.php''\n', NULL, 0),
(95, 'packages', '2016-01-29 10:57:37', 'Warning - failed to load package with pkgHandle ''responsive_slider''. Could not find package controller file: ''/var/www/html/royalhotel/packages/responsive_slider/controller.php''\n', NULL, 0),
(96, 'packages', '2016-01-29 10:57:38', 'Warning - failed to load package with pkgHandle ''responsive_slider''. Could not find package controller file: ''/var/www/html/royalhotel/packages/responsive_slider/controller.php''\n', NULL, 0),
(97, 'packages', '2016-01-29 10:57:38', 'Warning - failed to load package with pkgHandle ''responsive_slider''. Could not find package controller file: ''/var/www/html/royalhotel/packages/responsive_slider/controller.php''\n', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `MailImporters`
--

DROP TABLE IF EXISTS `MailImporters`;
CREATE TABLE IF NOT EXISTS `MailImporters` (
`miID` int(10) unsigned NOT NULL,
  `miHandle` varchar(64) NOT NULL,
  `miServer` varchar(255) DEFAULT NULL,
  `miUsername` varchar(255) DEFAULT NULL,
  `miPassword` varchar(255) DEFAULT NULL,
  `miEncryption` varchar(32) DEFAULT NULL,
  `miIsEnabled` int(1) NOT NULL DEFAULT '0',
  `miEmail` varchar(255) DEFAULT NULL,
  `miPort` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned DEFAULT NULL,
  `miConnectionMethod` varchar(8) DEFAULT 'POP'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `MailImporters`
--

INSERT INTO `MailImporters` (`miID`, `miHandle`, `miServer`, `miUsername`, `miPassword`, `miEncryption`, `miIsEnabled`, `miEmail`, `miPort`, `pkgID`, `miConnectionMethod`) VALUES
(1, 'private_message', '', NULL, NULL, NULL, 0, '', 0, 0, 'POP');

-- --------------------------------------------------------

--
-- Table structure for table `MailValidationHashes`
--

DROP TABLE IF EXISTS `MailValidationHashes`;
CREATE TABLE IF NOT EXISTS `MailValidationHashes` (
`mvhID` int(10) unsigned NOT NULL,
  `miID` int(10) unsigned NOT NULL DEFAULT '0',
  `email` varchar(255) NOT NULL,
  `mHash` varchar(128) NOT NULL,
  `mDateGenerated` int(10) unsigned NOT NULL DEFAULT '0',
  `mDateRedeemed` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `Packages`
--

DROP TABLE IF EXISTS `Packages`;
CREATE TABLE IF NOT EXISTS `Packages` (
`pkgID` int(10) unsigned NOT NULL,
  `pkgName` varchar(255) NOT NULL,
  `pkgHandle` varchar(64) NOT NULL,
  `pkgDescription` text,
  `pkgDateInstalled` datetime NOT NULL,
  `pkgIsInstalled` tinyint(1) NOT NULL DEFAULT '1',
  `pkgVersion` varchar(32) DEFAULT NULL,
  `pkgAvailableVersion` varchar(32) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `Packages`
--

INSERT INTO `Packages` (`pkgID`, `pkgName`, `pkgHandle`, `pkgDescription`, `pkgDateInstalled`, `pkgIsInstalled`, `pkgVersion`, `pkgAvailableVersion`) VALUES
(2, 'Responsive Image Slider', 'responsive_slider', 'A Responsive jQuery Image Slider based on flex .', '2016-01-29 15:58:14', 1, '1.3', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `PagePaths`
--

DROP TABLE IF EXISTS `PagePaths`;
CREATE TABLE IF NOT EXISTS `PagePaths` (
`ppID` int(10) unsigned NOT NULL,
  `cID` int(10) unsigned DEFAULT '0',
  `cPath` text,
  `ppIsCanonical` varchar(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=189 ;

--
-- Dumping data for table `PagePaths`
--

INSERT INTO `PagePaths` (`ppID`, `cID`, `cPath`, `ppIsCanonical`) VALUES
(1, 2, '/dashboard', '1'),
(2, 3, '/dashboard/composer', '1'),
(3, 4, '/dashboard/composer/write', '1'),
(4, 5, '/dashboard/composer/drafts', '1'),
(5, 6, '/dashboard/sitemap', '1'),
(6, 7, '/dashboard/sitemap/full', '1'),
(7, 8, '/dashboard/sitemap/explore', '1'),
(8, 9, '/dashboard/sitemap/search', '1'),
(9, 10, '/dashboard/files', '1'),
(10, 11, '/dashboard/files/search', '1'),
(11, 12, '/dashboard/files/attributes', '1'),
(12, 13, '/dashboard/files/sets', '1'),
(13, 14, '/dashboard/files/add_set', '1'),
(14, 15, '/dashboard/users', '1'),
(15, 16, '/dashboard/users/search', '1'),
(16, 17, '/dashboard/users/groups', '1'),
(17, 18, '/dashboard/users/attributes', '1'),
(18, 19, '/dashboard/users/add', '1'),
(19, 20, '/dashboard/users/add_group', '1'),
(20, 21, '/dashboard/users/group_sets', '1'),
(21, 22, '/dashboard/reports', '1'),
(22, 23, '/dashboard/reports/statistics', '1'),
(23, 24, '/dashboard/reports/forms', '1'),
(24, 25, '/dashboard/reports/surveys', '1'),
(25, 26, '/dashboard/reports/logs', '1'),
(26, 27, '/dashboard/pages', '1'),
(27, 28, '/dashboard/pages/themes', '1'),
(28, 29, '/dashboard/pages/themes/add', '1'),
(29, 30, '/dashboard/pages/themes/inspect', '1'),
(30, 31, '/dashboard/pages/themes/customize', '1'),
(31, 32, '/dashboard/pages/types', '1'),
(32, 33, '/dashboard/pages/types/add', '1'),
(33, 34, '/dashboard/pages/attributes', '1'),
(34, 35, '/dashboard/pages/single', '1'),
(35, 36, '/dashboard/workflow', '1'),
(36, 37, '/dashboard/workflow/list', '1'),
(37, 38, '/dashboard/workflow/me', '1'),
(38, 39, '/dashboard/blocks', '1'),
(39, 40, '/dashboard/blocks/stacks', '1'),
(40, 41, '/dashboard/blocks/permissions', '1'),
(41, 42, '/dashboard/blocks/stacks/list', '1'),
(42, 43, '/dashboard/blocks/types', '1'),
(43, 44, '/dashboard/extend', '1'),
(44, 45, '/dashboard/news', '1'),
(45, 46, '/dashboard/extend/install', '1'),
(46, 47, '/dashboard/extend/update', '1'),
(47, 48, '/dashboard/extend/connect', '1'),
(48, 49, '/dashboard/extend/themes', '1'),
(49, 50, '/dashboard/extend/add-ons', '1'),
(50, 51, '/dashboard/system', '1'),
(51, 52, '/dashboard/system/basics', '1'),
(52, 53, '/dashboard/system/basics/site_name', '1'),
(53, 54, '/dashboard/system/basics/icons', '1'),
(54, 55, '/dashboard/system/basics/editor', '1'),
(55, 56, '/dashboard/system/basics/multilingual', '1'),
(56, 57, '/dashboard/system/basics/timezone', '1'),
(57, 58, '/dashboard/system/basics/interface', '1'),
(58, 59, '/dashboard/system/seo', '1'),
(59, 60, '/dashboard/system/seo/urls', '1'),
(60, 61, '/dashboard/system/seo/bulk_seo_tool', '1'),
(61, 62, '/dashboard/system/seo/tracking_codes', '1'),
(62, 63, '/dashboard/system/seo/excluded', '1'),
(63, 64, '/dashboard/system/seo/statistics', '1'),
(64, 65, '/dashboard/system/seo/search_index', '1'),
(65, 66, '/dashboard/system/optimization', '1'),
(66, 67, '/dashboard/system/optimization/cache', '1'),
(67, 68, '/dashboard/system/optimization/clear_cache', '1'),
(68, 69, '/dashboard/system/optimization/jobs', '1'),
(69, 70, '/dashboard/system/permissions', '1'),
(70, 71, '/dashboard/system/permissions/site', '1'),
(71, 72, '/dashboard/system/permissions/files', '1'),
(72, 73, '/dashboard/system/permissions/file_types', '1'),
(73, 74, '/dashboard/system/permissions/tasks', '1'),
(74, 75, '/dashboard/system/permissions/users', '1'),
(75, 76, '/dashboard/system/permissions/advanced', '1'),
(76, 77, '/dashboard/system/permissions/ip_blacklist', '1'),
(77, 78, '/dashboard/system/permissions/captcha', '1'),
(78, 79, '/dashboard/system/permissions/antispam', '1'),
(79, 80, '/dashboard/system/permissions/maintenance_mode', '1'),
(80, 81, '/dashboard/system/registration', '1'),
(81, 82, '/dashboard/system/registration/postlogin', '1'),
(82, 83, '/dashboard/system/registration/profiles', '1'),
(83, 84, '/dashboard/system/registration/public_registration', '1'),
(84, 85, '/dashboard/system/mail', '1'),
(85, 86, '/dashboard/system/mail/method', '1'),
(86, 87, '/dashboard/system/mail/method/test_settings', '1'),
(87, 88, '/dashboard/system/mail/importers', '1'),
(88, 89, '/dashboard/system/attributes', '1'),
(89, 90, '/dashboard/system/attributes/sets', '1'),
(90, 91, '/dashboard/system/attributes/types', '1'),
(91, 92, '/dashboard/system/environment', '1'),
(92, 93, '/dashboard/system/environment/info', '1'),
(93, 94, '/dashboard/system/environment/debug', '1'),
(94, 95, '/dashboard/system/environment/logging', '1'),
(95, 96, '/dashboard/system/environment/file_storage_locations', '1'),
(96, 97, '/dashboard/system/environment/proxy', '1'),
(97, 98, '/dashboard/system/backup_restore', '1'),
(98, 99, '/dashboard/system/backup_restore/backup', '1'),
(99, 100, '/dashboard/system/backup_restore/update', '1'),
(100, 101, '/dashboard/system/backup_restore/database', '1'),
(101, 102, '/dashboard/pages/types/composer', '1'),
(102, 106, '/dashboard/welcome', '1'),
(103, 107, '/dashboard/home', '1'),
(104, 108, '/!drafts', '1'),
(105, 109, '/!trash', '1'),
(106, 110, '/!stacks', '1'),
(107, 111, '/login', '1'),
(108, 112, '/register', '1'),
(109, 113, '/profile', '1'),
(110, 114, '/profile/edit', '1'),
(111, 115, '/profile/avatar', '1'),
(112, 116, '/profile/messages', '1'),
(113, 117, '/profile/friends', '1'),
(114, 118, '/page_not_found', '1'),
(115, 119, '/page_forbidden', '1'),
(116, 120, '/download_file', '1'),
(117, 121, '/!stacks/header-nav', '1'),
(118, 122, '/!stacks/side-nav', '1'),
(119, 123, '/!stacks/site-name', '1'),
(129, 135, '/!stacks/site-logo', '1'),
(132, 136, '/!stacks/header-booking', '1'),
(154, 143, '/!stacks/footer-logo', '1'),
(155, 144, '/!stacks/footer-address', '1'),
(156, 145, '/!stacks/footer-menu', '1'),
(164, 137, '/!stacks/body-banner01', '1'),
(165, 138, '/!stacks/body-banner02', '1'),
(166, 139, '/!stacks/body-banner03', '1'),
(170, 140, '/!stacks/map-heading', '1'),
(176, 141, '/!stacks/location-map', '1'),
(181, 142, '/!stacks/map-description', '1'),
(182, 128, '/about', '1'),
(183, 131, '/about/guestbook', '1'),
(184, 132, '/about/contact-us', '1'),
(185, 129, '/search', '1'),
(186, 130, '/blog', '1'),
(187, 133, '/blog/hello-world', '1'),
(188, 134, '/blog/blog-archives', '1');

-- --------------------------------------------------------

--
-- Table structure for table `PagePermissionAssignments`
--

DROP TABLE IF EXISTS `PagePermissionAssignments`;
CREATE TABLE IF NOT EXISTS `PagePermissionAssignments` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `PagePermissionAssignments`
--

INSERT INTO `PagePermissionAssignments` (`cID`, `pkID`, `paID`) VALUES
(1, 1, 53),
(1, 2, 54),
(1, 3, 55),
(1, 4, 56),
(1, 5, 57),
(1, 6, 58),
(1, 7, 59),
(1, 8, 60),
(1, 9, 61),
(1, 10, 62),
(1, 11, 63),
(1, 12, 64),
(1, 13, 65),
(1, 14, 66),
(1, 15, 67),
(1, 16, 68),
(2, 1, 19),
(2, 2, 21),
(2, 3, 20),
(2, 4, 26),
(2, 5, 22),
(2, 6, 23),
(2, 7, 28),
(2, 8, 30),
(2, 9, 32),
(2, 10, 29),
(2, 11, 33),
(2, 12, 34),
(2, 13, 24),
(2, 14, 27),
(2, 15, 25),
(2, 16, 31),
(42, 1, 35),
(42, 3, 36),
(111, 1, 39),
(111, 3, 40),
(112, 1, 41),
(112, 3, 42);

-- --------------------------------------------------------

--
-- Table structure for table `PagePermissionPageTypeAccessList`
--

DROP TABLE IF EXISTS `PagePermissionPageTypeAccessList`;
CREATE TABLE IF NOT EXISTS `PagePermissionPageTypeAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) NOT NULL DEFAULT '1',
  `externalLink` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `PagePermissionPageTypeAccessListCustom`
--

DROP TABLE IF EXISTS `PagePermissionPageTypeAccessListCustom`;
CREATE TABLE IF NOT EXISTS `PagePermissionPageTypeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `ctID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `PagePermissionPropertyAccessList`
--

DROP TABLE IF EXISTS `PagePermissionPropertyAccessList`;
CREATE TABLE IF NOT EXISTS `PagePermissionPropertyAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `name` int(1) unsigned DEFAULT '0',
  `publicDateTime` int(1) unsigned DEFAULT '0',
  `uID` int(1) unsigned DEFAULT '0',
  `description` int(1) unsigned DEFAULT '0',
  `paths` int(1) unsigned DEFAULT '0',
  `attributePermission` varchar(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `PagePermissionPropertyAttributeAccessListCustom`
--

DROP TABLE IF EXISTS `PagePermissionPropertyAttributeAccessListCustom`;
CREATE TABLE IF NOT EXISTS `PagePermissionPropertyAttributeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `PagePermissionThemeAccessList`
--

DROP TABLE IF EXISTS `PagePermissionThemeAccessList`;
CREATE TABLE IF NOT EXISTS `PagePermissionThemeAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `PagePermissionThemeAccessListCustom`
--

DROP TABLE IF EXISTS `PagePermissionThemeAccessListCustom`;
CREATE TABLE IF NOT EXISTS `PagePermissionThemeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `ptID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Pages`
--

DROP TABLE IF EXISTS `Pages`;
CREATE TABLE IF NOT EXISTS `Pages` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cIsTemplate` int(1) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned DEFAULT NULL,
  `cIsCheckedOut` tinyint(1) NOT NULL DEFAULT '0',
  `cCheckedOutUID` int(10) unsigned DEFAULT NULL,
  `cCheckedOutDatetime` datetime DEFAULT NULL,
  `cCheckedOutDatetimeLastEdit` datetime DEFAULT NULL,
  `cOverrideTemplatePermissions` tinyint(1) NOT NULL DEFAULT '1',
  `cInheritPermissionsFromCID` int(10) unsigned NOT NULL DEFAULT '0',
  `cInheritPermissionsFrom` varchar(8) NOT NULL DEFAULT 'PARENT',
  `cFilename` varchar(255) DEFAULT NULL,
  `cPointerID` int(10) unsigned NOT NULL DEFAULT '0',
  `cPointerExternalLink` longtext,
  `cPointerExternalLinkNewWindow` tinyint(1) NOT NULL DEFAULT '0',
  `cIsActive` tinyint(1) NOT NULL DEFAULT '1',
  `cChildren` int(10) unsigned NOT NULL DEFAULT '0',
  `cDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `cParentID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `cCacheFullPageContent` int(4) NOT NULL DEFAULT '-1',
  `cCacheFullPageContentOverrideLifetime` varchar(32) NOT NULL DEFAULT '0',
  `cCacheFullPageContentLifetimeCustom` int(10) unsigned NOT NULL DEFAULT '0',
  `cIsSystemPage` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Pages`
--

INSERT INTO `Pages` (`cID`, `cIsTemplate`, `uID`, `cIsCheckedOut`, `cCheckedOutUID`, `cCheckedOutDatetime`, `cCheckedOutDatetimeLastEdit`, `cOverrideTemplatePermissions`, `cInheritPermissionsFromCID`, `cInheritPermissionsFrom`, `cFilename`, `cPointerID`, `cPointerExternalLink`, `cPointerExternalLinkNewWindow`, `cIsActive`, `cChildren`, `cDisplayOrder`, `cParentID`, `pkgID`, `cCacheFullPageContent`, `cCacheFullPageContentOverrideLifetime`, `cCacheFullPageContentLifetimeCustom`, `cIsSystemPage`) VALUES
(1, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'OVERRIDE', NULL, 0, NULL, 0, 1, 13, 0, 0, 0, -1, '0', 0, 0),
(2, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'OVERRIDE', '/dashboard/view.php', 0, NULL, 0, 1, 13, 0, 0, 0, -1, '0', 0, 1),
(3, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/composer/view.php', 0, NULL, 0, 1, 2, 0, 2, 0, -1, '0', 0, 1),
(4, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/composer/write.php', 0, NULL, 0, 1, 0, 0, 3, 0, -1, '0', 0, 1),
(5, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/composer/drafts.php', 0, NULL, 0, 1, 0, 1, 3, 0, -1, '0', 0, 1),
(6, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/sitemap/view.php', 0, NULL, 0, 1, 3, 1, 2, 0, -1, '0', 0, 1),
(7, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/sitemap/full.php', 0, NULL, 0, 1, 0, 0, 6, 0, -1, '0', 0, 1),
(8, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/sitemap/explore.php', 0, NULL, 0, 1, 0, 1, 6, 0, -1, '0', 0, 1),
(9, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/sitemap/search.php', 0, NULL, 0, 1, 0, 2, 6, 0, -1, '0', 0, 1),
(10, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/files/view.php', 0, NULL, 0, 1, 4, 2, 2, 0, -1, '0', 0, 1),
(11, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/files/search.php', 0, NULL, 0, 1, 0, 0, 10, 0, -1, '0', 0, 1),
(12, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/files/attributes.php', 0, NULL, 0, 1, 0, 1, 10, 0, -1, '0', 0, 1),
(13, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/files/sets.php', 0, NULL, 0, 1, 0, 2, 10, 0, -1, '0', 0, 1),
(14, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/files/add_set.php', 0, NULL, 0, 1, 0, 3, 10, 0, -1, '0', 0, 1),
(15, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/users/view.php', 0, NULL, 0, 1, 6, 3, 2, 0, -1, '0', 0, 1),
(16, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/users/search.php', 0, NULL, 0, 1, 0, 0, 15, 0, -1, '0', 0, 1),
(17, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/users/groups.php', 0, NULL, 0, 1, 0, 1, 15, 0, -1, '0', 0, 1),
(18, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/users/attributes.php', 0, NULL, 0, 1, 0, 2, 15, 0, -1, '0', 0, 1),
(19, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/users/add.php', 0, NULL, 0, 1, 0, 3, 15, 0, -1, '0', 0, 1),
(20, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/users/add_group.php', 0, NULL, 0, 1, 0, 4, 15, 0, -1, '0', 0, 1),
(21, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/users/group_sets.php', 0, NULL, 0, 1, 0, 5, 15, 0, -1, '0', 0, 1),
(22, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/reports.php', 0, NULL, 0, 1, 4, 4, 2, 0, -1, '0', 0, 1),
(23, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/reports/statistics.php', 0, NULL, 0, 1, 0, 0, 22, 0, -1, '0', 0, 1),
(24, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/reports/forms.php', 0, NULL, 0, 1, 0, 1, 22, 0, -1, '0', 0, 1),
(25, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/reports/surveys.php', 0, NULL, 0, 1, 0, 2, 22, 0, -1, '0', 0, 1),
(26, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/reports/logs.php', 0, NULL, 0, 1, 0, 3, 22, 0, -1, '0', 0, 1),
(27, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/view.php', 0, NULL, 0, 1, 4, 5, 2, 0, -1, '0', 0, 1),
(28, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/themes/view.php', 0, NULL, 0, 1, 3, 0, 27, 0, -1, '0', 0, 1),
(29, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/themes/add.php', 0, NULL, 0, 1, 0, 0, 28, 0, -1, '0', 0, 1),
(30, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/themes/inspect.php', 0, NULL, 0, 1, 0, 1, 28, 0, -1, '0', 0, 1),
(31, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/themes/customize.php', 0, NULL, 0, 1, 0, 2, 28, 0, -1, '0', 0, 1),
(32, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/types/view.php', 0, NULL, 0, 1, 2, 1, 27, 0, -1, '0', 0, 1),
(33, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/types/add.php', 0, NULL, 0, 1, 0, 0, 32, 0, -1, '0', 0, 1),
(34, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/attributes.php', 0, NULL, 0, 1, 0, 2, 27, 0, -1, '0', 0, 1),
(35, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/single.php', 0, NULL, 0, 1, 0, 3, 27, 0, -1, '0', 0, 1),
(36, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/workflow/view.php', 0, NULL, 0, 1, 2, 6, 2, 0, -1, '0', 0, 1),
(37, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/workflow/list.php', 0, NULL, 0, 1, 0, 0, 36, 0, -1, '0', 0, 1),
(38, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/workflow/me.php', 0, NULL, 0, 1, 0, 1, 36, 0, -1, '0', 0, 1),
(39, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/blocks/view.php', 0, NULL, 0, 1, 3, 7, 2, 0, -1, '0', 0, 1),
(40, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/blocks/stacks/view.php', 0, NULL, 0, 1, 1, 0, 39, 0, -1, '0', 0, 1),
(41, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/blocks/permissions.php', 0, NULL, 0, 1, 0, 1, 39, 0, -1, '0', 0, 1),
(42, 0, 1, 0, NULL, NULL, NULL, 1, 42, 'OVERRIDE', '/dashboard/blocks/stacks/list/view.php', 0, NULL, 0, 1, 0, 0, 40, 0, -1, '0', 0, 1),
(43, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/blocks/types/view.php', 0, NULL, 0, 1, 0, 2, 39, 0, -1, '0', 0, 1),
(44, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/extend/view.php', 0, NULL, 0, 1, 5, 8, 2, 0, -1, '0', 0, 1),
(45, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/news.php', 0, NULL, 0, 1, 0, 9, 2, 0, -1, '0', 0, 1),
(46, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/extend/install.php', 0, NULL, 0, 1, 0, 0, 44, 0, -1, '0', 0, 1),
(47, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/extend/update.php', 0, NULL, 0, 1, 0, 1, 44, 0, -1, '0', 0, 1),
(48, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/extend/connect.php', 0, NULL, 0, 1, 0, 2, 44, 0, -1, '0', 0, 1),
(49, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/extend/themes.php', 0, NULL, 0, 1, 0, 3, 44, 0, -1, '0', 0, 1),
(50, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/extend/add-ons.php', 0, NULL, 0, 1, 0, 4, 44, 0, -1, '0', 0, 1),
(51, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/view.php', 0, NULL, 0, 1, 9, 10, 2, 0, -1, '0', 0, 1),
(52, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/basics/view.php', 0, NULL, 0, 1, 6, 0, 51, 0, -1, '0', 0, 1),
(53, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/basics/site_name.php', 0, NULL, 0, 1, 0, 0, 52, 0, -1, '0', 0, 1),
(54, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/basics/icons.php', 0, NULL, 0, 1, 0, 1, 52, 0, -1, '0', 0, 1),
(55, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/basics/editor.php', 0, NULL, 0, 1, 0, 2, 52, 0, -1, '0', 0, 1),
(56, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/basics/multilingual/view.php', 0, NULL, 0, 1, 0, 3, 52, 0, -1, '0', 0, 1),
(57, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/basics/timezone.php', 0, NULL, 0, 1, 0, 4, 52, 0, -1, '0', 0, 1),
(58, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/basics/interface.php', 0, NULL, 0, 1, 0, 5, 52, 0, -1, '0', 0, 1),
(59, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/seo/view.php', 0, NULL, 0, 1, 6, 1, 51, 0, -1, '0', 0, 1),
(60, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/seo/urls.php', 0, NULL, 0, 1, 0, 0, 59, 0, -1, '0', 0, 1),
(61, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/seo/bulk_seo_tool.php', 0, NULL, 0, 1, 0, 1, 59, 0, -1, '0', 0, 1),
(62, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/seo/tracking_codes.php', 0, NULL, 0, 1, 0, 2, 59, 0, -1, '0', 0, 1),
(63, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/seo/excluded.php', 0, NULL, 0, 1, 0, 3, 59, 0, -1, '0', 0, 1),
(64, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/seo/statistics.php', 0, NULL, 0, 1, 0, 4, 59, 0, -1, '0', 0, 1),
(65, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/seo/search_index.php', 0, NULL, 0, 1, 0, 5, 59, 0, -1, '0', 0, 1),
(66, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/optimization/view.php', 0, NULL, 0, 1, 3, 2, 51, 0, -1, '0', 0, 1),
(67, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/optimization/cache.php', 0, NULL, 0, 1, 0, 0, 66, 0, -1, '0', 0, 1),
(68, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/optimization/clear_cache.php', 0, NULL, 0, 1, 0, 1, 66, 0, -1, '0', 0, 1),
(69, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/optimization/jobs.php', 0, NULL, 0, 1, 0, 2, 66, 0, -1, '0', 0, 1),
(70, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/permissions/view.php', 0, NULL, 0, 1, 10, 3, 51, 0, -1, '0', 0, 1),
(71, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/permissions/site.php', 0, NULL, 0, 1, 0, 0, 70, 0, -1, '0', 0, 1),
(72, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/permissions/files.php', 0, NULL, 0, 1, 0, 1, 70, 0, -1, '0', 0, 1),
(73, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/permissions/file_types.php', 0, NULL, 0, 1, 0, 2, 70, 0, -1, '0', 0, 1),
(74, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/permissions/tasks.php', 0, NULL, 0, 1, 0, 3, 70, 0, -1, '0', 0, 1),
(75, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/permissions/users.php', 0, NULL, 0, 1, 0, 4, 70, 0, -1, '0', 0, 1),
(76, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/permissions/advanced.php', 0, NULL, 0, 1, 0, 5, 70, 0, -1, '0', 0, 1),
(77, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/permissions/ip_blacklist.php', 0, NULL, 0, 1, 0, 6, 70, 0, -1, '0', 0, 1),
(78, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/permissions/captcha.php', 0, NULL, 0, 1, 0, 7, 70, 0, -1, '0', 0, 1),
(79, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/permissions/antispam.php', 0, NULL, 0, 1, 0, 8, 70, 0, -1, '0', 0, 1),
(80, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/permissions/maintenance_mode.php', 0, NULL, 0, 1, 0, 9, 70, 0, -1, '0', 0, 1),
(81, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/registration/view.php', 0, NULL, 0, 1, 3, 4, 51, 0, -1, '0', 0, 1),
(82, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/registration/postlogin.php', 0, NULL, 0, 1, 0, 0, 81, 0, -1, '0', 0, 1),
(83, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/registration/profiles.php', 0, NULL, 0, 1, 0, 1, 81, 0, -1, '0', 0, 1),
(84, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/registration/public_registration.php', 0, NULL, 0, 1, 0, 2, 81, 0, -1, '0', 0, 1),
(85, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/mail/view.php', 0, NULL, 0, 1, 2, 5, 51, 0, -1, '0', 0, 1),
(86, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/mail/method.php', 0, NULL, 0, 1, 1, 0, 85, 0, -1, '0', 0, 1),
(87, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/mail/method/test_settings.php', 0, NULL, 0, 1, 0, 0, 86, 0, -1, '0', 0, 1),
(88, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/mail/importers.php', 0, NULL, 0, 1, 0, 1, 85, 0, -1, '0', 0, 1),
(89, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/attributes/view.php', 0, NULL, 0, 1, 2, 6, 51, 0, -1, '0', 0, 1),
(90, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/attributes/sets.php', 0, NULL, 0, 1, 0, 0, 89, 0, -1, '0', 0, 1),
(91, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/attributes/types.php', 0, NULL, 0, 1, 0, 1, 89, 0, -1, '0', 0, 1),
(92, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/environment/view.php', 0, NULL, 0, 1, 5, 7, 51, 0, -1, '0', 0, 1),
(93, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/environment/info.php', 0, NULL, 0, 1, 0, 0, 92, 0, -1, '0', 0, 1),
(94, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/environment/debug.php', 0, NULL, 0, 1, 0, 1, 92, 0, -1, '0', 0, 1),
(95, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/environment/logging.php', 0, NULL, 0, 1, 0, 2, 92, 0, -1, '0', 0, 1),
(96, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/environment/file_storage_locations.php', 0, NULL, 0, 1, 0, 3, 92, 0, -1, '0', 0, 1),
(97, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/environment/proxy.php', 0, NULL, 0, 1, 0, 4, 92, 0, -1, '0', 0, 1),
(98, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/backup_restore/view.php', 0, NULL, 0, 1, 3, 8, 51, 0, -1, '0', 0, 1),
(99, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/backup_restore/backup.php', 0, NULL, 0, 1, 0, 0, 98, 0, -1, '0', 0, 1),
(100, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/backup_restore/update.php', 0, NULL, 0, 1, 0, 1, 98, 0, -1, '0', 0, 1),
(101, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/backup_restore/database.php', 0, NULL, 0, 1, 0, 2, 98, 0, -1, '0', 0, 1),
(102, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/types/composer.php', 0, NULL, 0, 1, 0, 1, 32, 0, -1, '0', 0, 1),
(103, 1, NULL, 0, NULL, NULL, NULL, 1, 0, 'PARENT', NULL, 0, NULL, 0, 1, 0, 0, 0, 0, -1, '0', 0, 0),
(104, 1, NULL, 0, NULL, NULL, NULL, 1, 0, 'PARENT', NULL, 0, NULL, 0, 1, 0, 0, 0, 0, -1, '0', 0, 0),
(105, 1, NULL, 0, NULL, NULL, NULL, 1, 0, 'PARENT', NULL, 0, NULL, 0, 1, 0, 0, 0, 0, -1, '0', 0, 0),
(106, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', NULL, 0, NULL, 0, 1, 0, 11, 2, 0, -1, '0', 0, 1),
(107, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', NULL, 0, NULL, 0, 1, 0, 12, 2, 0, -1, '0', 0, 1),
(108, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/!drafts/view.php', 0, NULL, 0, 1, 0, 0, 0, 0, -1, '0', 0, 1),
(109, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/!trash/view.php', 0, NULL, 0, 1, 0, 0, 0, 0, -1, '0', 0, 1),
(110, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/!stacks/view.php', 0, NULL, 0, 1, 14, 0, 0, 0, -1, '0', 0, 1),
(111, 0, 1, 0, NULL, NULL, NULL, 1, 111, 'OVERRIDE', '/login.php', 0, NULL, 0, 1, 0, 0, 0, 0, -1, '0', 0, 1),
(112, 0, 1, 0, NULL, NULL, NULL, 1, 112, 'OVERRIDE', '/register.php', 0, NULL, 0, 1, 0, 0, 0, 0, -1, '0', 0, 1),
(113, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/profile/view.php', 0, NULL, 0, 1, 4, 0, 1, 0, -1, '0', 0, 1),
(114, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/profile/edit.php', 0, NULL, 0, 1, 0, 0, 113, 0, -1, '0', 0, 1),
(115, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/profile/avatar.php', 0, NULL, 0, 1, 0, 1, 113, 0, -1, '0', 0, 1),
(116, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/profile/messages.php', 0, NULL, 0, 1, 0, 2, 113, 0, -1, '0', 0, 1),
(117, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/profile/friends.php', 0, NULL, 0, 1, 0, 3, 113, 0, -1, '0', 0, 1),
(118, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/page_not_found.php', 0, NULL, 0, 1, 0, 1, 0, 0, -1, '0', 0, 1),
(119, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/page_forbidden.php', 0, NULL, 0, 1, 0, 1, 0, 0, -1, '0', 0, 1),
(120, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/download_file.php', 0, NULL, 0, 1, 0, 1, 1, 0, -1, '0', 0, 1),
(121, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 0, 110, 0, -1, '0', 0, 1),
(122, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 1, 110, 0, -1, '0', 0, 1),
(123, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 2, 110, 0, -1, '0', 0, 1),
(124, 1, NULL, 0, NULL, NULL, NULL, 1, 0, 'PARENT', NULL, 0, NULL, 0, 1, 0, 0, 0, 0, -1, '0', 0, 0),
(125, 1, NULL, 0, NULL, NULL, NULL, 1, 0, 'PARENT', NULL, 0, NULL, 0, 1, 0, 0, 0, 0, -1, '0', 0, 0),
(126, 1, NULL, 0, NULL, NULL, NULL, 1, 0, 'PARENT', NULL, 0, NULL, 0, 1, 0, 0, 0, 0, -1, '0', 0, 0),
(127, 1, NULL, 0, NULL, NULL, NULL, 1, 0, 'PARENT', NULL, 0, NULL, 0, 1, 0, 0, 0, 0, -1, '0', 0, 0),
(128, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 2, 2, 1, 0, -1, '0', 0, 0),
(129, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 3, 1, 0, -1, '0', 0, 0),
(130, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 2, 4, 1, 0, -1, '0', 0, 0),
(131, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 0, 128, 0, -1, '0', 0, 0),
(132, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 1, 128, 0, -1, '0', 0, 0),
(133, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 0, 130, 0, -1, '0', 0, 0),
(134, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 1, 130, 0, -1, '0', 0, 0),
(135, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 3, 110, 0, -1, '0', 0, 1),
(136, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 4, 110, 0, -1, '0', 0, 1),
(137, 0, NULL, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 5, 110, 0, -1, '0', 0, 1),
(138, 0, NULL, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 6, 110, 0, -1, '0', 0, 1),
(139, 0, NULL, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 7, 110, 0, -1, '0', 0, 1),
(140, 0, NULL, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 8, 110, 0, -1, '0', 0, 1),
(141, 0, NULL, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 9, 110, 0, -1, '0', 0, 1),
(142, 0, NULL, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 10, 110, 0, -1, '0', 0, 1),
(143, 0, NULL, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 11, 110, 0, -1, '0', 0, 1),
(144, 0, NULL, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 12, 110, 0, -1, '0', 0, 1),
(145, 0, NULL, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 13, 110, 0, -1, '0', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `PageSearchIndex`
--

DROP TABLE IF EXISTS `PageSearchIndex`;
CREATE TABLE IF NOT EXISTS `PageSearchIndex` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `content` longtext,
  `cName` varchar(255) DEFAULT NULL,
  `cDescription` text,
  `cPath` text,
  `cDatePublic` datetime DEFAULT NULL,
  `cDateLastIndexed` datetime DEFAULT NULL,
  `cDateLastSitemapped` datetime DEFAULT NULL,
  `cRequiresReindex` tinyint(1) unsigned DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `PageSearchIndex`
--

INSERT INTO `PageSearchIndex` (`cID`, `content`, `cName`, `cDescription`, `cPath`, `cDatePublic`, `cDateLastIndexed`, `cDateLastSitemapped`, `cRequiresReindex`) VALUES
(3, '', 'Composer', 'Write for your site.', '/dashboard/composer', '2016-01-29 15:03:28', '2016-01-29 15:04:36', NULL, 0),
(4, '', 'Write', '', '/dashboard/composer/write', '2016-01-29 15:03:29', '2016-01-29 15:04:37', NULL, 0),
(5, '', 'Drafts', '', '/dashboard/composer/drafts', '2016-01-29 15:03:29', '2016-01-29 15:04:37', NULL, 0),
(6, '', 'Sitemap', 'Whole world at a glance.', '/dashboard/sitemap', '2016-01-29 15:03:30', '2016-01-29 15:04:37', NULL, 0),
(7, '', 'Full Sitemap', '', '/dashboard/sitemap/full', '2016-01-29 15:03:30', '2016-01-29 15:04:38', NULL, 0),
(8, '', 'Flat View', '', '/dashboard/sitemap/explore', '2016-01-29 15:03:31', '2016-01-29 15:04:38', NULL, 0),
(9, '', 'Page Search', '', '/dashboard/sitemap/search', '2016-01-29 15:03:31', '2016-01-29 15:04:39', NULL, 0),
(11, '', 'File Manager', '', '/dashboard/files/search', '2016-01-29 15:03:32', '2016-01-29 15:04:40', NULL, 0),
(12, '', 'Attributes', '', '/dashboard/files/attributes', '2016-01-29 15:03:34', '2016-01-29 15:04:40', NULL, 0),
(13, '', 'File Sets', '', '/dashboard/files/sets', '2016-01-29 15:03:34', '2016-01-29 15:04:41', NULL, 0),
(14, '', 'Add File Set', '', '/dashboard/files/add_set', '2016-01-29 15:03:35', '2016-01-29 15:04:41', NULL, 0),
(15, '', 'Members', 'Add and manage the user accounts and groups on your website.', '/dashboard/users', '2016-01-29 15:03:35', '2016-01-29 15:04:42', NULL, 0),
(16, '', 'Search Users', '', '/dashboard/users/search', '2016-01-29 15:03:36', '2016-01-29 15:04:42', NULL, 0),
(17, '', 'User Groups', '', '/dashboard/users/groups', '2016-01-29 15:03:36', '2016-01-29 15:04:43', NULL, 0),
(18, '', 'Attributes', '', '/dashboard/users/attributes', '2016-01-29 15:03:37', '2016-01-29 15:04:43', NULL, 0),
(19, '', 'Add User', '', '/dashboard/users/add', '2016-01-29 15:03:37', '2016-01-29 15:04:44', NULL, 0),
(20, '', 'Add Group', '', '/dashboard/users/add_group', '2016-01-29 15:03:38', '2016-01-29 15:04:45', NULL, 0),
(21, '', 'Group Sets', '', '/dashboard/users/group_sets', '2016-01-29 15:03:39', '2016-01-29 15:04:45', NULL, 0),
(22, '', 'Reports', 'Get data from forms and logs.', '/dashboard/reports', '2016-01-29 15:03:40', '2016-01-29 15:04:45', NULL, 0),
(23, '', 'Statistics', 'View your site activity.', '/dashboard/reports/statistics', '2016-01-29 15:03:40', '2016-01-29 15:04:46', NULL, 0),
(24, '', 'Form Results', 'Get submission data.', '/dashboard/reports/forms', '2016-01-29 15:03:41', '2016-01-29 15:04:46', NULL, 0),
(25, '', 'Surveys', '', '/dashboard/reports/surveys', '2016-01-29 15:03:42', '2016-01-29 15:04:47', NULL, 0),
(26, '', 'Logs', '', '/dashboard/reports/logs', '2016-01-29 15:03:42', '2016-01-29 15:04:47', NULL, 0),
(28, '', 'Themes', 'Reskin your site.', '/dashboard/pages/themes', '2016-01-29 15:03:44', '2016-01-29 15:04:48', NULL, 0),
(29, '', 'Add', '', '/dashboard/pages/themes/add', '2016-01-29 15:03:45', '2016-01-29 15:04:48', NULL, 0),
(30, '', 'Inspect', '', '/dashboard/pages/themes/inspect', '2016-01-29 15:03:45', '2016-01-29 15:04:48', NULL, 0),
(31, '', 'Customize', '', '/dashboard/pages/themes/customize', '2016-01-29 15:03:46', '2016-01-29 15:04:48', NULL, 0),
(32, '', 'Page Types', 'What goes in your site.', '/dashboard/pages/types', '2016-01-29 15:03:46', '2016-01-29 15:04:49', NULL, 0),
(34, '', 'Attributes', '', '/dashboard/pages/attributes', '2016-01-29 15:03:47', '2016-01-29 15:04:49', NULL, 0),
(35, '', 'Single Pages', '', '/dashboard/pages/single', '2016-01-29 15:03:48', '2016-01-29 15:04:50', NULL, 0),
(36, '', 'Workflow', '', '/dashboard/workflow', '2016-01-29 15:03:48', '2016-01-29 15:04:50', NULL, 0),
(37, '', 'Workflow List', '', '/dashboard/workflow/list', '2016-01-29 15:03:49', '2016-01-29 15:04:51', NULL, 0),
(38, '', 'Waiting for Me', '', '/dashboard/workflow/me', '2016-01-29 15:03:50', '2016-01-29 15:04:51', NULL, 0),
(40, '', 'Stacks', 'Share content across your site.', '/dashboard/blocks/stacks', '2016-01-29 15:03:51', '2016-01-29 15:04:51', NULL, 0),
(41, '', 'Block & Stack Permissions', 'Control who can add blocks and stacks on your site.', '/dashboard/blocks/permissions', '2016-01-29 15:03:52', '2016-01-29 15:04:52', NULL, 0),
(42, '', 'Stack List', '', '/dashboard/blocks/stacks/list', '2016-01-29 15:03:52', '2016-01-29 15:04:52', NULL, 0),
(43, '', 'Block Types', 'Manage the installed block types in your site.', '/dashboard/blocks/types', '2016-01-29 15:03:54', '2016-01-29 15:04:53', NULL, 0),
(44, '', 'Extend concrete5', 'Connect to the concrete5 marketplace, install custom add-ons, and download updates for marketplace add-ons and themes.', '/dashboard/extend', '2016-01-29 15:03:55', '2016-01-29 15:04:53', NULL, 0),
(45, '', 'Dashboard', '', '/dashboard/news', '2016-01-29 15:03:56', '2016-01-29 15:04:53', NULL, 0),
(46, '', 'Add Functionality', 'Install add-ons & themes.', '/dashboard/extend/install', '2016-01-29 15:03:57', '2016-01-29 15:04:53', NULL, 0),
(47, '', 'Update Add-Ons', 'Update your installed packages.', '/dashboard/extend/update', '2016-01-29 15:03:58', '2016-01-29 15:04:53', NULL, 0),
(48, '', 'Connect to the Community', 'Connect to the concrete5 community.', '/dashboard/extend/connect', '2016-01-29 15:03:58', '2016-01-29 15:04:54', NULL, 0),
(49, '', 'Get More Themes', 'Download themes from concrete5.org.', '/dashboard/extend/themes', '2016-01-29 15:03:59', '2016-01-29 15:04:54', NULL, 0),
(50, '', 'Get More Add-Ons', 'Download add-ons from concrete5.org.', '/dashboard/extend/add-ons', '2016-01-29 15:04:00', '2016-01-29 15:04:54', NULL, 0),
(51, '', 'System & Settings', 'Secure and setup your site.', '/dashboard/system', '2016-01-29 15:04:00', '2016-01-29 15:04:54', NULL, 0),
(53, '', 'Site Name', '', '/dashboard/system/basics/site_name', '2016-01-29 15:04:02', '2016-01-29 15:04:55', NULL, 0),
(54, '', 'Bookmark Icons', 'Bookmark icon and mobile home screen icon setup.', '/dashboard/system/basics/icons', '2016-01-29 15:04:02', '2016-01-29 15:04:55', NULL, 0),
(55, '', 'Rich Text Editor', '', '/dashboard/system/basics/editor', '2016-01-29 15:04:03', '2016-01-29 15:04:55', NULL, 0),
(56, '', 'Languages', '', '/dashboard/system/basics/multilingual', '2016-01-29 15:04:03', '2016-01-29 15:04:55', NULL, 0),
(57, '', 'Time Zone', '', '/dashboard/system/basics/timezone', '2016-01-29 15:04:04', '2016-01-29 15:04:55', NULL, 0),
(58, '', 'Interface Preferences', '', '/dashboard/system/basics/interface', '2016-01-29 15:04:04', '2016-01-29 15:04:56', NULL, 0),
(60, '', 'Pretty URLs', '', '/dashboard/system/seo/urls', '2016-01-29 15:04:06', '2016-01-29 15:04:56', NULL, 0),
(61, '', 'Bulk SEO Updater', '', '/dashboard/system/seo/bulk_seo_tool', '2016-01-29 15:04:07', '2016-01-29 15:04:56', NULL, 0),
(62, '', 'Tracking Codes', '', '/dashboard/system/seo/tracking_codes', '2016-01-29 15:04:07', '2016-01-29 15:04:56', NULL, 0),
(63, '', 'Excluded URL Word List', '', '/dashboard/system/seo/excluded', '2016-01-29 15:04:08', '2016-01-29 15:04:56', NULL, 0),
(64, '', 'Statistics', '', '/dashboard/system/seo/statistics', '2016-01-29 15:04:09', '2016-01-29 15:04:57', NULL, 0),
(65, '', 'Search Index', '', '/dashboard/system/seo/search_index', '2016-01-29 15:04:09', '2016-01-29 15:04:57', NULL, 0),
(67, '', 'Cache & Speed Settings', '', '/dashboard/system/optimization/cache', '2016-01-29 15:04:11', '2016-01-29 15:04:57', NULL, 0),
(68, '', 'Clear Cache', '', '/dashboard/system/optimization/clear_cache', '2016-01-29 15:04:11', '2016-01-29 15:04:57', NULL, 0),
(69, '', 'Automated Jobs', '', '/dashboard/system/optimization/jobs', '2016-01-29 15:04:12', '2016-01-29 15:04:57', NULL, 0),
(71, '', 'Site Access', '', '/dashboard/system/permissions/site', '2016-01-29 15:04:13', '2016-01-29 15:04:57', NULL, 0),
(72, '', 'File Manager Permissions', '', '/dashboard/system/permissions/files', '2016-01-29 15:04:13', '2016-01-29 15:04:58', NULL, 0),
(73, '', 'Allowed File Types', '', '/dashboard/system/permissions/file_types', '2016-01-29 15:04:14', '2016-01-29 15:04:58', NULL, 0),
(74, '', 'Task Permissions', '', '/dashboard/system/permissions/tasks', '2016-01-29 15:04:14', '2016-01-29 15:04:59', NULL, 0),
(77, '', 'IP Blacklist', '', '/dashboard/system/permissions/ip_blacklist', '2016-01-29 15:04:17', '2016-01-29 15:04:59', NULL, 0),
(78, '', 'Captcha Setup', '', '/dashboard/system/permissions/captcha', '2016-01-29 15:04:18', '2016-01-29 15:04:59', NULL, 0),
(79, '', 'Spam Control', '', '/dashboard/system/permissions/antispam', '2016-01-29 15:04:19', '2016-01-29 15:05:00', NULL, 0),
(80, '', 'Maintenance Mode', '', '/dashboard/system/permissions/maintenance_mode', '2016-01-29 15:04:20', '2016-01-29 15:05:00', NULL, 0),
(82, '', 'Login Destination', '', '/dashboard/system/registration/postlogin', '2016-01-29 15:04:22', '2016-01-29 15:05:01', NULL, 0),
(83, '', 'Public Profiles', '', '/dashboard/system/registration/profiles', '2016-01-29 15:04:22', '2016-01-29 15:05:01', NULL, 0),
(84, '', 'Public Registration', '', '/dashboard/system/registration/public_registration', '2016-01-29 15:04:23', '2016-01-29 15:05:02', NULL, 0),
(85, '', 'Email', 'Control how your site send and processes mail.', '/dashboard/system/mail', '2016-01-29 15:04:23', '2016-01-29 15:05:02', NULL, 0),
(86, '', 'SMTP Method', '', '/dashboard/system/mail/method', '2016-01-29 15:04:24', '2016-01-29 15:05:02', NULL, 0),
(87, '', 'Test Mail Settings', '', '/dashboard/system/mail/method/test_settings', '2016-01-29 15:04:24', '2016-01-29 15:05:02', NULL, 0),
(88, '', 'Email Importers', '', '/dashboard/system/mail/importers', '2016-01-29 15:04:25', '2016-01-29 15:05:02', NULL, 0),
(89, '', 'Attributes', 'Setup attributes for pages, users, files and more.', '/dashboard/system/attributes', '2016-01-29 15:04:25', '2016-01-29 15:05:03', NULL, 0),
(90, '', 'Sets', 'Group attributes into sets for easier organization', '/dashboard/system/attributes/sets', '2016-01-29 15:04:26', '2016-01-29 15:05:03', NULL, 0),
(91, '', 'Types', 'Choose which attribute types are available for different items.', '/dashboard/system/attributes/types', '2016-01-29 15:04:27', '2016-01-29 15:05:03', NULL, 0),
(92, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(93, '', 'Environment Information', '', '/dashboard/system/environment/info', '2016-01-29 15:04:28', '2016-01-29 15:05:03', NULL, 0),
(94, '', 'Debug Settings', '', '/dashboard/system/environment/debug', '2016-01-29 15:04:29', '2016-01-29 15:05:04', NULL, 0),
(95, '', 'Logging Settings', '', '/dashboard/system/environment/logging', '2016-01-29 15:04:29', '2016-01-29 15:05:04', NULL, 0),
(96, '', 'File Storage Locations', '', '/dashboard/system/environment/file_storage_locations', '2016-01-29 15:04:30', '2016-01-29 15:05:04', NULL, 0),
(97, '', 'Proxy Server', '', '/dashboard/system/environment/proxy', '2016-01-29 15:04:31', '2016-01-29 15:05:04', NULL, 0),
(98, '', 'Backup & Restore', 'Backup or restore your website.', '/dashboard/system/backup_restore', '2016-01-29 15:04:31', '2016-01-29 15:05:04', NULL, 0),
(100, '', 'Update concrete5', '', '/dashboard/system/backup_restore/update', '2016-01-29 15:04:33', '2016-01-29 15:05:05', NULL, 0),
(101, '', 'Database XML', '', '/dashboard/system/backup_restore/database', '2016-01-29 15:04:33', '2016-01-29 15:05:05', NULL, 0),
(106, '	Welcome to concrete5.\n						It''s easy to edit content and add pages using in-context editing. \n						 \n							Building Your Own Site\n							 Editing with concrete5 is a breeze. Just point and click to make changes. \n							 \n							 Editor''s Guide \n							  \n							Developing Applications\n							 If you’re comfortable in PHP concrete5 should be a breeze to learn. Take a few moments to understand the architecture. \n							 Developer''s Guide \n							  \n							Designing Websites\n							 Good with CSS and HTML? You can easily theme anything with concrete5. \n							 \n							 Designer''s Guide \n							  \n						\n						Business Background\n						 Worried about license structures, white-labeling or why concrete5 is a good choice for your agency? \n						 Executive''s Guide \n						  ', 'Welcome to concrete5', 'Learn about how to use concrete5, how to develop for concrete5, and get general help.', '/dashboard/welcome', '2016-01-29 15:04:35', '2016-01-29 15:05:08', NULL, 0),
(107, '', 'Customize Dashboard Home', '', '/dashboard/home', '2016-01-29 15:04:36', '2016-01-29 15:05:13', NULL, 0),
(1, 'Sidebar  Everything about concrete5 is completely customizable through the CMS. This is a separate area from the main content on the homepage. You can drag and drop blocks like this around your layout.  Welcome to concrete5!\n                                         Content Management is easy with concrete5''s in-context editing. Just login and you can change things as you browse your site. \n                                         You can watch videos and learn how to: \n                                        \n                                        Edit this page.\n                                        Add a new page.\n                                        Add some basic functionality, like a Form.\n                                        Finding & adding more functionality and themes.\n                                        \n                                         We''ve taken the liberty to build out the rest of this site with some sample content that will help you learn concrete5. Wander around a bit, or click Dashboard to get to the Sitemap and quickly delete the parts you don''t want.  YOUare the most important part of our Royal story\r\n Poemata reddit, scire velim, chartis pretium quotus arroget annus scriptor abhinc annos centum qui decidit, inter perfectos veteresque referri debet an inter vilis atque novos. Excludat iurgia finis, est vetus atque probus, centum qui perficit annos. Quid, qui deperiit minor uno mense vel anno, inter quos referendus erit. Iste quidem veteres inter ponetur honeste, qui vel mense brevi vel toto est iunior anno. Utor permisso, caudaeque pilos ut equinae paulatim vello unum, demo etiam unum, dum cadat elusus ratione ruentis acervi, qui redit in fastos et virtutem aestimat annis miraturque nihil nisi quod Libitina sacravit.  Location     Located in the heart of Scotland, our luxury hotel is ideally situated for retium Golf arroget Rambling scriptor abhinc annos centum qui decidit, inter perfectos veteresque referri debet an inter vilis atque novos. Excludat iurgia finis, est vetus atque probus, \r\n See & Do      Royal Hotel  55 Henderson St,  Bridge of Allan,   Stirlingshire FK9 4HG    T: 01786 832 284  E: info@royalhotel.co.uk    STAY & PLAY\r\nEnnius et sapines et fortis et alter Homerus, ut critici dicunt, leviter curare videtur, quo promissa cadant et somnia. Naevius in manibus non est et mentibus haeret paene recens. Adeo sanctum est vetus omne poema. ambigitur quotiens, uter utro sit prior, aufert Pacuvius docti famam senis Accius alti, dicitur Afrani toga convenisse Menandro, Plautus dicunt, leviter curare videtur, quo promissa cadant et somnia. Naevius in manibus non est et mentibuad exemplar Siculi properare epicharmi. Adeo sanctum est vetus omni. \r\n  \r\n Find Out More  JUNIPER 55\r\nEnnius et sapines et fortis et alter Homerus, ut critici dicunt, leviter curare videtur, quo promissa cadant et somnia. Naevius in manibus non est et mentibus haeret paene recens. Adeo sanctum est vetus omne poema. ambigitur quotiens, uter utro sit prior, aufert Pacuvius docti famam senis Accius alti, dicitur Afrani toga convenisse Menandro, Plautus dicunt, leviter curare videtur, quo promissa cadant et somnia. Naevius in manibus non est et mentibuad exemplar Siculi properare epicharmi. Adeo sanctum est vetus omni. \r\n  \r\n Find Out More  ROYAL WEDDINGS\r\nEnnius et sapines et fortis et alter Homerus, ut critici dicunt, leviter curare videtur, quo promissa cadant et somnia. Naevius in manibus non est et mentibus haeret paene recens. Adeo sanctum est vetus omne poema. ambigitur quotiens, uter utro sit prior, aufert Pacuvius docti famam senis Accius alti, dicitur Afrani toga convenisse Menandro, Plautus dicunt, leviter curare videtur, quo promissa cadant et somnia. Naevius in manibus non est et mentibuad exemplar Siculi properare epicharmi. Adeo sanctum est vetus omni. \r\n  \r\n Find Out More  ', 'Home', '', NULL, '2016-01-29 15:03:08', '2016-02-01 16:40:11', NULL, 0),
(128, 'Learn More\n																 Visit concrete5.org to learn more from the community and the documentation. You can also browse our marketplace for more add-ons and themes to quickly build the site you really need.  \n																 \n																Getting Help\n																 You can get free help in the forums and post for free to the jobs board.  \n																 You can also pay the concrete5 team of developers to help with any problem you run into. We offer training courses and hosting packages, just let us know how we can help.   cxxcfxdcadc  Large intro title to page\r\n Paragraph style arroget annus scriptor abhinc annos centum qui decidit, inter perfectos veteresque referri debet an inter vilis atque novos. Excludat iurgia finis, est vetus atque probus, centum qui perficit annos. Quid, qui link style uno mense vel anno, inter quos referendus erit. Veteresne poetas, an quos et praesens et postera respuat aetas. \r\n  Iste quidem veteres inter ponetur honeste, qui vel mense brevi vel toto est iunior anno. Utor permisso, caudaeque pilos ut equinae paulatim vello unum, demo etiam unum, dum cadat elusus ratione ruentis acervi, qui redit in fastos et virtutem aestimat annis. \r\nSubheading style when applied it should come in with rules above and below\r\n\r\nEnnius et sapines et fortis et alter Homerus, ut critici dicunt, leviter curare videtur, quo promissa cadant et somnia.\r\nNaevius in manibus non est et mentibus haeret paene recens. Adeo sanctum est vetus omne poema.\r\nAmbigitur quotiens, uter utro sit prior, aufert Pacuvius docti famam senis Accius alti, dicitur Afrani toga.\r\nMenandro lautus ad exemplar Siculi properare Epicharmi, vincere Caecilius gravitate, Terentius arte.\r\n\r\n Hos ediscit et hos arto stipata theatro spectat Roma potens; habet hos numeratque poetas ad nostrum tempus Livi scriptoris ab aevo. Interdum volgus rectum videt, est ubi peccat. Si veteres ita miratur laudatque poetas, ut nihil anteferat, nihil illis comparet, errat. Si quaedam nimis antique, si peraque dure dicere credit eos, ignave multa fatetur, et sapit et mecum facit et Iova iudicat aequo. \r\n Non equidem insector delendave carmina Livi esse reor, memini quae plagosum mihi parvo Orbilium dictare; sed emendata videri pulchraque et exactis minimum distantia miror. Inter quae verbum emicuit si forte decorum, et si versus paulo concinnior unus.  ', 'About', '', '/about', '2016-01-29 15:05:37', '2016-02-01 18:36:42', NULL, 0),
(131, '', 'Guestbook', '', '/about/guestbook', '2016-01-29 15:05:38', '2016-01-29 15:05:51', NULL, 0),
(132, 'Contact Us\n									 Building a form is easy to do. Learn how to add a form block.  ', 'Contact Us', '', '/about/contact-us', '2016-01-29 15:05:39', '2016-01-29 15:05:53', NULL, 0),
(129, 'Site Map ', 'Search', '', '/search', '2016-01-29 15:05:37', '2016-02-01 18:49:49', NULL, 0),
(130, 'Tags ', 'Blog', '', '/blog', '2016-01-29 15:05:38', '2016-02-01 18:50:59', NULL, 0),
(133, ' Here is some sample content! I''m writing it using composer!  ', 'Hello World', 'This is my first blog post!', '/blog/hello-world', '2016-01-29 15:05:39', '2016-01-29 15:06:01', NULL, 0),
(134, '', 'Blog Archives', '', '/blog/blog-archives', '2016-01-29 15:05:39', '2016-01-29 15:06:04', NULL, 0),
(135, '   ', 'Site Logo', NULL, '/!stacks/site-logo', '2016-01-29 16:51:45', '2016-01-29 16:57:59', NULL, 0),
(136, ' Book  ', 'Header Booking', NULL, '/!stacks/header-booking', '2016-01-29 16:51:45', '2016-01-29 18:02:26', NULL, 0),
(143, '   ', 'Footer Logo', NULL, '/!stacks/footer-logo', '2016-02-01 18:11:36', '2016-02-01 18:15:26', NULL, 0),
(144, ' Royal Hotel  55 Henderson St,  Bridge of Allan,   Stirlingshire FK9 4HG    T: 01786 832 284  E: info@royalhotel.co.uk    ', 'Footer Address', NULL, '/!stacks/footer-address', '2016-02-01 18:11:36', '2016-02-01 18:15:26', NULL, 0),
(145, '', 'Footer Menu', NULL, '/!stacks/footer-menu', '2016-02-01 18:11:37', '2016-02-01 18:15:26', NULL, 0),
(142, ' Located in the heart of Scotland, our luxury hotel is ideally situated for retium Golf arroget Rambling scriptor abhinc annos centum qui decidit, inter perfectos veteresque referri debet an inter vilis atque novos. Excludat iurgia finis, est vetus atque probus, See & Do  ', 'Map Description', NULL, '/!stacks/map-description', '2016-02-01 18:11:35', '2016-02-01 18:32:42', NULL, 0),
(137, 'STAY & PLAY\r\nEnnius et sapines et fortis et alter Homerus, ut critici dicunt, leviter curare videtur, quo promissa cadant et somnia. Naevius in manibus non est et mentibus haeret paene recens. Adeo sanctum est vetus omne poema. ambigitur quotiens, uter utro sit prior, aufert Pacuvius docti famam senis Accius alti, dicitur Afrani toga convenisse Menandro, Plautus dicunt, leviter curare videtur, quo promissa cadant et somnia. Naevius in manibus non est et mentibuad exemplar Siculi properare epicharmi. Adeo sanctum est vetus omni. \r\n  \r\n Find Out More  ', 'Body Banner01', NULL, '/!stacks/body-banner01', '2016-02-01 18:11:33', '2016-02-01 18:27:53', NULL, 0),
(138, 'JUNIPER 55\r\nEnnius et sapines et fortis et alter Homerus, ut critici dicunt, leviter curare videtur, quo promissa cadant et somnia. Naevius in manibus non est et mentibus haeret paene recens. Adeo sanctum est vetus omne poema. ambigitur quotiens, uter utro sit prior, aufert Pacuvius docti famam senis Accius alti, dicitur Afrani toga convenisse Menandro, Plautus dicunt, leviter curare videtur, quo promissa cadant et somnia. Naevius in manibus non est et mentibuad exemplar Siculi properare epicharmi. Adeo sanctum est vetus omni. \r\n  \r\n Find Out More  ', 'Body Banner02', NULL, '/!stacks/body-banner02', '2016-02-01 18:11:33', '2016-02-01 18:27:54', NULL, 0),
(139, 'ROYAL WEDDINGS\r\nEnnius et sapines et fortis et alter Homerus, ut critici dicunt, leviter curare videtur, quo promissa cadant et somnia. Naevius in manibus non est et mentibus haeret paene recens. Adeo sanctum est vetus omne poema. ambigitur quotiens, uter utro sit prior, aufert Pacuvius docti famam senis Accius alti, dicitur Afrani toga convenisse Menandro, Plautus dicunt, leviter curare videtur, quo promissa cadant et somnia. Naevius in manibus non est et mentibuad exemplar Siculi properare epicharmi. Adeo sanctum est vetus omni. \r\n  \r\n Find Out More  ', 'Body Banner03', NULL, '/!stacks/body-banner03', '2016-02-01 18:11:34', '2016-02-01 18:27:54', NULL, 0),
(140, 'Location ', 'Map Heading', NULL, '/!stacks/map-heading', '2016-02-01 18:11:34', '2016-02-01 18:30:44', NULL, 0),
(141, '   ', 'Location Map', NULL, '/!stacks/location-map', '2016-02-01 18:11:35', '2016-02-01 18:32:11', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `PageStatistics`
--

DROP TABLE IF EXISTS `PageStatistics`;
CREATE TABLE IF NOT EXISTS `PageStatistics` (
`pstID` bigint(20) unsigned NOT NULL,
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `uID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1166 ;

--
-- Dumping data for table `PageStatistics`
--

INSERT INTO `PageStatistics` (`pstID`, `cID`, `date`, `timestamp`, `uID`) VALUES
(1, 1, '2016-01-29', '2016-01-29 09:36:29', 1),
(2, 106, '2016-01-29', '2016-01-29 09:36:31', 1),
(3, 1, '2016-01-29', '2016-01-29 09:37:01', 1),
(4, 46, '2016-01-29', '2016-01-29 09:37:40', 1),
(5, 46, '2016-01-29', '2016-01-29 09:37:45', 1),
(6, 46, '2016-01-29', '2016-01-29 09:37:45', 1),
(7, 1, '2016-01-29', '2016-01-29 09:37:51', 1),
(8, 1, '2016-01-29', '2016-01-29 09:37:55', 1),
(9, 1, '2016-01-29', '2016-01-29 09:40:25', 1),
(10, 1, '2016-01-29', '2016-01-29 09:40:54', 1),
(11, 111, '2016-01-29', '2016-01-29 09:42:54', 1),
(12, 111, '2016-01-29', '2016-01-29 09:42:59', 1),
(13, 1, '2016-01-29', '2016-01-29 09:42:59', 1),
(14, 1, '2016-01-29', '2016-01-29 09:46:19', 1),
(15, 1, '2016-01-29', '2016-01-29 09:46:30', 0),
(16, 1, '2016-01-29', '2016-01-29 09:47:40', 1),
(17, 1, '2016-01-29', '2016-01-29 09:48:11', 1),
(18, 1, '2016-01-29', '2016-01-29 09:48:18', 1),
(19, 1, '2016-01-29', '2016-01-29 09:48:38', 1),
(20, 1, '2016-01-29', '2016-01-29 09:49:26', 0),
(21, 1, '2016-01-29', '2016-01-29 09:50:09', 1),
(22, 1, '2016-01-29', '2016-01-29 09:50:13', 1),
(23, 1, '2016-01-29', '2016-01-29 09:55:07', 1),
(24, 1, '2016-01-29', '2016-01-29 09:57:53', 0),
(25, 1, '2016-01-29', '2016-01-29 09:57:54', 0),
(26, 1, '2016-01-29', '2016-01-29 09:57:55', 0),
(27, 1, '2016-01-29', '2016-01-29 09:57:55', 0),
(28, 1, '2016-01-29', '2016-01-29 09:57:56', 0),
(29, 1, '2016-01-29', '2016-01-29 09:58:23', 0),
(30, 1, '2016-01-29', '2016-01-29 09:58:23', 0),
(31, 1, '2016-01-29', '2016-01-29 09:58:23', 0),
(32, 1, '2016-01-29', '2016-01-29 09:58:23', 0),
(33, 1, '2016-01-29', '2016-01-29 09:58:23', 0),
(34, 1, '2016-01-29', '2016-01-29 09:58:23', 0),
(35, 1, '2016-01-29', '2016-01-29 09:58:23', 0),
(36, 1, '2016-01-29', '2016-01-29 09:58:23', 0),
(37, 1, '2016-01-29', '2016-01-29 09:58:23', 0),
(38, 1, '2016-01-29', '2016-01-29 09:58:23', 0),
(39, 1, '2016-01-29', '2016-01-29 09:58:24', 0),
(40, 1, '2016-01-29', '2016-01-29 09:58:24', 0),
(41, 1, '2016-01-29', '2016-01-29 09:58:24', 0),
(42, 1, '2016-01-29', '2016-01-29 09:58:24', 0),
(43, 1, '2016-01-29', '2016-01-29 09:58:27', 0),
(44, 1, '2016-01-29', '2016-01-29 09:58:36', 1),
(45, 1, '2016-01-29', '2016-01-29 09:58:56', 0),
(46, 111, '2016-01-29', '2016-01-29 09:59:06', 0),
(47, 111, '2016-01-29', '2016-01-29 09:59:13', 0),
(48, 1, '2016-01-29', '2016-01-29 09:59:13', 1),
(49, 1, '2016-01-29', '2016-01-29 09:59:19', 1),
(50, 1, '2016-01-29', '2016-01-29 09:59:44', 1),
(51, 1, '2016-01-29', '2016-01-29 09:59:45', 1),
(52, 1, '2016-01-29', '2016-01-29 09:59:45', 1),
(53, 1, '2016-01-29', '2016-01-29 09:59:46', 1),
(54, 1, '2016-01-29', '2016-01-29 09:59:46', 1),
(55, 1, '2016-01-29', '2016-01-29 09:59:46', 1),
(56, 1, '2016-01-29', '2016-01-29 09:59:46', 1),
(57, 1, '2016-01-29', '2016-01-29 09:59:46', 1),
(58, 1, '2016-01-29', '2016-01-29 09:59:46', 1),
(59, 1, '2016-01-29', '2016-01-29 09:59:47', 1),
(60, 1, '2016-01-29', '2016-01-29 10:01:23', 1),
(61, 1, '2016-01-29', '2016-01-29 10:02:32', 1),
(62, 1, '2016-01-29', '2016-01-29 10:02:51', 1),
(63, 1, '2016-01-29', '2016-01-29 10:03:31', 1),
(64, 1, '2016-01-29', '2016-01-29 10:03:32', 1),
(65, 1, '2016-01-29', '2016-01-29 10:03:32', 1),
(66, 1, '2016-01-29', '2016-01-29 10:03:32', 1),
(67, 1, '2016-01-29', '2016-01-29 10:03:33', 1),
(68, 1, '2016-01-29', '2016-01-29 10:03:33', 1),
(69, 1, '2016-01-29', '2016-01-29 10:03:33', 1),
(70, 1, '2016-01-29', '2016-01-29 10:03:33', 1),
(71, 1, '2016-01-29', '2016-01-29 10:03:33', 1),
(72, 1, '2016-01-29', '2016-01-29 10:03:33', 1),
(73, 1, '2016-01-29', '2016-01-29 10:03:34', 1),
(74, 1, '2016-01-29', '2016-01-29 10:03:34', 1),
(75, 1, '2016-01-29', '2016-01-29 10:04:09', 1),
(76, 1, '2016-01-29', '2016-01-29 10:07:12', 1),
(77, 1, '2016-01-29', '2016-01-29 10:08:31', 1),
(78, 1, '2016-01-29', '2016-01-29 10:09:19', 1),
(79, 1, '2016-01-29', '2016-01-29 10:09:36', 1),
(80, 1, '2016-01-29', '2016-01-29 10:10:01', 1),
(81, 1, '2016-01-29', '2016-01-29 10:11:00', 1),
(82, 1, '2016-01-29', '2016-01-29 10:12:24', 1),
(83, 2, '2016-01-29', '2016-01-29 10:12:28', 1),
(84, 28, '2016-01-29', '2016-01-29 10:12:32', 1),
(85, 28, '2016-01-29', '2016-01-29 10:12:37', 1),
(86, 30, '2016-01-29', '2016-01-29 10:12:37', 1),
(87, 28, '2016-01-29', '2016-01-29 10:12:40', 1),
(88, 28, '2016-01-29', '2016-01-29 10:12:45', 1),
(89, 28, '2016-01-29', '2016-01-29 10:12:49', 1),
(90, 1, '2016-01-29', '2016-01-29 10:13:03', 1),
(91, 1, '2016-01-29', '2016-01-29 10:13:06', 1),
(92, 1, '2016-01-29', '2016-01-29 10:13:16', 1),
(93, 1, '2016-01-29', '2016-01-29 10:13:17', 1),
(94, 111, '2016-01-29', '2016-01-29 10:13:20', 1),
(95, 1, '2016-01-29', '2016-01-29 10:13:20', 0),
(96, 1, '2016-01-29', '2016-01-29 10:13:22', 0),
(97, 128, '2016-01-29', '2016-01-29 10:13:23', 0),
(98, 1, '2016-01-29', '2016-01-29 10:13:25', 0),
(99, 1, '2016-01-29', '2016-01-29 10:13:46', 1),
(100, 2, '2016-01-29', '2016-01-29 10:13:54', 1),
(101, 7, '2016-01-29', '2016-01-29 10:13:58', 1),
(102, 1, '2016-01-29', '2016-01-29 10:14:04', 1),
(103, 111, '2016-01-29', '2016-01-29 10:14:13', 1),
(104, 1, '2016-01-29', '2016-01-29 10:14:13', 0),
(105, 1, '2016-01-29', '2016-01-29 10:14:17', 0),
(106, 111, '2016-01-29', '2016-01-29 10:14:37', 0),
(107, 111, '2016-01-29', '2016-01-29 10:14:43', 0),
(108, 1, '2016-01-29', '2016-01-29 10:14:43', 1),
(109, 46, '2016-01-29', '2016-01-29 10:14:47', 1),
(110, 2, '2016-01-29', '2016-01-29 10:15:06', 1),
(111, 51, '2016-01-29', '2016-01-29 10:15:09', 1),
(112, 53, '2016-01-29', '2016-01-29 10:15:13', 1),
(113, 51, '2016-01-29', '2016-01-29 10:15:15', 1),
(114, 44, '2016-01-29', '2016-01-29 10:15:21', 1),
(115, 46, '2016-01-29', '2016-01-29 10:15:21', 1),
(116, 1, '2016-01-29', '2016-01-29 10:15:29', 0),
(117, 1, '2016-01-29', '2016-01-29 10:15:30', 0),
(118, 1, '2016-01-29', '2016-01-29 10:15:30', 0),
(119, 1, '2016-01-29', '2016-01-29 10:15:30', 0),
(120, 1, '2016-01-29', '2016-01-29 10:15:31', 0),
(121, 1, '2016-01-29', '2016-01-29 10:15:31', 0),
(122, 1, '2016-01-29', '2016-01-29 10:15:31', 0),
(123, 1, '2016-01-29', '2016-01-29 10:15:32', 0),
(124, 1, '2016-01-29', '2016-01-29 10:15:32', 0),
(125, 1, '2016-01-29', '2016-01-29 10:15:58', 1),
(126, 1, '2016-01-29', '2016-01-29 10:16:07', 1),
(127, 1, '2016-01-29', '2016-01-29 10:16:20', 0),
(128, 1, '2016-01-29', '2016-01-29 10:16:21', 0),
(129, 1, '2016-01-29', '2016-01-29 10:16:22', 0),
(130, 1, '2016-01-29', '2016-01-29 10:16:22', 0),
(131, 1, '2016-01-29', '2016-01-29 10:16:22', 0),
(132, 1, '2016-01-29', '2016-01-29 10:16:22', 0),
(133, 1, '2016-01-29', '2016-01-29 10:16:23', 0),
(134, 1, '2016-01-29', '2016-01-29 10:16:23', 0),
(135, 1, '2016-01-29', '2016-01-29 10:16:23', 0),
(136, 1, '2016-01-29', '2016-01-29 10:16:23', 0),
(137, 1, '2016-01-29', '2016-01-29 10:16:24', 0),
(138, 1, '2016-01-29', '2016-01-29 10:16:24', 0),
(139, 1, '2016-01-29', '2016-01-29 10:16:41', 1),
(140, 1, '2016-01-29', '2016-01-29 10:16:46', 1),
(141, 1, '2016-01-29', '2016-01-29 10:17:04', 1),
(142, 111, '2016-01-29', '2016-01-29 10:17:11', 1),
(143, 1, '2016-01-29', '2016-01-29 10:17:11', 0),
(144, 1, '2016-01-29', '2016-01-29 10:18:50', 0),
(145, 1, '2016-01-29', '2016-01-29 10:19:12', 0),
(146, 111, '2016-01-29', '2016-01-29 10:19:18', 0),
(147, 111, '2016-01-29', '2016-01-29 10:19:21', 0),
(148, 1, '2016-01-29', '2016-01-29 10:19:21', 1),
(149, 2, '2016-01-29', '2016-01-29 10:19:28', 1),
(150, 28, '2016-01-29', '2016-01-29 10:19:31', 1),
(151, 1, '2016-01-29', '2016-01-29 10:19:38', 1),
(152, 1, '2016-01-29', '2016-01-29 10:19:53', 0),
(153, 1, '2016-01-29', '2016-01-29 10:19:55', 0),
(154, 1, '2016-01-29', '2016-01-29 10:20:16', 0),
(155, 111, '2016-01-29', '2016-01-29 10:20:36', 0),
(156, 111, '2016-01-29', '2016-01-29 10:20:42', 0),
(157, 1, '2016-01-29', '2016-01-29 10:20:42', 1),
(158, 1, '2016-01-29', '2016-01-29 10:20:46', 1),
(159, 1, '2016-01-29', '2016-01-29 10:21:21', 1),
(160, 1, '2016-01-29', '2016-01-29 10:21:33', 1),
(161, 1, '2016-01-29', '2016-01-29 10:21:36', 1),
(162, 111, '2016-01-29', '2016-01-29 10:21:37', 1),
(163, 1, '2016-01-29', '2016-01-29 10:21:37', 0),
(164, 1, '2016-01-29', '2016-01-29 10:21:40', 0),
(165, 1, '2016-01-29', '2016-01-29 10:21:46', 0),
(166, 111, '2016-01-29', '2016-01-29 10:21:51', 0),
(167, 111, '2016-01-29', '2016-01-29 10:21:58', 0),
(168, 1, '2016-01-29', '2016-01-29 10:21:59', 1),
(169, 51, '2016-01-29', '2016-01-29 10:22:06', 1),
(170, 68, '2016-01-29', '2016-01-29 10:22:08', 1),
(171, 68, '2016-01-29', '2016-01-29 10:22:10', 1),
(172, 68, '2016-01-29', '2016-01-29 10:22:10', 1),
(173, 1, '2016-01-29', '2016-01-29 10:22:12', 1),
(174, 1, '2016-01-29', '2016-01-29 10:22:14', 1),
(175, 1, '2016-01-29', '2016-01-29 10:22:15', 1),
(176, 1, '2016-01-29', '2016-01-29 10:22:39', 1),
(177, 1, '2016-01-29', '2016-01-29 10:22:56', 1),
(178, 1, '2016-01-29', '2016-01-29 10:26:37', 1),
(179, 2, '2016-01-29', '2016-01-29 10:26:44', 1),
(180, 46, '2016-01-29', '2016-01-29 10:26:49', 1),
(181, 2, '2016-01-29', '2016-01-29 10:26:58', 1),
(182, 51, '2016-01-29', '2016-01-29 10:27:11', 1),
(183, 68, '2016-01-29', '2016-01-29 10:27:13', 1),
(184, 68, '2016-01-29', '2016-01-29 10:27:16', 1),
(185, 68, '2016-01-29', '2016-01-29 10:27:16', 1),
(186, 2, '2016-01-29', '2016-01-29 10:27:19', 1),
(187, 44, '2016-01-29', '2016-01-29 10:27:23', 1),
(188, 46, '2016-01-29', '2016-01-29 10:27:23', 1),
(189, 46, '2016-01-29', '2016-01-29 10:27:29', 1),
(190, 46, '2016-01-29', '2016-01-29 10:27:34', 1),
(191, 46, '2016-01-29', '2016-01-29 10:27:39', 1),
(192, 46, '2016-01-29', '2016-01-29 10:27:41', 1),
(193, 2, '2016-01-29', '2016-01-29 10:27:47', 1),
(194, 51, '2016-01-29', '2016-01-29 10:27:52', 1),
(195, 68, '2016-01-29', '2016-01-29 10:27:55', 1),
(196, 68, '2016-01-29', '2016-01-29 10:27:57', 1),
(197, 68, '2016-01-29', '2016-01-29 10:27:57', 1),
(198, 2, '2016-01-29', '2016-01-29 10:28:01', 1),
(199, 44, '2016-01-29', '2016-01-29 10:28:04', 1),
(200, 46, '2016-01-29', '2016-01-29 10:28:04', 1),
(201, 46, '2016-01-29', '2016-01-29 10:28:14', 1),
(202, 46, '2016-01-29', '2016-01-29 10:28:15', 1),
(203, 1, '2016-01-29', '2016-01-29 10:28:55', 1),
(204, 1, '2016-01-29', '2016-01-29 10:29:03', 1),
(205, 1, '2016-01-29', '2016-01-29 10:29:09', 1),
(206, 1, '2016-01-29', '2016-01-29 10:30:09', 1),
(207, 111, '2016-01-29', '2016-01-29 10:30:16', 1),
(208, 1, '2016-01-29', '2016-01-29 10:30:16', 0),
(209, 1, '2016-01-29', '2016-01-29 10:30:20', 0),
(210, 1, '2016-01-29', '2016-01-29 10:30:39', 0),
(211, 1, '2016-01-29', '2016-01-29 10:47:46', 1),
(212, 1, '2016-01-29', '2016-01-29 10:47:52', 1),
(213, 1, '2016-01-29', '2016-01-29 10:47:55', 1),
(214, 111, '2016-01-29', '2016-01-29 10:47:57', 1),
(215, 1, '2016-01-29', '2016-01-29 10:47:57', 0),
(216, 1, '2016-01-29', '2016-01-29 10:48:00', 0),
(217, 1, '2016-01-29', '2016-01-29 10:48:01', 0),
(218, 1, '2016-01-29', '2016-01-29 10:48:01', 0),
(219, 1, '2016-01-29', '2016-01-29 10:48:02', 0),
(220, 1, '2016-01-29', '2016-01-29 10:48:03', 0),
(221, 1, '2016-01-29', '2016-01-29 10:48:30', 0),
(222, 111, '2016-01-29', '2016-01-29 10:48:45', 0),
(223, 111, '2016-01-29', '2016-01-29 10:48:48', 0),
(224, 1, '2016-01-29', '2016-01-29 10:48:49', 1),
(225, 1, '2016-01-29', '2016-01-29 10:48:57', 1),
(226, 1, '2016-01-29', '2016-01-29 10:51:19', 0),
(227, 1, '2016-01-29', '2016-01-29 10:51:20', 0),
(228, 1, '2016-01-29', '2016-01-29 10:51:20', 0),
(229, 1, '2016-01-29', '2016-01-29 10:51:21', 0),
(230, 1, '2016-01-29', '2016-01-29 10:51:21', 0),
(231, 1, '2016-01-29', '2016-01-29 10:51:21', 0),
(232, 1, '2016-01-29', '2016-01-29 10:51:21', 0),
(233, 1, '2016-01-29', '2016-01-29 10:51:27', 0),
(234, 111, '2016-01-29', '2016-01-29 10:51:44', 0),
(235, 1, '2016-01-29', '2016-01-29 10:54:47', 1),
(236, 51, '2016-01-29', '2016-01-29 10:54:53', 1),
(237, 68, '2016-01-29', '2016-01-29 10:54:56', 1),
(238, 68, '2016-01-29', '2016-01-29 10:54:58', 1),
(239, 68, '2016-01-29', '2016-01-29 10:54:58', 1),
(240, 1, '2016-01-29', '2016-01-29 10:55:02', 1),
(241, 1, '2016-01-29', '2016-01-29 10:55:08', 1),
(242, 2, '2016-01-29', '2016-01-29 10:56:01', 1),
(243, 51, '2016-01-29', '2016-01-29 10:56:04', 1),
(244, 44, '2016-01-29', '2016-01-29 10:56:10', 1),
(245, 1, '2016-01-29', '2016-01-29 10:56:10', 0),
(246, 46, '2016-01-29', '2016-01-29 10:56:11', 1),
(247, 46, '2016-01-29', '2016-01-29 10:56:15', 1),
(248, 46, '2016-01-29', '2016-01-29 10:56:24', 1),
(249, 46, '2016-01-29', '2016-01-29 10:56:24', 1),
(250, 44, '2016-01-29', '2016-01-29 10:56:32', 1),
(251, 46, '2016-01-29', '2016-01-29 10:56:32', 1),
(252, 68, '2016-01-29', '2016-01-29 10:56:45', 1),
(253, 68, '2016-01-29', '2016-01-29 10:56:48', 1),
(254, 68, '2016-01-29', '2016-01-29 10:56:48', 1),
(255, 44, '2016-01-29', '2016-01-29 10:56:52', 1),
(256, 46, '2016-01-29', '2016-01-29 10:56:52', 1),
(257, 46, '2016-01-29', '2016-01-29 10:56:58', 1),
(258, 46, '2016-01-29', '2016-01-29 10:56:58', 1),
(259, 46, '2016-01-29', '2016-01-29 10:57:04', 1),
(260, 46, '2016-01-29', '2016-01-29 10:57:04', 1),
(261, 2, '2016-01-29', '2016-01-29 10:57:17', 1),
(262, 1, '2016-01-29', '2016-01-29 10:57:21', 1),
(263, 1, '2016-01-29', '2016-01-29 10:57:23', 0),
(264, 1, '2016-01-29', '2016-01-29 10:57:24', 0),
(265, 1, '2016-01-29', '2016-01-29 10:57:25', 0),
(266, 1, '2016-01-29', '2016-01-29 10:57:25', 0),
(267, 1, '2016-01-29', '2016-01-29 10:57:26', 0),
(268, 2, '2016-01-29', '2016-01-29 10:57:26', 1),
(269, 1, '2016-01-29', '2016-01-29 10:57:27', 0),
(270, 1, '2016-01-29', '2016-01-29 10:57:27', 0),
(271, 1, '2016-01-29', '2016-01-29 10:57:28', 0),
(272, 1, '2016-01-29', '2016-01-29 10:57:28', 0),
(273, 1, '2016-01-29', '2016-01-29 10:57:29', 0),
(274, 1, '2016-01-29', '2016-01-29 10:57:29', 0),
(275, 1, '2016-01-29', '2016-01-29 10:57:30', 0),
(276, 1, '2016-01-29', '2016-01-29 10:57:30', 0),
(277, 1, '2016-01-29', '2016-01-29 10:57:30', 0),
(278, 1, '2016-01-29', '2016-01-29 10:57:31', 0),
(279, 44, '2016-01-29', '2016-01-29 10:57:31', 1),
(280, 46, '2016-01-29', '2016-01-29 10:57:31', 1),
(281, 1, '2016-01-29', '2016-01-29 10:57:32', 0),
(282, 1, '2016-01-29', '2016-01-29 10:57:32', 0),
(283, 1, '2016-01-29', '2016-01-29 10:57:32', 0),
(284, 1, '2016-01-29', '2016-01-29 10:57:32', 0),
(285, 1, '2016-01-29', '2016-01-29 10:57:32', 0),
(286, 1, '2016-01-29', '2016-01-29 10:57:32', 0),
(287, 1, '2016-01-29', '2016-01-29 10:57:33', 0),
(288, 1, '2016-01-29', '2016-01-29 10:57:33', 0),
(289, 1, '2016-01-29', '2016-01-29 10:57:33', 0),
(290, 1, '2016-01-29', '2016-01-29 10:57:33', 0),
(291, 1, '2016-01-29', '2016-01-29 10:57:33', 0),
(292, 1, '2016-01-29', '2016-01-29 10:57:33', 0),
(293, 1, '2016-01-29', '2016-01-29 10:57:33', 0),
(294, 1, '2016-01-29', '2016-01-29 10:57:33', 0),
(295, 1, '2016-01-29', '2016-01-29 10:57:33', 0),
(296, 1, '2016-01-29', '2016-01-29 10:57:33', 0),
(297, 1, '2016-01-29', '2016-01-29 10:57:33', 0),
(298, 1, '2016-01-29', '2016-01-29 10:57:33', 0),
(299, 1, '2016-01-29', '2016-01-29 10:57:33', 0),
(300, 1, '2016-01-29', '2016-01-29 10:57:33', 0),
(301, 1, '2016-01-29', '2016-01-29 10:57:34', 0),
(302, 1, '2016-01-29', '2016-01-29 10:57:34', 0),
(303, 1, '2016-01-29', '2016-01-29 10:57:35', 0),
(304, 1, '2016-01-29', '2016-01-29 10:57:37', 0),
(305, 1, '2016-01-29', '2016-01-29 10:57:38', 0),
(306, 1, '2016-01-29', '2016-01-29 10:57:39', 0),
(307, 1, '2016-01-29', '2016-01-29 10:57:39', 0),
(308, 1, '2016-01-29', '2016-01-29 10:57:40', 0),
(309, 1, '2016-01-29', '2016-01-29 10:57:40', 0),
(310, 46, '2016-01-29', '2016-01-29 10:57:42', 1),
(311, 2, '2016-01-29', '2016-01-29 10:57:54', 1),
(312, 51, '2016-01-29', '2016-01-29 10:58:00', 1),
(313, 68, '2016-01-29', '2016-01-29 10:58:28', 1),
(314, 68, '2016-01-29', '2016-01-29 10:58:30', 1),
(315, 68, '2016-01-29', '2016-01-29 10:58:30', 1),
(316, 2, '2016-01-29', '2016-01-29 10:58:33', 1),
(317, 1, '2016-01-29', '2016-01-29 10:58:38', 0),
(318, 44, '2016-01-29', '2016-01-29 10:58:39', 1),
(319, 46, '2016-01-29', '2016-01-29 10:58:39', 1),
(320, 1, '2016-01-29', '2016-01-29 10:59:00', 1),
(321, 1, '2016-01-29', '2016-01-29 10:59:07', 1),
(322, 111, '2016-01-29', '2016-01-29 11:00:20', 0),
(323, 1, '2016-01-29', '2016-01-29 11:00:21', 1),
(324, 1, '2016-01-29', '2016-01-29 11:00:24', 1),
(325, 1, '2016-01-29', '2016-01-29 11:06:34', 1),
(326, 1, '2016-01-29', '2016-01-29 11:15:19', 1),
(327, 1, '2016-01-29', '2016-01-29 11:15:41', 1),
(328, 1, '2016-01-29', '2016-01-29 11:16:00', 1),
(329, 1, '2016-01-29', '2016-01-29 11:16:39', 1),
(330, 1, '2016-01-29', '2016-01-29 11:16:40', 1),
(331, 1, '2016-01-29', '2016-01-29 11:21:45', 1),
(332, 1, '2016-01-29', '2016-01-29 11:21:48', 1),
(333, 1, '2016-01-29', '2016-01-29 11:21:49', 1),
(334, 120, '2016-01-29', '2016-01-29 11:22:06', 1),
(335, 1, '2016-01-29', '2016-01-29 11:27:59', 1),
(336, 1, '2016-01-29', '2016-01-29 11:28:02', 1),
(337, 1, '2016-01-29', '2016-01-29 11:29:34', 1),
(338, 111, '2016-01-29', '2016-01-29 11:29:37', 1),
(339, 1, '2016-01-29', '2016-01-29 11:29:37', 0),
(340, 1, '2016-01-29', '2016-01-29 11:31:21', 0),
(341, 1, '2016-01-29', '2016-01-29 11:33:11', 0),
(342, 1, '2016-01-29', '2016-01-29 11:35:44', 0),
(343, 1, '2016-01-29', '2016-01-29 11:35:45', 0),
(344, 1, '2016-01-29', '2016-01-29 11:36:01', 0),
(345, 1, '2016-01-29', '2016-01-29 11:36:03', 0),
(346, 1, '2016-01-29', '2016-01-29 11:36:14', 0),
(347, 1, '2016-01-29', '2016-01-29 11:36:36', 0),
(348, 1, '2016-01-29', '2016-01-29 11:37:02', 0),
(349, 1, '2016-01-29', '2016-01-29 11:37:15', 0),
(350, 1, '2016-01-29', '2016-01-29 11:38:17', 0),
(351, 1, '2016-01-29', '2016-01-29 11:38:35', 0),
(352, 1, '2016-01-29', '2016-01-29 11:38:49', 0),
(353, 1, '2016-01-29', '2016-01-29 11:39:00', 0),
(354, 1, '2016-01-29', '2016-01-29 11:40:45', 0),
(355, 1, '2016-01-29', '2016-01-29 11:43:44', 0),
(356, 1, '2016-01-29', '2016-01-29 11:43:45', 0),
(357, 1, '2016-01-29', '2016-01-29 11:43:51', 0),
(358, 1, '2016-01-29', '2016-01-29 11:44:24', 0),
(359, 1, '2016-01-29', '2016-01-29 11:44:27', 0),
(360, 1, '2016-01-29', '2016-01-29 11:45:34', 0),
(361, 1, '2016-01-29', '2016-01-29 11:46:19', 0),
(362, 1, '2016-01-29', '2016-01-29 11:47:15', 0),
(363, 1, '2016-01-29', '2016-01-29 11:47:17', 0),
(364, 1, '2016-01-29', '2016-01-29 11:47:28', 0),
(365, 1, '2016-01-29', '2016-01-29 11:48:17', 0),
(366, 1, '2016-01-29', '2016-01-29 11:48:26', 0),
(367, 1, '2016-01-29', '2016-01-29 11:48:31', 0),
(368, 1, '2016-01-29', '2016-01-29 11:48:39', 0),
(369, 1, '2016-01-29', '2016-01-29 11:49:42', 0),
(370, 1, '2016-01-29', '2016-01-29 11:49:43', 0),
(371, 1, '2016-01-29', '2016-01-29 11:50:13', 0),
(372, 1, '2016-01-29', '2016-01-29 11:50:27', 0),
(373, 1, '2016-01-29', '2016-01-29 11:50:41', 0),
(374, 1, '2016-01-29', '2016-01-29 11:51:18', 0),
(375, 1, '2016-01-29', '2016-01-29 11:51:33', 0),
(376, 1, '2016-01-29', '2016-01-29 11:51:34', 0),
(377, 1, '2016-01-29', '2016-01-29 11:51:53', 0),
(378, 1, '2016-01-29', '2016-01-29 11:51:54', 0),
(379, 1, '2016-01-29', '2016-01-29 12:06:53', 0),
(380, 1, '2016-01-29', '2016-01-29 12:07:15', 0),
(381, 1, '2016-01-29', '2016-01-29 12:12:11', 0),
(382, 1, '2016-01-29', '2016-01-29 12:12:15', 0),
(383, 1, '2016-01-29', '2016-01-29 12:12:31', 0),
(384, 1, '2016-01-29', '2016-01-29 12:12:52', 0),
(385, 1, '2016-01-29', '2016-01-29 12:13:21', 0),
(386, 1, '2016-01-29', '2016-01-29 12:13:32', 0),
(387, 1, '2016-01-29', '2016-01-29 12:14:22', 0),
(388, 1, '2016-01-29', '2016-01-29 12:15:25', 0),
(389, 1, '2016-01-29', '2016-01-29 12:24:09', 0),
(390, 1, '2016-01-29', '2016-01-29 12:25:38', 0),
(391, 111, '2016-01-29', '2016-01-29 12:27:03', 0),
(392, 111, '2016-01-29', '2016-01-29 12:27:12', 0),
(393, 1, '2016-01-29', '2016-01-29 12:27:13', 1),
(394, 1, '2016-01-29', '2016-01-29 12:27:18', 1),
(395, 1, '2016-01-29', '2016-01-29 12:27:44', 1),
(396, 1, '2016-01-29', '2016-01-29 12:27:45', 1),
(397, 1, '2016-01-29', '2016-01-29 12:27:46', 1),
(398, 1, '2016-01-29', '2016-01-29 12:28:17', 1),
(399, 1, '2016-01-29', '2016-01-29 12:28:19', 1),
(400, 1, '2016-01-29', '2016-01-29 12:29:01', 1),
(401, 111, '2016-01-29', '2016-01-29 12:29:26', 1),
(402, 1, '2016-01-29', '2016-01-29 12:29:27', 0),
(403, 1, '2016-01-29', '2016-01-29 12:29:29', 0),
(404, 1, '2016-01-29', '2016-01-29 12:29:30', 0),
(405, 1, '2016-01-29', '2016-01-29 12:29:38', 0),
(406, 1, '2016-01-29', '2016-01-29 12:29:44', 0),
(407, 111, '2016-01-29', '2016-01-29 12:30:36', 0),
(408, 111, '2016-01-29', '2016-01-29 12:30:42', 0),
(409, 1, '2016-01-29', '2016-01-29 12:30:42', 1),
(410, 1, '2016-01-29', '2016-01-29 12:30:51', 1),
(411, 1, '2016-01-29', '2016-01-29 12:30:58', 1),
(412, 1, '2016-01-29', '2016-01-29 12:31:31', 1),
(413, 1, '2016-01-29', '2016-01-29 12:31:33', 1),
(414, 1, '2016-01-29', '2016-01-29 12:31:47', 1),
(415, 1, '2016-01-29', '2016-01-29 12:32:03', 1),
(416, 1, '2016-01-29', '2016-01-29 12:32:09', 1),
(417, 1, '2016-01-29', '2016-01-29 12:32:27', 1),
(418, 1, '2016-01-29', '2016-01-29 12:32:38', 1),
(419, 111, '2016-01-29', '2016-01-29 12:32:42', 1),
(420, 1, '2016-01-29', '2016-01-29 12:32:42', 0),
(421, 1, '2016-01-29', '2016-01-29 12:32:54', 0),
(422, 1, '2016-01-29', '2016-01-29 12:33:03', 0),
(423, 1, '2016-01-29', '2016-01-29 12:33:05', 0),
(424, 1, '2016-01-29', '2016-01-29 12:33:06', 0),
(425, 1, '2016-01-29', '2016-01-29 12:33:06', 0),
(426, 1, '2016-01-29', '2016-01-29 12:33:06', 0),
(427, 1, '2016-01-29', '2016-01-29 12:33:18', 0),
(428, 1, '2016-01-29', '2016-01-29 12:33:23', 0),
(429, 1, '2016-01-29', '2016-01-29 12:33:24', 0),
(430, 1, '2016-01-29', '2016-01-29 12:33:24', 0),
(431, 1, '2016-01-29', '2016-01-29 12:33:25', 0),
(432, 1, '2016-01-29', '2016-01-29 12:33:28', 0),
(433, 1, '2016-01-29', '2016-01-29 12:33:29', 0),
(434, 1, '2016-01-29', '2016-01-29 12:33:32', 0),
(435, 1, '2016-01-29', '2016-01-29 12:33:33', 0),
(436, 1, '2016-01-29', '2016-01-29 12:33:33', 0),
(437, 1, '2016-01-29', '2016-01-29 12:33:33', 0),
(438, 1, '2016-01-29', '2016-01-29 12:33:58', 0),
(439, 1, '2016-01-29', '2016-01-29 12:33:59', 0),
(440, 1, '2016-01-29', '2016-01-29 12:34:39', 0),
(441, 1, '2016-01-29', '2016-01-29 12:35:56', 0),
(442, 1, '2016-01-29', '2016-01-29 12:36:12', 0),
(443, 1, '2016-01-29', '2016-01-29 12:36:48', 0),
(444, 1, '2016-01-29', '2016-01-29 12:38:09', 0),
(445, 1, '2016-01-29', '2016-01-29 12:39:06', 0),
(446, 1, '2016-01-29', '2016-01-29 12:40:24', 0),
(447, 1, '2016-01-29', '2016-01-29 12:43:09', 0),
(448, 1, '2016-01-29', '2016-01-29 12:43:35', 0),
(449, 1, '2016-01-29', '2016-01-29 12:43:36', 0),
(450, 1, '2016-01-29', '2016-01-29 12:43:41', 0),
(451, 1, '2016-01-29', '2016-01-29 12:43:41', 0),
(452, 1, '2016-01-29', '2016-01-29 12:43:46', 0),
(453, 1, '2016-01-29', '2016-01-29 12:43:47', 0),
(454, 1, '2016-01-29', '2016-01-29 12:43:50', 0),
(455, 1, '2016-01-29', '2016-01-29 12:43:51', 0),
(456, 1, '2016-01-29', '2016-01-29 12:43:52', 0),
(457, 1, '2016-01-29', '2016-01-29 12:44:20', 0),
(458, 1, '2016-01-29', '2016-01-29 12:44:21', 0),
(459, 1, '2016-01-29', '2016-01-29 12:49:30', 0),
(460, 1, '2016-01-29', '2016-01-29 12:50:51', 0),
(461, 1, '2016-01-29', '2016-01-29 12:51:35', 0),
(462, 1, '2016-01-29', '2016-01-29 12:51:52', 0),
(463, 1, '2016-01-29', '2016-01-29 12:52:41', 0),
(464, 1, '2016-01-29', '2016-01-29 12:53:40', 0),
(465, 1, '2016-01-29', '2016-01-29 12:53:57', 0),
(466, 1, '2016-01-29', '2016-01-29 12:57:46', 0),
(467, 1, '2016-01-29', '2016-01-29 13:39:46', 0),
(468, 1, '2016-01-29', '2016-01-29 13:50:52', 0),
(469, 1, '2016-01-29', '2016-01-29 13:50:54', 0),
(470, 1, '2016-01-29', '2016-01-29 13:50:54', 0),
(471, 1, '2016-01-29', '2016-01-29 13:50:55', 0),
(472, 1, '2016-01-29', '2016-01-29 13:50:55', 0),
(473, 1, '2016-01-29', '2016-01-29 13:50:55', 0),
(474, 1, '2016-01-29', '2016-01-29 13:50:56', 0),
(475, 1, '2016-01-29', '2016-01-29 13:51:33', 0),
(476, 1, '2016-01-29', '2016-01-29 13:51:34', 0),
(477, 1, '2016-01-29', '2016-01-29 13:53:12', 0),
(478, 1, '2016-01-29', '2016-01-29 13:53:13', 0),
(479, 1, '2016-01-29', '2016-01-29 13:53:21', 0),
(480, 1, '2016-01-29', '2016-01-29 13:53:25', 0),
(481, 1, '2016-01-29', '2016-01-29 13:53:26', 0),
(482, 1, '2016-01-29', '2016-01-29 13:53:32', 0),
(483, 1, '2016-01-29', '2016-01-29 13:53:33', 0),
(484, 1, '2016-01-29', '2016-01-29 13:53:33', 0),
(485, 1, '2016-01-29', '2016-01-29 13:53:40', 0),
(486, 1, '2016-01-29', '2016-01-29 13:53:41', 0),
(487, 1, '2016-01-29', '2016-01-29 13:53:41', 0),
(488, 1, '2016-01-29', '2016-01-29 13:53:41', 0),
(489, 1, '2016-01-29', '2016-01-29 13:54:46', 0),
(490, 1, '2016-01-29', '2016-01-29 13:55:33', 0),
(491, 1, '2016-01-29', '2016-01-29 13:56:17', 0),
(492, 1, '2016-01-29', '2016-01-29 13:56:27', 0),
(493, 1, '2016-01-29', '2016-01-29 14:01:05', 0),
(494, 1, '2016-01-29', '2016-01-29 14:01:07', 0),
(495, 1, '2016-01-29', '2016-01-29 14:01:19', 0),
(496, 1, '2016-01-29', '2016-01-29 14:12:34', 0),
(497, 1, '2016-02-01', '2016-02-01 04:47:55', 0),
(498, 1, '2016-02-01', '2016-02-01 04:56:06', 0),
(499, 1, '2016-02-01', '2016-02-01 04:56:16', 0),
(500, 1, '2016-02-01', '2016-02-01 04:56:18', 0),
(501, 111, '2016-02-01', '2016-02-01 04:56:38', 0),
(502, 111, '2016-02-01', '2016-02-01 04:56:45', 0),
(503, 1, '2016-02-01', '2016-02-01 04:56:46', 1),
(504, 107, '2016-02-01', '2016-02-01 04:56:47', 1),
(505, 1, '2016-02-01', '2016-02-01 04:57:17', 1),
(506, 1, '2016-02-01', '2016-02-01 04:58:36', 1),
(507, 1, '2016-02-01', '2016-02-01 05:00:12', 1),
(508, 1, '2016-02-01', '2016-02-01 05:01:49', 1),
(509, 1, '2016-02-01', '2016-02-01 05:02:14', 1),
(510, 1, '2016-02-01', '2016-02-01 05:02:17', 1),
(511, 1, '2016-02-01', '2016-02-01 05:03:17', 1),
(512, 1, '2016-02-01', '2016-02-01 05:04:13', 1),
(513, 1, '2016-02-01', '2016-02-01 05:04:33', 1),
(514, 1, '2016-02-01', '2016-02-01 05:07:21', 1),
(515, 1, '2016-02-01', '2016-02-01 05:07:24', 1),
(516, 1, '2016-02-01', '2016-02-01 05:07:40', 1),
(517, 1, '2016-02-01', '2016-02-01 05:07:54', 1),
(518, 1, '2016-02-01', '2016-02-01 05:08:04', 1),
(519, 1, '2016-02-01', '2016-02-01 05:08:19', 1),
(520, 1, '2016-02-01', '2016-02-01 05:08:19', 1),
(521, 1, '2016-02-01', '2016-02-01 05:16:21', 1),
(522, 1, '2016-02-01', '2016-02-01 05:16:35', 1),
(523, 1, '2016-02-01', '2016-02-01 05:16:51', 1),
(524, 1, '2016-02-01', '2016-02-01 05:17:18', 1),
(525, 1, '2016-02-01', '2016-02-01 05:17:40', 1),
(526, 1, '2016-02-01', '2016-02-01 05:18:08', 1),
(527, 1, '2016-02-01', '2016-02-01 05:18:41', 1),
(528, 1, '2016-02-01', '2016-02-01 05:18:57', 1),
(529, 1, '2016-02-01', '2016-02-01 05:19:12', 1),
(530, 1, '2016-02-01', '2016-02-01 05:19:29', 1),
(531, 1, '2016-02-01', '2016-02-01 05:20:48', 1),
(532, 1, '2016-02-01', '2016-02-01 05:21:30', 1),
(533, 1, '2016-02-01', '2016-02-01 05:21:44', 1),
(534, 1, '2016-02-01', '2016-02-01 05:21:46', 1),
(535, 1, '2016-02-01', '2016-02-01 05:22:18', 1),
(536, 1, '2016-02-01', '2016-02-01 05:22:25', 1),
(537, 1, '2016-02-01', '2016-02-01 05:23:03', 1),
(538, 1, '2016-02-01', '2016-02-01 05:24:02', 1),
(539, 1, '2016-02-01', '2016-02-01 05:24:12', 1),
(540, 1, '2016-02-01', '2016-02-01 05:24:37', 1),
(541, 1, '2016-02-01', '2016-02-01 05:24:39', 1),
(542, 1, '2016-02-01', '2016-02-01 05:24:56', 1),
(543, 1, '2016-02-01', '2016-02-01 05:25:20', 1),
(544, 1, '2016-02-01', '2016-02-01 05:25:27', 1),
(545, 1, '2016-02-01', '2016-02-01 05:25:49', 1),
(546, 1, '2016-02-01', '2016-02-01 05:25:55', 1),
(547, 1, '2016-02-01', '2016-02-01 05:25:59', 1),
(548, 1, '2016-02-01', '2016-02-01 05:26:15', 1),
(549, 1, '2016-02-01', '2016-02-01 05:26:22', 1),
(550, 1, '2016-02-01', '2016-02-01 05:26:51', 1),
(551, 1, '2016-02-01', '2016-02-01 05:27:02', 1),
(552, 1, '2016-02-01', '2016-02-01 05:27:04', 1),
(553, 1, '2016-02-01', '2016-02-01 05:27:14', 1),
(554, 1, '2016-02-01', '2016-02-01 05:27:44', 1),
(555, 1, '2016-02-01', '2016-02-01 05:30:35', 1),
(556, 1, '2016-02-01', '2016-02-01 05:32:28', 1),
(557, 1, '2016-02-01', '2016-02-01 05:32:36', 1),
(558, 1, '2016-02-01', '2016-02-01 05:33:17', 1),
(559, 1, '2016-02-01', '2016-02-01 05:33:43', 1),
(560, 1, '2016-02-01', '2016-02-01 05:34:23', 1),
(561, 1, '2016-02-01', '2016-02-01 05:35:02', 1),
(562, 1, '2016-02-01', '2016-02-01 05:35:28', 1),
(563, 1, '2016-02-01', '2016-02-01 05:38:15', 1),
(564, 1, '2016-02-01', '2016-02-01 05:38:31', 1),
(565, 1, '2016-02-01', '2016-02-01 05:39:37', 1),
(566, 1, '2016-02-01', '2016-02-01 05:39:39', 1),
(567, 1, '2016-02-01', '2016-02-01 05:39:48', 1),
(568, 1, '2016-02-01', '2016-02-01 05:40:30', 1),
(569, 1, '2016-02-01', '2016-02-01 05:42:21', 1),
(570, 1, '2016-02-01', '2016-02-01 05:42:23', 1),
(571, 1, '2016-02-01', '2016-02-01 05:42:45', 1),
(572, 1, '2016-02-01', '2016-02-01 05:43:09', 1),
(573, 1, '2016-02-01', '2016-02-01 05:43:37', 1),
(574, 1, '2016-02-01', '2016-02-01 05:43:48', 1),
(575, 1, '2016-02-01', '2016-02-01 05:44:00', 1),
(576, 1, '2016-02-01', '2016-02-01 05:44:08', 1),
(577, 1, '2016-02-01', '2016-02-01 05:44:18', 1),
(578, 1, '2016-02-01', '2016-02-01 05:44:27', 1),
(579, 1, '2016-02-01', '2016-02-01 05:50:59', 1),
(580, 1, '2016-02-01', '2016-02-01 05:52:39', 1),
(581, 1, '2016-02-01', '2016-02-01 05:53:50', 1),
(582, 1, '2016-02-01', '2016-02-01 05:53:54', 1),
(583, 1, '2016-02-01', '2016-02-01 05:55:26', 1),
(584, 1, '2016-02-01', '2016-02-01 06:11:10', 1),
(585, 1, '2016-02-01', '2016-02-01 06:12:19', 1),
(586, 1, '2016-02-01', '2016-02-01 06:13:23', 1),
(587, 1, '2016-02-01', '2016-02-01 06:13:37', 1),
(588, 1, '2016-02-01', '2016-02-01 06:14:38', 1),
(589, 1, '2016-02-01', '2016-02-01 06:14:44', 1),
(590, 1, '2016-02-01', '2016-02-01 06:23:11', 1),
(591, 1, '2016-02-01', '2016-02-01 06:24:42', 1),
(592, 1, '2016-02-01', '2016-02-01 06:25:11', 1),
(593, 1, '2016-02-01', '2016-02-01 06:25:33', 1),
(594, 1, '2016-02-01', '2016-02-01 06:26:42', 1),
(595, 1, '2016-02-01', '2016-02-01 06:27:39', 1),
(596, 1, '2016-02-01', '2016-02-01 06:27:42', 1),
(597, 1, '2016-02-01', '2016-02-01 06:27:53', 1),
(598, 1, '2016-02-01', '2016-02-01 06:28:15', 1),
(599, 1, '2016-02-01', '2016-02-01 06:28:33', 1),
(600, 1, '2016-02-01', '2016-02-01 06:28:57', 1),
(601, 1, '2016-02-01', '2016-02-01 06:29:39', 1),
(602, 1, '2016-02-01', '2016-02-01 06:29:50', 1),
(603, 1, '2016-02-01', '2016-02-01 06:30:13', 1),
(604, 1, '2016-02-01', '2016-02-01 06:30:17', 1),
(605, 1, '2016-02-01', '2016-02-01 06:30:52', 1),
(606, 1, '2016-02-01', '2016-02-01 06:31:28', 1),
(607, 1, '2016-02-01', '2016-02-01 06:31:29', 1),
(608, 1, '2016-02-01', '2016-02-01 06:32:05', 1),
(609, 1, '2016-02-01', '2016-02-01 06:42:47', 1),
(610, 1, '2016-02-01', '2016-02-01 06:43:06', 1),
(611, 1, '2016-02-01', '2016-02-01 06:44:18', 1),
(612, 1, '2016-02-01', '2016-02-01 06:44:56', 1),
(613, 1, '2016-02-01', '2016-02-01 06:45:35', 1),
(614, 1, '2016-02-01', '2016-02-01 06:46:16', 1),
(615, 1, '2016-02-01', '2016-02-01 06:47:51', 1),
(616, 1, '2016-02-01', '2016-02-01 06:48:23', 1),
(617, 1, '2016-02-01', '2016-02-01 06:48:45', 1),
(618, 1, '2016-02-01', '2016-02-01 06:49:15', 1),
(619, 1, '2016-02-01', '2016-02-01 06:56:15', 1),
(620, 1, '2016-02-01', '2016-02-01 06:57:45', 1),
(621, 1, '2016-02-01', '2016-02-01 06:58:32', 1),
(622, 1, '2016-02-01', '2016-02-01 06:58:55', 1),
(623, 1, '2016-02-01', '2016-02-01 06:59:15', 1),
(624, 1, '2016-02-01', '2016-02-01 06:59:52', 1),
(625, 1, '2016-02-01', '2016-02-01 07:00:12', 1),
(626, 1, '2016-02-01', '2016-02-01 07:00:18', 1),
(627, 1, '2016-02-01', '2016-02-01 07:00:29', 1),
(628, 1, '2016-02-01', '2016-02-01 07:01:45', 1),
(629, 1, '2016-02-01', '2016-02-01 07:02:04', 1),
(630, 1, '2016-02-01', '2016-02-01 07:02:22', 1),
(631, 1, '2016-02-01', '2016-02-01 07:02:46', 1),
(632, 1, '2016-02-01', '2016-02-01 07:02:47', 1),
(633, 1, '2016-02-01', '2016-02-01 07:03:02', 1),
(634, 1, '2016-02-01', '2016-02-01 07:03:24', 1),
(635, 1, '2016-02-01', '2016-02-01 07:04:24', 1),
(636, 1, '2016-02-01', '2016-02-01 07:28:55', 1),
(637, 1, '2016-02-01', '2016-02-01 07:29:02', 1),
(638, 120, '2016-02-01', '2016-02-01 07:29:54', 1),
(639, 120, '2016-02-01', '2016-02-01 07:30:06', 1),
(640, 120, '2016-02-01', '2016-02-01 07:30:17', 1),
(641, 120, '2016-02-01', '2016-02-01 07:30:33', 1),
(642, 120, '2016-02-01', '2016-02-01 07:31:05', 1),
(643, 120, '2016-02-01', '2016-02-01 07:31:17', 1),
(644, 1, '2016-02-01', '2016-02-01 07:31:33', 1),
(645, 1, '2016-02-01', '2016-02-01 07:32:07', 1),
(646, 1, '2016-02-01', '2016-02-01 08:36:20', 1),
(647, 1, '2016-02-01', '2016-02-01 08:36:31', 1),
(648, 1, '2016-02-01', '2016-02-01 08:37:53', 1),
(649, 1, '2016-02-01', '2016-02-01 08:38:09', 1),
(650, 1, '2016-02-01', '2016-02-01 08:38:10', 1),
(651, 1, '2016-02-01', '2016-02-01 08:38:53', 1),
(652, 1, '2016-02-01', '2016-02-01 08:38:55', 1),
(653, 1, '2016-02-01', '2016-02-01 08:39:06', 1),
(654, 1, '2016-02-01', '2016-02-01 08:39:32', 1),
(655, 1, '2016-02-01', '2016-02-01 08:54:30', 1),
(656, 1, '2016-02-01', '2016-02-01 08:56:32', 1),
(657, 1, '2016-02-01', '2016-02-01 08:59:04', 1),
(658, 1, '2016-02-01', '2016-02-01 09:00:29', 1),
(659, 1, '2016-02-01', '2016-02-01 09:00:48', 1),
(660, 1, '2016-02-01', '2016-02-01 09:03:41', 1),
(661, 1, '2016-02-01', '2016-02-01 09:04:13', 1),
(662, 1, '2016-02-01', '2016-02-01 09:04:26', 1),
(663, 1, '2016-02-01', '2016-02-01 09:04:28', 1),
(664, 1, '2016-02-01', '2016-02-01 09:05:15', 1),
(665, 1, '2016-02-01', '2016-02-01 09:06:01', 1),
(666, 1, '2016-02-01', '2016-02-01 09:09:11', 1),
(667, 1, '2016-02-01', '2016-02-01 09:09:58', 1),
(668, 1, '2016-02-01', '2016-02-01 09:13:18', 1),
(669, 1, '2016-02-01', '2016-02-01 09:14:23', 1),
(670, 1, '2016-02-01', '2016-02-01 09:15:08', 1),
(671, 1, '2016-02-01', '2016-02-01 09:15:11', 1),
(672, 1, '2016-02-01', '2016-02-01 09:16:11', 1),
(673, 1, '2016-02-01', '2016-02-01 09:16:30', 1),
(674, 1, '2016-02-01', '2016-02-01 09:16:48', 1),
(675, 1, '2016-02-01', '2016-02-01 09:17:52', 1),
(676, 1, '2016-02-01', '2016-02-01 09:18:06', 1),
(677, 1, '2016-02-01', '2016-02-01 09:18:17', 1),
(678, 1, '2016-02-01', '2016-02-01 09:18:31', 1),
(679, 1, '2016-02-01', '2016-02-01 09:19:10', 1),
(680, 1, '2016-02-01', '2016-02-01 09:20:50', 1),
(681, 1, '2016-02-01', '2016-02-01 09:21:25', 1),
(682, 1, '2016-02-01', '2016-02-01 09:22:13', 1),
(683, 1, '2016-02-01', '2016-02-01 09:22:45', 1),
(684, 1, '2016-02-01', '2016-02-01 09:22:53', 1),
(685, 1, '2016-02-01', '2016-02-01 09:23:16', 1),
(686, 1, '2016-02-01', '2016-02-01 09:24:17', 1),
(687, 1, '2016-02-01', '2016-02-01 09:25:53', 1),
(688, 1, '2016-02-01', '2016-02-01 09:26:01', 1),
(689, 1, '2016-02-01', '2016-02-01 09:26:29', 1),
(690, 1, '2016-02-01', '2016-02-01 09:26:54', 1),
(691, 1, '2016-02-01', '2016-02-01 09:27:11', 1),
(692, 1, '2016-02-01', '2016-02-01 09:27:31', 1),
(693, 1, '2016-02-01', '2016-02-01 09:29:14', 1),
(694, 1, '2016-02-01', '2016-02-01 09:35:45', 1),
(695, 1, '2016-02-01', '2016-02-01 09:35:57', 1),
(696, 1, '2016-02-01', '2016-02-01 09:37:25', 1),
(697, 1, '2016-02-01', '2016-02-01 09:38:44', 1),
(698, 1, '2016-02-01', '2016-02-01 09:39:01', 1),
(699, 1, '2016-02-01', '2016-02-01 09:39:09', 1),
(700, 1, '2016-02-01', '2016-02-01 09:39:16', 1),
(701, 1, '2016-02-01', '2016-02-01 09:39:51', 1),
(702, 1, '2016-02-01', '2016-02-01 09:39:59', 1),
(703, 1, '2016-02-01', '2016-02-01 09:40:13', 1),
(704, 1, '2016-02-01', '2016-02-01 09:40:31', 1),
(705, 1, '2016-02-01', '2016-02-01 09:40:42', 1),
(706, 1, '2016-02-01', '2016-02-01 09:41:33', 1),
(707, 1, '2016-02-01', '2016-02-01 09:41:47', 1),
(708, 1, '2016-02-01', '2016-02-01 09:41:58', 1),
(709, 1, '2016-02-01', '2016-02-01 09:42:09', 1),
(710, 1, '2016-02-01', '2016-02-01 09:43:07', 1),
(711, 1, '2016-02-01', '2016-02-01 09:43:14', 1),
(712, 1, '2016-02-01', '2016-02-01 09:46:55', 1),
(713, 1, '2016-02-01', '2016-02-01 09:47:25', 1),
(714, 1, '2016-02-01', '2016-02-01 09:47:45', 1),
(715, 1, '2016-02-01', '2016-02-01 09:48:50', 1),
(716, 1, '2016-02-01', '2016-02-01 09:52:06', 1),
(717, 1, '2016-02-01', '2016-02-01 09:53:38', 1),
(718, 1, '2016-02-01', '2016-02-01 09:53:44', 1),
(719, 120, '2016-02-01', '2016-02-01 10:02:27', 1),
(720, 120, '2016-02-01', '2016-02-01 10:02:44', 1),
(721, 1, '2016-02-01', '2016-02-01 10:03:39', 1),
(722, 1, '2016-02-01', '2016-02-01 10:05:02', 1),
(723, 1, '2016-02-01', '2016-02-01 10:05:59', 1),
(724, 1, '2016-02-01', '2016-02-01 10:07:08', 1),
(725, 1, '2016-02-01', '2016-02-01 10:07:13', 1),
(726, 1, '2016-02-01', '2016-02-01 10:07:47', 1),
(727, 1, '2016-02-01', '2016-02-01 10:09:43', 1),
(728, 1, '2016-02-01', '2016-02-01 10:10:43', 1),
(729, 1, '2016-02-01', '2016-02-01 10:11:06', 1),
(730, 1, '2016-02-01', '2016-02-01 10:12:05', 1),
(731, 1, '2016-02-01', '2016-02-01 10:12:38', 1),
(732, 1, '2016-02-01', '2016-02-01 10:12:56', 1),
(733, 1, '2016-02-01', '2016-02-01 10:13:14', 1),
(734, 1, '2016-02-01', '2016-02-01 10:13:45', 1),
(735, 1, '2016-02-01', '2016-02-01 10:14:40', 1),
(736, 1, '2016-02-01', '2016-02-01 10:15:05', 1),
(737, 1, '2016-02-01', '2016-02-01 10:15:43', 1),
(738, 1, '2016-02-01', '2016-02-01 10:16:41', 1),
(739, 1, '2016-02-01', '2016-02-01 10:17:34', 1),
(740, 1, '2016-02-01', '2016-02-01 10:17:55', 1),
(741, 1, '2016-02-01', '2016-02-01 10:18:54', 1),
(742, 1, '2016-02-01', '2016-02-01 10:19:04', 0),
(743, 111, '2016-02-01', '2016-02-01 10:19:44', 0),
(744, 111, '2016-02-01', '2016-02-01 10:19:49', 0),
(745, 1, '2016-02-01', '2016-02-01 10:19:50', 1),
(746, 111, '2016-02-01', '2016-02-01 10:19:54', 1),
(747, 1, '2016-02-01', '2016-02-01 10:19:54', 0),
(748, 1, '2016-02-01', '2016-02-01 10:20:01', 0),
(749, 1, '2016-02-01', '2016-02-01 10:20:21', 0),
(750, 1, '2016-02-01', '2016-02-01 10:22:17', 0),
(751, 1, '2016-02-01', '2016-02-01 10:23:49', 0),
(752, 1, '2016-02-01', '2016-02-01 10:24:07', 0),
(753, 1, '2016-02-01', '2016-02-01 10:27:25', 1),
(754, 120, '2016-02-01', '2016-02-01 10:27:36', 1),
(755, 120, '2016-02-01', '2016-02-01 10:27:38', 1),
(756, 120, '2016-02-01', '2016-02-01 10:28:23', 1),
(757, 120, '2016-02-01', '2016-02-01 10:28:26', 1),
(758, 120, '2016-02-01', '2016-02-01 10:28:33', 1),
(759, 120, '2016-02-01', '2016-02-01 10:28:35', 1),
(760, 120, '2016-02-01', '2016-02-01 10:29:04', 1),
(761, 120, '2016-02-01', '2016-02-01 10:29:05', 1),
(762, 120, '2016-02-01', '2016-02-01 10:29:10', 1),
(763, 120, '2016-02-01', '2016-02-01 10:29:12', 1),
(764, 120, '2016-02-01', '2016-02-01 10:29:17', 1),
(765, 120, '2016-02-01', '2016-02-01 10:29:19', 1),
(766, 120, '2016-02-01', '2016-02-01 10:29:47', 1),
(767, 120, '2016-02-01', '2016-02-01 10:29:49', 1),
(768, 120, '2016-02-01', '2016-02-01 10:29:52', 1),
(769, 120, '2016-02-01', '2016-02-01 10:29:54', 1),
(770, 120, '2016-02-01', '2016-02-01 10:30:02', 1),
(771, 120, '2016-02-01', '2016-02-01 10:30:04', 1),
(772, 120, '2016-02-01', '2016-02-01 10:30:32', 1),
(773, 120, '2016-02-01', '2016-02-01 10:30:33', 1),
(774, 1, '2016-02-01', '2016-02-01 10:30:39', 1),
(775, 1, '2016-02-01', '2016-02-01 10:32:04', 0),
(776, 1, '2016-02-01', '2016-02-01 10:34:47', 0),
(777, 1, '2016-02-01', '2016-02-01 10:35:18', 0),
(778, 1, '2016-02-01', '2016-02-01 10:35:55', 0),
(779, 1, '2016-02-01', '2016-02-01 10:36:07', 0),
(780, 1, '2016-02-01', '2016-02-01 10:36:23', 0),
(781, 1, '2016-02-01', '2016-02-01 10:36:34', 0),
(782, 1, '2016-02-01', '2016-02-01 10:36:46', 0),
(783, 1, '2016-02-01', '2016-02-01 10:37:08', 0),
(784, 1, '2016-02-01', '2016-02-01 10:37:30', 0),
(785, 1, '2016-02-01', '2016-02-01 10:38:06', 0),
(786, 1, '2016-02-01', '2016-02-01 10:38:47', 0),
(787, 1, '2016-02-01', '2016-02-01 10:39:18', 0),
(788, 1, '2016-02-01', '2016-02-01 10:39:35', 0),
(789, 1, '2016-02-01', '2016-02-01 10:39:59', 0),
(790, 1, '2016-02-01', '2016-02-01 10:40:16', 0),
(791, 1, '2016-02-01', '2016-02-01 10:40:40', 0),
(792, 1, '2016-02-01', '2016-02-01 10:41:27', 0),
(793, 1, '2016-02-01', '2016-02-01 10:44:42', 0),
(794, 1, '2016-02-01', '2016-02-01 10:46:08', 1),
(795, 120, '2016-02-01', '2016-02-01 10:46:12', 1),
(796, 120, '2016-02-01', '2016-02-01 10:46:14', 1),
(797, 120, '2016-02-01', '2016-02-01 10:46:37', 1),
(798, 120, '2016-02-01', '2016-02-01 10:46:38', 1),
(799, 1, '2016-02-01', '2016-02-01 10:46:45', 1),
(800, 1, '2016-02-01', '2016-02-01 10:47:30', 0),
(801, 1, '2016-02-01', '2016-02-01 10:48:06', 0),
(802, 1, '2016-02-01', '2016-02-01 10:49:06', 0),
(803, 1, '2016-02-01', '2016-02-01 10:49:45', 0),
(804, 1, '2016-02-01', '2016-02-01 10:50:19', 0),
(805, 1, '2016-02-01', '2016-02-01 10:51:07', 0),
(806, 1, '2016-02-01', '2016-02-01 10:51:30', 0),
(807, 1, '2016-02-01', '2016-02-01 10:53:39', 0),
(808, 1, '2016-02-01', '2016-02-01 10:54:01', 1),
(809, 120, '2016-02-01', '2016-02-01 10:54:07', 1),
(810, 120, '2016-02-01', '2016-02-01 10:54:09', 1),
(811, 120, '2016-02-01', '2016-02-01 10:54:13', 1),
(812, 120, '2016-02-01', '2016-02-01 10:54:14', 1),
(813, 120, '2016-02-01', '2016-02-01 10:54:20', 1),
(814, 120, '2016-02-01', '2016-02-01 10:54:21', 1),
(815, 120, '2016-02-01', '2016-02-01 10:54:25', 1),
(816, 120, '2016-02-01', '2016-02-01 10:54:26', 1),
(817, 120, '2016-02-01', '2016-02-01 10:54:28', 1),
(818, 120, '2016-02-01', '2016-02-01 10:54:30', 1),
(819, 120, '2016-02-01', '2016-02-01 10:54:33', 1),
(820, 120, '2016-02-01', '2016-02-01 10:54:34', 1),
(821, 1, '2016-02-01', '2016-02-01 10:54:40', 1),
(822, 1, '2016-02-01', '2016-02-01 10:54:47', 0),
(823, 1, '2016-02-01', '2016-02-01 10:55:28', 0),
(824, 1, '2016-02-01', '2016-02-01 11:00:25', 0),
(825, 130, '2016-02-01', '2016-02-01 11:01:00', 0),
(826, 1, '2016-02-01', '2016-02-01 11:01:04', 0),
(827, 1, '2016-02-01', '2016-02-01 11:02:42', 0),
(828, 1, '2016-02-01', '2016-02-01 11:02:58', 0),
(829, 1, '2016-02-01', '2016-02-01 11:03:18', 0),
(830, 1, '2016-02-01', '2016-02-01 11:03:56', 0),
(831, 1, '2016-02-01', '2016-02-01 11:04:14', 0),
(832, 1, '2016-02-01', '2016-02-01 11:04:42', 0),
(833, 1, '2016-02-01', '2016-02-01 11:04:50', 0),
(834, 1, '2016-02-01', '2016-02-01 11:05:56', 0),
(835, 1, '2016-02-01', '2016-02-01 11:06:17', 0),
(836, 1, '2016-02-01', '2016-02-01 11:09:38', 1),
(837, 1, '2016-02-01', '2016-02-01 11:10:10', 1),
(838, 1, '2016-02-01', '2016-02-01 11:10:14', 0),
(839, 1, '2016-02-01', '2016-02-01 11:11:54', 0),
(840, 1, '2016-02-01', '2016-02-01 11:12:56', 0),
(841, 1, '2016-02-01', '2016-02-01 11:13:11', 1),
(842, 1, '2016-02-01', '2016-02-01 11:17:35', 1),
(843, 1, '2016-02-01', '2016-02-01 11:18:11', 1),
(844, 1, '2016-02-01', '2016-02-01 11:18:18', 1),
(845, 1, '2016-02-01', '2016-02-01 11:18:48', 1),
(846, 1, '2016-02-01', '2016-02-01 11:18:50', 1),
(847, 1, '2016-02-01', '2016-02-01 11:19:11', 1),
(848, 1, '2016-02-01', '2016-02-01 11:19:13', 1),
(849, 1, '2016-02-01', '2016-02-01 11:19:15', 0),
(850, 1, '2016-02-01', '2016-02-01 11:19:17', 0),
(851, 1, '2016-02-01', '2016-02-01 11:19:55', 0),
(852, 1, '2016-02-01', '2016-02-01 11:19:56', 0),
(853, 1, '2016-02-01', '2016-02-01 11:20:08', 1),
(854, 1, '2016-02-01', '2016-02-01 11:20:11', 1),
(855, 1, '2016-02-01', '2016-02-01 11:20:12', 1),
(856, 1, '2016-02-01', '2016-02-01 11:20:12', 1),
(857, 1, '2016-02-01', '2016-02-01 11:20:12', 1),
(858, 1, '2016-02-01', '2016-02-01 11:20:12', 1),
(859, 1, '2016-02-01', '2016-02-01 11:20:13', 1),
(860, 1, '2016-02-01', '2016-02-01 11:20:13', 1),
(861, 1, '2016-02-01', '2016-02-01 11:20:13', 1),
(862, 1, '2016-02-01', '2016-02-01 11:20:13', 1),
(863, 1, '2016-02-01', '2016-02-01 11:20:13', 1),
(864, 1, '2016-02-01', '2016-02-01 11:20:13', 1),
(865, 1, '2016-02-01', '2016-02-01 11:20:13', 1),
(866, 1, '2016-02-01', '2016-02-01 11:20:13', 1),
(867, 1, '2016-02-01', '2016-02-01 11:20:13', 1),
(868, 1, '2016-02-01', '2016-02-01 11:20:13', 1),
(869, 1, '2016-02-01', '2016-02-01 11:20:13', 1),
(870, 1, '2016-02-01', '2016-02-01 11:20:13', 1),
(871, 1, '2016-02-01', '2016-02-01 11:20:13', 1),
(872, 1, '2016-02-01', '2016-02-01 11:20:13', 1),
(873, 1, '2016-02-01', '2016-02-01 11:20:13', 1),
(874, 1, '2016-02-01', '2016-02-01 11:20:13', 1),
(875, 1, '2016-02-01', '2016-02-01 11:20:13', 1),
(876, 1, '2016-02-01', '2016-02-01 11:20:13', 1),
(877, 1, '2016-02-01', '2016-02-01 11:20:14', 1),
(878, 1, '2016-02-01', '2016-02-01 11:20:14', 1),
(879, 1, '2016-02-01', '2016-02-01 11:20:14', 1),
(880, 1, '2016-02-01', '2016-02-01 11:20:14', 1),
(881, 1, '2016-02-01', '2016-02-01 11:20:14', 1),
(882, 1, '2016-02-01', '2016-02-01 11:20:14', 1),
(883, 1, '2016-02-01', '2016-02-01 11:20:14', 1),
(884, 1, '2016-02-01', '2016-02-01 11:20:14', 1),
(885, 1, '2016-02-01', '2016-02-01 11:20:14', 1),
(886, 1, '2016-02-01', '2016-02-01 11:20:14', 1),
(887, 1, '2016-02-01', '2016-02-01 11:20:14', 1),
(888, 1, '2016-02-01', '2016-02-01 11:20:14', 1),
(889, 1, '2016-02-01', '2016-02-01 11:20:16', 1),
(890, 1, '2016-02-01', '2016-02-01 11:25:32', 1),
(891, 1, '2016-02-01', '2016-02-01 11:30:59', 1),
(892, 1, '2016-02-01', '2016-02-01 11:34:18', 1),
(893, 1, '2016-02-01', '2016-02-01 11:34:35', 1),
(894, 1, '2016-02-01', '2016-02-01 11:34:53', 1),
(895, 1, '2016-02-01', '2016-02-01 11:35:09', 1),
(896, 1, '2016-02-01', '2016-02-01 11:35:42', 1),
(897, 1, '2016-02-01', '2016-02-01 11:36:29', 1),
(898, 1, '2016-02-01', '2016-02-01 11:39:03', 0),
(899, 1, '2016-02-01', '2016-02-01 11:39:06', 0),
(900, 1, '2016-02-01', '2016-02-01 11:39:09', 1),
(901, 1, '2016-02-01', '2016-02-01 11:40:30', 1),
(902, 1, '2016-02-01', '2016-02-01 11:42:04', 1),
(903, 1, '2016-02-01', '2016-02-01 11:42:27', 1),
(904, 1, '2016-02-01', '2016-02-01 11:42:30', 1),
(905, 1, '2016-02-01', '2016-02-01 11:42:32', 1),
(906, 1, '2016-02-01', '2016-02-01 11:43:57', 0),
(907, 1, '2016-02-01', '2016-02-01 11:44:22', 0),
(908, 1, '2016-02-01', '2016-02-01 11:44:33', 0),
(909, 1, '2016-02-01', '2016-02-01 11:59:08', 0),
(910, 1, '2016-02-01', '2016-02-01 12:02:20', 1),
(911, 1, '2016-02-01', '2016-02-01 12:02:32', 1),
(912, 1, '2016-02-01', '2016-02-01 12:02:34', 1),
(913, 1, '2016-02-01', '2016-02-01 12:02:56', 1),
(914, 1, '2016-02-01', '2016-02-01 12:03:17', 1),
(915, 1, '2016-02-01', '2016-02-01 12:03:24', 1),
(916, 1, '2016-02-01', '2016-02-01 12:03:43', 1),
(917, 1, '2016-02-01', '2016-02-01 12:03:56', 1),
(918, 1, '2016-02-01', '2016-02-01 12:04:07', 1),
(919, 1, '2016-02-01', '2016-02-01 12:05:03', 1),
(920, 1, '2016-02-01', '2016-02-01 12:05:09', 0),
(921, 1, '2016-02-01', '2016-02-01 12:17:01', 0),
(922, 1, '2016-02-01', '2016-02-01 12:17:19', 0),
(923, 1, '2016-02-01', '2016-02-01 12:22:47', 0),
(924, 1, '2016-02-01', '2016-02-01 12:22:59', 0),
(925, 1, '2016-02-01', '2016-02-01 12:23:15', 0),
(926, 1, '2016-02-01', '2016-02-01 12:23:47', 0),
(927, 1, '2016-02-01', '2016-02-01 12:24:25', 0),
(928, 1, '2016-02-01', '2016-02-01 12:24:45', 0),
(929, 1, '2016-02-01', '2016-02-01 12:25:30', 0),
(930, 1, '2016-02-01', '2016-02-01 12:26:10', 0),
(931, 1, '2016-02-01', '2016-02-01 12:26:23', 0),
(932, 1, '2016-02-01', '2016-02-01 12:26:47', 0),
(933, 1, '2016-02-01', '2016-02-01 12:27:27', 0),
(934, 1, '2016-02-01', '2016-02-01 12:27:44', 0),
(935, 129, '2016-02-01', '2016-02-01 12:28:10', 0),
(936, 1, '2016-02-01', '2016-02-01 12:28:14', 0),
(937, 129, '2016-02-01', '2016-02-01 12:28:19', 0),
(938, 1, '2016-02-01', '2016-02-01 12:28:21', 0),
(939, 129, '2016-02-01', '2016-02-01 12:28:22', 0),
(940, 1, '2016-02-01', '2016-02-01 12:28:24', 0),
(941, 128, '2016-02-01', '2016-02-01 12:32:20', 0),
(942, 1, '2016-02-01', '2016-02-01 12:33:07', 1),
(943, 128, '2016-02-01', '2016-02-01 12:33:11', 1),
(944, 128, '2016-02-01', '2016-02-01 12:33:13', 1),
(945, 128, '2016-02-01', '2016-02-01 12:33:55', 1),
(946, 128, '2016-02-01', '2016-02-01 12:34:00', 1),
(947, 128, '2016-02-01', '2016-02-01 12:34:04', 1),
(948, 128, '2016-02-01', '2016-02-01 12:34:08', 1),
(949, 128, '2016-02-01', '2016-02-01 12:34:33', 1),
(950, 128, '2016-02-01', '2016-02-01 12:34:34', 1),
(951, 128, '2016-02-01', '2016-02-01 12:34:35', 1),
(952, 40, '2016-02-01', '2016-02-01 12:34:51', 1),
(953, 1, '2016-02-01', '2016-02-01 12:34:56', 1),
(954, 128, '2016-02-01', '2016-02-01 12:35:01', 1),
(955, 128, '2016-02-01', '2016-02-01 12:36:26', 1),
(956, 128, '2016-02-01', '2016-02-01 12:36:50', 0),
(957, 128, '2016-02-01', '2016-02-01 12:38:02', 0),
(958, 128, '2016-02-01', '2016-02-01 12:38:05', 0),
(959, 128, '2016-02-01', '2016-02-01 12:38:06', 0),
(960, 128, '2016-02-01', '2016-02-01 12:38:18', 1),
(961, 128, '2016-02-01', '2016-02-01 12:38:29', 1),
(962, 128, '2016-02-01', '2016-02-01 12:38:37', 1),
(963, 128, '2016-02-01', '2016-02-01 12:38:40', 0),
(964, 128, '2016-02-01', '2016-02-01 12:38:53', 1),
(965, 128, '2016-02-01', '2016-02-01 12:41:33', 0),
(966, 1, '2016-02-01', '2016-02-01 12:41:43', 0),
(967, 128, '2016-02-01', '2016-02-01 12:41:58', 0),
(968, 128, '2016-02-01', '2016-02-01 12:42:01', 0),
(969, 128, '2016-02-01', '2016-02-01 12:42:02', 0),
(970, 129, '2016-02-01', '2016-02-01 12:42:07', 0),
(971, 129, '2016-02-01', '2016-02-01 12:42:11', 0),
(972, 1, '2016-02-01', '2016-02-01 12:42:35', 0),
(973, 1, '2016-02-01', '2016-02-01 12:42:40', 0),
(974, 128, '2016-02-01', '2016-02-01 12:42:53', 1),
(975, 120, '2016-02-01', '2016-02-01 12:44:54', 1),
(976, 120, '2016-02-01', '2016-02-01 12:44:59', 1),
(977, 120, '2016-02-01', '2016-02-01 12:45:01', 1),
(978, 120, '2016-02-01', '2016-02-01 12:45:01', 1),
(979, 128, '2016-02-01', '2016-02-01 12:45:27', 1),
(980, 128, '2016-02-01', '2016-02-01 12:45:38', 1),
(981, 128, '2016-02-01', '2016-02-01 12:49:05', 1),
(982, 128, '2016-02-01', '2016-02-01 12:49:12', 1),
(983, 128, '2016-02-01', '2016-02-01 12:49:42', 1),
(984, 128, '2016-02-01', '2016-02-01 12:49:50', 1),
(985, 128, '2016-02-01', '2016-02-01 12:52:27', 0),
(986, 128, '2016-02-01', '2016-02-01 12:53:47', 0),
(987, 128, '2016-02-01', '2016-02-01 12:54:22', 0),
(988, 128, '2016-02-01', '2016-02-01 12:54:26', 0),
(989, 128, '2016-02-01', '2016-02-01 12:54:40', 0),
(990, 128, '2016-02-01', '2016-02-01 12:54:46', 1),
(991, 128, '2016-02-01', '2016-02-01 12:55:18', 1),
(992, 128, '2016-02-01', '2016-02-01 12:56:11', 1),
(993, 128, '2016-02-01', '2016-02-01 12:56:17', 1),
(994, 128, '2016-02-01', '2016-02-01 12:57:55', 1),
(995, 128, '2016-02-01', '2016-02-01 12:58:04', 1),
(996, 128, '2016-02-01', '2016-02-01 12:58:20', 1),
(997, 128, '2016-02-01', '2016-02-01 12:58:28', 0),
(998, 1, '2016-02-01', '2016-02-01 12:58:39', 0),
(999, 128, '2016-02-01', '2016-02-01 12:58:53', 0),
(1000, 128, '2016-02-01', '2016-02-01 12:59:41', 1),
(1001, 128, '2016-02-01', '2016-02-01 13:00:46', 1),
(1002, 128, '2016-02-01', '2016-02-01 13:00:50', 1),
(1003, 128, '2016-02-01', '2016-02-01 13:00:55', 1),
(1004, 128, '2016-02-01', '2016-02-01 13:01:00', 0),
(1005, 128, '2016-02-01', '2016-02-01 13:01:06', 0),
(1006, 128, '2016-02-01', '2016-02-01 13:01:24', 1),
(1007, 128, '2016-02-01', '2016-02-01 13:02:11', 1),
(1008, 128, '2016-02-01', '2016-02-01 13:02:16', 1),
(1009, 128, '2016-02-01', '2016-02-01 13:02:42', 1),
(1010, 128, '2016-02-01', '2016-02-01 13:02:54', 0),
(1011, 128, '2016-02-01', '2016-02-01 13:03:39', 1),
(1012, 128, '2016-02-01', '2016-02-01 13:03:42', 1),
(1013, 128, '2016-02-01', '2016-02-01 13:03:46', 1),
(1014, 128, '2016-02-01', '2016-02-01 13:06:41', 1),
(1015, 128, '2016-02-01', '2016-02-01 13:06:59', 1),
(1016, 128, '2016-02-01', '2016-02-01 13:07:40', 0),
(1017, 128, '2016-02-01', '2016-02-01 13:08:36', 0),
(1018, 128, '2016-02-01', '2016-02-01 13:08:54', 0),
(1019, 128, '2016-02-01', '2016-02-01 13:09:57', 0),
(1020, 128, '2016-02-01', '2016-02-01 13:10:44', 0),
(1021, 128, '2016-02-01', '2016-02-01 13:11:51', 0),
(1022, 128, '2016-02-01', '2016-02-01 13:12:13', 1),
(1023, 128, '2016-02-01', '2016-02-01 13:12:36', 1),
(1024, 128, '2016-02-01', '2016-02-01 13:12:54', 0),
(1025, 128, '2016-02-01', '2016-02-01 13:14:57', 0),
(1026, 128, '2016-02-01', '2016-02-01 13:15:05', 0),
(1027, 128, '2016-02-01', '2016-02-01 13:15:19', 0),
(1028, 128, '2016-02-01', '2016-02-01 13:15:37', 0),
(1029, 128, '2016-02-01', '2016-02-01 13:15:44', 0),
(1030, 128, '2016-02-01', '2016-02-01 13:15:51', 0),
(1031, 128, '2016-02-01', '2016-02-01 13:15:58', 0),
(1032, 128, '2016-02-01', '2016-02-01 13:16:11', 0);
INSERT INTO `PageStatistics` (`pstID`, `cID`, `date`, `timestamp`, `uID`) VALUES
(1033, 128, '2016-02-01', '2016-02-01 13:16:23', 0),
(1034, 128, '2016-02-01', '2016-02-01 13:16:42', 0),
(1035, 1, '2016-02-01', '2016-02-01 13:17:01', 0),
(1036, 129, '2016-02-01', '2016-02-01 13:17:14', 0),
(1037, 129, '2016-02-01', '2016-02-01 13:17:27', 1),
(1038, 129, '2016-02-01', '2016-02-01 13:17:29', 1),
(1039, 129, '2016-02-01', '2016-02-01 13:19:47', 1),
(1040, 130, '2016-02-01', '2016-02-01 13:19:56', 1),
(1041, 130, '2016-02-01', '2016-02-01 13:20:11', 1),
(1042, 130, '2016-02-01', '2016-02-01 13:20:55', 1),
(1043, 129, '2016-02-01', '2016-02-01 13:21:07', 0),
(1044, 129, '2016-02-01', '2016-02-01 13:21:15', 0),
(1045, 128, '2016-02-01', '2016-02-01 13:21:18', 0),
(1046, 1, '2016-02-01', '2016-02-01 13:21:26', 0),
(1047, 1, '2016-02-01', '2016-02-01 13:33:46', 0),
(1048, 1, '2016-02-01', '2016-02-01 13:35:17', 0),
(1049, 1, '2016-02-01', '2016-02-01 13:35:42', 0),
(1050, 1, '2016-02-01', '2016-02-01 13:35:49', 0),
(1051, 1, '2016-02-01', '2016-02-01 13:36:05', 0),
(1052, 1, '2016-02-01', '2016-02-01 13:36:32', 0),
(1053, 130, '2016-02-01', '2016-02-01 13:40:09', 1),
(1054, 130, '2016-02-01', '2016-02-01 13:41:42', 1),
(1055, 130, '2016-02-01', '2016-02-01 13:41:44', 1),
(1056, 130, '2016-02-01', '2016-02-01 13:41:47', 1),
(1057, 130, '2016-02-01', '2016-02-01 13:41:50', 1),
(1058, 130, '2016-02-01', '2016-02-01 13:41:54', 1),
(1059, 130, '2016-02-01', '2016-02-01 13:41:57', 1),
(1060, 130, '2016-02-01', '2016-02-01 13:42:01', 1),
(1061, 130, '2016-02-01', '2016-02-01 13:42:04', 1),
(1062, 130, '2016-02-01', '2016-02-01 13:42:05', 1),
(1063, 130, '2016-02-01', '2016-02-01 13:42:09', 1),
(1064, 130, '2016-02-01', '2016-02-01 13:42:18', 1),
(1065, 130, '2016-02-01', '2016-02-01 13:42:21', 1),
(1066, 130, '2016-02-01', '2016-02-01 13:42:34', 1),
(1067, 130, '2016-02-01', '2016-02-01 13:42:37', 1),
(1068, 130, '2016-02-01', '2016-02-01 13:42:52', 1),
(1069, 130, '2016-02-01', '2016-02-01 13:42:59', 1),
(1070, 130, '2016-02-01', '2016-02-01 13:43:02', 1),
(1071, 130, '2016-02-01', '2016-02-01 13:43:08', 1),
(1072, 130, '2016-02-01', '2016-02-01 13:43:11', 1),
(1073, 130, '2016-02-01', '2016-02-01 13:43:14', 1),
(1074, 130, '2016-02-01', '2016-02-01 13:43:16', 1),
(1075, 130, '2016-02-01', '2016-02-01 13:43:17', 1),
(1076, 130, '2016-02-01', '2016-02-01 13:43:18', 1),
(1077, 130, '2016-02-01', '2016-02-01 13:43:19', 1),
(1078, 130, '2016-02-01', '2016-02-01 13:43:30', 1),
(1079, 130, '2016-02-01', '2016-02-01 13:43:31', 1),
(1080, 130, '2016-02-01', '2016-02-01 13:43:32', 1),
(1081, 130, '2016-02-01', '2016-02-01 13:43:32', 1),
(1082, 130, '2016-02-01', '2016-02-01 13:43:33', 1),
(1083, 130, '2016-02-01', '2016-02-01 13:43:34', 1),
(1084, 130, '2016-02-01', '2016-02-01 13:43:34', 1),
(1085, 130, '2016-02-01', '2016-02-01 13:43:35', 1),
(1086, 130, '2016-02-01', '2016-02-01 13:43:36', 1),
(1087, 130, '2016-02-01', '2016-02-01 13:43:36', 1),
(1088, 130, '2016-02-01', '2016-02-01 13:43:37', 1),
(1089, 130, '2016-02-01', '2016-02-01 13:44:17', 1),
(1090, 130, '2016-02-01', '2016-02-01 13:44:26', 1),
(1091, 130, '2016-02-01', '2016-02-01 13:44:31', 1),
(1092, 130, '2016-02-01', '2016-02-01 13:49:03', 1),
(1093, 130, '2016-02-01', '2016-02-01 13:49:13', 1),
(1094, 130, '2016-02-01', '2016-02-01 13:52:32', 1),
(1095, 1, '2016-02-01', '2016-02-01 13:52:41', 1),
(1096, 1, '2016-02-01', '2016-02-01 13:52:59', 1),
(1097, 1, '2016-02-01', '2016-02-01 13:53:43', 1),
(1098, 1, '2016-02-01', '2016-02-01 13:53:48', 1),
(1099, 1, '2016-02-01', '2016-02-01 13:54:23', 1),
(1100, 1, '2016-02-01', '2016-02-01 13:54:34', 1),
(1101, 1, '2016-02-01', '2016-02-01 13:54:43', 0),
(1102, 1, '2016-02-01', '2016-02-01 14:01:21', 0),
(1103, 128, '2016-02-01', '2016-02-01 14:01:51', 0),
(1104, 111, '2016-02-01', '2016-02-01 14:11:56', 0),
(1105, 111, '2016-02-01', '2016-02-01 14:12:10', 0),
(1106, 1, '2016-02-01', '2016-02-01 14:12:14', 1),
(1107, 1, '2016-02-01', '2016-02-01 14:14:25', 1),
(1108, 128, '2016-02-01', '2016-02-01 14:14:35', 1),
(1109, 2, '2016-02-01', '2016-02-01 14:15:32', 1),
(1110, 28, '2016-02-01', '2016-02-01 14:15:38', 1),
(1111, 1, '2016-02-01', '2016-02-01 14:16:12', 0),
(1112, 1, '2016-02-01', '2016-02-01 14:17:34', 0),
(1113, 128, '2016-02-01', '2016-02-01 14:17:41', 0),
(1114, 1, '2016-02-01', '2016-02-01 14:18:36', 0),
(1115, 1, '2016-02-02', '2016-02-02 05:06:03', 0),
(1116, 111, '2016-02-02', '2016-02-02 05:06:37', 0),
(1117, 1, '2016-02-02', '2016-02-02 06:13:31', 0),
(1118, 1, '2016-02-02', '2016-02-02 06:13:43', 0),
(1119, 1, '2016-02-02', '2016-02-02 06:13:43', 0),
(1120, 1, '2016-02-02', '2016-02-02 06:13:48', 0),
(1121, 1, '2016-02-02', '2016-02-02 06:13:52', 0),
(1122, 1, '2016-02-02', '2016-02-02 06:14:09', 0),
(1123, 1, '2016-02-02', '2016-02-02 06:14:22', 0),
(1124, 1, '2016-02-02', '2016-02-02 06:14:36', 0),
(1125, 1, '2016-02-02', '2016-02-02 07:04:36', 0),
(1126, 1, '2016-02-02', '2016-02-02 07:13:46', 0),
(1127, 1, '2016-02-02', '2016-02-02 07:15:04', 0),
(1128, 1, '2016-02-02', '2016-02-02 07:15:25', 0),
(1129, 1, '2016-02-02', '2016-02-02 07:19:16', 0),
(1130, 1, '2016-02-02', '2016-02-02 08:54:00', 0),
(1131, 128, '2016-02-02', '2016-02-02 08:54:32', 0),
(1132, 129, '2016-02-02', '2016-02-02 08:54:43', 0),
(1133, 130, '2016-02-02', '2016-02-02 08:54:50', 0),
(1134, 1, '2016-02-02', '2016-02-02 08:56:08', 0),
(1135, 128, '2016-02-02', '2016-02-02 08:56:11', 0),
(1136, 129, '2016-02-02', '2016-02-02 08:56:26', 0),
(1137, 130, '2016-02-02', '2016-02-02 08:56:29', 0),
(1138, 130, '2016-02-02', '2016-02-02 08:59:47', 0),
(1139, 1, '2016-02-02', '2016-02-02 08:59:54', 0),
(1140, 1, '2016-02-02', '2016-02-02 08:59:59', 0),
(1141, 128, '2016-02-02', '2016-02-02 09:01:49', 0),
(1142, 1, '2016-02-02', '2016-02-02 09:15:23', 0),
(1143, 1, '2016-02-02', '2016-02-02 09:15:24', 0),
(1144, 1, '2016-02-02', '2016-02-02 09:16:23', 0),
(1145, 1, '2016-02-02', '2016-02-02 09:16:43', 0),
(1146, 1, '2016-02-02', '2016-02-02 09:20:54', 0),
(1147, 1, '2016-02-02', '2016-02-02 09:23:19', 0),
(1148, 1, '2016-02-02', '2016-02-02 09:28:33', 0),
(1149, 1, '2016-02-02', '2016-02-02 09:39:31', 0),
(1150, 1, '2016-02-02', '2016-02-02 09:42:51', 0),
(1151, 1, '2016-02-02', '2016-02-02 09:48:36', 0),
(1152, 1, '2016-02-02', '2016-02-02 09:49:32', 0),
(1153, 1, '2016-02-02', '2016-02-02 09:50:14', 0),
(1154, 128, '2016-02-02', '2016-02-02 09:50:56', 0),
(1155, 1, '2016-02-02', '2016-02-02 10:20:44', 0),
(1156, 1, '2016-02-02', '2016-02-02 10:21:15', 0),
(1157, 1, '2016-02-02', '2016-02-02 10:21:46', 0),
(1158, 1, '2016-02-02', '2016-02-02 10:21:56', 0),
(1159, 1, '2016-02-02', '2016-02-02 10:22:56', 0),
(1160, 1, '2016-02-02', '2016-02-02 10:22:59', 0),
(1161, 1, '2016-02-02', '2016-02-02 10:23:00', 0),
(1162, 1, '2016-02-02', '2016-02-02 10:23:09', 0),
(1163, 1, '2016-02-02', '2016-02-02 10:39:05', 0),
(1164, 1, '2016-02-02', '2016-02-02 10:39:09', 0),
(1165, 1, '2016-02-02', '2016-02-02 14:01:12', 0);

-- --------------------------------------------------------

--
-- Table structure for table `PageThemes`
--

DROP TABLE IF EXISTS `PageThemes`;
CREATE TABLE IF NOT EXISTS `PageThemes` (
`ptID` int(10) unsigned NOT NULL,
  `ptHandle` varchar(64) NOT NULL,
  `ptName` varchar(255) DEFAULT NULL,
  `ptDescription` text,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `PageThemes`
--

INSERT INTO `PageThemes` (`ptID`, `ptHandle`, `ptName`, `ptDescription`, `pkgID`) VALUES
(1, 'default', 'Plain Yogurt', 'Plain Yogurt is concrete5''s default theme.', 0),
(2, 'greensalad', 'Green Salad Theme', 'This is concrete5''s Green Salad site theme.', 0),
(3, 'dark_chocolate', 'Dark Chocolate', 'Dark Chocolate is concrete5''s default theme in black.', 0),
(4, 'greek_yogurt', 'Greek Yogurt', 'An elegant theme for concrete5.', 0),
(5, 'royalhotel', 'royalhotel', 'An elegant theme for concrete5.', 0);

-- --------------------------------------------------------

--
-- Table structure for table `PageThemeStyles`
--

DROP TABLE IF EXISTS `PageThemeStyles`;
CREATE TABLE IF NOT EXISTS `PageThemeStyles` (
  `ptID` int(10) unsigned NOT NULL DEFAULT '0',
  `ptsHandle` varchar(128) NOT NULL,
  `ptsValue` longtext,
  `ptsType` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `PageTypeAttributes`
--

DROP TABLE IF EXISTS `PageTypeAttributes`;
CREATE TABLE IF NOT EXISTS `PageTypeAttributes` (
  `ctID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `PageTypes`
--

DROP TABLE IF EXISTS `PageTypes`;
CREATE TABLE IF NOT EXISTS `PageTypes` (
`ctID` int(10) unsigned NOT NULL,
  `ctHandle` varchar(32) NOT NULL,
  `ctIcon` varchar(128) DEFAULT NULL,
  `ctName` varchar(90) NOT NULL,
  `ctIsInternal` tinyint(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `PageTypes`
--

INSERT INTO `PageTypes` (`ctID`, `ctHandle`, `ctIcon`, `ctName`, `ctIsInternal`, `pkgID`) VALUES
(1, 'core_stack', 'main.png', 'Stack', 1, 0),
(2, 'dashboard_primary_five', 'main.png', 'Dashboard Primary + Five', 1, 0),
(3, 'dashboard_header_four_col', 'main.png', 'Dashboard Header + Four Column', 1, 0),
(4, 'blog_entry', 'template1.png', 'Blog Entry', 0, 0),
(5, 'full', 'main.png', 'Full', 0, 0),
(6, 'left_sidebar', 'template1.png', 'Left Sidebar', 0, 0),
(7, 'right_sidebar', 'right_sidebar.png', 'Right Sidebar', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `PageWorkflowProgress`
--

DROP TABLE IF EXISTS `PageWorkflowProgress`;
CREATE TABLE IF NOT EXISTS `PageWorkflowProgress` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `wpID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `PermissionAccess`
--

DROP TABLE IF EXISTS `PermissionAccess`;
CREATE TABLE IF NOT EXISTS `PermissionAccess` (
`paID` int(10) unsigned NOT NULL,
  `paIsInUse` int(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=69 ;

--
-- Dumping data for table `PermissionAccess`
--

INSERT INTO `PermissionAccess` (`paID`, `paIsInUse`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1);

-- --------------------------------------------------------

--
-- Table structure for table `PermissionAccessEntities`
--

DROP TABLE IF EXISTS `PermissionAccessEntities`;
CREATE TABLE IF NOT EXISTS `PermissionAccessEntities` (
`peID` int(10) unsigned NOT NULL,
  `petID` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `PermissionAccessEntities`
--

INSERT INTO `PermissionAccessEntities` (`peID`, `petID`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 5),
(5, 6);

-- --------------------------------------------------------

--
-- Table structure for table `PermissionAccessEntityGroups`
--

DROP TABLE IF EXISTS `PermissionAccessEntityGroups`;
CREATE TABLE IF NOT EXISTS `PermissionAccessEntityGroups` (
`pegID` int(10) unsigned NOT NULL,
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `PermissionAccessEntityGroups`
--

INSERT INTO `PermissionAccessEntityGroups` (`pegID`, `peID`, `gID`) VALUES
(1, 1, 3),
(2, 2, 1),
(3, 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `PermissionAccessEntityGroupSets`
--

DROP TABLE IF EXISTS `PermissionAccessEntityGroupSets`;
CREATE TABLE IF NOT EXISTS `PermissionAccessEntityGroupSets` (
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `gsID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `PermissionAccessEntityTypeCategories`
--

DROP TABLE IF EXISTS `PermissionAccessEntityTypeCategories`;
CREATE TABLE IF NOT EXISTS `PermissionAccessEntityTypeCategories` (
  `petID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkCategoryID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `PermissionAccessEntityTypeCategories`
--

INSERT INTO `PermissionAccessEntityTypeCategories` (`petID`, `pkCategoryID`) VALUES
(1, 1),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(1, 13),
(1, 14),
(2, 1),
(2, 5),
(2, 6),
(2, 7),
(2, 8),
(2, 9),
(2, 10),
(2, 11),
(2, 12),
(2, 13),
(2, 14),
(3, 1),
(3, 5),
(3, 6),
(3, 7),
(3, 8),
(3, 9),
(3, 10),
(3, 11),
(3, 12),
(3, 13),
(3, 14),
(4, 1),
(4, 5),
(4, 6),
(4, 7),
(4, 8),
(4, 9),
(4, 10),
(4, 11),
(4, 12),
(4, 13),
(4, 14),
(5, 1),
(6, 6),
(6, 7);

-- --------------------------------------------------------

--
-- Table structure for table `PermissionAccessEntityTypes`
--

DROP TABLE IF EXISTS `PermissionAccessEntityTypes`;
CREATE TABLE IF NOT EXISTS `PermissionAccessEntityTypes` (
`petID` int(10) unsigned NOT NULL,
  `petHandle` varchar(255) NOT NULL,
  `petName` varchar(255) NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `PermissionAccessEntityTypes`
--

INSERT INTO `PermissionAccessEntityTypes` (`petID`, `petHandle`, `petName`, `pkgID`) VALUES
(1, 'group', 'Group', 0),
(2, 'user', 'User', 0),
(3, 'group_set', 'Group Set', 0),
(4, 'group_combination', 'Group Combination', 0),
(5, 'page_owner', 'Page Owner', 0),
(6, 'file_uploader', 'File Uploader', 0);

-- --------------------------------------------------------

--
-- Table structure for table `PermissionAccessEntityUsers`
--

DROP TABLE IF EXISTS `PermissionAccessEntityUsers`;
CREATE TABLE IF NOT EXISTS `PermissionAccessEntityUsers` (
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `PermissionAccessList`
--

DROP TABLE IF EXISTS `PermissionAccessList`;
CREATE TABLE IF NOT EXISTS `PermissionAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `pdID` int(10) unsigned NOT NULL DEFAULT '0',
  `accessType` int(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `PermissionAccessList`
--

INSERT INTO `PermissionAccessList` (`paID`, `peID`, `pdID`, `accessType`) VALUES
(1, 1, 0, 10),
(2, 1, 0, 10),
(3, 1, 0, 10),
(4, 1, 0, 10),
(5, 1, 0, 10),
(6, 1, 0, 10),
(7, 1, 0, 10),
(8, 1, 0, 10),
(9, 1, 0, 10),
(10, 1, 0, 10),
(11, 1, 0, 10),
(12, 1, 0, 10),
(13, 1, 0, 10),
(14, 1, 0, 10),
(15, 1, 0, 10),
(16, 1, 0, 10),
(17, 1, 0, 10),
(18, 1, 0, 10),
(19, 1, 0, 10),
(20, 1, 0, 10),
(21, 1, 0, 10),
(22, 1, 0, 10),
(23, 1, 0, 10),
(24, 1, 0, 10),
(25, 1, 0, 10),
(26, 1, 0, 10),
(27, 1, 0, 10),
(28, 1, 0, 10),
(29, 1, 0, 10),
(30, 1, 0, 10),
(31, 1, 0, 10),
(32, 1, 0, 10),
(33, 1, 0, 10),
(34, 1, 0, 10),
(35, 2, 0, 10),
(36, 2, 0, 10),
(37, 2, 0, 10),
(38, 2, 0, 10),
(39, 2, 0, 10),
(39, 3, 0, 10),
(40, 2, 0, 10),
(40, 3, 0, 10),
(41, 2, 0, 10),
(42, 2, 0, 10),
(43, 2, 0, 10),
(44, 1, 0, 10),
(44, 2, 0, 10),
(45, 1, 0, 10),
(46, 1, 0, 10),
(47, 1, 0, 10),
(48, 1, 0, 10),
(49, 1, 0, 10),
(50, 1, 0, 10),
(51, 1, 0, 10),
(52, 1, 0, 10),
(53, 2, 0, 10),
(54, 1, 0, 10),
(55, 1, 0, 10),
(56, 1, 0, 10),
(57, 1, 0, 10),
(58, 1, 0, 10),
(59, 1, 0, 10),
(60, 1, 0, 10),
(61, 1, 0, 10),
(62, 1, 0, 10),
(63, 1, 0, 10),
(64, 1, 0, 10),
(65, 1, 0, 10),
(66, 1, 0, 10),
(67, 1, 0, 10),
(68, 1, 0, 10);

-- --------------------------------------------------------

--
-- Table structure for table `PermissionAccessWorkflows`
--

DROP TABLE IF EXISTS `PermissionAccessWorkflows`;
CREATE TABLE IF NOT EXISTS `PermissionAccessWorkflows` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `wfID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `PermissionAssignments`
--

DROP TABLE IF EXISTS `PermissionAssignments`;
CREATE TABLE IF NOT EXISTS `PermissionAssignments` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `PermissionAssignments`
--

INSERT INTO `PermissionAssignments` (`paID`, `pkID`) VALUES
(1, 17),
(2, 18),
(3, 55),
(4, 56),
(5, 57),
(6, 58),
(7, 60),
(8, 61),
(9, 62),
(10, 63),
(11, 64),
(12, 66),
(13, 67),
(14, 68),
(15, 69),
(16, 70),
(17, 71),
(18, 72);

-- --------------------------------------------------------

--
-- Table structure for table `PermissionDurationObjects`
--

DROP TABLE IF EXISTS `PermissionDurationObjects`;
CREATE TABLE IF NOT EXISTS `PermissionDurationObjects` (
`pdID` int(10) unsigned NOT NULL,
  `pdObject` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `PermissionKeyCategories`
--

DROP TABLE IF EXISTS `PermissionKeyCategories`;
CREATE TABLE IF NOT EXISTS `PermissionKeyCategories` (
`pkCategoryID` int(10) unsigned NOT NULL,
  `pkCategoryHandle` varchar(255) NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `PermissionKeyCategories`
--

INSERT INTO `PermissionKeyCategories` (`pkCategoryID`, `pkCategoryHandle`, `pkgID`) VALUES
(1, 'page', NULL),
(2, 'single_page', NULL),
(3, 'stack', NULL),
(4, 'composer_page', NULL),
(5, 'user', NULL),
(6, 'file_set', NULL),
(7, 'file', NULL),
(8, 'area', NULL),
(9, 'block_type', NULL),
(10, 'block', NULL),
(11, 'admin', NULL),
(12, 'sitemap', NULL),
(13, 'marketplace_newsflow', NULL),
(14, 'basic_workflow', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `PermissionKeys`
--

DROP TABLE IF EXISTS `PermissionKeys`;
CREATE TABLE IF NOT EXISTS `PermissionKeys` (
`pkID` int(10) unsigned NOT NULL,
  `pkHandle` varchar(255) NOT NULL,
  `pkName` varchar(255) NOT NULL,
  `pkCanTriggerWorkflow` int(1) NOT NULL DEFAULT '0',
  `pkHasCustomClass` int(1) NOT NULL DEFAULT '0',
  `pkDescription` varchar(255) DEFAULT NULL,
  `pkCategoryID` int(10) unsigned DEFAULT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=73 ;

--
-- Dumping data for table `PermissionKeys`
--

INSERT INTO `PermissionKeys` (`pkID`, `pkHandle`, `pkName`, `pkCanTriggerWorkflow`, `pkHasCustomClass`, `pkDescription`, `pkCategoryID`, `pkgID`) VALUES
(1, 'view_page', 'View', 0, 0, 'Can see a page exists and read its content.', 1, 0),
(2, 'view_page_versions', 'View Versions', 0, 0, 'Can view the page versions dialog and read past versions of a page.', 1, 0),
(3, 'view_page_in_sitemap', 'View Page in Sitemap', 0, 0, 'Controls whether a user can see a page in the sitemap or intelligent search.', 1, 0),
(4, 'preview_page_as_user', 'Preview Page As User', 0, 0, 'Ability to see what this page will look like at a specific time in the future as a specific user.', 1, 0),
(5, 'edit_page_properties', 'Edit Properties', 0, 1, 'Ability to change anything in the Page Properties menu.', 1, 0),
(6, 'edit_page_contents', 'Edit Contents', 0, 0, 'Ability to make edits to at least some of the content in the page. You can lock down different block areas and specific blocks by clicking Permissions on them as well. ', 1, 0),
(7, 'edit_page_speed_settings', 'Edit Speed Settings', 0, 0, 'Ability to change caching settings.', 1, 0),
(8, 'edit_page_theme', 'Change Theme', 0, 1, 'Ability to change just the theme for this page.', 1, 0),
(9, 'edit_page_type', 'Change Page Type', 0, 0, 'Ability to change just the page type for this page, also check out Theme permissions.', 1, 0),
(10, 'edit_page_permissions', 'Edit Permissions', 1, 0, 'Ability to change permissions for this page. Warning: by granting this a user could give themselves more access.', 1, 0),
(11, 'delete_page', 'Delete', 1, 0, 'Ability to move this page to the site''s Trash.', 1, 0),
(12, 'delete_page_versions', 'Delete Versions', 1, 0, 'Ability to remove old versions of this page.', 1, 0),
(13, 'approve_page_versions', 'Approve Changes', 1, 0, 'Can publish an unapproved version of the page.', 1, 0),
(14, 'add_subpage', 'Add Sub-Page', 0, 1, 'Can add a page beneath the current page.', 1, 0),
(15, 'move_or_copy_page', 'Move or Copy Page', 1, 0, 'Can move or copy this page to another location.', 1, 0),
(16, 'schedule_page_contents_guest_access', 'Schedule Guest Access', 0, 0, 'Can control scheduled guest access to this page.', 1, 0),
(17, 'add_block', 'Add Block', 0, 1, 'Can add a block to any area on the site. If someone is added here they can add blocks to any area (unless that area has permissions that override these global permissions.)', 9, 0),
(18, 'add_stack', 'Add Stack', 0, 0, 'Can add a stack or block from a stack to any area on the site. If someone is added here they can add stacks to any area (unless that area has permissions that override these global permissions.)', 9, 0),
(19, 'view_area', 'View Area', 0, 0, 'Can view the area and its contents.', 8, 0),
(20, 'edit_area_contents', 'Edit Area Contents', 0, 0, 'Can edit blocks within this area.', 8, 0),
(21, 'add_block_to_area', 'Add Block to Area', 0, 1, 'Can add blocks to this area. This setting overrides the global Add Block permission for this area.', 8, 0),
(22, 'add_stack_to_area', 'Add Stack to Area', 0, 0, 'Can add stacks to this area. This setting overrides the global Add Stack permission for this area.', 8, 0),
(23, 'add_layout_to_area', 'Add Layouts to Area', 0, 0, 'Controls whether users get the ability to add layouts to a particular area.', 8, 0),
(24, 'edit_area_design', 'Edit Area Design', 0, 0, 'Controls whether users see design controls and can modify an area''s custom CSS.', 8, 0),
(25, 'edit_area_permissions', 'Edit Area Permissions', 0, 0, 'Controls whether users can access the permissions on an area. Custom area permissions could override those of the page.', 8, 0),
(26, 'delete_area_contents', 'Delete Area Contents', 0, 0, 'Controls whether users can delete blocks from this area.', 8, 0),
(27, 'schedule_area_contents_guest_access', 'Schedule Guest Access', 0, 0, 'Controls whether users can schedule guest access permissions on blocks in this area. Guest Access is a shortcut for granting permissions just to the Guest Group.', 8, 0),
(28, 'view_block', 'View Block', 0, 0, 'Controls whether users can view this block in the page.', 10, 0),
(29, 'edit_block', 'Edit Block', 0, 0, 'Controls whether users can edit this block. This overrides any area or page permissions.', 10, 0),
(30, 'edit_block_custom_template', 'Change Custom Template', 0, 0, 'Controls whether users can change the custom template on this block. This overrides any area or page permissions.', 10, 0),
(31, 'delete_block', 'Delete Block', 0, 0, 'Controls whether users can delete this block. This overrides any area or page permissions.', 10, 0),
(32, 'edit_block_design', 'Edit Design', 0, 0, 'Controls whether users can set custom design properties or CSS on this block.', 10, 0),
(33, 'edit_block_permissions', 'Edit Permissions', 0, 0, 'Controls whether users can change permissions on this block, potentially granting themselves or others greater access.', 10, 0),
(34, 'schedule_guest_access', 'Schedule Guest Access', 0, 0, 'Controls whether users can schedule guest access permissions on this block. Guest Access is a shortcut for granting permissions just to the Guest Group.', 10, 0),
(35, 'view_file_set_file', 'View Files', 0, 0, 'Can view and download files in the site.', 6, 0),
(36, 'search_file_set', 'Search Files in File Manager', 0, 0, 'Can access the file manager', 6, 0),
(37, 'edit_file_set_file_properties', 'Edit File Properties', 0, 0, 'Can edit a file''s properties.', 6, 0),
(38, 'edit_file_set_file_contents', 'Edit File Contents', 0, 0, 'Can edit or replace files in set.', 6, 0),
(39, 'copy_file_set_files', 'Copy File', 0, 0, 'Can copy files in file set.', 6, 0),
(40, 'edit_file_set_permissions', 'Edit File Access', 0, 0, 'Can edit access to file sets.', 6, 0),
(41, 'delete_file_set', 'Delete File Set', 0, 0, 'Can delete file set.', 6, 0),
(42, 'delete_file_set_files', 'Delete File', 0, 0, 'Can delete files in set.', 6, 0),
(43, 'add_file', 'Add File', 0, 1, 'Can add files to set.', 6, 0),
(44, 'view_file', 'View Files', 0, 0, 'Can view and download files.', 7, 0),
(45, 'view_file_in_file_manager', 'View File in File Manager', 0, 0, 'Can access the File Manager.', 7, 0),
(46, 'edit_file_properties', 'Edit File Properties', 0, 0, 'Can edit a file''s properties.', 7, 0),
(47, 'edit_file_contents', 'Edit File Contents', 0, 0, 'Can edit or replace files.', 7, 0),
(48, 'copy_file', 'Copy File', 0, 0, 'Can copy file.', 7, 0),
(49, 'edit_file_permissions', 'Edit File Access', 0, 0, 'Can edit access to file.', 7, 0),
(50, 'delete_file', 'Delete File', 0, 0, 'Can delete file.', 7, 0),
(51, 'approve_basic_workflow_action', 'Approve or Deny', 0, 0, 'Grant ability to approve workflow.', 14, 0),
(52, 'notify_on_basic_workflow_entry', 'Notify on Entry', 0, 0, 'Notify approvers that a change has entered the workflow.', 14, 0),
(53, 'notify_on_basic_workflow_approve', 'Notify on Approve', 0, 0, 'Notify approvers that a change has been approved.', 14, 0),
(54, 'notify_on_basic_workflow_deny', 'Notify on Deny', 0, 0, 'Notify approvers that a change has been denied.', 14, 0),
(55, 'access_user_search', 'Access User Search', 0, 1, '', 5, 0),
(56, 'edit_user_properties', 'Edit User Details', 0, 1, NULL, 5, 0),
(57, 'view_user_attributes', 'View User Attributes', 0, 1, NULL, 5, 0),
(58, 'activate_user', 'Activate/Deactivate User', 0, 0, NULL, 5, 0),
(59, 'sudo', 'Sign in as User', 0, 0, NULL, 5, 0),
(60, 'delete_user', 'Delete User', 0, 0, NULL, 5, 0),
(61, 'access_group_search', 'Access Group Search', 0, 0, '', 5, 0),
(62, 'edit_groups', 'Edit Groups', 0, 0, '', 5, 0),
(63, 'assign_user_groups', 'Assign Groups to User', 0, 1, '', 5, 0),
(64, 'backup', 'Perform Backups', 0, 0, NULL, 11, 0),
(65, 'access_task_permissions', 'Access Task Permissions', 0, 0, NULL, 11, 0),
(66, 'access_sitemap', 'Access Sitemap', 0, 0, NULL, 12, 0),
(67, 'access_page_defaults', 'Access Page Type Defaults', 0, 0, NULL, 11, 0),
(68, 'empty_trash', 'Empty Trash', 0, 0, NULL, 11, 0),
(69, 'uninstall_packages', 'Uninstall Packages', 0, 0, NULL, 13, 0),
(70, 'install_packages', 'Install Packages', 0, 0, NULL, 13, 0),
(71, 'view_newsflow', 'View Newsflow', 0, 0, NULL, 13, 0),
(72, 'access_user_search_export', 'Export Site Users', 0, 0, 'Controls whether a user can export site users or not', 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `PileContents`
--

DROP TABLE IF EXISTS `PileContents`;
CREATE TABLE IF NOT EXISTS `PileContents` (
`pcID` int(10) unsigned NOT NULL,
  `pID` int(10) unsigned NOT NULL DEFAULT '0',
  `itemID` int(10) unsigned NOT NULL DEFAULT '0',
  `itemType` varchar(64) NOT NULL,
  `quantity` int(10) unsigned NOT NULL DEFAULT '1',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `displayOrder` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `Piles`
--

DROP TABLE IF EXISTS `Piles`;
CREATE TABLE IF NOT EXISTS `Piles` (
`pID` int(10) unsigned NOT NULL,
  `uID` int(10) unsigned DEFAULT NULL,
  `isDefault` tinyint(1) NOT NULL DEFAULT '0',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `name` varchar(255) DEFAULT NULL,
  `state` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `QueueMessages`
--

DROP TABLE IF EXISTS `QueueMessages`;
CREATE TABLE IF NOT EXISTS `QueueMessages` (
`message_id` int(20) unsigned NOT NULL,
  `queue_id` int(10) unsigned NOT NULL,
  `handle` varchar(32) DEFAULT NULL,
  `body` longtext,
  `md5` varchar(32) NOT NULL,
  `timeout` decimal(14,0) unsigned DEFAULT NULL,
  `created` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `QueuePageDuplicationRelations`
--

DROP TABLE IF EXISTS `QueuePageDuplicationRelations`;
CREATE TABLE IF NOT EXISTS `QueuePageDuplicationRelations` (
  `queue_name` varchar(255) NOT NULL,
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `originalCID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Queues`
--

DROP TABLE IF EXISTS `Queues`;
CREATE TABLE IF NOT EXISTS `Queues` (
`queue_id` int(10) unsigned NOT NULL,
  `queue_name` varchar(100) NOT NULL,
  `timeout` int(5) unsigned NOT NULL DEFAULT '30'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `SignupRequests`
--

DROP TABLE IF EXISTS `SignupRequests`;
CREATE TABLE IF NOT EXISTS `SignupRequests` (
`id` int(11) NOT NULL,
  `ipFrom` int(10) unsigned NOT NULL DEFAULT '0',
  `date_access` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `Stacks`
--

DROP TABLE IF EXISTS `Stacks`;
CREATE TABLE IF NOT EXISTS `Stacks` (
`stID` int(10) unsigned NOT NULL,
  `stName` varchar(255) NOT NULL,
  `stType` int(1) unsigned NOT NULL DEFAULT '0',
  `cID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `Stacks`
--

INSERT INTO `Stacks` (`stID`, `stName`, `stType`, `cID`) VALUES
(1, 'Header Nav', 20, 121),
(2, 'Side Nav', 0, 122),
(3, 'Site Name', 20, 123),
(4, 'Site Logo', 20, 135),
(5, 'Header Booking', 20, 136),
(6, 'Body Banner01', 20, 137),
(7, 'Body Banner02', 20, 138),
(8, 'Body Banner03', 20, 139),
(9, 'Map Heading', 20, 140),
(10, 'Location Map', 20, 141),
(11, 'Map Description', 20, 142),
(12, 'Footer Logo', 20, 143),
(13, 'Footer Address', 20, 144),
(14, 'Footer Menu', 20, 145);

-- --------------------------------------------------------

--
-- Table structure for table `SystemAntispamLibraries`
--

DROP TABLE IF EXISTS `SystemAntispamLibraries`;
CREATE TABLE IF NOT EXISTS `SystemAntispamLibraries` (
  `saslHandle` varchar(64) NOT NULL,
  `saslName` varchar(255) DEFAULT NULL,
  `saslIsActive` int(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `SystemCaptchaLibraries`
--

DROP TABLE IF EXISTS `SystemCaptchaLibraries`;
CREATE TABLE IF NOT EXISTS `SystemCaptchaLibraries` (
  `sclHandle` varchar(64) NOT NULL,
  `sclName` varchar(255) DEFAULT NULL,
  `sclIsActive` int(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `SystemCaptchaLibraries`
--

INSERT INTO `SystemCaptchaLibraries` (`sclHandle`, `sclName`, `sclIsActive`, `pkgID`) VALUES
('securimage', 'SecurImage (Default)', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `SystemNotifications`
--

DROP TABLE IF EXISTS `SystemNotifications`;
CREATE TABLE IF NOT EXISTS `SystemNotifications` (
`snID` int(10) unsigned NOT NULL,
  `snTypeID` int(3) unsigned NOT NULL DEFAULT '0',
  `snURL` text,
  `snURL2` text,
  `snDateTime` datetime NOT NULL,
  `snIsArchived` int(1) NOT NULL DEFAULT '0',
  `snIsNew` int(1) NOT NULL DEFAULT '0',
  `snTitle` varchar(255) DEFAULT NULL,
  `snDescription` text,
  `snBody` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `UserAttributeKeys`
--

DROP TABLE IF EXISTS `UserAttributeKeys`;
CREATE TABLE IF NOT EXISTS `UserAttributeKeys` (
  `akID` int(10) unsigned NOT NULL,
  `uakProfileDisplay` tinyint(1) NOT NULL DEFAULT '0',
  `uakMemberListDisplay` tinyint(1) NOT NULL DEFAULT '0',
  `uakProfileEdit` tinyint(1) NOT NULL DEFAULT '1',
  `uakProfileEditRequired` tinyint(1) NOT NULL DEFAULT '0',
  `uakRegisterEdit` tinyint(1) NOT NULL DEFAULT '0',
  `uakRegisterEditRequired` tinyint(1) NOT NULL DEFAULT '0',
  `displayOrder` int(10) unsigned DEFAULT '0',
  `uakIsActive` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `UserAttributeKeys`
--

INSERT INTO `UserAttributeKeys` (`akID`, `uakProfileDisplay`, `uakMemberListDisplay`, `uakProfileEdit`, `uakProfileEditRequired`, `uakRegisterEdit`, `uakRegisterEditRequired`, `displayOrder`, `uakIsActive`) VALUES
(10, 0, 0, 1, 0, 1, 0, 1, 1),
(11, 0, 0, 1, 0, 1, 0, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `UserAttributeValues`
--

DROP TABLE IF EXISTS `UserAttributeValues`;
CREATE TABLE IF NOT EXISTS `UserAttributeValues` (
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `avID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `UserBannedIPs`
--

DROP TABLE IF EXISTS `UserBannedIPs`;
CREATE TABLE IF NOT EXISTS `UserBannedIPs` (
  `ipFrom` int(10) unsigned NOT NULL DEFAULT '0',
  `ipTo` int(10) unsigned NOT NULL DEFAULT '0',
  `banCode` int(1) unsigned NOT NULL DEFAULT '1',
  `expires` int(10) unsigned NOT NULL DEFAULT '0',
  `isManual` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `UserGroups`
--

DROP TABLE IF EXISTS `UserGroups`;
CREATE TABLE IF NOT EXISTS `UserGroups` (
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  `ugEntered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `type` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `UserOpenIDs`
--

DROP TABLE IF EXISTS `UserOpenIDs`;
CREATE TABLE IF NOT EXISTS `UserOpenIDs` (
  `uID` int(10) unsigned NOT NULL,
  `uOpenID` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `UserPermissionAssignGroupAccessList`
--

DROP TABLE IF EXISTS `UserPermissionAssignGroupAccessList`;
CREATE TABLE IF NOT EXISTS `UserPermissionAssignGroupAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `UserPermissionAssignGroupAccessListCustom`
--

DROP TABLE IF EXISTS `UserPermissionAssignGroupAccessListCustom`;
CREATE TABLE IF NOT EXISTS `UserPermissionAssignGroupAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `UserPermissionEditPropertyAccessList`
--

DROP TABLE IF EXISTS `UserPermissionEditPropertyAccessList`;
CREATE TABLE IF NOT EXISTS `UserPermissionEditPropertyAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `uName` int(1) unsigned DEFAULT '0',
  `uEmail` int(1) unsigned DEFAULT '0',
  `uPassword` int(1) unsigned DEFAULT '0',
  `uAvatar` int(1) unsigned DEFAULT '0',
  `uTimezone` int(1) unsigned DEFAULT '0',
  `uDefaultLanguage` int(1) unsigned DEFAULT '0',
  `attributePermission` varchar(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `UserPermissionEditPropertyAttributeAccessListCustom`
--

DROP TABLE IF EXISTS `UserPermissionEditPropertyAttributeAccessListCustom`;
CREATE TABLE IF NOT EXISTS `UserPermissionEditPropertyAttributeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `UserPermissionUserSearchAccessList`
--

DROP TABLE IF EXISTS `UserPermissionUserSearchAccessList`;
CREATE TABLE IF NOT EXISTS `UserPermissionUserSearchAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `UserPermissionUserSearchAccessListCustom`
--

DROP TABLE IF EXISTS `UserPermissionUserSearchAccessListCustom`;
CREATE TABLE IF NOT EXISTS `UserPermissionUserSearchAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `UserPermissionViewAttributeAccessList`
--

DROP TABLE IF EXISTS `UserPermissionViewAttributeAccessList`;
CREATE TABLE IF NOT EXISTS `UserPermissionViewAttributeAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `UserPermissionViewAttributeAccessListCustom`
--

DROP TABLE IF EXISTS `UserPermissionViewAttributeAccessListCustom`;
CREATE TABLE IF NOT EXISTS `UserPermissionViewAttributeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `UserPointHistory`
--

DROP TABLE IF EXISTS `UserPointHistory`;
CREATE TABLE IF NOT EXISTS `UserPointHistory` (
`upID` int(11) NOT NULL,
  `upuID` int(11) NOT NULL DEFAULT '0',
  `upaID` int(11) DEFAULT '0',
  `upPoints` int(11) DEFAULT '0',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `UserPrivateMessages`
--

DROP TABLE IF EXISTS `UserPrivateMessages`;
CREATE TABLE IF NOT EXISTS `UserPrivateMessages` (
`msgID` int(10) unsigned NOT NULL,
  `uAuthorID` int(10) unsigned NOT NULL DEFAULT '0',
  `msgDateCreated` datetime NOT NULL,
  `msgSubject` varchar(255) NOT NULL,
  `msgBody` text,
  `uToID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `UserPrivateMessagesTo`
--

DROP TABLE IF EXISTS `UserPrivateMessagesTo`;
CREATE TABLE IF NOT EXISTS `UserPrivateMessagesTo` (
  `msgID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `uAuthorID` int(10) unsigned NOT NULL DEFAULT '0',
  `msgMailboxID` int(11) NOT NULL,
  `msgIsNew` int(1) NOT NULL DEFAULT '0',
  `msgIsUnread` int(1) NOT NULL DEFAULT '0',
  `msgIsReplied` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Users`
--

DROP TABLE IF EXISTS `Users`;
CREATE TABLE IF NOT EXISTS `Users` (
`uID` int(10) unsigned NOT NULL,
  `uName` varchar(64) NOT NULL,
  `uEmail` varchar(255) NOT NULL,
  `uPassword` varchar(255) NOT NULL,
  `uIsActive` varchar(1) NOT NULL DEFAULT '0',
  `uIsValidated` tinyint(4) NOT NULL DEFAULT '-1',
  `uIsFullRecord` tinyint(1) NOT NULL DEFAULT '1',
  `uDateAdded` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `uHasAvatar` tinyint(1) NOT NULL DEFAULT '0',
  `uLastOnline` int(10) unsigned NOT NULL DEFAULT '0',
  `uLastLogin` int(10) unsigned NOT NULL DEFAULT '0',
  `uLastIP` bigint(10) NOT NULL DEFAULT '0',
  `uPreviousLogin` int(10) unsigned NOT NULL DEFAULT '0',
  `uNumLogins` int(10) unsigned NOT NULL DEFAULT '0',
  `uTimezone` varchar(255) DEFAULT NULL,
  `uDefaultLanguage` varchar(32) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `Users`
--

INSERT INTO `Users` (`uID`, `uName`, `uEmail`, `uPassword`, `uIsActive`, `uIsValidated`, `uIsFullRecord`, `uDateAdded`, `uHasAvatar`, `uLastOnline`, `uLastLogin`, `uLastIP`, `uPreviousLogin`, `uNumLogins`, `uTimezone`, `uDefaultLanguage`) VALUES
(1, 'admin', 'test30@gmail.com', '$2a$12$bNTG9uF.j/iNR0GK/AnR9uX3k/2NLGT5VEsWzwpEAft67dHpIy0MW', '1', -1, 1, '2016-01-29 15:02:56', 0, 1454336132, 1454335931, 1868381022, 1454321989, 14, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `UserSearchIndexAttributes`
--

DROP TABLE IF EXISTS `UserSearchIndexAttributes`;
CREATE TABLE IF NOT EXISTS `UserSearchIndexAttributes` (
  `uID` int(11) unsigned NOT NULL DEFAULT '0',
  `ak_profile_private_messages_enabled` tinyint(4) DEFAULT '0',
  `ak_profile_private_messages_notification_enabled` tinyint(4) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `UsersFriends`
--

DROP TABLE IF EXISTS `UsersFriends`;
CREATE TABLE IF NOT EXISTS `UsersFriends` (
`ufID` int(10) unsigned NOT NULL,
  `uID` int(10) unsigned DEFAULT NULL,
  `status` varchar(64) NOT NULL,
  `friendUID` int(10) unsigned DEFAULT NULL,
  `uDateAdded` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `UserValidationHashes`
--

DROP TABLE IF EXISTS `UserValidationHashes`;
CREATE TABLE IF NOT EXISTS `UserValidationHashes` (
`uvhID` int(10) unsigned NOT NULL,
  `uID` int(10) unsigned DEFAULT NULL,
  `uHash` varchar(64) NOT NULL,
  `type` int(4) unsigned NOT NULL DEFAULT '0',
  `uDateGenerated` int(10) unsigned NOT NULL DEFAULT '0',
  `uDateRedeemed` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `WorkflowProgress`
--

DROP TABLE IF EXISTS `WorkflowProgress`;
CREATE TABLE IF NOT EXISTS `WorkflowProgress` (
`wpID` int(10) unsigned NOT NULL,
  `wpCategoryID` int(10) unsigned DEFAULT NULL,
  `wfID` int(10) unsigned NOT NULL DEFAULT '0',
  `wpApproved` tinyint(1) NOT NULL DEFAULT '0',
  `wpDateAdded` datetime DEFAULT NULL,
  `wpDateLastAction` datetime DEFAULT NULL,
  `wpCurrentStatus` int(10) NOT NULL DEFAULT '0',
  `wrID` int(1) NOT NULL DEFAULT '0',
  `wpIsCompleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `WorkflowProgressCategories`
--

DROP TABLE IF EXISTS `WorkflowProgressCategories`;
CREATE TABLE IF NOT EXISTS `WorkflowProgressCategories` (
`wpCategoryID` int(10) unsigned NOT NULL,
  `wpCategoryHandle` varchar(255) NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `WorkflowProgressCategories`
--

INSERT INTO `WorkflowProgressCategories` (`wpCategoryID`, `wpCategoryHandle`, `pkgID`) VALUES
(1, 'page', NULL),
(2, 'file', NULL),
(3, 'user', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `WorkflowProgressHistory`
--

DROP TABLE IF EXISTS `WorkflowProgressHistory`;
CREATE TABLE IF NOT EXISTS `WorkflowProgressHistory` (
`wphID` int(10) unsigned NOT NULL,
  `wpID` int(10) unsigned NOT NULL DEFAULT '0',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `object` text
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=36 ;

--
-- Dumping data for table `WorkflowProgressHistory`
--

INSERT INTO `WorkflowProgressHistory` (`wphID`, `wpID`, `timestamp`, `object`) VALUES
(1, 1, '2016-01-29 10:13:06', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"13";s:3:"cID";s:1:"1";s:4:"cvID";s:1:"2";s:4:"wrID";i:1;}'),
(2, 2, '2016-01-29 10:17:04', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"13";s:3:"cID";s:1:"1";s:4:"cvID";s:1:"3";s:4:"wrID";i:2;}'),
(3, 3, '2016-01-29 10:21:20', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"13";s:3:"cID";s:1:"1";s:4:"cvID";s:1:"4";s:4:"wrID";i:3;}'),
(4, 4, '2016-01-29 10:30:09', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"13";s:3:"cID";s:1:"1";s:4:"cvID";s:1:"5";s:4:"wrID";i:4;}'),
(5, 5, '2016-01-29 10:54:47', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"13";s:3:"cID";s:1:"1";s:4:"cvID";s:1:"6";s:4:"wrID";i:5;}'),
(6, 6, '2016-01-29 11:06:33', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"13";s:3:"cID";s:1:"1";s:4:"cvID";s:1:"7";s:4:"wrID";i:6;}'),
(7, 7, '2016-01-29 11:27:58', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"13";s:3:"cID";s:1:"1";s:4:"cvID";s:1:"8";s:4:"wrID";i:7;}'),
(8, 8, '2016-01-29 12:32:24', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"13";s:3:"cID";s:1:"1";s:4:"cvID";s:1:"9";s:4:"wrID";i:8;}'),
(9, 1, '2016-02-01 04:58:35', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"13";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"10";s:4:"wrID";i:1;}'),
(10, 2, '2016-02-01 06:44:17', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"13";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"11";s:4:"wrID";i:2;}'),
(11, 3, '2016-02-01 07:31:32', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"13";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"12";s:4:"wrID";i:3;}'),
(12, 4, '2016-02-01 09:13:17', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"13";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"13";s:4:"wrID";i:4;}'),
(13, 5, '2016-02-01 09:22:53', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"13";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"14";s:4:"wrID";i:5;}'),
(14, 6, '2016-02-01 09:26:01', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"13";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"15";s:4:"wrID";i:6;}'),
(15, 7, '2016-02-01 09:29:14', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"13";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"16";s:4:"wrID";i:7;}'),
(16, 8, '2016-02-01 09:37:25', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"13";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"17";s:4:"wrID";i:8;}'),
(17, 9, '2016-02-01 10:03:39', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"13";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"18";s:4:"wrID";i:9;}'),
(18, 10, '2016-02-01 10:09:42', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"13";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"19";s:4:"wrID";i:10;}'),
(19, 11, '2016-02-01 10:12:04', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"13";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"20";s:4:"wrID";i:11;}'),
(20, 12, '2016-02-01 10:30:39', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"13";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"21";s:4:"wrID";i:12;}'),
(21, 13, '2016-02-01 10:46:44', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"13";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"22";s:4:"wrID";i:13;}'),
(22, 14, '2016-02-01 10:54:39', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"13";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"23";s:4:"wrID";i:14;}'),
(23, 15, '2016-02-01 11:10:09', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"13";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"24";s:4:"wrID";i:15;}'),
(24, 16, '2016-02-01 12:34:03', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"13";s:3:"cID";s:3:"128";s:4:"cvID";s:1:"2";s:4:"wrID";i:16;}'),
(25, 17, '2016-02-01 12:36:25', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"13";s:3:"cID";s:3:"128";s:4:"cvID";s:1:"3";s:4:"wrID";i:17;}'),
(26, 18, '2016-02-01 12:38:35', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"13";s:3:"cID";s:3:"128";s:4:"cvID";s:1:"4";s:4:"wrID";i:18;}'),
(27, 19, '2016-02-01 12:45:25', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"13";s:3:"cID";s:3:"128";s:4:"cvID";s:1:"5";s:4:"wrID";i:19;}'),
(28, 20, '2016-02-01 12:49:04', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"13";s:3:"cID";s:3:"128";s:4:"cvID";s:1:"6";s:4:"wrID";i:20;}'),
(29, 21, '2016-02-01 12:57:52', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"13";s:3:"cID";s:3:"128";s:4:"cvID";s:1:"7";s:4:"wrID";i:21;}'),
(30, 22, '2016-02-01 13:00:43', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"13";s:3:"cID";s:3:"128";s:4:"cvID";s:1:"8";s:4:"wrID";i:22;}'),
(31, 23, '2016-02-01 13:02:09', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"13";s:3:"cID";s:3:"128";s:4:"cvID";s:1:"9";s:4:"wrID";i:23;}'),
(32, 24, '2016-02-01 13:02:40', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"13";s:3:"cID";s:3:"128";s:4:"cvID";s:2:"10";s:4:"wrID";i:24;}'),
(33, 25, '2016-02-01 13:06:40', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"13";s:3:"cID";s:3:"128";s:4:"cvID";s:2:"11";s:4:"wrID";i:25;}'),
(34, 26, '2016-02-01 13:19:44', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"13";s:3:"cID";s:3:"129";s:4:"cvID";s:1:"2";s:4:"wrID";i:26;}'),
(35, 27, '2016-02-01 13:20:49', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"13";s:3:"cID";s:3:"130";s:4:"cvID";s:1:"2";s:4:"wrID";i:27;}');

-- --------------------------------------------------------

--
-- Table structure for table `WorkflowRequestObjects`
--

DROP TABLE IF EXISTS `WorkflowRequestObjects`;
CREATE TABLE IF NOT EXISTS `WorkflowRequestObjects` (
`wrID` int(10) unsigned NOT NULL,
  `wrObject` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `Workflows`
--

DROP TABLE IF EXISTS `Workflows`;
CREATE TABLE IF NOT EXISTS `Workflows` (
`wfID` int(10) unsigned NOT NULL,
  `wfName` varchar(255) DEFAULT NULL,
  `wftID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `WorkflowTypes`
--

DROP TABLE IF EXISTS `WorkflowTypes`;
CREATE TABLE IF NOT EXISTS `WorkflowTypes` (
`wftID` int(10) unsigned NOT NULL,
  `wftHandle` varchar(64) NOT NULL,
  `wftName` varchar(128) NOT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `WorkflowTypes`
--

INSERT INTO `WorkflowTypes` (`wftID`, `wftHandle`, `wftName`, `pkgID`) VALUES
(1, 'basic', 'Basic Workflow', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `AreaPermissionAssignments`
--
ALTER TABLE `AreaPermissionAssignments`
 ADD PRIMARY KEY (`cID`,`arHandle`,`pkID`,`paID`);

--
-- Indexes for table `AreaPermissionBlockTypeAccessList`
--
ALTER TABLE `AreaPermissionBlockTypeAccessList`
 ADD PRIMARY KEY (`paID`,`peID`);

--
-- Indexes for table `AreaPermissionBlockTypeAccessListCustom`
--
ALTER TABLE `AreaPermissionBlockTypeAccessListCustom`
 ADD PRIMARY KEY (`paID`,`peID`,`btID`);

--
-- Indexes for table `Areas`
--
ALTER TABLE `Areas`
 ADD PRIMARY KEY (`arID`), ADD KEY `arIsGlobal` (`arIsGlobal`), ADD KEY `cID` (`cID`), ADD KEY `arHandle` (`arHandle`);

--
-- Indexes for table `atAddress`
--
ALTER TABLE `atAddress`
 ADD PRIMARY KEY (`avID`);

--
-- Indexes for table `atAddressCustomCountries`
--
ALTER TABLE `atAddressCustomCountries`
 ADD PRIMARY KEY (`atAddressCustomCountryID`);

--
-- Indexes for table `atAddressSettings`
--
ALTER TABLE `atAddressSettings`
 ADD PRIMARY KEY (`akID`);

--
-- Indexes for table `atBoolean`
--
ALTER TABLE `atBoolean`
 ADD PRIMARY KEY (`avID`);

--
-- Indexes for table `atBooleanSettings`
--
ALTER TABLE `atBooleanSettings`
 ADD PRIMARY KEY (`akID`);

--
-- Indexes for table `atDateTime`
--
ALTER TABLE `atDateTime`
 ADD PRIMARY KEY (`avID`);

--
-- Indexes for table `atDateTimeSettings`
--
ALTER TABLE `atDateTimeSettings`
 ADD PRIMARY KEY (`akID`);

--
-- Indexes for table `atDefault`
--
ALTER TABLE `atDefault`
 ADD PRIMARY KEY (`avID`);

--
-- Indexes for table `atFile`
--
ALTER TABLE `atFile`
 ADD PRIMARY KEY (`avID`);

--
-- Indexes for table `atNumber`
--
ALTER TABLE `atNumber`
 ADD PRIMARY KEY (`avID`);

--
-- Indexes for table `atSelectOptions`
--
ALTER TABLE `atSelectOptions`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `atSelectOptionsSelected`
--
ALTER TABLE `atSelectOptionsSelected`
 ADD PRIMARY KEY (`avID`,`atSelectOptionID`);

--
-- Indexes for table `atSelectSettings`
--
ALTER TABLE `atSelectSettings`
 ADD PRIMARY KEY (`akID`);

--
-- Indexes for table `atTextareaSettings`
--
ALTER TABLE `atTextareaSettings`
 ADD PRIMARY KEY (`akID`);

--
-- Indexes for table `AttributeKeyCategories`
--
ALTER TABLE `AttributeKeyCategories`
 ADD PRIMARY KEY (`akCategoryID`);

--
-- Indexes for table `AttributeKeys`
--
ALTER TABLE `AttributeKeys`
 ADD PRIMARY KEY (`akID`), ADD UNIQUE KEY `akHandle` (`akHandle`,`akCategoryID`);

--
-- Indexes for table `AttributeSetKeys`
--
ALTER TABLE `AttributeSetKeys`
 ADD PRIMARY KEY (`akID`,`asID`);

--
-- Indexes for table `AttributeSets`
--
ALTER TABLE `AttributeSets`
 ADD PRIMARY KEY (`asID`);

--
-- Indexes for table `AttributeTypeCategories`
--
ALTER TABLE `AttributeTypeCategories`
 ADD PRIMARY KEY (`atID`,`akCategoryID`);

--
-- Indexes for table `AttributeTypes`
--
ALTER TABLE `AttributeTypes`
 ADD PRIMARY KEY (`atID`), ADD UNIQUE KEY `atHandle` (`atHandle`);

--
-- Indexes for table `AttributeValues`
--
ALTER TABLE `AttributeValues`
 ADD PRIMARY KEY (`avID`);

--
-- Indexes for table `BasicWorkflowPermissionAssignments`
--
ALTER TABLE `BasicWorkflowPermissionAssignments`
 ADD PRIMARY KEY (`wfID`,`pkID`,`paID`);

--
-- Indexes for table `BasicWorkflowProgressData`
--
ALTER TABLE `BasicWorkflowProgressData`
 ADD PRIMARY KEY (`wpID`);

--
-- Indexes for table `BlockPermissionAssignments`
--
ALTER TABLE `BlockPermissionAssignments`
 ADD PRIMARY KEY (`cID`,`cvID`,`bID`,`pkID`,`paID`);

--
-- Indexes for table `BlockRelations`
--
ALTER TABLE `BlockRelations`
 ADD PRIMARY KEY (`brID`);

--
-- Indexes for table `Blocks`
--
ALTER TABLE `Blocks`
 ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `BlockTypePermissionBlockTypeAccessList`
--
ALTER TABLE `BlockTypePermissionBlockTypeAccessList`
 ADD PRIMARY KEY (`paID`,`peID`);

--
-- Indexes for table `BlockTypePermissionBlockTypeAccessListCustom`
--
ALTER TABLE `BlockTypePermissionBlockTypeAccessListCustom`
 ADD PRIMARY KEY (`paID`,`peID`,`btID`);

--
-- Indexes for table `BlockTypes`
--
ALTER TABLE `BlockTypes`
 ADD PRIMARY KEY (`btID`), ADD UNIQUE KEY `btHandle` (`btHandle`);

--
-- Indexes for table `btContentFile`
--
ALTER TABLE `btContentFile`
 ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btContentImage`
--
ALTER TABLE `btContentImage`
 ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btContentLocal`
--
ALTER TABLE `btContentLocal`
 ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btCoreScrapbookDisplay`
--
ALTER TABLE `btCoreScrapbookDisplay`
 ADD PRIMARY KEY (`bID`), ADD KEY `bOriginalID` (`bOriginalID`);

--
-- Indexes for table `btCoreStackDisplay`
--
ALTER TABLE `btCoreStackDisplay`
 ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btDashboardNewsflowLatest`
--
ALTER TABLE `btDashboardNewsflowLatest`
 ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btDateArchive`
--
ALTER TABLE `btDateArchive`
 ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btDateNav`
--
ALTER TABLE `btDateNav`
 ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btExternalForm`
--
ALTER TABLE `btExternalForm`
 ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btFlashContent`
--
ALTER TABLE `btFlashContent`
 ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btForm`
--
ALTER TABLE `btForm`
 ADD PRIMARY KEY (`bID`), ADD KEY `questionSetIdForeign` (`questionSetId`);

--
-- Indexes for table `btFormAnswers`
--
ALTER TABLE `btFormAnswers`
 ADD PRIMARY KEY (`aID`), ADD KEY `asID` (`asID`);

--
-- Indexes for table `btFormAnswerSet`
--
ALTER TABLE `btFormAnswerSet`
 ADD PRIMARY KEY (`asID`), ADD KEY `questionSetId` (`questionSetId`);

--
-- Indexes for table `btFormQuestions`
--
ALTER TABLE `btFormQuestions`
 ADD PRIMARY KEY (`qID`), ADD KEY `questionSetId` (`questionSetId`), ADD KEY `msqID` (`msqID`);

--
-- Indexes for table `btGoogleMap`
--
ALTER TABLE `btGoogleMap`
 ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btGuestBook`
--
ALTER TABLE `btGuestBook`
 ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btGuestBookEntries`
--
ALTER TABLE `btGuestBookEntries`
 ADD PRIMARY KEY (`entryID`), ADD KEY `cID` (`cID`);

--
-- Indexes for table `btNavigation`
--
ALTER TABLE `btNavigation`
 ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btNextPrevious`
--
ALTER TABLE `btNextPrevious`
 ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btPageList`
--
ALTER TABLE `btPageList`
 ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btResponsiveSlider`
--
ALTER TABLE `btResponsiveSlider`
 ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btResponsiveSliderImg`
--
ALTER TABLE `btResponsiveSliderImg`
 ADD PRIMARY KEY (`responsivesliderImgId`);

--
-- Indexes for table `btRssDisplay`
--
ALTER TABLE `btRssDisplay`
 ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btSearch`
--
ALTER TABLE `btSearch`
 ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btSlideshow`
--
ALTER TABLE `btSlideshow`
 ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btSlideshowImg`
--
ALTER TABLE `btSlideshowImg`
 ADD PRIMARY KEY (`slideshowImgId`);

--
-- Indexes for table `btSurvey`
--
ALTER TABLE `btSurvey`
 ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btSurveyOptions`
--
ALTER TABLE `btSurveyOptions`
 ADD PRIMARY KEY (`optionID`);

--
-- Indexes for table `btSurveyResults`
--
ALTER TABLE `btSurveyResults`
 ADD PRIMARY KEY (`resultID`);

--
-- Indexes for table `btTags`
--
ALTER TABLE `btTags`
 ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btVideo`
--
ALTER TABLE `btVideo`
 ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btYouTube`
--
ALTER TABLE `btYouTube`
 ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `CollectionAttributeValues`
--
ALTER TABLE `CollectionAttributeValues`
 ADD PRIMARY KEY (`cID`,`cvID`,`akID`,`avID`);

--
-- Indexes for table `Collections`
--
ALTER TABLE `Collections`
 ADD PRIMARY KEY (`cID`), ADD KEY `cDateModified` (`cDateModified`), ADD KEY `cDateAdded` (`cDateAdded`);

--
-- Indexes for table `CollectionSearchIndexAttributes`
--
ALTER TABLE `CollectionSearchIndexAttributes`
 ADD PRIMARY KEY (`cID`);

--
-- Indexes for table `CollectionVersionAreaLayouts`
--
ALTER TABLE `CollectionVersionAreaLayouts`
 ADD PRIMARY KEY (`cvalID`), ADD KEY `areaLayoutsIndex` (`cID`,`cvID`,`arHandle`), ADD KEY `cID` (`cID`);

--
-- Indexes for table `CollectionVersionAreaStyles`
--
ALTER TABLE `CollectionVersionAreaStyles`
 ADD PRIMARY KEY (`cID`,`cvID`,`arHandle`);

--
-- Indexes for table `CollectionVersionBlocks`
--
ALTER TABLE `CollectionVersionBlocks`
 ADD PRIMARY KEY (`cID`,`cvID`,`bID`,`arHandle`), ADD KEY `cbIncludeAll` (`cbIncludeAll`), ADD KEY `isOriginal` (`isOriginal`), ADD KEY `bID` (`bID`), ADD KEY `cIDcvID` (`cID`,`cvID`);

--
-- Indexes for table `CollectionVersionBlocksOutputCache`
--
ALTER TABLE `CollectionVersionBlocksOutputCache`
 ADD PRIMARY KEY (`cID`,`cvID`,`bID`,`arHandle`);

--
-- Indexes for table `CollectionVersionBlockStyles`
--
ALTER TABLE `CollectionVersionBlockStyles`
 ADD PRIMARY KEY (`cID`,`cvID`,`bID`,`arHandle`);

--
-- Indexes for table `CollectionVersionRelatedEdits`
--
ALTER TABLE `CollectionVersionRelatedEdits`
 ADD PRIMARY KEY (`cID`,`cvID`,`cRelationID`,`cvRelationID`);

--
-- Indexes for table `CollectionVersions`
--
ALTER TABLE `CollectionVersions`
 ADD PRIMARY KEY (`cID`,`cvID`), ADD KEY `cvIsApproved` (`cvIsApproved`), ADD KEY `ctID` (`ctID`);

--
-- Indexes for table `ComposerContentLayout`
--
ALTER TABLE `ComposerContentLayout`
 ADD PRIMARY KEY (`cclID`);

--
-- Indexes for table `ComposerDrafts`
--
ALTER TABLE `ComposerDrafts`
 ADD PRIMARY KEY (`cID`);

--
-- Indexes for table `ComposerTypes`
--
ALTER TABLE `ComposerTypes`
 ADD PRIMARY KEY (`ctID`);

--
-- Indexes for table `Config`
--
ALTER TABLE `Config`
 ADD PRIMARY KEY (`cfKey`,`uID`), ADD KEY `uID` (`uID`);

--
-- Indexes for table `CustomStylePresets`
--
ALTER TABLE `CustomStylePresets`
 ADD PRIMARY KEY (`cspID`);

--
-- Indexes for table `CustomStyleRules`
--
ALTER TABLE `CustomStyleRules`
 ADD PRIMARY KEY (`csrID`);

--
-- Indexes for table `DownloadStatistics`
--
ALTER TABLE `DownloadStatistics`
 ADD PRIMARY KEY (`dsID`);

--
-- Indexes for table `FileAttributeValues`
--
ALTER TABLE `FileAttributeValues`
 ADD PRIMARY KEY (`fID`,`fvID`,`akID`,`avID`);

--
-- Indexes for table `FilePermissionAssignments`
--
ALTER TABLE `FilePermissionAssignments`
 ADD PRIMARY KEY (`fID`,`paID`,`pkID`);

--
-- Indexes for table `FilePermissionFileTypes`
--
ALTER TABLE `FilePermissionFileTypes`
 ADD PRIMARY KEY (`fsID`,`gID`,`uID`,`extension`);

--
-- Indexes for table `Files`
--
ALTER TABLE `Files`
 ADD PRIMARY KEY (`fID`,`uID`,`fslID`), ADD KEY `fOverrideSetPermissions` (`fOverrideSetPermissions`);

--
-- Indexes for table `FileSearchIndexAttributes`
--
ALTER TABLE `FileSearchIndexAttributes`
 ADD PRIMARY KEY (`fID`);

--
-- Indexes for table `FileSetFiles`
--
ALTER TABLE `FileSetFiles`
 ADD PRIMARY KEY (`fsfID`), ADD KEY `fID` (`fID`), ADD KEY `fsID` (`fsID`);

--
-- Indexes for table `FileSetPermissionAssignments`
--
ALTER TABLE `FileSetPermissionAssignments`
 ADD PRIMARY KEY (`fsID`,`paID`,`pkID`);

--
-- Indexes for table `FileSetPermissionFileTypeAccessList`
--
ALTER TABLE `FileSetPermissionFileTypeAccessList`
 ADD PRIMARY KEY (`paID`,`peID`);

--
-- Indexes for table `FileSetPermissionFileTypeAccessListCustom`
--
ALTER TABLE `FileSetPermissionFileTypeAccessListCustom`
 ADD PRIMARY KEY (`paID`,`peID`,`extension`);

--
-- Indexes for table `FileSets`
--
ALTER TABLE `FileSets`
 ADD PRIMARY KEY (`fsID`), ADD KEY `fsOverrideGlobalPermissions` (`fsOverrideGlobalPermissions`);

--
-- Indexes for table `FileSetSavedSearches`
--
ALTER TABLE `FileSetSavedSearches`
 ADD PRIMARY KEY (`fsID`);

--
-- Indexes for table `FileStorageLocations`
--
ALTER TABLE `FileStorageLocations`
 ADD PRIMARY KEY (`fslID`);

--
-- Indexes for table `FileVersionLog`
--
ALTER TABLE `FileVersionLog`
 ADD PRIMARY KEY (`fvlID`);

--
-- Indexes for table `FileVersions`
--
ALTER TABLE `FileVersions`
 ADD PRIMARY KEY (`fID`,`fvID`), ADD KEY `fvExtension` (`fvType`), ADD KEY `fvTitle` (`fvTitle`);

--
-- Indexes for table `Groups`
--
ALTER TABLE `Groups`
 ADD PRIMARY KEY (`gID`), ADD UNIQUE KEY `gName` (`gName`);

--
-- Indexes for table `GroupSetGroups`
--
ALTER TABLE `GroupSetGroups`
 ADD PRIMARY KEY (`gID`,`gsID`);

--
-- Indexes for table `GroupSets`
--
ALTER TABLE `GroupSets`
 ADD PRIMARY KEY (`gsID`);

--
-- Indexes for table `Jobs`
--
ALTER TABLE `Jobs`
 ADD PRIMARY KEY (`jID`);

--
-- Indexes for table `JobSetJobs`
--
ALTER TABLE `JobSetJobs`
 ADD PRIMARY KEY (`jsID`,`jID`);

--
-- Indexes for table `JobSets`
--
ALTER TABLE `JobSets`
 ADD PRIMARY KEY (`jsID`);

--
-- Indexes for table `JobsLog`
--
ALTER TABLE `JobsLog`
 ADD PRIMARY KEY (`jlID`);

--
-- Indexes for table `LayoutPresets`
--
ALTER TABLE `LayoutPresets`
 ADD PRIMARY KEY (`lpID`), ADD UNIQUE KEY `layoutID` (`layoutID`);

--
-- Indexes for table `Layouts`
--
ALTER TABLE `Layouts`
 ADD PRIMARY KEY (`layoutID`);

--
-- Indexes for table `Logs`
--
ALTER TABLE `Logs`
 ADD PRIMARY KEY (`logID`), ADD KEY `logType` (`logType`), ADD KEY `logIsInternal` (`logIsInternal`);

--
-- Indexes for table `MailImporters`
--
ALTER TABLE `MailImporters`
 ADD PRIMARY KEY (`miID`);

--
-- Indexes for table `MailValidationHashes`
--
ALTER TABLE `MailValidationHashes`
 ADD PRIMARY KEY (`mvhID`);

--
-- Indexes for table `Packages`
--
ALTER TABLE `Packages`
 ADD PRIMARY KEY (`pkgID`), ADD UNIQUE KEY `pkgHandle` (`pkgHandle`);

--
-- Indexes for table `PagePaths`
--
ALTER TABLE `PagePaths`
 ADD PRIMARY KEY (`ppID`), ADD KEY `cID` (`cID`), ADD KEY `ppIsCanonical` (`ppIsCanonical`);

--
-- Indexes for table `PagePermissionAssignments`
--
ALTER TABLE `PagePermissionAssignments`
 ADD PRIMARY KEY (`cID`,`pkID`,`paID`);

--
-- Indexes for table `PagePermissionPageTypeAccessList`
--
ALTER TABLE `PagePermissionPageTypeAccessList`
 ADD PRIMARY KEY (`paID`,`peID`);

--
-- Indexes for table `PagePermissionPageTypeAccessListCustom`
--
ALTER TABLE `PagePermissionPageTypeAccessListCustom`
 ADD PRIMARY KEY (`paID`,`peID`,`ctID`);

--
-- Indexes for table `PagePermissionPropertyAccessList`
--
ALTER TABLE `PagePermissionPropertyAccessList`
 ADD PRIMARY KEY (`paID`,`peID`);

--
-- Indexes for table `PagePermissionPropertyAttributeAccessListCustom`
--
ALTER TABLE `PagePermissionPropertyAttributeAccessListCustom`
 ADD PRIMARY KEY (`paID`,`peID`,`akID`);

--
-- Indexes for table `PagePermissionThemeAccessList`
--
ALTER TABLE `PagePermissionThemeAccessList`
 ADD PRIMARY KEY (`paID`,`peID`);

--
-- Indexes for table `PagePermissionThemeAccessListCustom`
--
ALTER TABLE `PagePermissionThemeAccessListCustom`
 ADD PRIMARY KEY (`paID`,`peID`,`ptID`);

--
-- Indexes for table `Pages`
--
ALTER TABLE `Pages`
 ADD PRIMARY KEY (`cID`), ADD KEY `cParentID` (`cParentID`), ADD KEY `cIsActive` (`cIsActive`), ADD KEY `cCheckedOutUID` (`cCheckedOutUID`), ADD KEY `uID` (`uID`), ADD KEY `cPointerID` (`cPointerID`), ADD KEY `cIsTemplate` (`cIsTemplate`), ADD KEY `cIsSystemPage` (`cIsSystemPage`);

--
-- Indexes for table `PageSearchIndex`
--
ALTER TABLE `PageSearchIndex`
 ADD PRIMARY KEY (`cID`), ADD KEY `cDateLastIndexed` (`cDateLastIndexed`), ADD KEY `cDateLastSitemapped` (`cDateLastSitemapped`), ADD KEY `cRequiresReindex` (`cRequiresReindex`), ADD FULLTEXT KEY `cName` (`cName`), ADD FULLTEXT KEY `cDescription` (`cDescription`), ADD FULLTEXT KEY `content` (`content`), ADD FULLTEXT KEY `content2` (`cName`,`cDescription`,`content`);

--
-- Indexes for table `PageStatistics`
--
ALTER TABLE `PageStatistics`
 ADD PRIMARY KEY (`pstID`), ADD KEY `cID` (`cID`), ADD KEY `date` (`date`), ADD KEY `uID` (`uID`);

--
-- Indexes for table `PageThemes`
--
ALTER TABLE `PageThemes`
 ADD PRIMARY KEY (`ptID`), ADD UNIQUE KEY `ptHandle` (`ptHandle`);

--
-- Indexes for table `PageThemeStyles`
--
ALTER TABLE `PageThemeStyles`
 ADD PRIMARY KEY (`ptID`,`ptsHandle`,`ptsType`);

--
-- Indexes for table `PageTypeAttributes`
--
ALTER TABLE `PageTypeAttributes`
 ADD PRIMARY KEY (`ctID`,`akID`);

--
-- Indexes for table `PageTypes`
--
ALTER TABLE `PageTypes`
 ADD PRIMARY KEY (`ctID`), ADD UNIQUE KEY `ctHandle` (`ctHandle`);

--
-- Indexes for table `PageWorkflowProgress`
--
ALTER TABLE `PageWorkflowProgress`
 ADD PRIMARY KEY (`cID`,`wpID`);

--
-- Indexes for table `PermissionAccess`
--
ALTER TABLE `PermissionAccess`
 ADD PRIMARY KEY (`paID`);

--
-- Indexes for table `PermissionAccessEntities`
--
ALTER TABLE `PermissionAccessEntities`
 ADD PRIMARY KEY (`peID`), ADD KEY `petID` (`petID`);

--
-- Indexes for table `PermissionAccessEntityGroups`
--
ALTER TABLE `PermissionAccessEntityGroups`
 ADD PRIMARY KEY (`pegID`), ADD KEY `gID` (`gID`);

--
-- Indexes for table `PermissionAccessEntityGroupSets`
--
ALTER TABLE `PermissionAccessEntityGroupSets`
 ADD PRIMARY KEY (`peID`,`gsID`), ADD KEY `gsID` (`gsID`);

--
-- Indexes for table `PermissionAccessEntityTypeCategories`
--
ALTER TABLE `PermissionAccessEntityTypeCategories`
 ADD PRIMARY KEY (`petID`,`pkCategoryID`);

--
-- Indexes for table `PermissionAccessEntityTypes`
--
ALTER TABLE `PermissionAccessEntityTypes`
 ADD PRIMARY KEY (`petID`);

--
-- Indexes for table `PermissionAccessEntityUsers`
--
ALTER TABLE `PermissionAccessEntityUsers`
 ADD PRIMARY KEY (`peID`,`uID`), ADD KEY `uID` (`uID`);

--
-- Indexes for table `PermissionAccessList`
--
ALTER TABLE `PermissionAccessList`
 ADD PRIMARY KEY (`paID`,`peID`), ADD KEY `accessType` (`accessType`), ADD KEY `peID` (`peID`), ADD KEY `peID_accessType` (`peID`,`accessType`);

--
-- Indexes for table `PermissionAccessWorkflows`
--
ALTER TABLE `PermissionAccessWorkflows`
 ADD PRIMARY KEY (`paID`,`wfID`);

--
-- Indexes for table `PermissionAssignments`
--
ALTER TABLE `PermissionAssignments`
 ADD PRIMARY KEY (`paID`,`pkID`), ADD KEY `pkID` (`pkID`);

--
-- Indexes for table `PermissionDurationObjects`
--
ALTER TABLE `PermissionDurationObjects`
 ADD PRIMARY KEY (`pdID`);

--
-- Indexes for table `PermissionKeyCategories`
--
ALTER TABLE `PermissionKeyCategories`
 ADD PRIMARY KEY (`pkCategoryID`);

--
-- Indexes for table `PermissionKeys`
--
ALTER TABLE `PermissionKeys`
 ADD PRIMARY KEY (`pkID`), ADD UNIQUE KEY `akHandle` (`pkHandle`);

--
-- Indexes for table `PileContents`
--
ALTER TABLE `PileContents`
 ADD PRIMARY KEY (`pcID`);

--
-- Indexes for table `Piles`
--
ALTER TABLE `Piles`
 ADD PRIMARY KEY (`pID`);

--
-- Indexes for table `QueueMessages`
--
ALTER TABLE `QueueMessages`
 ADD PRIMARY KEY (`message_id`), ADD UNIQUE KEY `message_handle` (`handle`), ADD KEY `message_queueid` (`queue_id`);

--
-- Indexes for table `QueuePageDuplicationRelations`
--
ALTER TABLE `QueuePageDuplicationRelations`
 ADD PRIMARY KEY (`cID`,`originalCID`);

--
-- Indexes for table `Queues`
--
ALTER TABLE `Queues`
 ADD PRIMARY KEY (`queue_id`);

--
-- Indexes for table `SignupRequests`
--
ALTER TABLE `SignupRequests`
 ADD PRIMARY KEY (`id`), ADD KEY `index_ipFrom` (`ipFrom`);

--
-- Indexes for table `Stacks`
--
ALTER TABLE `Stacks`
 ADD PRIMARY KEY (`stID`), ADD KEY `stType` (`stType`), ADD KEY `stName` (`stName`);

--
-- Indexes for table `SystemAntispamLibraries`
--
ALTER TABLE `SystemAntispamLibraries`
 ADD PRIMARY KEY (`saslHandle`);

--
-- Indexes for table `SystemCaptchaLibraries`
--
ALTER TABLE `SystemCaptchaLibraries`
 ADD PRIMARY KEY (`sclHandle`);

--
-- Indexes for table `SystemNotifications`
--
ALTER TABLE `SystemNotifications`
 ADD PRIMARY KEY (`snID`);

--
-- Indexes for table `UserAttributeKeys`
--
ALTER TABLE `UserAttributeKeys`
 ADD PRIMARY KEY (`akID`);

--
-- Indexes for table `UserAttributeValues`
--
ALTER TABLE `UserAttributeValues`
 ADD PRIMARY KEY (`uID`,`akID`,`avID`);

--
-- Indexes for table `UserBannedIPs`
--
ALTER TABLE `UserBannedIPs`
 ADD PRIMARY KEY (`ipFrom`,`ipTo`), ADD KEY `ipFrom` (`ipFrom`), ADD KEY `ipTo` (`ipTo`);

--
-- Indexes for table `UserGroups`
--
ALTER TABLE `UserGroups`
 ADD PRIMARY KEY (`uID`,`gID`), ADD KEY `uID` (`uID`), ADD KEY `gID` (`gID`);

--
-- Indexes for table `UserOpenIDs`
--
ALTER TABLE `UserOpenIDs`
 ADD PRIMARY KEY (`uOpenID`), ADD KEY `uID` (`uID`);

--
-- Indexes for table `UserPermissionAssignGroupAccessList`
--
ALTER TABLE `UserPermissionAssignGroupAccessList`
 ADD PRIMARY KEY (`paID`,`peID`);

--
-- Indexes for table `UserPermissionAssignGroupAccessListCustom`
--
ALTER TABLE `UserPermissionAssignGroupAccessListCustom`
 ADD PRIMARY KEY (`paID`,`peID`,`gID`);

--
-- Indexes for table `UserPermissionEditPropertyAccessList`
--
ALTER TABLE `UserPermissionEditPropertyAccessList`
 ADD PRIMARY KEY (`paID`,`peID`);

--
-- Indexes for table `UserPermissionEditPropertyAttributeAccessListCustom`
--
ALTER TABLE `UserPermissionEditPropertyAttributeAccessListCustom`
 ADD PRIMARY KEY (`paID`,`peID`,`akID`);

--
-- Indexes for table `UserPermissionUserSearchAccessList`
--
ALTER TABLE `UserPermissionUserSearchAccessList`
 ADD PRIMARY KEY (`paID`,`peID`);

--
-- Indexes for table `UserPermissionUserSearchAccessListCustom`
--
ALTER TABLE `UserPermissionUserSearchAccessListCustom`
 ADD PRIMARY KEY (`paID`,`peID`,`gID`);

--
-- Indexes for table `UserPermissionViewAttributeAccessList`
--
ALTER TABLE `UserPermissionViewAttributeAccessList`
 ADD PRIMARY KEY (`paID`,`peID`);

--
-- Indexes for table `UserPermissionViewAttributeAccessListCustom`
--
ALTER TABLE `UserPermissionViewAttributeAccessListCustom`
 ADD PRIMARY KEY (`paID`,`peID`,`akID`);

--
-- Indexes for table `UserPointHistory`
--
ALTER TABLE `UserPointHistory`
 ADD PRIMARY KEY (`upID`);

--
-- Indexes for table `UserPrivateMessages`
--
ALTER TABLE `UserPrivateMessages`
 ADD PRIMARY KEY (`msgID`);

--
-- Indexes for table `UserPrivateMessagesTo`
--
ALTER TABLE `UserPrivateMessagesTo`
 ADD PRIMARY KEY (`msgID`,`uID`,`uAuthorID`), ADD KEY `uID` (`uID`), ADD KEY `uAuthorID` (`uAuthorID`), ADD KEY `msgFolderID` (`msgMailboxID`), ADD KEY `msgIsNew` (`msgIsNew`);

--
-- Indexes for table `Users`
--
ALTER TABLE `Users`
 ADD PRIMARY KEY (`uID`), ADD UNIQUE KEY `uName` (`uName`);

--
-- Indexes for table `UserSearchIndexAttributes`
--
ALTER TABLE `UserSearchIndexAttributes`
 ADD PRIMARY KEY (`uID`);

--
-- Indexes for table `UsersFriends`
--
ALTER TABLE `UsersFriends`
 ADD PRIMARY KEY (`ufID`);

--
-- Indexes for table `UserValidationHashes`
--
ALTER TABLE `UserValidationHashes`
 ADD PRIMARY KEY (`uvhID`);

--
-- Indexes for table `WorkflowProgress`
--
ALTER TABLE `WorkflowProgress`
 ADD PRIMARY KEY (`wpID`), ADD KEY `wrID` (`wrID`), ADD KEY `wpIsCompleted` (`wpIsCompleted`);

--
-- Indexes for table `WorkflowProgressCategories`
--
ALTER TABLE `WorkflowProgressCategories`
 ADD PRIMARY KEY (`wpCategoryID`);

--
-- Indexes for table `WorkflowProgressHistory`
--
ALTER TABLE `WorkflowProgressHistory`
 ADD PRIMARY KEY (`wphID`);

--
-- Indexes for table `WorkflowRequestObjects`
--
ALTER TABLE `WorkflowRequestObjects`
 ADD PRIMARY KEY (`wrID`);

--
-- Indexes for table `Workflows`
--
ALTER TABLE `Workflows`
 ADD PRIMARY KEY (`wfID`), ADD UNIQUE KEY `wfName` (`wfName`);

--
-- Indexes for table `WorkflowTypes`
--
ALTER TABLE `WorkflowTypes`
 ADD PRIMARY KEY (`wftID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Areas`
--
ALTER TABLE `Areas`
MODIFY `arID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=112;
--
-- AUTO_INCREMENT for table `atAddressCustomCountries`
--
ALTER TABLE `atAddressCustomCountries`
MODIFY `atAddressCustomCountryID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `atSelectOptions`
--
ALTER TABLE `atSelectOptions`
MODIFY `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `AttributeKeyCategories`
--
ALTER TABLE `AttributeKeyCategories`
MODIFY `akCategoryID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `AttributeKeys`
--
ALTER TABLE `AttributeKeys`
MODIFY `akID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `AttributeSets`
--
ALTER TABLE `AttributeSets`
MODIFY `asID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `AttributeTypes`
--
ALTER TABLE `AttributeTypes`
MODIFY `atID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `AttributeValues`
--
ALTER TABLE `AttributeValues`
MODIFY `avID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=167;
--
-- AUTO_INCREMENT for table `BlockRelations`
--
ALTER TABLE `BlockRelations`
MODIFY `brID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `Blocks`
--
ALTER TABLE `Blocks`
MODIFY `bID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=99;
--
-- AUTO_INCREMENT for table `BlockTypes`
--
ALTER TABLE `BlockTypes`
MODIFY `btID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `btFormAnswers`
--
ALTER TABLE `btFormAnswers`
MODIFY `aID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `btFormAnswerSet`
--
ALTER TABLE `btFormAnswerSet`
MODIFY `asID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `btFormQuestions`
--
ALTER TABLE `btFormQuestions`
MODIFY `qID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `btGuestBookEntries`
--
ALTER TABLE `btGuestBookEntries`
MODIFY `entryID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `btResponsiveSliderImg`
--
ALTER TABLE `btResponsiveSliderImg`
MODIFY `responsivesliderImgId` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `btSlideshowImg`
--
ALTER TABLE `btSlideshowImg`
MODIFY `slideshowImgId` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `btSurveyOptions`
--
ALTER TABLE `btSurveyOptions`
MODIFY `optionID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `btSurveyResults`
--
ALTER TABLE `btSurveyResults`
MODIFY `resultID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Collections`
--
ALTER TABLE `Collections`
MODIFY `cID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=146;
--
-- AUTO_INCREMENT for table `CollectionVersionAreaLayouts`
--
ALTER TABLE `CollectionVersionAreaLayouts`
MODIFY `cvalID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ComposerContentLayout`
--
ALTER TABLE `ComposerContentLayout`
MODIFY `cclID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `CustomStylePresets`
--
ALTER TABLE `CustomStylePresets`
MODIFY `cspID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `CustomStyleRules`
--
ALTER TABLE `CustomStyleRules`
MODIFY `csrID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `DownloadStatistics`
--
ALTER TABLE `DownloadStatistics`
MODIFY `dsID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Files`
--
ALTER TABLE `Files`
MODIFY `fID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `FileSetFiles`
--
ALTER TABLE `FileSetFiles`
MODIFY `fsfID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `FileSets`
--
ALTER TABLE `FileSets`
MODIFY `fsID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `FileVersionLog`
--
ALTER TABLE `FileVersionLog`
MODIFY `fvlID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `Groups`
--
ALTER TABLE `Groups`
MODIFY `gID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `GroupSets`
--
ALTER TABLE `GroupSets`
MODIFY `gsID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Jobs`
--
ALTER TABLE `Jobs`
MODIFY `jID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `JobSets`
--
ALTER TABLE `JobSets`
MODIFY `jsID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `JobsLog`
--
ALTER TABLE `JobsLog`
MODIFY `jlID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `LayoutPresets`
--
ALTER TABLE `LayoutPresets`
MODIFY `lpID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Layouts`
--
ALTER TABLE `Layouts`
MODIFY `layoutID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Logs`
--
ALTER TABLE `Logs`
MODIFY `logID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=98;
--
-- AUTO_INCREMENT for table `MailImporters`
--
ALTER TABLE `MailImporters`
MODIFY `miID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `MailValidationHashes`
--
ALTER TABLE `MailValidationHashes`
MODIFY `mvhID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Packages`
--
ALTER TABLE `Packages`
MODIFY `pkgID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `PagePaths`
--
ALTER TABLE `PagePaths`
MODIFY `ppID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=189;
--
-- AUTO_INCREMENT for table `PageStatistics`
--
ALTER TABLE `PageStatistics`
MODIFY `pstID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1166;
--
-- AUTO_INCREMENT for table `PageThemes`
--
ALTER TABLE `PageThemes`
MODIFY `ptID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `PageTypes`
--
ALTER TABLE `PageTypes`
MODIFY `ctID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `PermissionAccess`
--
ALTER TABLE `PermissionAccess`
MODIFY `paID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=69;
--
-- AUTO_INCREMENT for table `PermissionAccessEntities`
--
ALTER TABLE `PermissionAccessEntities`
MODIFY `peID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `PermissionAccessEntityGroups`
--
ALTER TABLE `PermissionAccessEntityGroups`
MODIFY `pegID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `PermissionAccessEntityTypes`
--
ALTER TABLE `PermissionAccessEntityTypes`
MODIFY `petID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `PermissionDurationObjects`
--
ALTER TABLE `PermissionDurationObjects`
MODIFY `pdID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `PermissionKeyCategories`
--
ALTER TABLE `PermissionKeyCategories`
MODIFY `pkCategoryID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `PermissionKeys`
--
ALTER TABLE `PermissionKeys`
MODIFY `pkID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=73;
--
-- AUTO_INCREMENT for table `PileContents`
--
ALTER TABLE `PileContents`
MODIFY `pcID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Piles`
--
ALTER TABLE `Piles`
MODIFY `pID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `QueueMessages`
--
ALTER TABLE `QueueMessages`
MODIFY `message_id` int(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Queues`
--
ALTER TABLE `Queues`
MODIFY `queue_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `SignupRequests`
--
ALTER TABLE `SignupRequests`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Stacks`
--
ALTER TABLE `Stacks`
MODIFY `stID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `SystemNotifications`
--
ALTER TABLE `SystemNotifications`
MODIFY `snID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `UserPointHistory`
--
ALTER TABLE `UserPointHistory`
MODIFY `upID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `UserPrivateMessages`
--
ALTER TABLE `UserPrivateMessages`
MODIFY `msgID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Users`
--
ALTER TABLE `Users`
MODIFY `uID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `UsersFriends`
--
ALTER TABLE `UsersFriends`
MODIFY `ufID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `UserValidationHashes`
--
ALTER TABLE `UserValidationHashes`
MODIFY `uvhID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `WorkflowProgress`
--
ALTER TABLE `WorkflowProgress`
MODIFY `wpID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `WorkflowProgressCategories`
--
ALTER TABLE `WorkflowProgressCategories`
MODIFY `wpCategoryID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `WorkflowProgressHistory`
--
ALTER TABLE `WorkflowProgressHistory`
MODIFY `wphID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `WorkflowRequestObjects`
--
ALTER TABLE `WorkflowRequestObjects`
MODIFY `wrID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Workflows`
--
ALTER TABLE `Workflows`
MODIFY `wfID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `WorkflowTypes`
--
ALTER TABLE `WorkflowTypes`
MODIFY `wftID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
