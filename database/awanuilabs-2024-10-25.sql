-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.27-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table awanuilabs.wp_commentmeta
DROP TABLE IF EXISTS `wp_commentmeta`;
CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Dumping data for table awanuilabs.wp_commentmeta: ~0 rows (approximately)
DELETE FROM `wp_commentmeta`;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;

-- Dumping structure for table awanuilabs.wp_comments
DROP TABLE IF EXISTS `wp_comments`;
CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT 0,
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT 0,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Dumping data for table awanuilabs.wp_comments: ~0 rows (approximately)
DELETE FROM `wp_comments`;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
	(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2024-10-22 13:16:43', '2024-10-22 13:16:43', 'Kia ora, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href="https://en.gravatar.com/">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;

-- Dumping structure for table awanuilabs.wp_links
DROP TABLE IF EXISTS `wp_links`;
CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Dumping data for table awanuilabs.wp_links: ~0 rows (approximately)
DELETE FROM `wp_links`;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;

-- Dumping structure for table awanuilabs.wp_options
DROP TABLE IF EXISTS `wp_options`;
CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=403 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Dumping data for table awanuilabs.wp_options: ~146 rows (approximately)
DELETE FROM `wp_options`;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
	(1, 'cron', 'a:11:{i:1729797411;a:1:{s:34:"wp_privacy_delete_old_export_files";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1729819019;a:1:{s:21:"wp_update_user_counts";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1729822603;a:1:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1729824403;a:1:{s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1729826203;a:1:{s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1729862211;a:1:{s:32:"recovery_mode_clean_expired_keys";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1729862219;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1729862225;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1730213993;a:1:{s:30:"wp_delete_temp_updater_backups";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"weekly";s:4:"args";a:0:{}s:8:"interval";i:604800;}}}i:1730294211;a:1:{s:30:"wp_site_health_scheduled_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"weekly";s:4:"args";a:0:{}s:8:"interval";i:604800;}}}s:7:"version";i:2;}', 'auto'),
	(2, 'siteurl', 'https://loc.awanuilabs-directories.com', 'on'),
	(3, 'home', 'https://loc.awanuilabs-directories.com', 'on'),
	(4, 'blogname', 'Awanui Labs', 'on'),
	(5, 'blogdescription', '', 'on'),
	(6, 'users_can_register', '0', 'on'),
	(7, 'admin_email', 'noe.mermida@gmail.com', 'on'),
	(8, 'start_of_week', '1', 'on'),
	(9, 'use_balanceTags', '0', 'on'),
	(10, 'use_smilies', '1', 'on'),
	(11, 'require_name_email', '1', 'on'),
	(12, 'comments_notify', '1', 'on'),
	(13, 'posts_per_rss', '10', 'on'),
	(14, 'rss_use_excerpt', '0', 'on'),
	(15, 'mailserver_url', 'mail.example.com', 'on'),
	(16, 'mailserver_login', 'login@example.com', 'on'),
	(17, 'mailserver_pass', 'password', 'on'),
	(18, 'mailserver_port', '110', 'on'),
	(19, 'default_category', '1', 'on'),
	(20, 'default_comment_status', 'open', 'on'),
	(21, 'default_ping_status', 'open', 'on'),
	(22, 'default_pingback_flag', '1', 'on'),
	(23, 'posts_per_page', '10', 'on'),
	(24, 'date_format', 'j F Y', 'on'),
	(25, 'time_format', 'g:i a', 'on'),
	(26, 'links_updated_date_format', 'F j, Y g:i a', 'on'),
	(27, 'comment_moderation', '0', 'on'),
	(28, 'moderation_notify', '1', 'on'),
	(29, 'permalink_structure', '/%postname%/', 'on'),
	(30, 'rewrite_rules', 'a:120:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:17:"^wp-sitemap\\.xml$";s:23:"index.php?sitemap=index";s:17:"^wp-sitemap\\.xsl$";s:36:"index.php?sitemap-stylesheet=sitemap";s:23:"^wp-sitemap-index\\.xsl$";s:34:"index.php?sitemap-stylesheet=index";s:48:"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$";s:75:"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]";s:34:"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$";s:47:"index.php?sitemap=$matches[1]&paged=$matches[2]";s:47:"region/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:45:"index.php?region=$matches[1]&feed=$matches[2]";s:42:"region/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:45:"index.php?region=$matches[1]&feed=$matches[2]";s:23:"region/([^/]+)/embed/?$";s:39:"index.php?region=$matches[1]&embed=true";s:35:"region/([^/]+)/page/?([0-9]{1,})/?$";s:46:"index.php?region=$matches[1]&paged=$matches[2]";s:17:"region/([^/]+)/?$";s:28:"index.php?region=$matches[1]";s:48:"service/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?service=$matches[1]&feed=$matches[2]";s:43:"service/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?service=$matches[1]&feed=$matches[2]";s:24:"service/([^/]+)/embed/?$";s:40:"index.php?service=$matches[1]&embed=true";s:36:"service/([^/]+)/page/?([0-9]{1,})/?$";s:47:"index.php?service=$matches[1]&paged=$matches[2]";s:18:"service/([^/]+)/?$";s:29:"index.php?service=$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:45:"collection-centre/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:55:"collection-centre/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:75:"collection-centre/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"collection-centre/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"collection-centre/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:51:"collection-centre/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:34:"collection-centre/([^/]+)/embed/?$";s:50:"index.php?collection_centre=$matches[1]&embed=true";s:38:"collection-centre/([^/]+)/trackback/?$";s:44:"index.php?collection_centre=$matches[1]&tb=1";s:46:"collection-centre/([^/]+)/page/?([0-9]{1,})/?$";s:57:"index.php?collection_centre=$matches[1]&paged=$matches[2]";s:53:"collection-centre/([^/]+)/comment-page-([0-9]{1,})/?$";s:57:"index.php?collection_centre=$matches[1]&cpage=$matches[2]";s:42:"collection-centre/([^/]+)(?:/([0-9]+))?/?$";s:56:"index.php?collection_centre=$matches[1]&page=$matches[2]";s:34:"collection-centre/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:44:"collection-centre/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:64:"collection-centre/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"collection-centre/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"collection-centre/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:40:"collection-centre/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:13:"favicon\\.ico$";s:19:"index.php?favicon=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"([^/]+)/embed/?$";s:37:"index.php?name=$matches[1]&embed=true";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:24:"([^/]+)(?:/([0-9]+))?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:22:"[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";}', 'on'),
	(31, 'hack_file', '0', 'on'),
	(32, 'blog_charset', 'UTF-8', 'on'),
	(33, 'moderation_keys', '', 'off'),
	(34, 'active_plugins', 'a:1:{i:0;s:55:"collection-centre-details/collection-centre-details.php";}', 'on'),
	(35, 'category_base', '', 'on'),
	(36, 'ping_sites', 'http://rpc.pingomatic.com/', 'on'),
	(37, 'comment_max_links', '2', 'on'),
	(38, 'gmt_offset', '0', 'on'),
	(39, 'default_email_category', '1', 'on'),
	(40, 'recently_edited', '', 'off'),
	(41, 'template', 'awanuilabs', 'on'),
	(42, 'stylesheet', 'awanuilabs', 'on'),
	(43, 'comment_registration', '0', 'on'),
	(44, 'html_type', 'text/html', 'on'),
	(45, 'use_trackback', '0', 'on'),
	(46, 'default_role', 'subscriber', 'on'),
	(47, 'db_version', '57155', 'on'),
	(48, 'uploads_use_yearmonth_folders', '1', 'on'),
	(49, 'upload_path', '', 'on'),
	(50, 'blog_public', '1', 'on'),
	(51, 'default_link_category', '2', 'on'),
	(52, 'show_on_front', 'posts', 'on'),
	(53, 'tag_base', '', 'on'),
	(54, 'show_avatars', '1', 'on'),
	(55, 'avatar_rating', 'G', 'on'),
	(56, 'upload_url_path', '', 'on'),
	(57, 'thumbnail_size_w', '150', 'on'),
	(58, 'thumbnail_size_h', '150', 'on'),
	(59, 'thumbnail_crop', '1', 'on'),
	(60, 'medium_size_w', '300', 'on'),
	(61, 'medium_size_h', '300', 'on'),
	(62, 'avatar_default', 'mystery', 'on'),
	(63, 'large_size_w', '1024', 'on'),
	(64, 'large_size_h', '1024', 'on'),
	(65, 'image_default_link_type', 'none', 'on'),
	(66, 'image_default_size', '', 'on'),
	(67, 'image_default_align', '', 'on'),
	(68, 'close_comments_for_old_posts', '0', 'on'),
	(69, 'close_comments_days_old', '14', 'on'),
	(70, 'thread_comments', '1', 'on'),
	(71, 'thread_comments_depth', '5', 'on'),
	(72, 'page_comments', '0', 'on'),
	(73, 'comments_per_page', '50', 'on'),
	(74, 'default_comments_page', 'newest', 'on'),
	(75, 'comment_order', 'asc', 'on'),
	(76, 'sticky_posts', 'a:0:{}', 'on'),
	(77, 'widget_categories', 'a:0:{}', 'on'),
	(78, 'widget_text', 'a:0:{}', 'on'),
	(79, 'widget_rss', 'a:0:{}', 'on'),
	(80, 'uninstall_plugins', 'a:0:{}', 'off'),
	(81, 'timezone_string', '', 'on'),
	(82, 'page_for_posts', '0', 'on'),
	(83, 'page_on_front', '0', 'on'),
	(84, 'default_post_format', '0', 'on'),
	(85, 'link_manager_enabled', '0', 'on'),
	(86, 'finished_splitting_shared_terms', '1', 'on'),
	(87, 'site_icon', '0', 'on'),
	(88, 'medium_large_size_w', '768', 'on'),
	(89, 'medium_large_size_h', '0', 'on'),
	(90, 'wp_page_for_privacy_policy', '3', 'on'),
	(91, 'show_comments_cookies_opt_in', '1', 'on'),
	(92, 'admin_email_lifespan', '1745155003', 'on'),
	(93, 'disallowed_keys', '', 'off'),
	(94, 'comment_previously_approved', '1', 'on'),
	(95, 'auto_plugin_theme_update_emails', 'a:0:{}', 'off'),
	(96, 'auto_update_core_dev', 'enabled', 'on'),
	(97, 'auto_update_core_minor', 'enabled', 'on'),
	(98, 'auto_update_core_major', 'enabled', 'on'),
	(99, 'wp_force_deactivated_plugins', 'a:0:{}', 'on'),
	(100, 'wp_attachment_pages_enabled', '0', 'on'),
	(101, 'initial_db_version', '57155', 'on'),
	(102, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'auto'),
	(103, 'fresh_site', '1', 'auto'),
	(104, 'WPLANG', 'en_NZ', 'auto'),
	(105, 'user_count', '1', 'off'),
	(106, 'widget_block', 'a:6:{i:2;a:1:{s:7:"content";s:19:"<!-- wp:search /-->";}i:3;a:1:{s:7:"content";s:154:"<!-- wp:group --><div class="wp-block-group"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->";}i:4;a:1:{s:7:"content";s:227:"<!-- wp:group --><div class="wp-block-group"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {"displayAvatar":false,"displayDate":false,"displayExcerpt":false} /--></div><!-- /wp:group -->";}i:5;a:1:{s:7:"content";s:146:"<!-- wp:group --><div class="wp-block-group"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->";}i:6;a:1:{s:7:"content";s:150:"<!-- wp:group --><div class="wp-block-group"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->";}s:12:"_multiwidget";i:1;}', 'auto'),
	(107, 'sidebars_widgets', 'a:2:{s:19:"wp_inactive_widgets";a:5:{i:0;s:7:"block-2";i:1;s:7:"block-3";i:2;s:7:"block-4";i:3;s:7:"block-5";i:4;s:7:"block-6";}s:13:"array_version";i:3;}', 'auto'),
	(108, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'auto'),
	(109, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'auto'),
	(110, 'widget_archives', 'a:1:{s:12:"_multiwidget";i:1;}', 'auto'),
	(111, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'auto'),
	(112, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'auto'),
	(113, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'auto'),
	(114, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'auto'),
	(115, 'widget_meta', 'a:1:{s:12:"_multiwidget";i:1;}', 'auto'),
	(116, 'widget_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'auto'),
	(117, 'widget_recent-posts', 'a:1:{s:12:"_multiwidget";i:1;}', 'auto'),
	(118, 'widget_recent-comments', 'a:1:{s:12:"_multiwidget";i:1;}', 'auto'),
	(119, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'auto'),
	(120, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'auto'),
	(121, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'auto'),
	(122, '_transient_wp_core_block_css_files', 'a:2:{s:7:"version";s:5:"6.6.2";s:5:"files";a:496:{i:0;s:23:"archives/editor-rtl.css";i:1;s:27:"archives/editor-rtl.min.css";i:2;s:19:"archives/editor.css";i:3;s:23:"archives/editor.min.css";i:4;s:22:"archives/style-rtl.css";i:5;s:26:"archives/style-rtl.min.css";i:6;s:18:"archives/style.css";i:7;s:22:"archives/style.min.css";i:8;s:20:"audio/editor-rtl.css";i:9;s:24:"audio/editor-rtl.min.css";i:10;s:16:"audio/editor.css";i:11;s:20:"audio/editor.min.css";i:12;s:19:"audio/style-rtl.css";i:13;s:23:"audio/style-rtl.min.css";i:14;s:15:"audio/style.css";i:15;s:19:"audio/style.min.css";i:16;s:19:"audio/theme-rtl.css";i:17;s:23:"audio/theme-rtl.min.css";i:18;s:15:"audio/theme.css";i:19;s:19:"audio/theme.min.css";i:20;s:21:"avatar/editor-rtl.css";i:21;s:25:"avatar/editor-rtl.min.css";i:22;s:17:"avatar/editor.css";i:23;s:21:"avatar/editor.min.css";i:24;s:20:"avatar/style-rtl.css";i:25;s:24:"avatar/style-rtl.min.css";i:26;s:16:"avatar/style.css";i:27;s:20:"avatar/style.min.css";i:28;s:21:"button/editor-rtl.css";i:29;s:25:"button/editor-rtl.min.css";i:30;s:17:"button/editor.css";i:31;s:21:"button/editor.min.css";i:32;s:20:"button/style-rtl.css";i:33;s:24:"button/style-rtl.min.css";i:34;s:16:"button/style.css";i:35;s:20:"button/style.min.css";i:36;s:22:"buttons/editor-rtl.css";i:37;s:26:"buttons/editor-rtl.min.css";i:38;s:18:"buttons/editor.css";i:39;s:22:"buttons/editor.min.css";i:40;s:21:"buttons/style-rtl.css";i:41;s:25:"buttons/style-rtl.min.css";i:42;s:17:"buttons/style.css";i:43;s:21:"buttons/style.min.css";i:44;s:22:"calendar/style-rtl.css";i:45;s:26:"calendar/style-rtl.min.css";i:46;s:18:"calendar/style.css";i:47;s:22:"calendar/style.min.css";i:48;s:25:"categories/editor-rtl.css";i:49;s:29:"categories/editor-rtl.min.css";i:50;s:21:"categories/editor.css";i:51;s:25:"categories/editor.min.css";i:52;s:24:"categories/style-rtl.css";i:53;s:28:"categories/style-rtl.min.css";i:54;s:20:"categories/style.css";i:55;s:24:"categories/style.min.css";i:56;s:19:"code/editor-rtl.css";i:57;s:23:"code/editor-rtl.min.css";i:58;s:15:"code/editor.css";i:59;s:19:"code/editor.min.css";i:60;s:18:"code/style-rtl.css";i:61;s:22:"code/style-rtl.min.css";i:62;s:14:"code/style.css";i:63;s:18:"code/style.min.css";i:64;s:18:"code/theme-rtl.css";i:65;s:22:"code/theme-rtl.min.css";i:66;s:14:"code/theme.css";i:67;s:18:"code/theme.min.css";i:68;s:22:"columns/editor-rtl.css";i:69;s:26:"columns/editor-rtl.min.css";i:70;s:18:"columns/editor.css";i:71;s:22:"columns/editor.min.css";i:72;s:21:"columns/style-rtl.css";i:73;s:25:"columns/style-rtl.min.css";i:74;s:17:"columns/style.css";i:75;s:21:"columns/style.min.css";i:76;s:29:"comment-content/style-rtl.css";i:77;s:33:"comment-content/style-rtl.min.css";i:78;s:25:"comment-content/style.css";i:79;s:29:"comment-content/style.min.css";i:80;s:30:"comment-template/style-rtl.css";i:81;s:34:"comment-template/style-rtl.min.css";i:82;s:26:"comment-template/style.css";i:83;s:30:"comment-template/style.min.css";i:84;s:42:"comments-pagination-numbers/editor-rtl.css";i:85;s:46:"comments-pagination-numbers/editor-rtl.min.css";i:86;s:38:"comments-pagination-numbers/editor.css";i:87;s:42:"comments-pagination-numbers/editor.min.css";i:88;s:34:"comments-pagination/editor-rtl.css";i:89;s:38:"comments-pagination/editor-rtl.min.css";i:90;s:30:"comments-pagination/editor.css";i:91;s:34:"comments-pagination/editor.min.css";i:92;s:33:"comments-pagination/style-rtl.css";i:93;s:37:"comments-pagination/style-rtl.min.css";i:94;s:29:"comments-pagination/style.css";i:95;s:33:"comments-pagination/style.min.css";i:96;s:29:"comments-title/editor-rtl.css";i:97;s:33:"comments-title/editor-rtl.min.css";i:98;s:25:"comments-title/editor.css";i:99;s:29:"comments-title/editor.min.css";i:100;s:23:"comments/editor-rtl.css";i:101;s:27:"comments/editor-rtl.min.css";i:102;s:19:"comments/editor.css";i:103;s:23:"comments/editor.min.css";i:104;s:22:"comments/style-rtl.css";i:105;s:26:"comments/style-rtl.min.css";i:106;s:18:"comments/style.css";i:107;s:22:"comments/style.min.css";i:108;s:20:"cover/editor-rtl.css";i:109;s:24:"cover/editor-rtl.min.css";i:110;s:16:"cover/editor.css";i:111;s:20:"cover/editor.min.css";i:112;s:19:"cover/style-rtl.css";i:113;s:23:"cover/style-rtl.min.css";i:114;s:15:"cover/style.css";i:115;s:19:"cover/style.min.css";i:116;s:22:"details/editor-rtl.css";i:117;s:26:"details/editor-rtl.min.css";i:118;s:18:"details/editor.css";i:119;s:22:"details/editor.min.css";i:120;s:21:"details/style-rtl.css";i:121;s:25:"details/style-rtl.min.css";i:122;s:17:"details/style.css";i:123;s:21:"details/style.min.css";i:124;s:20:"embed/editor-rtl.css";i:125;s:24:"embed/editor-rtl.min.css";i:126;s:16:"embed/editor.css";i:127;s:20:"embed/editor.min.css";i:128;s:19:"embed/style-rtl.css";i:129;s:23:"embed/style-rtl.min.css";i:130;s:15:"embed/style.css";i:131;s:19:"embed/style.min.css";i:132;s:19:"embed/theme-rtl.css";i:133;s:23:"embed/theme-rtl.min.css";i:134;s:15:"embed/theme.css";i:135;s:19:"embed/theme.min.css";i:136;s:19:"file/editor-rtl.css";i:137;s:23:"file/editor-rtl.min.css";i:138;s:15:"file/editor.css";i:139;s:19:"file/editor.min.css";i:140;s:18:"file/style-rtl.css";i:141;s:22:"file/style-rtl.min.css";i:142;s:14:"file/style.css";i:143;s:18:"file/style.min.css";i:144;s:23:"footnotes/style-rtl.css";i:145;s:27:"footnotes/style-rtl.min.css";i:146;s:19:"footnotes/style.css";i:147;s:23:"footnotes/style.min.css";i:148;s:23:"freeform/editor-rtl.css";i:149;s:27:"freeform/editor-rtl.min.css";i:150;s:19:"freeform/editor.css";i:151;s:23:"freeform/editor.min.css";i:152;s:22:"gallery/editor-rtl.css";i:153;s:26:"gallery/editor-rtl.min.css";i:154;s:18:"gallery/editor.css";i:155;s:22:"gallery/editor.min.css";i:156;s:21:"gallery/style-rtl.css";i:157;s:25:"gallery/style-rtl.min.css";i:158;s:17:"gallery/style.css";i:159;s:21:"gallery/style.min.css";i:160;s:21:"gallery/theme-rtl.css";i:161;s:25:"gallery/theme-rtl.min.css";i:162;s:17:"gallery/theme.css";i:163;s:21:"gallery/theme.min.css";i:164;s:20:"group/editor-rtl.css";i:165;s:24:"group/editor-rtl.min.css";i:166;s:16:"group/editor.css";i:167;s:20:"group/editor.min.css";i:168;s:19:"group/style-rtl.css";i:169;s:23:"group/style-rtl.min.css";i:170;s:15:"group/style.css";i:171;s:19:"group/style.min.css";i:172;s:19:"group/theme-rtl.css";i:173;s:23:"group/theme-rtl.min.css";i:174;s:15:"group/theme.css";i:175;s:19:"group/theme.min.css";i:176;s:21:"heading/style-rtl.css";i:177;s:25:"heading/style-rtl.min.css";i:178;s:17:"heading/style.css";i:179;s:21:"heading/style.min.css";i:180;s:19:"html/editor-rtl.css";i:181;s:23:"html/editor-rtl.min.css";i:182;s:15:"html/editor.css";i:183;s:19:"html/editor.min.css";i:184;s:20:"image/editor-rtl.css";i:185;s:24:"image/editor-rtl.min.css";i:186;s:16:"image/editor.css";i:187;s:20:"image/editor.min.css";i:188;s:19:"image/style-rtl.css";i:189;s:23:"image/style-rtl.min.css";i:190;s:15:"image/style.css";i:191;s:19:"image/style.min.css";i:192;s:19:"image/theme-rtl.css";i:193;s:23:"image/theme-rtl.min.css";i:194;s:15:"image/theme.css";i:195;s:19:"image/theme.min.css";i:196;s:29:"latest-comments/style-rtl.css";i:197;s:33:"latest-comments/style-rtl.min.css";i:198;s:25:"latest-comments/style.css";i:199;s:29:"latest-comments/style.min.css";i:200;s:27:"latest-posts/editor-rtl.css";i:201;s:31:"latest-posts/editor-rtl.min.css";i:202;s:23:"latest-posts/editor.css";i:203;s:27:"latest-posts/editor.min.css";i:204;s:26:"latest-posts/style-rtl.css";i:205;s:30:"latest-posts/style-rtl.min.css";i:206;s:22:"latest-posts/style.css";i:207;s:26:"latest-posts/style.min.css";i:208;s:18:"list/style-rtl.css";i:209;s:22:"list/style-rtl.min.css";i:210;s:14:"list/style.css";i:211;s:18:"list/style.min.css";i:212;s:25:"media-text/editor-rtl.css";i:213;s:29:"media-text/editor-rtl.min.css";i:214;s:21:"media-text/editor.css";i:215;s:25:"media-text/editor.min.css";i:216;s:24:"media-text/style-rtl.css";i:217;s:28:"media-text/style-rtl.min.css";i:218;s:20:"media-text/style.css";i:219;s:24:"media-text/style.min.css";i:220;s:19:"more/editor-rtl.css";i:221;s:23:"more/editor-rtl.min.css";i:222;s:15:"more/editor.css";i:223;s:19:"more/editor.min.css";i:224;s:30:"navigation-link/editor-rtl.css";i:225;s:34:"navigation-link/editor-rtl.min.css";i:226;s:26:"navigation-link/editor.css";i:227;s:30:"navigation-link/editor.min.css";i:228;s:29:"navigation-link/style-rtl.css";i:229;s:33:"navigation-link/style-rtl.min.css";i:230;s:25:"navigation-link/style.css";i:231;s:29:"navigation-link/style.min.css";i:232;s:33:"navigation-submenu/editor-rtl.css";i:233;s:37:"navigation-submenu/editor-rtl.min.css";i:234;s:29:"navigation-submenu/editor.css";i:235;s:33:"navigation-submenu/editor.min.css";i:236;s:25:"navigation/editor-rtl.css";i:237;s:29:"navigation/editor-rtl.min.css";i:238;s:21:"navigation/editor.css";i:239;s:25:"navigation/editor.min.css";i:240;s:24:"navigation/style-rtl.css";i:241;s:28:"navigation/style-rtl.min.css";i:242;s:20:"navigation/style.css";i:243;s:24:"navigation/style.min.css";i:244;s:23:"nextpage/editor-rtl.css";i:245;s:27:"nextpage/editor-rtl.min.css";i:246;s:19:"nextpage/editor.css";i:247;s:23:"nextpage/editor.min.css";i:248;s:24:"page-list/editor-rtl.css";i:249;s:28:"page-list/editor-rtl.min.css";i:250;s:20:"page-list/editor.css";i:251;s:24:"page-list/editor.min.css";i:252;s:23:"page-list/style-rtl.css";i:253;s:27:"page-list/style-rtl.min.css";i:254;s:19:"page-list/style.css";i:255;s:23:"page-list/style.min.css";i:256;s:24:"paragraph/editor-rtl.css";i:257;s:28:"paragraph/editor-rtl.min.css";i:258;s:20:"paragraph/editor.css";i:259;s:24:"paragraph/editor.min.css";i:260;s:23:"paragraph/style-rtl.css";i:261;s:27:"paragraph/style-rtl.min.css";i:262;s:19:"paragraph/style.css";i:263;s:23:"paragraph/style.min.css";i:264;s:25:"post-author/style-rtl.css";i:265;s:29:"post-author/style-rtl.min.css";i:266;s:21:"post-author/style.css";i:267;s:25:"post-author/style.min.css";i:268;s:33:"post-comments-form/editor-rtl.css";i:269;s:37:"post-comments-form/editor-rtl.min.css";i:270;s:29:"post-comments-form/editor.css";i:271;s:33:"post-comments-form/editor.min.css";i:272;s:32:"post-comments-form/style-rtl.css";i:273;s:36:"post-comments-form/style-rtl.min.css";i:274;s:28:"post-comments-form/style.css";i:275;s:32:"post-comments-form/style.min.css";i:276;s:27:"post-content/editor-rtl.css";i:277;s:31:"post-content/editor-rtl.min.css";i:278;s:23:"post-content/editor.css";i:279;s:27:"post-content/editor.min.css";i:280;s:23:"post-date/style-rtl.css";i:281;s:27:"post-date/style-rtl.min.css";i:282;s:19:"post-date/style.css";i:283;s:23:"post-date/style.min.css";i:284;s:27:"post-excerpt/editor-rtl.css";i:285;s:31:"post-excerpt/editor-rtl.min.css";i:286;s:23:"post-excerpt/editor.css";i:287;s:27:"post-excerpt/editor.min.css";i:288;s:26:"post-excerpt/style-rtl.css";i:289;s:30:"post-excerpt/style-rtl.min.css";i:290;s:22:"post-excerpt/style.css";i:291;s:26:"post-excerpt/style.min.css";i:292;s:34:"post-featured-image/editor-rtl.css";i:293;s:38:"post-featured-image/editor-rtl.min.css";i:294;s:30:"post-featured-image/editor.css";i:295;s:34:"post-featured-image/editor.min.css";i:296;s:33:"post-featured-image/style-rtl.css";i:297;s:37:"post-featured-image/style-rtl.min.css";i:298;s:29:"post-featured-image/style.css";i:299;s:33:"post-featured-image/style.min.css";i:300;s:34:"post-navigation-link/style-rtl.css";i:301;s:38:"post-navigation-link/style-rtl.min.css";i:302;s:30:"post-navigation-link/style.css";i:303;s:34:"post-navigation-link/style.min.css";i:304;s:28:"post-template/editor-rtl.css";i:305;s:32:"post-template/editor-rtl.min.css";i:306;s:24:"post-template/editor.css";i:307;s:28:"post-template/editor.min.css";i:308;s:27:"post-template/style-rtl.css";i:309;s:31:"post-template/style-rtl.min.css";i:310;s:23:"post-template/style.css";i:311;s:27:"post-template/style.min.css";i:312;s:24:"post-terms/style-rtl.css";i:313;s:28:"post-terms/style-rtl.min.css";i:314;s:20:"post-terms/style.css";i:315;s:24:"post-terms/style.min.css";i:316;s:24:"post-title/style-rtl.css";i:317;s:28:"post-title/style-rtl.min.css";i:318;s:20:"post-title/style.css";i:319;s:24:"post-title/style.min.css";i:320;s:26:"preformatted/style-rtl.css";i:321;s:30:"preformatted/style-rtl.min.css";i:322;s:22:"preformatted/style.css";i:323;s:26:"preformatted/style.min.css";i:324;s:24:"pullquote/editor-rtl.css";i:325;s:28:"pullquote/editor-rtl.min.css";i:326;s:20:"pullquote/editor.css";i:327;s:24:"pullquote/editor.min.css";i:328;s:23:"pullquote/style-rtl.css";i:329;s:27:"pullquote/style-rtl.min.css";i:330;s:19:"pullquote/style.css";i:331;s:23:"pullquote/style.min.css";i:332;s:23:"pullquote/theme-rtl.css";i:333;s:27:"pullquote/theme-rtl.min.css";i:334;s:19:"pullquote/theme.css";i:335;s:23:"pullquote/theme.min.css";i:336;s:39:"query-pagination-numbers/editor-rtl.css";i:337;s:43:"query-pagination-numbers/editor-rtl.min.css";i:338;s:35:"query-pagination-numbers/editor.css";i:339;s:39:"query-pagination-numbers/editor.min.css";i:340;s:31:"query-pagination/editor-rtl.css";i:341;s:35:"query-pagination/editor-rtl.min.css";i:342;s:27:"query-pagination/editor.css";i:343;s:31:"query-pagination/editor.min.css";i:344;s:30:"query-pagination/style-rtl.css";i:345;s:34:"query-pagination/style-rtl.min.css";i:346;s:26:"query-pagination/style.css";i:347;s:30:"query-pagination/style.min.css";i:348;s:25:"query-title/style-rtl.css";i:349;s:29:"query-title/style-rtl.min.css";i:350;s:21:"query-title/style.css";i:351;s:25:"query-title/style.min.css";i:352;s:20:"query/editor-rtl.css";i:353;s:24:"query/editor-rtl.min.css";i:354;s:16:"query/editor.css";i:355;s:20:"query/editor.min.css";i:356;s:19:"quote/style-rtl.css";i:357;s:23:"quote/style-rtl.min.css";i:358;s:15:"quote/style.css";i:359;s:19:"quote/style.min.css";i:360;s:19:"quote/theme-rtl.css";i:361;s:23:"quote/theme-rtl.min.css";i:362;s:15:"quote/theme.css";i:363;s:19:"quote/theme.min.css";i:364;s:23:"read-more/style-rtl.css";i:365;s:27:"read-more/style-rtl.min.css";i:366;s:19:"read-more/style.css";i:367;s:23:"read-more/style.min.css";i:368;s:18:"rss/editor-rtl.css";i:369;s:22:"rss/editor-rtl.min.css";i:370;s:14:"rss/editor.css";i:371;s:18:"rss/editor.min.css";i:372;s:17:"rss/style-rtl.css";i:373;s:21:"rss/style-rtl.min.css";i:374;s:13:"rss/style.css";i:375;s:17:"rss/style.min.css";i:376;s:21:"search/editor-rtl.css";i:377;s:25:"search/editor-rtl.min.css";i:378;s:17:"search/editor.css";i:379;s:21:"search/editor.min.css";i:380;s:20:"search/style-rtl.css";i:381;s:24:"search/style-rtl.min.css";i:382;s:16:"search/style.css";i:383;s:20:"search/style.min.css";i:384;s:20:"search/theme-rtl.css";i:385;s:24:"search/theme-rtl.min.css";i:386;s:16:"search/theme.css";i:387;s:20:"search/theme.min.css";i:388;s:24:"separator/editor-rtl.css";i:389;s:28:"separator/editor-rtl.min.css";i:390;s:20:"separator/editor.css";i:391;s:24:"separator/editor.min.css";i:392;s:23:"separator/style-rtl.css";i:393;s:27:"separator/style-rtl.min.css";i:394;s:19:"separator/style.css";i:395;s:23:"separator/style.min.css";i:396;s:23:"separator/theme-rtl.css";i:397;s:27:"separator/theme-rtl.min.css";i:398;s:19:"separator/theme.css";i:399;s:23:"separator/theme.min.css";i:400;s:24:"shortcode/editor-rtl.css";i:401;s:28:"shortcode/editor-rtl.min.css";i:402;s:20:"shortcode/editor.css";i:403;s:24:"shortcode/editor.min.css";i:404;s:24:"site-logo/editor-rtl.css";i:405;s:28:"site-logo/editor-rtl.min.css";i:406;s:20:"site-logo/editor.css";i:407;s:24:"site-logo/editor.min.css";i:408;s:23:"site-logo/style-rtl.css";i:409;s:27:"site-logo/style-rtl.min.css";i:410;s:19:"site-logo/style.css";i:411;s:23:"site-logo/style.min.css";i:412;s:27:"site-tagline/editor-rtl.css";i:413;s:31:"site-tagline/editor-rtl.min.css";i:414;s:23:"site-tagline/editor.css";i:415;s:27:"site-tagline/editor.min.css";i:416;s:25:"site-title/editor-rtl.css";i:417;s:29:"site-title/editor-rtl.min.css";i:418;s:21:"site-title/editor.css";i:419;s:25:"site-title/editor.min.css";i:420;s:24:"site-title/style-rtl.css";i:421;s:28:"site-title/style-rtl.min.css";i:422;s:20:"site-title/style.css";i:423;s:24:"site-title/style.min.css";i:424;s:26:"social-link/editor-rtl.css";i:425;s:30:"social-link/editor-rtl.min.css";i:426;s:22:"social-link/editor.css";i:427;s:26:"social-link/editor.min.css";i:428;s:27:"social-links/editor-rtl.css";i:429;s:31:"social-links/editor-rtl.min.css";i:430;s:23:"social-links/editor.css";i:431;s:27:"social-links/editor.min.css";i:432;s:26:"social-links/style-rtl.css";i:433;s:30:"social-links/style-rtl.min.css";i:434;s:22:"social-links/style.css";i:435;s:26:"social-links/style.min.css";i:436;s:21:"spacer/editor-rtl.css";i:437;s:25:"spacer/editor-rtl.min.css";i:438;s:17:"spacer/editor.css";i:439;s:21:"spacer/editor.min.css";i:440;s:20:"spacer/style-rtl.css";i:441;s:24:"spacer/style-rtl.min.css";i:442;s:16:"spacer/style.css";i:443;s:20:"spacer/style.min.css";i:444;s:20:"table/editor-rtl.css";i:445;s:24:"table/editor-rtl.min.css";i:446;s:16:"table/editor.css";i:447;s:20:"table/editor.min.css";i:448;s:19:"table/style-rtl.css";i:449;s:23:"table/style-rtl.min.css";i:450;s:15:"table/style.css";i:451;s:19:"table/style.min.css";i:452;s:19:"table/theme-rtl.css";i:453;s:23:"table/theme-rtl.min.css";i:454;s:15:"table/theme.css";i:455;s:19:"table/theme.min.css";i:456;s:23:"tag-cloud/style-rtl.css";i:457;s:27:"tag-cloud/style-rtl.min.css";i:458;s:19:"tag-cloud/style.css";i:459;s:23:"tag-cloud/style.min.css";i:460;s:28:"template-part/editor-rtl.css";i:461;s:32:"template-part/editor-rtl.min.css";i:462;s:24:"template-part/editor.css";i:463;s:28:"template-part/editor.min.css";i:464;s:27:"template-part/theme-rtl.css";i:465;s:31:"template-part/theme-rtl.min.css";i:466;s:23:"template-part/theme.css";i:467;s:27:"template-part/theme.min.css";i:468;s:30:"term-description/style-rtl.css";i:469;s:34:"term-description/style-rtl.min.css";i:470;s:26:"term-description/style.css";i:471;s:30:"term-description/style.min.css";i:472;s:27:"text-columns/editor-rtl.css";i:473;s:31:"text-columns/editor-rtl.min.css";i:474;s:23:"text-columns/editor.css";i:475;s:27:"text-columns/editor.min.css";i:476;s:26:"text-columns/style-rtl.css";i:477;s:30:"text-columns/style-rtl.min.css";i:478;s:22:"text-columns/style.css";i:479;s:26:"text-columns/style.min.css";i:480;s:19:"verse/style-rtl.css";i:481;s:23:"verse/style-rtl.min.css";i:482;s:15:"verse/style.css";i:483;s:19:"verse/style.min.css";i:484;s:20:"video/editor-rtl.css";i:485;s:24:"video/editor-rtl.min.css";i:486;s:16:"video/editor.css";i:487;s:20:"video/editor.min.css";i:488;s:19:"video/style-rtl.css";i:489;s:23:"video/style-rtl.min.css";i:490;s:15:"video/style.css";i:491;s:19:"video/style.min.css";i:492;s:19:"video/theme-rtl.css";i:493;s:23:"video/theme-rtl.min.css";i:494;s:15:"video/theme.css";i:495;s:19:"video/theme.min.css";}}', 'on'),
	(126, 'recovery_keys', 'a:0:{}', 'auto'),
	(134, '_site_transient_timeout_browser_16453d6e2683b8800ded2a27c7f595d9', '1730207824', 'off'),
	(135, '_site_transient_browser_16453d6e2683b8800ded2a27c7f595d9', 'a:10:{s:4:"name";s:6:"Chrome";s:7:"version";s:9:"129.0.0.0";s:8:"platform";s:7:"Windows";s:10:"update_url";s:29:"https://www.google.com/chrome";s:7:"img_src";s:43:"http://s.w.org/images/browsers/chrome.png?1";s:11:"img_src_ssl";s:44:"https://s.w.org/images/browsers/chrome.png?1";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;s:6:"mobile";b:0;}', 'off'),
	(136, '_site_transient_timeout_php_check_ce267f3653936506950ae9448202043a', '1730207825', 'off'),
	(137, '_site_transient_php_check_ce267f3653936506950ae9448202043a', 'a:5:{s:19:"recommended_version";s:3:"7.4";s:15:"minimum_version";s:6:"7.2.24";s:12:"is_supported";b:1;s:9:"is_secure";b:1;s:13:"is_acceptable";b:1;}', 'off'),
	(139, 'can_compress_scripts', '0', 'on'),
	(154, 'finished_updating_comment_type', '1', 'auto'),
	(161, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:65:"https://downloads.wordpress.org/release/en_NZ/wordpress-6.6.2.zip";s:6:"locale";s:5:"en_NZ";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:65:"https://downloads.wordpress.org/release/en_NZ/wordpress-6.6.2.zip";s:10:"no_content";s:0:"";s:11:"new_bundled";s:0:"";s:7:"partial";s:0:"";s:8:"rollback";s:0:"";}s:7:"current";s:5:"6.6.2";s:7:"version";s:5:"6.6.2";s:11:"php_version";s:6:"7.2.24";s:13:"mysql_version";s:5:"5.5.5";s:11:"new_bundled";s:3:"6.4";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1729779500;s:15:"version_checked";s:5:"6.6.2";s:12:"translations";a:0:{}}', 'off'),
	(162, '_site_transient_update_themes', 'O:8:"stdClass":5:{s:12:"last_checked";i:1729779502;s:7:"checked";a:1:{s:10:"awanuilabs";s:3:"1.0";}s:8:"response";a:0:{}s:9:"no_update";a:0:{}s:12:"translations";a:0:{}}', 'off'),
	(163, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1729779502;s:8:"response";a:0:{}s:12:"translations";a:0:{}s:9:"no_update";a:2:{s:19:"akismet/akismet.php";O:8:"stdClass":10:{s:2:"id";s:21:"w.org/plugins/akismet";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"5.3.3";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.5.3.3.zip";s:5:"icons";a:2:{s:2:"2x";s:60:"https://ps.w.org/akismet/assets/icon-256x256.png?rev=2818463";s:2:"1x";s:60:"https://ps.w.org/akismet/assets/icon-128x128.png?rev=2818463";}s:7:"banners";a:2:{s:2:"2x";s:63:"https://ps.w.org/akismet/assets/banner-1544x500.png?rev=2900731";s:2:"1x";s:62:"https://ps.w.org/akismet/assets/banner-772x250.png?rev=2900731";}s:11:"banners_rtl";a:0:{}s:8:"requires";s:3:"5.8";}s:9:"hello.php";O:8:"stdClass":10:{s:2:"id";s:25:"w.org/plugins/hello-dolly";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:5:"1.7.2";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:60:"https://downloads.wordpress.org/plugin/hello-dolly.1.7.3.zip";s:5:"icons";a:2:{s:2:"2x";s:64:"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855";s:2:"1x";s:64:"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855";}s:7:"banners";a:2:{s:2:"2x";s:67:"https://ps.w.org/hello-dolly/assets/banner-1544x500.jpg?rev=2645582";s:2:"1x";s:66:"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855";}s:11:"banners_rtl";a:0:{}s:8:"requires";s:3:"4.6";}}s:7:"checked";a:3:{s:19:"akismet/akismet.php";s:5:"5.3.3";s:55:"collection-centre-details/collection-centre-details.php";s:5:"0.1.0";s:9:"hello.php";s:5:"1.7.2";}}', 'off'),
	(169, 'theme_mods_twentytwentyfour', 'a:2:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1729610281;s:4:"data";a:3:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:3:{i:0;s:7:"block-2";i:1;s:7:"block-3";i:2;s:7:"block-4";}s:9:"sidebar-2";a:2:{i:0;s:7:"block-5";i:1;s:7:"block-6";}}}}', 'off'),
	(170, '_transient_timeout_dirsize_cache', '2044969282', 'off'),
	(171, '_transient_dirsize_cache', 'a:316:{s:47:"D:\\var\\www\\html\\awanuilabs-directories/frontend";i:0;s:63:"D:\\var\\www\\html\\awanuilabs-directories/wp-admin/css/colors/blue";i:77778;s:65:"D:\\var\\www\\html\\awanuilabs-directories/wp-admin/css/colors/coffee";i:75892;s:68:"D:\\var\\www\\html\\awanuilabs-directories/wp-admin/css/colors/ectoplasm";i:77742;s:64:"D:\\var\\www\\html\\awanuilabs-directories/wp-admin/css/colors/light";i:78474;s:67:"D:\\var\\www\\html\\awanuilabs-directories/wp-admin/css/colors/midnight";i:78486;s:65:"D:\\var\\www\\html\\awanuilabs-directories/wp-admin/css/colors/modern";i:77989;s:64:"D:\\var\\www\\html\\awanuilabs-directories/wp-admin/css/colors/ocean";i:75229;s:66:"D:\\var\\www\\html\\awanuilabs-directories/wp-admin/css/colors/sunrise";i:78407;s:58:"D:\\var\\www\\html\\awanuilabs-directories/wp-admin/css/colors";i:643556;s:51:"D:\\var\\www\\html\\awanuilabs-directories/wp-admin/css";i:2542439;s:54:"D:\\var\\www\\html\\awanuilabs-directories/wp-admin/images";i:426821;s:56:"D:\\var\\www\\html\\awanuilabs-directories/wp-admin/includes";i:3069241;s:58:"D:\\var\\www\\html\\awanuilabs-directories/wp-admin/js/widgets";i:139432;s:50:"D:\\var\\www\\html\\awanuilabs-directories/wp-admin/js";i:1971286;s:53:"D:\\var\\www\\html\\awanuilabs-directories/wp-admin/maint";i:7592;s:55:"D:\\var\\www\\html\\awanuilabs-directories/wp-admin/network";i:125999;s:52:"D:\\var\\www\\html\\awanuilabs-directories/wp-admin/user";i:3685;s:47:"D:\\var\\www\\html\\awanuilabs-directories/wp-admin";i:9072296;s:67:"D:\\var\\www\\html\\awanuilabs-directories/wp-content/languages/plugins";i:68967;s:59:"D:\\var\\www\\html\\awanuilabs-directories/wp-content/languages";i:3677592;s:57:"D:\\var\\www\\html\\awanuilabs-directories/wp-content/upgrade";i:0;s:49:"D:\\var\\www\\html\\awanuilabs-directories/wp-content";i:3677620;s:57:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/assets";i:24990;s:65:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/block-bindings";i:3610;s:65:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/block-patterns";i:8843;s:65:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/block-supports";i:130165;s:66:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/blocks/archives";i:1725;s:63:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/blocks/audio";i:3660;s:64:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/blocks/avatar";i:2296;s:63:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/blocks/block";i:587;s:64:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/blocks/button";i:14416;s:65:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/blocks/buttons";i:11183;s:66:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/blocks/calendar";i:3804;s:68:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/blocks/categories";i:2825;s:62:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/blocks/code";i:2638;s:64:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/blocks/column";i:1597;s:65:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/blocks/columns";i:9193;s:77:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/blocks/comment-author-name";i:1192;s:73:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/blocks/comment-content";i:1369;s:70:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/blocks/comment-date";i:1112;s:75:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/blocks/comment-edit-link";i:1213;s:76:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/blocks/comment-reply-link";i:1001;s:74:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/blocks/comment-template";i:2910;s:66:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/blocks/comments";i:28882;s:77:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/blocks/comments-pagination";i:8628;s:82:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/blocks/comments-pagination-next";i:1011;s:85:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/blocks/comments-pagination-numbers";i:1833;s:86:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/blocks/comments-pagination-previous";i:1023;s:72:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/blocks/comments-title";i:1701;s:63:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/blocks/cover";i:83346;s:65:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/blocks/details";i:2030;s:63:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/blocks/embed";i:11232;s:62:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/blocks/file";i:11514;s:67:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/blocks/footnotes";i:2642;s:66:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/blocks/freeform";i:41824;s:65:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/blocks/gallery";i:80571;s:63:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/blocks/group";i:9055;s:65:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/blocks/heading";i:5731;s:67:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/blocks/home-link";i:1130;s:62:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/blocks/html";i:3770;s:63:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/blocks/image";i:64157;s:73:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/blocks/latest-comments";i:6657;s:70:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/blocks/latest-posts";i:11776;s:71:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/blocks/legacy-widget";i:556;s:62:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/blocks/list";i:2173;s:67:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/blocks/list-item";i:1137;s:66:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/blocks/loginout";i:1026;s:68:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/blocks/media-text";i:14445;s:65:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/blocks/missing";i:617;s:62:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/blocks/more";i:3770;s:68:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/blocks/navigation";i:132149;s:73:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/blocks/navigation-link";i:11752;s:76:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/blocks/navigation-submenu";i:5842;s:66:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/blocks/nextpage";i:3039;s:67:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/blocks/page-list";i:7663;s:72:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/blocks/page-list-item";i:1109;s:67:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/blocks/paragraph";i:6904;s:65:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/blocks/pattern";i:411;s:69:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/blocks/post-author";i:2895;s:79:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/blocks/post-author-biography";i:971;s:74:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/blocks/post-author-name";i:1118;s:76:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/blocks/post-comments-form";i:9737;s:70:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/blocks/post-content";i:1389;s:67:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/blocks/post-date";i:1377;s:70:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/blocks/post-excerpt";i:2925;s:77:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/blocks/post-featured-image";i:29716;s:78:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/blocks/post-navigation-link";i:4010;s:71:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/blocks/post-template";i:8072;s:68:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/blocks/post-terms";i:1715;s:68:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/blocks/post-title";i:1823;s:70:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/blocks/preformatted";i:1696;s:67:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/blocks/pullquote";i:8267;s:63:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/blocks/query";i:14007;s:74:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/blocks/query-no-results";i:899;s:74:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/blocks/query-pagination";i:9403;s:79:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/blocks/query-pagination-next";i:1039;s:82:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/blocks/query-pagination-numbers";i:1942;s:83:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/blocks/query-pagination-previous";i:1051;s:69:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/blocks/query-title";i:1392;s:63:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/blocks/quote";i:6526;s:67:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/blocks/read-more";i:2526;s:61:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/blocks/rss";i:4491;s:64:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/blocks/search";i:19592;s:67:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/blocks/separator";i:5038;s:67:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/blocks/shortcode";i:2918;s:67:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/blocks/site-logo";i:17033;s:70:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/blocks/site-tagline";i:1625;s:68:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/blocks/site-title";i:2289;s:69:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/blocks/social-link";i:3474;s:70:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/blocks/social-links";i:58808;s:64:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/blocks/spacer";i:4737;s:63:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/blocks/table";i:27351;s:67:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/blocks/tag-cloud";i:3616;s:71:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/blocks/template-part";i:7986;s:74:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/blocks/term-description";i:1751;s:70:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/blocks/text-columns";i:3034;s:63:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/blocks/verse";i:1860;s:63:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/blocks/video";i:11619;s:70:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/blocks/widget-group";i:400;s:57:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/blocks";i:1503945;s:63:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/certificates";i:233231;s:75:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/css/dist/block-directory";i:15116;s:72:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/css/dist/block-editor";i:617115;s:73:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/css/dist/block-library";i:805412;s:68:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/css/dist/commands";i:13442;s:70:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/css/dist/components";i:357993;s:77:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/css/dist/customize-widgets";i:23886;s:69:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/css/dist/edit-post";i:51948;s:69:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/css/dist/edit-site";i:337302;s:72:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/css/dist/edit-widgets";i:95440;s:66:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/css/dist/editor";i:249468;s:74:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/css/dist/format-library";i:5556;s:80:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/css/dist/list-reusable-blocks";i:17928;s:63:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/css/dist/nux";i:11624;s:68:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/css/dist/patterns";i:7442;s:71:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/css/dist/preferences";i:8474;s:75:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/css/dist/reusable-blocks";i:2290;s:67:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/css/dist/widgets";i:23740;s:59:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/css/dist";i:2644176;s:54:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/css";i:3289933;s:60:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/customize";i:177349;s:56:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/fonts";i:326266;s:59:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/html-api";i:330662;s:54:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/ID3";i:1160011;s:65:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/images/crystal";i:15541;s:63:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/images/media";i:5263;s:65:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/images/smilies";i:10082;s:57:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/images";i:102178;s:68:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/interactivity-api";i:55295;s:54:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/IXR";i:33915;s:64:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/js/codemirror";i:1287141;s:58:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/js/crop";i:20004;s:70:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/js/dist/development";i:179848;s:65:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/js/dist/vendor";i:2753435;s:58:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/js/dist";i:21236724;s:67:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/js/imgareaselect";i:49553;s:59:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/js/jcrop";i:24976;s:63:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/js/jquery/ui";i:787634;s:60:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/js/jquery";i:1305370;s:76:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/js/mediaelement/renderers";i:18880;s:66:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/js/mediaelement";i:721307;s:62:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/js/plupload";i:490468;s:63:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/js/swfupload";i:8715;s:62:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/js/thickbox";i:31323;s:67:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/js/tinymce/langs";i:15529;s:77:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/js/tinymce/plugins/charmap";i:31811;s:81:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/js/tinymce/plugins/colorpicker";i:4910;s:82:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/js/tinymce/plugins/compat3x/css";i:8179;s:78:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/js/tinymce/plugins/compat3x";i:21758;s:84:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/js/tinymce/plugins/directionality";i:2749;s:80:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/js/tinymce/plugins/fullscreen";i:7779;s:72:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/js/tinymce/plugins/hr";i:1347;s:75:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/js/tinymce/plugins/image";i:55874;s:74:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/js/tinymce/plugins/link";i:32949;s:75:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/js/tinymce/plugins/lists";i:97383;s:75:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/js/tinymce/plugins/media";i:57914;s:75:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/js/tinymce/plugins/paste";i:113193;s:78:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/js/tinymce/plugins/tabfocus";i:5336;s:79:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/js/tinymce/plugins/textcolor";i:16237;s:79:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/js/tinymce/plugins/wordpress";i:50628;s:82:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/js/tinymce/plugins/wpautoresize";i:8332;s:79:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/js/tinymce/plugins/wpdialogs";i:3761;s:81:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/js/tinymce/plugins/wpeditimage";i:37711;s:77:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/js/tinymce/plugins/wpemoji";i:5099;s:79:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/js/tinymce/plugins/wpgallery";i:4806;s:76:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/js/tinymce/plugins/wplink";i:26816;s:83:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/js/tinymce/plugins/wptextpattern";i:11923;s:76:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/js/tinymce/plugins/wpview";i:8985;s:69:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/js/tinymce/plugins";i:607301;s:83:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/js/tinymce/skins/lightgray/fonts";i:155760;s:81:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/js/tinymce/skins/lightgray/img";i:2856;s:77:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/js/tinymce/skins/lightgray";i:210254;s:84:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/js/tinymce/skins/wordpress/images";i:14207;s:77:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/js/tinymce/skins/wordpress";i:22831;s:67:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/js/tinymce/skins";i:233085;s:75:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/js/tinymce/themes/inlite";i:452642;s:75:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/js/tinymce/themes/modern";i:446221;s:68:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/js/tinymce/themes";i:898863;s:67:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/js/tinymce/utils";i:18826;s:61:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/js/tinymce";i:2854127;s:53:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/js";i:30445287;s:55:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/l10n";i:30499;s:61:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/php-compat";i:1253;s:60:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/PHPMailer";i:233227;s:55:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/pomo";i:57146;s:67:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/Requests/library";i:261;s:68:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/Requests/src/Auth";i:2541;s:70:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/Requests/src/Cookie";i:4363;s:78:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/Requests/src/Exception/Http";i:16715;s:83:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/Requests/src/Exception/Transport";i:1397;s:73:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/Requests/src/Exception";i:22464;s:69:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/Requests/src/Proxy";i:4217;s:72:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/Requests/src/Response";i:3101;s:73:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/Requests/src/Transport";i:35470;s:71:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/Requests/src/Utility";i:7176;s:63:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/Requests/src";i:214849;s:59:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/Requests";i:215110;s:69:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/rest-api/endpoints";i:848388;s:66:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/rest-api/fields";i:22510;s:66:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/rest-api/search";i:16749;s:59:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/rest-api";i:977234;s:66:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/SimplePie/Cache";i:39607;s:73:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/SimplePie/Content/Type";i:8015;s:68:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/SimplePie/Content";i:8015;s:72:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/SimplePie/Decode/HTML";i:17241;s:67:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/SimplePie/Decode";i:17241;s:65:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/SimplePie/HTTP";i:11487;s:64:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/SimplePie/Net";i:7493;s:66:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/SimplePie/Parse";i:20551;s:76:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/SimplePie/XML/Declaration";i:7098;s:64:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/SimplePie/XML";i:7098;s:60:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/SimplePie";i:458625;s:69:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/sitemaps/providers";i:17593;s:59:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/sitemaps";i:47491;s:68:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/sodium_compat/lib";i:87360;s:89:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/sodium_compat/namespaced/Core/ChaCha20";i:224;s:94:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/sodium_compat/namespaced/Core/Curve25519/Ge";i:602;s:91:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/sodium_compat/namespaced/Core/Curve25519";i:820;s:89:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/sodium_compat/namespaced/Core/Poly1305";i:112;s:80:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/sodium_compat/namespaced/Core";i:2444;s:75:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/sodium_compat/namespaced";i:2698;s:80:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/sodium_compat/src/Core/Base64";i:22135;s:82:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/sodium_compat/src/Core/ChaCha20";i:5264;s:87:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/sodium_compat/src/Core/Curve25519/Ge";i:7881;s:84:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/sodium_compat/src/Core/Curve25519";i:121645;s:82:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/sodium_compat/src/Core/Poly1305";i:12912;s:86:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/sodium_compat/src/Core/SecretStream";i:3624;s:73:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/sodium_compat/src/Core";i:452743;s:84:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/sodium_compat/src/Core32/ChaCha20";i:6407;s:89:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/sodium_compat/src/Core32/Curve25519/Ge";i:8177;s:86:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/sodium_compat/src/Core32/Curve25519";i:122690;s:84:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/sodium_compat/src/Core32/Poly1305";i:15965;s:88:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/sodium_compat/src/Core32/SecretStream";i:3656;s:75:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/sodium_compat/src/Core32";i:437041;s:74:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/sodium_compat/src/PHP52";i:4116;s:68:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/sodium_compat/src";i:1207254;s:64:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/sodium_compat";i:1303525;s:63:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/style-engine";i:47528;s:67:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/Text/Diff/Engine";i:31802;s:69:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/Text/Diff/Renderer";i:5528;s:60:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/Text/Diff";i:44136;s:55:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/Text";i:57049;s:63:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/theme-compat";i:15656;s:58:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes/widgets";i:158524;s:50:"D:\\var\\www\\html\\awanuilabs-directories/wp-includes";i:48797833;s:38:"D:\\var\\www\\html\\awanuilabs-directories";i:61735527;s:84:"D:\\var\\www\\html\\awanuilabs-directories/wp-content/themes/twentytwentyfour/assets/css";i:357;s:92:"D:\\var\\www\\html\\awanuilabs-directories/wp-content/themes/twentytwentyfour/assets/fonts/cardo";i:388180;s:102:"D:\\var\\www\\html\\awanuilabs-directories/wp-content/themes/twentytwentyfour/assets/fonts/instrument-sans";i:187522;s:92:"D:\\var\\www\\html\\awanuilabs-directories/wp-content/themes/twentytwentyfour/assets/fonts/inter";i:331004;s:91:"D:\\var\\www\\html\\awanuilabs-directories/wp-content/themes/twentytwentyfour/assets/fonts/jost";i:116852;s:86:"D:\\var\\www\\html\\awanuilabs-directories/wp-content/themes/twentytwentyfour/assets/fonts";i:1023558;s:87:"D:\\var\\www\\html\\awanuilabs-directories/wp-content/themes/twentytwentyfour/assets/images";i:1152100;s:80:"D:\\var\\www\\html\\awanuilabs-directories/wp-content/themes/twentytwentyfour/assets";i:2176015;s:79:"D:\\var\\www\\html\\awanuilabs-directories/wp-content/themes/twentytwentyfour/parts";i:1473;s:82:"D:\\var\\www\\html\\awanuilabs-directories/wp-content/themes/twentytwentyfour/patterns";i:158957;s:80:"D:\\var\\www\\html\\awanuilabs-directories/wp-content/themes/twentytwentyfour/styles";i:33892;s:83:"D:\\var\\www\\html\\awanuilabs-directories/wp-content/themes/twentytwentyfour/templates";i:12953;s:73:"D:\\var\\www\\html\\awanuilabs-directories/wp-content/themes/twentytwentyfour";i:3137090;s:95:"D:\\var\\www\\html\\awanuilabs-directories/wp-content/themes/twentytwentythree/assets/fonts/dm-sans";i:128429;s:101:"D:\\var\\www\\html\\awanuilabs-directories/wp-content/themes/twentytwentythree/assets/fonts/ibm-plex-mono";i:148118;s:93:"D:\\var\\www\\html\\awanuilabs-directories/wp-content/themes/twentytwentythree/assets/fonts/inter";i:807760;s:104:"D:\\var\\www\\html\\awanuilabs-directories/wp-content/themes/twentytwentythree/assets/fonts/source-serif-pro";i:1409152;s:87:"D:\\var\\www\\html\\awanuilabs-directories/wp-content/themes/twentytwentythree/assets/fonts";i:2493459;s:81:"D:\\var\\www\\html\\awanuilabs-directories/wp-content/themes/twentytwentythree/assets";i:2493459;s:80:"D:\\var\\www\\html\\awanuilabs-directories/wp-content/themes/twentytwentythree/parts";i:878;s:83:"D:\\var\\www\\html\\awanuilabs-directories/wp-content/themes/twentytwentythree/patterns";i:9341;s:81:"D:\\var\\www\\html\\awanuilabs-directories/wp-content/themes/twentytwentythree/styles";i:52636;s:84:"D:\\var\\www\\html\\awanuilabs-directories/wp-content/themes/twentytwentythree/templates";i:10482;s:74:"D:\\var\\www\\html\\awanuilabs-directories/wp-content/themes/twentytwentythree";i:2667552;s:93:"D:\\var\\www\\html\\awanuilabs-directories/wp-content/themes/twentytwentytwo/assets/fonts/dm-sans";i:301601;s:94:"D:\\var\\www\\html\\awanuilabs-directories/wp-content/themes/twentytwentytwo/assets/fonts/ibm-plex";i:423403;s:91:"D:\\var\\www\\html\\awanuilabs-directories/wp-content/themes/twentytwentytwo/assets/fonts/inter";i:809786;s:102:"D:\\var\\www\\html\\awanuilabs-directories/wp-content/themes/twentytwentytwo/assets/fonts/source-serif-pro";i:1409152;s:85:"D:\\var\\www\\html\\awanuilabs-directories/wp-content/themes/twentytwentytwo/assets/fonts";i:4348514;s:86:"D:\\var\\www\\html\\awanuilabs-directories/wp-content/themes/twentytwentytwo/assets/images";i:1503139;s:86:"D:\\var\\www\\html\\awanuilabs-directories/wp-content/themes/twentytwentytwo/assets/videos";i:468755;s:79:"D:\\var\\www\\html\\awanuilabs-directories/wp-content/themes/twentytwentytwo/assets";i:6320408;s:85:"D:\\var\\www\\html\\awanuilabs-directories/wp-content/themes/twentytwentytwo/inc/patterns";i:158253;s:76:"D:\\var\\www\\html\\awanuilabs-directories/wp-content/themes/twentytwentytwo/inc";i:162261;s:78:"D:\\var\\www\\html\\awanuilabs-directories/wp-content/themes/twentytwentytwo/parts";i:2864;s:79:"D:\\var\\www\\html\\awanuilabs-directories/wp-content/themes/twentytwentytwo/styles";i:11351;s:82:"D:\\var\\www\\html\\awanuilabs-directories/wp-content/themes/twentytwentytwo/templates";i:13966;s:72:"D:\\var\\www\\html\\awanuilabs-directories/wp-content/themes/twentytwentytwo";i:6693745;s:56:"D:\\var\\www\\html\\awanuilabs-directories/wp-content/themes";i:12498415;s:71:"D:\\var\\www\\html\\awanuilabs-directories/wp-content/plugins/akismet/views";i:40033;s:76:"D:\\var\\www\\html\\awanuilabs-directories/wp-content/plugins/akismet/_inc/fonts";i:2193;s:74:"D:\\var\\www\\html\\awanuilabs-directories/wp-content/plugins/akismet/_inc/img";i:17892;s:74:"D:\\var\\www\\html\\awanuilabs-directories/wp-content/plugins/akismet/_inc/rtl";i:20221;s:70:"D:\\var\\www\\html\\awanuilabs-directories/wp-content/plugins/akismet/_inc";i:85324;s:65:"D:\\var\\www\\html\\awanuilabs-directories/wp-content/plugins/akismet";i:337725;s:57:"D:\\var\\www\\html\\awanuilabs-directories/wp-content/plugins";i:340331;s:65:"D:\\var\\www\\html\\awanuilabs-directories/wp-content/uploads/2024/10";i:0;s:62:"D:\\var\\www\\html\\awanuilabs-directories/wp-content/uploads/2024";i:0;s:57:"D:\\var\\www\\html\\awanuilabs-directories/wp-content/uploads";i:0;}', 'off'),
	(172, '_transient_health-check-site-status-result', '{"good":17,"recommended":5,"critical":1}', 'on'),
	(174, 'current_theme', 'Awanuilabs', 'auto'),
	(175, 'theme_mods_awanuilabs', 'a:2:{i:0;b:0;s:18:"nav_menu_locations";a:0:{}}', 'on'),
	(176, 'theme_switched', '', 'auto'),
	(179, '_site_transient_wp_plugin_dependencies_plugin_data', 'a:0:{}', 'off'),
	(180, 'recently_activated', 'a:1:{s:45:"copyright-date-block/copyright-date-block.php";i:1729626582;}', 'auto'),
	(223, 'recovery_mode_email_last_sent', '1729627124', 'auto'),
	(386, '_site_transient_timeout_theme_roots', '1729784906', 'off'),
	(387, '_site_transient_theme_roots', 'a:1:{s:10:"awanuilabs";s:7:"/themes";}', 'off'),
	(401, '_site_transient_timeout_wp_theme_files_patterns-b49b35d0ba83e33b1e813f8358ef2b12', '1729798299', 'off'),
	(402, '_site_transient_wp_theme_files_patterns-b49b35d0ba83e33b1e813f8358ef2b12', 'a:2:{s:7:"version";s:3:"1.0";s:8:"patterns";a:0:{}}', 'off');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;

-- Dumping structure for table awanuilabs.wp_postmeta
DROP TABLE IF EXISTS `wp_postmeta`;
CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Dumping data for table awanuilabs.wp_postmeta: ~33 rows (approximately)
DELETE FROM `wp_postmeta`;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
	(1, 2, '_wp_page_template', 'default'),
	(2, 3, '_wp_page_template', 'default'),
	(3, 7, '_edit_lock', '1729686649:1'),
	(4, 7, '_edit_last', '1'),
	(5, 10, '_edit_lock', '1729628773:1'),
	(6, 11, '_edit_lock', '1729628926:1'),
	(7, 12, '_edit_lock', '1729692417:1'),
	(8, 13, '_edit_lock', '1729629185:1'),
	(9, 14, '_edit_lock', '1729673950:1'),
	(10, 15, '_edit_lock', '1729687307:1'),
	(11, 16, '_edit_lock', '1729687628:1'),
	(12, 17, '_edit_lock', '1729687824:1'),
	(13, 18, '_edit_lock', '1729687886:1'),
	(14, 19, '_edit_lock', '1729687844:1'),
	(15, 20, '_edit_lock', '1729688034:1'),
	(16, 21, '_edit_lock', '1729688017:1'),
	(17, 22, '_edit_lock', '1729688454:1'),
	(18, 23, '_edit_lock', '1729688545:1'),
	(19, 24, '_edit_lock', '1729688721:1'),
	(20, 25, '_edit_lock', '1729689029:1'),
	(21, 26, '_edit_lock', '1729689184:1'),
	(22, 27, '_edit_lock', '1729689259:1'),
	(23, 28, '_edit_lock', '1729689349:1'),
	(24, 29, '_edit_lock', '1729689529:1'),
	(25, 30, '_edit_lock', '1729689593:1'),
	(26, 31, '_edit_lock', '1729690405:1'),
	(27, 32, '_edit_lock', '1729690485:1'),
	(28, 33, '_edit_lock', '1729690558:1'),
	(29, 34, '_edit_lock', '1729690644:1'),
	(30, 35, '_edit_lock', '1729690751:1'),
	(31, 36, '_edit_lock', '1729690855:1'),
	(32, 37, '_edit_lock', '1729690843:1'),
	(33, 38, '_edit_lock', '1729695719:1');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;

-- Dumping structure for table awanuilabs.wp_posts
DROP TABLE IF EXISTS `wp_posts`;
CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(255) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT 0,
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Dumping data for table awanuilabs.wp_posts: ~35 rows (approximately)
DELETE FROM `wp_posts`;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
	(1, 1, '2024-10-22 13:16:43', '2024-10-22 13:16:43', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2024-10-22 13:16:43', '2024-10-22 13:16:43', '', 0, 'https://loc.awanuilabs-directories.com/?p=1', 0, 'post', '', 1),
	(2, 1, '2024-10-22 13:16:43', '2024-10-22 13:16:43', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href="https://loc.awanuilabs-directories.com/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2024-10-22 13:16:43', '2024-10-22 13:16:43', '', 0, 'https://loc.awanuilabs-directories.com/?page_id=2', 0, 'page', '', 0),
	(3, 1, '2024-10-22 13:16:43', '2024-10-22 13:16:43', '<!-- wp:heading -->\n<h2 class="wp-block-heading">Who we are</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class="privacy-policy-tutorial">Suggested text: </strong>Our website address is: https://loc.awanuilabs-directories.com.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Comments</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class="privacy-policy-tutorial">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>An anonymised string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Media</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class="privacy-policy-tutorial">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Cookies</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class="privacy-policy-tutorial">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Embedded content from other websites</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class="privacy-policy-tutorial">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Who we share your data with</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class="privacy-policy-tutorial">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class="wp-block-heading">How long we retain your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class="privacy-policy-tutorial">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognise and approve any follow-up comments automatically instead of holding them in a moderation queue.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class="wp-block-heading">What rights you have over your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class="privacy-policy-tutorial">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Where your data is sent</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class="privacy-policy-tutorial">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p>\n<!-- /wp:paragraph -->\n', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2024-10-22 13:16:43', '2024-10-22 13:16:43', '', 0, 'https://loc.awanuilabs-directories.com/?page_id=3', 0, 'page', '', 0),
	(4, 1, '2024-10-22 13:17:05', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2024-10-22 13:17:05', '0000-00-00 00:00:00', '', 0, 'https://loc.awanuilabs-directories.com/?p=4', 0, 'post', '', 0),
	(5, 0, '2024-10-22 15:01:21', '2024-10-22 15:01:21', '<!-- wp:page-list /-->', 'Navigation', '', 'publish', 'closed', 'closed', '', 'navigation', '', '', '2024-10-22 15:01:21', '2024-10-22 15:01:21', '', 0, 'https://loc.awanuilabs-directories.com/navigation/', 0, 'wp_navigation', '', 0),
	(6, 1, '2024-10-22 15:29:58', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2024-10-22 15:29:58', '0000-00-00 00:00:00', '', 0, 'https://loc.awanuilabs-directories.com/?post_type=collection_centre&p=6', 0, 'collection_centre', '', 0),
	(7, 1, '2024-10-22 19:13:00', '2024-10-22 19:13:00', '<!-- wp:create-block/collection-centre-details {"address":"C/- Ascot Hospital, Level 2, Main Hospital Building,\\n90 Green Lane East\\nAuckland\\nRemuera\\n1050","latitude":"-36.8874872","longitude":"174.8004427","openHours":"Weekdays; 07:30 - 17:00\\nClosed all public holidays","contactInformation":"09-574 7399","paymentFacilities":"EFTPOS payments only","accessibility":"Standard Wheelchair Access\\nHearing Impairment\\nTranslation"} /-->', 'Ascot Hospital Collection Centre', '', 'publish', 'closed', 'closed', '', 'ascot-hospital-collection-centre', '', '', '2024-10-22 20:21:58', '2024-10-22 20:21:58', '', 0, 'https://loc.awanuilabs-directories.com/?post_type=collection_centre&#038;p=7', 0, 'collection_centre', '', 0),
	(10, 1, '2024-10-22 20:26:40', '2024-10-22 20:26:40', '<!-- wp:create-block/collection-centre-details {"address":"52 Rosebank Road\\nAuckland\\nAvondale\\n1026","latitude":"-36.89466553876865","longitude":"174.69761745444447","openHours":"Weekdays; 07:00 - 16:00\\nClosed all public holidays","contactInformation":"09-574 7399","paymentFacilities":"EFTPOS payments only","accessibility":"Standard Wheelchair Access\\nVisual Impairment\\nHearing Impairment\\nTranslation"} /-->', 'Avondale Collection Centre', '', 'publish', 'closed', 'closed', '', 'avondale-collection-centre', '', '', '2024-10-22 20:26:40', '2024-10-22 20:26:40', '', 0, 'https://loc.awanuilabs-directories.com/?post_type=collection_centre&#038;p=10', 0, 'collection_centre', '', 0),
	(11, 1, '2024-10-22 20:29:18', '2024-10-22 20:29:18', '<!-- wp:create-block/collection-centre-details {"address":"339 Rangatira Road\\nAuckland\\nBeach Haven\\n0626","latitude":"-36.79175502484103","longitude":"174.68753809783692","openHours":"Monday-Friday: 0700-1515hrs\\nClosed Saturday, Sunday and all public holidays","contactInformation":"09-574 7399","paymentFacilities":"EFTPOS payments only","accessibility":"Standard Wheelchair Access"} /-->', 'Beach Haven Collection Centre', '', 'publish', 'closed', 'closed', '', 'beach-haven-collection-centre', '', '', '2024-10-22 20:29:18', '2024-10-22 20:29:18', '', 0, 'https://loc.awanuilabs-directories.com/?post_type=collection_centre&#038;p=11', 0, 'collection_centre', '', 0),
	(12, 1, '2024-10-22 20:31:24', '2024-10-22 20:31:24', '<!-- wp:create-block/collection-centre-details {"address":"Shop 15, Highbury Shopping Centre,\\n1 c/o Highbury Bypass and Birkenhead Avenue,\\nAuckland\\nBirkenhead\\n0626","latitude":"-36.81132","longitude":"174.72537","openHours":"Weekdays; 07:00 - 16:00 hrs\\nSaturdays; 8:00 - 12:00 hrs\\nClosed all public holidays","contactInformation":"09-574 7399","paymentFacilities":"EFTPOS payments only","accessibility":"Standard Wheelchair Access"} /-->', 'Birkenhead (Highbury) Collection Centre', '', 'publish', 'closed', 'closed', '', 'birkenhead-highbury-collection-centre', '', '', '2024-10-22 20:31:24', '2024-10-22 20:31:24', '', 0, 'https://loc.awanuilabs-directories.com/?post_type=collection_centre&#038;p=12', 0, 'collection_centre', '', 0),
	(13, 1, '2024-10-22 20:33:05', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2024-10-22 20:33:05', '0000-00-00 00:00:00', '', 0, 'https://loc.awanuilabs-directories.com/?post_type=collection_centre&p=13', 0, 'collection_centre', '', 0),
	(14, 1, '2024-10-23 09:01:32', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2024-10-23 09:01:32', '0000-00-00 00:00:00', '', 0, 'https://loc.awanuilabs-directories.com/?post_type=collection_centre&p=14', 0, 'collection_centre', '', 0),
	(15, 1, '2024-10-23 12:41:56', '2024-10-23 12:41:56', '<!-- wp:create-block/collection-centre-details {"address":"C/- Blockhouse Bay Medical Centre\\n3 Heaphy Street\\nAuckland\\nBlockhouse Bay\\n0600","latitude":"-36.9223484","longitude":"174.7008562","openHours":"Weekdays; 07:00 – 16:00\\nSaturday; 08:00 - 12:00\\nClosed all public holidays","contactInformation":"09-574 7399","paymentFacilities":"EFTPOS payments only","accessibility":"Standard Wheelchair Access\\nHearing Impairment\\nTranslation"} /-->', 'Blockhouse Bay Collection Centre', '', 'publish', 'closed', 'closed', '', 'blockhouse-bay-collection-centre', '', '', '2024-10-23 12:41:56', '2024-10-23 12:41:56', '', 0, 'https://loc.awanuilabs-directories.com/?post_type=collection_centre&#038;p=15', 0, 'collection_centre', '', 0),
	(16, 1, '2024-10-23 12:45:06', '2024-10-23 12:45:06', '<!-- wp:create-block/collection-centre-details {"address":"Level 2\\n43 High Street\\nAuckland\\nAuckland Central\\n1010","latitude":"-36.84796713011321","longitude":"174.76629689702355","openHours":"Monday-Friday: 0700-1600hrs\\nClosed Saturday, Sunday and all public holidays","contactInformation":"09-574 7399","paymentFacilities":"EFTPOS payments only","accessibility":"Translation\\nHearing Impairment\\nStandard Wheelchair Access"} /-->', 'CBD Collection Centre', '', 'publish', 'closed', 'closed', '', 'cbd-collection-centre', '', '', '2024-10-23 12:45:06', '2024-10-23 12:45:06', '', 0, 'https://loc.awanuilabs-directories.com/?post_type=collection_centre&#038;p=16', 0, 'collection_centre', '', 0),
	(17, 1, '2024-10-23 12:50:22', '2024-10-23 12:50:22', '<!-- wp:create-block/collection-centre-details {"address":"161 Line Road\\nAuckland\\nGlen Innes\\n1072","latitude":"-36.8792486713247","longitude":"174.8562026848804","openHours":"Weekdays; 07:00 - 16:00\\nSaturdays; 8:00 - 12:00\\nClosed all public holidays","contactInformation":"09-574 7399","paymentFacilities":"EFTPOS payments only","accessibility":"Standard Wheelchair Access\\nHearing Impairment\\nTranslation"} /-->', 'Glen Innes Collection Centre', '', 'publish', 'closed', 'closed', '', 'glen-innes-collection-centre', '', '', '2024-10-23 12:50:22', '2024-10-23 12:50:22', '', 0, 'https://loc.awanuilabs-directories.com/?post_type=collection_centre&#038;p=17', 0, 'collection_centre', '', 0),
	(18, 1, '2024-10-23 12:52:00', '2024-10-23 12:52:00', '<!-- wp:create-block/collection-centre-details {"address":"C/- Greenwood Medical Centre\\n641 Manukau Road\\nAuckland\\nRoyal Oak\\n1023","latitude":"-36.9058454","longitude":"174.7745425","openHours":"Weekdays; 07:00 - 16:00\\nClosed all public holidays","contactInformation":"09-574 7399","paymentFacilities":"EFTPOS payments only","accessibility":"Standard Wheelchair Access\\nHearing Impairment\\nTranslation"} /-->', 'Greenlane (Royal Oak) Collection Centre', '', 'publish', 'closed', 'closed', '', 'greenlane-royal-oak-collection-centre', '', '', '2024-10-23 12:52:00', '2024-10-23 12:52:00', '', 0, 'https://loc.awanuilabs-directories.com/?post_type=collection_centre&#038;p=18', 0, 'collection_centre', '', 0),
	(19, 1, '2024-10-23 12:52:12', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2024-10-23 12:52:12', '0000-00-00 00:00:00', '', 0, 'https://loc.awanuilabs-directories.com/?post_type=collection_centre&p=19', 0, 'collection_centre', '', 0),
	(20, 1, '2024-10-23 12:55:38', '2024-10-23 12:55:38', '<!-- wp:create-block/collection-centre-details {"address":"8 Inverness Road\\nAuckland\\nBrowns Bay\\n0630","latitude":"-36.715934","longitude":"174.746860","openHours":"Weekdays; 07:00 - 16:00 hrs\\nClosed all public holidays","contactInformation":"09-574 7399","paymentFacilities":"EFTPOS payments only","accessibility":"Standard Wheelchair Access"} /-->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Browns Bay Collection Centre', '', 'publish', 'closed', 'closed', '', 'browns-bay-collection-centre', '', '', '2024-10-23 12:56:15', '2024-10-23 12:56:15', '', 0, 'https://loc.awanuilabs-directories.com/?post_type=collection_centre&#038;p=20', 0, 'collection_centre', '', 0),
	(21, 1, '2024-10-23 12:55:42', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2024-10-23 12:55:42', '0000-00-00 00:00:00', '', 0, 'https://loc.awanuilabs-directories.com/?post_type=collection_centre&p=21', 0, 'collection_centre', '', 0),
	(22, 1, '2024-10-23 13:01:22', '2024-10-23 13:01:22', '<!-- wp:create-block/collection-centre-details {"address":"2 Fleet Street\\nAuckland\\nDevonport\\n0624","latitude":"-36.829338","longitude":"174.797275","openHours":"Weekdays; 07:00 – 16:00 hrs\\nClosed all public holidays","contactInformation":"09-574 7399","paymentFacilities":"EFTPOS payments only","accessibility":"Standard Wheelchair Access"} /-->', 'Devonport Collection Centre', '', 'publish', 'closed', 'closed', '', 'devonport-collection-centre', '', '', '2024-10-23 13:01:22', '2024-10-23 13:01:22', '', 0, 'https://loc.awanuilabs-directories.com/?post_type=collection_centre&#038;p=22', 0, 'collection_centre', '', 0),
	(23, 1, '2024-10-23 13:03:17', '2024-10-23 13:03:17', '<!-- wp:create-block/collection-centre-details {"address":"Shop 216B, Level 2, Glenfield Mall\\n385 Glenfield Road\\nAuckland\\nGlenfield\\n0629","latitude":"-36.7820777","longitude":"174.7221247","openHours":"Weekdays; 07:00 - 16:00 hrs\\nSaturdays; 8:00 - 12:00 hrs\\nClosed all public holidays","contactInformation":"09-574 7399","paymentFacilities":"EFTPOS payments only","accessibility":"Standard Wheelchair Access"} /-->', 'Glenfield Collection Centre', '', 'publish', 'closed', 'closed', '', 'glenfield-collection-centre', '', '', '2024-10-23 13:03:17', '2024-10-23 13:03:17', '', 0, 'https://loc.awanuilabs-directories.com/?post_type=collection_centre&#038;p=23', 0, 'collection_centre', '', 0),
	(24, 1, '2024-10-23 13:05:22', '2024-10-23 13:05:22', '<!-- wp:create-block/collection-centre-details {"address":"C/- Apollo Health and Wellness Centre\\n119 Apollo Drive\\nAuckland\\nRosedale\\n0632","latitude":"-36.735647789846524","longitude":"174.72755708592172","openHours":"Weekdays; 07:00 - 17:45\\nSaturdays; 8:00 - 12:00\\nPublic holidays: see link on homepage for hours","contactInformation":"09-574 7399","paymentFacilities":"EFTPOS payments only","accessibility":"Standard Wheelchair Access"} /-->', 'Mairangi Bay Collection Centre', '', 'publish', 'closed', 'closed', '', 'mairangi-bay-collection-centre', '', '', '2024-10-23 13:05:22', '2024-10-23 13:05:22', '', 0, 'https://loc.awanuilabs-directories.com/?post_type=collection_centre&#038;p=24', 0, 'collection_centre', '', 0),
	(25, 1, '2024-10-23 13:11:00', '2024-10-23 13:11:00', '<!-- wp:create-block/collection-centre-details {"address":"C/- Beachlands Medical Centre\\n129 Beachlands Road\\nAuckland\\nBeachlands\\n2018","latitude":"-36.889464601964846","longitude":"175.01078147372644","openHours":"Weekdays; 8:00 - 13:00\\nClosed all public holidays","contactInformation":"09-574 7399","paymentFacilities":"EFTPOS payments only","accessibility":"Standard Wheelchair Access\\nHearing Impairment\\nTranslation"} /-->', 'Beachlands Collection Centre', '', 'publish', 'closed', 'closed', '', 'beachlands-collection-centre', '', '', '2024-10-23 13:11:00', '2024-10-23 13:11:00', '', 0, 'https://loc.awanuilabs-directories.com/?post_type=collection_centre&#038;p=25', 0, 'collection_centre', '', 0),
	(26, 1, '2024-10-23 13:13:16', '2024-10-23 13:13:16', '<!-- wp:create-block/collection-centre-details {"address":"292a Botany Road\\nAuckland\\nGolflands\\n2013","latitude":"-36.92391239049903","longitude":"174.9132672836172","openHours":"Weekdays; 07:00 - 17:45\\nSaturdays; 8:00 - 12:00\\nPublic holidays: see link on homepage for hours","contactInformation":"09-574 7399","paymentFacilities":"EFTPOS payments only","accessibility":"Standard Wheelchair Access\\nHearing Impairment\\nTranslation"} /-->', 'Botany Collection Centre', '', 'publish', 'closed', 'closed', '', 'botany-collection-centre', '', '', '2024-10-23 13:13:16', '2024-10-23 13:13:16', '', 0, 'https://loc.awanuilabs-directories.com/?post_type=collection_centre&#038;p=26', 0, 'collection_centre', '', 0),
	(27, 1, '2024-10-23 13:14:44', '2024-10-23 13:14:44', '<!-- wp:create-block/collection-centre-details {"address":"124 Dawson Road\\nAuckland\\nClover Park\\n2023","latitude":"-36.978774","longitude":"174.9014073","openHours":"Weekdays; 07:00 - 16:00\\nSaturdays; 8:00 - 12:00\\nClosed all public holidays","contactInformation":"09-574 7399","paymentFacilities":"EFTPOS payments only","accessibility":"Translation\\nHearing Impairment\\nStandard Wheelchair Access"} /-->', 'Chapel Downs Collection Centre', '', 'publish', 'closed', 'closed', '', 'chapel-downs-collection-centre', '', '', '2024-10-23 13:14:44', '2024-10-23 13:14:44', '', 0, 'https://loc.awanuilabs-directories.com/?post_type=collection_centre&#038;p=27', 0, 'collection_centre', '', 0),
	(28, 1, '2024-10-23 13:16:30', '2024-10-23 13:16:30', '<!-- wp:create-block/collection-centre-details {"address":"C/- Clendon Medical Centre\\n15 Palmers Road\\nAuckland\\nClendon Park\\n2103","latitude":"-37.03408013353804","longitude":"174.8680001978506","openHours":"Weekdays; 07:00 - 16:00\\nClosed between 12:00 and 13:00\\nClosed all public holidays","contactInformation":"09-574 7399","paymentFacilities":"EFTPOS payments only","accessibility":"Standard Wheelchair Access\\nHearing Impairment\\nTranslation"} /-->', 'Clendon Collection Centre', '', 'publish', 'closed', 'closed', '', 'clendon-collection-centre', '', '', '2024-10-23 13:16:30', '2024-10-23 13:16:30', '', 0, 'https://loc.awanuilabs-directories.com/?post_type=collection_centre&#038;p=28', 0, 'collection_centre', '', 0),
	(29, 1, '2024-10-23 13:18:51', '2024-10-23 13:18:51', '<!-- wp:create-block/collection-centre-details {"address":"C/- Clevedon Village Medical Centre\\n27 Papakura-Clevedon Rd\\nAuckland\\nClevedon\\n2582","latitude":"-36.99403704968256","longitude":"175.03625840890084","openHours":"Weekdays; 8:30 – 11:30\\nClosed all public holidays","contactInformation":"09-574 7399","paymentFacilities":"EFTPOS payments only","accessibility":"Standard Wheelchair Access\\nHearing Impairment\\nTranslation"} /-->', 'Clevedon Collection Centre', '', 'publish', 'closed', 'closed', '', 'clevedon-collection-centre', '', '', '2024-10-23 13:18:51', '2024-10-23 13:18:51', '', 0, 'https://loc.awanuilabs-directories.com/?post_type=collection_centre&#038;p=29', 0, 'collection_centre', '', 0),
	(30, 1, '2024-10-23 13:20:14', '2024-10-23 13:20:14', '<!-- wp:create-block/collection-centre-details {"address":"46 Wellington Street\\nAuckland\\nHowick\\n2014","latitude":"-36.8945485","longitude":"174.9298272","openHours":"Weekdays; 07:00 - 16:00\\nSaturdays; 8:00 - 12:00\\nClosed all public holidays","contactInformation":"09-574 7399","paymentFacilities":"EFTPOS payments only","accessibility":"Visual Impairment\\nHearing Impairment\\nTranslation"} /-->', 'Howick Collection Centre', '', 'publish', 'closed', 'closed', '', 'howick-collection-centre', '', '', '2024-10-23 13:20:14', '2024-10-23 13:20:14', '', 0, 'https://loc.awanuilabs-directories.com/?post_type=collection_centre&#038;p=30', 0, 'collection_centre', '', 0),
	(31, 1, '2024-10-23 13:33:39', '2024-10-23 13:33:39', '<!-- wp:create-block/collection-centre-details {"address":"Westview Medical Centre\\n5 Glendale Road\\nGlen Eden\\nAuckland\\n0602","latitude":"-36.910330","longitude":"174.649828","openHours":"Weekdays; 07:00 - 16:00\\nClosed all public holidays","contactInformation":"09-574 7399","paymentFacilities":"EFTPOS payments only","accessibility":"Standard Wheelchair Access"} /-->', 'Glen Eden Collection Centre', '', 'publish', 'closed', 'closed', '', 'glen-eden-collection-centre', '', '', '2024-10-23 13:33:39', '2024-10-23 13:33:39', '', 0, 'https://loc.awanuilabs-directories.com/?post_type=collection_centre&#038;p=31', 0, 'collection_centre', '', 0),
	(32, 1, '2024-10-23 13:34:55', '2024-10-23 13:34:55', '<!-- wp:create-block/collection-centre-details {"address":"4343 Great North Road\\nAuckland\\nGlendene\\n0602","latitude":"-36.887003","longitude":"174.644776","openHours":"Weekdays; 07:00 – 16:00\\nClosed all public holidays","contactInformation":"09-574 7399","paymentFacilities":"EFTPOS payments only","accessibility":"Standard Wheelchair Access"} /-->', 'Glendene Collection Centre', '', 'publish', 'closed', 'closed', '', 'glendene-collection-centre', '', '', '2024-10-23 13:34:55', '2024-10-23 13:34:55', '', 0, 'https://loc.awanuilabs-directories.com/?post_type=collection_centre&#038;p=32', 0, 'collection_centre', '', 0),
	(33, 1, '2024-10-23 13:36:18', '2024-10-23 13:36:18', '<!-- wp:create-block/collection-centre-details {"address":"53-65 Commercial Road\\nAuckland\\nHelensville\\n0800","latitude":"-36.675511854427974","longitude":"174.45133943455096","openHours":"Weekdays; 07:30 – 12:30 and 13:00 – 15:45\\nClosed for lunch between 12:30 and 13:00\\nClosed all public holidays","contactInformation":"09-574 7399","paymentFacilities":"EFTPOS payments only","accessibility":"Standard Wheelchair Access"} /-->', 'Helensville Collection Centre', '', 'publish', 'closed', 'closed', '', 'helensville-collection-centre', '', '', '2024-10-23 13:36:18', '2024-10-23 13:36:18', '', 0, 'https://loc.awanuilabs-directories.com/?post_type=collection_centre&#038;p=33', 0, 'collection_centre', '', 0),
	(34, 1, '2024-10-23 13:38:02', '2024-10-23 13:38:02', '<!-- wp:create-block/collection-centre-details {"address":"10 Woodford Avenue\\nAuckland\\nHenderson\\n0610","latitude":"-36.866683779371996","longitude":"174.6303698978476","openHours":"Weekdays; 07:00 - 17:45\\nSaturdays; 8:00 - 12:00\\nPublic holidays: see link on homepage for hours","contactInformation":"09-574 7399","paymentFacilities":"EFTPOS payments only","accessibility":"Standard Wheelchair Access"} /-->', 'Henderson Collection Centre', '', 'publish', 'closed', 'closed', '', 'henderson-collection-centre', '', '', '2024-10-23 13:38:02', '2024-10-23 13:38:02', '', 0, 'https://loc.awanuilabs-directories.com/?post_type=collection_centre&#038;p=34', 0, 'collection_centre', '', 0),
	(35, 1, '2024-10-23 13:39:51', '2024-10-23 13:39:51', '<!-- wp:create-block/collection-centre-details {"address":"321a Main Road\\nHuapai\\nAuckland\\n0810","latitude":"-36.7725982938574","longitude":"174.545980559437","openHours":"Monday-Friday: 07:00-14:45 hrs\\nClosed all public holidays","contactInformation":"09 574 7399","paymentFacilities":"EFTPOS payments only","accessibility":"Standard Wheelchair Access"} /-->', 'Kumeu Collection Centre', '', 'publish', 'closed', 'closed', '', 'kumeu-collection-centre', '', '', '2024-10-23 13:39:51', '2024-10-23 13:39:51', '', 0, 'https://loc.awanuilabs-directories.com/?post_type=collection_centre&#038;p=35', 0, 'collection_centre', '', 0),
	(36, 1, '2024-10-23 13:41:06', '2024-10-23 13:41:06', '<!-- wp:create-block/collection-centre-details {"address":"WEGA - Westgate Drive Centre\\n20 Westgate Drive\\nAuckland\\nMassey\\n0614","latitude":"-36.82130474007151","longitude":"174.6123689527279","openHours":"Weekdays; 07:00 - 16:00\\nSaturdays; 8:00 - 12:00\\nClosed all public holidays","contactInformation":"09-574 7399","paymentFacilities":"EFTPOS payments only","accessibility":"Standard Wheelchair Access"} /-->', 'Massey Collection Centre', '', 'publish', 'closed', 'closed', '', 'massey-collection-centre', '', '', '2024-10-23 13:41:06', '2024-10-23 13:41:06', '', 0, 'https://loc.awanuilabs-directories.com/?post_type=collection_centre&#038;p=36', 0, 'collection_centre', '', 0),
	(37, 1, '2024-10-23 13:42:19', '2024-10-23 13:42:19', '<!-- wp:create-block/collection-centre-details {"address":"143 Ocean View Road\\nOneroa\\nWaiheke Island\\n1081","latitude":"-36.78199029573541","longitude":"175.00928437303114","openHours":"Weekdays; 07:00 - 13:45\\nClosed all public holidays","contactInformation":"09-574 7399","paymentFacilities":"EFTPOS payments only","accessibility":"Standard Wheelchair Access\\nHearing Impairment\\nTranslation"} /-->', 'Waiheke Island Collection Centre', '', 'publish', 'closed', 'closed', '', 'waiheke-island-collection-centre', '', '', '2024-10-23 13:43:06', '2024-10-23 13:43:06', '', 0, 'https://loc.awanuilabs-directories.com/?post_type=collection_centre&#038;p=37', 0, 'collection_centre', '', 0),
	(38, 1, '2024-10-23 13:44:02', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2024-10-23 13:44:02', '0000-00-00 00:00:00', '', 0, 'https://loc.awanuilabs-directories.com/?post_type=collection_centre&p=38', 0, 'collection_centre', '', 0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;

-- Dumping structure for table awanuilabs.wp_termmeta
DROP TABLE IF EXISTS `wp_termmeta`;
CREATE TABLE IF NOT EXISTS `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Dumping data for table awanuilabs.wp_termmeta: ~0 rows (approximately)
DELETE FROM `wp_termmeta`;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;

-- Dumping structure for table awanuilabs.wp_terms
DROP TABLE IF EXISTS `wp_terms`;
CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Dumping data for table awanuilabs.wp_terms: ~16 rows (approximately)
DELETE FROM `wp_terms`;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
	(1, 'Uncategorised', 'uncategorised', 0),
	(2, 'Auckland: Central (Tāmaki-Makaurau)', 'auckland-central', 0),
	(3, 'Auckland: North (Waitemata District)', 'auckland-north', 0),
	(4, 'Standard Phlebotomy', 'standard-phlebotomy', 0),
	(5, 'Quantiferon Gold Test', 'quantiferon-gold-test', 0),
	(6, 'Illumiscreen/NIPT', 'illumiscreen-nipt', 0),
	(7, 'Sexual Health Testing', 'sexual-health-testing', 0),
	(8, 'Fertility Testing', 'fertility-testing', 0),
	(9, 'Auckland: South (Counties Manukau District)', 'auckland-south', 0),
	(10, 'Auckland: West (Waitemata District)', 'auckland-west', 0),
	(11, 'Waiheke Island', 'waiheke-island', 0),
	(12, 'Skin Sensitivity', 'skin-sensitivity', 0),
	(14, 'CXbladder', 'cxbladder', 0),
	(15, 'Drug Testing', 'drug-testing', 0),
	(16, 'DNA', 'dna', 0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;

-- Dumping structure for table awanuilabs.wp_term_relationships
DROP TABLE IF EXISTS `wp_term_relationships`;
CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Dumping data for table awanuilabs.wp_term_relationships: ~133 rows (approximately)
DELETE FROM `wp_term_relationships`;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
	(1, 1, 0),
	(7, 2, 0),
	(7, 4, 0),
	(7, 5, 0),
	(7, 6, 0),
	(7, 7, 0),
	(10, 2, 0),
	(10, 4, 0),
	(10, 6, 0),
	(10, 7, 0),
	(10, 8, 0),
	(11, 3, 0),
	(11, 4, 0),
	(11, 6, 0),
	(11, 7, 0),
	(11, 8, 0),
	(12, 3, 0),
	(12, 4, 0),
	(12, 5, 0),
	(12, 6, 0),
	(12, 7, 0),
	(12, 8, 0),
	(15, 2, 0),
	(15, 4, 0),
	(15, 6, 0),
	(15, 7, 0),
	(15, 8, 0),
	(15, 12, 0),
	(16, 2, 0),
	(16, 4, 0),
	(16, 5, 0),
	(16, 6, 0),
	(16, 7, 0),
	(16, 8, 0),
	(17, 2, 0),
	(17, 4, 0),
	(17, 5, 0),
	(17, 6, 0),
	(17, 7, 0),
	(17, 8, 0),
	(18, 2, 0),
	(18, 4, 0),
	(18, 6, 0),
	(18, 7, 0),
	(18, 8, 0),
	(18, 12, 0),
	(20, 3, 0),
	(20, 4, 0),
	(20, 6, 0),
	(20, 7, 0),
	(20, 8, 0),
	(22, 3, 0),
	(22, 4, 0),
	(22, 6, 0),
	(22, 7, 0),
	(22, 8, 0),
	(22, 12, 0),
	(22, 14, 0),
	(23, 3, 0),
	(23, 4, 0),
	(23, 5, 0),
	(23, 6, 0),
	(23, 7, 0),
	(23, 8, 0),
	(23, 14, 0),
	(24, 3, 0),
	(24, 4, 0),
	(24, 5, 0),
	(24, 6, 0),
	(24, 7, 0),
	(24, 8, 0),
	(24, 14, 0),
	(24, 15, 0),
	(24, 16, 0),
	(25, 4, 0),
	(25, 6, 0),
	(25, 7, 0),
	(25, 9, 0),
	(26, 4, 0),
	(26, 5, 0),
	(26, 6, 0),
	(26, 7, 0),
	(26, 8, 0),
	(26, 9, 0),
	(26, 14, 0),
	(26, 16, 0),
	(27, 4, 0),
	(27, 6, 0),
	(27, 7, 0),
	(27, 8, 0),
	(27, 9, 0),
	(27, 12, 0),
	(28, 4, 0),
	(28, 6, 0),
	(28, 7, 0),
	(28, 8, 0),
	(28, 9, 0),
	(29, 4, 0),
	(29, 6, 0),
	(29, 7, 0),
	(29, 9, 0),
	(30, 4, 0),
	(30, 6, 0),
	(30, 7, 0),
	(30, 8, 0),
	(30, 9, 0),
	(30, 14, 0),
	(31, 4, 0),
	(31, 6, 0),
	(31, 7, 0),
	(31, 8, 0),
	(31, 10, 0),
	(32, 4, 0),
	(32, 6, 0),
	(32, 7, 0),
	(32, 8, 0),
	(32, 10, 0),
	(33, 4, 0),
	(33, 6, 0),
	(33, 8, 0),
	(33, 10, 0),
	(34, 4, 0),
	(34, 5, 0),
	(34, 6, 0),
	(34, 7, 0),
	(34, 8, 0),
	(34, 10, 0),
	(34, 14, 0),
	(34, 16, 0),
	(35, 4, 0),
	(35, 6, 0),
	(35, 7, 0),
	(35, 8, 0),
	(35, 10, 0),
	(36, 4, 0),
	(36, 6, 0),
	(36, 7, 0),
	(36, 8, 0),
	(36, 10, 0),
	(36, 14, 0),
	(37, 4, 0),
	(37, 5, 0),
	(37, 6, 0),
	(37, 7, 0),
	(37, 8, 0),
	(37, 11, 0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;

-- Dumping structure for table awanuilabs.wp_term_taxonomy
DROP TABLE IF EXISTS `wp_term_taxonomy`;
CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Dumping data for table awanuilabs.wp_term_taxonomy: ~15 rows (approximately)
DELETE FROM `wp_term_taxonomy`;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
	(1, 1, 'category', '', 0, 1),
	(2, 2, 'region', '', 0, 6),
	(3, 3, 'region', '', 0, 6),
	(4, 4, 'service', '', 0, 25),
	(5, 5, 'service', '', 0, 9),
	(6, 6, 'service', '', 0, 25),
	(7, 7, 'service', '', 0, 24),
	(8, 8, 'service', '', 0, 22),
	(9, 9, 'region', '', 0, 6),
	(10, 10, 'region', '', 0, 6),
	(11, 11, 'region', '', 0, 1),
	(12, 12, 'service', '', 0, 4),
	(14, 14, 'service', '', 0, 7),
	(15, 15, 'service', '', 0, 1),
	(16, 16, 'service', '', 0, 3);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;

-- Dumping structure for table awanuilabs.wp_usermeta
DROP TABLE IF EXISTS `wp_usermeta`;
CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Dumping data for table awanuilabs.wp_usermeta: ~18 rows (approximately)
DELETE FROM `wp_usermeta`;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
	(1, 1, 'nickname', 'admin'),
	(2, 1, 'first_name', ''),
	(3, 1, 'last_name', ''),
	(4, 1, 'description', ''),
	(5, 1, 'rich_editing', 'true'),
	(6, 1, 'syntax_highlighting', 'true'),
	(7, 1, 'comment_shortcuts', 'false'),
	(8, 1, 'admin_color', 'fresh'),
	(9, 1, 'use_ssl', '0'),
	(10, 1, 'show_admin_bar_front', 'true'),
	(11, 1, 'locale', ''),
	(12, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
	(13, 1, 'wp_user_level', '10'),
	(14, 1, 'dismissed_wp_pointers', ''),
	(15, 1, 'show_welcome_panel', '1'),
	(16, 1, 'session_tokens', 'a:1:{s:64:"c868ae8b307d38689732b9fe5aacd901aae4126e251000e0d416abb6b257d46d";a:4:{s:10:"expiration";i:1729775819;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:111:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36";s:5:"login";i:1729603019;}}'),
	(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
	(18, 1, 'community-events-location', 'a:1:{s:2:"ip";s:9:"127.0.0.0";}'),
	(19, 1, 'wp_persisted_preferences', 'a:3:{s:4:"core";a:2:{s:26:"isComplementaryAreaVisible";b:1;s:10:"openPanels";a:3:{i:0;s:11:"post-status";i:1;s:21:"taxonomy-panel-region";i:2;s:22:"taxonomy-panel-service";}}s:14:"core/edit-post";a:1:{s:12:"welcomeGuide";b:0;}s:9:"_modified";s:24:"2024-10-22T20:25:16.157Z";}');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;

-- Dumping structure for table awanuilabs.wp_users
DROP TABLE IF EXISTS `wp_users`;
CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Dumping data for table awanuilabs.wp_users: ~0 rows (approximately)
DELETE FROM `wp_users`;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
	(1, 'admin', '$P$BmajNOfQOJLslw8c3bCfZ2VtO4SVDU/', 'admin', 'noe.mermida@gmail.com', 'https://loc.awanuilabs-directories.com', '2024-10-22 13:16:43', '', 0, 'admin');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
