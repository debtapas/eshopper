-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 02, 2020 at 03:06 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eshopper`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_actionscheduler_actions`
--

CREATE TABLE `wp_actionscheduler_actions` (
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `hook` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `scheduled_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `scheduled_date_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `args` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `schedule` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `attempts` int(11) NOT NULL DEFAULT 0,
  `last_attempt_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_attempt_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `claim_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `extended_args` varchar(8000) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_actionscheduler_actions`
--

INSERT INTO `wp_actionscheduler_actions` (`action_id`, `hook`, `status`, `scheduled_date_gmt`, `scheduled_date_local`, `args`, `schedule`, `group_id`, `attempts`, `last_attempt_gmt`, `last_attempt_local`, `claim_id`, `extended_args`) VALUES
(6, 'action_scheduler/migration_hook', 'complete', '2020-10-11 09:09:38', '2020-10-11 09:09:38', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1602407378;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1602407378;}', 1, 1, '2020-10-11 09:09:54', '2020-10-11 09:09:54', 0, NULL),
(7, 'woocommerce_update_marketplace_suggestions', 'complete', '2020-10-12 06:37:25', '2020-10-12 06:37:25', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1602484645;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1602484645;}', 0, 1, '2020-10-12 06:37:58', '2020-10-12 06:37:58', 0, NULL),
(8, 'woocommerce_update_marketplace_suggestions', 'complete', '2020-10-20 07:57:37', '2020-10-20 07:57:37', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1603180657;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1603180657;}', 0, 1, '2020-10-20 07:57:49', '2020-10-20 07:57:49', 0, NULL),
(9, 'action_scheduler/migration_hook', 'complete', '2020-10-28 13:24:57', '2020-10-28 13:24:57', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1603891497;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1603891497;}', 1, 1, '2020-10-28 13:25:46', '2020-10-28 13:25:46', 0, NULL),
(10, 'woocommerce_update_marketplace_suggestions', 'complete', '2020-10-28 13:44:49', '2020-10-28 13:44:49', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1603892689;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1603892689;}', 0, 1, '2020-10-28 13:45:51', '2020-10-28 13:45:51', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wp_actionscheduler_claims`
--

CREATE TABLE `wp_actionscheduler_claims` (
  `claim_id` bigint(20) UNSIGNED NOT NULL,
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_actionscheduler_groups`
--

CREATE TABLE `wp_actionscheduler_groups` (
  `group_id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_actionscheduler_groups`
--

INSERT INTO `wp_actionscheduler_groups` (`group_id`, `slug`) VALUES
(1, 'action-scheduler-migration');

-- --------------------------------------------------------

--
-- Table structure for table `wp_actionscheduler_logs`
--

CREATE TABLE `wp_actionscheduler_logs` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `log_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `log_date_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_actionscheduler_logs`
--

INSERT INTO `wp_actionscheduler_logs` (`log_id`, `action_id`, `message`, `log_date_gmt`, `log_date_local`) VALUES
(1, 6, 'action created', '2020-10-11 09:08:38', '2020-10-11 09:08:38'),
(2, 6, 'action started via WP Cron', '2020-10-11 09:09:54', '2020-10-11 09:09:54'),
(3, 6, 'action complete via WP Cron', '2020-10-11 09:09:54', '2020-10-11 09:09:54'),
(4, 7, 'action created', '2020-10-12 06:37:25', '2020-10-12 06:37:25'),
(5, 7, 'action started via Async Request', '2020-10-12 06:37:57', '2020-10-12 06:37:57'),
(6, 7, 'action complete via Async Request', '2020-10-12 06:37:58', '2020-10-12 06:37:58'),
(7, 8, 'action created', '2020-10-20 07:57:37', '2020-10-20 07:57:37'),
(8, 8, 'action started via Async Request', '2020-10-20 07:57:48', '2020-10-20 07:57:48'),
(9, 8, 'action complete via Async Request', '2020-10-20 07:57:49', '2020-10-20 07:57:49'),
(10, 9, 'action created', '2020-10-28 13:23:57', '2020-10-28 13:23:57'),
(11, 9, 'action started via WP Cron', '2020-10-28 13:25:45', '2020-10-28 13:25:45'),
(12, 9, 'action complete via WP Cron', '2020-10-28 13:25:46', '2020-10-28 13:25:46'),
(13, 10, 'action created', '2020-10-28 13:44:50', '2020-10-28 13:44:50'),
(14, 10, 'action started via WP Cron', '2020-10-28 13:45:50', '2020-10-28 13:45:50'),
(15, 10, 'action complete via WP Cron', '2020-10-28 13:45:51', '2020-10-28 13:45:51');

-- --------------------------------------------------------

--
-- Table structure for table `wp_berocket_termmeta`
--

CREATE TABLE `wp_berocket_termmeta` (
  `meta_id` bigint(20) NOT NULL,
  `berocket_term_id` bigint(20) NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_braapf_product_stock_status_parent`
--

CREATE TABLE `wp_braapf_product_stock_status_parent` (
  `post_id` bigint(20) NOT NULL,
  `parent_id` bigint(20) NOT NULL,
  `stock_status` tinyint(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_braapf_product_stock_status_parent`
--

INSERT INTO `wp_braapf_product_stock_status_parent` (`post_id`, `parent_id`, `stock_status`) VALUES
(11, 0, 1),
(12, 0, 1),
(13, 0, 1),
(14, 0, 1),
(15, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_braapf_product_variation_attributes`
--

CREATE TABLE `wp_braapf_product_variation_attributes` (
  `post_id` bigint(20) NOT NULL,
  `parent_id` bigint(20) NOT NULL,
  `meta_key` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_braapf_product_variation_attributes`
--

INSERT INTO `wp_braapf_product_variation_attributes` (`post_id`, `parent_id`, `meta_key`, `meta_value_id`) VALUES
(27, 18, 'pa_color', 26),
(27, 18, 'pa_size', 24),
(27, 18, 'pa_size', 25),
(27, 18, 'pa_size', 27),
(28, 18, 'pa_color', 23),
(28, 18, 'pa_size', 24),
(28, 18, 'pa_size', 25),
(28, 18, 'pa_size', 27),
(29, 18, 'pa_color', 22),
(29, 18, 'pa_size', 24),
(29, 18, 'pa_size', 25),
(29, 18, 'pa_size', 27),
(30, 19, 'pa_color', 26),
(31, 19, 'pa_color', 23),
(32, 19, 'pa_color', 22),
(37, 19, 'pa_color', 22);

-- --------------------------------------------------------

--
-- Table structure for table `wp_braapf_term_taxonomy_hierarchical`
--

CREATE TABLE `wp_braapf_term_taxonomy_hierarchical` (
  `term_taxonomy_id` bigint(20) NOT NULL,
  `term_id` bigint(20) NOT NULL,
  `term_taxonomy_child_id` bigint(20) NOT NULL,
  `term_child_id` bigint(20) NOT NULL,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_braapf_variation_attributes`
--

CREATE TABLE `wp_braapf_variation_attributes` (
  `post_id` bigint(20) NOT NULL,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_braapf_variation_attributes`
--

INSERT INTO `wp_braapf_variation_attributes` (`post_id`, `taxonomy`) VALUES
(18, 'pa_color'),
(18, 'pa_size'),
(19, 'pa_color');

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_commentmeta`
--

INSERT INTO `wp_commentmeta` (`meta_id`, `comment_id`, `meta_key`, `meta_value`) VALUES
(1, 2, 'verified', '0'),
(2, 7, '_wp_trash_meta_status', '1'),
(3, 7, '_wp_trash_meta_time', '1604319423'),
(4, 8, '_wp_trash_meta_status', '1'),
(5, 8, '_wp_trash_meta_time', '1604319425'),
(6, 6, '_wp_trash_meta_status', '1'),
(7, 6, '_wp_trash_meta_time', '1604319430'),
(8, 5, '_wp_trash_meta_status', '1'),
(9, 5, '_wp_trash_meta_time', '1604319434'),
(10, 9, '_wp_trash_meta_status', '1'),
(11, 9, '_wp_trash_meta_time', '1604319438'),
(12, 3, '_wp_trash_meta_status', '1'),
(13, 3, '_wp_trash_meta_time', '1604319438'),
(14, 2, '_wp_trash_meta_status', '1'),
(15, 2, '_wp_trash_meta_time', '1604319441'),
(16, 1, '_wp_trash_meta_status', '1'),
(17, 1, '_wp_trash_meta_time', '1604319445'),
(18, 4, '_wp_trash_meta_status', '1'),
(19, 4, '_wp_trash_meta_time', '1604319701');

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2020-10-11 09:05:20', '2020-10-11 09:05:20', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, 'trash', '', '', 0, 0),
(2, 22, 'admin', 'debtapas14@gmail.com', '', '::1', '2020-10-15 13:07:12', '2020-10-15 13:07:12', '<strong>Where can I get some?</strong>\n\nThere are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 0, 'trash', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:81.0) Gecko/20100101 Firefox/81.0', '', 0, 1),
(3, 137, 'Tapas Deb', 'geujao@gmail.com', 'http://www.qewvbasd456.com', '::1', '2020-10-31 11:27:46', '2020-10-31 11:27:46', 'this is testing perspose 2020', 0, 'trash', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', '', 0, 0),
(4, 1, 'Danny Danjappa', 'dannydanjappa12@gmail.com', 'http://www.dannydanjappa234.co.in', '::1', '2020-11-01 05:24:12', '2020-11-01 05:24:12', 'quia dolor sit amet consectetur adipisci[ng]velit, sed quia non numquam [do] eius modi tempora inci[di]dunt, ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum[d] exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit, qui in ea voluptate velit esse, quam nihil molestiae consequatur, vel illum, qui dolorem eum fugiat, quo voluptas nulla pariatur? [33] At vero eos et accusamus et iusto odio dignissimos ducimus, qui blanditiis praesentium voluptatum deleniti atque corrupti, quos dolores et quas molestias excepturi sint, obcaecati cupiditate non provident, similique sunt in culpa, qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio, cumque nihil impedit, quo minus id, quod maxime placeat, facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet, ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat…', 0, 'trash', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', '', 0, 0),
(5, 1, 'admin', 'debtapas14@gmail.com', '', '::1', '2020-11-01 05:42:27', '2020-11-01 05:42:27', 'Thanks for your replay Danny', 0, 'trash', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', '', 4, 1),
(6, 1, 'admin', 'debtapas14@gmail.com', '', '::1', '2020-11-01 05:43:39', '2020-11-01 05:43:39', 'Thanks for all Commenter,', 0, 'trash', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', '', 1, 1),
(7, 137, 'Debangshu Saha', 'debangshu_saha@gmail.com', 'http://www.debangshu_saha.com', '::1', '2020-11-02 06:21:23', '2020-11-02 06:21:23', 'The $file path is passed through a filter hook called ‘comments_template’, which includes the TEMPLATEPATH and $file combined. Tries the $filtered path first and if it fails it will require the default comment template from the default theme. If either does not exist, then the WordPress process will be halted. It is advised for that reason, that the default theme is not deleted.', 0, 'trash', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', '', 0, 0),
(8, 137, 'admin', 'debtapas14@gmail.com', '', '::1', '2020-11-02 12:13:28', '2020-11-02 12:13:28', 'This is reply for Debangshu Saha posts', 0, 'trash', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36', '', 7, 1),
(9, 1, 'admin', 'debtapas14@gmail.com', '', '::1', '2020-11-02 12:14:18', '2020-11-02 12:14:18', 'This is DANNY\'s reply', 0, 'trash', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36', '', 4, 1),
(10, 1, 'admin', 'debtapas14@gmail.com', '', '::1', '2020-11-02 12:22:08', '2020-11-02 12:22:08', 'Ut enim ad minima veniam, quis nostrum[d] exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit, qui in ea voluptate velit esse, quam nihil molestiae consequatur, vel illum, qui dolorem eum fugiat, quo voluptas nulla pariatur? [33] At vero eos et accusamus et iusto odio dignissimos ducimus, qui blanditiis praesentium voluptatum deleniti atque corrupti, quos dolores et quas molestias excepturi sint, obcaecati cupiditate non provident, similique sunt in culpa, qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio, cumque nihil impedit, quo minus id, quod maxime placeat, facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet, ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat…', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36', '', 0, 1),
(11, 1, 'Danny Danjappa', 'danny1234@gmail.com', 'http://www.danny.com', '::1', '2020-11-02 12:26:36', '2020-11-02 12:26:36', 'This is DANNY\'s reply.', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36', '', 10, 2),
(12, 1, 'admin', 'debtapas14@gmail.com', '', '::1', '2020-11-02 12:39:31', '2020-11-02 12:39:31', 'This is DANNY\'s reply of reply 2', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36', '', 11, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_mailchimp_carts`
--

CREATE TABLE `wp_mailchimp_carts` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `cart` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_mailchimp_jobs`
--

CREATE TABLE `wp_mailchimp_jobs` (
  `id` bigint(20) NOT NULL,
  `obj_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/eshopper', 'yes'),
(2, 'home', 'http://localhost/eshopper', 'yes'),
(3, 'blogname', 'eshopper', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'debtapas14@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '2', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:8:{i:0;s:41:\"advanced-custom-fields-pro-master/acf.php\";i:1;s:53:\"facebook-for-woocommerce/facebook-for-woocommerce.php\";i:3;s:51:\"mailchimp-for-woocommerce/mailchimp-woocommerce.php\";i:4;s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";i:5;s:47:\"show-current-template/show-current-template.php\";i:6;s:48:\"woocommerce-ajax-filters/woocommerce-filters.php\";i:7;s:27:\"woocommerce/woocommerce.php\";i:8;s:41:\"wordpress-importer/wordpress-importer.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'eshopper', 'yes'),
(41, 'stylesheet', 'eshopper', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '45805', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:3:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}i:3;a:4:{s:5:\"title\";s:16:\"Product Category\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:1;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:48:\"woocommerce-ajax-filters/woocommerce-filters.php\";a:2:{i:0;s:13:\"BeRocket_AAPF\";i:1;s:12:\"deactivation\";}}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '96', 'yes'),
(84, 'page_on_front', '94', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'admin_email_lifespan', '1617959115', 'yes'),
(94, 'initial_db_version', '45805', 'yes'),
(95, 'wp_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:143:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;s:15:\"manage_berocket\";b:1;s:23:\"manage_berocket_account\";b:1;s:18:\"edit_single_filter\";b:1;s:18:\"read_single_filter\";b:1;s:20:\"delete_single_filter\";b:1;s:19:\"edit_single_filters\";b:1;s:26:\"edit_others_single_filters\";b:1;s:22:\"publish_single_filters\";b:1;s:27:\"read_private_single_filters\";b:1;s:21:\"delete_single_filters\";b:1;s:29:\"delete_private_single_filters\";b:1;s:31:\"delete_published_single_filters\";b:1;s:28:\"delete_others_single_filters\";b:1;s:27:\"edit_private_single_filters\";b:1;s:29:\"edit_published_single_filters\";b:1;s:18:\"edit_group_filters\";b:1;s:18:\"read_group_filters\";b:1;s:20:\"delete_group_filters\";b:1;s:19:\"edit_group_filterss\";b:1;s:26:\"edit_others_group_filterss\";b:1;s:22:\"publish_group_filterss\";b:1;s:27:\"read_private_group_filterss\";b:1;s:21:\"delete_group_filterss\";b:1;s:29:\"delete_private_group_filterss\";b:1;s:31:\"delete_published_group_filterss\";b:1;s:28:\"delete_others_group_filterss\";b:1;s:27:\"edit_private_group_filterss\";b:1;s:29:\"edit_published_group_filterss\";b:1;s:20:\"manage_berocket_aapf\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:92:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"edit_theme_options\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}}', 'yes'),
(96, 'fresh_site', '0', 'yes'),
(97, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:5:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:12:\"sidebar-shop\";a:4:{i:0;s:33:\"woocommerce_layered_nav_filters-2\";i:1;s:26:\"woocommerce_price_filter-2\";i:2;s:21:\"berocket_aapf_group-2\";i:3;s:25:\"woocommerce_layered_nav-2\";}s:14:\"single-product\";a:3:{i:0;s:27:\"woocommerce_rating_filter-2\";i:1;s:26:\"woocommerce_price_filter-3\";i:2;s:12:\"categories-3\";}s:12:\"page-product\";a:2:{i:0;s:7:\"pages-2\";i:1;s:32:\"woocommerce_product_categories-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(103, 'cron', 'a:17:{i:1604325796;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"0d04ed39571b55704c122d726248bbac\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:1:{i:0;s:7:\"WP Cron\";}s:8:\"interval\";i:60;}}}i:1604325828;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1604325924;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1604326115;a:1:{s:33:\"wc_admin_process_orders_milestone\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1604326125;a:1:{s:29:\"wc_admin_unsnooze_admin_notes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1604329711;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1604351123;a:2:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1604351124;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1604361600;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1604385480;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1604394321;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1604394336;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1604394517;a:1:{s:14:\"wc_admin_daily\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1604394521;a:2:{s:33:\"woocommerce_cleanup_personal_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1604405311;a:1:{s:24:\"woocommerce_cleanup_logs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1604999371;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:11:\"fifteendays\";s:4:\"args\";a:0:{}s:8:\"interval\";i:1296000;}}}s:7:\"version\";i:2;}', 'yes'),
(104, 'widget_pages', 'a:2:{i:2;a:3:{s:5:\"title\";s:5:\"Pages\";s:6:\"sortby\";s:10:\"post_title\";s:7:\"exclude\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'recovery_keys', 'a:1:{s:22:\"KDic07cSe27bFxmXkL0TSL\";a:2:{s:10:\"hashed_key\";s:34:\"$P$BHy6xaaidIPZa7z.bysKHq4S0bndFi.\";s:10:\"created_at\";i:1604306526;}}', 'yes'),
(116, 'theme_mods_twentytwenty', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:16:\"background_color\";s:3:\"fff\";s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1602421442;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(124, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1604307930;s:7:\"checked\";a:1:{s:8:\"eshopper\";s:3:\"1.3\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(125, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:5:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.5.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.5.3.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.5.3-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.5.3-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.5.3\";s:7:\"version\";s:5:\"5.5.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.5.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.5.3.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.5.3-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.5.3-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.5.3\";s:7:\"version\";s:5:\"5.5.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.5.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.5.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.5.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.5.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.5.2\";s:7:\"version\";s:5:\"5.5.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:3;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.4.4.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.4.4.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.4.4-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.4.4-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.4.4\";s:7:\"version\";s:5:\"5.4.4\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:4;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.6.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.6.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.3.6-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.3.6-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.3.6-partial-4.zip\";s:8:\"rollback\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.3.6-rollback-4.zip\";}s:7:\"current\";s:5:\"5.3.6\";s:7:\"version\";s:5:\"5.3.6\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:5:\"5.3.4\";s:9:\"new_files\";s:0:\"\";}}s:12:\"last_checked\";i:1604307931;s:15:\"version_checked\";s:5:\"5.3.4\";s:12:\"translations\";a:0:{}}', 'no'),
(130, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:20:\"debtapas14@gmail.com\";s:7:\"version\";s:5:\"5.3.4\";s:9:\"timestamp\";i:1602407141;}', 'no'),
(138, 'can_compress_scripts', '1', 'no'),
(149, 'recently_activated', 'a:1:{s:59:\"kliken-marketing-for-google/kliken-marketing-for-google.php\";i:1603891436;}', 'yes'),
(154, 'action_scheduler_hybrid_store_demarkation', '5', 'yes'),
(155, 'schema-ActionScheduler_StoreSchema', '3.0.1602407296', 'yes'),
(156, 'schema-ActionScheduler_LoggerSchema', '2.0.1602407296', 'yes'),
(159, 'woocommerce_schema_version', '430', 'yes'),
(160, 'woocommerce_store_address', 'dumdum', 'yes'),
(161, 'woocommerce_store_address_2', '', 'yes'),
(162, 'woocommerce_store_city', 'Kolkata', 'yes'),
(163, 'woocommerce_default_country', 'IN:WB', 'yes'),
(164, 'woocommerce_store_postcode', '700074', 'yes'),
(165, 'woocommerce_allowed_countries', 'all', 'yes'),
(166, 'woocommerce_all_except_countries', 'a:0:{}', 'yes'),
(167, 'woocommerce_specific_allowed_countries', 'a:0:{}', 'yes'),
(168, 'woocommerce_ship_to_countries', '', 'yes'),
(169, 'woocommerce_specific_ship_to_countries', 'a:0:{}', 'yes'),
(170, 'woocommerce_default_customer_address', 'base', 'yes'),
(171, 'woocommerce_calc_taxes', 'no', 'yes'),
(172, 'woocommerce_enable_coupons', 'yes', 'yes'),
(173, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(174, 'woocommerce_currency', 'INR', 'yes'),
(175, 'woocommerce_currency_pos', 'left', 'yes'),
(176, 'woocommerce_price_thousand_sep', ',', 'yes'),
(177, 'woocommerce_price_decimal_sep', '.', 'yes'),
(178, 'woocommerce_price_num_decimals', '2', 'yes'),
(179, 'woocommerce_shop_page_id', '6', 'yes'),
(180, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(181, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(182, 'woocommerce_placeholder_image', '5', 'yes'),
(183, 'woocommerce_weight_unit', 'kg', 'yes'),
(184, 'woocommerce_dimension_unit', 'cm', 'yes'),
(185, 'woocommerce_enable_reviews', 'yes', 'yes'),
(186, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(187, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(188, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(189, 'woocommerce_review_rating_required', 'yes', 'no'),
(190, 'woocommerce_manage_stock', 'yes', 'yes'),
(191, 'woocommerce_hold_stock_minutes', '60', 'no'),
(192, 'woocommerce_notify_low_stock', 'yes', 'no'),
(193, 'woocommerce_notify_no_stock', 'yes', 'no'),
(194, 'woocommerce_stock_email_recipient', 'debtapas14@gmail.com', 'no'),
(195, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(196, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(197, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(198, 'woocommerce_stock_format', '', 'yes'),
(199, 'woocommerce_file_download_method', 'force', 'no'),
(200, 'woocommerce_downloads_require_login', 'no', 'no'),
(201, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(202, 'woocommerce_downloads_add_hash_to_filename', 'yes', 'yes'),
(203, 'woocommerce_prices_include_tax', 'no', 'yes'),
(204, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(205, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(206, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(207, 'woocommerce_tax_classes', '', 'yes'),
(208, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(209, 'woocommerce_tax_display_cart', 'excl', 'yes'),
(210, 'woocommerce_price_display_suffix', '', 'yes'),
(211, 'woocommerce_tax_total_display', 'itemized', 'no'),
(212, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(213, 'woocommerce_shipping_cost_requires_address', 'no', 'yes'),
(214, 'woocommerce_ship_to_destination', 'billing', 'no'),
(215, 'woocommerce_shipping_debug_mode', 'no', 'yes'),
(216, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(217, 'woocommerce_enable_checkout_login_reminder', 'no', 'no'),
(218, 'woocommerce_enable_signup_and_login_from_checkout', 'no', 'no'),
(219, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(220, 'woocommerce_registration_generate_username', 'yes', 'no'),
(221, 'woocommerce_registration_generate_password', 'yes', 'no'),
(222, 'woocommerce_erasure_request_removes_order_data', 'no', 'no'),
(223, 'woocommerce_erasure_request_removes_download_data', 'no', 'no'),
(224, 'woocommerce_allow_bulk_remove_personal_data', 'no', 'no'),
(225, 'woocommerce_registration_privacy_policy_text', 'Your personal data will be used to support your experience throughout this website, to manage access to your account, and for other purposes described in our [privacy_policy].', 'yes'),
(226, 'woocommerce_checkout_privacy_policy_text', 'Your personal data will be used to process your order, support your experience throughout this website, and for other purposes described in our [privacy_policy].', 'yes'),
(227, 'woocommerce_delete_inactive_accounts', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(228, 'woocommerce_trash_pending_orders', '', 'no'),
(229, 'woocommerce_trash_failed_orders', '', 'no'),
(230, 'woocommerce_trash_cancelled_orders', '', 'no'),
(231, 'woocommerce_anonymize_completed_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(232, 'woocommerce_email_from_name', 'eshopper', 'no'),
(233, 'woocommerce_email_from_address', 'debtapas14@gmail.com', 'no'),
(234, 'woocommerce_email_header_image', '', 'no'),
(235, 'woocommerce_email_footer_text', '{site_title} &mdash; Built with {WooCommerce}', 'no'),
(236, 'woocommerce_email_base_color', '#96588a', 'no'),
(237, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(238, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(239, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(240, 'woocommerce_cart_page_id', '7', 'no'),
(241, 'woocommerce_checkout_page_id', '8', 'no'),
(242, 'woocommerce_myaccount_page_id', '9', 'no'),
(243, 'woocommerce_terms_page_id', '', 'no'),
(244, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(245, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(246, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(247, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(248, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(249, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(250, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(251, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(252, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(253, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(254, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(255, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(256, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(257, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(258, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(259, 'woocommerce_api_enabled', 'no', 'yes'),
(260, 'woocommerce_allow_tracking', 'yes', 'no'),
(261, 'woocommerce_show_marketplace_suggestions', 'yes', 'no'),
(262, 'woocommerce_single_image_width', '600', 'yes'),
(263, 'woocommerce_thumbnail_image_width', '300', 'yes'),
(264, 'woocommerce_checkout_highlight_required_fields', 'yes', 'yes'),
(265, 'woocommerce_demo_store', 'no', 'no'),
(266, 'woocommerce_permalinks', 'a:5:{s:12:\"product_base\";s:7:\"product\";s:13:\"category_base\";s:16:\"product-category\";s:8:\"tag_base\";s:11:\"product-tag\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:0;}', 'yes'),
(267, 'current_theme_supports_woocommerce', 'yes', 'yes'),
(268, 'woocommerce_queue_flush_rewrite_rules', 'no', 'yes'),
(271, 'default_product_cat', '15', 'yes'),
(272, 'woocommerce_admin_notices', 'a:1:{i:0;s:7:\"install\";}', 'yes'),
(275, 'woocommerce_version', '4.5.2', 'yes'),
(276, 'woocommerce_db_version', '4.5.2', 'yes'),
(277, 'woocommerce_homescreen_enabled', 'yes', 'yes'),
(280, 'action_scheduler_lock_async-request-runner', '1604325810', 'yes'),
(281, 'woocommerce_maxmind_geolocation_settings', 'a:1:{s:15:\"database_prefix\";s:32:\"wdZ4hWjCmdP7pRJgheLPJWOl0OVN7W7d\";}', 'yes'),
(282, '_transient_woocommerce_webhook_ids_status_active', 'a:0:{}', 'yes'),
(283, 'widget_woocommerce_widget_cart', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(284, 'widget_woocommerce_layered_nav_filters', 'a:2:{i:2;a:1:{s:5:\"title\";s:22:\"Active Product filters\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(285, 'widget_woocommerce_layered_nav', 'a:2:{i:2;a:4:{s:5:\"title\";s:9:\"Filter by\";s:9:\"attribute\";s:4:\"size\";s:12:\"display_type\";s:4:\"list\";s:10:\"query_type\";s:3:\"and\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(286, 'widget_woocommerce_price_filter', 'a:3:{i:2;a:1:{s:5:\"title\";s:24:\"Filter Products by price\";}i:3;a:1:{s:5:\"title\";s:15:\"Filter by Price\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(287, 'widget_woocommerce_product_categories', 'a:2:{i:2;a:8:{s:5:\"title\";s:18:\"Product categories\";s:7:\"orderby\";s:4:\"name\";s:8:\"dropdown\";i:0;s:5:\"count\";i:1;s:12:\"hierarchical\";i:1;s:18:\"show_children_only\";i:0;s:10:\"hide_empty\";i:0;s:9:\"max_depth\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(288, 'widget_woocommerce_product_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(289, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(290, 'widget_woocommerce_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(291, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(292, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(293, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(294, 'widget_woocommerce_rating_filter', 'a:2:{i:2;a:1:{s:5:\"title\";s:14:\"Average Rating\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(297, 'woocommerce_admin_version', '1.5.0', 'yes'),
(298, 'woocommerce_admin_install_timestamp', '1602407317', 'yes'),
(302, 'wc_admin_note_home_screen_feedback_homescreen_accessed', '1602407318', 'yes'),
(305, 'wc_blocks_db_schema_version', '260', 'yes'),
(310, 'woocommerce_onboarding_profile', 'a:8:{s:9:\"completed\";b:1;s:12:\"setup_client\";b:1;s:8:\"industry\";a:3:{i:0;a:1:{s:4:\"slug\";s:27:\"fashion-apparel-accessories\";}i:1;a:1:{s:4:\"slug\";s:21:\"art-music-photography\";}i:2;a:1:{s:4:\"slug\";s:21:\"home-furniture-garden\";}}s:13:\"product_types\";a:1:{i:0;s:8:\"physical\";}s:13:\"product_count\";s:8:\"101-1000\";s:14:\"selling_venues\";s:2:\"no\";s:19:\"business_extensions\";a:3:{i:0;s:24:\"facebook-for-woocommerce\";i:1;s:25:\"mailchimp-for-woocommerce\";i:2;s:27:\"kliken-marketing-for-google\";}s:7:\"plugins\";s:7:\"skipped\";}', 'yes'),
(311, 'woocommerce_onboarding_opt_in', 'yes', 'yes'),
(315, '_transient_woocommerce_reports-transient-version', '1604319924', 'yes'),
(335, 'mailchimp-woocommerce', 'a:0:{}', 'yes'),
(337, 'mailchimp-woocommerce-store_id', '5f82cc5d21b9a', 'yes'),
(338, 'mailchimp-woocommerce-store-id-last-verified', '1602407517', 'yes'),
(339, 'woocommerce_kk_wcintegration_settings', 'a:3:{s:10:\"account_id\";i:0;s:9:\"app_token\";s:0:\"\";s:12:\"google_token\";s:0:\"\";}', 'yes'),
(340, '_site_transient_timeout_kk_wc_welcome_message', '1604999517', 'no'),
(341, '_site_transient_kk_wc_welcome_message', '1', 'no'),
(343, 'wc_remote_inbox_notifications_specs', 'a:3:{s:37:\"ecomm-need-help-setting-up-your-store\";O:8:\"stdClass\":8:{s:4:\"slug\";s:37:\"ecomm-need-help-setting-up-your-store\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:32:\"Need help setting up your Store?\";s:7:\"content\";s:350:\"Schedule a free 30-min <a href=\"https://wordpress.com/support/concierge-support/\">quick start session</a> and get help from our specialists. We’re happy to walk through setup steps, show you around the WordPress.com dashboard, troubleshoot any issues you may have, and help you the find the features you need to accomplish your goals for your site.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:16:\"set-up-concierge\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:21:\"Schedule free session\";}}s:3:\"url\";s:34:\"https://wordpress.com/me/concierge\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:3:{i:0;s:35:\"woocommerce-shipping-australia-post\";i:1;s:32:\"woocommerce-shipping-canada-post\";i:2;s:30:\"woocommerce-shipping-royalmail\";}}}}s:20:\"woocommerce-services\";O:8:\"stdClass\":8:{s:4:\"slug\";s:20:\"woocommerce-services\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:20:\"WooCommerce Services\";s:7:\"content\";s:249:\"WooCommerce Services helps get your store “ready to sell” as quickly as possible. You create your products. We take care of tax calculation, payment processing, and shipping label printing! Learn more about the extension that you just installed.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:10:\"learn-more\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:76:\"https://docs.woocommerce.com/document/woocommerce-services/?utm_source=inbox\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}}s:5:\"rules\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:20:\"woocommerce-services\";}}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:18:\"wcadmin_active_for\";s:9:\"operation\";s:1:\"<\";s:4:\"days\";i:2;}}}s:32:\"ecomm-unique-shopping-experience\";O:8:\"stdClass\":8:{s:4:\"slug\";s:32:\"ecomm-unique-shopping-experience\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:53:\"For a shopping experience as unique as your customers\";s:7:\"content\";s:274:\"Product Add-Ons allow your customers to personalize products while they’re shopping on your online store. No more follow-up email requests—customers get what they want, before they’re done checking out. Learn more about this extension that comes included in your plan.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:43:\"learn-more-ecomm-unique-shopping-experience\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:71:\"https://docs.woocommerce.com/document/product-add-ons/?utm_source=inbox\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:3:{i:0;s:35:\"woocommerce-shipping-australia-post\";i:1;s:32:\"woocommerce-shipping-canada-post\";i:2;s:30:\"woocommerce-shipping-royalmail\";}}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:18:\"wcadmin_active_for\";s:9:\"operation\";s:1:\"<\";s:4:\"days\";i:2;}}}}', 'yes'),
(344, 'wc_remote_inbox_notifications_stored_state', 'O:8:\"stdClass\":2:{s:22:\"there_were_no_products\";b:1;s:22:\"there_are_now_products\";b:0;}', 'yes'),
(345, 'woocommerce_task_list_tracked_completed_tasks', 'a:1:{i:0;s:13:\"store_details\";}', 'yes'),
(356, 'facebook_config', 'a:4:{s:8:\"pixel_id\";s:1:\"0\";s:7:\"use_pii\";b:1;s:7:\"use_s2s\";b:0;s:12:\"access_token\";s:0:\"\";}', 'yes'),
(357, 'wc_facebook_for_woocommerce_is_active', 'yes', 'yes'),
(366, 'woocommerce_task_list_welcome_modal_dismissed', '1', 'yes'),
(378, 'wc_facebook_for_woocommerce_lifecycle_events', '[{\"name\":\"install\",\"time\":1602420540,\"version\":\"2.0.4\"}]', 'no'),
(379, 'wc_facebook_for_woocommerce_version', '2.0.4', 'yes'),
(381, 'woocommerce_tracker_ua', 'a:3:{i:0;s:77:\"Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:81.0) Gecko/20100101 Firefox/81.0\";i:1;s:77:\"Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0\";i:2;s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\";}', 'yes'),
(415, 'current_theme', 'echopper', 'yes'),
(416, 'theme_mods_eshopper', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:5:{s:11:\"header-menu\";i:42;s:7:\"service\";i:43;s:10:\"quock-shop\";i:44;s:8:\"policies\";i:45;s:13:\"about-shopper\";i:46;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(417, 'theme_switched', '', 'yes'),
(418, 'woocommerce_maybe_regenerate_images_hash', '991b1ca641921cf0f5baf7a2fe85861b', 'yes'),
(428, 'wc_facebook_feed_url_secret', '4e7b835ded105ce50a9c9b5800a84f7d', 'yes'),
(429, 'wc_facebook_external_business_id', 'eshopper-5f83040590faa', 'yes'),
(563, '_transient_product_query-transient-version', '1604319441', 'yes'),
(564, '_transient_product-transient-version', '1604319441', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(567, 'woocommerce_marketplace_suggestions', 'a:2:{s:11:\"suggestions\";a:26:{i:0;a:4:{s:4:\"slug\";s:28:\"product-edit-meta-tab-header\";s:7:\"context\";s:28:\"product-edit-meta-tab-header\";s:5:\"title\";s:22:\"Recommended extensions\";s:13:\"allow-dismiss\";b:0;}i:1;a:6:{s:4:\"slug\";s:39:\"product-edit-meta-tab-footer-browse-all\";s:7:\"context\";s:28:\"product-edit-meta-tab-footer\";s:9:\"link-text\";s:21:\"Browse all extensions\";s:3:\"url\";s:64:\"https://woocommerce.com/product-category/woocommerce-extensions/\";s:8:\"promoted\";s:31:\"category-woocommerce-extensions\";s:13:\"allow-dismiss\";b:0;}i:2;a:9:{s:4:\"slug\";s:46:\"product-edit-mailchimp-woocommerce-memberships\";s:7:\"product\";s:33:\"woocommerce-memberships-mailchimp\";s:14:\"show-if-active\";a:1:{i:0;s:23:\"woocommerce-memberships\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:116:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/mailchimp-for-memberships.svg\";s:5:\"title\";s:25:\"Mailchimp for Memberships\";s:4:\"copy\";s:79:\"Completely automate your email lists by syncing membership changes to Mailchimp\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:67:\"https://woocommerce.com/products/mailchimp-woocommerce-memberships/\";}i:3;a:9:{s:4:\"slug\";s:19:\"product-edit-addons\";s:7:\"product\";s:26:\"woocommerce-product-addons\";s:14:\"show-if-active\";a:2:{i:0;s:25:\"woocommerce-subscriptions\";i:1;s:20:\"woocommerce-bookings\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:106:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/product-add-ons.svg\";s:5:\"title\";s:15:\"Product Add-Ons\";s:4:\"copy\";s:93:\"Offer add-ons like gift wrapping, special messages or other special options for your products\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:49:\"https://woocommerce.com/products/product-add-ons/\";}i:4;a:9:{s:4:\"slug\";s:46:\"product-edit-woocommerce-subscriptions-gifting\";s:7:\"product\";s:33:\"woocommerce-subscriptions-gifting\";s:14:\"show-if-active\";a:1:{i:0;s:25:\"woocommerce-subscriptions\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:116:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/gifting-for-subscriptions.svg\";s:5:\"title\";s:25:\"Gifting for Subscriptions\";s:4:\"copy\";s:70:\"Let customers buy subscriptions for others - they\'re the ultimate gift\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:67:\"https://woocommerce.com/products/woocommerce-subscriptions-gifting/\";}i:5;a:9:{s:4:\"slug\";s:42:\"product-edit-teams-woocommerce-memberships\";s:7:\"product\";s:33:\"woocommerce-memberships-for-teams\";s:14:\"show-if-active\";a:1:{i:0;s:23:\"woocommerce-memberships\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:112:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/teams-for-memberships.svg\";s:5:\"title\";s:21:\"Teams for Memberships\";s:4:\"copy\";s:123:\"Adds B2B functionality to WooCommerce Memberships, allowing sites to sell team, group, corporate, or family member accounts\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:63:\"https://woocommerce.com/products/teams-woocommerce-memberships/\";}i:6;a:8:{s:4:\"slug\";s:29:\"product-edit-variation-images\";s:7:\"product\";s:39:\"woocommerce-additional-variation-images\";s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:118:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/additional-variation-images.svg\";s:5:\"title\";s:27:\"Additional Variation Images\";s:4:\"copy\";s:72:\"Showcase your products in the best light with a image for each variation\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:73:\"https://woocommerce.com/products/woocommerce-additional-variation-images/\";}i:7;a:9:{s:4:\"slug\";s:47:\"product-edit-woocommerce-subscription-downloads\";s:7:\"product\";s:34:\"woocommerce-subscription-downloads\";s:14:\"show-if-active\";a:1:{i:0;s:25:\"woocommerce-subscriptions\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:113:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/subscription-downloads.svg\";s:5:\"title\";s:22:\"Subscription Downloads\";s:4:\"copy\";s:57:\"Give customers special downloads with their subscriptions\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:68:\"https://woocommerce.com/products/woocommerce-subscription-downloads/\";}i:8;a:8:{s:4:\"slug\";s:31:\"product-edit-min-max-quantities\";s:7:\"product\";s:30:\"woocommerce-min-max-quantities\";s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:109:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/min-max-quantities.svg\";s:5:\"title\";s:18:\"Min/Max Quantities\";s:4:\"copy\";s:81:\"Specify minimum and maximum allowed product quantities for orders to be completed\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:52:\"https://woocommerce.com/products/min-max-quantities/\";}i:9;a:8:{s:4:\"slug\";s:28:\"product-edit-name-your-price\";s:7:\"product\";s:27:\"woocommerce-name-your-price\";s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:106:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/name-your-price.svg\";s:5:\"title\";s:15:\"Name Your Price\";s:4:\"copy\";s:70:\"Let customers pay what they want - useful for donations, tips and more\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:49:\"https://woocommerce.com/products/name-your-price/\";}i:10;a:8:{s:4:\"slug\";s:42:\"product-edit-woocommerce-one-page-checkout\";s:7:\"product\";s:29:\"woocommerce-one-page-checkout\";s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:108:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/one-page-checkout.svg\";s:5:\"title\";s:17:\"One Page Checkout\";s:4:\"copy\";s:92:\"Don\'t make customers click around - let them choose products, checkout & pay all on one page\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:63:\"https://woocommerce.com/products/woocommerce-one-page-checkout/\";}i:11;a:4:{s:4:\"slug\";s:19:\"orders-empty-header\";s:7:\"context\";s:24:\"orders-list-empty-header\";s:5:\"title\";s:20:\"Tools for your store\";s:13:\"allow-dismiss\";b:0;}i:12;a:6:{s:4:\"slug\";s:30:\"orders-empty-footer-browse-all\";s:7:\"context\";s:24:\"orders-list-empty-footer\";s:9:\"link-text\";s:21:\"Browse all extensions\";s:3:\"url\";s:64:\"https://woocommerce.com/product-category/woocommerce-extensions/\";s:8:\"promoted\";s:31:\"category-woocommerce-extensions\";s:13:\"allow-dismiss\";b:0;}i:13;a:8:{s:4:\"slug\";s:19:\"orders-empty-zapier\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:7:\"product\";s:18:\"woocommerce-zapier\";s:4:\"icon\";s:97:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/zapier.svg\";s:5:\"title\";s:6:\"Zapier\";s:4:\"copy\";s:88:\"Save time and increase productivity by connecting your store to more than 1000+ services\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:52:\"https://woocommerce.com/products/woocommerce-zapier/\";}i:14;a:8:{s:4:\"slug\";s:30:\"orders-empty-shipment-tracking\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:7:\"product\";s:29:\"woocommerce-shipment-tracking\";s:4:\"icon\";s:108:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/shipment-tracking.svg\";s:5:\"title\";s:17:\"Shipment Tracking\";s:4:\"copy\";s:86:\"Let customers know when their orders will arrive by adding shipment tracking to emails\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:51:\"https://woocommerce.com/products/shipment-tracking/\";}i:15;a:8:{s:4:\"slug\";s:32:\"orders-empty-table-rate-shipping\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:7:\"product\";s:31:\"woocommerce-table-rate-shipping\";s:4:\"icon\";s:110:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/table-rate-shipping.svg\";s:5:\"title\";s:19:\"Table Rate Shipping\";s:4:\"copy\";s:122:\"Advanced, flexible shipping. Define multiple shipping rates based on location, price, weight, shipping class or item count\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:53:\"https://woocommerce.com/products/table-rate-shipping/\";}i:16;a:8:{s:4:\"slug\";s:40:\"orders-empty-shipping-carrier-extensions\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:4:\"icon\";s:118:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/shipping-carrier-extensions.svg\";s:5:\"title\";s:27:\"Shipping Carrier Extensions\";s:4:\"copy\";s:116:\"Show live rates from FedEx, UPS, USPS and more directly on your store - never under or overcharge for shipping again\";s:11:\"button-text\";s:13:\"Find Carriers\";s:8:\"promoted\";s:26:\"category-shipping-carriers\";s:3:\"url\";s:99:\"https://woocommerce.com/product-category/woocommerce-extensions/shipping-methods/shipping-carriers/\";}i:17;a:8:{s:4:\"slug\";s:32:\"orders-empty-google-product-feed\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:7:\"product\";s:25:\"woocommerce-product-feeds\";s:4:\"icon\";s:110:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/google-product-feed.svg\";s:5:\"title\";s:19:\"Google Product Feed\";s:4:\"copy\";s:76:\"Increase sales by letting customers find you when they\'re shopping on Google\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:53:\"https://woocommerce.com/products/google-product-feed/\";}i:18;a:4:{s:4:\"slug\";s:35:\"products-empty-header-product-types\";s:7:\"context\";s:26:\"products-list-empty-header\";s:5:\"title\";s:23:\"Other types of products\";s:13:\"allow-dismiss\";b:0;}i:19;a:6:{s:4:\"slug\";s:32:\"products-empty-footer-browse-all\";s:7:\"context\";s:26:\"products-list-empty-footer\";s:9:\"link-text\";s:21:\"Browse all extensions\";s:3:\"url\";s:64:\"https://woocommerce.com/product-category/woocommerce-extensions/\";s:8:\"promoted\";s:31:\"category-woocommerce-extensions\";s:13:\"allow-dismiss\";b:0;}i:20;a:8:{s:4:\"slug\";s:30:\"products-empty-product-vendors\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:27:\"woocommerce-product-vendors\";s:4:\"icon\";s:106:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/product-vendors.svg\";s:5:\"title\";s:15:\"Product Vendors\";s:4:\"copy\";s:47:\"Turn your store into a multi-vendor marketplace\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:49:\"https://woocommerce.com/products/product-vendors/\";}i:21;a:8:{s:4:\"slug\";s:26:\"products-empty-memberships\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:23:\"woocommerce-memberships\";s:4:\"icon\";s:102:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/memberships.svg\";s:5:\"title\";s:11:\"Memberships\";s:4:\"copy\";s:76:\"Give members access to restricted content or products, for a fee or for free\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:57:\"https://woocommerce.com/products/woocommerce-memberships/\";}i:22;a:9:{s:4:\"slug\";s:35:\"products-empty-woocommerce-deposits\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:20:\"woocommerce-deposits\";s:14:\"show-if-active\";a:1:{i:0;s:20:\"woocommerce-bookings\";}s:4:\"icon\";s:99:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/deposits.svg\";s:5:\"title\";s:8:\"Deposits\";s:4:\"copy\";s:75:\"Make it easier for customers to pay by offering a deposit or a payment plan\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:54:\"https://woocommerce.com/products/woocommerce-deposits/\";}i:23;a:8:{s:4:\"slug\";s:40:\"products-empty-woocommerce-subscriptions\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:25:\"woocommerce-subscriptions\";s:4:\"icon\";s:104:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/subscriptions.svg\";s:5:\"title\";s:13:\"Subscriptions\";s:4:\"copy\";s:97:\"Let customers subscribe to your products or services and pay on a weekly, monthly or annual basis\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:59:\"https://woocommerce.com/products/woocommerce-subscriptions/\";}i:24;a:8:{s:4:\"slug\";s:35:\"products-empty-woocommerce-bookings\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:20:\"woocommerce-bookings\";s:4:\"icon\";s:99:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/bookings.svg\";s:5:\"title\";s:8:\"Bookings\";s:4:\"copy\";s:99:\"Allow customers to book appointments, make reservations or rent equipment without leaving your site\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:54:\"https://woocommerce.com/products/woocommerce-bookings/\";}i:25;a:8:{s:4:\"slug\";s:30:\"products-empty-product-bundles\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:27:\"woocommerce-product-bundles\";s:4:\"icon\";s:106:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/product-bundles.svg\";s:5:\"title\";s:15:\"Product Bundles\";s:4:\"copy\";s:49:\"Offer customizable bundles and assembled products\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:49:\"https://woocommerce.com/products/product-bundles/\";}}s:7:\"updated\";i:1603892750;}', 'no'),
(571, 'category_children', 'a:0:{}', 'yes'),
(572, 'product_cat_children', 'a:1:{i:16;a:3:{i:0;i:17;i:1;i:18;i:2;i:19;}}', 'yes'),
(573, 'pa_color_children', 'a:0:{}', 'yes'),
(574, 'pa_size_children', 'a:0:{}', 'yes'),
(575, '_transient_wc_attribute_taxonomies', 'a:2:{i:0;O:8:\"stdClass\":6:{s:12:\"attribute_id\";s:1:\"1\";s:14:\"attribute_name\";s:5:\"color\";s:15:\"attribute_label\";s:5:\"color\";s:14:\"attribute_type\";s:6:\"select\";s:17:\"attribute_orderby\";s:10:\"menu_order\";s:16:\"attribute_public\";s:1:\"0\";}i:1;O:8:\"stdClass\":6:{s:12:\"attribute_id\";s:1:\"2\";s:14:\"attribute_name\";s:4:\"size\";s:15:\"attribute_label\";s:4:\"size\";s:14:\"attribute_type\";s:6:\"select\";s:17:\"attribute_orderby\";s:10:\"menu_order\";s:16:\"attribute_public\";s:1:\"0\";}}', 'yes'),
(577, '_transient_timeout_wc_product_children_19', '1605076781', 'no'),
(578, '_transient_wc_product_children_19', 'a:2:{s:3:\"all\";a:4:{i:0;i:37;i:1;i:30;i:2;i:31;i:3;i:32;}s:7:\"visible\";a:4:{i:0;i:37;i:1;i:30;i:2;i:31;i:3;i:32;}}', 'no'),
(579, '_transient_timeout_wc_var_prices_19', '1605436707', 'no'),
(580, '_transient_wc_var_prices_19', '{\"version\":\"1602844703\",\"f9e544f77b7eac7add281ef28ca5559f\":{\"price\":{\"37\":\"45.00\",\"30\":\"42.00\",\"31\":\"45.00\",\"32\":\"45.00\"},\"regular_price\":{\"37\":\"45.00\",\"30\":\"45.00\",\"31\":\"45.00\",\"32\":\"45.00\"},\"sale_price\":{\"37\":\"45.00\",\"30\":\"42.00\",\"31\":\"45.00\",\"32\":\"45.00\"}}}', 'no'),
(581, '_transient_timeout_wc_product_children_18', '1605076781', 'no'),
(582, '_transient_wc_product_children_18', 'a:2:{s:3:\"all\";a:3:{i:0;i:27;i:1;i:28;i:2;i:29;}s:7:\"visible\";a:3:{i:0;i:27;i:1;i:28;i:2;i:29;}}', 'no'),
(583, '_transient_timeout_wc_var_prices_18', '1605436707', 'no'),
(584, '_transient_wc_var_prices_18', '{\"version\":\"1602844703\",\"f9e544f77b7eac7add281ef28ca5559f\":{\"price\":{\"27\":\"20.00\",\"28\":\"20.00\",\"29\":\"15.00\"},\"regular_price\":{\"27\":\"20.00\",\"28\":\"20.00\",\"29\":\"15.00\"},\"sale_price\":{\"27\":\"20.00\",\"28\":\"20.00\",\"29\":\"15.00\"}}}', 'no'),
(622, 'woocommerce_tracker_last_send', '1603790841', 'yes'),
(682, 'br_filters_options', 'a:52:{s:10:\"plugin_key\";s:0:\"\";s:12:\"pos_relative\";s:1:\"1\";s:18:\"products_holder_id\";s:11:\"ul.products\";s:30:\"woocommerce_result_count_class\";s:25:\".woocommerce-result-count\";s:26:\"woocommerce_ordering_class\";s:25:\"form.woocommerce-ordering\";s:28:\"woocommerce_pagination_class\";s:23:\".woocommerce-pagination\";s:19:\"woocommerce_removes\";a:4:{s:12:\"result_count\";s:0:\"\";s:8:\"ordering\";s:0:\"\";s:10:\"pagination\";s:0:\"\";s:15:\"pagination_ajax\";s:0:\"\";}s:17:\"products_per_page\";s:0:\"\";s:15:\"attribute_count\";s:0:\"\";s:15:\"control_sorting\";s:1:\"1\";s:17:\"seo_friendly_urls\";s:1:\"1\";s:14:\"seo_uri_decode\";s:0:\"\";s:12:\"recount_hide\";s:13:\"removeRecount\";s:9:\"slug_urls\";s:0:\"\";s:14:\"seo_meta_title\";s:0:\"\";s:17:\"seo_element_title\";s:0:\"\";s:18:\"seo_element_header\";s:0:\"\";s:23:\"seo_element_description\";s:0:\"\";s:21:\"seo_meta_title_visual\";s:33:\"BeRocket_AAPF_wcseo_title_visual1\";s:16:\"filters_turn_off\";s:0:\"\";s:10:\"hide_value\";a:4:{s:1:\"o\";s:1:\"1\";s:3:\"sel\";s:0:\"\";s:5:\"empty\";s:1:\"1\";s:6:\"button\";s:1:\"1\";}s:11:\"use_select2\";s:0:\"\";s:13:\"fixed_select2\";s:0:\"\";s:15:\"scroll_shop_top\";s:0:\"\";s:18:\"scroll_shop_top_px\";s:4:\"-180\";s:18:\"selected_area_show\";s:0:\"\";s:24:\"selected_area_hide_empty\";s:0:\"\";s:13:\"products_only\";s:1:\"1\";s:21:\"out_of_stock_variable\";s:0:\"\";s:28:\"out_of_stock_variable_reload\";s:0:\"\";s:28:\"out_of_stock_variable_single\";s:0:\"\";s:19:\"page_same_as_filter\";s:0:\"\";s:16:\"styles_in_footer\";s:0:\"\";s:12:\"styles_input\";a:6:{s:8:\"checkbox\";a:8:{s:6:\"bcolor\";s:0:\"\";s:6:\"bwidth\";s:0:\"\";s:7:\"bradius\";s:0:\"\";s:6:\"fcolor\";s:0:\"\";s:9:\"backcolor\";s:0:\"\";s:4:\"icon\";s:0:\"\";s:8:\"fontsize\";s:0:\"\";s:5:\"theme\";s:0:\"\";}s:5:\"radio\";a:8:{s:6:\"bcolor\";s:0:\"\";s:6:\"bwidth\";s:0:\"\";s:7:\"bradius\";s:0:\"\";s:6:\"fcolor\";s:0:\"\";s:9:\"backcolor\";s:0:\"\";s:4:\"icon\";s:0:\"\";s:8:\"fontsize\";s:0:\"\";s:5:\"theme\";s:0:\"\";}s:6:\"slider\";a:9:{s:10:\"line_color\";s:0:\"\";s:11:\"line_height\";s:0:\"\";s:17:\"line_border_color\";s:0:\"\";s:17:\"line_border_width\";s:0:\"\";s:11:\"button_size\";s:0:\"\";s:12:\"button_color\";s:0:\"\";s:19:\"button_border_color\";s:0:\"\";s:19:\"button_border_width\";s:0:\"\";s:20:\"button_border_radius\";s:0:\"\";}s:5:\"pc_ub\";a:10:{s:10:\"back_color\";s:0:\"\";s:12:\"border_color\";s:0:\"\";s:9:\"font_size\";s:0:\"\";s:10:\"font_color\";s:0:\"\";s:14:\"show_font_size\";s:0:\"\";s:10:\"close_size\";s:0:\"\";s:15:\"show_font_color\";s:0:\"\";s:21:\"show_font_color_hover\";s:0:\"\";s:16:\"close_font_color\";s:0:\"\";s:22:\"close_font_color_hover\";s:0:\"\";}s:13:\"product_count\";s:5:\"round\";s:22:\"product_count_position\";s:0:\"\";}s:16:\"child_pre_indent\";s:0:\"\";s:14:\"ajax_load_icon\";s:0:\"\";s:14:\"ajax_load_text\";a:4:{s:3:\"top\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";}s:11:\"description\";a:2:{s:4:\"show\";s:5:\"click\";s:4:\"hide\";s:5:\"click\";}s:10:\"javascript\";a:3:{s:29:\"berocket_ajax_filtering_start\";s:0:\"\";s:33:\"berocket_ajax_filtering_on_update\";s:0:\"\";s:29:\"berocket_ajax_products_loaded\";s:0:\"\";}s:10:\"custom_css\";s:0:\"\";s:15:\"user_custom_css\";s:0:\"\";s:13:\"br_opened_tab\";s:7:\"general\";s:11:\"tags_custom\";s:1:\"1\";s:9:\"ajax_site\";s:0:\"\";s:10:\"search_fix\";s:1:\"1\";s:17:\"use_tax_for_price\";s:0:\"\";s:20:\"disable_font_awesome\";s:0:\"\";s:10:\"debug_mode\";s:0:\"\";s:28:\"fontawesome_frontend_disable\";s:0:\"\";s:28:\"fontawesome_frontend_version\";s:0:\"\";s:6:\"addons\";a:1:{i:0;s:40:\"\\additional_tables\\additional_tables.php\";}s:16:\"purge_cache_time\";s:10:\"1602501417\";}', 'yes'),
(683, 'br_filters_version', '1.5.1.6', 'yes'),
(684, 'widget_berocket_aapf_group', 'a:2:{i:2;a:2:{s:8:\"group_id\";s:0:\"\";s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(685, 'widget_berocket_aapf_single', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(686, 'berocket_filter_open_wizard_on_settings', '1', 'yes'),
(687, 'rewrite_rules', 'a:167:{s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:7:\"shop/?$\";s:27:\"index.php?post_type=product\";s:37:\"shop/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:32:\"shop/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:24:\"shop/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=product&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:32:\"category/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:29:\"tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:46:\"brand/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?brand=$matches[1]&feed=$matches[2]\";s:41:\"brand/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?brand=$matches[1]&feed=$matches[2]\";s:22:\"brand/([^/]+)/embed/?$\";s:38:\"index.php?brand=$matches[1]&embed=true\";s:34:\"brand/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?brand=$matches[1]&paged=$matches[2]\";s:16:\"brand/([^/]+)/?$\";s:27:\"index.php?brand=$matches[1]\";s:55:\"product-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:50:\"product-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:31:\"product-category/(.+?)/embed/?$\";s:44:\"index.php?product_cat=$matches[1]&embed=true\";s:43:\"product-category/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:25:\"product-category/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:52:\"product-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:47:\"product-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:28:\"product-tag/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:40:\"product-tag/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:22:\"product-tag/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:35:\"product/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"product/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"product/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"product/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:28:\"product/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:48:\"product/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:43:\"product/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:36:\"product/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:43:\"product/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:33:\"product/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?product=$matches[1]&wc-api=$matches[3]\";s:39:\"product/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:50:\"product/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:32:\"product/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:24:\"product/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"product/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"product/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:63:\"berocket_taxonomy_data/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:61:\"index.php?berocket_taxonomy_data=$matches[1]&feed=$matches[2]\";s:58:\"berocket_taxonomy_data/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:61:\"index.php?berocket_taxonomy_data=$matches[1]&feed=$matches[2]\";s:39:\"berocket_taxonomy_data/([^/]+)/embed/?$\";s:55:\"index.php?berocket_taxonomy_data=$matches[1]&embed=true\";s:51:\"berocket_taxonomy_data/([^/]+)/page/?([0-9]{1,})/?$\";s:62:\"index.php?berocket_taxonomy_data=$matches[1]&paged=$matches[2]\";s:33:\"berocket_taxonomy_data/([^/]+)/?$\";s:44:\"index.php?berocket_taxonomy_data=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=94&cpage=$matches[1]\";s:17:\"wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:26:\"comments/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:29:\"search/(.+)/wc-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&wc-api=$matches[3]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:32:\"author/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&wc-api=$matches[3]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:54:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:41:\"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:28:\"([0-9]{4})/wc-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&wc-api=$matches[3]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:62:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/wc-api(/(.*))?/?$\";s:99:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&wc-api=$matches[6]\";s:62:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:73:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:25:\"(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:28:\"(.?.+?)/order-pay(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&order-pay=$matches[3]\";s:33:\"(.?.+?)/order-received(/(.*))?/?$\";s:57:\"index.php?pagename=$matches[1]&order-received=$matches[3]\";s:25:\"(.?.+?)/orders(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&orders=$matches[3]\";s:29:\"(.?.+?)/view-order(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&view-order=$matches[3]\";s:28:\"(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:31:\"(.?.+?)/edit-account(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-account=$matches[3]\";s:31:\"(.?.+?)/edit-address(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-address=$matches[3]\";s:34:\"(.?.+?)/payment-methods(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&payment-methods=$matches[3]\";s:32:\"(.?.+?)/lost-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&lost-password=$matches[3]\";s:34:\"(.?.+?)/customer-logout(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&customer-logout=$matches[3]\";s:37:\"(.?.+?)/add-payment-method(/(.*))?/?$\";s:61:\"index.php?pagename=$matches[1]&add-payment-method=$matches[3]\";s:40:\"(.?.+?)/delete-payment-method(/(.*))?/?$\";s:64:\"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]\";s:45:\"(.?.+?)/set-default-payment-method(/(.*))?/?$\";s:69:\"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]\";s:31:\".?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(688, 'berocket_framework_option_global', 'a:2:{s:28:\"fontawesome_frontend_disable\";s:0:\"\";s:28:\"fontawesome_frontend_version\";s:0:\"\";}', 'yes'),
(689, 'BeRocket_Framework_plugins_version_check', 'a:1:{s:12:\"ajax_filters\";s:7:\"1.5.1.6\";}', 'yes'),
(690, 'berocket_admin_notices', 'a:1:{i:20;a:1:{i:0;a:1:{i:0;a:1:{s:9:\"subscribe\";a:15:{s:5:\"start\";i:0;s:3:\"end\";i:0;s:4:\"name\";s:9:\"subscribe\";s:4:\"html\";s:136:\"Subscribe to get latest BeRocket news and updates, plugin recommendations and configuration help, promotional email with discount codes.\";s:9:\"righthtml\";s:43:\"<a class=\"berocket_no_thanks\">No thanks</a>\";s:10:\"rightwidth\";i:80;s:13:\"nothankswidth\";i:60;s:12:\"contentwidth\";i:400;s:9:\"subscribe\";b:1;s:6:\"closed\";s:1:\"0\";s:8:\"priority\";i:20;s:6:\"height\";i:50;s:6:\"repeat\";b:0;s:11:\"repeatcount\";i:1;s:5:\"image\";a:4:{s:5:\"local\";s:128:\"http://localhost/eshopper/wp-content/plugins/woocommerce-ajax-filters/berocket/includes/../assets/images/ad_white_on_orange.webp\";s:5:\"width\";i:239;s:6:\"height\";i:118;s:5:\"scale\";d:0.423728813559322;}}}}}}', 'yes'),
(695, 'berocket_current_displayed_notice', 'a:15:{s:5:\"start\";i:0;s:3:\"end\";i:0;s:4:\"name\";s:9:\"subscribe\";s:4:\"html\";s:136:\"Subscribe to get latest BeRocket news and updates, plugin recommendations and configuration help, promotional email with discount codes.\";s:9:\"righthtml\";s:43:\"<a class=\"berocket_no_thanks\">No thanks</a>\";s:10:\"rightwidth\";i:80;s:13:\"nothankswidth\";i:60;s:12:\"contentwidth\";i:400;s:9:\"subscribe\";b:1;s:6:\"closed\";s:1:\"0\";s:8:\"priority\";i:20;s:6:\"height\";i:50;s:6:\"repeat\";b:0;s:11:\"repeatcount\";i:1;s:5:\"image\";a:4:{s:5:\"local\";s:128:\"http://localhost/eshopper/wp-content/plugins/woocommerce-ajax-filters/berocket/includes/../assets/images/ad_white_on_orange.webp\";s:5:\"width\";i:239;s:6:\"height\";i:118;s:5:\"scale\";d:0.423728813559322;}}', 'yes'),
(696, 'berocket_admin_notices_rate_stars', 'a:1:{i:1;a:2:{s:4:\"time\";i:1603106223;s:5:\"count\";i:0;}}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(697, 'BeRocket_AAPF_getall_Template_Styles', 'a:23:{s:14:\"button_default\";a:10:{s:4:\"slug\";s:14:\"button_default\";s:8:\"template\";s:6:\"button\";s:4:\"name\";s:7:\"Default\";s:4:\"file\";s:96:\"E:\\xampp\\htdocs\\eshopper\\wp-content\\plugins\\woocommerce-ajax-filters\\template_styles\\buttons.php\";s:10:\"style_file\";s:0:\"\";s:11:\"script_file\";s:0:\"\";s:5:\"image\";s:111:\"http://localhost/eshopper/wp-content/plugins/woocommerce-ajax-filters/template_styles/images/button_default.png\";s:7:\"version\";s:3:\"1.0\";s:8:\"specific\";s:8:\"elements\";s:8:\"sort_pos\";s:1:\"1\";}s:15:\"button_berocket\";a:10:{s:4:\"slug\";s:15:\"button_berocket\";s:8:\"template\";s:6:\"button\";s:4:\"name\";s:8:\"BeRocket\";s:4:\"file\";s:96:\"E:\\xampp\\htdocs\\eshopper\\wp-content\\plugins\\woocommerce-ajax-filters\\template_styles\\buttons.php\";s:10:\"style_file\";s:14:\"css/button.css\";s:11:\"script_file\";s:0:\"\";s:5:\"image\";s:112:\"http://localhost/eshopper/wp-content/plugins/woocommerce-ajax-filters/template_styles/images/button_berocket.png\";s:7:\"version\";s:3:\"1.0\";s:8:\"specific\";s:8:\"elements\";s:8:\"sort_pos\";s:3:\"900\";}s:8:\"checkbox\";a:12:{s:4:\"slug\";s:8:\"checkbox\";s:8:\"template\";s:8:\"checkbox\";s:4:\"name\";s:8:\"Checkbox\";s:4:\"file\";s:97:\"E:\\xampp\\htdocs\\eshopper\\wp-content\\plugins\\woocommerce-ajax-filters\\template_styles\\checkbox.php\";s:10:\"style_file\";s:0:\"\";s:11:\"script_file\";s:0:\"\";s:5:\"image\";s:105:\"http://localhost/eshopper/wp-content/plugins/woocommerce-ajax-filters/template_styles/images/checkbox.png\";s:7:\"version\";s:3:\"1.0\";s:8:\"specific\";s:0:\"\";s:8:\"sort_pos\";s:1:\"1\";s:10:\"name_price\";s:12:\"Price Ranges\";s:11:\"image_price\";s:116:\"http://localhost/eshopper/wp-content/plugins/woocommerce-ajax-filters/template_styles/paid/images/checkbox-price.png\";}s:13:\"checkbox_hide\";a:12:{s:4:\"slug\";s:13:\"checkbox_hide\";s:8:\"template\";s:8:\"checkbox\";s:4:\"name\";s:13:\"Checkbox Hide\";s:4:\"file\";s:97:\"E:\\xampp\\htdocs\\eshopper\\wp-content\\plugins\\woocommerce-ajax-filters\\template_styles\\checkbox.php\";s:10:\"style_file\";s:0:\"\";s:11:\"script_file\";s:0:\"\";s:5:\"image\";s:110:\"http://localhost/eshopper/wp-content/plugins/woocommerce-ajax-filters/template_styles/images/checkbox-hide.png\";s:7:\"version\";s:3:\"1.0\";s:8:\"specific\";s:0:\"\";s:8:\"sort_pos\";s:4:\"1900\";s:10:\"name_price\";s:17:\"Price Ranges Hide\";s:11:\"image_price\";s:121:\"http://localhost/eshopper/wp-content/plugins/woocommerce-ajax-filters/template_styles/paid/images/checkbox-hide-price.png\";}s:5:\"color\";a:10:{s:4:\"slug\";s:5:\"color\";s:8:\"template\";s:8:\"checkbox\";s:4:\"name\";s:5:\"Color\";s:4:\"file\";s:94:\"E:\\xampp\\htdocs\\eshopper\\wp-content\\plugins\\woocommerce-ajax-filters\\template_styles\\color.php\";s:10:\"style_file\";s:14:\"/css/color.css\";s:11:\"script_file\";s:0:\"\";s:5:\"image\";s:102:\"http://localhost/eshopper/wp-content/plugins/woocommerce-ajax-filters/template_styles/images/color.png\";s:7:\"version\";s:3:\"1.0\";s:8:\"specific\";s:5:\"color\";s:8:\"sort_pos\";s:1:\"1\";}s:14:\"color_woborder\";a:10:{s:4:\"slug\";s:14:\"color_woborder\";s:8:\"template\";s:8:\"checkbox\";s:4:\"name\";s:20:\"Color without border\";s:4:\"file\";s:94:\"E:\\xampp\\htdocs\\eshopper\\wp-content\\plugins\\woocommerce-ajax-filters\\template_styles\\color.php\";s:10:\"style_file\";s:14:\"/css/color.css\";s:11:\"script_file\";s:0:\"\";s:5:\"image\";s:111:\"http://localhost/eshopper/wp-content/plugins/woocommerce-ajax-filters/template_styles/images/color_woborder.png\";s:7:\"version\";s:3:\"1.0\";s:8:\"specific\";s:5:\"color\";s:8:\"sort_pos\";s:3:\"900\";}s:5:\"image\";a:10:{s:4:\"slug\";s:5:\"image\";s:8:\"template\";s:8:\"checkbox\";s:4:\"name\";s:5:\"Image\";s:4:\"file\";s:94:\"E:\\xampp\\htdocs\\eshopper\\wp-content\\plugins\\woocommerce-ajax-filters\\template_styles\\color.php\";s:10:\"style_file\";s:14:\"/css/color.css\";s:11:\"script_file\";s:0:\"\";s:5:\"image\";s:102:\"http://localhost/eshopper/wp-content/plugins/woocommerce-ajax-filters/template_styles/images/image.png\";s:7:\"version\";s:3:\"1.0\";s:8:\"specific\";s:5:\"image\";s:8:\"sort_pos\";s:1:\"1\";}s:14:\"image_woborder\";a:10:{s:4:\"slug\";s:14:\"image_woborder\";s:8:\"template\";s:8:\"checkbox\";s:4:\"name\";s:20:\"Image without border\";s:4:\"file\";s:94:\"E:\\xampp\\htdocs\\eshopper\\wp-content\\plugins\\woocommerce-ajax-filters\\template_styles\\color.php\";s:10:\"style_file\";s:14:\"/css/color.css\";s:11:\"script_file\";s:0:\"\";s:5:\"image\";s:111:\"http://localhost/eshopper/wp-content/plugins/woocommerce-ajax-filters/template_styles/images/image_woborder.png\";s:7:\"version\";s:3:\"1.0\";s:8:\"specific\";s:5:\"image\";s:8:\"sort_pos\";s:3:\"900\";}s:10:\"new_slider\";a:10:{s:4:\"slug\";s:10:\"new_slider\";s:8:\"template\";s:10:\"new_slider\";s:4:\"name\";s:10:\"New Slider\";s:4:\"file\";s:99:\"E:\\xampp\\htdocs\\eshopper\\wp-content\\plugins\\woocommerce-ajax-filters\\template_styles\\new-slider.php\";s:10:\"style_file\";s:28:\"/css/ion.rangeSlider.min.css\";s:11:\"script_file\";s:26:\"/js/ion.rangeSlider.min.js\";s:5:\"image\";s:107:\"http://localhost/eshopper/wp-content/plugins/woocommerce-ajax-filters/template_styles/images/new-slider.png\";s:7:\"version\";s:3:\"1.0\";s:8:\"specific\";s:0:\"\";s:8:\"sort_pos\";s:1:\"1\";}s:14:\"new_slider_big\";a:10:{s:4:\"slug\";s:14:\"new_slider_big\";s:8:\"template\";s:10:\"new_slider\";s:4:\"name\";s:14:\"New Slider Big\";s:4:\"file\";s:99:\"E:\\xampp\\htdocs\\eshopper\\wp-content\\plugins\\woocommerce-ajax-filters\\template_styles\\new-slider.php\";s:10:\"style_file\";s:28:\"/css/ion.rangeSlider.min.css\";s:11:\"script_file\";s:26:\"/js/ion.rangeSlider.min.js\";s:5:\"image\";s:111:\"http://localhost/eshopper/wp-content/plugins/woocommerce-ajax-filters/template_styles/images/new-slider-big.png\";s:7:\"version\";s:3:\"1.0\";s:8:\"specific\";s:0:\"\";s:8:\"sort_pos\";s:3:\"900\";}s:17:\"new_slider_modern\";a:10:{s:4:\"slug\";s:17:\"new_slider_modern\";s:8:\"template\";s:10:\"new_slider\";s:4:\"name\";s:17:\"New Slider Modern\";s:4:\"file\";s:99:\"E:\\xampp\\htdocs\\eshopper\\wp-content\\plugins\\woocommerce-ajax-filters\\template_styles\\new-slider.php\";s:10:\"style_file\";s:28:\"/css/ion.rangeSlider.min.css\";s:11:\"script_file\";s:26:\"/js/ion.rangeSlider.min.js\";s:5:\"image\";s:114:\"http://localhost/eshopper/wp-content/plugins/woocommerce-ajax-filters/template_styles/images/new-slider-modern.png\";s:7:\"version\";s:3:\"1.0\";s:8:\"specific\";s:0:\"\";s:8:\"sort_pos\";s:3:\"900\";}s:16:\"new_slider_sharp\";a:10:{s:4:\"slug\";s:16:\"new_slider_sharp\";s:8:\"template\";s:10:\"new_slider\";s:4:\"name\";s:16:\"New Slider Sharp\";s:4:\"file\";s:99:\"E:\\xampp\\htdocs\\eshopper\\wp-content\\plugins\\woocommerce-ajax-filters\\template_styles\\new-slider.php\";s:10:\"style_file\";s:28:\"/css/ion.rangeSlider.min.css\";s:11:\"script_file\";s:26:\"/js/ion.rangeSlider.min.js\";s:5:\"image\";s:113:\"http://localhost/eshopper/wp-content/plugins/woocommerce-ajax-filters/template_styles/images/new-slider-sharp.png\";s:7:\"version\";s:3:\"1.0\";s:8:\"specific\";s:0:\"\";s:8:\"sort_pos\";s:3:\"900\";}s:16:\"new_slider_round\";a:10:{s:4:\"slug\";s:16:\"new_slider_round\";s:8:\"template\";s:10:\"new_slider\";s:4:\"name\";s:16:\"New Slider Round\";s:4:\"file\";s:99:\"E:\\xampp\\htdocs\\eshopper\\wp-content\\plugins\\woocommerce-ajax-filters\\template_styles\\new-slider.php\";s:10:\"style_file\";s:28:\"/css/ion.rangeSlider.min.css\";s:11:\"script_file\";s:26:\"/js/ion.rangeSlider.min.js\";s:5:\"image\";s:113:\"http://localhost/eshopper/wp-content/plugins/woocommerce-ajax-filters/template_styles/images/new-slider-round.png\";s:7:\"version\";s:3:\"1.0\";s:8:\"specific\";s:0:\"\";s:8:\"sort_pos\";s:3:\"900\";}s:17:\"new_slider_square\";a:10:{s:4:\"slug\";s:17:\"new_slider_square\";s:8:\"template\";s:10:\"new_slider\";s:4:\"name\";s:17:\"New Slider Square\";s:4:\"file\";s:99:\"E:\\xampp\\htdocs\\eshopper\\wp-content\\plugins\\woocommerce-ajax-filters\\template_styles\\new-slider.php\";s:10:\"style_file\";s:28:\"/css/ion.rangeSlider.min.css\";s:11:\"script_file\";s:26:\"/js/ion.rangeSlider.min.js\";s:5:\"image\";s:114:\"http://localhost/eshopper/wp-content/plugins/woocommerce-ajax-filters/template_styles/images/new-slider-square.png\";s:7:\"version\";s:3:\"1.0\";s:8:\"specific\";s:0:\"\";s:8:\"sort_pos\";s:3:\"900\";}s:5:\"radio\";a:11:{s:4:\"slug\";s:5:\"radio\";s:8:\"template\";s:8:\"checkbox\";s:4:\"name\";s:5:\"Radio\";s:4:\"file\";s:94:\"E:\\xampp\\htdocs\\eshopper\\wp-content\\plugins\\woocommerce-ajax-filters\\template_styles\\radio.php\";s:10:\"style_file\";s:13:\"css/radio.css\";s:11:\"script_file\";s:11:\"js/radio.js\";s:5:\"image\";s:102:\"http://localhost/eshopper/wp-content/plugins/woocommerce-ajax-filters/template_styles/images/radio.png\";s:7:\"version\";s:3:\"1.0\";s:8:\"specific\";s:0:\"\";s:8:\"sort_pos\";s:3:\"900\";s:11:\"image_price\";s:113:\"http://localhost/eshopper/wp-content/plugins/woocommerce-ajax-filters/template_styles/paid/images/radio-price.png\";}s:6:\"select\";a:12:{s:4:\"slug\";s:6:\"select\";s:8:\"template\";s:6:\"select\";s:4:\"name\";s:6:\"Select\";s:4:\"file\";s:95:\"E:\\xampp\\htdocs\\eshopper\\wp-content\\plugins\\woocommerce-ajax-filters\\template_styles\\select.php\";s:10:\"style_file\";s:14:\"css/select.css\";s:11:\"script_file\";s:12:\"js/select.js\";s:5:\"image\";s:103:\"http://localhost/eshopper/wp-content/plugins/woocommerce-ajax-filters/template_styles/images/select.png\";s:7:\"version\";s:3:\"1.0\";s:8:\"specific\";s:0:\"\";s:8:\"sort_pos\";s:1:\"1\";s:10:\"name_price\";s:19:\"Price Ranges Select\";s:11:\"image_price\";s:114:\"http://localhost/eshopper/wp-content/plugins/woocommerce-ajax-filters/template_styles/paid/images/select-price.png\";}s:7:\"select2\";a:12:{s:4:\"slug\";s:7:\"select2\";s:8:\"template\";s:6:\"select\";s:4:\"name\";s:7:\"Select2\";s:4:\"file\";s:95:\"E:\\xampp\\htdocs\\eshopper\\wp-content\\plugins\\woocommerce-ajax-filters\\template_styles\\select.php\";s:10:\"style_file\";s:14:\"css/select.css\";s:11:\"script_file\";s:12:\"js/select.js\";s:5:\"image\";s:104:\"http://localhost/eshopper/wp-content/plugins/woocommerce-ajax-filters/template_styles/images/select2.png\";s:7:\"version\";s:3:\"1.0\";s:8:\"specific\";s:0:\"\";s:8:\"sort_pos\";s:3:\"900\";s:10:\"name_price\";s:20:\"Price Ranges Select2\";s:11:\"image_price\";s:115:\"http://localhost/eshopper/wp-content/plugins/woocommerce-ajax-filters/template_styles/paid/images/select2-price.png\";}s:14:\"select2classic\";a:12:{s:4:\"slug\";s:14:\"select2classic\";s:8:\"template\";s:6:\"select\";s:4:\"name\";s:15:\"Select2 Classic\";s:4:\"file\";s:95:\"E:\\xampp\\htdocs\\eshopper\\wp-content\\plugins\\woocommerce-ajax-filters\\template_styles\\select.php\";s:10:\"style_file\";s:14:\"css/select.css\";s:11:\"script_file\";s:12:\"js/select.js\";s:5:\"image\";s:111:\"http://localhost/eshopper/wp-content/plugins/woocommerce-ajax-filters/template_styles/images/select2classic.png\";s:7:\"version\";s:3:\"1.0\";s:8:\"specific\";s:0:\"\";s:8:\"sort_pos\";s:3:\"900\";s:10:\"name_price\";s:28:\"Price Ranges Select2 Classic\";s:11:\"image_price\";s:122:\"http://localhost/eshopper/wp-content/plugins/woocommerce-ajax-filters/template_styles/paid/images/select2classic-price.png\";}s:11:\"sfa_default\";a:10:{s:4:\"slug\";s:11:\"sfa_default\";s:8:\"template\";s:16:\"selected_filters\";s:4:\"name\";s:21:\"Selected Filters Area\";s:4:\"file\";s:110:\"E:\\xampp\\htdocs\\eshopper\\wp-content\\plugins\\woocommerce-ajax-filters\\template_styles\\selected_filters_area.php\";s:10:\"style_file\";s:0:\"\";s:11:\"script_file\";s:0:\"\";s:5:\"image\";s:118:\"http://localhost/eshopper/wp-content/plugins/woocommerce-ajax-filters/template_styles/images/selected_filters_area.png\";s:7:\"version\";s:3:\"1.0\";s:8:\"specific\";s:8:\"elements\";s:8:\"sort_pos\";s:1:\"1\";}s:10:\"sfa_inline\";a:10:{s:4:\"slug\";s:10:\"sfa_inline\";s:8:\"template\";s:16:\"selected_filters\";s:4:\"name\";s:28:\"Selected Filters Area Inline\";s:4:\"file\";s:110:\"E:\\xampp\\htdocs\\eshopper\\wp-content\\plugins\\woocommerce-ajax-filters\\template_styles\\selected_filters_area.php\";s:10:\"style_file\";s:29:\"css/selected_filters_area.css\";s:11:\"script_file\";s:0:\"\";s:5:\"image\";s:125:\"http://localhost/eshopper/wp-content/plugins/woocommerce-ajax-filters/template_styles/images/selected_filters_area-inline.png\";s:7:\"version\";s:3:\"1.0\";s:8:\"specific\";s:8:\"elements\";s:8:\"sort_pos\";s:1:\"1\";}s:6:\"slider\";a:10:{s:4:\"slug\";s:6:\"slider\";s:8:\"template\";s:6:\"slider\";s:4:\"name\";s:6:\"Slider\";s:4:\"file\";s:95:\"E:\\xampp\\htdocs\\eshopper\\wp-content\\plugins\\woocommerce-ajax-filters\\template_styles\\slider.php\";s:10:\"style_file\";s:0:\"\";s:11:\"script_file\";s:13:\"/js/slider.js\";s:5:\"image\";s:103:\"http://localhost/eshopper/wp-content/plugins/woocommerce-ajax-filters/template_styles/images/slider.png\";s:7:\"version\";s:3:\"1.0\";s:8:\"specific\";s:0:\"\";s:8:\"sort_pos\";s:1:\"1\";}s:12:\"slider_after\";a:10:{s:4:\"slug\";s:12:\"slider_after\";s:8:\"template\";s:6:\"slider\";s:4:\"name\";s:12:\"Slider After\";s:4:\"file\";s:95:\"E:\\xampp\\htdocs\\eshopper\\wp-content\\plugins\\woocommerce-ajax-filters\\template_styles\\slider.php\";s:10:\"style_file\";s:0:\"\";s:11:\"script_file\";s:13:\"/js/slider.js\";s:5:\"image\";s:109:\"http://localhost/eshopper/wp-content/plugins/woocommerce-ajax-filters/template_styles/images/slider-after.png\";s:7:\"version\";s:3:\"1.0\";s:8:\"specific\";s:0:\"\";s:8:\"sort_pos\";s:3:\"900\";}s:6:\"square\";a:12:{s:4:\"slug\";s:6:\"square\";s:8:\"template\";s:8:\"checkbox\";s:4:\"name\";s:6:\"Square\";s:4:\"file\";s:95:\"E:\\xampp\\htdocs\\eshopper\\wp-content\\plugins\\woocommerce-ajax-filters\\template_styles\\square.php\";s:10:\"style_file\";s:14:\"css/square.css\";s:11:\"script_file\";s:0:\"\";s:5:\"image\";s:103:\"http://localhost/eshopper/wp-content/plugins/woocommerce-ajax-filters/template_styles/images/square.png\";s:7:\"version\";s:3:\"1.0\";s:8:\"specific\";s:0:\"\";s:8:\"sort_pos\";s:3:\"900\";s:10:\"name_price\";s:19:\"Price Ranges Square\";s:11:\"image_price\";s:114:\"http://localhost/eshopper/wp-content/plugins/woocommerce-ajax-filters/template_styles/paid/images/square-price.png\";}}', 'yes'),
(698, 'braapf_new_filters_converted', '1', 'yes'),
(699, 'BeRocket_aapf_additional_tables_addon_position_data', 'a:2:{s:6:\"status\";i:100;s:3:\"run\";b:0;}', 'yes'),
(700, 'berocket_plugin_error_1', 'a:7:{i:0;a:3:{s:7:\"message\";s:28:\"Additional tables generation\";s:4:\"data\";a:3:{s:5:\"query\";s:625:\"CREATE TABLE wp_braapf_term_taxonomy_hierarchical (\r\n        term_taxonomy_id bigint(20) NOT NULL,\r\n        term_id bigint(20) NOT NULL,\r\n        term_taxonomy_child_id bigint(20) NOT NULL,\r\n        term_child_id bigint(20) NOT NULL,\r\n        taxonomy varchar(32) NOT NULL,\r\n        INDEX term_taxonomy_id (term_taxonomy_id),\r\n        INDEX term_taxonomy_child_id (term_taxonomy_child_id),\r\n        INDEX child_parent_id (term_taxonomy_id, term_taxonomy_child_id),\r\n        UNIQUE uniqueid (term_taxonomy_id, term_id, term_taxonomy_child_id, term_child_id)\r\n        ) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;\";s:5:\"error\";a:1:{s:36:\"wp_braapf_term_taxonomy_hierarchical\";s:50:\"Created table wp_braapf_term_taxonomy_hierarchical\";}s:4:\"cron\";s:7:\"ENABLED\";}s:4:\"time\";i:1602501430;}i:1;a:3:{s:7:\"message\";s:28:\"Additional tables generation\";s:4:\"data\";a:3:{s:5:\"query\";s:308:\"CREATE TABLE wp_braapf_product_stock_status_parent (\r\n        post_id bigint(20) NOT NULL,\r\n        parent_id bigint(20) NOT NULL,\r\n        stock_status tinyint(2),\r\n        PRIMARY KEY (post_id),\r\n        INDEX stock_status (stock_status)\r\n        ) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;\";s:5:\"error\";a:1:{s:37:\"wp_braapf_product_stock_status_parent\";s:51:\"Created table wp_braapf_product_stock_status_parent\";}s:4:\"cron\";s:7:\"ENABLED\";}s:4:\"time\";i:1602501437;}i:2;a:3:{s:7:\"message\";s:28:\"Additional tables generation\";s:4:\"data\";a:3:{s:5:\"query\";s:136:\"SELECT MIN(wp_wc_product_meta_lookup.product_id) as min, MAX(wp_wc_product_meta_lookup.product_id) as max FROM wp_wc_product_meta_lookup\";s:5:\"error\";O:8:\"stdClass\":2:{s:3:\"min\";s:2:\"11\";s:3:\"max\";s:2:\"15\";}s:4:\"cron\";s:7:\"ENABLED\";}s:4:\"time\";i:1602501437;}i:3;a:3:{s:7:\"message\";s:47:\"insert_table_braapf_product_stock_status_parent\";s:4:\"data\";a:2:{s:8:\"start_id\";i:11;s:6:\"end_id\";i:5011;}s:4:\"time\";i:1602501441;}i:4;a:3:{s:7:\"message\";s:52:\"insert_table_braapf_product_stock_status_parent test\";s:4:\"data\";a:5:{s:8:\"start_id\";i:11;s:6:\"end_id\";i:5011;s:6:\"min_id\";i:11;s:6:\"max_id\";i:15;s:6:\"result\";O:8:\"stdClass\":3:{s:7:\"post_id\";s:2:\"11\";s:9:\"parent_id\";s:1:\"0\";s:12:\"stock_status\";s:1:\"1\";}}s:4:\"time\";i:1602501441;}i:5;a:3:{s:7:\"message\";s:28:\"Additional tables generation\";s:4:\"data\";a:3:{s:5:\"query\";s:460:\"CREATE TABLE wp_braapf_product_variation_attributes (\r\n        post_id bigint(20) NOT NULL,\r\n        parent_id bigint(20) NOT NULL,\r\n        meta_key varchar(32) NOT NULL,\r\n        meta_value_id bigint(20) NOT NULL,\r\n        INDEX post_id (post_id),\r\n        INDEX meta_key (meta_key),\r\n        INDEX meta_value_id (meta_value_id),\r\n        UNIQUE uniqueid (post_id, meta_key, meta_value_id)\r\n        ) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;\";s:5:\"error\";a:1:{s:38:\"wp_braapf_product_variation_attributes\";s:52:\"Created table wp_braapf_product_variation_attributes\";}s:4:\"cron\";s:7:\"ENABLED\";}s:4:\"time\";i:1602501445;}i:6;a:3:{s:7:\"message\";s:28:\"Additional tables generation\";s:4:\"data\";a:3:{s:5:\"query\";s:307:\"CREATE TABLE wp_braapf_variation_attributes (\r\n        post_id bigint(20) NOT NULL,\r\n        taxonomy varchar(32) NOT NULL,\r\n        INDEX post_id (post_id),\r\n        INDEX taxonomy (taxonomy),\r\n        UNIQUE uniqueid (post_id, taxonomy)\r\n        ) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;\";s:5:\"error\";a:1:{s:30:\"wp_braapf_variation_attributes\";s:44:\"Created table wp_braapf_variation_attributes\";}s:4:\"cron\";s:7:\"ENABLED\";}s:4:\"time\";i:1602501454;}}', 'yes'),
(701, 'BeRocket_aapf_additional_tables_addon_position', '9', 'yes'),
(706, 'berocket_information_notices', 'a:1:{s:40:\"ajax_filters_additional_table_status_end\";a:11:{s:4:\"name\";s:40:\"ajax_filters_additional_table_status_end\";s:4:\"html\";s:136:\"<strong>BeRocket AJAX Product Filters</strong> Additional tables was succesfully generated. They will be used automatically when needed.\";s:9:\"righthtml\";s:40:\"<a class=\"berocket_no_thanks\">Got it</a>\";s:10:\"rightwidth\";i:50;s:13:\"nothankswidth\";i:50;s:12:\"contentwidth\";i:400;s:6:\"closed\";s:1:\"0\";s:8:\"priority\";i:20;s:6:\"height\";i:50;s:5:\"image\";a:3:{s:5:\"width\";i:0;s:6:\"height\";i:0;s:5:\"scale\";i:0;}s:9:\"subscribe\";b:0;}}', 'yes'),
(742, 'berocket_key_activated_plugins', 'a:1:{i:1;b:0;}', 'yes'),
(767, '_transient_shipping-transient-version', '1602568878', 'yes'),
(768, '_transient_timeout_wc_shipping_method_count_legacy', '1605160878', 'no'),
(769, '_transient_wc_shipping_method_count_legacy', 'a:2:{s:7:\"version\";s:10:\"1602568878\";s:5:\"value\";i:0;}', 'no'),
(937, 'recovery_mode_email_last_sent', '1604306526', 'yes'),
(1293, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(1346, '_transient_orders-transient-version', '1602767233', 'yes'),
(1347, '_transient_timeout_wc_customer_bought_product_d9f3268d66e106bf01f47b7c16828eb9', '1605359233', 'no'),
(1348, '_transient_wc_customer_bought_product_d9f3268d66e106bf01f47b7c16828eb9', 'a:2:{s:7:\"version\";s:10:\"1602767233\";s:5:\"value\";a:0:{}}', 'no'),
(1482, 'brand_children', 'a:0:{}', 'yes'),
(1559, '_transient_timeout_wc_term_counts', '1605606193', 'no'),
(1560, '_transient_wc_term_counts', 'a:12:{i:39;s:1:\"1\";i:40;s:1:\"1\";i:41;s:1:\"1\";i:19;s:1:\"5\";i:16;s:2:\"14\";i:21;s:1:\"1\";i:18;s:1:\"3\";i:20;s:1:\"2\";i:17;s:1:\"5\";i:15;s:1:\"0\";i:37;s:1:\"1\";i:35;s:1:\"1\";}', 'no'),
(2431, '_transient_timeout_wc_report_sales_by_date', '1604396053', 'no'),
(2432, '_transient_wc_report_sales_by_date', 'a:56:{s:32:\"04c19f861a4d9e2f08033e8b15d8698d\";a:0:{}s:32:\"a9734825eb867e3993f2e5d82dfba4b9\";a:0:{}s:32:\"cc975ef70dbcdfdaccd55b71abc51522\";a:0:{}s:32:\"dbbb976967d900a1566b3aa87c0bb45d\";N;s:32:\"04d006cf8988bdb21a3d5431737c17c4\";a:0:{}s:32:\"4473b9df664ade541ed168c978e8b27d\";a:0:{}s:32:\"f6c78c8b400d6f8bbed234d6c98bbb30\";a:0:{}s:32:\"5a7721b3759cef3e2ddd1a8686919031\";a:0:{}s:32:\"aff740726162e22e26d309f45c12ab77\";a:0:{}s:32:\"27a5de2344de7802aa10e46773369b1d\";a:0:{}s:32:\"3d2788c0b8cc4834ace59830b0617655\";a:0:{}s:32:\"e534ea9b148ef52b5364936cf6307d2b\";N;s:32:\"c806ad6fdea9a57335a674f48b55a2b4\";a:0:{}s:32:\"ade728219c0e2d4e47b00e676424464e\";a:0:{}s:32:\"5f25e892fc9e4e3b545754864aedea7c\";a:0:{}s:32:\"ee85f65e3b05369ae621d675dd4ead0d\";a:0:{}s:32:\"1e01999c0c500437ca3e70939128d027\";a:0:{}s:32:\"62cf0ac308b215ef4271203af9b25ff3\";a:0:{}s:32:\"39e23840f26dcf93e653ec6a3699075d\";a:0:{}s:32:\"f867dddea8b735cc284b15a1c75074d0\";N;s:32:\"3cbe12f6f501922181f9a5191d872f49\";a:0:{}s:32:\"963f734f4e19e7d1849c4b5ae4fda1e8\";a:0:{}s:32:\"b15bc8fbfb2874e94134a84a52c59a57\";a:0:{}s:32:\"ccb6a864f315fefa2bc093281e0d777e\";a:0:{}s:32:\"86f2a90f8c7d8d24b8f6c0bd817b657f\";a:0:{}s:32:\"30f0bcc1314e631797e247c3e4363d38\";a:0:{}s:32:\"9e1ea5f322536df78b1733877cbe0147\";a:0:{}s:32:\"4d0253d769b5c639f42b262273291994\";N;s:32:\"a1c8750b3a517b8cfa12ca19353b74f8\";a:0:{}s:32:\"5a10014ecedabba5f96a33bd53a7aa6a\";a:0:{}s:32:\"93976438ad56431d3a1f18ca06564b23\";a:0:{}s:32:\"83cd758ccf481cc540133af2d69039ab\";a:0:{}s:32:\"190f988ba1ecf13b20059e1b924c7377\";a:0:{}s:32:\"23a8998dfcb77b0d94fe9cfa20affe29\";a:0:{}s:32:\"25ff9301aae48b3436d7b0b694b38822\";a:0:{}s:32:\"570161e133d3dbabd9805f3af8354820\";N;s:32:\"483cd653a3aacb1aab7f16409ecd4b48\";a:0:{}s:32:\"462c2f646058be731832f8ff7707670e\";a:0:{}s:32:\"09e1e8ab8eb7a09ec092a6d614974e78\";a:0:{}s:32:\"21e237048cb1d2a33276769e9af77771\";a:0:{}s:32:\"e77f8ae199dd12a55b2796b4128256bc\";a:0:{}s:32:\"4cdeb9f7ee74d23364bc5816dae491a6\";a:0:{}s:32:\"be57cb81542be80c7c6a8fc6c1e0ff0d\";a:0:{}s:32:\"813145d49684e6458f47c12ef30da113\";N;s:32:\"a8b4b0c2ad002f38b0876adb2075269a\";a:0:{}s:32:\"75803bf119679ebe795498632e28cdf1\";a:0:{}s:32:\"05b9b7df3da837aaf813f77aed6f2e30\";a:0:{}s:32:\"aed611a76273d6b0d3dda5c4e0391ab2\";a:0:{}s:32:\"baf9e1a8cfa53e173ba35020f762f676\";a:0:{}s:32:\"fdbf1929441f02bb13ed440515f082b9\";a:0:{}s:32:\"9117b835c6f886e8af085713b83e6c8c\";a:0:{}s:32:\"e32a5c77a19d1d59d13d3ff7413b0a4d\";N;s:32:\"06bb418bca8812d369c9eef81fa54c4d\";a:0:{}s:32:\"495081b121a9882e2afbe6957acb4ad8\";a:0:{}s:32:\"4eb0380d39d6459e3c4068c279a42638\";a:0:{}s:32:\"17edff869e2474646ae69813659124ed\";a:0:{}}', 'no'),
(2433, '_transient_timeout_wc_admin_report', '1604396053', 'no'),
(2434, '_transient_wc_admin_report', 'a:3:{s:32:\"c69de58d84ff5393035b5c625922cb38\";a:0:{}s:32:\"4245924886ac880970744f1d00887765\";a:0:{}s:32:\"4b90394c159a727c6fbb3a19ec113bf6\";a:0:{}}', 'no'),
(2435, '_site_transient_timeout_community-events-d41d8cd98f00b204e9800998ecf8427e', '1604352855', 'no'),
(2436, '_site_transient_community-events-d41d8cd98f00b204e9800998ecf8427e', 'a:4:{s:9:\"sandboxed\";b:0;s:5:\"error\";N;s:8:\"location\";a:1:{s:2:\"ip\";b:0;}s:6:\"events\";a:2:{i:0;a:10:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:64:\"Discussion group: Organizing WordPress Meetups - Getting Started\";s:3:\"url\";s:68:\"https://www.meetup.com/learn-wordpress-discussions/events/274203124/\";s:6:\"meetup\";s:27:\"Learn WordPress Discussions\";s:10:\"meetup_url\";s:51:\"https://www.meetup.com/learn-wordpress-discussions/\";s:4:\"date\";s:19:\"2020-11-02 05:00:00\";s:8:\"end_date\";s:19:\"2020-11-02 06:00:00\";s:20:\"start_unix_timestamp\";i:1604322000;s:18:\"end_unix_timestamp\";i:1604325600;s:8:\"location\";a:4:{s:8:\"location\";s:6:\"Online\";s:7:\"country\";s:2:\"US\";s:8:\"latitude\";d:37.779998779297;s:9:\"longitude\";d:-122.41999816895;}}i:1;a:10:{s:4:\"type\";s:8:\"wordcamp\";s:5:\"title\";s:23:\"WordCamp Finland Online\";s:3:\"url\";s:34:\"https://finland.wordcamp.org/2020/\";s:6:\"meetup\";N;s:10:\"meetup_url\";N;s:4:\"date\";s:19:\"2020-11-12 12:10:00\";s:8:\"end_date\";s:19:\"2020-11-12 12:10:00\";s:20:\"start_unix_timestamp\";i:1605175800;s:18:\"end_unix_timestamp\";i:1605175800;s:8:\"location\";a:4:{s:8:\"location\";s:6:\"Online\";s:7:\"country\";s:2:\"FI\";s:8:\"latitude\";d:61.92411;s:9:\"longitude\";d:25.7481511;}}}}', 'no'),
(2504, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(2626, 'acf_version', '5.8.7', 'yes'),
(2631, 'action_scheduler_migration_status', 'complete', 'yes'),
(2644, 'options_phone_no', '9831544928', 'no'),
(2645, '_options_phone_no', 'field_5f9971ed97db3', 'no'),
(2646, 'options_email_id', 'debtapas14@gmail.com', 'no'),
(2647, '_options_email_id', 'field_5f99721897db4', 'no'),
(2648, 'options_social_icons', 'https://www.facebook.com/', 'no'),
(2649, '_options_social_icons', 'field_5f997240407a9', 'no'),
(2659, '_transient_timeout_orders-all-statuses', '1604924953', 'no'),
(2660, '_transient_orders-all-statuses', 'a:2:{s:7:\"version\";s:10:\"1604319924\";s:5:\"value\";a:0:{}}', 'no'),
(2694, '_transient_timeout_berocket_1_paid_info', '1604561200', 'no'),
(2695, '_transient_berocket_1_paid_info', 'a:13:{s:2:\"id\";s:1:\"1\";s:4:\"name\";s:32:\"WooCommerce AJAX Products Filter\";s:4:\"slug\";s:32:\"woocommerce-ajax-products-filter\";s:10:\"plugin_url\";s:61:\"https://berocket.com/product/woocommerce-ajax-products-filter\";s:7:\"version\";s:7:\"3.0.1.9\";s:5:\"about\";s:113:\"Take a look at this fantastic AJAX products filter plugin for WooCommerce. Add unlimited filters with one widget.\";s:10:\"difference\";a:25:{i:0;s:42:\"Widget to filter products by modified date\";i:1;s:62:\"Up to 4 colors for attributes values in widget with type color\";i:2;s:148:\"Custom Sidebar for filters <a href=\'https://woocommerce-products-filter.berocket.com/woocommerce-products-filter-demo-2/\' target=\'_blank\'>[demo]</a>\";i:3;s:133:\"Filters over Products <a href=\'https://woocommerce-products-filter.berocket.com/product-category/tshirts/\' target=\'_blank\'>[demo]</a>\";i:4;s:136:\"Show Filter\'s Title only <a href=\'https://woocommerce-products-filter.berocket.com/product-category/tshirts/\' target=\'_blank\'>[demo]</a>\";i:5;s:152:\"Collapsed filters over the products <a href=\'https://woocommerce-products-filter.berocket.com/product-category/all-products/\' target=\'_blank\'>[demo]</a>\";i:6;s:143:\"SEO Meta and Title <a href=\'https://woocommerce-products-filter.berocket.com/shop/filters/price/465_1913/color/red/\' target=\'_blank\'>[demo]</a>\";i:7;s:28:\"Filters by Custom Taxonomies\";i:8;s:22:\"Filter by Stock Status\";i:9;s:32:\"Filter by Product On Sale Status\";i:10;s:40:\"Remove/Leave only Some Values on Filter \";i:11;s:46:\"Checkbox/Values List for Price as Price Ranges\";i:12;s:45:\"Slider Range for Attributes/Custom Taxonomies\";i:13;s:30:\"Datepicker Style for Attribute\";i:14;s:40:\"Datepicker for Products Publication Date\";i:15;s:43:\"Display Products Count for Attribute Values\";i:16;s:31:\"Display 1-4 filter per Line/Row\";i:17;s:76:\"Search Box Block (Group of Filters that Redirect to Other Page on Filtering)\";i:18;s:31:\"Nice URLs for SEO Friendly URLs\";i:19;s:27:\"Setup Links After Filtering\";i:20;s:36:\"Generate Canonical Link for the Page\";i:21;s:46:\"Add Filters to page Title, Description, Header\";i:22;s:59:\"Display Image/Price of Variation that Fits Selected Filters\";i:23;s:63:\"Open Product with Selected Variation that Fits Selected Filters\";i:24;s:24:\"Additional Filter Styles\";}s:7:\"related\";a:3:{i:0;s:1:\"3\";i:1;s:2:\"18\";i:2;s:2:\"21\";}s:5:\"image\";s:61:\"https://berocket.com/img/b15144f7012aa6e6badd844905dec34f.png\";s:10:\"mini_image\";s:61:\"https://berocket.com/img/fef38793de09251e3d7dd4520965cc16.png\";s:10:\"shop_image\";s:61:\"https://berocket.com/img/163ffebae875ac349d4430b2e388ca99.png\";s:5:\"price\";s:2:\"44\";s:7:\"buy_url\";s:34:\"https://berocket.com/add_to_cart/1\";}', 'no'),
(2698, '_transient_timeout_sv_wc_plugin_wc_versions', '1604561332', 'no'),
(2699, '_transient_sv_wc_plugin_wc_versions', 'a:75:{i:0;s:5:\"4.6.1\";i:1;s:5:\"4.6.0\";i:2;s:5:\"4.5.2\";i:3;s:5:\"4.5.1\";i:4;s:5:\"4.5.0\";i:5;s:5:\"4.4.1\";i:6;s:5:\"4.4.0\";i:7;s:5:\"4.3.3\";i:8;s:5:\"4.3.2\";i:9;s:5:\"4.3.1\";i:10;s:5:\"4.3.0\";i:11;s:5:\"4.2.2\";i:12;s:5:\"4.2.1\";i:13;s:5:\"4.2.0\";i:14;s:5:\"4.1.1\";i:15;s:5:\"4.1.0\";i:16;s:5:\"4.0.1\";i:17;s:5:\"4.0.0\";i:18;s:5:\"3.9.3\";i:19;s:5:\"3.9.2\";i:20;s:5:\"3.9.1\";i:21;s:5:\"3.9.0\";i:22;s:5:\"3.8.1\";i:23;s:5:\"3.8.0\";i:24;s:5:\"3.7.1\";i:25;s:5:\"3.7.0\";i:26;s:5:\"3.6.5\";i:27;s:5:\"3.6.4\";i:28;s:5:\"3.6.3\";i:29;s:5:\"3.6.2\";i:30;s:5:\"3.6.1\";i:31;s:5:\"3.6.0\";i:32;s:5:\"3.5.8\";i:33;s:5:\"3.5.7\";i:34;s:5:\"3.5.6\";i:35;s:5:\"3.5.5\";i:36;s:5:\"3.5.4\";i:37;s:5:\"3.5.3\";i:38;s:5:\"3.5.2\";i:39;s:5:\"3.5.1\";i:40;s:5:\"3.5.0\";i:41;s:5:\"3.4.7\";i:42;s:5:\"3.4.6\";i:43;s:5:\"3.4.5\";i:44;s:5:\"3.4.4\";i:45;s:5:\"3.4.3\";i:46;s:5:\"3.4.2\";i:47;s:5:\"3.4.1\";i:48;s:5:\"3.4.0\";i:49;s:5:\"3.3.5\";i:50;s:5:\"3.3.4\";i:51;s:5:\"3.3.3\";i:52;s:5:\"3.3.2\";i:53;s:5:\"3.3.1\";i:54;s:5:\"3.3.0\";i:55;s:5:\"3.2.6\";i:56;s:5:\"3.2.5\";i:57;s:5:\"3.2.4\";i:58;s:5:\"3.2.3\";i:59;s:5:\"3.2.2\";i:60;s:5:\"3.2.1\";i:61;s:5:\"3.2.0\";i:62;s:5:\"3.1.2\";i:63;s:5:\"3.1.1\";i:64;s:5:\"3.1.0\";i:65;s:5:\"3.0.9\";i:66;s:5:\"3.0.8\";i:67;s:5:\"3.0.7\";i:68;s:5:\"3.0.6\";i:69;s:5:\"3.0.5\";i:70;s:5:\"3.0.4\";i:71;s:5:\"3.0.3\";i:72;s:5:\"3.0.2\";i:73;s:5:\"3.0.1\";i:74;s:5:\"3.0.0\";}', 'no'),
(2719, '_site_transient_timeout_browser_da97199531d96e3a9f6135dc6523d4c7', '1604565805', 'no'),
(2720, '_site_transient_browser_da97199531d96e3a9f6135dc6523d4c7', 'a:10:{s:4:\"name\";s:7:\"Firefox\";s:7:\"version\";s:4:\"82.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:32:\"https://www.mozilla.org/firefox/\";s:7:\"img_src\";s:44:\"http://s.w.org/images/browsers/firefox.png?1\";s:11:\"img_src_ssl\";s:45:\"https://s.w.org/images/browsers/firefox.png?1\";s:15:\"current_version\";s:2:\"56\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(2788, 'options_logo', '132', 'no'),
(2789, '_options_logo', 'field_5f9aa14e02364', 'no'),
(3018, 'WPLANG', '', 'yes'),
(3019, 'new_admin_email', 'debtapas14@gmail.com', 'yes'),
(3333, '_transient_timeout_acf_plugin_updates', '1604465999', 'no'),
(3334, '_transient_acf_plugin_updates', 'a:4:{s:7:\"plugins\";a:1:{s:41:\"advanced-custom-fields-pro-master/acf.php\";a:8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:41:\"advanced-custom-fields-pro-master/acf.php\";s:11:\"new_version\";s:5:\"5.9.2\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:5:\"5.5.1\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:10:\"expiration\";i:172800;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:41:\"advanced-custom-fields-pro-master/acf.php\";s:5:\"5.8.7\";}}', 'no'),
(3339, '_transient_timeout__woocommerce_helper_updates', '1604336401', 'no'),
(3340, '_transient__woocommerce_helper_updates', 'a:4:{s:4:\"hash\";s:32:\"d751713988987e9331980363e24189ce\";s:7:\"updated\";i:1604293201;s:8:\"products\";a:0:{}s:6:\"errors\";a:1:{i:0;s:10:\"http-error\";}}', 'no'),
(3342, '_transient_timeout_feed_9bbd59226dc36b9b26cd43f15694c5c3', '1604336960', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(3343, '_transient_feed_9bbd59226dc36b9b26cd43f15694c5c3', 'a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:3:\"\n\n\n\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:49:\"\n	\n	\n	\n	\n	\n	\n	\n	\n	\n	\n		\n		\n		\n		\n		\n		\n		\n		\n		\n	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"News –  – WordPress.org\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:26:\"https://wordpress.org/news\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"WordPress News\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:13:\"lastBuildDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sat, 31 Oct 2020 00:09:09 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"language\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"en-US\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"generator\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"https://wordpress.org/?v=5.6-beta2-49470\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"item\";a:10:{i:0;a:6:{s:4:\"data\";s:57:\"\n		\n		\n		\n		\n		\n				\n		\n\n					\n										\n					\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:35:\"WordPress 5.5.3 Maintenance Release\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:71:\"https://wordpress.org/news/2020/10/wordpress-5-5-3-maintenance-release/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 30 Oct 2020 20:25:44 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=9212\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:372:\"WordPress 5.5.3 is now available.&#160; This maintenance release fixes an issue introduced in WordPress 5.5.2 which makes it impossible to install WordPress on a brand new website that does not have a database connection configured. This release does not affect sites where a database connection is already configured, for example, via one-click installers or an [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jake Spurlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:4118:\"\n<p>WordPress 5.5.3 is now available.&nbsp;</p>\n\n\n\n<p>This maintenance release fixes an issue introduced in WordPress 5.5.2 which makes it impossible to install WordPress on a brand new website that does not have a database connection configured. This release does not affect sites where a database connection is already configured, for example, via one-click installers or an existing <code>wp-config.php</code> file.</p>\n\n\n\n<h2>5.5.3-alpha Issue</h2>\n\n\n\n<p>Earlier today &#8212; between approximately 15:30 and 16:00 UTC &#8212; the auto-update system for WordPress updated some sites from version 5.5.2 to version 5.5.3-alpha. This auto-update was due to an error in the Updates API caused by the 5.5.3 release preparations (<a href=\"https://wordpress.org/support/topic/wordpress-5-5-3-alpha-auto-updates/\">see more here</a>). The 5.5.3-alpha version at this point was functionally identical to 5.5.2 as no development work had been started on 5.5.3; however, the following changes may have been made to your site:</p>\n\n\n\n<ul><li>The default “Twenty” themes installed as part of the pre-release package.</li><li>The “Akismet” plugin installed as part of the pre-release package.</li></ul>\n\n\n\n<p>These themes and plugins were not activated and therefore remain non-functional unless you installed them previously. It is safe to delete these features should you prefer not to use them.&nbsp;</p>\n\n\n\n<p>If you are not on 5.5.2, or have auto-updates for minor releases disabled, please manually update to the 5.5.3 version by downloading WordPress 5.5.3 or visiting Dashboard → Updates and click “Update Now.”</p>\n\n\n\n<p>For more technical details of the issue, we’ve <a href=\"https://make.wordpress.org/core/2020/10/30/wordpress-5-5-3-release-some-technical-details/\">posted on our Core Development blog</a>.</p>\n\n\n\n<h2>Thanks and props!</h2>\n\n\n\n<p>Thanks to those who contributed to the 5.5.3 release: <a href=\'https://profiles.wordpress.org/audrasjb/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>audrasjb</a>, <a href=\'https://profiles.wordpress.org/barry/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>barry</a>, <a href=\'https://profiles.wordpress.org/chanthaboune/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>chanthaboune</a>, <a href=\'https://profiles.wordpress.org/cbringmann/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>cbringmann</a>, <a href=\'https://profiles.wordpress.org/clorith/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>clorith</a>, <a href=\'https://profiles.wordpress.org/davidbaumwald/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>davidbaumwald</a>, <a href=\'https://profiles.wordpress.org/desrosj/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>desrosj</a>, <a href=\'https://profiles.wordpress.org/hellofromtonya/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>hellofromtonya</a>, <a href=\'https://profiles.wordpress.org/jeffpaul/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>jeffpaul</a>, <a href=\'https://profiles.wordpress.org/johnbillion/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>johnbillion</a>, <a href=\'https://profiles.wordpress.org/garubi/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>garubi</a>, <a href=\'https://profiles.wordpress.org/metalandcoffee/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>metalandcoffee</a>, <a href=\'https://profiles.wordpress.org/mukesh27/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>mukesh27</a>, <a href=\'https://profiles.wordpress.org/otto42/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>otto42</a>, <a href=\'https://profiles.wordpress.org/punitsoftac/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>punitsoftac</a>, <a href=\'https://profiles.wordpress.org/sergeybiryukov/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>sergeybiryukov</a>, <a href=\'https://profiles.wordpress.org/whyisjake/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>whyisjake</a>, and <a href=\'https://profiles.wordpress.org/xknown/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>xknown</a>.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"9212\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:1;a:6:{s:4:\"data\";s:57:\"\n		\n		\n		\n		\n		\n				\n		\n\n					\n										\n					\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:48:\"WordPress 5.5.2 Security and Maintenance Release\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:84:\"https://wordpress.org/news/2020/10/wordpress-5-5-2-security-and-maintenance-release/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 29 Oct 2020 20:41:03 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=9189\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:364:\"WordPress 5.5.2 is now available! This security and maintenance release features 14 bug fixes in addition to 10 security fixes. Because this is a security release, it is recommended that you update your sites immediately. All versions since WordPress 3.7 have also been updated. WordPress 5.5.2 is a short-cycle security and maintenance release. The next [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"Jb Audras\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:7296:\"\n<p>WordPress 5.5.2 is now available!</p>\n\n\n\n<p>This security and maintenance release features <a href=\"https://core.trac.wordpress.org/query?milestone=5.5.2&amp;group=component&amp;col=id&amp;col=summary&amp;col=milestone&amp;col=owner&amp;col=type&amp;col=status&amp;col=priority&amp;order=priority\">14 bug fixes</a> in addition to 10 security fixes. Because this is a <strong>security release</strong>, it is recommended that you update your sites immediately. All versions since WordPress 3.7 have also been updated.</p>\n\n\n\n<p>WordPress 5.5.2 is a short-cycle security and maintenance release. The next major release will be version 5.6.</p>\n\n\n\n<p>You can download WordPress 5.5.2 by downloading from WordPress.org, or visit your Dashboard → Updates and click Update Now.</p>\n\n\n\n<p>If you have sites that support automatic background updates, they’ve already started the update process.</p>\n\n\n\n<h3>Security Updates</h3>\n\n\n\n<p>Ten security issues affect WordPress versions 5.5.1 and earlier. If you haven’t yet updated to 5.5, all WordPress versions since 3.7 have also been updated to fix the following security issues:</p>\n\n\n\n<ul><li>Props to Alex Concha of the WordPress Security Team for their work in hardening deserialization requests.</li><li>Props to David Binovec on a fix to disable spam embeds from disabled sites on a multisite network.</li><li>Thanks to Marc Montas from Sucuri for reporting an issue that could lead to XSS from global variables.</li><li>Thanks to Justin Tran who reported an issue surrounding privilege escalation in XML-RPC. He also found and disclosed an issue around privilege escalation around post commenting via XML-RPC.</li><li>Props to Omar Ganiev who reported a method where a DoS attack could lead to RCE.</li><li>Thanks to Karim El Ouerghemmi from <a href=\"https://www.ripstech.com/\">RIPS</a> who disclosed a method to store XSS in post slugs.</li><li>Thanks to Slavco for reporting, and confirmation from Karim El Ouerghemmi, a method to bypass protected meta that could lead to arbitrary file deletion.</li><li>Thanks to Erwan LR from <a href=\"https://wpscan.com/\">WPScan</a> who responsibly disclosed a method that could lead to CSRF. </li><li>And a special thanks to <a href=\'https://profiles.wordpress.org/zieladam/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>zieladam</a> who was integral in many of the releases and patches during this release.</li></ul>\n\n\n\n<p>Thank you to all of the reporters for <a href=\"https://make.wordpress.org/core/handbook/testing/reporting-security-vulnerabilities/\">privately disclosing the vulnerabilities</a>. This gave the security team time to fix the vulnerabilities before WordPress sites could be attacked.</p>\n\n\n\n<p>For more information, browse the <a href=\"https://core.trac.wordpress.org/query?milestone=5.5.2&amp;group=component&amp;col=id&amp;col=summary&amp;col=milestone&amp;col=owner&amp;col=type&amp;col=status&amp;col=priority&amp;order=priority\">full list of changes</a> on Trac, or check out the <a href=\"https://wordpress.org/support/wordpress-version/version-5-5-2/\">version 5.5.2 HelpHub documentation page</a>.</p>\n\n\n\n<h2>Thanks and props!</h2>\n\n\n\n<p>The 5.5.2 release was led by <a href=\"https://profiles.wordpress.org/whyisjake/\">@whyisjake</a> and the following release squad: &nbsp;<a href=\"https://profiles.wordpress.org/audrasjb/\">@audrasjb</a>,&nbsp;<a href=\"https://profiles.wordpress.org/davidbaumwald/\">@davidbaumwald</a>,&nbsp;<a href=\"https://profiles.wordpress.org/desrosj/\">@desrosj</a>,&nbsp;<a href=\"https://profiles.wordpress.org/johnbillion/\">@johnbillion</a>, <a href=\"https://profile.wordpress.org/metalandcoffee\">@metalandcoffee</a>, <a href=\"https://profiles.wordpress.org/noisysocks\">@noisysocks</a>&nbsp;<a href=\"https://profiles.wordpress.org/planningwrite/\">@planningwrite</a>, <a href=\"https://profiles.wordpress.org/sarahricker/\">@sarahricker</a> and&nbsp;<a href=\"https://profiles.wordpress.org/sergeybiryukov/\">@sergeybiryukov</a>.</p>\n\n\n\n<p>In addition to the security researchers and release squad members mentioned above, thank you to everyone who helped make WordPress 5.5.2 happen:</p>\n\n\n\n<p><a href=\"https://profiles.wordpress.org/jorbin/\">Aaron Jorbin</a>, <a href=\"https://profiles.wordpress.org/xknown/\">Alex Concha</a>, <a href=\"https://profiles.wordpress.org/wpamitkumar/\">Amit Dudhat</a>, <a href=\"https://profiles.wordpress.org/rarst/\">Andrey &#8220;Rarst&#8221; Savchenko</a>, <a href=\"https://profiles.wordpress.org/afragen/\">Andy Fragen</a>, <a href=\"https://profiles.wordpress.org/ayeshrajans/\">Ayesh Karunaratne</a>, <a href=\"https://profiles.wordpress.org/bridgetwillard/\">bridgetwillard</a>, <a href=\"https://profiles.wordpress.org/talldanwp/\">Daniel Richards</a>, <a href=\"https://profiles.wordpress.org/davidbaumwald/\">David Baumwald</a>, <a href=\"https://profiles.wordpress.org/davisshaver/\">Davis Shaver</a>, <a href=\"https://profiles.wordpress.org/dd32/\">dd32</a>, <a href=\"https://profiles.wordpress.org/mista-flo/\">Florian TIAR</a>, <a href=\"https://profiles.wordpress.org/hareesh-pillai/\">Hareesh</a>, <a href=\"https://profiles.wordpress.org/hlashbrooke/\">Hugh Lashbrooke</a>, <a href=\"https://profiles.wordpress.org/iandunn/\">Ian Dunn</a>, <a href=\"https://profiles.wordpress.org/igorradovanov/\">Igor Radovanov</a>, <a href=\"https://profiles.wordpress.org/whyisjake/\">Jake Spurlock</a>, <a href=\"https://profiles.wordpress.org/audrasjb/\">Jb Audras</a>, <a href=\"https://profiles.wordpress.org/johnbillion/\">John Blackbourn</a>, <a href=\"https://profiles.wordpress.org/desrosj/\">Jonathan Desrosiers</a>, <a href=\"https://profiles.wordpress.org/jb510/\">Jon Brown</a>, <a href=\"https://profiles.wordpress.org/joyously/\">Joy</a>, <a href=\"https://profiles.wordpress.org/jrf/\">Juliette Reinders Folmer</a>, <a href=\"https://profiles.wordpress.org/kellybleck/\">kellybleck</a>, <a href=\"https://profiles.wordpress.org/mailnew2ster/\">mailnew2ster</a>, <a href=\"https://profiles.wordpress.org/mkaz/\">Marcus Kazmierczak</a>, <a href=\"https://profiles.wordpress.org/clorith/\">Marius L. J.</a>, <a href=\"https://profiles.wordpress.org/dimadin/\">Milan Dinić</a>, <a href=\"https://profiles.wordpress.org/batmoo/\">Mohammad Jangda</a>, <a href=\"https://profiles.wordpress.org/mukesh27/\">Mukesh Panchal</a>, <a href=\"https://profiles.wordpress.org/paaljoachim/\">Paal Joachim Romdahl</a>, <a href=\"https://profiles.wordpress.org/peterwilsoncc/\">Peter Wilson</a>, <a href=\"https://profiles.wordpress.org/regankhadgi/\">Regan Khadgi</a>, <a href=\"https://profiles.wordpress.org/noisysocks/\">Robert Anderson</a>, <a href=\"https://profiles.wordpress.org/sergeybiryukov/\">Sergey Biryukov</a>, <a href=\"https://profiles.wordpress.org/yakimun/\">Sergey Yakimov</a>, <a href=\"https://profiles.wordpress.org/smub/\">Syed Balkhi</a>, <a href=\"https://profiles.wordpress.org/szaqal21/\">szaqal21</a>, <a href=\"https://profiles.wordpress.org/tellyworth/\">Tellyworth</a>, <a href=\"https://profiles.wordpress.org/sippis/\">Timi Wahalahti</a>, <a href=\"https://profiles.wordpress.org/timothyblynjacobs/\">Timothy Jacobs</a>, <a href=\"https://profiles.wordpress.org/itowhid06/\">Towhidul I. Chowdhury</a>, <a href=\"https://profiles.wordpress.org/vinayakanivase/\">Vinayak Anivase</a>, and <a href=\"https://profiles.wordpress.org/zieladam/\">zieladam</a>.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"9189\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:2;a:6:{s:4:\"data\";s:63:\"\n		\n		\n		\n		\n		\n				\n		\n		\n		\n\n					\n										\n					\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:66:\"Take the 2020 WordPress Annual Survey (and view the 2019 results)!\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:99:\"https://wordpress.org/news/2020/10/take-the-2020-wordpress-annual-survey-and-view-the-2019-results/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 27 Oct 2020 22:44:11 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:3:{i:0;a:5:{s:4:\"data\";s:9:\"Community\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:7:\"General\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:6:\"survey\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=9132\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:187:\"The 2020 WordPress survey is open! Take the survey to share your WordPress experience with those who build the software. Also, the 2019 survey results are now available - check them out! \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"Andrea Middleton\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:7343:\"\n<p>For many years, WordPress enthusiasts have filled out an annual survey to share their experiences and feelings about WordPress. Interesting results from this survey have been shared in the annual<a href=\"https://wordpress.tv/tag/state-of-the-word/\"> State of the Word</a> address and/or here on WordPress News.&nbsp;</p>\n\n\n\n<p>This survey helps those who build WordPress understand more about how the software is used, and by whom. The survey also helps leaders in the WordPress open source project learn more about our contributors&#8217; experience<a href=\"https://make.wordpress.org/\"></a>. &nbsp;</p>\n\n\n\n<p>To ensure that <strong>your</strong> WordPress experience is represented in the 2020 survey results,</p>\n\n\n\n<div class=\"wp-block-buttons aligncenter\">\n<div class=\"wp-block-button is-style-fill\"><a class=\"wp-block-button__link has-vivid-cyan-blue-background-color has-background\" href=\"https://wordpressdotorg.survey.fm/wordpress-2020-survey-english\" target=\"_blank\" rel=\"https://wordpressdotorg.survey.fm/wordpress-2020-survey-english noopener\">Take the 2020 Annual Survey! (English)</a></div>\n</div>\n\n\n\n<p>You can also take the survey in <a href=\"https://wordpressdotorg.survey.fm/wordpress-2020-survey-french\">French</a>, <a href=\"https://wordpressdotorg.survey.fm/wordpress-2020-survey-german\">German</a>, <a href=\"https://wordpressdotorg.survey.fm/wordpress-2020-survey-japanese\">Japanese</a>, <a href=\"https://wordpressdotorg.survey.fm/wordpress-2020-survey-russian\">Russian</a>, and <a href=\"https://wordpressdotorg.survey.fm/wordpress-2020-survey-spanish\">Spanish</a>! The survey will be open for at least 6 weeks, and results will be posted on this blog.</p>\n\n\n\n<h1>2019 Survey Results</h1>\n\n\n\n<div class=\"wp-block-buttons aligncenter\">\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link has-vivid-cyan-blue-background-color has-text-color has-background\" href=\"https://docs.google.com/presentation/d/1FI7eEvSB5SHTSILIBpwOmH9rBffgD6mFnnqSkrEScYo/edit\" style=\"border-radius:2px;color:#fffffa\" target=\"_blank\" rel=\"https://docs.google.com/presentation/d/1FI7eEvSB5SHTSILIBpwOmH9rBffgD6mFnnqSkrEScYo/edit#slide=id.g71a4c4edc6_3_232 noopener\">View the 2019 Survey Results (Slides)</a></div>\n\n\n\n<div class=\"wp-block-button is-style-outline\"><a class=\"wp-block-button__link has-white-color has-vivid-cyan-blue-background-color has-text-color has-background\" href=\"https://www.dropbox.com/sh/bq62sficymopgos/AAA-wx73cDviVG84NSCTgjNDa?dl=0\" style=\"border-radius:2px\" rel=\"https://www.dropbox.com/sh/bq62sficymopgos/AAA-wx73cDviVG84NSCTgjNDa?dl=0\">Download the 2019 Survey Results (PDF or PPT)</a></div>\n</div>\n\n\n\n<p>The 2019 survey included some new questions to better understand why people continue to use WordPress as their preferred CMS, as well as a section directed toward WordPress contributors. For the first time in 2019, this survey was translated into 5 different languages: French, German, Japanese, Russian, and Spanish.</p>\n\n\n\n<p>The first WordPress Contributor Survey was conducted in 2015, but unfortunately the results were never published. This report includes Contributor Survey results from both 2015 and 2019.&nbsp; </p>\n\n\n\n<h2>Survey Segments</h2>\n\n\n\n<p>Major groups in the survey included: WordPress Professionals, WordPress Users, and Others.&nbsp;</p>\n\n\n\n<p>The <strong>WordPress Professionals</strong> group consists of those who: work for a company that designs/develops websites; use WordPress to build websites and/or blogs for others; design or develop themes, plugins, or other custom tools for WordPress sites; or are a designer, developer, or other web professional working with WordPress.</p>\n\n\n\n<p>This WordPress Professionals group is further divided into <strong>WordPress Company Pros</strong> (those who work for a company that designs/develops websites) and <strong>WordPress Freelancers/Hobbyists</strong> (all other professional types) subgroups.</p>\n\n\n\n<p>The <strong>WordPress User</strong> group consists of those who: own or run a blog that is built with WordPress; own or run a website that is built with WordPress; write for or contribute to a blog/website that is built with WordPress; use WordPress for school as a teacher; use WordPress for school as a student, or are learning to build websites using WordPress.</p>\n\n\n\n<p>The <strong>Others</strong> group consists of those who did not self-identify with any of the options provided for the question, “Which of the following best describes how you use WordPress?”</p>\n\n\n\n<h2>2019 Survey Results Summary</h2>\n\n\n\n<p>WordPress remains the platform of choice for future projects among those surveyed. Overwhelmingly, the reasons cited for this are that WordPress is the CMS people already know, and that the community supporting it is valuable. Professionals and users report similar levels of frustration with updates and Gutenberg. Both groups also love the ease of use they find in WordPress.</p>\n\n\n\n<p>The number of professionals who report providing a heavily customized experience to clients has increased substantially, while at the same time the amount of time reported on creating those sites has decreased. Regardless of frustrations felt with various features, this seems to indicate that ease of use has been on the rise.</p>\n\n\n\n<p>More details on sentiment, usage, and other interesting topics are available in the report: <a href=\"https://docs.google.com/presentation/d/1FI7eEvSB5SHTSILIBpwOmH9rBffgD6mFnnqSkrEScYo/edit#slide=id.g71a4c4edc6_3_232\">check it out!</a></p>\n\n\n\n<h1>Before you go: take the 2020 Survey!</h1>\n\n\n\n<p>Knowing why and how people use WordPress helps those who build WordPress to keep your needs and preferences in mind.&nbsp;</p>\n\n\n\n<p>The survey will be open for at least 6 weeks, and results will be published on this blog. All data will be anonymized: no email addresses or IP addresses will be associated with published results. To learn more about WordPress.org’s privacy practices, check out the<a href=\"https://wordpress.org/about/privacy/\"> privacy policy</a>.</p>\n\n\n\n<p>Like last year, the 2020 survey will be promoted via a banner on WordPress.org, as well as by WordPress enthusiasts. Each of the translated surveys will be promoted through banners on their associated localized-language WordPress.org sites. Please encourage your WordPress pals and social media followers to take the survey too!</p>\n\n\n\n<p>To ensure your WordPress experience is represented in the 2020 survey results&#8230; don’t delay! </p>\n\n\n\n<div class=\"wp-block-buttons aligncenter\">\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link has-white-color has-vivid-cyan-blue-background-color has-text-color has-background\" href=\"https://wordpressdotorg.survey.fm/wordpress-2020-survey-english\" rel=\"https://wordpressdotorg.survey.fm/wordpress-2020-survey-english\">Take the 2020 WordPress Annual Survey!</a></div>\n</div>\n\n\n\n<p>(Also available in <a href=\"https://wordpressdotorg.survey.fm/wordpress-2020-survey-french\">French</a>, <a href=\"https://wordpressdotorg.survey.fm/wordpress-2020-survey-german\">German</a>, <a href=\"https://wordpressdotorg.survey.fm/wordpress-2020-survey-japanese\">Japanese</a>, <a href=\"https://wordpressdotorg.survey.fm/wordpress-2020-survey-russian\">Russian</a>, and <a href=\"https://wordpressdotorg.survey.fm/wordpress-2020-survey-spanish\">Spanish</a>!)</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"9132\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:3;a:6:{s:4:\"data\";s:60:\"\n		\n		\n		\n		\n		\n				\n		\n		\n\n					\n										\n					\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:20:\"WordPress 5.6 Beta 2\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:56:\"https://wordpress.org/news/2020/10/wordpress-5-6-beta-2/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 27 Oct 2020 22:02:28 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:11:\"Development\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=9134\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:364:\"WordPress 5.6 beta 2 is now available for testing! This software is still in development,&#160;so we recommend that you run this version on a test site. You can test the WordPress 5.6 beta in two ways: Try the WordPress Beta Tester plugin (choose the “bleeding edge nightlies” option). Or download the beta here (zip). WordPress 5.6 is slated for [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:7:\"Josepha\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:3787:\"\n<p>WordPress 5.6 beta 2 is now available for testing!</p>\n\n\n\n<p><strong>This software is still in development,</strong>&nbsp;so we recommend that you run this version on a test site.</p>\n\n\n\n<p>You can test the WordPress 5.6 beta in two ways:</p>\n\n\n\n<ul><li>Try the <a href=\"https://wordpress.org/plugins/wordpress-beta-tester/\">WordPress Beta Tester</a> plugin (choose the “bleeding edge nightlies” option).</li><li>Or <a href=\"https://wordpress.org/wordpress-5.6-beta2.zip\">download the beta here (zip)</a>.</li></ul>\n\n\n\n<p>WordPress 5.6 is slated for release on <a href=\"https://make.wordpress.org/core/5-6/\">December 8, 2020</a>, and <strong>we need your help to get there</strong>!</p>\n\n\n\n<p>Thank you to all of the contributors that tested the <a href=\"https://wordpress.org/news/2020/10/wordpress-5-6-beta-1/\">beta 1</a> development release and provided feedback. Testing for bugs is an important part of polishing each release and a great way to contribute to WordPress.</p>\n\n\n\n<h2 id=\"block-15d6d57f-905d-4a47-9f66-839468a5375a\">Some highlights</h2>\n\n\n\n<p id=\"block-85da84ec-c841-42f9-8d3b-1a4537a61d10\">Since beta 1, <a href=\"https://core.trac.wordpress.org/query?status=closed&amp;changetime=10%2F21%2F2020..10%2F27%2F2020&amp;milestone=5.6&amp;group=component&amp;col=id&amp;col=summary&amp;col=owner&amp;col=type&amp;col=priority&amp;col=component&amp;col=version&amp;order=priority\">53 bugs</a> have been fixed. Here is a summary of a few changes included in beta 2:</p>\n\n\n\n<ul><li>6 additional bugs have been fixed in the block editor (see <a href=\"https://github.com/WordPress/gutenberg/pull/26442\">#26442</a>).</li><li>Unified design for search forms and results across the admin (<a href=\"https://core.trac.wordpress.org/ticket/37353\">#37353</a>).</li><li>Exposed the <code>embed</code> Gutenberg block to Core (<a href=\"https://core.trac.wordpress.org/ticket/51531\">#51531</a>).</li><li>Updated Twemoji (<a href=\"https://core.trac.wordpress.org/ticket/51356\">#51356</a>), React (<a href=\"https://core.trac.wordpress.org/ticket/51505\">#51505</a>), and Akismet versions (<a href=\"https://core.trac.wordpress.org/ticket/51610\">#51610</a>).</li><li>Added accessibility improvements (among other things) to Application Passwords (<a href=\"https://core.trac.wordpress.org/ticket/51580\">#51580</a>).</li><li>Added indicator to image details for images attached to a site option (<a href=\"https://core.trac.wordpress.org/ticket/42063\">#42063</a>).</li></ul>\n\n\n\n<h2 id=\"block-76156b2b-0a52-4502-b585-6cbe9481f55b\">Developer notes</h2>\n\n\n\n<p id=\"block-3fe5e264-0a95-4f12-9a18-0cb9dc5955d1\">WordPress 5.6 has lots of refinements to the developer experience as well. To keep up, subscribe to the <a href=\"https://make.wordpress.org/core/\">Make WordPress Core blog</a> and pay special attention to the <a href=\"https://make.wordpress.org/core/tag/5-6+dev-notes/\">developers’ notes</a> for updates on those and other changes that could affect your products.</p>\n\n\n\n<h2 id=\"block-bc89fd56-47b0-439f-8e2c-4a642c80a616\">How to Help</h2>\n\n\n\n<p id=\"block-9d871099-ec49-446c-8322-9e49b7498c10\">If you think you’ve found a bug, you can post to the&nbsp;<a href=\"https://wordpress.org/support/forum/alphabeta/\">Alpha/Beta area</a>&nbsp;in the support forums. We’d love to hear from you!</p>\n\n\n\n<p id=\"block-bd71c1d3-39d9-4b2a-8193-3486497b45fd\">If you’re comfortable writing a reproducible bug report, <a href=\"https://core.trac.wordpress.org/newticket\">file one on WordPress Trac</a>, where you can also find a list of <a href=\"https://core.trac.wordpress.org/query?status=new&amp;milestone=5.6&amp;group=component&amp;col=id&amp;col=summary&amp;col=owner&amp;col=type&amp;col=priority&amp;col=component&amp;col=version&amp;order=priority\">known bugs</a>.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"9134\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:4;a:6:{s:4:\"data\";s:60:\"\n		\n		\n		\n		\n		\n				\n		\n		\n\n					\n										\n					\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:20:\"WordPress 5.6 Beta 1\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:56:\"https://wordpress.org/news/2020/10/wordpress-5-6-beta-1/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 20 Oct 2020 22:14:22 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:11:\"Development\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=9085\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:50:\"WordPress 5.6 Beta 1 is now available for testing!\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:7:\"Josepha\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:8236:\"\n<p>WordPress 5.6 Beta 1 is now available for testing!</p>\n\n\n\n<p><strong>This software is still in development,</strong>&nbsp;so we recommend that you run this version on a test site.</p>\n\n\n\n<p>You can test the WordPress 5.6 beta in two ways:</p>\n\n\n\n<ul><li>Try the&nbsp;<a href=\"https://wordpress.org/plugins/wordpress-beta-tester/\">WordPress Beta Tester</a>&nbsp;plugin (choose the “bleeding edge nightlies” option).</li><li>Or&nbsp;<a href=\"https://wordpress.org/wordpress-5.6-beta1.zip\">download the beta here&nbsp;(zip)</a>.</li></ul>\n\n\n\n<p>The current target for final release is December 8, 2020. This is just&nbsp;<strong>seven weeks away</strong>, so your help is needed to ensure this release is tested properly.</p>\n\n\n\n<h2><strong>Improvements in the Editor</strong></h2>\n\n\n\n<p>WordPress 5.6 includes seven Gutenberg plugin releases. Here are a few highlighted enhancements:</p>\n\n\n\n<ul><li>Improved support for video positioning in cover blocks.</li><li>Enhancements to Block Patterns including translatable strings.</li><li>Character counts in the information panel, improved keyboard navigation, and other adjustments to help users find their way better. </li><li>Improved UI for drag and drop functionality, as well as block movers.</li></ul>\n\n\n\n<p>To see all of the features for each release in detail check out the release posts: <a href=\"https://make.wordpress.org/core/2020/07/22/whats-new-in-gutenberg-july-22/\">8.6</a>, <a href=\"https://make.wordpress.org/core/2020/08/05/whats-new-in-gutenberg-august-5/\">8.7</a>, <a href=\"https://make.wordpress.org/core/2020/08/19/whats-new-in-gutenberg-august-19/\">8.8</a>, <a href=\"https://make.wordpress.org/core/2020/09/03/whats-new-in-gutenberg-2-september/\">8.9</a>, <a href=\"https://make.wordpress.org/core/2020/09/16/whats-new-in-gutenberg-16-september/\">9.0</a>, <a href=\"https://make.wordpress.org/core/2020/10/01/whats-new-in-gutenberg-30-september/\">9.1</a>, and 9.2 <em>(link forthcoming)</em>.</p>\n\n\n\n<h2><strong>Improvements in Core</strong></h2>\n\n\n\n<h3><strong>A new default theme</strong></h3>\n\n\n\n<p>The default theme is making its annual return with<a href=\"https://make.wordpress.org/core/2020/09/23/introducing-twenty-twenty-one/\"> Twenty Twenty-One</a>. This theme features a streamlined and elegant design, which aims to be <a href=\"https://www.w3.org/TR/UNDERSTANDING-WCAG20/conformance.html#uc-levels-head\">AAA ready</a>. </p>\n\n\n\n<h3><strong>Auto-update option for major releases</strong></h3>\n\n\n\n<p>The much anticipated opt-in for major releases of WordPress Core will ship in this release. With this functionality, you can elect to have major releases of the WordPress software update in the background with no additional fuss for your users. </p>\n\n\n\n<h3><strong>Increased support for PHP 8</strong></h3>\n\n\n\n<p>The next major version release of PHP, 8.0.0, is scheduled for release just a few days prior to WordPress 5.6. The WordPress project has a long history of being compatible with new versions of PHP as soon as possible, and this release is no different.</p>\n\n\n\n<p>Because PHP 8 is a major version release, changes that break backward compatibility or compatibility for various APIs are allowed. Contributors have been hard at work <a href=\"https://make.wordpress.org/core/2020/10/06/call-for-testing-php-8-0/\">fixing the known incompatibilities with PHP 8</a> in WordPress during the 5.6 release cycle.</p>\n\n\n\n<p>While all of the detectable issues in WordPress can be fixed, you will need to verify that all of your plugins and themes are also compatible with PHP 8 prior to upgrading. Keep an eye on the <a href=\"https://make.wordpress.org/core/\">Making WordPress Core blog</a> in the coming weeks for more detailed information about what to look for.</p>\n\n\n\n<h3>Application Passwords for REST API Authentication</h3>\n\n\n\n<p>Since the REST API was merged into Core, only cookie &amp; nonce based authentication has been available (without the use of a plugin). This authentication method can be a frustrating experience for developers, often limiting how applications can interact with protected endpoints.</p>\n\n\n\n<p>With the introduction of <a href=\"https://make.wordpress.org/core/2020/09/23/proposal-rest-api-authentication-application-passwords/\">Application Password</a> in WordPress 5.6, gone is this frustration and the need to jump through hoops to re-authenticate when cookies expire. But don&#8217;t worry, cookie and nonce authentication will remain in WordPress as-is if you&#8217;re not ready to change.</p>\n\n\n\n<p>Application Passwords are user specific, making it easy to grant or revoke access to specific users or applications (individually or wholesale). Because information like &#8220;Last Used&#8221; is logged, it&#8217;s also easy to track down inactive credentials or bad actors from unexpected locations.</p>\n\n\n\n<h3><strong>Better accessibility</strong></h3>\n\n\n\n<p>With every release, WordPress works hard to improve accessibility. Version 5.6 is no exception and will ship with a number of accessibility fixes and enhancements. Take a look:</p>\n\n\n\n<ul><li>Announce block selection changes manually on windows.</li><li>Avoid focusing the block selection button on each render.</li><li>Avoid rendering the clipboard textarea inside the button</li><li>Fix dropdown menu focus loss when using arrow keys with Safari and Voiceover</li><li>Fix dragging multiple blocks downwards, which resulted in blocks inserted in wrong position.</li><li>Fix incorrect aria description in the Block List View.</li><li>Add arrow navigation in Preview menu.</li><li>Prevent links from being focusable inside the Disabled component.</li></ul>\n\n\n\n<h2><strong>How You Can Help</strong></h2>\n\n\n\n<p>Keep your eyes on the&nbsp;<a href=\"https://make.wordpress.org/core/\">Make WordPress Core blog</a>&nbsp;for&nbsp;<a href=\"https://make.wordpress.org/core/tag/5-6+dev-notes/\">5.6-related developer notes</a>&nbsp;in the coming weeks, breaking down these and other changes in greater detail.</p>\n\n\n\n<p>So far, contributors have fixed&nbsp;<a href=\"https://core.trac.wordpress.org/query?status=closed&amp;milestone=5.6&amp;group=component&amp;max=500&amp;col=id&amp;col=summary&amp;col=owner&amp;col=type&amp;col=priority&amp;col=component&amp;col=version&amp;order=priority\">188 tickets in WordPress 5.6</a>, including&nbsp;<a href=\"https://core.trac.wordpress.org/query?status=closed&amp;status=reopened&amp;type=enhancement&amp;milestone=5.6&amp;or&amp;status=closed&amp;status=reopened&amp;type=feature+request&amp;milestone=5.6&amp;col=id&amp;col=summary&amp;col=type&amp;col=status&amp;col=milestone&amp;col=owner&amp;col=priority&amp;col=changetime&amp;col=keywords&amp;order=changetime\">82 new features and enhancements</a>, and more bug fixes are on the way.</p>\n\n\n\n<h3>Do some testing!</h3>\n\n\n\n<p>Testing for bugs is an important part of polishing the release during the beta stage and a great way to contribute.</p>\n\n\n\n<p>If you think you’ve found a bug, please post to the&nbsp;<a href=\"https://wordpress.org/support/forum/alphabeta/\">Alpha/Beta area</a>&nbsp;in the support forums. We would love to hear from you! If you’re comfortable writing a reproducible bug report,&nbsp;<a href=\"https://core.trac.wordpress.org/newticket\">file one on WordPress Trac</a>. That’s also where you can find a list of&nbsp;<a href=\"https://core.trac.wordpress.org/tickets/major\">known bugs</a>.</p>\n\n\n\n<p><span><i>Props to&nbsp;</i><a style=\"font-style: italic\" href=\"https://profiles.wordpress.org/webcommsat/\">@webcommsat</a><i>,&nbsp;</i><a style=\"font-style: italic\" href=\"https://profiles.wordpress.org/yvettesonneveld/\">@yvettesonneveld</a><i>,&nbsp;</i><a style=\"font-style: italic\" href=\"https://profiles.wordpress.org/estelaris/\">@estelaris</a><i>, </i><a style=\"font-style: italic\" href=\"https://profiles.wordpress.org/cguntur/\">@cguntur</a><i>, <em><a href=\"https://profiles.wordpress.org/desrosj/\">@desrosj</a></em>, and&nbsp;</i><a style=\"font-style: italic\" href=\"https://profiles.wordpress.org/marybaum/\">@marybaum</a><i>&nbsp;for </i><em style=\"font-style: italic\">editing/proof reading</em></span><em> this post, and&nbsp;<a href=\"https://profiles.wordpress.org/davidbaumwald/\">@davidbaumwald</a>&nbsp;for final review.</em></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"9085\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:5;a:6:{s:4:\"data\";s:57:\"\n		\n		\n		\n		\n		\n				\n		\n\n					\n										\n					\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:38:\"The Month in WordPress: September 2020\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:73:\"https://wordpress.org/news/2020/10/the-month-in-wordpress-september-2020/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 02 Oct 2020 09:34:04 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:18:\"Month in WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=9026\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:363:\"This month was characterized by some exciting announcements from the WordPress core team! Read on to catch up with all the WordPress news and updates from September.&#160; WordPress 5.5.1 Launch On September 1, the&#160; Core team released WordPress 5.5.1. This maintenance release included several bug fixes for both core and the editor, and many other [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Hari Shanker R\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:8713:\"\n<p>This month was characterized by some exciting announcements from the WordPress core team! Read on to catch up with all the WordPress news and updates from September.&nbsp;</p>\n\n\n\n<hr class=\"wp-block-separator\" />\n\n\n\n<h2>WordPress 5.5.1 Launch</h2>\n\n\n\n<p>On September 1, the&nbsp; Core team released <a href=\"https://wordpress.org/news/2020/09/wordpress-5-5-1-maintenance-release/\">WordPress 5.5.1</a>. This maintenance release included several bug fixes for both core and the editor, and many other enhancements. You can update to the latest version directly from your WordPress dashboard or <a href=\"https://wordpress.org/download/\">download</a> it directly from WordPress.org. The next major release will be <a href=\"https://make.wordpress.org/core/5-6/\">version 5.6</a>.</p>\n\n\n\n<p>Want to be involved in the next release?&nbsp; You can help to build WordPress Core by following<a href=\"https://make.wordpress.org/core/\"> the Core team blog</a>, and joining the #core channel in <a href=\"https://make.wordpress.org/chat/\">the Making WordPress Slack group</a>.</p>\n\n\n\n<h2>Gutenberg 9.1, 9.0, and 8.9 are out</h2>\n\n\n\n<p>The core team launched <a href=\"https://make.wordpress.org/core/2020/09/16/whats-new-in-gutenberg-16-september/\">version 9.0</a> of the Gutenberg plugin on September 16, and <a href=\"https://make.wordpress.org/core/2020/10/01/whats-new-in-gutenberg-30-september/\">version 9.1</a> on September 30. <a href=\"https://make.wordpress.org/core/2020/09/16/whats-new-in-gutenberg-16-september/\">Version 9.0</a> features some useful enhancements — like a new look for the navigation screen (with drag and drop support in the list view) and modifications to the query block (including search, filtering by author, and support for tags). <a href=\"https://make.wordpress.org/core/2020/10/01/whats-new-in-gutenberg-30-september/\">Version 9.1</a> adds improvements to global styles, along with improvements for the UI and several blocks. <a href=\"https://make.wordpress.org/core/2020/09/03/whats-new-in-gutenberg-2-september/\">Version 8.9</a> of Gutenberg, which came out earlier in September, enables the block-based widgets feature (also known as block areas, and was previously available in the experiments section) by default — replacing the default WordPress widgets to the plugin. You can find out more about the Gutenberg roadmap in the <a href=\"https://make.wordpress.org/core/2020/09/03/whats-next-in-gutenberg-september/\">What’s next in Gutenberg blog post</a>.</p>\n\n\n\n<p>Want to get involved in building Gutenberg? Follow <a href=\"https://make.wordpress.org/core/\">the Core team blog</a>, contribute to <a href=\"https://github.com/WordPress/gutenberg/\">Gutenberg on GitHub</a>, and join the #core-editor channel in <a href=\"https://make.wordpress.org/chat/\">the Making WordPress Slack group</a>.</p>\n\n\n\n<h2>Twenty Twenty One is the WordPress 5.6 default theme</h2>\n\n\n\n<p><a href=\"https://make.wordpress.org/core/2020/09/23/introducing-twenty-twenty-one/\">Twenty Twenty One</a>, the brand new default theme for <a href=\"https://make.wordpress.org/core/5-6/\">WordPress 5.6</a>, has been announced! Twenty Twenty One is designed to be a blank canvas for the block editor, and will adopt a straightforward, yet refined, design. The theme has a limited color palette: a pastel green background color, two shades of dark grey for text, and a native set of system fonts. Twenty Twenty One will use a modified version of the <a href=\"https://wordpress.org/themes/seedlet/\">Seedlet theme</a> as its base. It will have a comprehensive system of nested CSS variables to make child theming easier, a native support for global styles, and full site editing.&nbsp;</p>\n\n\n\n<p>Follow the <a href=\"https://make.wordpress.org/core/\">Make/Core</a> blog if you wish to contribute to Twenty Twenty One. There will be weekly meetings every Monday at 15:00 UTC and triage sessions every Friday at 15:00 UTC in the #core-themes Slack channel. Theme development will happen <a href=\"https://github.com/wordpress/twentytwentyone.\">on GitHub</a>. </p>\n\n\n\n<hr class=\"wp-block-separator\" />\n\n\n\n<h2>Further Reading:</h2>\n\n\n\n<ul><li>WordPress plugin authors can now <a href=\"https://meta.trac.wordpress.org/changeset/10255\">opt into confirming plugin updates via email</a>. This feature will allow plugin authors to approve any plugin updates over email before release.</li><li>September was the busiest month for online WordCamps so far, with seven events taking place: <a href=\"https://ogijima.wordcamp.org/2020/\">WordCamp Ogijima Online</a>, <a href=\"https://colombia.wordcamp.org/2020/\">WordCamp Colombia Online</a>, <a href=\"https://2020.asheville.wordcamp.org/2020/\">WordCamp Asheville, NC USA</a>, <a href=\"https://saopaulo.wordcamp.org/2020/\">WordCamp São Paulo, Brazil</a>, <a href=\"https://2020.virginiabeach.wordcamp.org/\">WordCamp Virginia Beach</a>, <a href=\"https://2020.lima.wordcamp.org/\">WordCamp Lima Peru</a>, and <a href=\"https://philadelphia.wordcamp.org/2020/\">WordCamp Philadelphia, PA, USA</a>. You can find live stream recaps of these events on their websites. The camps are also in the process of uploading their videos to <a href=\"https://wordpress.tv/\">WordPress.tv</a>. Check out the <a href=\"https://central.wordcamp.org/schedule/\">WordCamp Schedule</a> to follow upcoming online WordCamps!</li><li>The Themes team has added a <a href=\"https://meta.trac.wordpress.org/changeset/10240\">delist feature</a> to the themes directory. The feature will allow a theme to be temporarily hidden from search, while still making it available. The team may delist themes if they violate the <a href=\"https://make.wordpress.org/themes/handbook/review/required/\">Theme Directory guidelines</a>. </li><li>The Themes Team has also released its <a href=\"https://make.wordpress.org/themes/2020/09/25/new-package-to-allow-locally-hosting-webfonts/\">new web fonts Loader project</a>. The webfonts loader will allow theme developers to load web fonts from the user’s site, rather than through a third-party CDN. The project lives in the team’s <a href=\"https://github.com/WPTT/webfont-loader\">GitHub repository</a>.</li><li>The Support team is discussing<a href=\"https://make.wordpress.org/support/2020/09/talking-point-allowing-self-archival-of-topics/\"> the level of control users should have</a> over their support forum topics. The team is thinking of allowing users to archive their topics and lengthen time-to-edit to remove any semi-sensitive data. In a separate, but related, post, Support team members have started discussing <a href=\"https://make.wordpress.org/support/2020/09/talking-point-handling-support-for-commercial-users-on-the-wordpress-forums/\">how to curb support requests for commercial products</a>.</li><li>The Mobile team <a href=\"https://make.wordpress.org/core/2020/09/21/proposal-dual-licensing-gutenberg-under-gpl-v2-0-and-mpl-v2-0/\">came up with a proposal for dual licensing Gutenberg</a> under GPL 2.0 and MPL (Mozilla Public License) 2.0, so that non-WordPress software developers can potentially use it for their projects.  </li><li>Since Facebook and Instagram are deprecating oEmbeds, the Core Team <a href=\"https://make.wordpress.org/core/2020/09/22/facebook-and-instagram-embeds-to-be-deprecated-october-24th/\">will be removing Facebook and Instagram’s oEmbed endpoints</a> from WordPress core code. </li><li>Following extensive discussion, the Documentation team <a href=\"https://make.wordpress.org/docs/2020/09/14/external-linking-policy-meeting-notes-august-25th/\">has tentatively decided to allow external and commercial links in the WordPress documentation</a>. The team aims to publish a formal proposal that will be left open for feedback before finalizing it.</li><li>Members of the Polyglots and Marketing teams are celebrating the <a href=\"https://make.wordpress.org/polyglots/2020/09/09/lets-celebrate-international-translation-day-together/\">International Translation Day</a> for WordPress over the week of September 28 &#8211; October 4! Community members can join or organize translation events, or contribute to WordPress core, theme, or plugin translations during this period. </li><li><a href=\"https://wpaccessibilityday.org/\">WP Accessibility day</a> — a 24-hour global online event dedicated to addressing website accessibility in WordPress, is being held on October 2. The event is open for all and has <a href=\"https://wpaccessibilityday.org/#talk-time\">experts from all over the world as speakers</a>.</li></ul>\n\n\n\n<p><em>Have a story that we should include in the next “Month in WordPress” post? Please </em><a href=\"https://make.wordpress.org/community/month-in-wordpress-submissions/\"><em>submit it here</em></a><em>.</em></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"9026\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:6;a:6:{s:4:\"data\";s:57:\"\n		\n		\n		\n		\n		\n				\n		\n\n					\n										\n					\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:35:\"WordPress 5.5.1 Maintenance Release\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:71:\"https://wordpress.org/news/2020/09/wordpress-5-5-1-maintenance-release/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 01 Sep 2020 19:13:53 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=8979\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:460:\"WordPress 5.5.1 is now available! This maintenance release features&#160;34 bug fixes, 5 enhancements, and&#160;5 bug fixes&#160;for the&#160;block&#160;editor. These bugs affect WordPress version 5.5, so you’ll want to upgrade. You can download WordPress 5.5.1 directly, or visit the&#160;Dashboard → Updates screen&#160;and click&#160;Update Now. If your sites support automatic background updates, they’ve already started the update process. [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"Jb Audras\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:9025:\"\n<p>WordPress 5.5.1 is now available!</p>\n\n\n\n<p>This maintenance release features&nbsp;<a rel=\"noreferrer noopener\" href=\"https://core.trac.wordpress.org/query?status=closed&amp;milestone=5.5.1&amp;group=status&amp;col=id&amp;col=summary&amp;col=milestone&amp;col=owner&amp;col=type&amp;col=status&amp;col=priority&amp;order=priority\" target=\"_blank\">34 bug fixes, 5 enhancements</a>, and&nbsp;<a rel=\"noreferrer noopener\" href=\"https://github.com/WordPress/gutenberg/pull/24828\" target=\"_blank\">5 bug fixes</a>&nbsp;for the&nbsp;block&nbsp;editor. These bugs affect WordPress version 5.5, so you’ll want to upgrade.</p>\n\n\n\n<p>You can <a href=\"https://wordpress.org/wordpress-5.5.1.zip\">download WordPress 5.5.1 directly</a>, or visit the<strong>&nbsp;Dashboard → Updates</strong> screen&nbsp;and click&nbsp;<strong>Update Now</strong>. If your sites support automatic background updates, they’ve already started the update process.</p>\n\n\n\n<p>WordPress 5.5.1 is a short-cycle maintenance release. The next major release will be&nbsp;<a href=\"https://make.wordpress.org/core/5-6/\">version 5.6</a>.</p>\n\n\n\n<p>To see a full list of changes, you can browse the&nbsp;<a href=\"https://core.trac.wordpress.org/query?status=closed&amp;milestone=5.5.1&amp;group=component&amp;col=id&amp;col=summary&amp;col=owner&amp;col=type&amp;col=priority&amp;col=component&amp;col=version&amp;order=priority\">list on Trac</a>, read the <a href=\"https://make.wordpress.org/core/2020/08/27/wordpress-5-5-1-rc1/\">5.5.1 RC1</a> and <a href=\"https://make.wordpress.org/core/2020/08/31/wordpress-5-5-1-rc2/\">5.5.1 RC2</a> posts, or visit the <a href=\"https://wordpress.org/support/wordpress-version/version-5-5-1/\">5.5.1 documentation page</a>.</p>\n\n\n\n<h2>Thanks and props!</h2>\n\n\n\n<p>The 5.5.1 release was led by <a href=\'https://profiles.wordpress.org/audrasjb/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>audrasjb</a>, <a href=\'https://profiles.wordpress.org/azhiyadev/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>azhiyadev</a>, <a href=\'https://profiles.wordpress.org/davidbaumwald/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>davidbaumwald</a>, <a href=\'https://profiles.wordpress.org/desrosj/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>desrosj</a>, <a href=\'https://profiles.wordpress.org/johnbillion/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>johnbillion</a>, <a href=\'https://profiles.wordpress.org/planningwrite/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>planningwrite</a>, <a href=\'https://profiles.wordpress.org/sergeybiryukov/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>sergeybiryukov</a>, and <a href=\'https://profiles.wordpress.org/whyisjake/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>whyisjake</a>.</p>\n\n\n\n<p>Thank you to everyone who helped make WordPress 5.5.1 happen:</p>\n\n\n\n<a href=\"https://profiles.wordpress.org/wpamitkumar/\">Amit Dudhat</a>, <a href=\"https://profiles.wordpress.org/afercia/\">Andrea Fercia</a>, <a href=\"https://profiles.wordpress.org/rarst/\">Andrey &#8220;Rarst&#8221; Savchenko</a>, <a href=\"https://profiles.wordpress.org/afragen/\">Andy Fragen</a>, <a href=\"https://profiles.wordpress.org/akissz/\">Angel Hess</a>, <a href=\"https://profiles.wordpress.org/avixansa/\">avixansa</a>, <a href=\"https://profiles.wordpress.org/bobbingwide/\">bobbingwide</a>, <a href=\"https://profiles.wordpress.org/brianhogg/\">Brian Hogg</a>, <a href=\"https://profiles.wordpress.org/chunkysteveo/\">chunkysteveo</a>, <a href=\"https://profiles.wordpress.org/claytoncollie/\">Clayton Collie</a>, <a href=\"https://profiles.wordpress.org/davidbaumwald/\">David Baumwald</a>, <a href=\"https://profiles.wordpress.org/dlh/\">David Herrera</a>, <a href=\"https://profiles.wordpress.org/dd32/\">dd32</a>, <a href=\"https://profiles.wordpress.org/demetris/\">demetris</a>, <a href=\"https://profiles.wordpress.org/ocean90/\">Dominik Schilling</a>, <a href=\"https://profiles.wordpress.org/dushakov/\">dushakov</a>, <a href=\"https://profiles.wordpress.org/elrae/\">Earle Davies</a>, <a href=\"https://profiles.wordpress.org/nrqsnchz/\">Enrique Sánchez</a>, <a href=\"https://profiles.wordpress.org/fjarrett/\">Frankie Jarrett</a>, <a href=\"https://profiles.wordpress.org/fullofcaffeine/\">fullofcaffeine</a>, <a href=\"https://profiles.wordpress.org/garrett-eclipse/\">Garrett Hyder</a>, <a href=\"https://profiles.wordpress.org/garyj/\">Gary Jones</a>, <a href=\"https://profiles.wordpress.org/gchtr/\">gchtr</a>, <a href=\"https://profiles.wordpress.org/azhiyadev/\">Hauwa</a>, <a href=\"https://profiles.wordpress.org/herregroen/\">Herre Groen</a>, <a href=\"https://profiles.wordpress.org/howdy_mcgee/\">Howdy_McGee</a>, <a href=\"https://profiles.wordpress.org/ipstenu/\">Ipstenu (Mika Epstein)</a>, <a href=\"https://profiles.wordpress.org/audrasjb/\">Jb Audras</a>, <a href=\"https://profiles.wordpress.org/jeremyfelt/\">Jeremy Felt</a>, <a href=\"https://profiles.wordpress.org/jeroenrotty/\">Jeroen Rotty</a>, <a href=\"https://profiles.wordpress.org/joen/\">Joen A.</a>, <a href=\"https://profiles.wordpress.org/johannadevos/\">Johanna de Vos</a>, <a href=\"https://profiles.wordpress.org/johnbillion/\">John Blackbourn</a>, <a href=\"https://profiles.wordpress.org/johnjamesjacoby/\">John James Jacoby</a>, <a href=\"https://profiles.wordpress.org/psykro/\">Jonathan Bossenger</a>, <a href=\"https://profiles.wordpress.org/desrosj/\">Jonathan Desrosiers</a>, <a href=\"https://profiles.wordpress.org/jonathanstegall/\">Jonathan Stegall</a>, <a href=\"https://profiles.wordpress.org/joostdevalk/\">Joost de Valk</a>, <a href=\"https://profiles.wordpress.org/jorgefilipecosta/\">Jorge Costa</a>, <a href=\"https://profiles.wordpress.org/justinahinon/\">Justin Ahinon</a>, <a href=\"https://profiles.wordpress.org/akabarikalpesh/\">Kalpesh Akabari</a>, <a href=\"https://profiles.wordpress.org/khag7/\">Kevin Hagerty</a>, <a href=\"https://profiles.wordpress.org/knutsp/\">Knut Sparhell</a>, <a href=\"https://profiles.wordpress.org/kbjohnson90/\">Kyle B. Johnson</a>, <a href=\"https://profiles.wordpress.org/landau/\">landau</a>, <a href=\"https://profiles.wordpress.org/laxman-prajapati/\">Laxman Prajapati</a>, <a href=\"https://profiles.wordpress.org/gamerz/\">Lester Chan</a>, <a href=\"https://profiles.wordpress.org/mailnew2ster/\">mailnew2ster</a>, <a href=\"https://profiles.wordpress.org/clorith/\">Marius L. J.</a>, <a href=\"https://profiles.wordpress.org/markjaquith/\">Mark Jaquith</a>, <a href=\"https://profiles.wordpress.org/mapk/\">Mark Uraine</a>, <a href=\"https://profiles.wordpress.org/gothickgothickorguk/\">Matt Gibson</a>, <a href=\"https://profiles.wordpress.org/tw2113/\">Michael Beckwith</a>, <a href=\"https://profiles.wordpress.org/mikeyarce/\">Mikey Arce</a>, <a href=\"https://profiles.wordpress.org/batmoo/\">Mohammad Jangda</a>, <a href=\"https://profiles.wordpress.org/mukesh27/\">Mukesh Panchal</a>, <a href=\"https://profiles.wordpress.org/nabilmoqbel/\">Nabil Moqbel</a>, <a href=\"https://profiles.wordpress.org/krstarica/\">net</a>, <a href=\"https://profiles.wordpress.org/oakesjosh/\">oakesjosh</a>, <a href=\"https://profiles.wordpress.org/nosolosw/\">O André</a>, <a href=\"https://profiles.wordpress.org/omarreiss/\">Omar Reiss</a>, <a href=\"https://profiles.wordpress.org/ov3rfly/\">Ov3rfly</a>, <a href=\"https://profiles.wordpress.org/paddy/\">Paddy</a>, <a href=\"https://profiles.wordpress.org/casiepa/\">Pascal Casier</a>, <a href=\"https://profiles.wordpress.org/pbiron/\">Paul Biron</a>, <a href=\"https://profiles.wordpress.org/peterwilsoncc/\">Peter Wilson</a>, <a href=\"https://profiles.wordpress.org/rajeshsingh520/\">rajeshsingh520</a>, <a href=\"https://profiles.wordpress.org/ramiy/\">Rami Yushuvaev</a>, <a href=\"https://profiles.wordpress.org/rebasaurus/\">rebasaurus</a>, <a href=\"https://profiles.wordpress.org/riaanlom/\">riaanlom</a>, <a href=\"https://profiles.wordpress.org/youknowriad/\">Riad Benguella</a>, <a href=\"https://profiles.wordpress.org/kreppar/\">Rodrigo Arias</a>, <a href=\"https://profiles.wordpress.org/rtagliento/\">rtagliento</a>, <a href=\"https://profiles.wordpress.org/salvoaranzulla/\">salvoaranzulla</a>, <a href=\"https://profiles.wordpress.org/sanzeeb3/\">Sanjeev Aryal</a>, <a href=\"https://profiles.wordpress.org/sarahricker/\">sarahricker</a>, <a href=\"https://profiles.wordpress.org/sergeybiryukov/\">Sergey Biryukov</a>, <a href=\"https://profiles.wordpress.org/sabernhardt/\">Stephen Bernhardt</a>, <a href=\"https://profiles.wordpress.org/sterndata/\">Steven Stern (sterndata)</a>, <a href=\"https://profiles.wordpress.org/webzunft/\">Thomas M</a>, <a href=\"https://profiles.wordpress.org/timothyblynjacobs/\">Timothy Jacobs</a>, <a href=\"https://profiles.wordpress.org/tobiasbg/\">TobiasBg</a>, <a href=\"https://profiles.wordpress.org/tobifjellner/\">tobifjellner (Tor-Bjorn Fjellner)</a>, <a href=\"https://profiles.wordpress.org/twentyzerotwo/\">TwentyZeroTwo</a>, <a href=\"https://profiles.wordpress.org/planningwrite/\">Winstina</a>, <a href=\"https://profiles.wordpress.org/wittich/\">wittich</a>, and <a href=\"https://profiles.wordpress.org/yoavf/\">Yoav Farhi</a>.\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"8979\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:7;a:6:{s:4:\"data\";s:57:\"\n		\n		\n		\n		\n		\n				\n		\n\n					\n										\n					\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:35:\"The Month in WordPress: August 2020\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:70:\"https://wordpress.org/news/2020/09/the-month-in-wordpress-august-2020/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 01 Sep 2020 09:32:47 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:18:\"Month in WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=8983\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:362:\"August was special for WordPress lovers, as one of the most anticipated releases, WordPress 5.5, was launched. The month also saw several updates from various contributor teams, including the soft-launch of the Learn WordPress project and updates to Gutenberg. Read on to find out about the latest updates from the WordPress world. WordPress 5.5 Launch [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Hari Shanker R\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:9605:\"\n<p>August was special for WordPress lovers, as one of the most anticipated releases, WordPress 5.5, was launched. The month also saw several updates from various contributor teams, including the soft-launch of the Learn WordPress project and updates to Gutenberg. Read on to find out about the latest updates from the WordPress world.</p>\n\n\n\n<hr class=\"wp-block-separator\" />\n\n\n\n<h2>WordPress 5.5 Launch</h2>\n\n\n\n<p>The team launched <a href=\"https://wordpress.org/news/2020/08/eckstine/\">WordPress 5.5</a> on August 11. The major release comes with a host of features like automatic updates for plugins and themes, enabling updates over uploaded ZIP files, a block directory, XML sitemaps, block patterns, inline image editing, and lazy-loading images, to name a few. WordPress 5.5 is now available in 50 languages too! You can update to the latest version directly from your WordPress dashboard or <a href=\"https://wordpress.org/download/\">download</a> it directly from WordPress.org. Subsequent to the 5.5 release, the <a href=\"https://make.wordpress.org/core/2020/08/27/wordpress-5-5-1-rc1/\">5.5.1 release candidate</a> came out on August 28, which will be followed by its official launch of the minor release on September 1.</p>\n\n\n\n<p>A record 805 people contributed to WordPress 5.5, hailing from 58 different countries. <a href=\'https://profiles.wordpress.org/audrasjb/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>audrasjb</a> has <a href=\"https://jeanbaptisteaudras.com/en/2020/08/wordpress-5-5-core-stats-contributions-by-country-company/\">compiled many more stats like that</a> and they’re well worth a read!</p>\n\n\n\n<p>Want to get involved in building WordPress Core? Follow<a href=\"https://make.wordpress.org/core/\"> the Core team blog</a>, and join the #core channel in <a href=\"https://make.wordpress.org/chat/\">the Making WordPress Slack group</a>.</p>\n\n\n\n<h2>Gutenberg 8.7 and 8.8</h2>\n\n\n\n<p>The core team launched Gutenberg <a href=\"https://make.wordpress.org/core/2020/08/05/whats-new-in-gutenberg-august-5/\">8.7</a> and <a href=\"https://make.wordpress.org/core/2020/08/19/whats-new-in-gutenberg-august-19/\">8.8</a>. Version 8.7 saw many improvements to the Post Block suite, along with other changes like adding a block example to the Buttons block, consistently autosaving edits, and updating the group block description. Version 8.8 offers updates to Global Styles, the Post Block suite, and Template management. The release significantly improves the back-compatibility of the new Widget Screen, and also includes other important accessibility and mobile improvements to user interfaces like the Toolbar, navigation menus, and Popovers. For full details on the latest versions of these Gutenberg releases, visit these posts about <a href=\"https://make.wordpress.org/core/2020/08/05/whats-new-in-gutenberg-august-5/\">8.7</a> and <a href=\"https://make.wordpress.org/core/2020/08/19/whats-new-in-gutenberg-august-19/\">8.8</a>.</p>\n\n\n\n<p>Want to get involved in building Gutenberg? Follow <a href=\"https://make.wordpress.org/core/\">the Core team blog</a>, contribute to <a href=\"https://github.com/WordPress/gutenberg/\">Gutenberg on GitHub</a>, and join the #core-editor channel in <a href=\"https://make.wordpress.org/chat/\">the Making WordPress Slack group</a>.</p>\n\n\n\n<h2>Check out the brand new Learn WordPress platform!</h2>\n\n\n\n<p><a href=\"https://learn.wordpress.org/\">Learn WordPress</a> is a brand new cross-team initiative led by the <a href=\"https://make.wordpress.org/community/\">WordPress Community team</a>, with support from the <a href=\"https://make.wordpress.org/training/\">training team</a>, the <a href=\"https://make.wordpress.org/tv/\">TV team</a>, and the <a href=\"https://make.wordpress.org/meta/\">meta team</a>. This platform is a learning repository on <a href=\"https://learn.wordpress.org/\">learn.wordpress.org</a>, where WordPress learning content will be made available. Video workshops published on the site will be followed up by supplementary discussion groups based on workshop content. The first of these discussion groups have been scheduled, and you can join an upcoming discussion <a href=\"https://www.meetup.com/learn-wordpress-discussions/events/\">on the dedicated meetup group</a>. The community team invites members to contribute to the project. You can apply to <a href=\"https://wordcampcentral.survey.fm/learn-wordpress-workshop-application\">present a workshop</a>, <a href=\"https://wordcampcentral.survey.fm/learn-wordpress-reviewer-application\">assist with reviewing</a> submitted workshops, and <a href=\"https://docs.google.com/spreadsheets/d/1A6BYIZAtqk3alBFtJBg-7Q7Y7NBLRnoRFbRTGho2rfI/edit\">add ideas for workshops</a> that you would like to see on the site. You can also apply<a href=\"https://wordcampcentral.survey.fm/learn-wordpress-discussion-group-leader-application\"> to be a discussion group leader</a> to organize discussions directly through the <a href=\"https://learn.wordpress.org\">learn.wordpress.org</a> platform. We are also creating a dedicated Learn WordPress working group and have <a href=\"https://make.wordpress.org/community/2020/08/24/learn-wordpress-working-group-call-for-volunteers/\">posted a call for volunteers</a>. Meetup organizers can use <a href=\"https://learn.wordpress.org/\">Learn WordPress</a> content for their meetup events (without applying as a discussion group leader). Simply ask your meetup group to watch one of the workshops in the weeks leading up to your scheduled event, and then host a discussion group for that content as your event.</p>\n\n\n\n<p>Want to get involved with the Community team? <a href=\"https://make.wordpress.org/community/\">Follow the Community blog</a>, or join them in the #community-events channel in <a href=\"https://make.wordpress.org/chat/\">the Making WordPress Slack group</a>. To organize a local WordPress community event, <a href=\"https://make.wordpress.org/community/handbook/virtual-events/welcome/applying-for-a-virtual-event/\">visit the handbook page</a>. </p>\n\n\n\n<hr class=\"wp-block-separator\" />\n\n\n\n<h2>Further Reading:</h2>\n\n\n\n<ul><li>As <a href=\"https://make.wordpress.org/core/2020/03/11/all-women-release-squad/\">proposed previously</a>, WordPress 5.6 will have an all-women release squad. The team has <a href=\"https://make.wordpress.org/core/2020/08/13/wordpress-5-6-release-planning/\">started work on the 5.6 release planning</a>.</li><li>The community team has decided to <a href=\"https://make.wordpress.org/community/2020/08/04/announcement-flagship-events-in-2021/\">cancel in-person flagship WordPress events</a> in 2021. While new applications for flagship events in 2021 will not be accepted, organizers of existing flagship events (such as WordCamp US, Europe, and Asia) will have the option to move their event online. </li><li>The core team is working on <a href=\"https://core.trac.wordpress.org/ticket/37110\">updating the jQuery version</a> that comes with WordPress. As the first step, the <a href=\"https://make.wordpress.org/core/2020/06/29/updating-jquery-version-shipped-with-wordpress/\">team removed the jQuery Migrate 1.4.1 script </a>from WordPress 5.5. Those who wish to use jQuery migrate for maintaining plugin compatibility can install the <a href=\"https://wordpress.org/plugins/enable-jquery-migrate-helper/\">Enable jQuery Migrate Helper plugin</a>, which has currently reached the 100k installs mark. </li><li>The WordPress documentation team is continuing its discussion on modifying the external linking policy. The conversation is taking place on a <a href=\"https://docs.google.com/document/d/1i0ipOTmKPShSIMoFuEXnI3gkOOUrPJb9t4HMf30JWC0/edit#heading=h.l0cppyl5zvhs\">shared Google doc</a>. Feel free to add comments if you have any thoughts on the topic. </li><li>WordPress will <a href=\"https://core.trac.wordpress.org/ticket/51043#comment:7\">not drop support for PHP 5.6</a>, as initially decided, in order to maintain better version compatibility. The team has additionally come up with a <a href=\"https://make.wordpress.org/core/2020/08/24/proposal-dropping-support-for-old-php-versions-via-a-fixed-schedule/\">proposal to drop support for old PHP versions via a fixed schedule</a>.</li><li>The maiden edition of <a href=\"https://doaction.org/event/india-2020\">do_action India online</a> was held from August 15 to 23. The event, which was held online with collaboration tools, had 94 participants who built fully functional websites for five NGOs from across the country. You can read more about 2020 do_action events <a href=\"https://wordpressfoundation.org/2020/charity-hackathons-august-2020-report/\">on the WordPress Foundation blog</a>.</li><li>The Accessibility team has <a href=\"https://make.wordpress.org/accessibility/2020/08/25/accessibility-teams-goals-for-wordpress-5-6-and-beyond/\">published their goals for WordPress 5.6 and beyond</a> and has started working on them.</li><li><a href=\"https://minneapolis.wordcamp.org/2020/\">WordCamp Minneapolis/St. Paul</a> was held successfully on August 21. The event, which sold over 1400 tickets, had 18 speakers and 12 sponsors.</li><li>The Polyglots team has completed the translation <a href=\"https://make.wordpress.org/polyglots/2020/08/19/polyglots-handbook-reorganization-update/\">handbook structure organization</a>. The handbook now has clear guides for translators, PTEs/GTEs, global mentors, and Plugin/Theme authors.</li></ul>\n\n\n\n<p><em>Have a story that we should include in the next “Month in WordPress” post? Please </em><a href=\"https://make.wordpress.org/community/month-in-wordpress-submissions/\"><em>submit it here</em></a><em>.</em></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"8983\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:8;a:6:{s:4:\"data\";s:63:\"\n		\n		\n		\n		\n		\n				\n		\n		\n\n					\n										\n					\n		\n		\n\n\n\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"WordPress 5.5 “Eckstine”\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:44:\"https://wordpress.org/news/2020/08/eckstine/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 11 Aug 2020 19:03:52 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:3:\"5.5\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=8799\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:354:\"Version 5.5 \"Eckstine\" of WordPress is available for download or update in your WordPress dashboard. With this release, your site gets new power in three major areas: \nspeed (lazy-loading images), search (sitemaps included by default), and security (auto-updates for plugins and themes), along with many new features and improvements to the block editor.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"enclosure\";a:3:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:3:\"url\";s:48:\"https://s.w.org/images/core/5.5/auto-updates.mp4\";s:6:\"length\";s:6:\"238264\";s:4:\"type\";s:9:\"video/mp4\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:3:\"url\";s:50:\"https://s.w.org/images/core/5.5/block-patterns.mp4\";s:6:\"length\";s:7:\"3518792\";s:4:\"type\";s:9:\"video/mp4\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:3:\"url\";s:56:\"https://s.w.org/images/core/5.5/inline-image-editing.mp4\";s:6:\"length\";s:7:\"3145140\";s:4:\"type\";s:9:\"video/mp4\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Matt Mullenweg\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:72272:\"\n<p>Here it is! Named “Eckstine” in honor of Billy Eckstine, this latest and greatest version of WordPress is available for&nbsp;<a href=\"https://wordpress.org/download/\">download</a> or update in your dashboard.</p>\n\n\n\n<figure class=\"wp-block-image size-large\"><img loading=\"lazy\" width=\"632\" height=\"514\" src=\"https://i0.wp.com/wordpress.org/news/files/2020/08/Billy_duotone-1000px_quiche-sans-top.png?resize=632%2C514&#038;ssl=1\" alt=\"\" class=\"wp-image-8930\" srcset=\"https://i0.wp.com/wordpress.org/news/files/2020/08/Billy_duotone-1000px_quiche-sans-top.png?w=1000&amp;ssl=1 1000w, https://i0.wp.com/wordpress.org/news/files/2020/08/Billy_duotone-1000px_quiche-sans-top.png?resize=300%2C244&amp;ssl=1 300w, https://i0.wp.com/wordpress.org/news/files/2020/08/Billy_duotone-1000px_quiche-sans-top.png?resize=768%2C625&amp;ssl=1 768w\" sizes=\"(max-width: 632px) 100vw, 632px\" data-recalc-dims=\"1\" /></figure>\n\n\n\n<div class=\"wp-block-cover has-background-dim\" style=\"background-color:#f2edd4;min-height:300px\"><div class=\"wp-block-cover__inner-container\">\n<p class=\"has-text-align-center has-black-color has-text-color has-background has-large-font-size\" style=\"background-color:#f2edd4\">Welcome to WordPress 5.5.</p>\n\n\n\n<h3 class=\"has-text-align-center has-black-color has-text-color\">In WordPress 5.5, your site gets new power in three major areas: <br>speed, search, and security.</h3>\n</div></div>\n\n\n\n<div class=\"wp-block-columns has-white-background-color has-background\">\n<div class=\"wp-block-column\" style=\"flex-basis:2%\"></div>\n\n\n\n<div class=\"wp-block-column\" style=\"flex-basis:96%\">\n<h2>Speed</h2>\n\n\n\n<p><strong>Posts and pages feel faster, thanks to lazy-loaded images.</strong></p>\n\n\n\n<p>Images give your story a lot of impact, but they can sometimes make your site seem slow.</p>\n\n\n\n<p>In WordPress 5.5, images wait to load until they’re just about to scroll into view. The technical term is ‘lazy loading.’</p>\n\n\n\n<p>On mobile, lazy loading can also keep browsers from loading files meant for other devices. That can save your readers money on data — and help preserve battery life.</p>\n\n\n\n<h2>Search</h2>\n\n\n\n<p><strong>Say hello to your new sitemap.</strong></p>\n\n\n\n<p>WordPress sites work well with search engines.</p>\n\n\n\n<p>Now, by default, WordPress 5.5 includes an XML sitemap that helps search engines discover your most important pages from the very minute you go live.</p>\n\n\n\n<p>So more people will find your site sooner, giving you more time to engage, retain and convert them to subscribers, customers or whatever fits your definition of success.</p>\n</div>\n\n\n\n<div class=\"wp-block-column\" style=\"flex-basis:2%\"></div>\n</div>\n\n\n\n<div class=\"wp-block-columns has-background\" style=\"background-color:#ebcd3d\">\n<div class=\"wp-block-column\" style=\"flex-basis:2%\"></div>\n\n\n\n<div class=\"wp-block-column\" style=\"flex-basis:96%\">\n<h2>Security</h2>\n\n\n\n<figure class=\"wp-block-video\"><video controls src=\"https://s.w.org/images/core/5.5/auto-updates.mp4\"></video><figcaption>Now you can choose to update plugins and themes automatically–or pick just a few–from the screens you’ve always used.</figcaption></figure>\n\n\n\n<p><strong>Auto-updates for Plugins and Themes</strong></p>\n\n\n\n<p>Now you can set plugins and themes to update automatically — or not! — in the WordPress admin. So you always know your site is running the latest code available.</p>\n\n\n\n<p>You can also turn auto-updates on or off for each plugin or theme you have installed — all on the same screens you’ve always used.</p>\n\n\n\n<p><strong>Update by uploading ZIP files</strong></p>\n\n\n\n<p>If updating plugins and themes manually is your thing, now that’s easier too — just upload a ZIP file.</p>\n</div>\n\n\n\n<div class=\"wp-block-column\" style=\"flex-basis:2%\"></div>\n</div>\n\n\n\n<div class=\"wp-block-columns has-background\" style=\"background-color:#f2edd4\">\n<div class=\"wp-block-column\" style=\"flex-basis:2%\"></div>\n\n\n\n<div class=\"wp-block-column\" style=\"flex-basis:96%\">\n<h2>Highlights from the block editor</h2>\n\n\n\n<p>Once again, the latest WordPress release packs a long list of exciting new features for the block editor. For example:</p>\n\n\n\n<figure class=\"wp-block-video\"><video controls src=\"https://s.w.org/images/core/5.5/block-patterns.mp4\"></video></figure>\n\n\n\n<div class=\"wp-block-columns\">\n<div class=\"wp-block-column\">\n<h3>Block patterns</h3>\n\n\n\n<p>New block patterns make it simple and fun to create complex, beautiful layouts, using combinations of text and media that you can mix and match to fit your story.</p>\n\n\n\n<p>You will also find block patterns in a wide variety of plugins and themes, with more added all the time. Pick any of them from a single place — just click and go!</p>\n</div>\n\n\n\n<div class=\"wp-block-column\">\n<h3>The new block directory</h3>\n\n\n\n<p>Now it’s easier than ever to find the block you need. The new block directory is built right into the block editor, so you can install new block types to your site without ever leaving the editor.</p>\n\n\n\n<h3>Inline image editing</h3>\n\n\n\n<p>Crop, rotate, and zoom your photos right from the image block. If you spend a lot of time on images, this could save you hours!</p>\n</div>\n</div>\n\n\n\n<figure class=\"wp-block-video\"><video controls src=\"https://s.w.org/images/core/5.5/inline-image-editing.mp4\"></video></figure>\n\n\n\n<h3>And so much more.</h3>\n\n\n\n<p>The highlights above are a tiny fraction of the new block editor features you’ve just installed. Open the block editor and enjoy!</p>\n</div>\n\n\n\n<div class=\"wp-block-column\" style=\"flex-basis:2%\"></div>\n</div>\n\n\n\n<div class=\"wp-block-columns has-white-background-color has-background\">\n<div class=\"wp-block-column\" style=\"flex-basis:2%\"></div>\n\n\n\n<div class=\"wp-block-column\" style=\"flex-basis:96%\">\n<h2>Accessibility</h2>\n\n\n\n<p>Every release adds improvements to the accessible publishing experience, and that remains true for WordPress 5.5.</p>\n\n\n\n<p>Now you can copy links in media screens and modal dialogs with a button, instead of trying to highlight a line of text.</p>\n\n\n\n<p>You can also move meta boxes with the keyboard, and edit images in WordPress with your assistive device, as it can read you the instructions in the image editor.</p>\n</div>\n\n\n\n<div class=\"wp-block-column\" style=\"flex-basis:2%\"></div>\n</div>\n\n\n\n<div class=\"wp-block-columns has-black-color has-text-color has-background\" style=\"background-color:#ebcd3d\">\n<div class=\"wp-block-column\" style=\"flex-basis:2%\"></div>\n\n\n\n<div class=\"wp-block-column\" style=\"flex-basis:96%\">\n<h2>For developers</h2>\n\n\n\n<p>5.5 also brings a big box of changes just for developers.</p>\n\n\n\n<div class=\"wp-block-columns\">\n<div class=\"wp-block-column\">\n<h3>Server-side registered blocks in the REST API</h3>\n\n\n\n<p>The addition of block types endpoints means that JavaScript apps (like the block editor) can retrieve definitions for any blocks registered on the server.</p>\n\n\n\n<h3>Defining environments</h3>\n\n\n\n<p>WordPress now has a standardized way to define a site’s environment type (staging, production, etc). Retrieve that type with&nbsp;<code>wp_get_environment_type()</code>&nbsp;and execute only the appropriate code.</p>\n\n\n\n<h3>Dashicons</h3>\n\n\n\n<p>The Dashicons library has received its final update in 5.5. It adds 39 block editor icons along with 26 others.</p>\n\n\n\n<h3>Passing data to template files</h3>\n\n\n\n<p>The template loading functions (<code>get_header()</code>,&nbsp;<code>get_template_part()</code>, etc.) have a new&nbsp;<code>$args</code>&nbsp;argument. So now you can pass an entire array’s worth of data to those templates.</p>\n</div>\n\n\n\n<div class=\"wp-block-column\">\n<h3>More changes for developers</h3>\n\n\n\n<ul><li>The PHPMailer library just got a major update, going from version 5.2.27 to 6.1.6.</li><li>Now get more fine-grained control of&nbsp;<code>redirect_guess_404_permalink()</code>.</li><li>Sites that use PHP’s OPcache will see more reliable cache invalidation, thanks to the new&nbsp;<code>wp_opcache_invalidate()</code>&nbsp;function during updates (including to plugins and themes).</li><li>Custom post types associated with the category taxonomy can now opt-in to supporting the default term.</li><li>Default terms can now be specified for custom taxonomies in&nbsp;<code>register_taxonomy()</code>.</li><li>The REST API now officially supports specifying default metadata values through&nbsp;<code>register_meta()</code>.</li><li>You will find updated versions of these bundled libraries: SimplePie, Twemoji, Masonry, imagesLoaded, getID3, Moment.js, and clipboard.js.</li></ul>\n</div>\n</div>\n</div>\n\n\n\n<div class=\"wp-block-column\" style=\"flex-basis:2%\"></div>\n</div>\n\n\n\n<div class=\"wp-block-columns has-white-background-color has-background\">\n<div class=\"wp-block-column\" style=\"flex-basis:2%\"></div>\n\n\n\n<div class=\"wp-block-column\" style=\"flex-basis:96%\">\n<h2>The Squad</h2>\n\n\n\n<p>Leading this release were&nbsp;<a href=\"http://ma.tt/\">Matt Mullenweg</a>,&nbsp;<a href=\"https://profiles.wordpress.org/whyisjake\">Jake Spurlock,</a> and&nbsp;<a href=\"https://dream-encode.com/blog/\">David Baumwald</a>. Supporting them was this highly enthusiastic release squad:</p>\n\n\n\n<ul><li><strong>Editor Tech</strong>: Ella Van Durpe (<a href=\'https://profiles.wordpress.org/ellatrix/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>ellatrix</a>)</li><li><strong>Editor Design</strong>: Michael Arestad (<a href=\'https://profiles.wordpress.org/michael-arestad/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>michael-arestad</a>)</li><li><strong>Core Tech</strong>: Sergey Biryukov (<a href=\'https://profiles.wordpress.org/sergeybiryukov/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>sergeybiryukov</a>)</li><li><strong>Media Tech: </strong>Andrew Ozz (<a href=\'https://profiles.wordpress.org/azaozz/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>azaozz</a>)</li><li><strong>Accessibility Tech</strong>: JB Audras (<a href=\'https://profiles.wordpress.org/audrasjb/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>audrasjb</a>)</li><li><strong>Docs Coordinator</strong>:&nbsp;Justin Ahinon (<a href=\'https://profiles.wordpress.org/justinahinon/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>justinahinon</a>)</li><li><strong>Marketing/Comms Coordinator</strong>: Mary Baum (<a href=\'https://profiles.wordpress.org/marybaum/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>marybaum</a>)</li></ul>\n\n\n\n<p>Joining the squad throughout the release cycle were <strong>805 generous volunteer contributors</strong> who collectively worked on over <strong><a href=\"https://core.trac.wordpress.org/milestone/5.5\">523</a> tickets on Trac</strong> and <strong>over 1660 pull requests on GitHub</strong>.</p>\n\n\n\n<p>Put on a Billy Eckstine playlist, click that update button (or&nbsp;<a href=\"https://wordpress.org/download/\">download it directly</a>), and check the profiles of the fine folks that helped:</p>\n\n\n<a href=\"https://profiles.wordpress.org/a2hosting/\">A2 Hosting</a>, <a href=\"https://profiles.wordpress.org/a4jpcom/\">a4jp . com</a>, <a href=\"https://profiles.wordpress.org/a6software/\">a6software</a>, <a href=\"https://profiles.wordpress.org/aaroncampbell/\">Aaron D. Campbell</a>, <a href=\"https://profiles.wordpress.org/jorbin/\">Aaron Jorbin</a>, <a href=\"https://profiles.wordpress.org/abderrahman/\">abderrahman</a>, <a href=\"https://profiles.wordpress.org/webcommsat/\">Abha Thakor</a>, <a href=\"https://profiles.wordpress.org/ibachal/\">Achal Jain</a>, <a href=\"https://profiles.wordpress.org/achbed/\">achbed</a>, <a href=\"https://profiles.wordpress.org/achyuthajoy/\">Achyuth Ajoy</a>, <a href=\"https://profiles.wordpress.org/acosmin/\">acosmin</a>, <a href=\"https://profiles.wordpress.org/acsnaterse/\">acsnaterse</a>, <a href=\"https://profiles.wordpress.org/adamsilverstein/\">Adam Silverstein</a>, <a href=\"https://profiles.wordpress.org/addiestavlo/\">Addie</a>, <a href=\"https://profiles.wordpress.org/addyosmani/\">addyosmani</a>, <a href=\"https://profiles.wordpress.org/adnanlimdi/\">adnan.limdi</a>, <a href=\"https://profiles.wordpress.org/adrian/\">adrian</a>, <a href=\"https://profiles.wordpress.org/airamerica/\">airamerica</a>, <a href=\"https://profiles.wordpress.org/ajayghaghretiya1/\">Ajay Ghaghretiya</a>, <a href=\"https://profiles.wordpress.org/ajitbohra/\">Ajit Bohra</a>, <a href=\"https://profiles.wordpress.org/akbarhusen/\">akbarhusen</a>, <a href=\"https://profiles.wordpress.org/akbarhusen429/\">akbarhusen429</a>, <a href=\"https://profiles.wordpress.org/akhileshsabharwal/\">Akhilesh Sabharwal</a>, <a href=\"https://profiles.wordpress.org/atachibana/\">Akira Tachibana</a>, <a href=\"https://profiles.wordpress.org/schlessera/\">Alain Schlesser</a>, <a href=\"https://profiles.wordpress.org/aljullu/\">Albert Juh&#233; Lluveras</a>, <a href=\"https://profiles.wordpress.org/xknown/\">Alex Concha</a>, <a href=\"https://profiles.wordpress.org/akirk/\">Alex Kirk</a>, <a href=\"https://profiles.wordpress.org/ajlende/\">Alex Lende</a>, <a href=\"https://profiles.wordpress.org/tellyworth/\">Alex Shiels</a>, <a href=\"https://profiles.wordpress.org/alishanvr/\">Ali Shan</a>, <a href=\"https://profiles.wordpress.org/ali11007/\">ali11007</a>, <a href=\"https://profiles.wordpress.org/allendav/\">Allen Snook</a>, <a href=\"https://profiles.wordpress.org/amaschas/\">amaschas</a>, <a href=\"https://profiles.wordpress.org/wpamitkumar/\">Amit Dudhat</a>, <a href=\"https://profiles.wordpress.org/anbumz/\">anbumz</a>, <a href=\"https://profiles.wordpress.org/andfinally/\">andfinally</a>, <a href=\"https://profiles.wordpress.org/afercia/\">Andrea Fercia</a>, <a href=\"https://profiles.wordpress.org/andreamiddleton/\">Andrea Middleton</a>, <a href=\"https://profiles.wordpress.org/dontdream/\">Andrea Tarantini</a>, <a href=\"https://profiles.wordpress.org/andraganescu/\">Andrei Draganescu</a>, <a href=\"https://profiles.wordpress.org/aduth/\">Andrew Duthie</a>, <a href=\"https://profiles.wordpress.org/nacin/\">Andrew Nacin</a>, <a href=\"https://profiles.wordpress.org/anevins/\">Andrew Nevins</a>, <a href=\"https://profiles.wordpress.org/azaozz/\">Andrew Ozz</a>, <a href=\"https://profiles.wordpress.org/rarst/\">Andrey \"Rarst\" Savchenko</a>, <a href=\"https://profiles.wordpress.org/nosolosw/\">Andrés Maneiro</a>, <a href=\"https://profiles.wordpress.org/afragen/\">Andy Fragen</a>, <a href=\"https://profiles.wordpress.org/andizer/\">Andy Meerwaldt</a>, <a href=\"https://profiles.wordpress.org/apeatling/\">Andy Peatling</a>, <a href=\"https://profiles.wordpress.org/akissz/\">Angel Hess</a>, <a href=\"https://profiles.wordpress.org/angelasjin/\">Angela Jin</a>, <a href=\"https://profiles.wordpress.org/la-geek/\">Angelika Reisiger</a>, <a href=\"https://profiles.wordpress.org/rilwis/\">Anh Tran</a>, <a href=\"https://profiles.wordpress.org/wpgurudev/\">Ankit Gade</a>, <a href=\"https://profiles.wordpress.org/ankit-k-gupta/\">Ankit K Gupta</a>, <a href=\"https://profiles.wordpress.org/ankitmaru/\">Ankit Panchal</a>, <a href=\"https://profiles.wordpress.org/annezazu/\">Anne McCarthy</a>, <a href=\"https://profiles.wordpress.org/antpb/\">Anthony Burchell</a>, <a href=\"https://profiles.wordpress.org/ahortin/\">Anthony Hortin</a>, <a href=\"https://profiles.wordpress.org/atimmer/\">Anton Timmermans</a>, <a href=\"https://profiles.wordpress.org/antonisme/\">Antonis Lilis</a>, <a href=\"https://profiles.wordpress.org/apedog/\">apedog</a>, <a href=\"https://profiles.wordpress.org/archon810/\">archon810</a>, <a href=\"https://profiles.wordpress.org/argentite/\">argentite</a>, <a href=\"https://profiles.wordpress.org/arpitgshah/\">Arpit G Shah</a>, <a href=\"https://profiles.wordpress.org/passoniate/\">Arslan Ahmed</a>, <a href=\"https://profiles.wordpress.org/asalce/\">asalce</a>, <a href=\"https://profiles.wordpress.org/ashiagr/\">ashiagr</a>, <a href=\"https://profiles.wordpress.org/ashour/\">ashour</a>, <a href=\"https://profiles.wordpress.org/tacitonic/\">Atharva Dhekne</a>, <a href=\"https://profiles.wordpress.org/ajoah/\">Aur&#233;lien Joahny</a>, <a href=\"https://profiles.wordpress.org/aussi/\">aussi</a>, <a href=\"https://profiles.wordpress.org/automaton/\">automaton</a>, <a href=\"https://profiles.wordpress.org/avixansa/\">avixansa</a>, <a href=\"https://profiles.wordpress.org/ayeshrajans/\">Ayesh Karunaratne</a>, <a href=\"https://profiles.wordpress.org/backups/\">BackuPs</a>, <a href=\"https://profiles.wordpress.org/barry/\">Barry</a>, <a href=\"https://profiles.wordpress.org/barryceelen/\">Barry Ceelen</a>, <a href=\"https://profiles.wordpress.org/bartczyz/\">Bart Czyz</a>, <a href=\"https://profiles.wordpress.org/bartekcholewa/\">bartekcholewa</a>, <a href=\"https://profiles.wordpress.org/bartkalisz/\">bartkalisz</a>, <a href=\"https://profiles.wordpress.org/bastho/\">Bastien Ho</a>, <a href=\"https://profiles.wordpress.org/bmartinent/\">Bastien Martinent</a>, <a href=\"https://profiles.wordpress.org/bcworkz/\">bcworkz</a>, <a href=\"https://profiles.wordpress.org/bdbch/\">bdbch</a>, <a href=\"https://profiles.wordpress.org/bdcstr/\">bdcstr</a>, <a href=\"https://profiles.wordpress.org/empireoflight/\">Ben Dunkle</a>, <a href=\"https://profiles.wordpress.org/grapestain/\">Bence Szalai</a>, <a href=\"https://profiles.wordpress.org/bencroskery/\">bencroskery</a>, <a href=\"https://profiles.wordpress.org/benjamingosset/\">Benjamin Gosset</a>, <a href=\"https://profiles.wordpress.org/benoitchantre/\">Benoit Chantre</a>, <a href=\"https://profiles.wordpress.org/bernhard-reiter/\">Bernhard Reiter</a>, <a href=\"https://profiles.wordpress.org/bettyjj/\">BettyJJ</a>, <a href=\"https://profiles.wordpress.org/bgermann/\">bgermann</a>, <a href=\"https://profiles.wordpress.org/bigcloudmedia/\">bigcloudmedia</a>, <a href=\"https://profiles.wordpress.org/bigdawggi/\">bigdawggi</a>, <a href=\"https://profiles.wordpress.org/billerickson/\">Bill Erickson</a>, <a href=\"https://profiles.wordpress.org/birgire/\">Birgir Erlendsson (birgire)</a>, <a href=\"https://profiles.wordpress.org/bph/\">Birgit Pauli-Haack</a>, <a href=\"https://profiles.wordpress.org/bjornw/\">BjornW</a>, <a href=\"https://profiles.wordpress.org/bobbingwide/\">bobbingwide</a>, <a href=\"https://profiles.wordpress.org/gitlost/\">bonger</a>, <a href=\"https://profiles.wordpress.org/boonebgorges/\">Boone Gorges</a>, <a href=\"https://profiles.wordpress.org/bbrdaric/\">Boris Brdarić</a>, <a href=\"https://profiles.wordpress.org/ibdz/\">Boy Witthaya</a>, <a href=\"https://profiles.wordpress.org/kraftbj/\">Brandon Kraft</a>, <a href=\"https://profiles.wordpress.org/bpayton/\">Brandon Payton</a>, <a href=\"https://profiles.wordpress.org/brentswisher/\">Brent Swisher</a>, <a href=\"https://profiles.wordpress.org/brianhogg/\">Brian Hogg</a>, <a href=\"https://profiles.wordpress.org/krogsgard/\">Brian Krogsgard</a>, <a href=\"https://profiles.wordpress.org/bridgetwillard/\">bridgetwillard</a>, <a href=\"https://profiles.wordpress.org/bruandet/\">bruandet</a>, <a href=\"https://profiles.wordpress.org/bhargavbhandari90/\">Bunty</a>, <a href=\"https://profiles.wordpress.org/burhandodhy/\">Burhan Nasir</a>, <a href=\"https://profiles.wordpress.org/caiocrcosta/\">caiocrcosta</a>, <a href=\"https://profiles.wordpress.org/cvoell/\">Cameron Voell</a>, <a href=\"https://profiles.wordpress.org/cameronamcintyre/\">cameronamcintyre</a>, <a href=\"https://profiles.wordpress.org/carike/\">Carike</a>, <a href=\"https://profiles.wordpress.org/stuffradio/\">Carl Wuensche</a>, <a href=\"https://profiles.wordpress.org/carloslfu/\">Carlos Galarza</a>, <a href=\"https://profiles.wordpress.org/poena/\">Carolina Nymark</a>, <a href=\"https://profiles.wordpress.org/sixhours/\">Caroline Moore</a>, <a href=\"https://profiles.wordpress.org/carriganvb/\">Carrigan</a>, <a href=\"https://profiles.wordpress.org/ceyhun/\">ceyhun</a>, <a href=\"https://profiles.wordpress.org/shireling/\">Chad</a>, <a href=\"https://profiles.wordpress.org/cbutlerjr/\">Chad Butler</a>, <a href=\"https://profiles.wordpress.org/mackensen/\">Charles Fulton</a>, <a href=\"https://profiles.wordpress.org/chetan200891/\">Chetan Prajapati</a>, <a href=\"https://profiles.wordpress.org/chintan1896/\">Chintan hingrajiya</a>, <a href=\"https://profiles.wordpress.org/chipsnyder/\">Chip Snyder</a>, <a href=\"https://profiles.wordpress.org/cbringmann/\">Chloé Bringmann</a>, <a href=\"https://profiles.wordpress.org/chouby/\">Chouby</a>, <a href=\"https://profiles.wordpress.org/chrisvanpatten/\">Chris Van Patten</a>, <a href=\"https://profiles.wordpress.org/chriscct7/\">chriscct7</a>, <a href=\"https://profiles.wordpress.org/christian1012/\">Christian Chung</a>, <a href=\"https://profiles.wordpress.org/cjbj/\">Christian Jongeneel</a>, <a href=\"https://profiles.wordpress.org/pixelverbieger/\">Christian Sabo</a>, <a href=\"https://profiles.wordpress.org/needle/\">Christian Wach</a>, <a href=\"https://profiles.wordpress.org/christophherr/\">Christoph Herr</a>, <a href=\"https://profiles.wordpress.org/vimes1984/\">Christopher Churchill</a>, <a href=\"https://profiles.wordpress.org/chunkysteveo/\">chunkysteveo</a>, <a href=\"https://profiles.wordpress.org/cklee/\">cklee</a>, <a href=\"https://profiles.wordpress.org/clayray/\">clayray</a>, <a href=\"https://profiles.wordpress.org/claytoncollie/\">Clayton Collie</a>, <a href=\"https://profiles.wordpress.org/cliffpaulick/\">Clifford Paulick</a>, <a href=\"https://profiles.wordpress.org/codeforest/\">codeforest</a>, <a href=\"https://profiles.wordpress.org/commeuneimage/\">Commeuneimage</a>, <a href=\"https://profiles.wordpress.org/copons/\">Copons</a>, <a href=\"https://profiles.wordpress.org/coreymckrill/\">Corey McKrill</a>, <a href=\"https://profiles.wordpress.org/cpasqualini/\">cpasqualini</a>, <a href=\"https://profiles.wordpress.org/cristovaov/\">Cristovao Verstraeten</a>, <a href=\"https://profiles.wordpress.org/littlebigthing/\">Csaba (LittleBigThings)</a>, <a href=\"https://profiles.wordpress.org/curtisbelt/\">Curtis Belt</a>, <a href=\"https://profiles.wordpress.org/clarinetlord/\">Cyrus Collier</a>, <a href=\"https://profiles.wordpress.org/dperonne/\">D.PERONNE</a>, <a href=\"https://profiles.wordpress.org/dsixinetu/\">d6</a>, <a href=\"https://profiles.wordpress.org/danielbachhuber/\">Daniel Bachhuber</a>, <a href=\"https://profiles.wordpress.org/danielhuesken/\">Daniel H&#252;sken</a>, <a href=\"https://profiles.wordpress.org/danieltj/\">Daniel James</a>, <a href=\"https://profiles.wordpress.org/diddledan/\">Daniel Llewellyn</a>, <a href=\"https://profiles.wordpress.org/talldanwp/\">Daniel Richards</a>, <a href=\"https://profiles.wordpress.org/confridin/\">Daniel Roch</a>, <a href=\"https://profiles.wordpress.org/mte90/\">Daniele Scasciafratte</a>, <a href=\"https://profiles.wordpress.org/dboy1988/\">Danny</a>, <a href=\"https://profiles.wordpress.org/darkog/\">Darko G.</a>, <a href=\"https://profiles.wordpress.org/nerrad/\">Darren Ethier (nerrad)</a>, <a href=\"https://profiles.wordpress.org/dmchale/\">Dave McHale</a>, <a href=\"https://profiles.wordpress.org/drw158/\">Dave Whitley</a>, <a href=\"https://profiles.wordpress.org/davidakennedy/\">David A. Kennedy</a>, <a href=\"https://profiles.wordpress.org/davilera/\">David Aguilera</a>, <a href=\"https://profiles.wordpress.org/davidanderson/\">David Anderson</a>, <a href=\"https://profiles.wordpress.org/dartiss/\">David Artiss</a>, <a href=\"https://profiles.wordpress.org/davidbaumwald/\">David Baumwald</a>, <a href=\"https://profiles.wordpress.org/dbrumbaugh10up/\">David Brumbaugh</a>, <a href=\"https://profiles.wordpress.org/desmith/\">David E. Smith</a>, <a href=\"https://profiles.wordpress.org/dlh/\">David Herrera</a>, <a href=\"https://profiles.wordpress.org/dryanpress/\">David Ryan</a>, <a href=\"https://profiles.wordpress.org/dshanske/\">David Shanske</a>, <a href=\"https://profiles.wordpress.org/get_dave/\">David Smith</a>, <a href=\"https://profiles.wordpress.org/davidbinda/\">david.binda</a>, <a href=\"https://profiles.wordpress.org/davidvee/\">davidvee</a>, <a href=\"https://profiles.wordpress.org/davisshaver/\">Davis Shaver</a>, <a href=\"https://profiles.wordpress.org/dchymko/\">dchymko</a>, <a href=\"https://profiles.wordpress.org/dkarfa/\">Debabrata Karfa</a>, <a href=\"https://profiles.wordpress.org/deepaklalwani/\">Deepak Lalwani</a>, <a href=\"https://profiles.wordpress.org/dekervit/\">dekervit</a>, <a href=\"https://profiles.wordpress.org/delowardev/\">Delowar Hossain</a>, <a href=\"https://profiles.wordpress.org/demetris/\">demetris</a>, <a href=\"https://profiles.wordpress.org/denisco/\">Denis Yanchevskiy</a>, <a href=\"https://profiles.wordpress.org/derekakelly/\">derekakelly</a>, <a href=\"https://profiles.wordpress.org/pcfreak30/\">Derrick Hammer</a>, <a href=\"https://profiles.wordpress.org/emrikol/\">Derrick Tennant</a>, <a href=\"https://profiles.wordpress.org/dianeco/\">Diane Co</a>, <a href=\"https://profiles.wordpress.org/dilipbheda/\">Dilip Bheda</a>, <a href=\"https://profiles.wordpress.org/dimitrism/\">Dimitris Mitsis</a>, <a href=\"https://profiles.wordpress.org/dingo_d/\">dingo-d</a>, <a href=\"https://profiles.wordpress.org/dd32/\">Dion Hulse</a>, <a href=\"https://profiles.wordpress.org/dency/\">Dixita Dusara</a>, <a href=\"https://profiles.wordpress.org/djennez/\">djennez</a>, <a href=\"https://profiles.wordpress.org/dmenard/\">dmenard</a>, <a href=\"https://profiles.wordpress.org/dmethvin/\">dmethvin</a>, <a href=\"https://profiles.wordpress.org/doc987/\">doc987</a>, <a href=\"https://profiles.wordpress.org/ocean90/\">Dominik Schilling</a>, <a href=\"https://profiles.wordpress.org/donmhico/\">donmhico</a>, <a href=\"https://profiles.wordpress.org/dono12/\">Dono12</a>, <a href=\"https://profiles.wordpress.org/doobeedoo/\">Doobeedoo</a>, <a href=\"https://profiles.wordpress.org/dossy/\">Dossy Shiobara</a>, <a href=\"https://profiles.wordpress.org/dpacks/\">dpacks</a>, <a href=\"https://profiles.wordpress.org/dratwas/\">dratwas</a>, <a href=\"https://profiles.wordpress.org/drewapicture/\">Drew Jaynes</a>, <a href=\"https://profiles.wordpress.org/drlightman/\">DrLightman</a>, <a href=\"https://profiles.wordpress.org/drprotocols/\">DrProtocols</a>, <a href=\"https://profiles.wordpress.org/dsifford/\">dsifford</a>, <a href=\"https://profiles.wordpress.org/dudo/\">dudo</a>, <a href=\"https://profiles.wordpress.org/dushakov/\">dushakov</a>, <a href=\"https://profiles.wordpress.org/dustinbolton/\">Dustin Bolton</a>, <a href=\"https://profiles.wordpress.org/dvershinin/\">dvershinin</a>, <a href=\"https://profiles.wordpress.org/cyberhobo/\">Dylan Kuhn</a>, <a href=\"https://profiles.wordpress.org/elrae/\">Earle Davies</a>, <a href=\"https://profiles.wordpress.org/seedsca/\">ecotechie</a>, <a href=\"https://profiles.wordpress.org/eddiemoya/\">Eddie Moya</a>, <a href=\"https://profiles.wordpress.org/eddystile/\">Eddy</a>, <a href=\"https://profiles.wordpress.org/ediamin/\">Edi Amin</a>, <a href=\"https://profiles.wordpress.org/ehtis/\">ehtis</a>, <a href=\"https://profiles.wordpress.org/itsjusteileen/\">Eileen Violini</a>, <a href=\"https://profiles.wordpress.org/ekatherine/\">Ekaterina</a>, <a href=\"https://profiles.wordpress.org/ellatrix/\">Ella van Durpe</a>, <a href=\"https://profiles.wordpress.org/elmastudio/\">elmastudio</a>, <a href=\"https://profiles.wordpress.org/emanuel_blagonic/\">Emanuel Blagonic</a>, <a href=\"https://profiles.wordpress.org/emlebrun/\">Emilie LEBRUN</a>, <a href=\"https://profiles.wordpress.org/manooweb/\">Emmanuel Hesry</a>, <a href=\"https://profiles.wordpress.org/enej/\">Enej Bajgoric</a>, <a href=\"https://profiles.wordpress.org/enricosorcinelli/\">Enrico Sorcinelli</a>, <a href=\"https://profiles.wordpress.org/epiqueras/\">Enrique Piqueras</a>, <a href=\"https://profiles.wordpress.org/nrqsnchz/\">Enrique Sánchez</a>, <a href=\"https://profiles.wordpress.org/shamai/\">Eric</a>, <a href=\"https://profiles.wordpress.org/ericlewis/\">Eric Andrew Lewis</a>, <a href=\"https://profiles.wordpress.org/ebinnion/\">Eric Binnion</a>, <a href=\"https://profiles.wordpress.org/kebbet/\">Erik Betshammar</a>, <a href=\"https://profiles.wordpress.org/folletto/\">Erin \'Folletto\' Casali</a>, <a href=\"https://profiles.wordpress.org/esemlabel/\">esemlabel</a>, <a href=\"https://profiles.wordpress.org/esoj/\">esoj</a>, <a href=\"https://profiles.wordpress.org/espiat/\">espiat</a>, <a href=\"https://profiles.wordpress.org/estelaris/\">Estela Rueda</a>, <a href=\"https://profiles.wordpress.org/etoledom/\">etoledom</a>, <a href=\"https://profiles.wordpress.org/etruel/\">etruel</a>, <a href=\"https://profiles.wordpress.org/ev3rywh3re/\">Ev3rywh3re</a>, <a href=\"https://profiles.wordpress.org/circlecube/\">Evan Mullins</a>, <a href=\"https://profiles.wordpress.org/fabiankaegy/\">Fabian K&#228;gy</a>, <a href=\"https://profiles.wordpress.org/gaambo/\">Fabian Todt</a>, <a href=\"https://profiles.wordpress.org/fftfaisal/\">Faisal Ahmed</a>, <a href=\"https://profiles.wordpress.org/flixos90/\">Felix Arntz</a>, <a href=\"https://profiles.wordpress.org/felix-edelmann/\">Felix Edelmann</a>, <a href=\"https://profiles.wordpress.org/ferdiesletering/\">ferdiesletering</a>, <a href=\"https://profiles.wordpress.org/finomeno/\">finomeno</a>, <a href=\"https://profiles.wordpress.org/florianbrinkmann/\">Florian Brinkmann</a>, <a href=\"https://profiles.wordpress.org/mista-flo/\">Florian TIAR</a>, <a href=\"https://profiles.wordpress.org/truchot/\">Florian Truchot</a>, <a href=\"https://profiles.wordpress.org/florianatwhodunit/\">florianatwhodunit</a>, <a href=\"https://profiles.wordpress.org/foliovision/\">FolioVision</a>, <a href=\"https://profiles.wordpress.org/francina/\">Francesca Marano</a>, <a href=\"https://profiles.wordpress.org/francoist/\">Francois Thibaud</a>, <a href=\"https://profiles.wordpress.org/futtta/\">Frank Goossens</a>, <a href=\"https://profiles.wordpress.org/frank-klein/\">Frank Klein</a>, <a href=\"https://profiles.wordpress.org/frankprendergast/\">Frank.Prendergast</a>, <a href=\"https://profiles.wordpress.org/fjarrett/\">Frankie Jarrett</a>, <a href=\"https://profiles.wordpress.org/franzarmas/\">Franz Armas</a>, <a href=\"https://profiles.wordpress.org/fullofcaffeine/\">fullofcaffeine</a>, <a href=\"https://profiles.wordpress.org/mintindeed/\">Gabriel Koen</a>, <a href=\"https://profiles.wordpress.org/gma992/\">Gabriel Maldonado</a>, <a href=\"https://profiles.wordpress.org/gmays/\">Gabriel Mays</a>, <a href=\"https://profiles.wordpress.org/gadgetroid/\">gadgetroid</a>, <a href=\"https://profiles.wordpress.org/galbaras/\">Gal Baras</a>, <a href=\"https://profiles.wordpress.org/garavani/\">Garavani</a>, <a href=\"https://profiles.wordpress.org/garethgillman/\">garethgillman</a>, <a href=\"https://profiles.wordpress.org/garrett-eclipse/\">Garrett Hyder</a>, <a href=\"https://profiles.wordpress.org/garyc40/\">Gary Cao</a>, <a href=\"https://profiles.wordpress.org/garyj/\">Gary Jones</a>, <a href=\"https://profiles.wordpress.org/pento/\">Gary Pendergast</a>, <a href=\"https://profiles.wordpress.org/gchtr/\">gchtr</a>, <a href=\"https://profiles.wordpress.org/geertdd/\">Geert De Deckere</a>, <a href=\"https://profiles.wordpress.org/geminilabs/\">Gemini Labs</a>, <a href=\"https://profiles.wordpress.org/soulseekah/\">Gennady Kovshenin</a>, <a href=\"https://profiles.wordpress.org/geriux/\">geriux</a>, <a href=\"https://profiles.wordpress.org/giorgio25b/\">Giorgio25b</a>, <a href=\"https://profiles.wordpress.org/gisselfeldt/\">gisselfeldt</a>, <a href=\"https://profiles.wordpress.org/glendaviesnz/\">glendaviesnz</a>, <a href=\"https://profiles.wordpress.org/goldsounds/\">goldsounds</a>, <a href=\"https://profiles.wordpress.org/gh640/\">Goto Hayato</a>, <a href=\"https://profiles.wordpress.org/gkloveweb/\">Govind Kumar</a>, <a href=\"https://profiles.wordpress.org/greglone/\">Gr&#233;gory Viguier</a>, <a href=\"https://profiles.wordpress.org/gradina/\">gradina</a>, <a href=\"https://profiles.wordpress.org/gziolo/\">Greg Ziółkowski</a>, <a href=\"https://profiles.wordpress.org/gregmulhauser/\">gregmulhauser</a>, <a href=\"https://profiles.wordpress.org/grierson/\">grierson</a>, <a href=\"https://profiles.wordpress.org/grzegorzjanoszka/\">Grzegorz.Janoszka</a>, <a href=\"https://profiles.wordpress.org/gsmumbo/\">gsmumbo</a>, <a href=\"https://profiles.wordpress.org/wido/\">Guido Scialfa</a>, <a href=\"https://profiles.wordpress.org/guidobras/\">guidobras</a>, <a href=\"https://profiles.wordpress.org/netsurfer2705/\">Gunther Pilz</a>, <a href=\"https://profiles.wordpress.org/gwwar/\">gwwar</a>, <a href=\"https://profiles.wordpress.org/hvar/\">H-var</a>, <a href=\"https://profiles.wordpress.org/hakre/\">hakre</a>, <a href=\"https://profiles.wordpress.org/halgatewood/\">Halacious</a>, <a href=\"https://profiles.wordpress.org/hankthetank/\">hankthetank</a>, <a href=\"https://profiles.wordpress.org/psdtohtmlguru/\">Hapiuc Robert</a>, <a href=\"https://profiles.wordpress.org/hareesh-pillai/\">Hareesh</a>, <a href=\"https://profiles.wordpress.org/haukep/\">haukep</a>, <a href=\"https://profiles.wordpress.org/azhiyadev/\">Hauwa</a>, <a href=\"https://profiles.wordpress.org/hazdiego/\">Haz</a>, <a href=\"https://profiles.wordpress.org/h71/\">Hector Farahani</a>, <a href=\"https://profiles.wordpress.org/helen/\">Helen Hou-Sandi</a>, <a href=\"https://profiles.wordpress.org/henrywright/\">Henry Wright</a>, <a href=\"https://profiles.wordpress.org/herregroen/\">Herre Groen</a>, <a href=\"https://profiles.wordpress.org/hlanggo/\">hlanggo</a>, <a href=\"https://profiles.wordpress.org/hommealone/\">hommealone</a>, <a href=\"https://profiles.wordpress.org/ryanshoover/\">Hoover</a>, <a href=\"https://profiles.wordpress.org/howdy_mcgee/\">Howdy_McGee</a>, <a href=\"https://profiles.wordpress.org/hronak/\">Hronak Nahar</a>, <a href=\"https://profiles.wordpress.org/hlashbrooke/\">Hugh Lashbrooke</a>, <a href=\"https://profiles.wordpress.org/huntlyc/\">huntlyc</a>, <a href=\"https://profiles.wordpress.org/ianbelanger/\">Ian Belanger</a>, <a href=\"https://profiles.wordpress.org/iandunn/\">Ian Dunn</a>, <a href=\"https://profiles.wordpress.org/iandstewart/\">Ian Stewart</a>, <a href=\"https://profiles.wordpress.org/ianjvr/\">ianjvr</a>, <a href=\"https://profiles.wordpress.org/ifrins/\">ifrins</a>, <a href=\"https://profiles.wordpress.org/igorradovanov/\">Igor Radovanov</a>, <a href=\"https://profiles.wordpress.org/infinum/\">infinum</a>, <a href=\"https://profiles.wordpress.org/ipstenu/\">Ipstenu (Mika Epstein)</a>, <a href=\"https://profiles.wordpress.org/isabel_brison/\">Isabel Brison</a>, <a href=\"https://profiles.wordpress.org/ishitaka/\">ishitaka</a>, <a href=\"https://profiles.wordpress.org/jdgrimes/\">J.D. Grimes</a>, <a href=\"https://profiles.wordpress.org/jackfungi/\">jackfungi</a>, <a href=\"https://profiles.wordpress.org/jacklinkers/\">jacklinkers</a>, <a href=\"https://profiles.wordpress.org/jadonn/\">Jadon N</a>, <a href=\"https://profiles.wordpress.org/jadpm/\">jadpm</a>, <a href=\"https://profiles.wordpress.org/jagirbahesh/\">jagirbahesh</a>, <a href=\"https://profiles.wordpress.org/whyisjake/\">Jake Spurlock</a>, <a href=\"https://profiles.wordpress.org/twentyzerotwo/\">Jake Whiteley</a>, <a href=\"https://profiles.wordpress.org/jameskoster/\">James Koster</a>, <a href=\"https://profiles.wordpress.org/jnylen0/\">James Nylen</a>, <a href=\"https://profiles.wordpress.org/foack/\">Jan Koch</a>, <a href=\"https://profiles.wordpress.org/janr/\">Jan Reilink</a>, <a href=\"https://profiles.wordpress.org/janthiel/\">Jan Thiel</a>, <a href=\"https://profiles.wordpress.org/javidalkaruzi/\">Janvo Aldred</a>, <a href=\"https://profiles.wordpress.org/jarretc/\">Jarret</a>, <a href=\"https://profiles.wordpress.org/jason_the_adams/\">Jason Adams</a>, <a href=\"https://profiles.wordpress.org/strangerstudios/\">Jason Coleman</a>, <a href=\"https://profiles.wordpress.org/boogah/\">Jason Cosper</a>, <a href=\"https://profiles.wordpress.org/coolmann/\">Jason Crouse</a>, <a href=\"https://profiles.wordpress.org/madtownlems/\">Jason LeMahieu (MadtownLems)</a>, <a href=\"https://profiles.wordpress.org/jaz_on/\">Jason Rouet</a>, <a href=\"https://profiles.wordpress.org/jaswsinc/\">JasWSInc</a>, <a href=\"https://profiles.wordpress.org/javiercasares/\">Javier Casares</a>, <a href=\"https://profiles.wordpress.org/shiki/\">Jayson Basanes</a>, <a href=\"https://profiles.wordpress.org/jbinda/\">jbinda</a>, <a href=\"https://profiles.wordpress.org/jbouganim/\">jbouganim</a>, <a href=\"https://profiles.wordpress.org/audrasjb/\">Jean-Baptiste Audras</a>, <a href=\"https://profiles.wordpress.org/jean-david/\">Jean-David Daviet</a>, <a href=\"https://profiles.wordpress.org/jeffr0/\">Jeff Chandler</a>, <a href=\"https://profiles.wordpress.org/jfarthing84/\">Jeff Farthing</a>, <a href=\"https://profiles.wordpress.org/jffng/\">Jeff Ong</a>, <a href=\"https://profiles.wordpress.org/jeffpaul/\">Jeff Paul</a>, <a href=\"https://profiles.wordpress.org/jenmylo/\">Jen</a>, <a href=\"https://profiles.wordpress.org/jenilk/\">Jenil Kanani</a>, <a href=\"https://profiles.wordpress.org/jeremyfelt/\">Jeremy Felt</a>, <a href=\"https://profiles.wordpress.org/jeherve/\">Jeremy Herve</a>, <a href=\"https://profiles.wordpress.org/jeremyyip/\">Jeremy Yip</a>, <a href=\"https://profiles.wordpress.org/jeroenrotty/\">Jeroen Rotty</a>, <a href=\"https://profiles.wordpress.org/jeryj/\">jeryj</a>, <a href=\"https://profiles.wordpress.org/jesin/\">Jesin A</a>, <a href=\"https://profiles.wordpress.org/jigneshnakrani/\">Jignesh Nakrani</a>, <a href=\"https://profiles.wordpress.org/jim_panse/\">Jim_Panse</a>, <a href=\"https://profiles.wordpress.org/jipmoors/\">Jip Moors</a>, <a href=\"https://profiles.wordpress.org/jivanpal/\">jivanpal</a>, <a href=\"https://profiles.wordpress.org/joedolson/\">Joe Dolson</a>, <a href=\"https://profiles.wordpress.org/joehoyle/\">Joe Hoyle</a>, <a href=\"https://profiles.wordpress.org/joemcgill/\">Joe McGill</a>, <a href=\"https://profiles.wordpress.org/joen/\">Joen Asmussen</a>, <a href=\"https://profiles.wordpress.org/johannadevos/\">Johanna de Vos</a>, <a href=\"https://profiles.wordpress.org/johnbillion/\">John Blackbourn</a>, <a href=\"https://profiles.wordpress.org/jdorner/\">John Dorner</a>, <a href=\"https://profiles.wordpress.org/johnjamesjacoby/\">John James Jacoby</a>, <a href=\"https://profiles.wordpress.org/johnpgreen/\">John P. Green</a>, <a href=\"https://profiles.wordpress.org/rastaban/\">John Richards II</a>, <a href=\"https://profiles.wordpress.org/johnwatkins0/\">John Watkins</a>, <a href=\"https://profiles.wordpress.org/johnnyb/\">johnnyb</a>, <a href=\"https://profiles.wordpress.org/jb510/\">Jon Brown</a>, <a href=\"https://profiles.wordpress.org/itsjonq/\">Jon Quach</a>, <a href=\"https://profiles.wordpress.org/jonsurrell/\">Jon Surrell</a>, <a href=\"https://profiles.wordpress.org/psykro/\">Jonathan Bossenger</a>, <a href=\"https://profiles.wordpress.org/jrchamp/\">Jonathan Champ</a>, <a href=\"https://profiles.wordpress.org/jchristopher/\">Jonathan Christopher</a>, <a href=\"https://profiles.wordpress.org/desrosj/\">Jonathan Desrosiers</a>, <a href=\"https://profiles.wordpress.org/jonathanstegall/\">Jonathan Stegall</a>, <a href=\"https://profiles.wordpress.org/jonkolbert/\">jonkolbert</a>, <a href=\"https://profiles.wordpress.org/spacedmonkey/\">Jonny Harris</a>, <a href=\"https://profiles.wordpress.org/jonnybot/\">jonnybot</a>, <a href=\"https://profiles.wordpress.org/jonoaldersonwp/\">Jono Alderson</a>, <a href=\"https://profiles.wordpress.org/joostdevalk/\">Joost de Valk</a>, <a href=\"https://profiles.wordpress.org/koke/\">Jorge Bernal</a>, <a href=\"https://profiles.wordpress.org/jorgefilipecosta/\">Jorge Costa</a>, <a href=\"https://profiles.wordpress.org/josephdickson/\">Joseph Dickson</a>, <a href=\"https://profiles.wordpress.org/chanthaboune/\">Josepha Haden</a>, <a href=\"https://profiles.wordpress.org/procifer/\">Josh Smith</a>, <a href=\"https://profiles.wordpress.org/joshuawold/\">JoshuaWold</a>, <a href=\"https://profiles.wordpress.org/joyously/\">Joy</a>, <a href=\"https://profiles.wordpress.org/juanfra/\">Juanfra Aldasoro</a>, <a href=\"https://profiles.wordpress.org/juanlopez4691/\">juanlopez4691</a>, <a href=\"https://profiles.wordpress.org/jules-colle/\">Jules Colle</a>, <a href=\"https://profiles.wordpress.org/julianm/\">julianm</a>, <a href=\"https://profiles.wordpress.org/jrf/\">Juliette Reinders Folmer</a>, <a href=\"https://profiles.wordpress.org/juliobox/\">Julio Potier</a>, <a href=\"https://profiles.wordpress.org/jgrodel/\">Julka Grodel</a>, <a href=\"https://profiles.wordpress.org/justinahinon/\">Justin Ahinon</a>, <a href=\"https://profiles.wordpress.org/devesine/\">Justin de Vesine</a>, <a href=\"https://profiles.wordpress.org/greenshady/\">Justin Tadlock</a>, <a href=\"https://profiles.wordpress.org/justlevine/\">justlevine</a>, <a href=\"https://profiles.wordpress.org/justnorris/\">justnorris</a>, <a href=\"https://profiles.wordpress.org/kadamwhite/\">K. Adam White</a>, <a href=\"https://profiles.wordpress.org/kaggdesign/\">kaggdesign</a>, <a href=\"https://profiles.wordpress.org/trepmal/\">Kailey (trepmal)</a>, <a href=\"https://profiles.wordpress.org/kaira/\">Kaira</a>, <a href=\"https://profiles.wordpress.org/kaitlin414/\">Kaitlin Bolling</a>, <a href=\"https://profiles.wordpress.org/akabarikalpesh/\">Kalpesh Akabari</a>, <a href=\"https://profiles.wordpress.org/kamataryo/\">KamataRyo</a>, <a href=\"https://profiles.wordpress.org/leprincenoir/\">Kantari Samy</a>, <a href=\"https://profiles.wordpress.org/kasparsd/\">Kaspars</a>, <a href=\"https://profiles.wordpress.org/properlypurple/\">Kavya Gokul</a>, <a href=\"https://profiles.wordpress.org/keesiemeijer/\">keesiemeijer</a>, <a href=\"https://profiles.wordpress.org/ryelle/\">Kelly Dwan</a>, <a href=\"https://profiles.wordpress.org/kellybleck/\">kellybleck</a>, <a href=\"https://profiles.wordpress.org/kennethroberson5556/\">kennethroberson5556</a>, <a href=\"https://profiles.wordpress.org/khag7/\">Kevin Hagerty</a>, <a href=\"https://profiles.wordpress.org/kharisblank/\">Kharis Sulistiyono</a>, <a href=\"https://profiles.wordpress.org/itzmekhokan/\">Khokan Sardar</a>, <a href=\"https://profiles.wordpress.org/kinjaldalwadi/\">kinjaldalwadi</a>, <a href=\"https://profiles.wordpress.org/kirilzh/\">Kiril Zhelyazkov</a>, <a href=\"https://profiles.wordpress.org/kburgoine/\">Kirsty Burgoine</a>, <a href=\"https://profiles.wordpress.org/kishanjasani/\">Kishan Jasani</a>, <a href=\"https://profiles.wordpress.org/kitchin/\">kitchin</a>, <a href=\"https://profiles.wordpress.org/ixkaito/\">Kite</a>, <a href=\"https://profiles.wordpress.org/kjellr/\">Kjell Reigstad</a>, <a href=\"https://profiles.wordpress.org/knutsp/\">Knut Sparhell</a>, <a href=\"https://profiles.wordpress.org/obenland/\">Konstantin Obenland</a>, <a href=\"https://profiles.wordpress.org/xkon/\">Konstantinos Xenos</a>, <a href=\"https://profiles.wordpress.org/ksoares/\">ksoares</a>, <a href=\"https://profiles.wordpress.org/kthmd/\">KT Cheung</a>, <a href=\"https://profiles.wordpress.org/sainthkh/\">Kukhyeon Heo</a>, <a href=\"https://profiles.wordpress.org/kbjohnson90/\">Kyle B. Johnson</a>, <a href=\"https://profiles.wordpress.org/lalitpendhare/\">lalitpendhare</a>, <a href=\"https://profiles.wordpress.org/landau/\">landau</a>, <a href=\"https://profiles.wordpress.org/laternastudio/\">Laterna Studio</a>, <a href=\"https://profiles.wordpress.org/laurelfulford/\">laurelfulford</a>, <a href=\"https://profiles.wordpress.org/offereins/\">Laurens Offereins</a>, <a href=\"https://profiles.wordpress.org/laxman-prajapati/\">Laxman Prajapati</a>, <a href=\"https://profiles.wordpress.org/gamerz/\">Lester Chan</a>, <a href=\"https://profiles.wordpress.org/levdbas/\">Levdbas</a>, <a href=\"https://profiles.wordpress.org/layotte/\">Lew Ayotte</a>, <a href=\"https://profiles.wordpress.org/lex_robinson/\">Lex Robinson</a>, <a href=\"https://profiles.wordpress.org/linyows/\">linyows</a>, <a href=\"https://profiles.wordpress.org/lipathor/\">lipathor</a>, <a href=\"https://profiles.wordpress.org/lschuyler/\">Lisa Schuyler</a>, <a href=\"https://profiles.wordpress.org/liuhaibin/\">liuhaibin</a>, <a href=\"https://profiles.wordpress.org/ljharb/\">ljharb</a>, <a href=\"https://profiles.wordpress.org/logig/\">logig</a>, <a href=\"https://profiles.wordpress.org/lucasbustamante/\">lucasbustamante</a>, <a href=\"https://profiles.wordpress.org/lwill/\">luiswill</a>, <a href=\"https://profiles.wordpress.org/lukecavanagh/\">Luke Cavanagh</a>, <a href=\"https://profiles.wordpress.org/happiryu/\">Luke Walczak</a>, <a href=\"https://profiles.wordpress.org/lukestramasonder/\">lukestramasonder</a>, <a href=\"https://profiles.wordpress.org/asif2bd/\">M Asif Rahman</a>, <a href=\"https://profiles.wordpress.org/msafi/\">M.K. Safi</a>, <a href=\"https://profiles.wordpress.org/cloudstek/\">Maarten de Boer</a>, <a href=\"https://profiles.wordpress.org/aladin02dz/\">Mahfoudh Arous</a>, <a href=\"https://profiles.wordpress.org/mailnew2ster/\">mailnew2ster</a>, <a href=\"https://profiles.wordpress.org/manojlovic/\">manojlovic</a>, <a href=\"https://profiles.wordpress.org/targz-1/\">Manuel Schmalstieg</a>, <a href=\"https://profiles.wordpress.org/neodjandre/\">maraki</a>, <a href=\"https://profiles.wordpress.org/iworks/\">Marcin Pietrzak</a>, <a href=\"https://profiles.wordpress.org/marcio-zebedeu/\">Marcio Zebedeu</a>, <a href=\"https://profiles.wordpress.org/pereirinha/\">Marco Pereirinha</a>, <a href=\"https://profiles.wordpress.org/marcoz/\">MarcoZ</a>, <a href=\"https://profiles.wordpress.org/netweblogic/\">Marcus</a>, <a href=\"https://profiles.wordpress.org/mkaz/\">Marcus Kazmierczak</a>, <a href=\"https://profiles.wordpress.org/marekdedic/\">Marek Dědič</a>, <a href=\"https://profiles.wordpress.org/marekhrabe/\">Marek Hrabe</a>, <a href=\"https://profiles.wordpress.org/mariovalney/\">Mario Valney</a>, <a href=\"https://profiles.wordpress.org/clorith/\">Marius Jensen</a>, <a href=\"https://profiles.wordpress.org/machouinard/\">Mark Chouinard</a>, <a href=\"https://profiles.wordpress.org/markjaquith/\">Mark Jaquith</a>, <a href=\"https://profiles.wordpress.org/markparnell/\">Mark Parnell</a>, <a href=\"https://profiles.wordpress.org/mapk/\">Mark Uraine</a>, <a href=\"https://profiles.wordpress.org/markdubois/\">markdubois</a>, <a href=\"https://profiles.wordpress.org/markgoho/\">markgoho</a>, <a href=\"https://profiles.wordpress.org/vindl/\">Marko Andrijasevic</a>, <a href=\"https://profiles.wordpress.org/markoheijnen/\">Marko Heijnen</a>, <a href=\"https://profiles.wordpress.org/markrh/\">MarkRH</a>, <a href=\"https://profiles.wordpress.org/markshep/\">markshep</a>, <a href=\"https://profiles.wordpress.org/markusthiel/\">markusthiel</a>, <a href=\"https://profiles.wordpress.org/martijn-van-der-kooij/\">Martijn van der Kooij</a>, <a href=\"https://profiles.wordpress.org/martychc23/\">martychc23</a>, <a href=\"https://profiles.wordpress.org/marybaum/\">Mary Baum</a>, <a href=\"https://profiles.wordpress.org/matheusfd/\">Matheus Martins</a>, <a href=\"https://profiles.wordpress.org/imath/\">Mathieu Viet</a>, <a href=\"https://profiles.wordpress.org/matveb/\">Matias Ventura</a>, <a href=\"https://profiles.wordpress.org/matjack1/\">matjack1</a>, <a href=\"https://profiles.wordpress.org/webdevmattcrom/\">Matt Cromwell</a>, <a href=\"https://profiles.wordpress.org/gothickgothickorguk/\">Matt Gibson</a>, <a href=\"https://profiles.wordpress.org/matt/\">Matt Mullenweg</a>, <a href=\"https://profiles.wordpress.org/mattrad/\">Matt Radford</a>, <a href=\"https://profiles.wordpress.org/veraxus/\">Matt van Andel</a>, <a href=\"https://profiles.wordpress.org/mattchowning/\">mattchowning</a>, <a href=\"https://profiles.wordpress.org/mboynes/\">Matthew Boynes</a>, <a href=\"https://profiles.wordpress.org/mattheweppelsheimer/\">Matthew Eppelsheimer</a>, <a href=\"https://profiles.wordpress.org/beatpanda/\">Matthew Gerring</a>, <a href=\"https://profiles.wordpress.org/kittmedia/\">Matthias Kittsteiner</a>, <a href=\"https://profiles.wordpress.org/pfefferle/\">Matthias Pfefferle</a>, <a href=\"https://profiles.wordpress.org/matthieumota/\">Matthieu Mota</a>, <a href=\"https://profiles.wordpress.org/mattyrob/\">mattyrob</a>, <a href=\"https://profiles.wordpress.org/maximeculea/\">Maxime Culea</a>, <a href=\"https://profiles.wordpress.org/maxpertici/\">Maxime Pertici</a>, <a href=\"https://profiles.wordpress.org/maxme/\">maxme</a>, <a href=\"https://profiles.wordpress.org/mayankmajeji/\">Mayank Majeji</a>, <a href=\"https://profiles.wordpress.org/mcshane/\">mcshane</a>, <a href=\"https://profiles.wordpress.org/melchoyce/\">Mel Choyce-Dwan</a>, <a href=\"https://profiles.wordpress.org/menakas/\">Menaka S.</a>, <a href=\"https://profiles.wordpress.org/mensmaximus/\">mensmaximus</a>, <a href=\"https://profiles.wordpress.org/metalandcoffee/\">metalandcoffee</a>, <a href=\"https://profiles.wordpress.org/lilmike/\">Michael</a>, <a href=\"https://profiles.wordpress.org/michaelarestad/\">Michael Arestad</a>, <a href=\"https://profiles.wordpress.org/michael-arestad/\">Michael Arestad</a>, <a href=\"https://profiles.wordpress.org/tw2113/\">Michael Beckwith</a>, <a href=\"https://profiles.wordpress.org/mfields/\">Michael Fields</a>, <a href=\"https://profiles.wordpress.org/mnelson4/\">Michael Nelson</a>, <a href=\"https://profiles.wordpress.org/m_butcher/\">Michele Butcher-Jones</a>, <a href=\"https://profiles.wordpress.org/marktimemedia/\">Michelle</a>, <a href=\"https://profiles.wordpress.org/mcsf/\">Miguel Fonseca</a>, <a href=\"https://profiles.wordpress.org/mihdan/\">mihdan</a>, <a href=\"https://profiles.wordpress.org/miinasikk/\">Miina Sikk</a>, <a href=\"https://profiles.wordpress.org/simison/\">Mikael Korpela</a>, <a href=\"https://profiles.wordpress.org/mikaumoto/\">mikaumoto</a>, <a href=\"https://profiles.wordpress.org/mihai2u/\">Mike Crantea</a>, <a href=\"https://profiles.wordpress.org/mdgl/\">Mike Glendinning</a>, <a href=\"https://profiles.wordpress.org/mike-haydon-swo/\">Mike Haydon</a>, <a href=\"https://profiles.wordpress.org/mikeschinkel/\">Mike Schinkel [WPLib Box project lead]</a>, <a href=\"https://profiles.wordpress.org/mikeschroder/\">Mike Schroder</a>, <a href=\"https://profiles.wordpress.org/mikeyarce/\">Mikey Arce</a>, <a href=\"https://profiles.wordpress.org/dimadin/\">Milan Dinić</a>, <a href=\"https://profiles.wordpress.org/milana_cap/\">Milana Cap</a>, <a href=\"https://profiles.wordpress.org/milindmore22/\">Milind More</a>, <a href=\"https://profiles.wordpress.org/mimitips/\">mimi</a>, <a href=\"https://profiles.wordpress.org/mislavjuric/\">mislavjuric</a>, <a href=\"https://profiles.wordpress.org/batmoo/\">Mohammad Jangda</a>, <a href=\"https://profiles.wordpress.org/opurockey/\">Mohammad Rockeybul Alam</a>, <a href=\"https://profiles.wordpress.org/mohsinrasool/\">Mohsin Rasool</a>, <a href=\"https://profiles.wordpress.org/monikarao/\">Monika Rao</a>, <a href=\"https://profiles.wordpress.org/gwendydd/\">Morgan Kay</a>, <a href=\"https://profiles.wordpress.org/mor10/\">Morten Rand-Hendriksen</a>, <a href=\"https://profiles.wordpress.org/man4toman/\">Morteza Geransayeh</a>, <a href=\"https://profiles.wordpress.org/mt8biz/\">moto hachi ( mt8.biz )</a>, <a href=\"https://profiles.wordpress.org/mrgrt/\">mrgrt</a>, <a href=\"https://profiles.wordpress.org/mrmist/\">mrmist</a>, <a href=\"https://profiles.wordpress.org/mrtall/\">mrTall</a>, <a href=\"https://profiles.wordpress.org/msaggiorato/\">msaggiorato</a>, <a href=\"https://profiles.wordpress.org/musamamasood/\">Muhammad Usama Masood</a>, <a href=\"https://profiles.wordpress.org/mukesh27/\">Mukesh Panchal</a>, <a href=\"https://profiles.wordpress.org/munyagu/\">munyagu</a>, <a href=\"https://profiles.wordpress.org/nabilmoqbel/\">Nabil Moqbel</a>, <a href=\"https://profiles.wordpress.org/assassinateur/\">Nadir Seghir</a>, <a href=\"https://profiles.wordpress.org/nfmohit/\">Nahid Ferdous Mohit</a>, <a href=\"https://profiles.wordpress.org/nalininonstopnewsuk/\">Nalini Thakor</a>, <a href=\"https://profiles.wordpress.org/nao/\">Naoko Takano</a>, <a href=\"https://profiles.wordpress.org/narwen/\">narwen</a>, <a href=\"https://profiles.wordpress.org/nateinaction/\">Nate Gay</a>, <a href=\"https://profiles.wordpress.org/nathanrice/\">Nathan Rice</a>, <a href=\"https://profiles.wordpress.org/navidos/\">Navid</a>, <a href=\"https://profiles.wordpress.org/neonkowy/\">neonkowy</a>, <a href=\"https://profiles.wordpress.org/krstarica/\">net</a>, <a href=\"https://profiles.wordpress.org/netpassprodsr/\">netpassprodsr</a>, <a href=\"https://profiles.wordpress.org/nextendweb/\">Nextendweb</a>, <a href=\"https://profiles.wordpress.org/calvin_ngan/\">Ngan Tengyuen</a>, <a href=\"https://profiles.wordpress.org/nickdaugherty/\">Nick Daugherty</a>, <a href=\"https://profiles.wordpress.org/nickylimjj/\">Nicky Lim</a>, <a href=\"https://profiles.wordpress.org/vadimnicolai/\">nicolad</a>, <a href=\"https://profiles.wordpress.org/rahe/\">Nicolas Juen</a>, <a href=\"https://profiles.wordpress.org/nicolaskulka/\">NicolasKulka</a>, <a href=\"https://profiles.wordpress.org/jainnidhi/\">Nidhi Jain</a>, <a href=\"https://profiles.wordpress.org/nielsdeblaauw/\">Niels de Blaauw</a>, <a href=\"https://profiles.wordpress.org/nielslange/\">Niels Lange</a>, <a href=\"https://profiles.wordpress.org/nigrosimone/\">nigro.simone</a>, <a href=\"https://profiles.wordpress.org/ntsekouras/\">Nik Tsekouras</a>, <a href=\"https://profiles.wordpress.org/nikhilbhansi/\">Nikhil Bhansi</a>, <a href=\"https://profiles.wordpress.org/nbachiyski/\">Nikolay Bachiyski</a>, <a href=\"https://profiles.wordpress.org/nilovelez/\">Nilo Velez</a>, <a href=\"https://profiles.wordpress.org/niresh12495/\">Niresh</a>, <a href=\"https://profiles.wordpress.org/nmenescardi/\">nmenescardi</a>, <a href=\"https://profiles.wordpress.org/noahtallen/\">Noah Allen</a>, <a href=\"https://profiles.wordpress.org/numidwasnotavailable/\">NumidWasNotAvailable</a>, <a href=\"https://profiles.wordpress.org/oakesjosh/\">oakesjosh</a>, <a href=\"https://profiles.wordpress.org/obliviousharmony/\">obliviousharmony</a>, <a href=\"https://profiles.wordpress.org/ockham/\">ockham</a>, <a href=\"https://profiles.wordpress.org/oglekler/\">Olga Gleckler</a>, <a href=\"https://profiles.wordpress.org/alshakero/\">Omar Alshaker</a>, <a href=\"https://profiles.wordpress.org/omarreiss/\">Omar Reiss</a>, <a href=\"https://profiles.wordpress.org/onokazu/\">onokazu</a>, <a href=\"https://profiles.wordpress.org/optimizingmatters/\">Optimizing Matters</a>, <a href=\"https://profiles.wordpress.org/ov3rfly/\">Ov3rfly</a>, <a href=\"https://profiles.wordpress.org/ovann86/\">ovann86</a>, <a href=\"https://profiles.wordpress.org/overclokk/\">overclokk</a>, <a href=\"https://profiles.wordpress.org/p_enrique/\">p_enrique</a>, <a href=\"https://profiles.wordpress.org/paaljoachim/\">Paal Joachim Romdahl</a>, <a href=\"https://profiles.wordpress.org/pablohoneyhoney/\">Pablo Honey</a>, <a href=\"https://profiles.wordpress.org/paddy/\">Paddy</a>, <a href=\"https://profiles.wordpress.org/palmiak/\">palmiak</a>, <a href=\"https://profiles.wordpress.org/paresh07/\">Paresh Shinde</a>, <a href=\"https://profiles.wordpress.org/parvand/\">Parvand</a>, <a href=\"https://profiles.wordpress.org/swissspidy/\">Pascal Birchler</a>, <a href=\"https://profiles.wordpress.org/casiepa/\">Pascal Casier</a>, <a href=\"https://profiles.wordpress.org/pbearne/\">Paul Bearne</a>, <a href=\"https://profiles.wordpress.org/pbiron/\">Paul Biron</a>, <a href=\"https://profiles.wordpress.org/pdfernhout/\">Paul Fernhout</a>, <a href=\"https://profiles.wordpress.org/djpaul/\">Paul Gibbs</a>, <a href=\"https://profiles.wordpress.org/figureone/\">Paul Ryan</a>, <a href=\"https://profiles.wordpress.org/paulschreiber/\">Paul Schreiber</a>, <a href=\"https://profiles.wordpress.org/paulstonier/\">Paul Stonier</a>, <a href=\"https://profiles.wordpress.org/pschrottky/\">Paul Von Schrottky</a>, <a href=\"https://profiles.wordpress.org/pavelevap/\">pavelevap</a>, <a href=\"https://profiles.wordpress.org/pedromendonca/\">Pedro Mendon&#231;a</a>, <a href=\"https://profiles.wordpress.org/pentatonicfunk/\">pentatonicfunk</a>, <a href=\"https://profiles.wordpress.org/pputzer/\">pepe</a>, <a href=\"https://profiles.wordpress.org/pessoft/\">Peter \"Pessoft\" Kol&#237;nek</a>, <a href=\"https://profiles.wordpress.org/westi/\">Peter Westwood</a>, <a href=\"https://profiles.wordpress.org/peterwilsoncc/\">Peter Wilson</a>, <a href=\"https://profiles.wordpress.org/pderksen/\">Phil Derksen</a>, <a href=\"https://profiles.wordpress.org/johnstonphilip/\">Phil Johnston</a>, <a href=\"https://profiles.wordpress.org/philipmjackson/\">Philip Jackson</a>, <a href=\"https://profiles.wordpress.org/pierlo/\">Pierre Gordon</a>, <a href=\"https://profiles.wordpress.org/pigdog234/\">pigdog234</a>, <a href=\"https://profiles.wordpress.org/pikamander2/\">pikamander2</a>, <a href=\"https://profiles.wordpress.org/pingram3541/\">pingram</a>, <a href=\"https://profiles.wordpress.org/pionect/\">Pionect</a>, <a href=\"https://profiles.wordpress.org/piyushmca/\">Piyush Patel</a>, <a href=\"https://profiles.wordpress.org/pkarjala/\">pkarjala</a>, <a href=\"https://profiles.wordpress.org/pkvillanueva/\">pkvillanueva</a>, <a href=\"https://profiles.wordpress.org/pmbaldha/\">Prashant Baldha</a>, <a href=\"https://profiles.wordpress.org/pratik028/\">pratik028</a>, <a href=\"https://profiles.wordpress.org/pravinparmar2404/\">Pravin Parmar</a>, <a href=\"https://profiles.wordpress.org/presskopp/\">Presskopp</a>, <a href=\"https://profiles.wordpress.org/presslabs/\">Presslabs</a>, <a href=\"https://profiles.wordpress.org/priyankkpatel/\">Priyank Patel</a>, <a href=\"https://profiles.wordpress.org/priyomukul/\">Priyo Mukul</a>, <a href=\"https://profiles.wordpress.org/prografika/\">ProGrafika</a>, <a href=\"https://profiles.wordpress.org/programmin/\">programmin</a>, <a href=\"https://profiles.wordpress.org/puneetsahalot/\">Puneet Sahalot</a>, <a href=\"https://profiles.wordpress.org/punitsoftac/\">punitsoftac</a>, <a href=\"https://profiles.wordpress.org/pvogel2/\">pvogel2</a>, <a href=\"https://profiles.wordpress.org/r-a-y/\">r-a-y</a>, <a href=\"https://profiles.wordpress.org/raajtram/\">Raaj Trambadia</a>, <a href=\"https://profiles.wordpress.org/larrach/\">Rachel Peter</a>, <a href=\"https://profiles.wordpress.org/raineorshine/\">raine</a>, <a href=\"https://profiles.wordpress.org/rajeshsingh520/\">rajeshsingh520</a>, <a href=\"https://profiles.wordpress.org/superpoincare/\">Ramanan</a>, <a href=\"https://profiles.wordpress.org/ramiy/\">Rami Yushuvaev</a>, <a href=\"https://profiles.wordpress.org/ravanh/\">RavanH</a>, <a href=\"https://profiles.wordpress.org/ravatparmar/\">Ravat Parmar</a>, <a href=\"https://profiles.wordpress.org/ravenswd/\">ravenswd</a>, <a href=\"https://profiles.wordpress.org/rawrly/\">rawrly</a>, <a href=\"https://profiles.wordpress.org/rebasaurus/\">rebasaurus</a>, <a href=\"https://profiles.wordpress.org/redsand/\">Red Sand Media Group</a>, <a href=\"https://profiles.wordpress.org/regankhadgi/\">Regan Khadgi</a>, <a href=\"https://profiles.wordpress.org/tabrisrp/\">Remy Perona</a>, <a href=\"https://profiles.wordpress.org/remzicavdar/\">Remzi Cavdar</a>, <a href=\"https://profiles.wordpress.org/renathoc/\">Renatho</a>, <a href=\"https://profiles.wordpress.org/renggo888/\">renggo888</a>, <a href=\"https://profiles.wordpress.org/retlehs/\">retlehs</a>, <a href=\"https://profiles.wordpress.org/retrofox/\">retrofox</a>, <a href=\"https://profiles.wordpress.org/riaanlom/\">riaanlom</a>, <a href=\"https://profiles.wordpress.org/youknowriad/\">Riad Benguella</a>, <a href=\"https://profiles.wordpress.org/rianrietveld/\">Rian Rietveld</a>, <a href=\"https://profiles.wordpress.org/riasat/\">riasat</a>, <a href=\"https://profiles.wordpress.org/richtabor/\">Rich Tabor</a>, <a href=\"https://profiles.wordpress.org/ringisha/\">Ringisha</a>, <a href=\"https://profiles.wordpress.org/ritterml/\">ritterml</a>, <a href=\"https://profiles.wordpress.org/rnaby/\">Rnaby</a>, <a href=\"https://profiles.wordpress.org/rcutmore/\">Rob Cutmore</a>, <a href=\"https://profiles.wordpress.org/dhrrob/\">Rob Migchels</a>, <a href=\"https://profiles.wordpress.org/rob006/\">rob006</a>, <a href=\"https://profiles.wordpress.org/noisysocks/\">Robert Anderson</a>, <a href=\"https://profiles.wordpress.org/miqrogroove/\">Robert Chapin</a>, <a href=\"https://profiles.wordpress.org/robertpeake/\">Robert Peake</a>, <a href=\"https://profiles.wordpress.org/nullbyte/\">Robert Windisch</a>, <a href=\"https://profiles.wordpress.org/kreppar/\">Rodrigo Arias</a>, <a href=\"https://profiles.wordpress.org/ronalfy/\">Ronald Huereca</a>, <a href=\"https://profiles.wordpress.org/costasovo/\">Rostislav Woln&#253;</a>, <a href=\"https://profiles.wordpress.org/roytanck/\">Roy Tanck</a>, <a href=\"https://profiles.wordpress.org/rtagliento/\">rtagliento</a>, <a href=\"https://profiles.wordpress.org/ruxandra/\">ruxandra</a>, <a href=\"https://profiles.wordpress.org/ryan/\">Ryan Boren</a>, <a href=\"https://profiles.wordpress.org/bookdude13/\">Ryan Fredlund</a>, <a href=\"https://profiles.wordpress.org/ryankienstra/\">Ryan Kienstra</a>, <a href=\"https://profiles.wordpress.org/rmccue/\">Ryan McCue</a>, <a href=\"https://profiles.wordpress.org/welcher/\">Ryan Welcher</a>, <a href=\"https://profiles.wordpress.org/ryotasakamoto/\">Ryota Sakamoto</a>, <a href=\"https://profiles.wordpress.org/ryotsun/\">ryotsun</a>, <a href=\"https://profiles.wordpress.org/soean/\">S&#246;ren Wrede</a>, <a href=\"https://profiles.wordpress.org/sorenbronsted/\">S&#248;ren Br&#248;nsted</a>, <a href=\"https://profiles.wordpress.org/sachittandukar/\">Sachit Tandukar</a>, <a href=\"https://profiles.wordpress.org/sagarjadhav/\">Sagar Jadhav</a>, <a href=\"https://profiles.wordpress.org/sajjad67/\">Sajjad Hossain Sagor</a>, <a href=\"https://profiles.wordpress.org/salcode/\">Sal Ferrarello</a>, <a href=\"https://profiles.wordpress.org/salvatoreformisano/\">Salvatore Formisano</a>, <a href=\"https://profiles.wordpress.org/salvoaranzulla/\">salvoaranzulla</a>, <a href=\"https://profiles.wordpress.org/samful/\">Sam Fullalove</a>, <a href=\"https://profiles.wordpress.org/sswebster/\">Sam Webster</a>, <a href=\"https://profiles.wordpress.org/solarissmoke/\">Samir Shah</a>, <a href=\"https://profiles.wordpress.org/otto42/\">Samuel Wood (Otto)</a>, <a href=\"https://profiles.wordpress.org/samueljseay/\">samueljseay</a>, <a href=\"https://profiles.wordpress.org/pacifika/\">Sander van Dragt</a>, <a href=\"https://profiles.wordpress.org/sanzeeb3/\">Sanjeev Aryal</a>, <a href=\"https://profiles.wordpress.org/progremzion/\">Sanket Mehta</a>, <a href=\"https://profiles.wordpress.org/sarahricker/\">sarahricker</a>, <a href=\"https://profiles.wordpress.org/sathyapulse/\">Sathiyamoorthy V</a>, <a href=\"https://profiles.wordpress.org/sayedwp/\">Sayed Taqui</a>, <a href=\"https://profiles.wordpress.org/scarolan/\">scarolan</a>, <a href=\"https://profiles.wordpress.org/scholdstrom/\">scholdstrom</a>, <a href=\"https://profiles.wordpress.org/sc0ttkclark/\">Scott Kingsley Clark</a>, <a href=\"https://profiles.wordpress.org/coffee2code/\">Scott Reilly</a>, <a href=\"https://profiles.wordpress.org/scottsmith/\">Scott Smith</a>, <a href=\"https://profiles.wordpress.org/wonderboymusic/\">Scott Taylor</a>, <a href=\"https://profiles.wordpress.org/scribu/\">scribu</a>, <a href=\"https://profiles.wordpress.org/scruffian/\">scruffian</a>, <a href=\"https://profiles.wordpress.org/seanchayes/\">Sean Hayes</a>, <a href=\"https://profiles.wordpress.org/seanpaulrasmussen/\">seanpaulrasmussen</a>, <a href=\"https://profiles.wordpress.org/seayou/\">seayou</a>, <a href=\"https://profiles.wordpress.org/senatorman/\">senatorman</a>, <a href=\"https://profiles.wordpress.org/sergeybiryukov/\">Sergey Biryukov</a>, <a href=\"https://profiles.wordpress.org/vjik/\">Sergey Predvoditelev</a>, <a href=\"https://profiles.wordpress.org/yakimun/\">Sergey Yakimov</a>, <a href=\"https://profiles.wordpress.org/sgr33n/\">Sergio de Falco</a>, <a href=\"https://profiles.wordpress.org/sergiomdgomes/\">sergiomdgomes</a>, <a href=\"https://profiles.wordpress.org/functionalrhyme/\">Shannon Smith</a>, <a href=\"https://profiles.wordpress.org/wpshades/\">Shantanu Desai</a>, <a href=\"https://profiles.wordpress.org/shaunandrews/\">shaunandrews</a>, <a href=\"https://profiles.wordpress.org/shooper/\">Shawn Hooper</a>, <a href=\"https://profiles.wordpress.org/shawnz/\">shawnz</a>, <a href=\"https://profiles.wordpress.org/shital-patel/\">Shital Marakana</a>, <a href=\"https://profiles.wordpress.org/shulard/\">shulard</a>, <a href=\"https://profiles.wordpress.org/siliconforks/\">siliconforks</a>, <a href=\"https://profiles.wordpress.org/simonwheatley/\">Simon Wheatley</a>, <a href=\"https://profiles.wordpress.org/simonjanin/\">simonjanin</a>, <a href=\"https://profiles.wordpress.org/sinatrateam/\">sinatrateam</a>, <a href=\"https://profiles.wordpress.org/sjmur/\">sjmur</a>, <a href=\"https://profiles.wordpress.org/skarabeq/\">skarabeq</a>, <a href=\"https://profiles.wordpress.org/skorasaurus/\">skorasaurus</a>, <a href=\"https://profiles.wordpress.org/skoskie/\">skoskie</a>, <a href=\"https://profiles.wordpress.org/slushman/\">slushman</a>, <a href=\"https://profiles.wordpress.org/snapfractalpop/\">snapfractalpop</a>, <a href=\"https://profiles.wordpress.org/seth17/\">SpearsMarketing</a>, <a href=\"https://profiles.wordpress.org/sphakka/\">sphakka</a>, <a href=\"https://profiles.wordpress.org/squarecandy/\">squarecandy</a>, <a href=\"https://profiles.wordpress.org/sreedoap/\">sreedoap</a>, <a href=\"https://profiles.wordpress.org/sstoqnov/\">Stanimir Stoyanov</a>, <a href=\"https://profiles.wordpress.org/garubi/\">Stefano Garuti</a>, <a href=\"https://profiles.wordpress.org/ryokuhi/\">Stefano Minoia</a>, <a href=\"https://profiles.wordpress.org/hypest/\">Stefanos Togoulidis</a>, <a href=\"https://profiles.wordpress.org/sswells/\">Steph Wells</a>, <a href=\"https://profiles.wordpress.org/sabernhardt/\">Stephen Bernhardt</a>, <a href=\"https://profiles.wordpress.org/stephencronin/\">Stephen Cronin</a>, <a href=\"https://profiles.wordpress.org/netweb/\">Stephen Edgar</a>, <a href=\"https://profiles.wordpress.org/dufresnesteven/\">Steve Dufresne</a>, <a href=\"https://profiles.wordpress.org/stevegibson12/\">stevegibson12</a>, <a href=\"https://profiles.wordpress.org/sterndata/\">Steven Stern (sterndata)</a>, <a href=\"https://profiles.wordpress.org/stevenkword/\">Steven Word</a>, <a href=\"https://profiles.wordpress.org/stevenkussmaul/\">stevenkussmaul</a>, <a href=\"https://profiles.wordpress.org/stevenlinx/\">stevenlinx</a>, <a href=\"https://profiles.wordpress.org/stiofansisland/\">Stiofan</a>, <a href=\"https://profiles.wordpress.org/subrataemfluence/\">Subrata Sarkar</a>, <a href=\"https://profiles.wordpress.org/sum1/\">SUM1</a>, <a href=\"https://profiles.wordpress.org/quadthemes/\">Sunny</a>, <a href=\"https://profiles.wordpress.org/sunnyratilal/\">Sunny Ratilal</a>, <a href=\"https://profiles.wordpress.org/sushyant/\">Sushyant Zavarzadeh</a>, <a href=\"https://profiles.wordpress.org/suzylah/\">suzylah</a>, <a href=\"https://profiles.wordpress.org/cybr/\">Sybre Waaijer</a>, <a href=\"https://profiles.wordpress.org/smub/\">Syed Balkhi</a>, <a href=\"https://profiles.wordpress.org/synchro/\">Synchro</a>, <a href=\"https://profiles.wordpress.org/szaqal21/\">szaqal21</a>, <a href=\"https://profiles.wordpress.org/sergioestevao/\">Sérgio Estêvão</a>, <a href=\"https://profiles.wordpress.org/miyauchi/\">Takayuki Miyauchi</a>, <a href=\"https://profiles.wordpress.org/karmatosed/\">Tammie Lister</a>, <a href=\"https://profiles.wordpress.org/tangrufus/\">Tang Rufus</a>, <a href=\"https://profiles.wordpress.org/utz119/\">TeBenachi</a>, <a href=\"https://profiles.wordpress.org/tessawatkinsllc/\">Tessa Watkins LLC</a>, <a href=\"https://profiles.wordpress.org/wildworks/\">Tetsuaki Hamano</a>, <a href=\"https://profiles.wordpress.org/themiked/\">theMikeD</a>, <a href=\"https://profiles.wordpress.org/theolg/\">theolg</a>, <a href=\"https://profiles.wordpress.org/tweetythierry/\">Thierry Muller</a>, <a href=\"https://profiles.wordpress.org/thimalw/\">Thimal Wickremage</a>, <a href=\"https://profiles.wordpress.org/webzunft/\">Thomas M</a>, <a href=\"https://profiles.wordpress.org/tfrommen/\">Thorsten Frommen</a>, <a href=\"https://profiles.wordpress.org/thrijith/\">Thrijith Thankachan</a>, <a href=\"https://profiles.wordpress.org/tiagohillebrandt/\">Tiago Hillebrandt</a>, <a href=\"https://profiles.wordpress.org/tillkruess/\">Till Kr&#252;ss</a>, <a href=\"https://profiles.wordpress.org/sippis/\">Timi Wahalahti</a>, <a href=\"https://profiles.wordpress.org/timothyblynjacobs/\">Timothy Jacobs</a>, <a href=\"https://profiles.wordpress.org/tkama/\">Tkama</a>, <a href=\"https://profiles.wordpress.org/tmdesigned/\">tmdesigned</a>, <a href=\"https://profiles.wordpress.org/tmoore41/\">tmoore41</a>, <a href=\"https://profiles.wordpress.org/tobiasbg/\">TobiasBg</a>, <a href=\"https://profiles.wordpress.org/tobifjellner/\">tobifjellner (Tor-Bjorn Fjellner)</a>, <a href=\"https://profiles.wordpress.org/tofandel/\">Tofandel</a>, <a href=\"https://profiles.wordpress.org/tomdude/\">tomdude</a>, <a href=\"https://profiles.wordpress.org/tferry/\">Tommy Ferry</a>, <a href=\"https://profiles.wordpress.org/starbuck/\">Tony G</a>, <a href=\"https://profiles.wordpress.org/hellofromtonya/\">Tonya Mork</a>, <a href=\"https://profiles.wordpress.org/toro_unit/\">Toro_Unit (Hiroshi Urabe)</a>, <a href=\"https://profiles.wordpress.org/torres126/\">torres126</a>, <a href=\"https://profiles.wordpress.org/zodiac1978/\">Torsten Landsiedel</a>, <a href=\"https://profiles.wordpress.org/toru/\">Toru Miki</a>, <a href=\"https://profiles.wordpress.org/itowhid06/\">Towhidul I. Chowdhury</a>, <a href=\"https://profiles.wordpress.org/travisnorthcutt/\">Travis Northcutt</a>, <a href=\"https://profiles.wordpress.org/treecutter/\">treecutter</a>, <a href=\"https://profiles.wordpress.org/truongwp/\">truongwp</a>, <a href=\"https://profiles.wordpress.org/tsimmons/\">tsimmons</a>, <a href=\"https://profiles.wordpress.org/dinhtungdu/\">Tung Du</a>, <a href=\"https://profiles.wordpress.org/desaiuditd/\">Udit Desai</a>, <a href=\"https://profiles.wordpress.org/grapplerulrich/\">Ulrich</a>, <a href=\"https://profiles.wordpress.org/vagios/\">Vagios Vlachos</a>, <a href=\"https://profiles.wordpress.org/valchovski/\">valchovski</a>, <a href=\"https://profiles.wordpress.org/valentinbora/\">Valentin Bora</a>, <a href=\"https://profiles.wordpress.org/vayu/\">Vayu Robins</a>, <a href=\"https://profiles.wordpress.org/veromary/\">veromary</a>, <a href=\"https://profiles.wordpress.org/szepeviktor/\">Viktor Sz&#233;pe</a>, <a href=\"https://profiles.wordpress.org/vinayakanivase/\">Vinayak Anivase</a>, <a href=\"https://profiles.wordpress.org/vinkla/\">vinkla</a>, <a href=\"https://profiles.wordpress.org/virginienacci/\">virginienacci</a>, <a href=\"https://profiles.wordpress.org/planvova/\">Vladimir</a>, <a href=\"https://profiles.wordpress.org/vabrashev/\">Vladislav Abrashev</a>, <a href=\"https://profiles.wordpress.org/vortfu/\">vortfu</a>, <a href=\"https://profiles.wordpress.org/voyager131/\">voyager131</a>, <a href=\"https://profiles.wordpress.org/vtieu/\">vtieu</a>, <a href=\"https://profiles.wordpress.org/webaware/\">webaware</a>, <a href=\"https://profiles.wordpress.org/westonruter/\">Weston Ruter</a>, <a href=\"https://profiles.wordpress.org/earnjam/\">William Earnhardt</a>, <a href=\"https://profiles.wordpress.org/williampatton/\">williampatton</a>, <a href=\"https://profiles.wordpress.org/planningwrite/\">Winstina</a>, <a href=\"https://profiles.wordpress.org/wittich/\">wittich</a>, <a href=\"https://profiles.wordpress.org/wpdesk/\">wpdesk</a>, <a href=\"https://profiles.wordpress.org/wpdo5ea/\">WPDO</a>, <a href=\"https://profiles.wordpress.org/alexandreb3/\">WPMarmite</a>, <a href=\"https://profiles.wordpress.org/wppinar/\">wppinar</a>, <a href=\"https://profiles.wordpress.org/yahil/\">Yahil Madakiya</a>, <a href=\"https://profiles.wordpress.org/yashrs/\">yashrs</a>, <a href=\"https://profiles.wordpress.org/yoancutillas/\">yoancutillas</a>, <a href=\"https://profiles.wordpress.org/yoavf/\">Yoav Farhi</a>, <a href=\"https://profiles.wordpress.org/yohannp/\">yohannp</a>, <a href=\"https://profiles.wordpress.org/yuhin/\">yuhin</a>, <a href=\"https://profiles.wordpress.org/fierevere/\">Yui</a>, <a href=\"https://profiles.wordpress.org/ysalame/\">Yuri Salame</a>, <a href=\"https://profiles.wordpress.org/yvettesonneveld/\">Yvette Sonneveld</a>, <a href=\"https://profiles.wordpress.org/tollmanz/\">Zack Tollman</a>, <a href=\"https://profiles.wordpress.org/zaheerahmad/\">zaheerahmad</a>, <a href=\"https://profiles.wordpress.org/zakkath/\">zakkath</a>, <a href=\"https://profiles.wordpress.org/zebulan/\">Zebulan Stanphill</a>, <a href=\"https://profiles.wordpress.org/zieladam/\">zieladam</a>, and <a href=\"https://profiles.wordpress.org/chesio/\">Česlav Przywara</a>.\n\n\n\n<p>&nbsp;</p>\n\n\n\n<p>Many thanks to all of the community volunteers who contribute in the&nbsp;<a href=\"https://wordpress.org/support/\">support forums</a>. They answer questions from people across the world, whether they are using WordPress for the first time or since the first release. These releases are more successful for their efforts!</p>\n\n\n\n<p>Finally, thanks to all the community translators who worked on WordPress 5.5. Their efforts bring WordPress fully translated to&nbsp;46 languages at release time, with more on the way.</p>\n\n\n\n<p>If you want to learn more about volunteering with WordPress, check out&nbsp;<a href=\"https://make.wordpress.org/\">Make WordPress</a>&nbsp;or the&nbsp;<a href=\"https://make.wordpress.org/core/\">core development blog</a>.</p>\n</div>\n\n\n\n<div class=\"wp-block-column\" style=\"flex-basis:2%\"></div>\n</div>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"8799\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:9;a:6:{s:4:\"data\";s:63:\"\n		\n		\n		\n		\n		\n				\n		\n		\n		\n\n					\n										\n					\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"WordPress 5.5 Release Candidate 2\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:69:\"https://wordpress.org/news/2020/08/wordpress-5-5-release-candidate-2/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 04 Aug 2020 19:12:30 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:3:{i:0;a:5:{s:4:\"data\";s:11:\"Development\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:3:\"5.5\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=8764\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:420:\"The second release candidate for WordPress 5.5 is here! WordPress 5.5 is slated for release&#160;on&#160;August 11, 2020, but we need&#160;your&#160;help to get there—if you haven’t tried 5.5 yet,&#160;now is the time! You can test the WordPress 5.5 release candidate in two ways: Try the&#160;WordPress Beta Tester&#160;plugin (choose the “bleeding edge nightlies” option) Or&#160;download the release [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jake Spurlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:2503:\"\n<p>The second release candidate for WordPress 5.5 is here!</p>\n\n\n\n<p>WordPress 5.5 is slated for release&nbsp;on&nbsp;<strong>August 11, 2020</strong>, but we need&nbsp;<em>your</em>&nbsp;help to get there—if you haven’t tried 5.5 yet,&nbsp;now is the time!</p>\n\n\n\n<p>You can test the WordPress 5.5 release candidate in two ways:</p>\n\n\n\n<ul><li>Try the&nbsp;<a href=\"https://wordpress.org/plugins/wordpress-beta-tester/\">WordPress Beta Tester</a>&nbsp;plugin (choose the “bleeding edge nightlies” option)</li><li>Or&nbsp;<a href=\"https://wordpress.org/wordpress-5.5-RC2.zip\">download the release candidate here (zip)</a>.</li></ul>\n\n\n\n<p>Thank you to all of the contributors who tested the&nbsp;Beta releases and gave feedback. Testing for bugs is a critical part of polishing every release and a great way to contribute to WordPress.</p>\n\n\n\n<h2>Plugin and Theme Developers</h2>\n\n\n\n<p>Please test your plugins and themes against WordPress 5.5 and update the&nbsp;<em>Tested up to</em>&nbsp;version in the readme file to 5.5. If you find compatibility problems, please be sure to post to the&nbsp;<a href=\"https://wordpress.org/support/forum/alphabeta/\">support forums</a>,&nbsp;so those can be figured out before the final release.</p>\n\n\n\n<p>For a more detailed breakdown of the changes included in WordPress 5.5, check out the <a href=\"https://wordpress.org/news/2020/07/wordpress-5-5-beta-1/\">WordPress 5.5 beta 1 post</a>. The&nbsp;<a href=\"https://make.wordpress.org/core/2020/07/30/wordpress-5-5-field-guide/\">WordPress 5.5 Field Guide</a>&nbsp;is also out! It’s your source for details on all the major changes.</p>\n\n\n\n<h2>How to Help</h2>\n\n\n\n<p>Do you speak a language other than English?&nbsp;<a href=\"https://translate.wordpress.org/projects/wp/dev\">Help us translate WordPress into more than 100 languages!</a>&nbsp;This release also marks the&nbsp;<a href=\"https://make.wordpress.org/polyglots/handbook/glossary/#hard-freeze\">hard string freeze</a>&nbsp;point of the 5.5 release schedule.</p>\n\n\n\n<p><em><strong>If you think you’ve found a bug</strong>, you can post to the&nbsp;<a href=\"https://wordpress.org/support/forum/alphabeta\">Alpha/Beta area</a>&nbsp;in the support forums. We’d love to hear from you! If you’re comfortable writing a reproducible bug report,&nbsp;<a href=\"https://make.wordpress.org/core/reports/\">fill one on WordPress Trac</a>, where you can also find&nbsp;<a href=\"https://core.trac.wordpress.org/tickets/major\">a list of known bugs</a>.</em></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"8764\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}s:27:\"http://www.w3.org/2005/Atom\";a:1:{s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:4:\"href\";s:32:\"https://wordpress.org/news/feed/\";s:3:\"rel\";s:4:\"self\";s:4:\"type\";s:19:\"application/rss+xml\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:44:\"http://purl.org/rss/1.0/modules/syndication/\";a:2:{s:12:\"updatePeriod\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"\n	hourly	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:15:\"updateFrequency\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"\n	1	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:4:\"site\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"14607090\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:9:{s:6:\"server\";s:5:\"nginx\";s:4:\"date\";s:29:\"Mon, 02 Nov 2020 05:09:17 GMT\";s:12:\"content-type\";s:34:\"application/rss+xml; charset=UTF-8\";s:25:\"strict-transport-security\";s:11:\"max-age=360\";s:6:\"x-olaf\";s:3:\"⛄\";s:13:\"last-modified\";s:29:\"Sat, 31 Oct 2020 00:09:09 GMT\";s:4:\"link\";s:63:\"<https://wordpress.org/news/wp-json/>; rel=\"https://api.w.org/\"\";s:15:\"x-frame-options\";s:10:\"SAMEORIGIN\";s:4:\"x-nc\";s:9:\"HIT ord 2\";}}s:5:\"build\";s:14:\"20201023083750\";}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(3344, '_transient_timeout_feed_mod_9bbd59226dc36b9b26cd43f15694c5c3', '1604336960', 'no'),
(3345, '_transient_feed_mod_9bbd59226dc36b9b26cd43f15694c5c3', '1604293760', 'no'),
(3346, '_transient_timeout_dash_v2_88ae138922fe95674369b1cb3d215a2b', '1604336971', 'no'),
(3347, '_transient_dash_v2_88ae138922fe95674369b1cb3d215a2b', '<div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'https://wordpress.org/news/2020/10/wordpress-5-5-3-maintenance-release/\'>WordPress 5.5.3 Maintenance Release</a></li></ul></div><div class=\"rss-widget\"><p><strong>RSS Error:</strong> WP HTTP Error: cURL error 28: Operation timed out after 10007 milliseconds with 48857 bytes received</p></div>', 'no'),
(3400, '_transient_timeout_wc_tracks_blog_details', '1604386198', 'no'),
(3401, '_transient_wc_tracks_blog_details', 'a:4:{s:3:\"url\";s:25:\"http://localhost/eshopper\";s:9:\"blog_lang\";s:5:\"en_US\";s:7:\"blog_id\";N;s:14:\"products_count\";s:2:\"18\";}', 'no'),
(3447, '_site_transient_timeout_php_check_78e1776a2900a8656cebe7d7ea2a07cc', '1604911378', 'no'),
(3448, '_site_transient_php_check_78e1776a2900a8656cebe7d7ea2a07cc', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(3475, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1604307937;s:7:\"checked\";a:11:{s:48:\"woocommerce-ajax-filters/woocommerce-filters.php\";s:7:\"1.5.1.6\";s:41:\"advanced-custom-fields-pro-master/acf.php\";s:5:\"5.8.7\";s:19:\"akismet/akismet.php\";s:5:\"4.1.3\";s:53:\"facebook-for-woocommerce/facebook-for-woocommerce.php\";s:5:\"2.0.4\";s:59:\"kliken-marketing-for-google/kliken-marketing-for-google.php\";s:5:\"1.0.4\";s:9:\"hello.php\";s:5:\"1.7.2\";s:51:\"mailchimp-for-woocommerce/mailchimp-woocommerce.php\";s:5:\"2.4.7\";s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";s:5:\"3.1.3\";s:47:\"show-current-template/show-current-template.php\";s:5:\"0.3.4\";s:27:\"woocommerce/woocommerce.php\";s:5:\"4.5.2\";s:41:\"wordpress-importer/wordpress-importer.php\";s:3:\"0.7\";}s:8:\"response\";a:7:{s:48:\"woocommerce-ajax-filters/woocommerce-filters.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:38:\"w.org/plugins/woocommerce-ajax-filters\";s:4:\"slug\";s:24:\"woocommerce-ajax-filters\";s:6:\"plugin\";s:48:\"woocommerce-ajax-filters/woocommerce-filters.php\";s:11:\"new_version\";s:7:\"1.5.1.7\";s:3:\"url\";s:55:\"https://wordpress.org/plugins/woocommerce-ajax-filters/\";s:7:\"package\";s:75:\"https://downloads.wordpress.org/plugin/woocommerce-ajax-filters.1.5.1.7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:77:\"https://ps.w.org/woocommerce-ajax-filters/assets/icon-256x256.png?rev=1720711\";s:2:\"1x\";s:77:\"https://ps.w.org/woocommerce-ajax-filters/assets/icon-128x128.png?rev=1720711\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:79:\"https://ps.w.org/woocommerce-ajax-filters/assets/banner-772x250.png?rev=1720711\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.5.3\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.7\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.5.3\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:53:\"facebook-for-woocommerce/facebook-for-woocommerce.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:38:\"w.org/plugins/facebook-for-woocommerce\";s:4:\"slug\";s:24:\"facebook-for-woocommerce\";s:6:\"plugin\";s:53:\"facebook-for-woocommerce/facebook-for-woocommerce.php\";s:11:\"new_version\";s:5:\"2.1.3\";s:3:\"url\";s:55:\"https://wordpress.org/plugins/facebook-for-woocommerce/\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/plugin/facebook-for-woocommerce.2.1.3.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:77:\"https://ps.w.org/facebook-for-woocommerce/assets/icon-256x256.png?rev=2040223\";s:2:\"1x\";s:69:\"https://ps.w.org/facebook-for-woocommerce/assets/icon.svg?rev=2040223\";s:3:\"svg\";s:69:\"https://ps.w.org/facebook-for-woocommerce/assets/icon.svg?rev=2040223\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.5.3\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:59:\"kliken-marketing-for-google/kliken-marketing-for-google.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:41:\"w.org/plugins/kliken-marketing-for-google\";s:4:\"slug\";s:27:\"kliken-marketing-for-google\";s:6:\"plugin\";s:59:\"kliken-marketing-for-google/kliken-marketing-for-google.php\";s:11:\"new_version\";s:5:\"1.0.6\";s:3:\"url\";s:58:\"https://wordpress.org/plugins/kliken-marketing-for-google/\";s:7:\"package\";s:76:\"https://downloads.wordpress.org/plugin/kliken-marketing-for-google.1.0.6.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:72:\"https://ps.w.org/kliken-marketing-for-google/assets/icon.svg?rev=2246875\";s:3:\"svg\";s:72:\"https://ps.w.org/kliken-marketing-for-google/assets/icon.svg?rev=2246875\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:83:\"https://ps.w.org/kliken-marketing-for-google/assets/banner-1544x500.png?rev=2384650\";s:2:\"1x\";s:82:\"https://ps.w.org/kliken-marketing-for-google/assets/banner-772x250.png?rev=2384650\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.5.3\";s:12:\"requires_php\";s:3:\"5.6\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:35:\"w.org/plugins/regenerate-thumbnails\";s:4:\"slug\";s:21:\"regenerate-thumbnails\";s:6:\"plugin\";s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";s:11:\"new_version\";s:5:\"3.1.4\";s:3:\"url\";s:52:\"https://wordpress.org/plugins/regenerate-thumbnails/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/regenerate-thumbnails.3.1.4.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:74:\"https://ps.w.org/regenerate-thumbnails/assets/icon-128x128.png?rev=1753390\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:77:\"https://ps.w.org/regenerate-thumbnails/assets/banner-1544x500.jpg?rev=1753390\";s:2:\"1x\";s:76:\"https://ps.w.org/regenerate-thumbnails/assets/banner-772x250.jpg?rev=1753390\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.4.4\";s:12:\"requires_php\";s:5:\"5.2.4\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"4.6.1\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.4.6.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=2366418\";s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=2366418\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=2366418\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=2366418\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.5.3\";s:12:\"requires_php\";s:3:\"7.0\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:41:\"advanced-custom-fields-pro-master/acf.php\";O:8:\"stdClass\":8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:41:\"advanced-custom-fields-pro-master/acf.php\";s:11:\"new_version\";s:5:\"5.9.2\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:5:\"5.5.1\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:4:{s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}s:51:\"mailchimp-for-woocommerce/mailchimp-woocommerce.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:39:\"w.org/plugins/mailchimp-for-woocommerce\";s:4:\"slug\";s:25:\"mailchimp-for-woocommerce\";s:6:\"plugin\";s:51:\"mailchimp-for-woocommerce/mailchimp-woocommerce.php\";s:11:\"new_version\";s:5:\"2.4.7\";s:3:\"url\";s:56:\"https://wordpress.org/plugins/mailchimp-for-woocommerce/\";s:7:\"package\";s:74:\"https://downloads.wordpress.org/plugin/mailchimp-for-woocommerce.2.4.7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/mailchimp-for-woocommerce/assets/icon-256x256.png?rev=1509501\";s:2:\"1x\";s:78:\"https://ps.w.org/mailchimp-for-woocommerce/assets/icon-256x256.png?rev=1509501\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:81:\"https://ps.w.org/mailchimp-for-woocommerce/assets/banner-1544x500.png?rev=1950415\";s:2:\"1x\";s:80:\"https://ps.w.org/mailchimp-for-woocommerce/assets/banner-772x250.jpg?rev=1950415\";}s:11:\"banners_rtl\";a:0:{}}s:47:\"show-current-template/show-current-template.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:35:\"w.org/plugins/show-current-template\";s:4:\"slug\";s:21:\"show-current-template\";s:6:\"plugin\";s:47:\"show-current-template/show-current-template.php\";s:11:\"new_version\";s:5:\"0.3.4\";s:3:\"url\";s:52:\"https://wordpress.org/plugins/show-current-template/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/show-current-template.0.3.4.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:73:\"https://ps.w.org/show-current-template/assets/icon-256x256.png?rev=976031\";s:2:\"1x\";s:65:\"https://ps.w.org/show-current-template/assets/icon.svg?rev=976031\";s:3:\"svg\";s:65:\"https://ps.w.org/show-current-template/assets/icon.svg?rev=976031\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}}s:41:\"wordpress-importer/wordpress-importer.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:32:\"w.org/plugins/wordpress-importer\";s:4:\"slug\";s:18:\"wordpress-importer\";s:6:\"plugin\";s:41:\"wordpress-importer/wordpress-importer.php\";s:11:\"new_version\";s:3:\"0.7\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/wordpress-importer/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/wordpress-importer.0.7.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:71:\"https://ps.w.org/wordpress-importer/assets/icon-256x256.png?rev=1908375\";s:2:\"1x\";s:63:\"https://ps.w.org/wordpress-importer/assets/icon.svg?rev=1908375\";s:3:\"svg\";s:63:\"https://ps.w.org/wordpress-importer/assets/icon.svg?rev=1908375\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:72:\"https://ps.w.org/wordpress-importer/assets/banner-772x250.png?rev=547654\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(3571, '_transient_timeout_woocommerce_admin_low_out_of_stock_count', '1604323753', 'no'),
(3572, '_transient_woocommerce_admin_low_out_of_stock_count', '0', 'no'),
(3574, '_site_transient_timeout_theme_roots', '1604321964', 'no'),
(3575, '_site_transient_theme_roots', 'a:2:{s:8:\"eshopper\";s:7:\"/themes\";s:13:\"eshopper_html\";s:7:\"/themes\";}', 'no'),
(3576, '_transient_timeout_wc_onboarding_themes', '1604406564', 'no'),
(3577, '_transient_wc_onboarding_themes', 'a:1:{s:8:\"eshopper\";a:6:{s:4:\"slug\";s:8:\"eshopper\";s:5:\"title\";s:8:\"echopper\";s:5:\"price\";s:4:\"0.00\";s:12:\"is_installed\";b:1;s:5:\"image\";s:67:\"http://localhost/eshopper/wp-content/themes/eshopper/screenshot.jpg\";s:23:\"has_woocommerce_support\";b:1;}}', 'no'),
(3584, '_transient_wc_count_comments', 'O:8:\"stdClass\":7:{s:14:\"total_comments\";i:3;s:3:\"all\";i:3;s:8:\"approved\";s:1:\"3\";s:5:\"trash\";s:1:\"9\";s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:12:\"post-trashed\";i:0;}', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_wp_attached_file', 'woocommerce-placeholder.png'),
(4, 5, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:27:\"woocommerce-placeholder.png\";s:5:\"sizes\";a:7:{s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:37:\"woocommerce-placeholder-1024x1024.png\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-600x600.png\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:35:\"woocommerce-placeholder-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(89, 18, '_sku', 'woo-vneck-tee'),
(90, 18, '_sale_price_dates_from', ''),
(91, 18, '_sale_price_dates_to', ''),
(92, 18, 'total_sales', '0'),
(93, 18, '_tax_status', 'taxable'),
(94, 18, '_tax_class', ''),
(95, 18, '_manage_stock', 'no'),
(96, 18, '_backorders', 'no'),
(97, 18, '_low_stock_amount', ''),
(98, 18, '_sold_individually', 'no'),
(99, 18, '_weight', ''),
(100, 18, '_length', ''),
(101, 18, '_width', ''),
(102, 18, '_height', ''),
(103, 18, '_upsell_ids', 'a:0:{}'),
(104, 18, '_crosssell_ids', 'a:0:{}'),
(105, 18, '_purchase_note', ''),
(106, 18, '_default_attributes', 'a:0:{}'),
(107, 18, '_virtual', 'no'),
(108, 18, '_downloadable', 'no'),
(109, 18, '_product_image_gallery', '32,33'),
(110, 18, '_download_limit', '0'),
(111, 18, '_download_expiry', '0'),
(112, 18, '_stock', ''),
(113, 18, '_stock_status', 'instock'),
(114, 18, '_wc_average_rating', '0'),
(115, 18, '_wc_rating_count', 'a:0:{}'),
(116, 18, '_wc_review_count', '0'),
(117, 18, '_downloadable_files', 'a:0:{}'),
(118, 18, '_product_attributes', 'a:2:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:1;}s:7:\"pa_size\";a:6:{s:4:\"name\";s:7:\"pa_size\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:1;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:1;}}'),
(119, 18, '_product_version', '3.5.3'),
(120, 18, '_thumbnail_id', '31'),
(121, 18, '_price', '15'),
(122, 18, '_price', '20'),
(123, 18, '_regular_price', ''),
(124, 18, '_sale_price', ''),
(125, 19, '_sku', 'woo-hoodie'),
(126, 19, '_sale_price_dates_from', ''),
(127, 19, '_sale_price_dates_to', ''),
(128, 19, 'total_sales', '0'),
(129, 19, '_tax_status', 'taxable'),
(130, 19, '_tax_class', ''),
(131, 19, '_manage_stock', 'no'),
(132, 19, '_backorders', 'no'),
(133, 19, '_low_stock_amount', ''),
(134, 19, '_sold_individually', 'no'),
(135, 19, '_weight', ''),
(136, 19, '_length', ''),
(137, 19, '_width', ''),
(138, 19, '_height', ''),
(139, 19, '_upsell_ids', 'a:0:{}'),
(140, 19, '_crosssell_ids', 'a:0:{}'),
(141, 19, '_purchase_note', ''),
(142, 19, '_default_attributes', 'a:0:{}'),
(143, 19, '_virtual', 'no'),
(144, 19, '_downloadable', 'no'),
(145, 19, '_product_image_gallery', '35,36,37'),
(146, 19, '_download_limit', '0'),
(147, 19, '_download_expiry', '0'),
(148, 19, '_stock', ''),
(149, 19, '_stock_status', 'instock'),
(150, 19, '_wc_average_rating', '0'),
(151, 19, '_wc_rating_count', 'a:0:{}'),
(152, 19, '_wc_review_count', '0'),
(153, 19, '_downloadable_files', 'a:0:{}'),
(154, 19, '_product_attributes', 'a:2:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:1;}s:4:\"logo\";a:6:{s:4:\"name\";s:4:\"Logo\";s:5:\"value\";s:8:\"Yes | No\";s:8:\"position\";i:1;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:0;}}'),
(155, 19, '_product_version', '3.5.3'),
(156, 19, '_thumbnail_id', '34'),
(157, 19, '_price', '42'),
(158, 19, '_price', '45'),
(159, 19, '_regular_price', ''),
(160, 19, '_sale_price', ''),
(161, 20, '_sku', 'woo-hoodie-with-logo'),
(162, 20, '_regular_price', '45'),
(163, 20, '_sale_price', ''),
(164, 20, '_sale_price_dates_from', ''),
(165, 20, '_sale_price_dates_to', ''),
(166, 20, 'total_sales', '0'),
(167, 20, '_tax_status', 'taxable'),
(168, 20, '_tax_class', ''),
(169, 20, '_manage_stock', 'no'),
(170, 20, '_backorders', 'no'),
(171, 20, '_low_stock_amount', ''),
(172, 20, '_sold_individually', 'no'),
(173, 20, '_weight', ''),
(174, 20, '_length', ''),
(175, 20, '_width', ''),
(176, 20, '_height', ''),
(177, 20, '_upsell_ids', 'a:0:{}'),
(178, 20, '_crosssell_ids', 'a:0:{}'),
(179, 20, '_purchase_note', ''),
(180, 20, '_default_attributes', 'a:0:{}'),
(181, 20, '_virtual', 'no'),
(182, 20, '_downloadable', 'no'),
(183, 20, '_product_image_gallery', ''),
(184, 20, '_download_limit', '0'),
(185, 20, '_download_expiry', '0'),
(186, 20, '_stock', ''),
(187, 20, '_stock_status', 'instock'),
(188, 20, '_wc_average_rating', '0'),
(189, 20, '_wc_rating_count', 'a:0:{}'),
(190, 20, '_wc_review_count', '0'),
(191, 20, '_downloadable_files', 'a:0:{}'),
(192, 20, '_product_attributes', 'a:1:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(193, 20, '_product_version', '3.5.3'),
(194, 20, '_price', '45'),
(195, 20, '_thumbnail_id', '37'),
(196, 21, '_sku', 'woo-tshirt'),
(197, 21, '_regular_price', '18'),
(198, 21, '_sale_price', ''),
(199, 21, '_sale_price_dates_from', ''),
(200, 21, '_sale_price_dates_to', ''),
(201, 21, 'total_sales', '0'),
(202, 21, '_tax_status', 'taxable'),
(203, 21, '_tax_class', ''),
(204, 21, '_manage_stock', 'no'),
(205, 21, '_backorders', 'no'),
(206, 21, '_low_stock_amount', ''),
(207, 21, '_sold_individually', 'no'),
(208, 21, '_weight', ''),
(209, 21, '_length', ''),
(210, 21, '_width', ''),
(211, 21, '_height', ''),
(212, 21, '_upsell_ids', 'a:0:{}'),
(213, 21, '_crosssell_ids', 'a:0:{}'),
(214, 21, '_purchase_note', ''),
(215, 21, '_default_attributes', 'a:0:{}'),
(216, 21, '_virtual', 'no'),
(217, 21, '_downloadable', 'no'),
(218, 21, '_product_image_gallery', ''),
(219, 21, '_download_limit', '0'),
(220, 21, '_download_expiry', '0'),
(221, 21, '_stock', ''),
(222, 21, '_stock_status', 'instock'),
(223, 21, '_wc_average_rating', '0'),
(224, 21, '_wc_rating_count', 'a:0:{}'),
(225, 21, '_wc_review_count', '0'),
(226, 21, '_downloadable_files', 'a:0:{}'),
(227, 21, '_product_attributes', 'a:1:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(228, 21, '_product_version', '4.5.2'),
(229, 21, '_price', '18'),
(231, 22, '_sku', 'woo-beanie'),
(232, 22, '_regular_price', '20'),
(233, 22, '_sale_price', '18'),
(234, 22, '_sale_price_dates_from', ''),
(235, 22, '_sale_price_dates_to', ''),
(236, 22, 'total_sales', '0'),
(237, 22, '_tax_status', 'taxable'),
(238, 22, '_tax_class', ''),
(239, 22, '_manage_stock', 'no'),
(240, 22, '_backorders', 'no'),
(241, 22, '_low_stock_amount', ''),
(242, 22, '_sold_individually', 'no'),
(243, 22, '_weight', ''),
(244, 22, '_length', ''),
(245, 22, '_width', ''),
(246, 22, '_height', ''),
(247, 22, '_upsell_ids', 'a:0:{}'),
(248, 22, '_crosssell_ids', 'a:0:{}'),
(249, 22, '_purchase_note', ''),
(250, 22, '_default_attributes', 'a:0:{}'),
(251, 22, '_virtual', 'no'),
(252, 22, '_downloadable', 'no'),
(253, 22, '_product_image_gallery', '40,41,42,43,44'),
(254, 22, '_download_limit', '0'),
(255, 22, '_download_expiry', '0'),
(256, 22, '_stock', NULL),
(257, 22, '_stock_status', 'instock'),
(258, 22, '_wc_average_rating', '0'),
(259, 22, '_wc_rating_count', 'a:0:{}'),
(260, 22, '_wc_review_count', '0'),
(261, 22, '_downloadable_files', 'a:0:{}'),
(262, 22, '_product_attributes', 'a:1:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"0\";s:10:\"is_visible\";s:1:\"1\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}}'),
(263, 22, '_product_version', '4.5.2'),
(264, 22, '_price', '18'),
(265, 22, '_thumbnail_id', '39'),
(266, 11, '_sku', 'woo-belt'),
(267, 11, '_regular_price', '65'),
(268, 11, '_sale_price', '55'),
(269, 11, '_sale_price_dates_from', ''),
(270, 11, '_sale_price_dates_to', ''),
(271, 11, 'total_sales', '0'),
(272, 11, '_tax_status', 'taxable'),
(273, 11, '_tax_class', ''),
(274, 11, '_manage_stock', 'no'),
(275, 11, '_backorders', 'no'),
(276, 11, '_low_stock_amount', ''),
(277, 11, '_sold_individually', 'no'),
(278, 11, '_weight', ''),
(279, 11, '_length', ''),
(280, 11, '_width', ''),
(281, 11, '_height', ''),
(282, 11, '_upsell_ids', 'a:0:{}'),
(283, 11, '_crosssell_ids', 'a:0:{}'),
(284, 11, '_purchase_note', ''),
(285, 11, '_default_attributes', 'a:0:{}'),
(286, 11, '_virtual', 'no'),
(287, 11, '_downloadable', 'no'),
(288, 11, '_product_image_gallery', ''),
(289, 11, '_download_limit', '0'),
(290, 11, '_download_expiry', '0'),
(291, 11, '_stock', ''),
(292, 11, '_stock_status', 'instock'),
(293, 11, '_wc_average_rating', '0'),
(294, 11, '_wc_rating_count', 'a:0:{}'),
(295, 11, '_wc_review_count', '0'),
(296, 11, '_downloadable_files', 'a:0:{}'),
(297, 11, '_product_attributes', 'a:0:{}'),
(298, 11, '_product_version', '3.5.3'),
(299, 11, '_price', '55'),
(300, 11, '_thumbnail_id', '40'),
(301, 12, '_sku', 'woo-cap'),
(302, 12, '_regular_price', '18'),
(303, 12, '_sale_price', '16'),
(304, 12, '_sale_price_dates_from', ''),
(305, 12, '_sale_price_dates_to', ''),
(306, 12, 'total_sales', '0'),
(307, 12, '_tax_status', 'taxable'),
(308, 12, '_tax_class', ''),
(309, 12, '_manage_stock', 'no'),
(310, 12, '_backorders', 'no'),
(311, 12, '_low_stock_amount', ''),
(312, 12, '_sold_individually', 'no'),
(313, 12, '_weight', ''),
(314, 12, '_length', ''),
(315, 12, '_width', ''),
(316, 12, '_height', ''),
(317, 12, '_upsell_ids', 'a:0:{}'),
(318, 12, '_crosssell_ids', 'a:0:{}'),
(319, 12, '_purchase_note', ''),
(320, 12, '_default_attributes', 'a:0:{}'),
(321, 12, '_virtual', 'no'),
(322, 12, '_downloadable', 'no'),
(323, 12, '_product_image_gallery', ''),
(324, 12, '_download_limit', '0'),
(325, 12, '_download_expiry', '0'),
(326, 12, '_stock', ''),
(327, 12, '_stock_status', 'instock'),
(328, 12, '_wc_average_rating', '0'),
(329, 12, '_wc_rating_count', 'a:0:{}'),
(330, 12, '_wc_review_count', '0'),
(331, 12, '_downloadable_files', 'a:0:{}'),
(332, 12, '_product_attributes', 'a:1:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(333, 12, '_product_version', '4.5.2'),
(334, 12, '_price', '16'),
(335, 12, '_thumbnail_id', '41'),
(336, 13, '_sku', 'woo-sunglasses'),
(337, 13, '_regular_price', '90'),
(338, 13, '_sale_price', ''),
(339, 13, '_sale_price_dates_from', ''),
(340, 13, '_sale_price_dates_to', ''),
(341, 13, 'total_sales', '0'),
(342, 13, '_tax_status', 'taxable'),
(343, 13, '_tax_class', ''),
(344, 13, '_manage_stock', 'no'),
(345, 13, '_backorders', 'no'),
(346, 13, '_low_stock_amount', ''),
(347, 13, '_sold_individually', 'no'),
(348, 13, '_weight', ''),
(349, 13, '_length', ''),
(350, 13, '_width', ''),
(351, 13, '_height', ''),
(352, 13, '_upsell_ids', 'a:0:{}'),
(353, 13, '_crosssell_ids', 'a:0:{}'),
(354, 13, '_purchase_note', ''),
(355, 13, '_default_attributes', 'a:0:{}'),
(356, 13, '_virtual', 'no'),
(357, 13, '_downloadable', 'no'),
(358, 13, '_product_image_gallery', ''),
(359, 13, '_download_limit', '0'),
(360, 13, '_download_expiry', '0'),
(361, 13, '_stock', ''),
(362, 13, '_stock_status', 'instock'),
(363, 13, '_wc_average_rating', '0'),
(364, 13, '_wc_rating_count', 'a:0:{}'),
(365, 13, '_wc_review_count', '0'),
(366, 13, '_downloadable_files', 'a:0:{}'),
(367, 13, '_product_attributes', 'a:0:{}'),
(368, 13, '_product_version', '3.5.3'),
(369, 13, '_price', '90'),
(370, 13, '_thumbnail_id', '42'),
(371, 14, '_sku', 'woo-hoodie-with-pocket'),
(372, 14, '_regular_price', '45'),
(373, 14, '_sale_price', '35'),
(374, 14, '_sale_price_dates_from', ''),
(375, 14, '_sale_price_dates_to', ''),
(376, 14, 'total_sales', '0'),
(377, 14, '_tax_status', 'taxable'),
(378, 14, '_tax_class', ''),
(379, 14, '_manage_stock', 'no'),
(380, 14, '_backorders', 'no'),
(381, 14, '_low_stock_amount', ''),
(382, 14, '_sold_individually', 'no'),
(383, 14, '_weight', ''),
(384, 14, '_length', ''),
(385, 14, '_width', ''),
(386, 14, '_height', ''),
(387, 14, '_upsell_ids', 'a:0:{}'),
(388, 14, '_crosssell_ids', 'a:0:{}'),
(389, 14, '_purchase_note', ''),
(390, 14, '_default_attributes', 'a:0:{}'),
(391, 14, '_virtual', 'no'),
(392, 14, '_downloadable', 'no'),
(393, 14, '_product_image_gallery', ''),
(394, 14, '_download_limit', '0'),
(395, 14, '_download_expiry', '0'),
(396, 14, '_stock', ''),
(397, 14, '_stock_status', 'instock'),
(398, 14, '_wc_average_rating', '0'),
(399, 14, '_wc_rating_count', 'a:0:{}'),
(400, 14, '_wc_review_count', '0'),
(401, 14, '_downloadable_files', 'a:0:{}'),
(402, 14, '_product_attributes', 'a:1:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(403, 14, '_product_version', '3.5.3'),
(404, 14, '_price', '35'),
(405, 14, '_thumbnail_id', '43'),
(406, 15, '_sku', 'woo-hoodie-with-zipper'),
(407, 15, '_regular_price', '45'),
(408, 15, '_sale_price', ''),
(409, 15, '_sale_price_dates_from', ''),
(410, 15, '_sale_price_dates_to', ''),
(411, 15, 'total_sales', '0'),
(412, 15, '_tax_status', 'taxable'),
(413, 15, '_tax_class', ''),
(414, 15, '_manage_stock', 'no'),
(415, 15, '_backorders', 'no'),
(416, 15, '_low_stock_amount', ''),
(417, 15, '_sold_individually', 'no'),
(418, 15, '_weight', ''),
(419, 15, '_length', ''),
(420, 15, '_width', ''),
(421, 15, '_height', ''),
(422, 15, '_upsell_ids', 'a:0:{}'),
(423, 15, '_crosssell_ids', 'a:0:{}'),
(424, 15, '_purchase_note', ''),
(425, 15, '_default_attributes', 'a:0:{}'),
(426, 15, '_virtual', 'no'),
(427, 15, '_downloadable', 'no'),
(428, 15, '_product_image_gallery', ''),
(429, 15, '_download_limit', '0'),
(430, 15, '_download_expiry', '0'),
(431, 15, '_stock', ''),
(432, 15, '_stock_status', 'instock'),
(433, 15, '_wc_average_rating', '0'),
(434, 15, '_wc_rating_count', 'a:0:{}'),
(435, 15, '_wc_review_count', '0'),
(436, 15, '_downloadable_files', 'a:0:{}'),
(437, 15, '_product_attributes', 'a:0:{}'),
(438, 15, '_product_version', '3.5.3'),
(439, 15, '_price', '45'),
(440, 15, '_thumbnail_id', '44'),
(441, 23, '_sku', 'woo-long-sleeve-tee'),
(442, 23, '_regular_price', '25'),
(443, 23, '_sale_price', ''),
(444, 23, '_sale_price_dates_from', ''),
(445, 23, '_sale_price_dates_to', ''),
(446, 23, 'total_sales', '0'),
(447, 23, '_tax_status', 'taxable'),
(448, 23, '_tax_class', ''),
(449, 23, '_manage_stock', 'no'),
(450, 23, '_backorders', 'no'),
(451, 23, '_low_stock_amount', ''),
(452, 23, '_sold_individually', 'no'),
(453, 23, '_weight', ''),
(454, 23, '_length', ''),
(455, 23, '_width', ''),
(456, 23, '_height', ''),
(457, 23, '_upsell_ids', 'a:0:{}'),
(458, 23, '_crosssell_ids', 'a:0:{}'),
(459, 23, '_purchase_note', ''),
(460, 23, '_default_attributes', 'a:0:{}'),
(461, 23, '_virtual', 'no'),
(462, 23, '_downloadable', 'no'),
(463, 23, '_product_image_gallery', ''),
(464, 23, '_download_limit', '0'),
(465, 23, '_download_expiry', '0'),
(466, 23, '_stock', ''),
(467, 23, '_stock_status', 'instock'),
(468, 23, '_wc_average_rating', '0'),
(469, 23, '_wc_rating_count', 'a:0:{}'),
(470, 23, '_wc_review_count', '0'),
(471, 23, '_downloadable_files', 'a:0:{}'),
(472, 23, '_product_attributes', 'a:1:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(473, 23, '_product_version', '3.5.3'),
(474, 23, '_price', '25'),
(475, 23, '_thumbnail_id', '45'),
(476, 24, '_sku', 'woo-polo'),
(477, 24, '_regular_price', '20'),
(478, 24, '_sale_price', ''),
(479, 24, '_sale_price_dates_from', ''),
(480, 24, '_sale_price_dates_to', ''),
(481, 24, 'total_sales', '0'),
(482, 24, '_tax_status', 'taxable'),
(483, 24, '_tax_class', ''),
(484, 24, '_manage_stock', 'no'),
(485, 24, '_backorders', 'no'),
(486, 24, '_low_stock_amount', ''),
(487, 24, '_sold_individually', 'no'),
(488, 24, '_weight', ''),
(489, 24, '_length', ''),
(490, 24, '_width', ''),
(491, 24, '_height', ''),
(492, 24, '_upsell_ids', 'a:0:{}'),
(493, 24, '_crosssell_ids', 'a:0:{}'),
(494, 24, '_purchase_note', ''),
(495, 24, '_default_attributes', 'a:0:{}'),
(496, 24, '_virtual', 'no'),
(497, 24, '_downloadable', 'no'),
(498, 24, '_product_image_gallery', ''),
(499, 24, '_download_limit', '0'),
(500, 24, '_download_expiry', '0'),
(501, 24, '_stock', ''),
(502, 24, '_stock_status', 'instock'),
(503, 24, '_wc_average_rating', '0'),
(504, 24, '_wc_rating_count', 'a:0:{}'),
(505, 24, '_wc_review_count', '0'),
(506, 24, '_downloadable_files', 'a:0:{}'),
(507, 24, '_product_attributes', 'a:1:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(508, 24, '_product_version', '4.5.2'),
(509, 24, '_price', '20'),
(510, 24, '_thumbnail_id', '46'),
(511, 25, '_sku', 'woo-album'),
(512, 25, '_regular_price', '15'),
(513, 25, '_sale_price', ''),
(514, 25, '_sale_price_dates_from', ''),
(515, 25, '_sale_price_dates_to', ''),
(516, 25, 'total_sales', '0'),
(517, 25, '_tax_status', 'taxable'),
(518, 25, '_tax_class', ''),
(519, 25, '_manage_stock', 'no'),
(520, 25, '_backorders', 'no'),
(521, 25, '_low_stock_amount', ''),
(522, 25, '_sold_individually', 'no'),
(523, 25, '_weight', ''),
(524, 25, '_length', ''),
(525, 25, '_width', ''),
(526, 25, '_height', ''),
(527, 25, '_upsell_ids', 'a:0:{}'),
(528, 25, '_crosssell_ids', 'a:0:{}'),
(529, 25, '_purchase_note', ''),
(530, 25, '_default_attributes', 'a:0:{}'),
(531, 25, '_virtual', 'yes'),
(532, 25, '_downloadable', 'yes'),
(533, 25, '_product_image_gallery', ''),
(534, 25, '_download_limit', '1'),
(535, 25, '_download_expiry', '1'),
(536, 25, '_stock', ''),
(537, 25, '_stock_status', 'instock'),
(538, 25, '_wc_average_rating', '0'),
(539, 25, '_wc_rating_count', 'a:0:{}'),
(540, 25, '_wc_review_count', '0'),
(541, 25, '_downloadable_files', 'a:2:{s:36:\"356506a5-cc15-41b9-801b-9104dda1702c\";a:3:{s:2:\"id\";s:36:\"356506a5-cc15-41b9-801b-9104dda1702c\";s:4:\"name\";s:8:\"Single 1\";s:4:\"file\";s:85:\"https://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2017/08/single.jpg\";}s:36:\"18e70c59-59f3-43a3-8525-ce1ea0c12943\";a:3:{s:2:\"id\";s:36:\"18e70c59-59f3-43a3-8525-ce1ea0c12943\";s:4:\"name\";s:8:\"Single 2\";s:4:\"file\";s:84:\"https://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2017/08/album.jpg\";}}'),
(542, 25, '_product_attributes', 'a:0:{}'),
(543, 25, '_product_version', '3.5.3'),
(544, 25, '_price', '15'),
(545, 25, '_thumbnail_id', '47'),
(546, 26, '_sku', 'woo-single'),
(547, 26, '_regular_price', '3'),
(548, 26, '_sale_price', '2'),
(549, 26, '_sale_price_dates_from', ''),
(550, 26, '_sale_price_dates_to', ''),
(551, 26, 'total_sales', '0'),
(552, 26, '_tax_status', 'taxable'),
(553, 26, '_tax_class', ''),
(554, 26, '_manage_stock', 'no'),
(555, 26, '_backorders', 'no'),
(556, 26, '_low_stock_amount', ''),
(557, 26, '_sold_individually', 'no'),
(558, 26, '_weight', ''),
(559, 26, '_length', ''),
(560, 26, '_width', ''),
(561, 26, '_height', ''),
(562, 26, '_upsell_ids', 'a:0:{}'),
(563, 26, '_crosssell_ids', 'a:0:{}'),
(564, 26, '_purchase_note', ''),
(565, 26, '_default_attributes', 'a:0:{}'),
(566, 26, '_virtual', 'yes'),
(567, 26, '_downloadable', 'yes'),
(568, 26, '_product_image_gallery', ''),
(569, 26, '_download_limit', '1'),
(570, 26, '_download_expiry', '1'),
(571, 26, '_stock', ''),
(572, 26, '_stock_status', 'instock'),
(573, 26, '_wc_average_rating', '0'),
(574, 26, '_wc_rating_count', 'a:0:{}'),
(575, 26, '_wc_review_count', '0'),
(576, 26, '_downloadable_files', 'a:1:{s:36:\"a0fdda89-5f0e-440d-93f5-188e12c910d1\";a:3:{s:2:\"id\";s:36:\"a0fdda89-5f0e-440d-93f5-188e12c910d1\";s:4:\"name\";s:6:\"Single\";s:4:\"file\";s:85:\"https://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2017/08/single.jpg\";}}'),
(577, 26, '_product_attributes', 'a:0:{}'),
(578, 26, '_product_version', '4.5.2'),
(579, 26, '_price', '2'),
(580, 26, '_thumbnail_id', '48'),
(581, 27, '_sku', 'woo-vneck-tee-red'),
(582, 27, '_regular_price', '20'),
(583, 27, '_sale_price', ''),
(584, 27, '_sale_price_dates_from', ''),
(585, 27, '_sale_price_dates_to', ''),
(586, 27, 'total_sales', '0'),
(587, 27, '_tax_status', 'taxable'),
(588, 27, '_tax_class', ''),
(589, 27, '_manage_stock', 'no'),
(590, 27, '_backorders', 'no'),
(591, 27, '_low_stock_amount', ''),
(592, 27, '_sold_individually', 'no'),
(593, 27, '_weight', ''),
(594, 27, '_length', ''),
(595, 27, '_width', ''),
(596, 27, '_height', ''),
(597, 27, '_upsell_ids', 'a:0:{}'),
(598, 27, '_crosssell_ids', 'a:0:{}'),
(599, 27, '_purchase_note', ''),
(600, 27, '_default_attributes', 'a:0:{}'),
(601, 27, '_virtual', 'no'),
(602, 27, '_downloadable', 'no'),
(603, 27, '_product_image_gallery', ''),
(604, 27, '_download_limit', '0'),
(605, 27, '_download_expiry', '0'),
(606, 27, '_stock', ''),
(607, 27, '_stock_status', 'instock'),
(608, 27, '_wc_average_rating', '0'),
(609, 27, '_wc_rating_count', 'a:0:{}'),
(610, 27, '_wc_review_count', '0'),
(611, 27, '_downloadable_files', 'a:0:{}'),
(612, 27, '_product_attributes', 'a:0:{}'),
(613, 27, '_product_version', '3.5.3'),
(614, 27, '_price', '20'),
(615, 27, '_variation_description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sagittis orci ac odio dictum tincidunt. Donec ut metus leo. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed luctus, dui eu sagittis sodales, nulla nibh sagittis augue, vel porttitor diam enim non metus. Vestibulum aliquam augue neque. Phasellus tincidunt odio eget ullamcorper efficitur. Cras placerat ut turpis pellentesque vulputate. Nam sed consequat tortor. Curabitur finibus sapien dolor. Ut eleifend tellus nec erat pulvinar dignissim. Nam non arcu purus. Vivamus et massa massa.'),
(616, 27, '_thumbnail_id', '31'),
(617, 27, 'attribute_pa_color', 'red'),
(618, 27, 'attribute_pa_size', ''),
(619, 28, '_sku', 'woo-vneck-tee-green'),
(620, 28, '_regular_price', '20'),
(621, 28, '_sale_price', ''),
(622, 28, '_sale_price_dates_from', ''),
(623, 28, '_sale_price_dates_to', ''),
(624, 28, 'total_sales', '0'),
(625, 28, '_tax_status', 'taxable'),
(626, 28, '_tax_class', ''),
(627, 28, '_manage_stock', 'no'),
(628, 28, '_backorders', 'no'),
(629, 28, '_low_stock_amount', ''),
(630, 28, '_sold_individually', 'no'),
(631, 28, '_weight', ''),
(632, 28, '_length', ''),
(633, 28, '_width', ''),
(634, 28, '_height', ''),
(635, 28, '_upsell_ids', 'a:0:{}'),
(636, 28, '_crosssell_ids', 'a:0:{}'),
(637, 28, '_purchase_note', ''),
(638, 28, '_default_attributes', 'a:0:{}'),
(639, 28, '_virtual', 'no'),
(640, 28, '_downloadable', 'no'),
(641, 28, '_product_image_gallery', ''),
(642, 28, '_download_limit', '0'),
(643, 28, '_download_expiry', '0'),
(644, 28, '_stock', ''),
(645, 28, '_stock_status', 'instock'),
(646, 28, '_wc_average_rating', '0'),
(647, 28, '_wc_rating_count', 'a:0:{}'),
(648, 28, '_wc_review_count', '0'),
(649, 28, '_downloadable_files', 'a:0:{}'),
(650, 28, '_product_attributes', 'a:0:{}'),
(651, 28, '_product_version', '3.5.3'),
(652, 28, '_price', '20'),
(653, 28, '_variation_description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sagittis orci ac odio dictum tincidunt. Donec ut metus leo. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed luctus, dui eu sagittis sodales, nulla nibh sagittis augue, vel porttitor diam enim non metus. Vestibulum aliquam augue neque. Phasellus tincidunt odio eget ullamcorper efficitur. Cras placerat ut turpis pellentesque vulputate. Nam sed consequat tortor. Curabitur finibus sapien dolor. Ut eleifend tellus nec erat pulvinar dignissim. Nam non arcu purus. Vivamus et massa massa.'),
(654, 28, '_thumbnail_id', '32'),
(655, 28, 'attribute_pa_color', 'green'),
(656, 28, 'attribute_pa_size', ''),
(657, 29, '_sku', 'woo-vneck-tee-blue'),
(658, 29, '_regular_price', '15'),
(659, 29, '_sale_price', ''),
(660, 29, '_sale_price_dates_from', ''),
(661, 29, '_sale_price_dates_to', ''),
(662, 29, 'total_sales', '0'),
(663, 29, '_tax_status', 'taxable'),
(664, 29, '_tax_class', ''),
(665, 29, '_manage_stock', 'no'),
(666, 29, '_backorders', 'no'),
(667, 29, '_low_stock_amount', ''),
(668, 29, '_sold_individually', 'no'),
(669, 29, '_weight', ''),
(670, 29, '_length', ''),
(671, 29, '_width', ''),
(672, 29, '_height', ''),
(673, 29, '_upsell_ids', 'a:0:{}'),
(674, 29, '_crosssell_ids', 'a:0:{}'),
(675, 29, '_purchase_note', ''),
(676, 29, '_default_attributes', 'a:0:{}'),
(677, 29, '_virtual', 'no'),
(678, 29, '_downloadable', 'no'),
(679, 29, '_product_image_gallery', ''),
(680, 29, '_download_limit', '0'),
(681, 29, '_download_expiry', '0'),
(682, 29, '_stock', ''),
(683, 29, '_stock_status', 'instock'),
(684, 29, '_wc_average_rating', '0'),
(685, 29, '_wc_rating_count', 'a:0:{}'),
(686, 29, '_wc_review_count', '0'),
(687, 29, '_downloadable_files', 'a:0:{}'),
(688, 29, '_product_attributes', 'a:0:{}'),
(689, 29, '_product_version', '3.5.3'),
(690, 29, '_price', '15'),
(691, 29, '_wpcom_is_markdown', ''),
(692, 29, '_wp_old_slug', 'import-placeholder-for-78'),
(693, 29, '_variation_description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sagittis orci ac odio dictum tincidunt. Donec ut metus leo. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed luctus, dui eu sagittis sodales, nulla nibh sagittis augue, vel porttitor diam enim non metus. Vestibulum aliquam augue neque. Phasellus tincidunt odio eget ullamcorper efficitur. Cras placerat ut turpis pellentesque vulputate. Nam sed consequat tortor. Curabitur finibus sapien dolor. Ut eleifend tellus nec erat pulvinar dignissim. Nam non arcu purus. Vivamus et massa massa.'),
(694, 29, '_thumbnail_id', '33'),
(695, 29, 'attribute_pa_color', 'blue'),
(696, 29, 'attribute_pa_size', ''),
(697, 30, '_sku', 'woo-hoodie-red'),
(698, 30, '_regular_price', '45'),
(699, 30, '_sale_price', '42'),
(700, 30, '_sale_price_dates_from', ''),
(701, 30, '_sale_price_dates_to', ''),
(702, 30, 'total_sales', '0'),
(703, 30, '_tax_status', 'taxable'),
(704, 30, '_tax_class', ''),
(705, 30, '_manage_stock', 'no'),
(706, 30, '_backorders', 'no'),
(707, 30, '_low_stock_amount', ''),
(708, 30, '_sold_individually', 'no'),
(709, 30, '_weight', ''),
(710, 30, '_length', ''),
(711, 30, '_width', ''),
(712, 30, '_height', ''),
(713, 30, '_upsell_ids', 'a:0:{}'),
(714, 30, '_crosssell_ids', 'a:0:{}'),
(715, 30, '_purchase_note', ''),
(716, 30, '_default_attributes', 'a:0:{}'),
(717, 30, '_virtual', 'no'),
(718, 30, '_downloadable', 'no'),
(719, 30, '_product_image_gallery', ''),
(720, 30, '_download_limit', '0'),
(721, 30, '_download_expiry', '0'),
(722, 30, '_stock', ''),
(723, 30, '_stock_status', 'instock'),
(724, 30, '_wc_average_rating', '0'),
(725, 30, '_wc_rating_count', 'a:0:{}'),
(726, 30, '_wc_review_count', '0'),
(727, 30, '_downloadable_files', 'a:0:{}'),
(728, 30, '_product_attributes', 'a:0:{}'),
(729, 30, '_product_version', '3.5.3'),
(730, 30, '_price', '42'),
(731, 30, '_variation_description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sagittis orci ac odio dictum tincidunt. Donec ut metus leo. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed luctus, dui eu sagittis sodales, nulla nibh sagittis augue, vel porttitor diam enim non metus. Vestibulum aliquam augue neque. Phasellus tincidunt odio eget ullamcorper efficitur. Cras placerat ut turpis pellentesque vulputate. Nam sed consequat tortor. Curabitur finibus sapien dolor. Ut eleifend tellus nec erat pulvinar dignissim. Nam non arcu purus. Vivamus et massa massa.'),
(732, 30, '_thumbnail_id', '34'),
(733, 30, 'attribute_pa_color', 'red'),
(734, 30, 'attribute_logo', 'No'),
(735, 31, '_sku', 'woo-hoodie-green'),
(736, 31, '_regular_price', '45'),
(737, 31, '_sale_price', ''),
(738, 31, '_sale_price_dates_from', ''),
(739, 31, '_sale_price_dates_to', ''),
(740, 31, 'total_sales', '0'),
(741, 31, '_tax_status', 'taxable'),
(742, 31, '_tax_class', ''),
(743, 31, '_manage_stock', 'no'),
(744, 31, '_backorders', 'no'),
(745, 31, '_low_stock_amount', ''),
(746, 31, '_sold_individually', 'no'),
(747, 31, '_weight', ''),
(748, 31, '_length', ''),
(749, 31, '_width', ''),
(750, 31, '_height', ''),
(751, 31, '_upsell_ids', 'a:0:{}'),
(752, 31, '_crosssell_ids', 'a:0:{}'),
(753, 31, '_purchase_note', ''),
(754, 31, '_default_attributes', 'a:0:{}'),
(755, 31, '_virtual', 'no'),
(756, 31, '_downloadable', 'no'),
(757, 31, '_product_image_gallery', ''),
(758, 31, '_download_limit', '0'),
(759, 31, '_download_expiry', '0'),
(760, 31, '_stock', ''),
(761, 31, '_stock_status', 'instock'),
(762, 31, '_wc_average_rating', '0'),
(763, 31, '_wc_rating_count', 'a:0:{}'),
(764, 31, '_wc_review_count', '0'),
(765, 31, '_downloadable_files', 'a:0:{}'),
(766, 31, '_product_attributes', 'a:0:{}'),
(767, 31, '_product_version', '3.5.3'),
(768, 31, '_price', '45'),
(769, 31, '_variation_description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sagittis orci ac odio dictum tincidunt. Donec ut metus leo. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed luctus, dui eu sagittis sodales, nulla nibh sagittis augue, vel porttitor diam enim non metus. Vestibulum aliquam augue neque. Phasellus tincidunt odio eget ullamcorper efficitur. Cras placerat ut turpis pellentesque vulputate. Nam sed consequat tortor. Curabitur finibus sapien dolor. Ut eleifend tellus nec erat pulvinar dignissim. Nam non arcu purus. Vivamus et massa massa.'),
(770, 31, '_thumbnail_id', '36'),
(771, 31, 'attribute_pa_color', 'green'),
(772, 31, 'attribute_logo', 'No'),
(773, 32, '_sku', 'woo-hoodie-blue'),
(774, 32, '_regular_price', '45'),
(775, 32, '_sale_price', ''),
(776, 32, '_sale_price_dates_from', ''),
(777, 32, '_sale_price_dates_to', ''),
(778, 32, 'total_sales', '0'),
(779, 32, '_tax_status', 'taxable'),
(780, 32, '_tax_class', ''),
(781, 32, '_manage_stock', 'no'),
(782, 32, '_backorders', 'no'),
(783, 32, '_low_stock_amount', ''),
(784, 32, '_sold_individually', 'no'),
(785, 32, '_weight', ''),
(786, 32, '_length', ''),
(787, 32, '_width', ''),
(788, 32, '_height', ''),
(789, 32, '_upsell_ids', 'a:0:{}'),
(790, 32, '_crosssell_ids', 'a:0:{}'),
(791, 32, '_purchase_note', ''),
(792, 32, '_default_attributes', 'a:0:{}'),
(793, 32, '_virtual', 'no'),
(794, 32, '_downloadable', 'no'),
(795, 32, '_product_image_gallery', ''),
(796, 32, '_download_limit', '0'),
(797, 32, '_download_expiry', '0'),
(798, 32, '_stock', ''),
(799, 32, '_stock_status', 'instock'),
(800, 32, '_wc_average_rating', '0'),
(801, 32, '_wc_rating_count', 'a:0:{}'),
(802, 32, '_wc_review_count', '0'),
(803, 32, '_downloadable_files', 'a:0:{}'),
(804, 32, '_product_attributes', 'a:0:{}'),
(805, 32, '_product_version', '3.5.3'),
(806, 32, '_price', '45'),
(807, 32, '_variation_description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sagittis orci ac odio dictum tincidunt. Donec ut metus leo. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed luctus, dui eu sagittis sodales, nulla nibh sagittis augue, vel porttitor diam enim non metus. Vestibulum aliquam augue neque. Phasellus tincidunt odio eget ullamcorper efficitur. Cras placerat ut turpis pellentesque vulputate. Nam sed consequat tortor. Curabitur finibus sapien dolor. Ut eleifend tellus nec erat pulvinar dignissim. Nam non arcu purus. Vivamus et massa massa.'),
(808, 32, '_thumbnail_id', '35'),
(809, 32, 'attribute_pa_color', 'blue'),
(810, 32, 'attribute_logo', 'No'),
(811, 33, '_sku', 'Woo-tshirt-logo'),
(812, 33, '_regular_price', '18'),
(813, 33, '_sale_price', ''),
(814, 33, '_sale_price_dates_from', ''),
(815, 33, '_sale_price_dates_to', ''),
(816, 33, 'total_sales', '0'),
(817, 33, '_tax_status', 'taxable'),
(818, 33, '_tax_class', ''),
(819, 33, '_manage_stock', 'no'),
(820, 33, '_backorders', 'no'),
(821, 33, '_low_stock_amount', ''),
(822, 33, '_sold_individually', 'no'),
(823, 33, '_weight', ''),
(824, 33, '_length', ''),
(825, 33, '_width', ''),
(826, 33, '_height', ''),
(827, 33, '_upsell_ids', 'a:0:{}'),
(828, 33, '_crosssell_ids', 'a:0:{}'),
(829, 33, '_purchase_note', ''),
(830, 33, '_default_attributes', 'a:0:{}'),
(831, 33, '_virtual', 'no'),
(832, 33, '_downloadable', 'no'),
(833, 33, '_product_image_gallery', ''),
(834, 33, '_download_limit', '0'),
(835, 33, '_download_expiry', '0'),
(836, 33, '_stock', ''),
(837, 33, '_stock_status', 'instock'),
(838, 33, '_wc_average_rating', '0'),
(839, 33, '_wc_rating_count', 'a:0:{}'),
(840, 33, '_wc_review_count', '0'),
(841, 33, '_downloadable_files', 'a:0:{}'),
(842, 33, '_product_attributes', 'a:1:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(843, 33, '_product_version', '3.5.3'),
(844, 33, '_price', '18'),
(845, 33, '_thumbnail_id', '49'),
(846, 34, '_sku', 'Woo-beanie-logo'),
(847, 34, '_regular_price', '20'),
(848, 34, '_sale_price', '18'),
(849, 34, '_sale_price_dates_from', ''),
(850, 34, '_sale_price_dates_to', ''),
(851, 34, 'total_sales', '0'),
(852, 34, '_tax_status', 'taxable'),
(853, 34, '_tax_class', ''),
(854, 34, '_manage_stock', 'no'),
(855, 34, '_backorders', 'no'),
(856, 34, '_low_stock_amount', ''),
(857, 34, '_sold_individually', 'no'),
(858, 34, '_weight', ''),
(859, 34, '_length', ''),
(860, 34, '_width', ''),
(861, 34, '_height', ''),
(862, 34, '_upsell_ids', 'a:0:{}'),
(863, 34, '_crosssell_ids', 'a:0:{}'),
(864, 34, '_purchase_note', ''),
(865, 34, '_default_attributes', 'a:0:{}'),
(866, 34, '_virtual', 'no'),
(867, 34, '_downloadable', 'no'),
(868, 34, '_product_image_gallery', ''),
(869, 34, '_download_limit', '0'),
(870, 34, '_download_expiry', '0'),
(871, 34, '_stock', ''),
(872, 34, '_stock_status', 'instock'),
(873, 34, '_wc_average_rating', '0'),
(874, 34, '_wc_rating_count', 'a:0:{}'),
(875, 34, '_wc_review_count', '0'),
(876, 34, '_downloadable_files', 'a:0:{}'),
(877, 34, '_product_attributes', 'a:1:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(878, 34, '_product_version', '3.5.3'),
(879, 34, '_price', '18'),
(880, 34, '_thumbnail_id', '50'),
(881, 35, '_sku', 'logo-collection'),
(882, 35, '_sale_price_dates_from', ''),
(883, 35, '_sale_price_dates_to', ''),
(884, 35, 'total_sales', '0'),
(885, 35, '_tax_status', 'taxable'),
(886, 35, '_tax_class', ''),
(887, 35, '_manage_stock', 'no'),
(888, 35, '_backorders', 'no'),
(889, 35, '_low_stock_amount', ''),
(890, 35, '_sold_individually', 'no'),
(891, 35, '_weight', ''),
(892, 35, '_length', ''),
(893, 35, '_width', ''),
(894, 35, '_height', ''),
(895, 35, '_upsell_ids', 'a:0:{}'),
(896, 35, '_crosssell_ids', 'a:0:{}'),
(897, 35, '_purchase_note', ''),
(898, 35, '_default_attributes', 'a:0:{}'),
(899, 35, '_virtual', 'no'),
(900, 35, '_downloadable', 'no'),
(901, 35, '_product_image_gallery', ''),
(902, 35, '_download_limit', '0'),
(903, 35, '_download_expiry', '0'),
(904, 35, '_stock', NULL),
(905, 35, '_stock_status', 'instock'),
(906, 35, '_wc_average_rating', '0'),
(907, 35, '_wc_rating_count', 'a:0:{}'),
(908, 35, '_wc_review_count', '0'),
(909, 35, '_downloadable_files', 'a:0:{}'),
(910, 35, '_product_attributes', 'a:0:{}'),
(911, 35, '_product_version', '4.5.2'),
(913, 35, '_thumbnail_id', '39'),
(916, 36, '_sku', 'wp-pennant'),
(917, 36, '_regular_price', '11.05'),
(918, 36, '_sale_price', ''),
(919, 36, '_sale_price_dates_from', ''),
(920, 36, '_sale_price_dates_to', ''),
(921, 36, 'total_sales', '0'),
(922, 36, '_tax_status', 'taxable'),
(923, 36, '_tax_class', ''),
(924, 36, '_manage_stock', 'no'),
(925, 36, '_backorders', 'no'),
(926, 36, '_low_stock_amount', ''),
(927, 36, '_sold_individually', 'no'),
(928, 36, '_weight', ''),
(929, 36, '_length', ''),
(930, 36, '_width', ''),
(931, 36, '_height', ''),
(932, 36, '_upsell_ids', 'a:0:{}'),
(933, 36, '_crosssell_ids', 'a:0:{}'),
(934, 36, '_purchase_note', ''),
(935, 36, '_default_attributes', 'a:0:{}'),
(936, 36, '_virtual', 'no'),
(937, 36, '_downloadable', 'no'),
(938, 36, '_product_image_gallery', ''),
(939, 36, '_download_limit', '0'),
(940, 36, '_download_expiry', '0'),
(941, 36, '_stock', ''),
(942, 36, '_stock_status', 'instock'),
(943, 36, '_wc_average_rating', '0'),
(944, 36, '_wc_rating_count', 'a:0:{}'),
(945, 36, '_wc_review_count', '0'),
(946, 36, '_downloadable_files', 'a:0:{}'),
(947, 36, '_product_attributes', 'a:0:{}'),
(948, 36, '_product_version', '3.5.3'),
(949, 36, '_price', '11.05'),
(950, 36, '_thumbnail_id', '52'),
(951, 36, '_product_url', 'https://mercantile.wordpress.org/product/wordpress-pennant/'),
(952, 36, '_button_text', 'Buy on the WordPress swag store!'),
(953, 37, '_sku', 'woo-hoodie-blue-logo'),
(954, 37, '_regular_price', '45'),
(955, 37, '_sale_price', ''),
(956, 37, '_sale_price_dates_from', ''),
(957, 37, '_sale_price_dates_to', ''),
(958, 37, 'total_sales', '0'),
(959, 37, '_tax_status', 'taxable'),
(960, 37, '_tax_class', ''),
(961, 37, '_manage_stock', 'no'),
(962, 37, '_backorders', 'no'),
(963, 37, '_low_stock_amount', ''),
(964, 37, '_sold_individually', 'no'),
(965, 37, '_weight', ''),
(966, 37, '_length', ''),
(967, 37, '_width', ''),
(968, 37, '_height', ''),
(969, 37, '_upsell_ids', 'a:0:{}'),
(970, 37, '_crosssell_ids', 'a:0:{}'),
(971, 37, '_purchase_note', ''),
(972, 37, '_default_attributes', 'a:0:{}'),
(973, 37, '_virtual', 'no'),
(974, 37, '_downloadable', 'no'),
(975, 37, '_product_image_gallery', ''),
(976, 37, '_download_limit', '0'),
(977, 37, '_download_expiry', '0'),
(978, 37, '_stock', ''),
(979, 37, '_stock_status', 'instock'),
(980, 37, '_wc_average_rating', '0'),
(981, 37, '_wc_rating_count', 'a:0:{}'),
(982, 37, '_wc_review_count', '0'),
(983, 37, '_downloadable_files', 'a:0:{}'),
(984, 37, '_product_attributes', 'a:0:{}'),
(985, 37, '_product_version', '3.5.3'),
(986, 37, '_price', '45'),
(987, 37, '_variation_description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sagittis orci ac odio dictum tincidunt. Donec ut metus leo. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed luctus, dui eu sagittis sodales, nulla nibh sagittis augue, vel porttitor diam enim non metus. Vestibulum aliquam augue neque. Phasellus tincidunt odio eget ullamcorper efficitur. Cras placerat ut turpis pellentesque vulputate. Nam sed consequat tortor. Curabitur finibus sapien dolor. Ut eleifend tellus nec erat pulvinar dignissim. Nam non arcu purus. Vivamus et massa massa.'),
(988, 37, '_thumbnail_id', '37'),
(989, 37, 'attribute_pa_color', 'blue'),
(990, 37, 'attribute_logo', 'Yes'),
(993, 35, '_edit_lock', '1602844640:1'),
(994, 39, '_wp_attached_file', '2019/01/product4.jpg'),
(995, 39, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:268;s:6:\"height\";i:249;s:4:\"file\";s:20:\"2019/01/product4.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"product4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"product4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"product4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(996, 35, '_edit_last', '1'),
(997, 35, '_children', 'a:0:{}'),
(998, 22, '_edit_lock', '1603180549:1'),
(999, 40, '_wp_attached_file', '2019/01/product1.jpg'),
(1000, 40, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:268;s:6:\"height\";i:249;s:4:\"file\";s:20:\"2019/01/product1.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"product1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"product1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"product1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1001, 41, '_wp_attached_file', '2019/01/product3.jpg'),
(1002, 41, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:268;s:6:\"height\";i:249;s:4:\"file\";s:20:\"2019/01/product3.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"product3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"product3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"product3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1003, 42, '_wp_attached_file', '2019/01/product4-1.jpg'),
(1004, 42, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:268;s:6:\"height\";i:249;s:4:\"file\";s:22:\"2019/01/product4-1.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"product4-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"product4-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"product4-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1005, 43, '_wp_attached_file', '2019/01/product5.jpg'),
(1006, 43, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:268;s:6:\"height\";i:249;s:4:\"file\";s:20:\"2019/01/product5.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"product5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"product5-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"product5-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1007, 44, '_wp_attached_file', '2019/01/product6.jpg'),
(1008, 44, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:268;s:6:\"height\";i:249;s:4:\"file\";s:20:\"2019/01/product6.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"product6-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"product6-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"product6-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1009, 22, '_edit_last', '1'),
(1010, 45, '_wp_attached_file', '2020/10/lee-cooper.png'),
(1011, 45, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:269;s:6:\"height\";i:156;s:4:\"file\";s:22:\"2020/10/lee-cooper.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"lee-cooper-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"lee-cooper-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"lee-cooper-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1012, 47, '_wp_attached_file', '2020/10/addidas.jpg'),
(1013, 47, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:618;s:4:\"file\";s:19:\"2020/10/addidas.jpg\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"addidas-300x232.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:232;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"addidas-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"addidas-768x593.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:593;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:19:\"addidas-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:19:\"addidas-600x464.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:464;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:19:\"addidas-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:19:\"addidas-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:19:\"addidas-600x464.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:464;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"addidas-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1014, 48, '_wp_attached_file', '2020/10/nike.png'),
(1015, 48, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:168;s:4:\"file\";s:16:\"2020/10/nike.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"nike-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:16:\"nike-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:16:\"nike-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1016, 24, '_edit_last', '1'),
(1017, 24, '_edit_lock', '1602835127:1'),
(1018, 12, '_edit_last', '1'),
(1019, 12, '_edit_lock', '1602835136:1'),
(1020, 21, '_edit_last', '1'),
(1021, 21, '_edit_lock', '1602835150:1'),
(1022, 34, '_edit_lock', '1602844469:1'),
(1023, 26, '_edit_last', '1'),
(1024, 26, '_edit_lock', '1602844676:1'),
(1025, 7, '_edit_lock', '1603002678:1'),
(1026, 2, '_edit_lock', '1603003249:1'),
(1027, 49, '_wp_attached_file', '2020/10/blog-two.jpg');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1028, 49, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:866;s:6:\"height\";i:396;s:4:\"file\";s:20:\"2020/10/blog-two.jpg\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"blog-two-300x137.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:137;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"blog-two-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"blog-two-768x351.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:351;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"blog-two-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:20:\"blog-two-600x274.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:274;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"blog-two-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:20:\"blog-two-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:20:\"blog-two-600x274.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:274;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"blog-two-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1029, 50, '_wp_attached_file', '2020/10/blog-one.jpg'),
(1030, 50, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:862;s:6:\"height\";i:398;s:4:\"file\";s:20:\"2020/10/blog-one.jpg\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"blog-one-300x139.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:139;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"blog-one-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"blog-one-768x355.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:355;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"blog-one-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:20:\"blog-one-600x277.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:277;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"blog-one-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:20:\"blog-one-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:20:\"blog-one-600x277.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:277;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"blog-one-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1031, 51, '_wp_attached_file', '2020/10/blog-one-1.jpg'),
(1032, 51, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:862;s:6:\"height\";i:398;s:4:\"file\";s:22:\"2020/10/blog-one-1.jpg\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"blog-one-1-300x139.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:139;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"blog-one-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"blog-one-1-768x355.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:355;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"blog-one-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:22:\"blog-one-1-600x277.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:277;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"blog-one-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"blog-one-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:22:\"blog-one-1-600x277.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:277;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"blog-one-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1033, 52, '_wp_attached_file', '2020/10/blog-three.jpg'),
(1034, 52, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:866;s:6:\"height\";i:396;s:4:\"file\";s:22:\"2020/10/blog-three.jpg\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"blog-three-300x137.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:137;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"blog-three-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"blog-three-768x351.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:351;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"blog-three-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:22:\"blog-three-600x274.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:274;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"blog-three-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"blog-three-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:22:\"blog-three-600x274.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:274;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"blog-three-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1035, 53, '_wp_attached_file', '2020/10/blog-two-1.jpg'),
(1036, 53, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:866;s:6:\"height\";i:396;s:4:\"file\";s:22:\"2020/10/blog-two-1.jpg\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"blog-two-1-300x137.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:137;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"blog-two-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"blog-two-1-768x351.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:351;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"blog-two-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:22:\"blog-two-1-600x274.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:274;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"blog-two-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"blog-two-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:22:\"blog-two-1-600x274.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:274;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"blog-two-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1037, 54, '_wp_attached_file', '2020/10/blog-two-2.jpg'),
(1038, 54, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:866;s:6:\"height\";i:396;s:4:\"file\";s:22:\"2020/10/blog-two-2.jpg\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"blog-two-2-300x137.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:137;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"blog-two-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"blog-two-2-768x351.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:351;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"blog-two-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:22:\"blog-two-2-600x274.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:274;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"blog-two-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"blog-two-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:22:\"blog-two-2-600x274.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:274;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"blog-two-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1039, 55, '_wp_attached_file', '2020/10/blog-one-2.jpg'),
(1040, 55, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:862;s:6:\"height\";i:398;s:4:\"file\";s:22:\"2020/10/blog-one-2.jpg\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"blog-one-2-300x139.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:139;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"blog-one-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"blog-one-2-768x355.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:355;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"blog-one-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:22:\"blog-one-2-600x277.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:277;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"blog-one-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"blog-one-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:22:\"blog-one-2-600x277.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:277;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"blog-one-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1041, 56, '_wp_attached_file', '2020/10/blog-three-1.jpg'),
(1042, 56, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:866;s:6:\"height\";i:396;s:4:\"file\";s:24:\"2020/10/blog-three-1.jpg\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"blog-three-1-300x137.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:137;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"blog-three-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"blog-three-1-768x351.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:351;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:24:\"blog-three-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:24:\"blog-three-1-600x274.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:274;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:24:\"blog-three-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:24:\"blog-three-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:24:\"blog-three-1-600x274.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:274;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:24:\"blog-three-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1043, 57, '_wp_attached_file', '2020/10/blog-one-3.jpg'),
(1044, 57, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:862;s:6:\"height\";i:398;s:4:\"file\";s:22:\"2020/10/blog-one-3.jpg\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"blog-one-3-300x139.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:139;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"blog-one-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"blog-one-3-768x355.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:355;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"blog-one-3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:22:\"blog-one-3-600x277.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:277;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"blog-one-3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"blog-one-3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:22:\"blog-one-3-600x277.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:277;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"blog-one-3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1045, 58, '_wp_attached_file', '2020/10/blog-one-4.jpg'),
(1046, 58, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:862;s:6:\"height\";i:398;s:4:\"file\";s:22:\"2020/10/blog-one-4.jpg\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"blog-one-4-300x139.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:139;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"blog-one-4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"blog-one-4-768x355.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:355;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"blog-one-4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:22:\"blog-one-4-600x277.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:277;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"blog-one-4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"blog-one-4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:22:\"blog-one-4-600x277.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:277;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"blog-one-4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1047, 59, '_wp_attached_file', '2020/10/blog-one-5.jpg'),
(1048, 59, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:862;s:6:\"height\";i:398;s:4:\"file\";s:22:\"2020/10/blog-one-5.jpg\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"blog-one-5-300x139.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:139;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"blog-one-5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"blog-one-5-768x355.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:355;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"blog-one-5-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:22:\"blog-one-5-600x277.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:277;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"blog-one-5-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"blog-one-5-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:22:\"blog-one-5-600x277.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:277;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"blog-one-5-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1049, 60, '_wp_attached_file', '2020/10/blog-one-6.jpg'),
(1050, 60, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:862;s:6:\"height\";i:398;s:4:\"file\";s:22:\"2020/10/blog-one-6.jpg\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"blog-one-6-300x139.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:139;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"blog-one-6-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"blog-one-6-768x355.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:355;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"blog-one-6-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:22:\"blog-one-6-600x277.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:277;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"blog-one-6-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"blog-one-6-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:22:\"blog-one-6-600x277.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:277;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"blog-one-6-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1051, 61, '_wp_attached_file', '2020/10/blog-three-2.jpg'),
(1052, 61, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:866;s:6:\"height\";i:396;s:4:\"file\";s:24:\"2020/10/blog-three-2.jpg\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"blog-three-2-300x137.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:137;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"blog-three-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"blog-three-2-768x351.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:351;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:24:\"blog-three-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:24:\"blog-three-2-600x274.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:274;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:24:\"blog-three-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:24:\"blog-three-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:24:\"blog-three-2-600x274.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:274;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:24:\"blog-three-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1053, 62, '_wp_attached_file', '2020/10/blog-one-7.jpg'),
(1054, 62, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:862;s:6:\"height\";i:398;s:4:\"file\";s:22:\"2020/10/blog-one-7.jpg\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"blog-one-7-300x139.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:139;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"blog-one-7-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"blog-one-7-768x355.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:355;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"blog-one-7-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:22:\"blog-one-7-600x277.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:277;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"blog-one-7-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"blog-one-7-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:22:\"blog-one-7-600x277.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:277;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"blog-one-7-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1055, 1, '_edit_lock', '1604325769:1'),
(1056, 63, '_wp_attached_file', '2020/10/blog-three-3.jpg'),
(1057, 63, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:866;s:6:\"height\";i:396;s:4:\"file\";s:24:\"2020/10/blog-three-3.jpg\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"blog-three-3-300x137.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:137;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"blog-three-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"blog-three-3-768x351.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:351;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:24:\"blog-three-3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:24:\"blog-three-3-600x274.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:274;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:24:\"blog-three-3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:24:\"blog-three-3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:24:\"blog-three-3-600x274.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:274;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:24:\"blog-three-3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1058, 64, '_wp_attached_file', '2020/10/blog-three-4.jpg'),
(1059, 64, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:866;s:6:\"height\";i:396;s:4:\"file\";s:24:\"2020/10/blog-three-4.jpg\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"blog-three-4-300x137.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:137;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"blog-three-4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"blog-three-4-768x351.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:351;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:24:\"blog-three-4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:24:\"blog-three-4-600x274.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:274;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:24:\"blog-three-4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:24:\"blog-three-4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:24:\"blog-three-4-600x274.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:274;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:24:\"blog-three-4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1060, 65, '_wp_attached_file', '2020/10/socials.png'),
(1061, 65, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:240;s:6:\"height\";i:21;s:4:\"file\";s:19:\"2020/10/socials.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"socials-150x21.png\";s:5:\"width\";i:150;s:6:\"height\";i:21;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:18:\"socials-100x21.png\";s:5:\"width\";i:100;s:6:\"height\";i:21;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:18:\"socials-100x21.png\";s:5:\"width\";i:100;s:6:\"height\";i:21;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1062, 66, '_wp_attached_file', '2020/10/blog-two-3.jpg'),
(1063, 66, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:866;s:6:\"height\";i:396;s:4:\"file\";s:22:\"2020/10/blog-two-3.jpg\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"blog-two-3-300x137.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:137;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"blog-two-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"blog-two-3-768x351.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:351;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"blog-two-3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:22:\"blog-two-3-600x274.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:274;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"blog-two-3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"blog-two-3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:22:\"blog-two-3-600x274.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:274;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"blog-two-3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1064, 67, '_wp_attached_file', '2020/10/man-two.jpg'),
(1065, 67, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:121;s:6:\"height\";i:86;s:4:\"file\";s:19:\"2020/10/man-two.jpg\";s:5:\"sizes\";a:2:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:18:\"man-two-100x86.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:86;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:18:\"man-two-100x86.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:86;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1066, 68, '_wp_attached_file', '2020/10/man-two-1.jpg'),
(1067, 68, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:121;s:6:\"height\";i:86;s:4:\"file\";s:21:\"2020/10/man-two-1.jpg\";s:5:\"sizes\";a:2:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"man-two-1-100x86.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:86;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"man-two-1-100x86.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:86;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1068, 69, '_wp_attached_file', '2020/10/man-one.jpg'),
(1069, 69, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:121;s:6:\"height\";i:86;s:4:\"file\";s:19:\"2020/10/man-one.jpg\";s:5:\"sizes\";a:2:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:18:\"man-one-100x86.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:86;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:18:\"man-one-100x86.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:86;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1070, 7, '_edit_last', '1'),
(1071, 7, '_thumbnail_id', '66'),
(1072, 2, '_edit_last', '1'),
(1073, 2, '_thumbnail_id', '62'),
(1074, 74, '_menu_item_type', 'custom'),
(1075, 74, '_menu_item_menu_item_parent', '0'),
(1076, 74, '_menu_item_object_id', '74'),
(1077, 74, '_menu_item_object', 'custom'),
(1078, 74, '_menu_item_target', ''),
(1079, 74, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1080, 74, '_menu_item_xfn', ''),
(1081, 74, '_menu_item_url', '#'),
(1083, 75, '_menu_item_type', 'custom'),
(1084, 75, '_menu_item_menu_item_parent', '0'),
(1085, 75, '_menu_item_object_id', '75'),
(1086, 75, '_menu_item_object', 'custom'),
(1087, 75, '_menu_item_target', ''),
(1088, 75, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1089, 75, '_menu_item_xfn', ''),
(1090, 75, '_menu_item_url', '#'),
(1092, 76, '_menu_item_type', 'custom'),
(1093, 76, '_menu_item_menu_item_parent', '0'),
(1094, 76, '_menu_item_object_id', '76'),
(1095, 76, '_menu_item_object', 'custom'),
(1096, 76, '_menu_item_target', ''),
(1097, 76, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1098, 76, '_menu_item_xfn', ''),
(1099, 76, '_menu_item_url', '#'),
(1101, 77, '_menu_item_type', 'custom'),
(1102, 77, '_menu_item_menu_item_parent', '0'),
(1103, 77, '_menu_item_object_id', '77'),
(1104, 77, '_menu_item_object', 'custom'),
(1105, 77, '_menu_item_target', ''),
(1106, 77, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1107, 77, '_menu_item_xfn', ''),
(1108, 77, '_menu_item_url', '#'),
(1110, 78, '_menu_item_type', 'custom'),
(1111, 78, '_menu_item_menu_item_parent', '0'),
(1112, 78, '_menu_item_object_id', '78'),
(1113, 78, '_menu_item_object', 'custom'),
(1114, 78, '_menu_item_target', ''),
(1115, 78, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1116, 78, '_menu_item_xfn', ''),
(1117, 78, '_menu_item_url', '#'),
(1119, 79, '_menu_item_type', 'custom'),
(1120, 79, '_menu_item_menu_item_parent', '0'),
(1121, 79, '_menu_item_object_id', '79'),
(1122, 79, '_menu_item_object', 'custom'),
(1123, 79, '_menu_item_target', ''),
(1124, 79, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1125, 79, '_menu_item_xfn', ''),
(1126, 79, '_menu_item_url', '#'),
(1128, 80, '_menu_item_type', 'custom'),
(1129, 80, '_menu_item_menu_item_parent', '0'),
(1130, 80, '_menu_item_object_id', '80'),
(1131, 80, '_menu_item_object', 'custom'),
(1132, 80, '_menu_item_target', ''),
(1133, 80, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1134, 80, '_menu_item_xfn', ''),
(1135, 80, '_menu_item_url', '#'),
(1137, 81, '_menu_item_type', 'custom'),
(1138, 81, '_menu_item_menu_item_parent', '0'),
(1139, 81, '_menu_item_object_id', '81'),
(1140, 81, '_menu_item_object', 'custom'),
(1141, 81, '_menu_item_target', ''),
(1142, 81, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1143, 81, '_menu_item_xfn', ''),
(1144, 81, '_menu_item_url', '#'),
(1146, 82, '_menu_item_type', 'custom'),
(1147, 82, '_menu_item_menu_item_parent', '0'),
(1148, 82, '_menu_item_object_id', '82'),
(1149, 82, '_menu_item_object', 'custom'),
(1150, 82, '_menu_item_target', ''),
(1151, 82, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1152, 82, '_menu_item_xfn', ''),
(1153, 82, '_menu_item_url', '#'),
(1155, 83, '_menu_item_type', 'custom'),
(1156, 83, '_menu_item_menu_item_parent', '0'),
(1157, 83, '_menu_item_object_id', '83'),
(1158, 83, '_menu_item_object', 'custom'),
(1159, 83, '_menu_item_target', ''),
(1160, 83, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1161, 83, '_menu_item_xfn', ''),
(1162, 83, '_menu_item_url', '#'),
(1164, 84, '_menu_item_type', 'custom'),
(1165, 84, '_menu_item_menu_item_parent', '0'),
(1166, 84, '_menu_item_object_id', '84'),
(1167, 84, '_menu_item_object', 'custom'),
(1168, 84, '_menu_item_target', ''),
(1169, 84, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1170, 84, '_menu_item_xfn', ''),
(1171, 84, '_menu_item_url', '#'),
(1173, 85, '_menu_item_type', 'custom'),
(1174, 85, '_menu_item_menu_item_parent', '0'),
(1175, 85, '_menu_item_object_id', '85'),
(1176, 85, '_menu_item_object', 'custom'),
(1177, 85, '_menu_item_target', ''),
(1178, 85, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1179, 85, '_menu_item_xfn', ''),
(1180, 85, '_menu_item_url', '#'),
(1182, 86, '_menu_item_type', 'custom'),
(1183, 86, '_menu_item_menu_item_parent', '0'),
(1184, 86, '_menu_item_object_id', '86'),
(1185, 86, '_menu_item_object', 'custom'),
(1186, 86, '_menu_item_target', ''),
(1187, 86, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1188, 86, '_menu_item_xfn', ''),
(1189, 86, '_menu_item_url', '#'),
(1191, 87, '_menu_item_type', 'custom'),
(1192, 87, '_menu_item_menu_item_parent', '0'),
(1193, 87, '_menu_item_object_id', '87'),
(1194, 87, '_menu_item_object', 'custom'),
(1195, 87, '_menu_item_target', ''),
(1196, 87, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1197, 87, '_menu_item_xfn', ''),
(1198, 87, '_menu_item_url', '#'),
(1200, 88, '_menu_item_type', 'custom'),
(1201, 88, '_menu_item_menu_item_parent', '0'),
(1202, 88, '_menu_item_object_id', '88'),
(1203, 88, '_menu_item_object', 'custom'),
(1204, 88, '_menu_item_target', ''),
(1205, 88, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1206, 88, '_menu_item_xfn', ''),
(1207, 88, '_menu_item_url', '#'),
(1209, 89, '_menu_item_type', 'custom'),
(1210, 89, '_menu_item_menu_item_parent', '0'),
(1211, 89, '_menu_item_object_id', '89'),
(1212, 89, '_menu_item_object', 'custom'),
(1213, 89, '_menu_item_target', ''),
(1214, 89, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1215, 89, '_menu_item_xfn', ''),
(1216, 89, '_menu_item_url', '#'),
(1218, 90, '_menu_item_type', 'custom'),
(1219, 90, '_menu_item_menu_item_parent', '0'),
(1220, 90, '_menu_item_object_id', '90'),
(1221, 90, '_menu_item_object', 'custom'),
(1222, 90, '_menu_item_target', ''),
(1223, 90, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1224, 90, '_menu_item_xfn', ''),
(1225, 90, '_menu_item_url', '#'),
(1227, 91, '_menu_item_type', 'custom'),
(1228, 91, '_menu_item_menu_item_parent', '0'),
(1229, 91, '_menu_item_object_id', '91'),
(1230, 91, '_menu_item_object', 'custom'),
(1231, 91, '_menu_item_target', ''),
(1232, 91, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1233, 91, '_menu_item_xfn', ''),
(1234, 91, '_menu_item_url', '#'),
(1236, 92, '_menu_item_type', 'custom'),
(1237, 92, '_menu_item_menu_item_parent', '0'),
(1238, 92, '_menu_item_object_id', '92'),
(1239, 92, '_menu_item_object', 'custom'),
(1240, 92, '_menu_item_target', ''),
(1241, 92, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1242, 92, '_menu_item_xfn', ''),
(1243, 92, '_menu_item_url', '#'),
(1245, 93, '_menu_item_type', 'custom'),
(1246, 93, '_menu_item_menu_item_parent', '0'),
(1247, 93, '_menu_item_object_id', '93'),
(1248, 93, '_menu_item_object', 'custom'),
(1249, 93, '_menu_item_target', ''),
(1250, 93, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1251, 93, '_menu_item_xfn', ''),
(1252, 93, '_menu_item_url', '#'),
(1254, 94, '_edit_last', '1'),
(1255, 94, '_edit_lock', '1603883136:1'),
(1256, 96, '_edit_last', '1'),
(1257, 96, '_edit_lock', '1603878065:1'),
(1258, 98, '_edit_last', '1'),
(1259, 98, '_edit_lock', '1603884285:1'),
(1260, 100, '_menu_item_type', 'post_type'),
(1261, 100, '_menu_item_menu_item_parent', '0'),
(1262, 100, '_menu_item_object_id', '98'),
(1263, 100, '_menu_item_object', 'page'),
(1264, 100, '_menu_item_target', ''),
(1265, 100, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1266, 100, '_menu_item_xfn', ''),
(1267, 100, '_menu_item_url', ''),
(1269, 101, '_menu_item_type', 'post_type'),
(1270, 101, '_menu_item_menu_item_parent', '0'),
(1271, 101, '_menu_item_object_id', '96'),
(1272, 101, '_menu_item_object', 'page'),
(1273, 101, '_menu_item_target', ''),
(1274, 101, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1275, 101, '_menu_item_xfn', ''),
(1276, 101, '_menu_item_url', ''),
(1278, 102, '_menu_item_type', 'post_type'),
(1279, 102, '_menu_item_menu_item_parent', '0'),
(1280, 102, '_menu_item_object_id', '94'),
(1281, 102, '_menu_item_object', 'page'),
(1282, 102, '_menu_item_target', ''),
(1283, 102, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1284, 102, '_menu_item_xfn', ''),
(1285, 102, '_menu_item_url', ''),
(1287, 103, '_menu_item_type', 'post_type'),
(1288, 103, '_menu_item_menu_item_parent', '106'),
(1289, 103, '_menu_item_object_id', '7'),
(1290, 103, '_menu_item_object', 'page'),
(1291, 103, '_menu_item_target', ''),
(1292, 103, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1293, 103, '_menu_item_xfn', ''),
(1294, 103, '_menu_item_url', ''),
(1296, 104, '_menu_item_type', 'post_type'),
(1297, 104, '_menu_item_menu_item_parent', '106'),
(1298, 104, '_menu_item_object_id', '8'),
(1299, 104, '_menu_item_object', 'page'),
(1300, 104, '_menu_item_target', ''),
(1301, 104, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1302, 104, '_menu_item_xfn', ''),
(1303, 104, '_menu_item_url', ''),
(1305, 105, '_menu_item_type', 'post_type'),
(1306, 105, '_menu_item_menu_item_parent', '0'),
(1307, 105, '_menu_item_object_id', '7'),
(1308, 105, '_menu_item_object', 'page'),
(1309, 105, '_menu_item_target', ''),
(1310, 105, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1311, 105, '_menu_item_xfn', ''),
(1312, 105, '_menu_item_url', ''),
(1313, 105, '_menu_item_orphaned', '1603878261'),
(1314, 106, '_menu_item_type', 'post_type'),
(1315, 106, '_menu_item_menu_item_parent', '0'),
(1316, 106, '_menu_item_object_id', '6'),
(1317, 106, '_menu_item_object', 'page'),
(1318, 106, '_menu_item_target', ''),
(1319, 106, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1320, 106, '_menu_item_xfn', ''),
(1321, 106, '_menu_item_url', ''),
(1323, 107, '_wp_trash_meta_status', 'publish'),
(1324, 107, '_wp_trash_meta_time', '1603882618'),
(1325, 98, '_wp_page_template', 'contact.php'),
(1326, 110, '_edit_last', '1'),
(1327, 110, '_edit_lock', '1603892550:1'),
(1328, 116, '_edit_last', '1'),
(1329, 116, '_edit_lock', '1603970975:1'),
(1330, 117, '_edit_last', '1'),
(1331, 117, '_edit_lock', '1603973819:1'),
(1332, 118, '_edit_last', '1'),
(1333, 118, '_edit_lock', '1603970976:1'),
(1334, 119, '_wp_attached_file', '2020/10/girl1.jpg'),
(1335, 119, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:484;s:6:\"height\";i:441;s:4:\"file\";s:17:\"2020/10/girl1.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"girl1-300x273.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:273;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"girl1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:17:\"girl1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:17:\"girl1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:17:\"girl1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:17:\"girl1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1336, 118, '_thumbnail_id', '119'),
(1337, 120, '_wp_attached_file', '2020/10/girl2.jpg'),
(1338, 120, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:484;s:6:\"height\";i:441;s:4:\"file\";s:17:\"2020/10/girl2.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"girl2-300x273.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:273;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"girl2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:17:\"girl2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:17:\"girl2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:17:\"girl2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:17:\"girl2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1339, 117, '_thumbnail_id', '120'),
(1340, 121, '_wp_attached_file', '2020/10/girl3.jpg');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1341, 121, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:484;s:6:\"height\";i:441;s:4:\"file\";s:17:\"2020/10/girl3.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"girl3-300x273.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:273;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"girl3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:17:\"girl3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:17:\"girl3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:17:\"girl3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:17:\"girl3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1342, 116, '_thumbnail_id', '121'),
(1343, 122, '_edit_last', '1'),
(1344, 122, '_edit_lock', '1603970848:1'),
(1345, 129, '_wp_attached_file', '2020/10/pricing.png'),
(1346, 129, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:172;s:6:\"height\";i:172;s:4:\"file\";s:19:\"2020/10/pricing.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"pricing-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:19:\"pricing-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"pricing-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1347, 130, '_edit_last', '1'),
(1348, 130, '_edit_lock', '1603970328:1'),
(1349, 132, '_wp_attached_file', '2020/10/logo.png'),
(1350, 132, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:139;s:6:\"height\";i:39;s:4:\"file\";s:16:\"2020/10/logo.png\";s:5:\"sizes\";a:2:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:15:\"logo-100x39.png\";s:5:\"width\";i:100;s:6:\"height\";i:39;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:15:\"logo-100x39.png\";s:5:\"width\";i:100;s:6:\"height\";i:39;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1351, 116, 'heading', 'Shopper Heading1'),
(1352, 116, '_heading', 'field_5f9a748fc724c'),
(1353, 116, 'sub-heading', 'EShopper Sub-heading1'),
(1354, 116, '_sub-heading', 'field_5f9a74a1c724d'),
(1355, 116, 'description', 'Use one of these to output your home url to your posts which is not necessarily the same url as your site’s front page.'),
(1356, 116, '_description', 'field_5f9a74dbc724e'),
(1357, 116, 'button_text', 'Details'),
(1358, 116, '_button_text', 'field_5f9a75244ce9a'),
(1359, 116, 'button_link', '#'),
(1360, 116, '_button_link', 'field_5f9a753c4ce9b'),
(1361, 116, 'price', '129'),
(1362, 116, '_price', 'field_5f9a75494ce9c'),
(1363, 118, 'heading', 'Shopper Heading2'),
(1364, 118, '_heading', 'field_5f9a748fc724c'),
(1365, 118, 'sub-heading', 'EShopper Sub-heading2'),
(1366, 118, '_sub-heading', 'field_5f9a74a1c724d'),
(1367, 118, 'description', 'Use one of these to output your home url to your posts which is not necessarily the sam'),
(1368, 118, '_description', 'field_5f9a74dbc724e'),
(1369, 118, 'button_text', 'Buy Now'),
(1370, 118, '_button_text', 'field_5f9a75244ce9a'),
(1371, 118, 'button_link', '#'),
(1372, 118, '_button_link', 'field_5f9a753c4ce9b'),
(1373, 118, 'price', '129'),
(1374, 118, '_price', 'field_5f9a75494ce9c'),
(1375, 117, 'heading', 'Shopper Heading3'),
(1376, 117, '_heading', 'field_5f9a748fc724c'),
(1377, 117, 'sub-heading', 'Shopper Sub-heading3'),
(1378, 117, '_sub-heading', 'field_5f9a74a1c724d'),
(1379, 117, 'description', 'It should output the same address specified on your dashboard,'),
(1380, 117, '_description', 'field_5f9a74dbc724e'),
(1381, 117, 'button_text', 'Read More'),
(1382, 117, '_button_text', 'field_5f9a75244ce9a'),
(1383, 117, 'button_link', '#'),
(1384, 117, '_button_link', 'field_5f9a753c4ce9b'),
(1385, 117, 'price', '129'),
(1386, 117, '_price', 'field_5f9a75494ce9c'),
(1387, 1, '_edit_last', '1'),
(1388, 1, '_thumbnail_id', '58'),
(1391, 134, '_edit_last', '1'),
(1392, 134, '_thumbnail_id', '66'),
(1395, 134, '_edit_lock', '1604052978:1'),
(1398, 137, '_edit_last', '1'),
(1399, 137, '_edit_lock', '1604052956:1'),
(1400, 137, '_thumbnail_id', '64'),
(1405, 137, 'read_more_read_more', 'Read More'),
(1408, 137, 'read_more_read_more_link', '#'),
(1411, 134, 'read_more_read_more', 'Read More'),
(1412, 134, 'read_more_read_more_link', '#'),
(1415, 1, 'read_more_read_more', 'Read More'),
(1416, 1, 'read_more_read_more_link', '#'),
(1419, 1, '_wp_old_slug', 'hello-world');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2020-10-11 09:05:20', '2020-10-11 09:05:20', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.', 'Girls Blue T Shirt arrived in store', '', 'publish', 'open', 'open', '', 'girls-blue-t-shirt-arrived-in-store', '', '', '2020-10-30 12:30:30', '2020-10-30 12:30:30', '', 0, 'http://localhost/eshopper/?p=1', 0, 'post', '', 3),
(2, 1, '2020-10-11 09:05:20', '2020-10-11 09:05:20', '<!-- wp:paragraph -->\r\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:quote -->\r\n<blockquote class=\"wp-block-quote\">\r\n<p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</p>\r\n</blockquote>\r\n<!-- /wp:quote -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>...or something like this:</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:quote -->\r\n<blockquote class=\"wp-block-quote\">\r\n<p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p>\r\n</blockquote>\r\n<!-- /wp:quote -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/eshopper/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\r\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2020-10-18 06:34:03', '2020-10-18 06:34:03', '', 0, 'http://localhost/eshopper/?page_id=2', 0, 'page', '', 0),
(3, 1, '2020-10-11 09:05:20', '2020-10-11 09:05:20', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://localhost/eshopper.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2020-10-11 09:05:20', '2020-10-11 09:05:20', '', 0, 'http://localhost/eshopper/?page_id=3', 0, 'page', '', 0),
(5, 1, '2020-10-11 09:08:31', '2020-10-11 09:08:31', '', 'woocommerce-placeholder', '', 'inherit', 'open', 'closed', '', 'woocommerce-placeholder', '', '', '2020-10-11 09:08:31', '2020-10-11 09:08:31', '', 0, 'http://localhost/eshopper/wp-content/uploads/2020/10/woocommerce-placeholder.png', 0, 'attachment', 'image/png', 0),
(6, 1, '2020-10-11 09:10:21', '2020-10-11 09:10:21', '', 'Shop', '', 'publish', 'closed', 'closed', '', 'shop', '', '', '2020-10-11 09:10:21', '2020-10-11 09:10:21', '', 0, 'http://localhost/eshopper/shop/', 0, 'page', '', 0),
(7, 1, '2020-10-11 09:10:21', '2020-10-11 09:10:21', '<!-- wp:shortcode -->\r\n<p>[woocommerce_cart]</p>\r\n<!-- /wp:shortcode -->', 'Cart', '', 'publish', 'closed', 'closed', '', 'cart', '', '', '2020-10-18 06:32:57', '2020-10-18 06:32:57', '', 0, 'http://localhost/eshopper/cart/', 0, 'page', '', 0),
(8, 1, '2020-10-11 09:10:21', '2020-10-11 09:10:21', '<!-- wp:shortcode -->[woocommerce_checkout]<!-- /wp:shortcode -->', 'Checkout', '', 'publish', 'closed', 'closed', '', 'checkout', '', '', '2020-10-11 09:10:21', '2020-10-11 09:10:21', '', 0, 'http://localhost/eshopper/checkout/', 0, 'page', '', 0),
(9, 1, '2020-10-11 09:10:21', '2020-10-11 09:10:21', '<!-- wp:shortcode -->[woocommerce_my_account]<!-- /wp:shortcode -->', 'My account', '', 'publish', 'closed', 'closed', '', 'my-account', '', '', '2020-10-11 09:10:21', '2020-10-11 09:10:21', '', 0, 'http://localhost/eshopper/my-account/', 0, 'page', '', 0),
(11, 1, '2019-01-16 13:01:52', '2019-01-16 13:01:52', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Belt', 'This is a simple product.', 'publish', 'open', 'closed', '', 'belt', '', '', '2019-01-16 13:01:52', '2019-01-16 13:01:52', '', 0, 'https://woocommercecore.mystagingwebsite.com/product/belt/', 0, 'product', '', 0),
(12, 1, '2019-01-16 13:01:53', '2019-01-16 13:01:53', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Cap', 'This is a simple product.', 'publish', 'open', 'closed', '', 'cap', '', '', '2020-10-16 07:58:56', '2020-10-16 07:58:56', '', 0, 'https://woocommercecore.mystagingwebsite.com/product/cap/', 0, 'product', '', 0),
(13, 1, '2019-01-16 13:01:53', '2019-01-16 13:01:53', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Sunglasses', 'This is a simple product.', 'publish', 'open', 'closed', '', 'sunglasses', '', '', '2019-01-16 13:01:53', '2019-01-16 13:01:53', '', 0, 'https://woocommercecore.mystagingwebsite.com/product/sunglasses/', 0, 'product', '', 0),
(14, 1, '2019-01-16 13:01:53', '2019-01-16 13:01:53', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Hoodie with Pocket', 'This is a simple product.', 'publish', 'open', 'closed', '', 'hoodie-with-pocket', '', '', '2019-01-16 13:01:53', '2019-01-16 13:01:53', '', 0, 'https://woocommercecore.mystagingwebsite.com/product/hoodie-with-pocket/', 0, 'product', '', 0),
(15, 1, '2019-01-16 13:01:53', '2019-01-16 13:01:53', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Hoodie with Zipper', 'This is a simple product.', 'publish', 'open', 'closed', '', 'hoodie-with-zipper', '', '', '2019-01-16 13:01:53', '2019-01-16 13:01:53', '', 0, 'https://woocommercecore.mystagingwebsite.com/product/hoodie-with-zipper/', 0, 'product', '', 0),
(18, 1, '2019-01-16 13:01:52', '2019-01-16 13:01:52', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'V-Neck T-Shirt', 'This is a variable product.', 'publish', 'open', 'closed', '', 'v-neck-t-shirt', '', '', '2019-01-16 13:01:52', '2019-01-16 13:01:52', '', 0, 'https://woocommercecore.mystagingwebsite.com/product/v-neck-t-shirt/', 0, 'product', '', 0),
(19, 1, '2019-01-16 13:01:52', '2019-01-16 13:01:52', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Hoodie', 'This is a variable product.', 'publish', 'open', 'closed', '', 'hoodie', '', '', '2019-01-16 13:01:52', '2019-01-16 13:01:52', '', 0, 'https://woocommercecore.mystagingwebsite.com/product/hoodie/', 0, 'product', '', 0),
(20, 1, '2019-01-16 13:01:52', '2019-01-16 13:01:52', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Hoodie with Logo', 'This is a simple product.', 'publish', 'open', 'closed', '', 'hoodie-with-logo', '', '', '2019-01-16 13:01:52', '2019-01-16 13:01:52', '', 0, 'https://woocommercecore.mystagingwebsite.com/product/hoodie-with-logo/', 0, 'product', '', 0),
(21, 1, '2019-01-16 13:01:52', '2019-01-16 13:01:52', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'T-Shirt', 'This is a simple product.', 'publish', 'open', 'closed', '', 't-shirt', '', '', '2020-10-16 07:59:10', '2020-10-16 07:59:10', '', 0, 'https://woocommercecore.mystagingwebsite.com/product/t-shirt/', 0, 'product', '', 0),
(22, 1, '2019-01-16 13:01:52', '2019-01-16 13:01:52', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo. WooCommerce doesn’t offer lightbox view for single product images. However, single product images have Image zoom – wherein customers can hover their mouse on product images, and they get displayed enlarged. Other images in the product gallery have lightbox though', 'Beanie', '', 'publish', 'open', 'closed', '', 'beanie', '', '', '2020-11-02 12:17:21', '2020-11-02 12:17:21', '', 0, 'https://woocommercecore.mystagingwebsite.com/product/beanie/', 0, 'product', '', 0),
(23, 1, '2019-01-16 13:01:53', '2019-01-16 13:01:53', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Long Sleeve Tee', 'This is a simple product.', 'publish', 'open', 'closed', '', 'long-sleeve-tee', '', '', '2019-01-16 13:01:53', '2019-01-16 13:01:53', '', 0, 'https://woocommercecore.mystagingwebsite.com/product/long-sleeve-tee/', 0, 'product', '', 0),
(24, 1, '2019-01-16 13:01:53', '2019-01-16 13:01:53', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Polo', 'This is a simple product.', 'publish', 'open', 'closed', '', 'polo', '', '', '2020-10-16 07:58:46', '2020-10-16 07:58:46', '', 0, 'https://woocommercecore.mystagingwebsite.com/product/polo/', 0, 'product', '', 0),
(25, 1, '2019-01-16 13:01:54', '2019-01-16 13:01:54', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sagittis orci ac odio dictum tincidunt. Donec ut metus leo. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed luctus, dui eu sagittis sodales, nulla nibh sagittis augue, vel porttitor diam enim non metus. Vestibulum aliquam augue neque. Phasellus tincidunt odio eget ullamcorper efficitur. Cras placerat ut turpis pellentesque vulputate. Nam sed consequat tortor. Curabitur finibus sapien dolor. Ut eleifend tellus nec erat pulvinar dignissim. Nam non arcu purus. Vivamus et massa massa.', 'Album', 'This is a simple, virtual product.', 'publish', 'open', 'closed', '', 'album', '', '', '2019-01-16 13:01:54', '2019-01-16 13:01:54', '', 0, 'https://woocommercecore.mystagingwebsite.com/product/album/', 0, 'product', '', 0),
(26, 1, '2019-01-16 13:01:54', '2019-01-16 13:01:54', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sagittis orci ac odio dictum tincidunt. Donec ut metus leo. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed luctus, dui eu sagittis sodales, nulla nibh sagittis augue, vel porttitor diam enim non metus. Vestibulum aliquam augue neque. Phasellus tincidunt odio eget ullamcorper efficitur. Cras placerat ut turpis pellentesque vulputate. Nam sed consequat tortor. Curabitur finibus sapien dolor. Ut eleifend tellus nec erat pulvinar dignissim. Nam non arcu purus. Vivamus et massa massa.', 'Single', 'This is a simple, virtual product.', 'publish', 'open', 'closed', '', 'single', '', '', '2020-10-16 10:37:56', '2020-10-16 10:37:56', '', 0, 'https://woocommercecore.mystagingwebsite.com/product/single/', 0, 'product', '', 0),
(27, 1, '2019-01-16 13:01:54', '2019-01-16 13:01:54', '', 'V-Neck T-Shirt - Red', 'color: Red', 'publish', 'closed', 'closed', '', 'v-neck-t-shirt-red', '', '', '2019-01-16 13:01:54', '2019-01-16 13:01:54', '', 18, 'https://woocommercecore.mystagingwebsite.com/product/v-neck-t-shirt-red/', 0, 'product_variation', '', 0),
(28, 1, '2019-01-16 13:01:54', '2019-01-16 13:01:54', '', 'V-Neck T-Shirt - Green', 'color: Green', 'publish', 'closed', 'closed', '', 'v-neck-t-shirt-green', '', '', '2019-01-16 13:01:54', '2019-01-16 13:01:54', '', 18, 'https://woocommercecore.mystagingwebsite.com/product/v-neck-t-shirt-green/', 0, 'product_variation', '', 0),
(29, 1, '2019-01-16 13:01:54', '2019-01-16 13:01:54', '', 'V-Neck T-Shirt - Blue', 'color: Blue', 'publish', 'closed', 'closed', '', 'v-neck-t-shirt-blue', '', '', '2019-01-16 13:01:54', '2019-01-16 13:01:54', '', 18, 'https://woocommercecore.mystagingwebsite.com/product/v-neck-t-shirt-blue/', 0, 'product_variation', '', 0),
(30, 1, '2019-01-16 13:01:54', '2019-01-16 13:01:54', '', 'Hoodie - Red, No', 'color: Red, Logo: No', 'publish', 'closed', 'closed', '', 'hoodie-red-no', '', '', '2019-01-16 13:01:54', '2019-01-16 13:01:54', '', 19, 'https://woocommercecore.mystagingwebsite.com/product/hoodie-red-no', 1, 'product_variation', '', 0),
(31, 1, '2019-01-16 13:01:54', '2019-01-16 13:01:54', '', 'Hoodie - Green, No', 'color: Green, Logo: No', 'publish', 'closed', 'closed', '', 'hoodie-green-no', '', '', '2019-01-16 13:01:54', '2019-01-16 13:01:54', '', 19, 'https://woocommercecore.mystagingwebsite.com/product/hoodie-green-no/', 2, 'product_variation', '', 0),
(32, 1, '2019-01-16 13:01:55', '2019-01-16 13:01:55', '', 'Hoodie - Blue, No', 'color: Blue, Logo: No', 'publish', 'closed', 'closed', '', 'hoodie-blue-no', '', '', '2019-01-16 13:01:55', '2019-01-16 13:01:55', '', 19, 'https://woocommercecore.mystagingwebsite.com/product/hoodie-blue-no', 3, 'product_variation', '', 0),
(33, 1, '2019-01-16 13:01:55', '2019-01-16 13:01:55', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'T-Shirt with Logo', 'This is a simple product.', 'publish', 'open', 'closed', '', 't-shirt-with-logo', '', '', '2019-01-16 13:01:55', '2019-01-16 13:01:55', '', 0, 'https://woocommercecore.mystagingwebsite.com/product/t-shirt-with-logo/', 0, 'product', '', 0),
(34, 1, '2019-01-16 13:01:55', '2019-01-16 13:01:55', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Beanie with Logo', 'This is a simple product.', 'publish', 'open', 'closed', '', 'beanie-with-logo', '', '', '2019-01-16 13:01:55', '2019-01-16 13:01:55', '', 0, 'https://woocommercecore.mystagingwebsite.com/product/beanie-with-logo/', 0, 'product', '', 0),
(35, 1, '2019-01-16 13:01:55', '2019-01-16 13:01:55', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Logo Collection', 'This is a grouped product.', 'publish', 'open', 'closed', '', 'logo-collection', '', '', '2020-10-16 10:37:20', '2020-10-16 10:37:20', '', 0, 'https://woocommercecore.mystagingwebsite.com/product/logo-collection/', 0, 'product', '', 0),
(36, 1, '2019-01-16 13:01:55', '2019-01-16 13:01:55', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'WordPress Pennant', 'This is an external product.', 'publish', 'open', 'closed', '', 'wordpress-pennant', '', '', '2019-01-16 13:01:55', '2019-01-16 13:01:55', '', 0, 'https://woocommercecore.mystagingwebsite.com/product/wordpress-pennant/', 0, 'product', '', 0),
(37, 1, '2019-01-16 13:01:55', '2019-01-16 13:01:55', '', 'Hoodie - Blue, Yes', 'color: Blue, Logo: Yes', 'publish', 'closed', 'closed', '', 'hoodie-blue-yes', '', '', '2019-01-16 13:01:55', '2019-01-16 13:01:55', '', 19, 'https://woocommercecore.mystagingwebsite.com/product/hoodie-blue-yes/', 0, 'product_variation', '', 0),
(39, 1, '2020-10-13 09:04:12', '2020-10-13 09:04:12', '', 'product4', '', 'inherit', 'open', 'closed', '', 'product4', '', '', '2020-10-13 09:04:12', '2020-10-13 09:04:12', '', 35, 'http://localhost/eshopper/wp-content/uploads/2019/01/product4.jpg', 0, 'attachment', 'image/jpeg', 0),
(40, 1, '2020-10-14 07:42:46', '2020-10-14 07:42:46', '', 'product1', '', 'inherit', 'open', 'closed', '', 'product1', '', '', '2020-10-14 07:42:46', '2020-10-14 07:42:46', '', 22, 'http://localhost/eshopper/wp-content/uploads/2019/01/product1.jpg', 0, 'attachment', 'image/jpeg', 0),
(41, 1, '2020-10-14 07:42:48', '2020-10-14 07:42:48', '', 'product3', '', 'inherit', 'open', 'closed', '', 'product3', '', '', '2020-10-14 07:42:48', '2020-10-14 07:42:48', '', 22, 'http://localhost/eshopper/wp-content/uploads/2019/01/product3.jpg', 0, 'attachment', 'image/jpeg', 0),
(42, 1, '2020-10-14 07:42:49', '2020-10-14 07:42:49', '', 'product4', '', 'inherit', 'open', 'closed', '', 'product4-2', '', '', '2020-10-14 07:42:49', '2020-10-14 07:42:49', '', 22, 'http://localhost/eshopper/wp-content/uploads/2019/01/product4-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(43, 1, '2020-10-14 07:42:50', '2020-10-14 07:42:50', '', 'product5', '', 'inherit', 'open', 'closed', '', 'product5', '', '', '2020-10-14 07:42:50', '2020-10-14 07:42:50', '', 22, 'http://localhost/eshopper/wp-content/uploads/2019/01/product5.jpg', 0, 'attachment', 'image/jpeg', 0),
(44, 1, '2020-10-14 07:42:51', '2020-10-14 07:42:51', '', 'product6', '', 'inherit', 'open', 'closed', '', 'product6', '', '', '2020-10-14 07:42:51', '2020-10-14 07:42:51', '', 22, 'http://localhost/eshopper/wp-content/uploads/2019/01/product6.jpg', 0, 'attachment', 'image/jpeg', 0),
(45, 1, '2020-10-15 08:02:24', '2020-10-15 08:02:24', '', 'lee-cooper', '', 'inherit', 'open', 'closed', '', 'lee-cooper', '', '', '2020-10-15 08:02:24', '2020-10-15 08:02:24', '', 0, 'http://localhost/eshopper/wp-content/uploads/2020/10/lee-cooper.png', 0, 'attachment', 'image/png', 0),
(46, 1, '2020-10-16 07:52:47', '2020-10-16 07:52:47', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo. WooCommerce doesn’t offer lightbox view for single product images. However, single product images have Image zoom – wherein customers can hover their mouse on product images, and they get displayed enlarged. Other images in the product gallery have lightbox though', 'Beanie', '<p><br data-mce-bogus=\"1\"></p>', 'inherit', 'closed', 'closed', '', '22-autosave-v1', '', '', '2020-10-16 07:52:47', '2020-10-16 07:52:47', '', 22, 'http://localhost/eshopper/2020/10/16/22-autosave-v1/', 0, 'revision', '', 0),
(47, 1, '2020-10-16 07:55:04', '2020-10-16 07:55:04', '', 'addidas', '', 'inherit', 'open', 'closed', '', 'addidas', '', '', '2020-10-16 07:55:04', '2020-10-16 07:55:04', '', 0, 'http://localhost/eshopper/wp-content/uploads/2020/10/addidas.jpg', 0, 'attachment', 'image/jpeg', 0),
(48, 1, '2020-10-16 07:56:58', '2020-10-16 07:56:58', '', 'nike', '', 'inherit', 'open', 'closed', '', 'nike', '', '', '2020-10-16 07:56:58', '2020-10-16 07:56:58', '', 0, 'http://localhost/eshopper/wp-content/uploads/2020/10/nike.png', 0, 'attachment', 'image/png', 0),
(49, 1, '2020-10-17 09:00:25', '2020-10-17 09:00:25', '', 'blog-two', '', 'inherit', 'open', 'closed', '', 'blog-two', '', '', '2020-10-17 09:00:25', '2020-10-17 09:00:25', '', 2, 'http://localhost/eshopper/wp-content/uploads/2020/10/blog-two.jpg', 0, 'attachment', 'image/jpeg', 0),
(50, 1, '2020-10-17 09:04:35', '2020-10-17 09:04:35', '', 'blog-one', '', 'inherit', 'open', 'closed', '', 'blog-one', '', '', '2020-10-17 09:04:35', '2020-10-17 09:04:35', '', 2, 'http://localhost/eshopper/wp-content/uploads/2020/10/blog-one.jpg', 0, 'attachment', 'image/jpeg', 0),
(51, 1, '2020-10-17 09:04:59', '2020-10-17 09:04:59', '', 'blog-one', '', 'inherit', 'open', 'closed', '', 'blog-one-2', '', '', '2020-10-17 09:04:59', '2020-10-17 09:04:59', '', 0, 'http://localhost/eshopper/wp-content/uploads/2020/10/blog-one-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(52, 1, '2020-10-17 09:05:01', '2020-10-17 09:05:01', '', 'blog-three', '', 'inherit', 'open', 'closed', '', 'blog-three', '', '', '2020-10-17 09:05:01', '2020-10-17 09:05:01', '', 0, 'http://localhost/eshopper/wp-content/uploads/2020/10/blog-three.jpg', 0, 'attachment', 'image/jpeg', 0),
(53, 1, '2020-10-17 09:05:02', '2020-10-17 09:05:02', '', 'blog-two', '', 'inherit', 'open', 'closed', '', 'blog-two-2', '', '', '2020-10-17 09:05:02', '2020-10-17 09:05:02', '', 0, 'http://localhost/eshopper/wp-content/uploads/2020/10/blog-two-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(54, 1, '2020-10-17 09:05:48', '2020-10-17 09:05:48', '', 'blog-two', '', 'inherit', 'open', 'closed', '', 'blog-two-3', '', '', '2020-10-17 09:05:48', '2020-10-17 09:05:48', '', 0, 'http://localhost/eshopper/wp-content/uploads/2020/10/blog-two-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(55, 1, '2020-10-17 09:05:50', '2020-10-17 09:05:50', '', 'blog-one', '', 'inherit', 'open', 'closed', '', 'blog-one-3', '', '', '2020-10-17 09:05:50', '2020-10-17 09:05:50', '', 0, 'http://localhost/eshopper/wp-content/uploads/2020/10/blog-one-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(56, 1, '2020-10-17 09:05:52', '2020-10-17 09:05:52', '', 'blog-three', '', 'inherit', 'open', 'closed', '', 'blog-three-2', '', '', '2020-10-17 09:05:52', '2020-10-17 09:05:52', '', 0, 'http://localhost/eshopper/wp-content/uploads/2020/10/blog-three-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(57, 1, '2020-10-17 09:12:24', '2020-10-17 09:12:24', '', 'blog-one', '', 'inherit', 'open', 'closed', '', 'blog-one-4', '', '', '2020-10-17 09:12:24', '2020-10-17 09:12:24', '', 0, 'http://localhost/eshopper/wp-content/uploads/2020/10/blog-one-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(58, 1, '2020-10-17 09:14:24', '2020-10-17 09:14:24', '', 'blog-one', '', 'inherit', 'open', 'closed', '', 'blog-one-5', '', '', '2020-10-17 09:14:24', '2020-10-17 09:14:24', '', 0, 'http://localhost/eshopper/wp-content/uploads/2020/10/blog-one-4.jpg', 0, 'attachment', 'image/jpeg', 0),
(59, 1, '2020-10-17 09:49:46', '2020-10-17 09:49:46', '', 'blog-one', '', 'inherit', 'open', 'closed', '', 'blog-one-6', '', '', '2020-10-17 09:49:46', '2020-10-17 09:49:46', '', 2, 'http://localhost/eshopper/wp-content/uploads/2020/10/blog-one-5.jpg', 0, 'attachment', 'image/jpeg', 0),
(60, 1, '2020-10-17 09:54:42', '2020-10-17 09:54:42', '', 'blog-one', '', 'inherit', 'open', 'closed', '', 'blog-one-7', '', '', '2020-10-17 09:54:42', '2020-10-17 09:54:42', '', 2, 'http://localhost/eshopper/wp-content/uploads/2020/10/blog-one-6.jpg', 0, 'attachment', 'image/jpeg', 0),
(61, 1, '2020-10-17 09:55:04', '2020-10-17 09:55:04', '', 'blog-three', '', 'inherit', 'open', 'closed', '', 'blog-three-3', '', '', '2020-10-17 09:55:04', '2020-10-17 09:55:04', '', 2, 'http://localhost/eshopper/wp-content/uploads/2020/10/blog-three-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(62, 1, '2020-10-17 09:55:39', '2020-10-17 09:55:39', '', 'blog-one', '', 'inherit', 'open', 'closed', '', 'blog-one-8', '', '', '2020-10-17 09:55:39', '2020-10-17 09:55:39', '', 2, 'http://localhost/eshopper/wp-content/uploads/2020/10/blog-one-7.jpg', 0, 'attachment', 'image/jpeg', 0),
(63, 1, '2020-10-17 10:56:00', '2020-10-17 10:56:00', '', 'blog-three', '', 'inherit', 'open', 'closed', '', 'blog-three-4', '', '', '2020-10-17 10:56:00', '2020-10-17 10:56:00', '', 7, 'http://localhost/eshopper/wp-content/uploads/2020/10/blog-three-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(64, 1, '2020-10-18 05:45:10', '2020-10-18 05:45:10', '', 'blog-three', '', 'inherit', 'open', 'closed', '', 'blog-three-5', '', '', '2020-10-18 05:45:10', '2020-10-18 05:45:10', '', 0, 'http://localhost/eshopper/wp-content/uploads/2020/10/blog-three-4.jpg', 0, 'attachment', 'image/jpeg', 0),
(65, 1, '2020-10-18 05:46:01', '2020-10-18 05:46:01', '', 'socials', '', 'inherit', 'open', 'closed', '', 'socials', '', '', '2020-10-18 05:46:01', '2020-10-18 05:46:01', '', 0, 'http://localhost/eshopper/wp-content/uploads/2020/10/socials.png', 0, 'attachment', 'image/png', 0),
(66, 1, '2020-10-18 05:49:12', '2020-10-18 05:49:12', '', 'blog-two', '', 'inherit', 'open', 'closed', '', 'blog-two-4', '', '', '2020-10-18 05:49:12', '2020-10-18 05:49:12', '', 0, 'http://localhost/eshopper/wp-content/uploads/2020/10/blog-two-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(67, 1, '2020-10-18 06:22:33', '2020-10-18 06:22:33', '', 'man-two', '', 'inherit', 'open', 'closed', '', 'man-two', '', '', '2020-10-18 06:22:33', '2020-10-18 06:22:33', '', 0, 'http://localhost/eshopper/wp-content/uploads/2020/10/man-two.jpg', 0, 'attachment', 'image/jpeg', 0),
(68, 1, '2020-10-18 06:25:10', '2020-10-18 06:25:10', '', 'man-two', '', 'inherit', 'open', 'closed', '', 'man-two-2', '', '', '2020-10-18 06:25:10', '2020-10-18 06:25:10', '', 0, 'http://localhost/eshopper/wp-content/uploads/2020/10/man-two-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(69, 1, '2020-10-18 06:27:32', '2020-10-18 06:27:32', '', 'man-one', '', 'inherit', 'open', 'closed', '', 'man-one', '', '', '2020-10-18 06:27:32', '2020-10-18 06:27:32', '', 0, 'http://localhost/eshopper/wp-content/uploads/2020/10/man-one.jpg', 0, 'attachment', 'image/jpeg', 0),
(70, 1, '2020-10-18 06:32:57', '2020-10-18 06:32:57', '<!-- wp:shortcode -->\r\n<p>[woocommerce_cart]</p>\r\n<!-- /wp:shortcode -->', 'Cart', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2020-10-18 06:32:57', '2020-10-18 06:32:57', '', 7, 'http://localhost/eshopper/2020/10/18/7-revision-v1/', 0, 'revision', '', 0),
(71, 1, '2020-10-18 06:34:03', '2020-10-18 06:34:03', '<!-- wp:paragraph -->\r\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:quote -->\r\n<blockquote class=\"wp-block-quote\">\r\n<p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</p>\r\n</blockquote>\r\n<!-- /wp:quote -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>...or something like this:</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:quote -->\r\n<blockquote class=\"wp-block-quote\">\r\n<p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p>\r\n</blockquote>\r\n<!-- /wp:quote -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/eshopper/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\r\n<!-- /wp:paragraph -->', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2020-10-18 06:34:03', '2020-10-18 06:34:03', '', 2, 'http://localhost/eshopper/2020/10/18/2-revision-v1/', 0, 'revision', '', 0),
(74, 1, '2020-10-28 08:58:42', '2020-10-28 08:58:42', '', 'Online Help', '', 'publish', 'closed', 'closed', '', 'online-help', '', '', '2020-10-28 08:58:42', '2020-10-28 08:58:42', '', 0, 'http://localhost/eshopper/?p=74', 1, 'nav_menu_item', '', 0),
(75, 1, '2020-10-28 08:58:42', '2020-10-28 08:58:42', '', 'Contact Us', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2020-10-28 08:58:42', '2020-10-28 08:58:42', '', 0, 'http://localhost/eshopper/?p=75', 2, 'nav_menu_item', '', 0),
(76, 1, '2020-10-28 08:58:42', '2020-10-28 08:58:42', '', 'Order Status', '', 'publish', 'closed', 'closed', '', 'order-status', '', '', '2020-10-28 08:58:42', '2020-10-28 08:58:42', '', 0, 'http://localhost/eshopper/?p=76', 3, 'nav_menu_item', '', 0),
(77, 1, '2020-10-28 08:58:42', '2020-10-28 08:58:42', '', 'Change Location', '', 'publish', 'closed', 'closed', '', 'change-location', '', '', '2020-10-28 08:58:42', '2020-10-28 08:58:42', '', 0, 'http://localhost/eshopper/?p=77', 4, 'nav_menu_item', '', 0),
(78, 1, '2020-10-28 08:58:42', '2020-10-28 08:58:42', '', 'FAQ’s', '', 'publish', 'closed', 'closed', '', 'faqs', '', '', '2020-10-28 08:58:42', '2020-10-28 08:58:42', '', 0, 'http://localhost/eshopper/?p=78', 5, 'nav_menu_item', '', 0),
(79, 1, '2020-10-28 09:26:38', '2020-10-28 09:26:38', '', 'T-Shirt', '', 'publish', 'closed', 'closed', '', 't-shirt', '', '', '2020-10-28 09:26:38', '2020-10-28 09:26:38', '', 0, 'http://localhost/eshopper/?p=79', 1, 'nav_menu_item', '', 0),
(80, 1, '2020-10-28 09:26:38', '2020-10-28 09:26:38', '', 'Mens', '', 'publish', 'closed', 'closed', '', 'mens', '', '', '2020-10-28 09:26:38', '2020-10-28 09:26:38', '', 0, 'http://localhost/eshopper/?p=80', 2, 'nav_menu_item', '', 0),
(81, 1, '2020-10-28 09:26:38', '2020-10-28 09:26:38', '', 'Womens', '', 'publish', 'closed', 'closed', '', 'womens', '', '', '2020-10-28 09:26:38', '2020-10-28 09:26:38', '', 0, 'http://localhost/eshopper/?p=81', 3, 'nav_menu_item', '', 0),
(82, 1, '2020-10-28 09:26:38', '2020-10-28 09:26:38', '', 'Gift Cards', '', 'publish', 'closed', 'closed', '', 'gift-cards', '', '', '2020-10-28 09:26:38', '2020-10-28 09:26:38', '', 0, 'http://localhost/eshopper/?p=82', 4, 'nav_menu_item', '', 0),
(83, 1, '2020-10-28 09:26:38', '2020-10-28 09:26:38', '', 'Shoes', '', 'publish', 'closed', 'closed', '', 'shoes', '', '', '2020-10-28 09:26:38', '2020-10-28 09:26:38', '', 0, 'http://localhost/eshopper/?p=83', 5, 'nav_menu_item', '', 0),
(84, 1, '2020-10-28 09:29:15', '2020-10-28 09:29:15', '', 'Terms of Use', '', 'publish', 'closed', 'closed', '', 'terms-of-use', '', '', '2020-10-28 09:29:15', '2020-10-28 09:29:15', '', 0, 'http://localhost/eshopper/?p=84', 1, 'nav_menu_item', '', 0),
(85, 1, '2020-10-28 09:29:15', '2020-10-28 09:29:15', '', 'Privecy Policy', '', 'publish', 'closed', 'closed', '', 'privecy-policy', '', '', '2020-10-28 09:29:15', '2020-10-28 09:29:15', '', 0, 'http://localhost/eshopper/?p=85', 2, 'nav_menu_item', '', 0),
(86, 1, '2020-10-28 09:29:15', '2020-10-28 09:29:15', '', 'Refund Policy', '', 'publish', 'closed', 'closed', '', 'refund-policy', '', '', '2020-10-28 09:29:15', '2020-10-28 09:29:15', '', 0, 'http://localhost/eshopper/?p=86', 3, 'nav_menu_item', '', 0),
(87, 1, '2020-10-28 09:29:15', '2020-10-28 09:29:15', '', 'Billing System', '', 'publish', 'closed', 'closed', '', 'billing-system', '', '', '2020-10-28 09:29:15', '2020-10-28 09:29:15', '', 0, 'http://localhost/eshopper/?p=87', 4, 'nav_menu_item', '', 0),
(88, 1, '2020-10-28 09:29:16', '2020-10-28 09:29:16', '', 'Ticket System', '', 'publish', 'closed', 'closed', '', 'ticket-system', '', '', '2020-10-28 09:29:16', '2020-10-28 09:29:16', '', 0, 'http://localhost/eshopper/?p=88', 5, 'nav_menu_item', '', 0),
(89, 1, '2020-10-28 09:31:21', '2020-10-28 09:31:21', '', 'Company Information', '', 'publish', 'closed', 'closed', '', 'company-information', '', '', '2020-10-28 09:31:21', '2020-10-28 09:31:21', '', 0, 'http://localhost/eshopper/?p=89', 1, 'nav_menu_item', '', 0),
(90, 1, '2020-10-28 09:31:21', '2020-10-28 09:31:21', '', 'Careers', '', 'publish', 'closed', 'closed', '', 'careers', '', '', '2020-10-28 09:31:21', '2020-10-28 09:31:21', '', 0, 'http://localhost/eshopper/?p=90', 2, 'nav_menu_item', '', 0),
(91, 1, '2020-10-28 09:31:21', '2020-10-28 09:31:21', '', 'Store Location', '', 'publish', 'closed', 'closed', '', 'store-location', '', '', '2020-10-28 09:31:21', '2020-10-28 09:31:21', '', 0, 'http://localhost/eshopper/?p=91', 3, 'nav_menu_item', '', 0),
(92, 1, '2020-10-28 09:31:22', '2020-10-28 09:31:22', '', 'Affillate Program', '', 'publish', 'closed', 'closed', '', 'affillate-program', '', '', '2020-10-28 09:31:22', '2020-10-28 09:31:22', '', 0, 'http://localhost/eshopper/?p=92', 4, 'nav_menu_item', '', 0),
(93, 1, '2020-10-28 09:31:22', '2020-10-28 09:31:22', '', 'Copyright', '', 'publish', 'closed', 'closed', '', 'copyright', '', '', '2020-10-28 09:31:22', '2020-10-28 09:31:22', '', 0, 'http://localhost/eshopper/?p=93', 5, 'nav_menu_item', '', 0),
(94, 1, '2020-10-28 09:42:58', '2020-10-28 09:42:58', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2020-10-28 09:42:58', '2020-10-28 09:42:58', '', 0, 'http://localhost/eshopper/?page_id=94', 0, 'page', '', 0),
(95, 1, '2020-10-28 09:42:58', '2020-10-28 09:42:58', '', 'Home', '', 'inherit', 'closed', 'closed', '', '94-revision-v1', '', '', '2020-10-28 09:42:58', '2020-10-28 09:42:58', '', 94, 'http://localhost/eshopper/2020/10/28/94-revision-v1/', 0, 'revision', '', 0),
(96, 1, '2020-10-28 09:43:23', '2020-10-28 09:43:23', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2020-10-28 09:43:23', '2020-10-28 09:43:23', '', 0, 'http://localhost/eshopper/?page_id=96', 0, 'page', '', 0),
(97, 1, '2020-10-28 09:43:23', '2020-10-28 09:43:23', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '96-revision-v1', '', '', '2020-10-28 09:43:23', '2020-10-28 09:43:23', '', 96, 'http://localhost/eshopper/2020/10/28/96-revision-v1/', 0, 'revision', '', 0),
(98, 1, '2020-10-28 09:43:35', '2020-10-28 09:43:35', '', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2020-10-28 11:13:08', '2020-10-28 11:13:08', '', 0, 'http://localhost/eshopper/?page_id=98', 0, 'page', '', 0),
(99, 1, '2020-10-28 09:43:35', '2020-10-28 09:43:35', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '98-revision-v1', '', '', '2020-10-28 09:43:35', '2020-10-28 09:43:35', '', 98, 'http://localhost/eshopper/2020/10/28/98-revision-v1/', 0, 'revision', '', 0),
(100, 1, '2020-10-28 09:44:56', '2020-10-28 09:44:56', ' ', '', '', 'publish', 'closed', 'closed', '', '100', '', '', '2020-10-30 07:46:48', '2020-10-30 07:46:48', '', 0, 'http://localhost/eshopper/?p=100', 6, 'nav_menu_item', '', 0),
(101, 1, '2020-10-28 09:44:56', '2020-10-28 09:44:56', ' ', '', '', 'publish', 'closed', 'closed', '', '101', '', '', '2020-10-30 07:46:48', '2020-10-30 07:46:48', '', 0, 'http://localhost/eshopper/?p=101', 5, 'nav_menu_item', '', 0),
(102, 1, '2020-10-28 09:44:55', '2020-10-28 09:44:55', ' ', '', '', 'publish', 'closed', 'closed', '', '102', '', '', '2020-10-30 07:46:47', '2020-10-30 07:46:47', '', 0, 'http://localhost/eshopper/?p=102', 1, 'nav_menu_item', '', 0),
(103, 1, '2020-10-28 09:44:56', '2020-10-28 09:44:56', ' ', '', '', 'publish', 'closed', 'closed', '', '103', '', '', '2020-10-30 07:46:48', '2020-10-30 07:46:48', '', 0, 'http://localhost/eshopper/?p=103', 3, 'nav_menu_item', '', 0),
(104, 1, '2020-10-28 09:44:56', '2020-10-28 09:44:56', ' ', '', '', 'publish', 'closed', 'closed', '', '104', '', '', '2020-10-30 07:46:48', '2020-10-30 07:46:48', '', 0, 'http://localhost/eshopper/?p=104', 4, 'nav_menu_item', '', 0),
(105, 1, '2020-10-28 09:44:21', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-10-28 09:44:21', '0000-00-00 00:00:00', '', 0, 'http://localhost/eshopper/?p=105', 1, 'nav_menu_item', '', 0),
(106, 1, '2020-10-28 09:44:55', '2020-10-28 09:44:55', ' ', '', '', 'publish', 'closed', 'closed', '', '106', '', '', '2020-10-30 07:46:48', '2020-10-30 07:46:48', '', 0, 'http://localhost/eshopper/?p=106', 2, 'nav_menu_item', '', 0),
(107, 1, '2020-10-28 10:56:58', '2020-10-28 10:56:58', '{\n    \"show_on_front\": {\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-10-28 10:56:58\"\n    },\n    \"page_on_front\": {\n        \"value\": \"94\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-10-28 10:56:58\"\n    },\n    \"page_for_posts\": {\n        \"value\": \"96\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-10-28 10:56:58\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '67c2b66e-3e42-483f-9eeb-db10103d8504', '', '', '2020-10-28 10:56:58', '2020-10-28 10:56:58', '', 0, 'http://localhost/eshopper/2020/10/28/67c2b66e-3e42-483f-9eeb-db10103d8504/', 0, 'customize_changeset', '', 0),
(108, 1, '2020-10-28 13:24:42', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-10-28 13:24:42', '0000-00-00 00:00:00', '', 0, 'http://localhost/eshopper/?post_type=acf-field-group&p=108', 0, 'acf-field-group', '', 0),
(109, 1, '2020-10-28 13:26:52', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-10-28 13:26:52', '0000-00-00 00:00:00', '', 0, 'http://localhost/eshopper/?post_type=acf-field-group&p=109', 0, 'acf-field-group', '', 0),
(110, 1, '2020-10-28 13:27:48', '2020-10-28 13:27:48', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:18:\"acf-options-header\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Header Top', 'header-top', 'publish', 'closed', 'closed', '', 'group_5f9971ca6e9b3', '', '', '2020-10-28 13:33:20', '2020-10-28 13:33:20', '', 0, 'http://localhost/eshopper/?post_type=acf-field-group&#038;p=110', 0, 'acf-field-group', '', 0),
(111, 1, '2020-10-28 13:29:27', '2020-10-28 13:29:27', 'a:12:{s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:4:\"step\";s:0:\"\";}', 'Phone No.', 'phone_no', 'publish', 'closed', 'closed', '', 'field_5f9971ed97db3', '', '', '2020-10-28 13:29:27', '2020-10-28 13:29:27', '', 110, 'http://localhost/eshopper/?post_type=acf-field&p=111', 0, 'acf-field', '', 0),
(112, 1, '2020-10-28 13:29:27', '2020-10-28 13:29:27', 'a:9:{s:4:\"type\";s:5:\"email\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Email ID', 'email_id', 'publish', 'closed', 'closed', '', 'field_5f99721897db4', '', '', '2020-10-28 13:29:27', '2020-10-28 13:29:27', '', 110, 'http://localhost/eshopper/?post_type=acf-field&p=112', 1, 'acf-field', '', 0),
(113, 1, '2020-10-28 13:30:04', '2020-10-28 13:30:04', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'Social Icons', 'social_icons', 'publish', 'closed', 'closed', '', 'field_5f997240407a9', '', '', '2020-10-28 13:30:04', '2020-10-28 13:30:04', '', 110, 'http://localhost/eshopper/?post_type=acf-field&p=113', 2, 'acf-field', '', 0),
(114, 1, '2020-10-28 13:45:07', '0000-00-00 00:00:00', '', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2020-10-28 13:45:07', '0000-00-00 00:00:00', '', 0, 'http://localhost/eshopper/?post_type=product&p=114', 0, 'product', '', 0),
(115, 1, '2020-10-28 13:45:50', '0000-00-00 00:00:00', '', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2020-10-28 13:45:50', '0000-00-00 00:00:00', '', 0, 'http://localhost/eshopper/?post_type=product&p=115', 0, 'product', '', 0),
(116, 1, '2020-10-28 13:46:46', '2020-10-28 13:46:46', '', 'Responsive Design', '', 'publish', 'open', 'closed', '', 'responsive-design', '', '', '2020-10-29 11:30:27', '2020-10-29 11:30:27', '', 0, 'http://localhost/eshopper/?post_type=banners&#038;p=116', 0, 'banners', '', 0),
(117, 1, '2020-10-28 13:47:07', '2020-10-28 13:47:07', '', 'Ecommerce Template', '', 'publish', 'open', 'closed', '', 'ecommerce-template', '', '', '2020-10-29 11:57:43', '2020-10-29 11:57:43', '', 0, 'http://localhost/eshopper/?post_type=banners&#038;p=117', 0, 'banners', '', 0),
(118, 1, '2020-10-28 13:47:56', '2020-10-28 13:47:56', '', 'Free E-Commerce Template', '', 'publish', 'open', 'closed', '', 'free-e-commerce-template', '', '', '2020-10-29 11:30:15', '2020-10-29 11:30:15', '', 0, 'http://localhost/eshopper/?post_type=banners&#038;p=118', 0, 'banners', '', 0),
(119, 1, '2020-10-29 07:27:59', '2020-10-29 07:27:59', '', 'girl1', '', 'inherit', 'open', 'closed', '', 'girl1', '', '', '2020-10-29 07:27:59', '2020-10-29 07:27:59', '', 118, 'http://localhost/eshopper/wp-content/uploads/2020/10/girl1.jpg', 0, 'attachment', 'image/jpeg', 0),
(120, 1, '2020-10-29 07:28:41', '2020-10-29 07:28:41', '', 'girl2', '', 'inherit', 'open', 'closed', '', 'girl2', '', '', '2020-10-29 07:28:41', '2020-10-29 07:28:41', '', 117, 'http://localhost/eshopper/wp-content/uploads/2020/10/girl2.jpg', 0, 'attachment', 'image/jpeg', 0),
(121, 1, '2020-10-29 07:29:14', '2020-10-29 07:29:14', '', 'girl3', '', 'inherit', 'open', 'closed', '', 'girl3', '', '', '2020-10-29 07:29:14', '2020-10-29 07:29:14', '', 116, 'http://localhost/eshopper/wp-content/uploads/2020/10/girl3.jpg', 0, 'attachment', 'image/jpeg', 0),
(122, 1, '2020-10-29 07:53:34', '2020-10-29 07:53:34', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:7:\"banners\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Banner', 'banner', 'publish', 'closed', 'closed', '', 'group_5f9a748636c1d', '', '', '2020-10-29 08:45:42', '2020-10-29 08:45:42', '', 0, 'http://localhost/eshopper/?post_type=acf-field-group&#038;p=122', 0, 'acf-field-group', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(123, 1, '2020-10-29 07:53:34', '2020-10-29 07:53:34', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Heading', 'heading', 'publish', 'closed', 'closed', '', 'field_5f9a748fc724c', '', '', '2020-10-29 08:45:11', '2020-10-29 08:45:11', '', 122, 'http://localhost/eshopper/?post_type=acf-field&#038;p=123', 0, 'acf-field', '', 0),
(124, 1, '2020-10-29 07:53:35', '2020-10-29 07:53:35', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Sub-heading', 'sub-heading', 'publish', 'closed', 'closed', '', 'field_5f9a74a1c724d', '', '', '2020-10-29 07:55:26', '2020-10-29 07:55:26', '', 122, 'http://localhost/eshopper/?post_type=acf-field&#038;p=124', 1, 'acf-field', '', 0),
(125, 1, '2020-10-29 07:53:35', '2020-10-29 07:53:35', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Description', 'description', 'publish', 'closed', 'closed', '', 'field_5f9a74dbc724e', '', '', '2020-10-29 07:53:35', '2020-10-29 07:53:35', '', 122, 'http://localhost/eshopper/?post_type=acf-field&p=125', 2, 'acf-field', '', 0),
(126, 1, '2020-10-29 07:55:26', '2020-10-29 07:55:26', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Button Text', 'button_text', 'publish', 'closed', 'closed', '', 'field_5f9a75244ce9a', '', '', '2020-10-29 07:55:26', '2020-10-29 07:55:26', '', 122, 'http://localhost/eshopper/?post_type=acf-field&p=126', 3, 'acf-field', '', 0),
(127, 1, '2020-10-29 07:55:26', '2020-10-29 07:55:26', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Button Link', 'button_link', 'publish', 'closed', 'closed', '', 'field_5f9a753c4ce9b', '', '', '2020-10-29 07:55:26', '2020-10-29 07:55:26', '', 122, 'http://localhost/eshopper/?post_type=acf-field&p=127', 4, 'acf-field', '', 0),
(128, 1, '2020-10-29 07:55:26', '2020-10-29 07:55:26', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Price', 'price', 'publish', 'closed', 'closed', '', 'field_5f9a75494ce9c', '', '', '2020-10-29 08:45:42', '2020-10-29 08:45:42', '', 122, 'http://localhost/eshopper/?post_type=acf-field&#038;p=128', 5, 'acf-field', '', 0),
(129, 1, '2020-10-29 08:51:18', '2020-10-29 08:51:18', '', 'pricing', '', 'inherit', 'open', 'closed', '', 'pricing', '', '', '2020-10-29 08:51:18', '2020-10-29 08:51:18', '', 118, 'http://localhost/eshopper/wp-content/uploads/2020/10/pricing.png', 0, 'attachment', 'image/png', 0),
(130, 1, '2020-10-29 11:03:40', '2020-10-29 11:03:40', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:16:\"acf-options-logo\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Logo', 'logo', 'publish', 'closed', 'closed', '', 'group_5f9aa14858746', '', '', '2020-10-29 11:16:02', '2020-10-29 11:16:02', '', 0, 'http://localhost/eshopper/?post_type=acf-field-group&#038;p=130', 0, 'acf-field-group', '', 0),
(131, 1, '2020-10-29 11:03:40', '2020-10-29 11:03:40', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Logo', 'logo', 'publish', 'closed', 'closed', '', 'field_5f9aa14e02364', '', '', '2020-10-29 11:16:02', '2020-10-29 11:16:02', '', 130, 'http://localhost/eshopper/?post_type=acf-field&#038;p=131', 0, 'acf-field', '', 0),
(132, 1, '2020-10-29 11:10:43', '2020-10-29 11:10:43', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2020-10-29 11:10:43', '2020-10-29 11:10:43', '', 0, 'http://localhost/eshopper/wp-content/uploads/2020/10/logo.png', 0, 'attachment', 'image/png', 0),
(133, 1, '2020-10-30 07:59:44', '2020-10-30 07:59:44', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>', 'Girls Pink T Shirt arrived in store', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2020-10-30 07:59:44', '2020-10-30 07:59:44', '', 1, 'http://localhost/eshopper/2020/10/30/1-revision-v1/', 0, 'revision', '', 0),
(134, 1, '2020-10-30 08:04:37', '2020-10-30 08:04:37', 'The default image sizes of WordPress are “Thumbnail”, “Medium”, “Large” and “Full Size” (the original size of the image you uploaded). These image sizes can be configured in the WordPress Administration Media panel under <strong>&gt;Settings &gt; Media</strong>. You can also define your own image size by passing an array with your image dimensions:', 'Girls Pink T Shirt arrived in store', '', 'publish', 'open', 'open', '', 'girls-pink-t-shirt-arrived-in-store', '', '', '2020-10-30 10:18:34', '2020-10-30 10:18:34', '', 0, 'http://localhost/eshopper/?p=134', 0, 'post', '', 0),
(135, 1, '2020-10-30 08:04:37', '2020-10-30 08:04:37', 'The default image sizes of WordPress are “Thumbnail”, “Medium”, “Large” and “Full Size” (the original size of the image you uploaded). These image sizes can be configured in the WordPress Administration Media panel under <strong>&gt;Settings &gt; Media</strong>. You can also define your own image size by passing an array with your image dimensions:', 'Girls Pink T Shirt arrived in store', '', 'inherit', 'closed', 'closed', '', '134-revision-v1', '', '', '2020-10-30 08:04:37', '2020-10-30 08:04:37', '', 134, 'http://localhost/eshopper/2020/10/30/134-revision-v1/', 0, 'revision', '', 0),
(136, 1, '2020-10-30 08:05:04', '2020-10-30 08:05:04', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.', 'Girls Blue T Shirt arrived in store', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2020-10-30 08:05:04', '2020-10-30 08:05:04', '', 1, 'http://localhost/eshopper/2020/10/30/1-revision-v1/', 0, 'revision', '', 0),
(137, 1, '2020-10-30 08:06:14', '2020-10-30 08:06:14', 'Featured Images are given a class “wp-post-image”. They also get a class depending on the size of the thumbnail being displayed. You can style the output with these CSS selectors', 'Girls Face T Top arrived in store', '', 'publish', 'open', 'open', '', 'girls-face-t-top-arrived-in-store', '', '', '2020-10-30 10:18:12', '2020-10-30 10:18:12', '', 0, 'http://localhost/eshopper/?p=137', 0, 'post', '', 0),
(138, 1, '2020-10-30 08:06:14', '2020-10-30 08:06:14', 'Featured Images are given a class “wp-post-image”. They also get a class depending on the size of the thumbnail being displayed. You can style the output with these CSS selectors', 'Girls Face T Top arrived in store', '', 'inherit', 'closed', 'closed', '', '137-revision-v1', '', '', '2020-10-30 08:06:14', '2020-10-30 08:06:14', '', 137, 'http://localhost/eshopper/2020/10/30/137-revision-v1/', 0, 'revision', '', 0),
(139, 1, '2020-11-02 08:43:03', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-11-02 08:43:03', '0000-00-00 00:00:00', '', 0, 'http://localhost/eshopper/?p=139', 0, 'post', '', 0),
(140, 1, '2020-11-02 12:28:50', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-11-02 12:28:50', '0000-00-00 00:00:00', '', 0, 'http://localhost/eshopper/?post_type=shop_coupon&p=140', 0, 'shop_coupon', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_termmeta`
--

INSERT INTO `wp_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 16, 'order', '0'),
(2, 17, 'order', '0'),
(3, 18, 'order', '0'),
(4, 19, 'order', '0'),
(5, 20, 'order', '0'),
(6, 15, 'product_count_product_cat', '0'),
(7, 21, 'order', '0'),
(8, 17, 'product_count_product_cat', '5'),
(9, 18, 'product_count_product_cat', '3'),
(10, 19, 'product_count_product_cat', '5'),
(11, 20, 'product_count_product_cat', '2'),
(12, 16, 'product_count_product_cat', '14'),
(13, 21, 'product_count_product_cat', '1'),
(14, 31, 'cat_term_img', 'http://localhost/eshopper/wp-content/uploads/2020/10/lee-cooper.png'),
(15, 32, 'cat_term_img', 'http://localhost/eshopper/wp-content/uploads/2020/10/addidas.jpg'),
(16, 33, 'cat_term_img', 'http://localhost/eshopper/wp-content/uploads/2020/10/nike.png'),
(17, 35, 'product_count_product_tag', '1'),
(18, 37, 'product_count_product_tag', '1'),
(19, 38, 'product_count_product_tag', '1'),
(20, 36, 'product_count_product_tag', '1'),
(21, 39, 'product_count_product_tag', '1'),
(22, 40, 'product_count_product_tag', '1'),
(23, 41, 'product_count_product_tag', '1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'simple', 'simple', 0),
(3, 'grouped', 'grouped', 0),
(4, 'variable', 'variable', 0),
(5, 'external', 'external', 0),
(6, 'exclude-from-search', 'exclude-from-search', 0),
(7, 'exclude-from-catalog', 'exclude-from-catalog', 0),
(8, 'featured', 'featured', 0),
(9, 'outofstock', 'outofstock', 0),
(10, 'rated-1', 'rated-1', 0),
(11, 'rated-2', 'rated-2', 0),
(12, 'rated-3', 'rated-3', 0),
(13, 'rated-4', 'rated-4', 0),
(14, 'rated-5', 'rated-5', 0),
(15, 'Uncategorized', 'uncategorized', 0),
(16, 'Clothing', 'clothing', 0),
(17, 'Tshirts', 'tshirts', 0),
(18, 'Hoodies', 'hoodies', 0),
(19, 'Accessories', 'accessories', 0),
(20, 'Music', 'music', 0),
(21, 'Decor', 'decor', 0),
(22, 'Blue', 'blue', 0),
(23, 'Green', 'green', 0),
(24, 'Large', 'large', 0),
(25, 'Medium', 'medium', 0),
(26, 'Red', 'red', 0),
(27, 'Small', 'small', 0),
(28, 'Gray', 'gray', 0),
(29, 'Yellow', 'yellow', 0),
(30, 'isdisabled', 'isdisabled', 0),
(31, 'Lee Cooper', 'lee-cooper', 0),
(32, 'Adidas', 'adidas', 0),
(33, 'Nike', 'nike', 0),
(34, 'Product Type', 'product-type', 0),
(35, 'Substrate', 'substrate', 0),
(36, 'Weight', 'weight', 0),
(37, 'Product Style', 'product-style', 0),
(38, 'Color', 'color', 0),
(39, 'Shirt', 'shirt', 0),
(40, 'Skirt', 'skirt', 0),
(41, 'Top', 'top', 0),
(42, 'Header Menu', 'header-menu', 0),
(43, 'Service', 'service', 0),
(44, 'Quock Shop', 'quock-shop', 0),
(45, 'Policies', 'policies', 0),
(46, 'About Shopper', 'about-shopper', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(11, 2, 0),
(11, 19, 0),
(12, 2, 0),
(12, 8, 0),
(12, 19, 0),
(12, 29, 0),
(12, 31, 0),
(12, 33, 0),
(13, 2, 0),
(13, 8, 0),
(13, 19, 0),
(14, 2, 0),
(14, 6, 0),
(14, 7, 0),
(14, 8, 0),
(14, 18, 0),
(14, 28, 0),
(15, 2, 0),
(15, 8, 0),
(15, 18, 0),
(18, 4, 0),
(18, 8, 0),
(18, 17, 0),
(18, 22, 0),
(18, 23, 0),
(18, 24, 0),
(18, 25, 0),
(18, 26, 0),
(18, 27, 0),
(19, 4, 0),
(19, 18, 0),
(19, 22, 0),
(19, 23, 0),
(19, 26, 0),
(20, 2, 0),
(20, 18, 0),
(20, 22, 0),
(21, 2, 0),
(21, 17, 0),
(21, 28, 0),
(21, 31, 0),
(21, 32, 0),
(22, 2, 0),
(22, 19, 0),
(22, 26, 0),
(22, 31, 0),
(22, 39, 0),
(22, 40, 0),
(22, 41, 0),
(23, 2, 0),
(23, 17, 0),
(23, 23, 0),
(24, 2, 0),
(24, 17, 0),
(24, 22, 0),
(24, 32, 0),
(24, 33, 0),
(25, 2, 0),
(25, 20, 0),
(26, 2, 0),
(26, 20, 0),
(26, 36, 0),
(26, 38, 0),
(33, 2, 0),
(33, 17, 0),
(33, 28, 0),
(34, 2, 0),
(34, 19, 0),
(34, 26, 0),
(35, 3, 0),
(35, 16, 0),
(35, 31, 0),
(35, 33, 0),
(35, 35, 0),
(35, 37, 0),
(36, 5, 0),
(36, 21, 0),
(74, 43, 0),
(75, 43, 0),
(76, 43, 0),
(77, 43, 0),
(78, 43, 0),
(79, 44, 0),
(80, 44, 0),
(81, 44, 0),
(82, 44, 0),
(83, 44, 0),
(84, 45, 0),
(85, 45, 0),
(86, 45, 0),
(87, 45, 0),
(88, 45, 0),
(89, 46, 0),
(90, 46, 0),
(91, 46, 0),
(92, 46, 0),
(93, 46, 0),
(100, 42, 0),
(101, 42, 0),
(102, 42, 0),
(103, 42, 0),
(104, 42, 0),
(106, 42, 0),
(134, 1, 0),
(137, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 3),
(2, 2, 'product_type', '', 0, 14),
(3, 3, 'product_type', '', 0, 1),
(4, 4, 'product_type', '', 0, 2),
(5, 5, 'product_type', '', 0, 1),
(6, 6, 'product_visibility', '', 0, 1),
(7, 7, 'product_visibility', '', 0, 1),
(8, 8, 'product_visibility', '', 0, 5),
(9, 9, 'product_visibility', '', 0, 0),
(10, 10, 'product_visibility', '', 0, 0),
(11, 11, 'product_visibility', '', 0, 0),
(12, 12, 'product_visibility', '', 0, 0),
(13, 13, 'product_visibility', '', 0, 0),
(14, 14, 'product_visibility', '', 0, 0),
(15, 15, 'product_cat', '', 0, 0),
(16, 16, 'product_cat', '', 0, 1),
(17, 17, 'product_cat', '', 16, 5),
(18, 18, 'product_cat', '', 16, 4),
(19, 19, 'product_cat', '', 16, 5),
(20, 20, 'product_cat', '', 0, 2),
(21, 21, 'product_cat', '', 0, 1),
(22, 22, 'pa_color', '', 0, 4),
(23, 23, 'pa_color', '', 0, 3),
(24, 24, 'pa_size', '', 0, 1),
(25, 25, 'pa_size', '', 0, 1),
(26, 26, 'pa_color', '', 0, 4),
(27, 27, 'pa_size', '', 0, 1),
(28, 28, 'pa_color', '', 0, 3),
(29, 29, 'pa_color', '', 0, 1),
(30, 30, 'berocket_taxonomy_data', '', 0, 0),
(31, 31, 'brand', 'Founded in London’s East End in 1908, Lee Cooper has a rich history spanning over a century, establishing its iconic status as the Original British Denim brand. From humble beginnings in workwear, our brand has become known as a global style innovator and the go-to-denim for legendary British rock ‘n’ roll bands.\r\n\r\nThe heritage of the pioneering principles established by Morris Cooper have informed this latest line of premium selvedge denim – The Cooper Collection.', 0, 4),
(32, 32, 'brand', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 0, 2),
(33, 33, 'brand', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary.', 0, 3),
(34, 34, 'product_tag', 'For this reason, dummy text usually consists of a more or less random series of words or syllables. This prevents repetitive patterns from impairing the overall visual impression and facilitates the comparison of different typefaces. Furthermore, it is advantageous when the dummy text is relatively realistic so that the layout impression of the final publication is not compromised.', 0, 0),
(35, 35, 'product_tag', 'Dummy text is also known as \'fill text\'. It is said that song composers of the past used dummy texts as lyrics when writing melodies in order to have a \'ready-made\' text to sing with the melody. Dummy texts have been in use by typesetters since the 16th century.', 0, 1),
(36, 36, 'product_tag', 'Moreover, in Latin only words at the beginning of sentences are capitalized; this means that Lorem Ipsum cannot accurately represent, for example, German, in which all nouns are capitalized.', 0, 1),
(37, 37, 'product_tag', 'According to most sources, Lorum Ipsum can be traced back to a text composed by Cicero in 45 BC. Allegedly, a Latin scholar established the origin of the text by compiling all the instances of the unusual word \'consectetur\' he could find and eventually recognized it as', 0, 1),
(38, 38, 'product_tag', '', 0, 1),
(39, 39, 'product_tag', '', 0, 1),
(40, 40, 'product_tag', '', 0, 1),
(41, 41, 'product_tag', '', 0, 1),
(42, 42, 'nav_menu', '', 0, 6),
(43, 43, 'nav_menu', '', 0, 5),
(44, 44, 'nav_menu', '', 0, 5),
(45, 45, 'nav_menu', '', 0, 5),
(46, 46, 'nav_menu', '', 0, 5);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

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
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:6:{s:64:\"c15483846ab0a12cabfa1c7f5c409730b7986a53c8dcaada6b3fb715e54d0287\";a:4:{s:10:\"expiration\";i:1604314570;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:77:\"Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0\";s:5:\"login\";i:1604141770;}s:64:\"bd394c7b0f3910c923c13eb05d2b151db9e3f17d62e2be37969dd9b9f6bcc90d\";a:4:{s:10:\"expiration\";i:1604380681;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:77:\"Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0\";s:5:\"login\";i:1604207881;}s:64:\"b4c4033bcae6934c782434f2f2ded040f5a0bfd53f617c9d1d6a37579bf8d53d\";a:4:{s:10:\"expiration\";i:1604466533;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:77:\"Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0\";s:5:\"login\";i:1604293733;}s:64:\"c69ada9526fbc1a878f24e7a51b45dacf56e03ae72a2193f0f02448d0bab1c83\";a:4:{s:10:\"expiration\";i:1604471909;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:77:\"Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0\";s:5:\"login\";i:1604299109;}s:64:\"20b7b1fd1720fb7c107246cf4109afb44729bffbf3f2490c5d2e1336bd943a87\";a:4:{s:10:\"expiration\";i:1604479372;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:77:\"Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0\";s:5:\"login\";i:1604306572;}s:64:\"e2f6f353cb739ee5fe0a403ff14d7a47968b8f7f207a20cb9fe4fece475d8e48\";a:4:{s:10:\"expiration\";i:1604487332;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\";s:5:\"login\";i:1604314532;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '139'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, '_woocommerce_tracks_anon_id', 'woo:lk+zVgFsvEpHt8As4D60xEoM'),
(20, 1, 'last_update', '1602407333'),
(21, 1, 'woocommerce_admin_activity_panel_inbox_last_read', '1602407332641'),
(22, 1, 'wc_last_active', '1604275200'),
(24, 1, '_order_count', '0'),
(26, 1, 'wp_woocommerce_product_import_mapping', 'a:51:{i:0;s:2:\"id\";i:1;s:4:\"type\";i:2;s:3:\"sku\";i:3;s:4:\"name\";i:4;s:9:\"published\";i:5;s:8:\"featured\";i:6;s:18:\"catalog_visibility\";i:7;s:17:\"short_description\";i:8;s:11:\"description\";i:9;s:17:\"date_on_sale_from\";i:10;s:15:\"date_on_sale_to\";i:11;s:10:\"tax_status\";i:12;s:9:\"tax_class\";i:13;s:12:\"stock_status\";i:14;s:14:\"stock_quantity\";i:15;s:10:\"backorders\";i:16;s:17:\"sold_individually\";i:17;s:0:\"\";i:18;s:0:\"\";i:19;s:0:\"\";i:20;s:0:\"\";i:21;s:15:\"reviews_allowed\";i:22;s:13:\"purchase_note\";i:23;s:10:\"sale_price\";i:24;s:13:\"regular_price\";i:25;s:12:\"category_ids\";i:26;s:7:\"tag_ids\";i:27;s:17:\"shipping_class_id\";i:28;s:6:\"images\";i:29;s:14:\"download_limit\";i:30;s:15:\"download_expiry\";i:31;s:9:\"parent_id\";i:32;s:16:\"grouped_products\";i:33;s:10:\"upsell_ids\";i:34;s:14:\"cross_sell_ids\";i:35;s:11:\"product_url\";i:36;s:11:\"button_text\";i:37;s:10:\"menu_order\";i:38;s:16:\"attributes:name1\";i:39;s:17:\"attributes:value1\";i:40;s:19:\"attributes:visible1\";i:41;s:20:\"attributes:taxonomy1\";i:42;s:16:\"attributes:name2\";i:43;s:17:\"attributes:value2\";i:44;s:19:\"attributes:visible2\";i:45;s:20:\"attributes:taxonomy2\";i:46;s:23:\"meta:_wpcom_is_markdown\";i:47;s:15:\"downloads:name1\";i:48;s:14:\"downloads:url1\";i:49;s:15:\"downloads:name2\";i:50;s:14:\"downloads:url2\";}'),
(27, 1, 'wp_product_import_error_log', 'a:25:{i:0;O:8:\"WP_Error\":2:{s:6:\"errors\";a:1:{s:34:\"woocommerce_product_importer_error\";a:1:{i:0;s:37:\"No matching product exists to update.\";}}s:10:\"error_data\";a:1:{s:34:\"woocommerce_product_importer_error\";a:3:{s:2:\"id\";i:44;s:3:\"sku\";s:13:\"woo-vneck-tee\";s:3:\"row\";s:40:\"V-Neck T-Shirt, ID 44, SKU woo-vneck-tee\";}}}i:1;O:8:\"WP_Error\":2:{s:6:\"errors\";a:1:{s:34:\"woocommerce_product_importer_error\";a:1:{i:0;s:37:\"No matching product exists to update.\";}}s:10:\"error_data\";a:1:{s:34:\"woocommerce_product_importer_error\";a:3:{s:2:\"id\";i:45;s:3:\"sku\";s:10:\"woo-hoodie\";s:3:\"row\";s:29:\"Hoodie, ID 45, SKU woo-hoodie\";}}}i:2;O:8:\"WP_Error\":2:{s:6:\"errors\";a:1:{s:34:\"woocommerce_product_importer_error\";a:1:{i:0;s:37:\"No matching product exists to update.\";}}s:10:\"error_data\";a:1:{s:34:\"woocommerce_product_importer_error\";a:3:{s:2:\"id\";i:46;s:3:\"sku\";s:20:\"woo-hoodie-with-logo\";s:3:\"row\";s:49:\"Hoodie with Logo, ID 46, SKU woo-hoodie-with-logo\";}}}i:3;O:8:\"WP_Error\":2:{s:6:\"errors\";a:1:{s:34:\"woocommerce_product_importer_error\";a:1:{i:0;s:37:\"No matching product exists to update.\";}}s:10:\"error_data\";a:1:{s:34:\"woocommerce_product_importer_error\";a:3:{s:2:\"id\";i:47;s:3:\"sku\";s:10:\"woo-tshirt\";s:3:\"row\";s:30:\"T-Shirt, ID 47, SKU woo-tshirt\";}}}i:4;O:8:\"WP_Error\":2:{s:6:\"errors\";a:1:{s:34:\"woocommerce_product_importer_error\";a:1:{i:0;s:37:\"No matching product exists to update.\";}}s:10:\"error_data\";a:1:{s:34:\"woocommerce_product_importer_error\";a:3:{s:2:\"id\";i:48;s:3:\"sku\";s:10:\"woo-beanie\";s:3:\"row\";s:29:\"Beanie, ID 48, SKU woo-beanie\";}}}i:5;O:8:\"WP_Error\":2:{s:6:\"errors\";a:1:{s:34:\"woocommerce_product_importer_error\";a:1:{i:0;s:37:\"No matching product exists to update.\";}}s:10:\"error_data\";a:1:{s:34:\"woocommerce_product_importer_error\";a:3:{s:2:\"id\";i:58;s:3:\"sku\";s:8:\"woo-belt\";s:3:\"row\";s:25:\"Belt, ID 58, SKU woo-belt\";}}}i:6;O:8:\"WP_Error\":2:{s:6:\"errors\";a:1:{s:34:\"woocommerce_product_importer_error\";a:1:{i:0;s:37:\"No matching product exists to update.\";}}s:10:\"error_data\";a:1:{s:34:\"woocommerce_product_importer_error\";a:3:{s:2:\"id\";i:60;s:3:\"sku\";s:7:\"woo-cap\";s:3:\"row\";s:23:\"Cap, ID 60, SKU woo-cap\";}}}i:7;O:8:\"WP_Error\":2:{s:6:\"errors\";a:1:{s:34:\"woocommerce_product_importer_error\";a:1:{i:0;s:37:\"No matching product exists to update.\";}}s:10:\"error_data\";a:1:{s:34:\"woocommerce_product_importer_error\";a:3:{s:2:\"id\";i:62;s:3:\"sku\";s:14:\"woo-sunglasses\";s:3:\"row\";s:37:\"Sunglasses, ID 62, SKU woo-sunglasses\";}}}i:8;O:8:\"WP_Error\":2:{s:6:\"errors\";a:1:{s:34:\"woocommerce_product_importer_error\";a:1:{i:0;s:37:\"No matching product exists to update.\";}}s:10:\"error_data\";a:1:{s:34:\"woocommerce_product_importer_error\";a:3:{s:2:\"id\";i:64;s:3:\"sku\";s:22:\"woo-hoodie-with-pocket\";s:3:\"row\";s:53:\"Hoodie with Pocket, ID 64, SKU woo-hoodie-with-pocket\";}}}i:9;O:8:\"WP_Error\":2:{s:6:\"errors\";a:1:{s:34:\"woocommerce_product_importer_error\";a:1:{i:0;s:37:\"No matching product exists to update.\";}}s:10:\"error_data\";a:1:{s:34:\"woocommerce_product_importer_error\";a:3:{s:2:\"id\";i:66;s:3:\"sku\";s:22:\"woo-hoodie-with-zipper\";s:3:\"row\";s:53:\"Hoodie with Zipper, ID 66, SKU woo-hoodie-with-zipper\";}}}i:10;O:8:\"WP_Error\":2:{s:6:\"errors\";a:1:{s:34:\"woocommerce_product_importer_error\";a:1:{i:0;s:37:\"No matching product exists to update.\";}}s:10:\"error_data\";a:1:{s:34:\"woocommerce_product_importer_error\";a:3:{s:2:\"id\";i:68;s:3:\"sku\";s:19:\"woo-long-sleeve-tee\";s:3:\"row\";s:47:\"Long Sleeve Tee, ID 68, SKU woo-long-sleeve-tee\";}}}i:11;O:8:\"WP_Error\":2:{s:6:\"errors\";a:1:{s:34:\"woocommerce_product_importer_error\";a:1:{i:0;s:37:\"No matching product exists to update.\";}}s:10:\"error_data\";a:1:{s:34:\"woocommerce_product_importer_error\";a:3:{s:2:\"id\";i:70;s:3:\"sku\";s:8:\"woo-polo\";s:3:\"row\";s:25:\"Polo, ID 70, SKU woo-polo\";}}}i:12;O:8:\"WP_Error\":2:{s:6:\"errors\";a:1:{s:34:\"woocommerce_product_importer_error\";a:1:{i:0;s:37:\"No matching product exists to update.\";}}s:10:\"error_data\";a:1:{s:34:\"woocommerce_product_importer_error\";a:3:{s:2:\"id\";i:73;s:3:\"sku\";s:9:\"woo-album\";s:3:\"row\";s:27:\"Album, ID 73, SKU woo-album\";}}}i:13;O:8:\"WP_Error\":2:{s:6:\"errors\";a:1:{s:34:\"woocommerce_product_importer_error\";a:1:{i:0;s:37:\"No matching product exists to update.\";}}s:10:\"error_data\";a:1:{s:34:\"woocommerce_product_importer_error\";a:3:{s:2:\"id\";i:75;s:3:\"sku\";s:10:\"woo-single\";s:3:\"row\";s:29:\"Single, ID 75, SKU woo-single\";}}}i:14;O:8:\"WP_Error\":2:{s:6:\"errors\";a:1:{s:34:\"woocommerce_product_importer_error\";a:1:{i:0;s:37:\"No matching product exists to update.\";}}s:10:\"error_data\";a:1:{s:34:\"woocommerce_product_importer_error\";a:3:{s:2:\"id\";i:76;s:3:\"sku\";s:17:\"woo-vneck-tee-red\";s:3:\"row\";s:50:\"V-Neck T-Shirt - Red, ID 76, SKU woo-vneck-tee-red\";}}}i:15;O:8:\"WP_Error\":2:{s:6:\"errors\";a:1:{s:34:\"woocommerce_product_importer_error\";a:1:{i:0;s:37:\"No matching product exists to update.\";}}s:10:\"error_data\";a:1:{s:34:\"woocommerce_product_importer_error\";a:3:{s:2:\"id\";i:77;s:3:\"sku\";s:19:\"woo-vneck-tee-green\";s:3:\"row\";s:54:\"V-Neck T-Shirt - Green, ID 77, SKU woo-vneck-tee-green\";}}}i:16;O:8:\"WP_Error\":2:{s:6:\"errors\";a:1:{s:34:\"woocommerce_product_importer_error\";a:1:{i:0;s:37:\"No matching product exists to update.\";}}s:10:\"error_data\";a:1:{s:34:\"woocommerce_product_importer_error\";a:3:{s:2:\"id\";i:78;s:3:\"sku\";s:18:\"woo-vneck-tee-blue\";s:3:\"row\";s:52:\"V-Neck T-Shirt - Blue, ID 78, SKU woo-vneck-tee-blue\";}}}i:17;O:8:\"WP_Error\":2:{s:6:\"errors\";a:1:{s:34:\"woocommerce_product_importer_error\";a:1:{i:0;s:37:\"No matching product exists to update.\";}}s:10:\"error_data\";a:1:{s:34:\"woocommerce_product_importer_error\";a:3:{s:2:\"id\";i:79;s:3:\"sku\";s:14:\"woo-hoodie-red\";s:3:\"row\";s:43:\"Hoodie - Red, No, ID 79, SKU woo-hoodie-red\";}}}i:18;O:8:\"WP_Error\":2:{s:6:\"errors\";a:1:{s:34:\"woocommerce_product_importer_error\";a:1:{i:0;s:37:\"No matching product exists to update.\";}}s:10:\"error_data\";a:1:{s:34:\"woocommerce_product_importer_error\";a:3:{s:2:\"id\";i:80;s:3:\"sku\";s:16:\"woo-hoodie-green\";s:3:\"row\";s:47:\"Hoodie - Green, No, ID 80, SKU woo-hoodie-green\";}}}i:19;O:8:\"WP_Error\":2:{s:6:\"errors\";a:1:{s:34:\"woocommerce_product_importer_error\";a:1:{i:0;s:37:\"No matching product exists to update.\";}}s:10:\"error_data\";a:1:{s:34:\"woocommerce_product_importer_error\";a:3:{s:2:\"id\";i:81;s:3:\"sku\";s:15:\"woo-hoodie-blue\";s:3:\"row\";s:45:\"Hoodie - Blue, No, ID 81, SKU woo-hoodie-blue\";}}}i:20;O:8:\"WP_Error\":2:{s:6:\"errors\";a:1:{s:34:\"woocommerce_product_importer_error\";a:1:{i:0;s:37:\"No matching product exists to update.\";}}s:10:\"error_data\";a:1:{s:34:\"woocommerce_product_importer_error\";a:3:{s:2:\"id\";i:83;s:3:\"sku\";s:15:\"Woo-tshirt-logo\";s:3:\"row\";s:45:\"T-Shirt with Logo, ID 83, SKU Woo-tshirt-logo\";}}}i:21;O:8:\"WP_Error\":2:{s:6:\"errors\";a:1:{s:34:\"woocommerce_product_importer_error\";a:1:{i:0;s:37:\"No matching product exists to update.\";}}s:10:\"error_data\";a:1:{s:34:\"woocommerce_product_importer_error\";a:3:{s:2:\"id\";i:85;s:3:\"sku\";s:15:\"Woo-beanie-logo\";s:3:\"row\";s:44:\"Beanie with Logo, ID 85, SKU Woo-beanie-logo\";}}}i:22;O:8:\"WP_Error\":2:{s:6:\"errors\";a:1:{s:34:\"woocommerce_product_importer_error\";a:1:{i:0;s:37:\"No matching product exists to update.\";}}s:10:\"error_data\";a:1:{s:34:\"woocommerce_product_importer_error\";a:3:{s:2:\"id\";i:87;s:3:\"sku\";s:15:\"logo-collection\";s:3:\"row\";s:43:\"Logo Collection, ID 87, SKU logo-collection\";}}}i:23;O:8:\"WP_Error\":2:{s:6:\"errors\";a:1:{s:34:\"woocommerce_product_importer_error\";a:1:{i:0;s:37:\"No matching product exists to update.\";}}s:10:\"error_data\";a:1:{s:34:\"woocommerce_product_importer_error\";a:3:{s:2:\"id\";i:89;s:3:\"sku\";s:10:\"wp-pennant\";s:3:\"row\";s:40:\"WordPress Pennant, ID 89, SKU wp-pennant\";}}}i:24;O:8:\"WP_Error\":2:{s:6:\"errors\";a:1:{s:34:\"woocommerce_product_importer_error\";a:1:{i:0;s:37:\"No matching product exists to update.\";}}s:10:\"error_data\";a:1:{s:34:\"woocommerce_product_importer_error\";a:3:{s:2:\"id\";i:90;s:3:\"sku\";s:20:\"woo-hoodie-blue-logo\";s:3:\"row\";s:51:\"Hoodie - Blue, Yes, ID 90, SKU woo-hoodie-blue-logo\";}}}}'),
(30, 1, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:2:{s:32:\"182be0c5cdcd5072bb1864cdee4d3d6e\";a:11:{s:3:\"key\";s:32:\"182be0c5cdcd5072bb1864cdee4d3d6e\";s:10:\"product_id\";i:33;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:22;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:396;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:396;s:8:\"line_tax\";i:0;}s:32:\"9bf31c7ff062936a96d3c8bd1f8f2ff3\";a:11:{s:3:\"key\";s:32:\"9bf31c7ff062936a96d3c8bd1f8f2ff3\";s:10:\"product_id\";i:15;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:45;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:45;s:8:\"line_tax\";i:0;}}}'),
(31, 1, 'wp_user-settings', 'libraryContent=browse'),
(32, 1, 'wp_user-settings-time', '1602579872'),
(35, 1, 'closedpostboxes_product', 'a:1:{i:0;s:11:\"postexcerpt\";}'),
(36, 1, 'metaboxhidden_product', 'a:1:{i:0;s:10:\"postcustom\";}'),
(49, 1, 'dismissed_no_secure_connection_notice', '1'),
(50, 1, '_wc_plugin_framework_facebook_for_woocommerce_dismissed_messages', 'a:1:{s:36:\"facebook_for_woocommerce_get_started\";b:1;}'),
(58, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(59, 1, 'metaboxhidden_nav-menus', 'a:6:{i:0;s:21:\"add-post-type-product\";i:1;s:12:\"add-post_tag\";i:2;s:9:\"add-brand\";i:3;s:15:\"add-product_cat\";i:4;s:15:\"add-product_tag\";i:5;s:26:\"add-berocket_taxonomy_data\";}'),
(60, 1, 'nav_menu_recently_edited', '42'),
(75, 2, 'nickname', 'Danny'),
(76, 2, 'first_name', 'Danny'),
(77, 2, 'last_name', 'Danjappa'),
(78, 2, 'description', ''),
(79, 2, 'rich_editing', 'true'),
(80, 2, 'syntax_highlighting', 'true'),
(81, 2, 'comment_shortcuts', 'false'),
(82, 2, 'admin_color', 'fresh'),
(83, 2, 'use_ssl', '0'),
(84, 2, 'show_admin_bar_front', 'true'),
(85, 2, 'locale', ''),
(86, 2, 'wp_capabilities', 'a:1:{s:6:\"editor\";b:1;}'),
(87, 2, 'wp_user_level', '7'),
(88, 2, 'dismissed_wp_pointers', ''),
(89, 2, 'last_update', '1604319925'),
(91, 2, 'wc_last_active', '1604275200'),
(93, 2, 'session_tokens', 'a:1:{s:64:\"eb15ce855e6c9e7b121ff647a00cc2fa979d924741afa686d925e29dcfb45fbe\";a:4:{s:10:\"expiration\";i:1604492649;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\";s:5:\"login\";i:1604319849;}}'),
(95, 2, '_order_count', '0'),
(96, 2, 'billing_first_name', 'Danny'),
(97, 2, 'billing_last_name', 'Danjappa'),
(98, 2, 'billing_company', ''),
(99, 2, 'billing_address_1', ''),
(100, 2, 'billing_address_2', ''),
(101, 2, 'billing_city', ''),
(102, 2, 'billing_postcode', ''),
(103, 2, 'billing_country', ''),
(104, 2, 'billing_state', ''),
(105, 2, 'billing_phone', ''),
(106, 2, 'billing_email', 'danny1234@gmail.com'),
(107, 2, 'shipping_first_name', ''),
(108, 2, 'shipping_last_name', ''),
(109, 2, 'shipping_company', ''),
(110, 2, 'shipping_address_1', ''),
(111, 2, 'shipping_address_2', ''),
(112, 2, 'shipping_city', ''),
(113, 2, 'shipping_postcode', ''),
(114, 2, 'shipping_country', ''),
(115, 2, 'shipping_state', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BLmDdFfo6LQ2knOqBvwPrUyslQFOF1.', 'admin', 'debtapas14@gmail.com', '', '2020-10-11 09:05:19', '', 0, 'admin'),
(2, 'Danny', '$P$BMXSUjD1Epu/w9JmrvDZgwbPlFxYce0', 'danny', 'danny1234@gmail.com', 'http://www.danny.com', '2020-11-02 12:19:11', '1604319554:$P$BnUvQzWNsJk0c95A0IUcUIIjD3rasK0', 0, 'Danny Danjappa');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_admin_notes`
--

CREATE TABLE `wp_wc_admin_notes` (
  `note_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_data` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_reminder` datetime DEFAULT NULL,
  `is_snoozable` tinyint(1) NOT NULL DEFAULT 0,
  `layout` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `icon` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'info'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_wc_admin_notes`
--

INSERT INTO `wp_wc_admin_notes` (`note_id`, `name`, `type`, `locale`, `title`, `content`, `content_data`, `status`, `source`, `date_created`, `date_reminder`, `is_snoozable`, `layout`, `image`, `is_deleted`, `icon`) VALUES
(1, 'wc-admin-onboarding-email-marketing', 'info', 'en_US', 'Tips, product updates, and inspiration', 'We\'re here for you - get tips, product updates and inspiration straight to your email box', '{}', 'unactioned', 'woocommerce-admin', '2020-10-11 09:08:40', NULL, 0, 'plain', '', 0, 'info'),
(2, 'wc-admin-marketing-intro', 'info', 'en_US', 'Connect with your audience', 'Grow your customer base and increase your sales with marketing tools built for WooCommerce.', '{}', 'unactioned', 'woocommerce-admin', '2020-10-11 09:08:40', NULL, 0, 'plain', '', 0, 'info'),
(3, 'wc-admin-wc-helper-connection', 'info', 'en_US', 'Connect to WooCommerce.com', 'Connect to get important product notifications and updates.', '{}', 'unactioned', 'woocommerce-admin', '2020-10-11 09:08:40', NULL, 0, 'plain', '', 0, 'info'),
(4, 'wc-admin-onboarding-profiler-reminder', 'update', 'en_US', 'Welcome to WooCommerce! Set up your store and start selling', 'We\'re here to help you going through the most important steps to get your store up and running.', '{}', 'actioned', 'woocommerce-admin', '2020-10-11 09:08:47', NULL, 0, 'plain', '', 0, 'info'),
(5, 'ecomm-need-help-setting-up-your-store', 'info', 'en_US', 'Need help setting up your Store?', 'Schedule a free 30-min <a href=\"https://wordpress.com/support/concierge-support/\">quick start session</a> and get help from our specialists. We’re happy to walk through setup steps, show you around the WordPress.com dashboard, troubleshoot any issues you may have, and help you the find the features you need to accomplish your goals for your site.', '{}', 'pending', 'woocommerce.com', '2020-10-11 09:12:41', NULL, 0, 'plain', '', 0, 'info'),
(6, 'woocommerce-services', 'info', 'en_US', 'WooCommerce Services', 'WooCommerce Services helps get your store “ready to sell” as quickly as possible. You create your products. We take care of tax calculation, payment processing, and shipping label printing! Learn more about the extension that you just installed.', '{}', 'pending', 'woocommerce.com', '2020-10-11 09:12:41', NULL, 0, 'plain', '', 0, 'info'),
(7, 'ecomm-unique-shopping-experience', 'info', 'en_US', 'For a shopping experience as unique as your customers', 'Product Add-Ons allow your customers to personalize products while they’re shopping on your online store. No more follow-up email requests—customers get what they want, before they’re done checking out. Learn more about this extension that comes included in your plan.', '{}', 'pending', 'woocommerce.com', '2020-10-11 09:12:41', NULL, 0, 'plain', '', 0, 'info'),
(8, 'mailchimp-for-woocommerce-incomplete-install', 'warning', 'en_US', 'Mailchimp For WooCommerce', 'Plugin is not yet connected to a Mailchimp account. To complete the connection, open the settings page.', '{\"getting_started\":true,\"activated\":1602420568,\"activated_formatted\":\"October 11th\"}', 'unactioned', 'mailchimp-for-woocommerce', '2020-10-11 12:49:28', NULL, 0, 'plain', '', 0, 'info'),
(9, 'wc-admin-mobile-app', 'info', 'en_US', 'Install Woo mobile app', 'Install the WooCommerce mobile app to manage orders, receive sales notifications, and view key metrics — wherever you are.', '{}', 'unactioned', 'woocommerce-admin', '2020-10-13 09:08:59', NULL, 0, 'plain', '', 0, 'info'),
(10, 'wc-admin-onboarding-payments-reminder', 'info', 'en_US', 'Start accepting payments on your store!', 'Take payments with the provider that’s right for you - choose from 100+ payment gateways for WooCommerce.', '{}', 'unactioned', 'woocommerce-admin', '2020-10-16 09:11:37', NULL, 0, 'plain', '', 0, 'info'),
(11, 'wc-admin-store-notice-giving-feedback-2', 'info', 'en_US', 'Give feedback', 'Now that you’ve chosen us as a partner, our goal is to make sure we\'re providing the right tools to meet your needs. We\'re looking forward to having your feedback on the store setup experience so we can improve it in the future.', '{}', 'unactioned', 'woocommerce-admin', '2020-10-19 10:02:18', NULL, 0, 'plain', '', 0, 'info'),
(12, 'wc-admin-insight-first-sale', 'survey', 'en_US', 'Did you know?', 'A WooCommerce powered store needs on average 31 days to get the first sale. You\'re on the right track! Do you find this type of insight useful?', '{}', 'unactioned', 'woocommerce-admin', '2020-10-19 10:02:18', NULL, 0, 'plain', '', 0, 'info'),
(13, 'wc-admin-home-screen-feedback', 'info', 'en_US', 'Help us improve the WooCommerce Home screen', 'We\'d love your input to shape the future of the WooCommerce Home screen together. Feel free to share any feedback, ideas or suggestions that you have.', '{}', 'unactioned', 'woocommerce-admin', '2020-10-23 09:10:20', NULL, 0, 'plain', '', 0, 'info');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_admin_note_actions`
--

CREATE TABLE `wp_wc_admin_note_actions` (
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `note_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `query` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_primary` tinyint(1) NOT NULL DEFAULT 0,
  `actioned_text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_wc_admin_note_actions`
--

INSERT INTO `wp_wc_admin_note_actions` (`action_id`, `note_id`, `name`, `label`, `query`, `status`, `is_primary`, `actioned_text`) VALUES
(1, 1, 'yes-please', 'Yes please!', 'https://woocommerce.us8.list-manage.com/subscribe/post?u=2c1434dc56f9506bf3c3ecd21&amp;id=13860df971&amp;SIGNUPPAGE=plugin', 'actioned', 0, ''),
(2, 2, 'open-marketing-hub', 'Open marketing hub', 'http://localhost/eshopper/wp-admin/admin.php?page=wc-admin&path=/marketing', 'actioned', 0, ''),
(3, 3, 'connect', 'Connect', '?page=wc-addons&section=helper', 'unactioned', 0, ''),
(4, 4, 'continue-profiler', 'Continue Store Setup', 'http://localhost/eshopper/wp-admin/admin.php?page=wc-admin&enable_onboarding=1', 'unactioned', 1, ''),
(5, 4, 'skip-profiler', 'Skip Setup', 'http://localhost/eshopper/wp-admin/admin.php?page=wc-admin&reset_profiler=0', 'actioned', 0, ''),
(6, 5, 'set-up-concierge', 'Schedule free session', 'https://wordpress.com/me/concierge', 'actioned', 1, ''),
(7, 6, 'learn-more', 'Learn more', 'https://docs.woocommerce.com/document/woocommerce-services/?utm_source=inbox', 'unactioned', 1, ''),
(8, 7, 'learn-more-ecomm-unique-shopping-experience', 'Learn more', 'https://docs.woocommerce.com/document/product-add-ons/?utm_source=inbox', 'actioned', 1, ''),
(9, 8, 'settings', 'Open Settings', 'http://localhost/eshopper/wp-admin/admin.php?page=mailchimp-woocommerce', 'actioned', 0, ''),
(10, 9, 'learn-more', 'Learn more', 'https://woocommerce.com/mobile/', 'actioned', 0, ''),
(11, 10, 'view-payment-gateways', 'Learn more', 'https://woocommerce.com/product-category/woocommerce-extensions/payment-gateways/', 'actioned', 1, ''),
(12, 11, 'share-feedback', 'Share feedback', 'https://automattic.survey.fm/new-onboarding-survey', 'actioned', 0, ''),
(13, 12, 'affirm-insight-first-sale', 'Yes', '', 'actioned', 0, 'Thanks for your feedback'),
(14, 12, 'deny-insight-first-sale', 'No', '', 'actioned', 0, 'Thanks for your feedback'),
(15, 13, 'home-screen-feedback-share-feedback', 'Share feedback', 'https://automattic.survey.fm/home-screen-survey', 'actioned', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_category_lookup`
--

CREATE TABLE `wp_wc_category_lookup` (
  `category_tree_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_wc_category_lookup`
--

INSERT INTO `wp_wc_category_lookup` (`category_tree_id`, `category_id`) VALUES
(15, 15);

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_customer_lookup`
--

CREATE TABLE `wp_wc_customer_lookup` (
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_last_active` timestamp NULL DEFAULT NULL,
  `date_registered` timestamp NULL DEFAULT NULL,
  `country` char(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `postcode` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `city` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `state` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_wc_customer_lookup`
--

INSERT INTO `wp_wc_customer_lookup` (`customer_id`, `user_id`, `username`, `first_name`, `last_name`, `email`, `date_last_active`, `date_registered`, `country`, `postcode`, `city`, `state`) VALUES
(1, 2, 'Danny', 'Danny', 'Danjappa', 'danny1234@gmail.com', '2020-11-01 18:30:00', '2020-11-02 06:49:11', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_download_log`
--

CREATE TABLE `wp_wc_download_log` (
  `download_log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_ip_address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_order_coupon_lookup`
--

CREATE TABLE `wp_wc_order_coupon_lookup` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `coupon_id` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `discount_amount` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_order_product_lookup`
--

CREATE TABLE `wp_wc_order_product_lookup` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `variation_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `product_qty` int(11) NOT NULL,
  `product_net_revenue` double NOT NULL DEFAULT 0,
  `product_gross_revenue` double NOT NULL DEFAULT 0,
  `coupon_amount` double NOT NULL DEFAULT 0,
  `tax_amount` double NOT NULL DEFAULT 0,
  `shipping_amount` double NOT NULL DEFAULT 0,
  `shipping_tax_amount` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_order_stats`
--

CREATE TABLE `wp_wc_order_stats` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `num_items_sold` int(11) NOT NULL DEFAULT 0,
  `total_sales` double NOT NULL DEFAULT 0,
  `tax_total` double NOT NULL DEFAULT 0,
  `shipping_total` double NOT NULL DEFAULT 0,
  `net_total` double NOT NULL DEFAULT 0,
  `returning_customer` tinyint(1) DEFAULT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_order_tax_lookup`
--

CREATE TABLE `wp_wc_order_tax_lookup` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `shipping_tax` double NOT NULL DEFAULT 0,
  `order_tax` double NOT NULL DEFAULT 0,
  `total_tax` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_product_meta_lookup`
--

CREATE TABLE `wp_wc_product_meta_lookup` (
  `product_id` bigint(20) NOT NULL,
  `sku` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `virtual` tinyint(1) DEFAULT 0,
  `downloadable` tinyint(1) DEFAULT 0,
  `min_price` decimal(19,4) DEFAULT NULL,
  `max_price` decimal(19,4) DEFAULT NULL,
  `onsale` tinyint(1) DEFAULT 0,
  `stock_quantity` double DEFAULT NULL,
  `stock_status` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT 'instock',
  `rating_count` bigint(20) DEFAULT 0,
  `average_rating` decimal(3,2) DEFAULT 0.00,
  `total_sales` bigint(20) DEFAULT 0,
  `tax_status` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT 'taxable',
  `tax_class` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_wc_product_meta_lookup`
--

INSERT INTO `wp_wc_product_meta_lookup` (`product_id`, `sku`, `virtual`, `downloadable`, `min_price`, `max_price`, `onsale`, `stock_quantity`, `stock_status`, `rating_count`, `average_rating`, `total_sales`, `tax_status`, `tax_class`) VALUES
(11, 'woo-vneck-tee', 0, 0, '0.0000', '0.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(12, 'woo-hoodie', 0, 0, '0.0000', '0.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(13, 'woo-hoodie-with-logo', 0, 0, '0.0000', '0.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(14, 'woo-tshirt', 0, 0, '0.0000', '0.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(15, 'woo-beanie', 0, 0, '0.0000', '0.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(22, 'woo-beanie', 0, 0, '18.0000', '18.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(35, 'logo-collection', 0, 0, '0.0000', '0.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_reserved_stock`
--

CREATE TABLE `wp_wc_reserved_stock` (
  `order_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `stock_quantity` double NOT NULL DEFAULT 0,
  `timestamp` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `expires` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_tax_rate_classes`
--

CREATE TABLE `wp_wc_tax_rate_classes` (
  `tax_rate_class_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_wc_tax_rate_classes`
--

INSERT INTO `wp_wc_tax_rate_classes` (`tax_rate_class_id`, `name`, `slug`) VALUES
(1, 'Reduced rate', 'reduced-rate'),
(2, 'Zero rate', 'zero-rate');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_webhooks`
--

CREATE TABLE `wp_wc_webhooks` (
  `webhook_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `delivery_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `topic` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint(4) NOT NULL,
  `failure_count` smallint(10) NOT NULL DEFAULT 0,
  `pending_delivery` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_api_keys`
--

CREATE TABLE `wp_woocommerce_api_keys` (
  `key_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_attribute_taxonomies`
--

CREATE TABLE `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_woocommerce_attribute_taxonomies`
--

INSERT INTO `wp_woocommerce_attribute_taxonomies` (`attribute_id`, `attribute_name`, `attribute_label`, `attribute_type`, `attribute_orderby`, `attribute_public`) VALUES
(1, 'color', 'color', 'select', 'menu_order', 0),
(2, 'size', 'size', 'select', 'menu_order', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_downloadable_product_permissions`
--

CREATE TABLE `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `download_id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `order_key` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_log`
--

CREATE TABLE `wp_woocommerce_log` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_order_itemmeta`
--

CREATE TABLE `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_order_items`
--

CREATE TABLE `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_payment_tokenmeta`
--

CREATE TABLE `wp_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `payment_token_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_payment_tokens`
--

CREATE TABLE `wp_woocommerce_payment_tokens` (
  `token_id` bigint(20) UNSIGNED NOT NULL,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_sessions`
--

CREATE TABLE `wp_woocommerce_sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_woocommerce_sessions`
--

INSERT INTO `wp_woocommerce_sessions` (`session_id`, `session_key`, `session_value`, `session_expiry`) VALUES
(123, '2a2bb9cf13ae43fe26e05ff1a426a3fc', 'a:1:{s:8:\"customer\";s:738:\"a:26:{s:2:\"id\";s:1:\"1\";s:13:\"date_modified\";s:25:\"2020-10-11T09:08:53+00:00\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:2:\"WB\";s:7:\"country\";s:2:\"IN\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:2:\"WB\";s:16:\"shipping_country\";s:2:\"IN\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:20:\"debtapas14@gmail.com\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";}', 1604380684),
(124, '1', 'a:8:{s:4:\"cart\";s:817:\"a:2:{s:32:\"182be0c5cdcd5072bb1864cdee4d3d6e\";a:11:{s:3:\"key\";s:32:\"182be0c5cdcd5072bb1864cdee4d3d6e\";s:10:\"product_id\";i:33;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:22;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:396;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:396;s:8:\"line_tax\";i:0;}s:32:\"9bf31c7ff062936a96d3c8bd1f8f2ff3\";a:11:{s:3:\"key\";s:32:\"9bf31c7ff062936a96d3c8bd1f8f2ff3\";s:10:\"product_id\";i:15;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:45;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:45;s:8:\"line_tax\";i:0;}}\";s:11:\"cart_totals\";s:408:\"a:15:{s:8:\"subtotal\";s:6:\"441.00\";s:12:\"subtotal_tax\";d:0;s:14:\"shipping_total\";s:4:\"0.00\";s:12:\"shipping_tax\";i:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";i:0;s:12:\"discount_tax\";i:0;s:19:\"cart_contents_total\";s:6:\"441.00\";s:17:\"cart_contents_tax\";i:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";s:4:\"0.00\";s:7:\"fee_tax\";i:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";s:6:\"441.00\";s:9:\"total_tax\";d:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:8:\"customer\";s:738:\"a:26:{s:2:\"id\";s:1:\"1\";s:13:\"date_modified\";s:25:\"2020-10-11T09:08:53+00:00\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:2:\"WB\";s:7:\"country\";s:2:\"IN\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:2:\"WB\";s:16:\"shipping_country\";s:2:\"IN\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:20:\"debtapas14@gmail.com\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";s:22:\"mailchimp_landing_site\";s:67:\"http://localhost/eshopper/eshopper/?wc-ajax=get_refreshed_fragments\";}', 1604486722),
(132, '2', 'a:7:{s:4:\"cart\";s:6:\"a:0:{}\";s:11:\"cart_totals\";s:367:\"a:15:{s:8:\"subtotal\";i:0;s:12:\"subtotal_tax\";i:0;s:14:\"shipping_total\";i:0;s:12:\"shipping_tax\";i:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";i:0;s:12:\"discount_tax\";i:0;s:19:\"cart_contents_total\";i:0;s:17:\"cart_contents_tax\";i:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";i:0;s:7:\"fee_tax\";i:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";i:0;s:9:\"total_tax\";i:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:8:\"customer\";s:750:\"a:26:{s:2:\"id\";s:1:\"2\";s:13:\"date_modified\";s:25:\"2020-11-02T12:25:25+00:00\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:2:\"WB\";s:7:\"country\";s:2:\"IN\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:2:\"WB\";s:16:\"shipping_country\";s:2:\"IN\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:5:\"Danny\";s:9:\"last_name\";s:8:\"Danjappa\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:19:\"danny1234@gmail.com\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";}', 1604492732);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zones`
--

CREATE TABLE `wp_woocommerce_shipping_zones` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zone_order` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zone_locations`
--

CREATE TABLE `wp_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zone_methods`
--

CREATE TABLE `wp_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `instance_id` bigint(20) UNSIGNED NOT NULL,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_order` bigint(20) UNSIGNED NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_tax_rates`
--

CREATE TABLE `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT 0,
  `tax_rate_shipping` int(1) NOT NULL DEFAULT 1,
  `tax_rate_order` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_woocommerce_tax_rates`
--

INSERT INTO `wp_woocommerce_tax_rates` (`tax_rate_id`, `tax_rate_country`, `tax_rate_state`, `tax_rate`, `tax_rate_name`, `tax_rate_priority`, `tax_rate_compound`, `tax_rate_shipping`, `tax_rate_order`, `tax_rate_class`) VALUES
(1, 'GB', '', '20.0000', 'VAT', 1, 1, 1, 0, ''),
(2, 'GB', '', '5.0000', 'VAT', 1, 1, 1, 1, 'reduced-rate'),
(3, 'GB', '', '0.0000', 'VAT', 1, 1, 1, 2, 'zero-rate'),
(4, 'US', '', '10.0000', 'US', 1, 1, 1, 3, ''),
(5, 'US', 'AL', '2.0000', 'US AL', 2, 1, 1, 4, '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_tax_rate_locations`
--

CREATE TABLE `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_woocommerce_tax_rate_locations`
--

INSERT INTO `wp_woocommerce_tax_rate_locations` (`location_id`, `location_code`, `tax_rate_id`, `location_type`) VALUES
(1, '12345', 5, 'postcode'),
(2, '123456', 5, 'postcode');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_actionscheduler_actions`
--
ALTER TABLE `wp_actionscheduler_actions`
  ADD PRIMARY KEY (`action_id`),
  ADD KEY `hook` (`hook`),
  ADD KEY `status` (`status`),
  ADD KEY `scheduled_date_gmt` (`scheduled_date_gmt`),
  ADD KEY `args` (`args`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `last_attempt_gmt` (`last_attempt_gmt`),
  ADD KEY `claim_id` (`claim_id`);

--
-- Indexes for table `wp_actionscheduler_claims`
--
ALTER TABLE `wp_actionscheduler_claims`
  ADD PRIMARY KEY (`claim_id`),
  ADD KEY `date_created_gmt` (`date_created_gmt`);

--
-- Indexes for table `wp_actionscheduler_groups`
--
ALTER TABLE `wp_actionscheduler_groups`
  ADD PRIMARY KEY (`group_id`),
  ADD KEY `slug` (`slug`(191));

--
-- Indexes for table `wp_actionscheduler_logs`
--
ALTER TABLE `wp_actionscheduler_logs`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `action_id` (`action_id`),
  ADD KEY `log_date_gmt` (`log_date_gmt`);

--
-- Indexes for table `wp_berocket_termmeta`
--
ALTER TABLE `wp_berocket_termmeta`
  ADD UNIQUE KEY `meta_id` (`meta_id`);

--
-- Indexes for table `wp_braapf_product_stock_status_parent`
--
ALTER TABLE `wp_braapf_product_stock_status_parent`
  ADD PRIMARY KEY (`post_id`),
  ADD KEY `stock_status` (`stock_status`);

--
-- Indexes for table `wp_braapf_product_variation_attributes`
--
ALTER TABLE `wp_braapf_product_variation_attributes`
  ADD UNIQUE KEY `uniqueid` (`post_id`,`meta_key`,`meta_value_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`),
  ADD KEY `meta_value_id` (`meta_value_id`);

--
-- Indexes for table `wp_braapf_term_taxonomy_hierarchical`
--
ALTER TABLE `wp_braapf_term_taxonomy_hierarchical`
  ADD UNIQUE KEY `uniqueid` (`term_taxonomy_id`,`term_id`,`term_taxonomy_child_id`,`term_child_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`),
  ADD KEY `term_taxonomy_child_id` (`term_taxonomy_child_id`),
  ADD KEY `child_parent_id` (`term_taxonomy_id`,`term_taxonomy_child_id`);

--
-- Indexes for table `wp_braapf_variation_attributes`
--
ALTER TABLE `wp_braapf_variation_attributes`
  ADD UNIQUE KEY `uniqueid` (`post_id`,`taxonomy`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10)),
  ADD KEY `woo_idx_comment_type` (`comment_type`);

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_mailchimp_carts`
--
ALTER TABLE `wp_mailchimp_carts`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `wp_mailchimp_jobs`
--
ALTER TABLE `wp_mailchimp_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Indexes for table `wp_wc_admin_notes`
--
ALTER TABLE `wp_wc_admin_notes`
  ADD PRIMARY KEY (`note_id`);

--
-- Indexes for table `wp_wc_admin_note_actions`
--
ALTER TABLE `wp_wc_admin_note_actions`
  ADD PRIMARY KEY (`action_id`),
  ADD KEY `note_id` (`note_id`);

--
-- Indexes for table `wp_wc_category_lookup`
--
ALTER TABLE `wp_wc_category_lookup`
  ADD PRIMARY KEY (`category_tree_id`,`category_id`);

--
-- Indexes for table `wp_wc_customer_lookup`
--
ALTER TABLE `wp_wc_customer_lookup`
  ADD PRIMARY KEY (`customer_id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD PRIMARY KEY (`download_log_id`),
  ADD KEY `permission_id` (`permission_id`),
  ADD KEY `timestamp` (`timestamp`);

--
-- Indexes for table `wp_wc_order_coupon_lookup`
--
ALTER TABLE `wp_wc_order_coupon_lookup`
  ADD PRIMARY KEY (`order_id`,`coupon_id`),
  ADD KEY `coupon_id` (`coupon_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Indexes for table `wp_wc_order_product_lookup`
--
ALTER TABLE `wp_wc_order_product_lookup`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Indexes for table `wp_wc_order_stats`
--
ALTER TABLE `wp_wc_order_stats`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `date_created` (`date_created`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `status` (`status`(191));

--
-- Indexes for table `wp_wc_order_tax_lookup`
--
ALTER TABLE `wp_wc_order_tax_lookup`
  ADD PRIMARY KEY (`order_id`,`tax_rate_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Indexes for table `wp_wc_product_meta_lookup`
--
ALTER TABLE `wp_wc_product_meta_lookup`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `virtual` (`virtual`),
  ADD KEY `downloadable` (`downloadable`),
  ADD KEY `stock_status` (`stock_status`),
  ADD KEY `stock_quantity` (`stock_quantity`),
  ADD KEY `onsale` (`onsale`),
  ADD KEY `min_max_price` (`min_price`,`max_price`);

--
-- Indexes for table `wp_wc_reserved_stock`
--
ALTER TABLE `wp_wc_reserved_stock`
  ADD PRIMARY KEY (`order_id`,`product_id`);

--
-- Indexes for table `wp_wc_tax_rate_classes`
--
ALTER TABLE `wp_wc_tax_rate_classes`
  ADD PRIMARY KEY (`tax_rate_class_id`),
  ADD UNIQUE KEY `slug` (`slug`(191));

--
-- Indexes for table `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  ADD PRIMARY KEY (`webhook_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  ADD PRIMARY KEY (`key_id`),
  ADD KEY `consumer_key` (`consumer_key`),
  ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Indexes for table `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `attribute_name` (`attribute_name`(20));

--
-- Indexes for table `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `user_order_remaining_expires` (`user_id`,`order_id`,`downloads_remaining`,`access_expires`);

--
-- Indexes for table `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `level` (`level`);

--
-- Indexes for table `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `payment_token_id` (`payment_token_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD UNIQUE KEY `session_key` (`session_key`);

--
-- Indexes for table `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- Indexes for table `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Indexes for table `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  ADD PRIMARY KEY (`instance_id`);

--
-- Indexes for table `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `tax_rate_country` (`tax_rate_country`),
  ADD KEY `tax_rate_state` (`tax_rate_state`(2)),
  ADD KEY `tax_rate_class` (`tax_rate_class`(10)),
  ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Indexes for table `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_actionscheduler_actions`
--
ALTER TABLE `wp_actionscheduler_actions`
  MODIFY `action_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `wp_actionscheduler_claims`
--
ALTER TABLE `wp_actionscheduler_claims`
  MODIFY `claim_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2229;

--
-- AUTO_INCREMENT for table `wp_actionscheduler_groups`
--
ALTER TABLE `wp_actionscheduler_groups`
  MODIFY `group_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_actionscheduler_logs`
--
ALTER TABLE `wp_actionscheduler_logs`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `wp_berocket_termmeta`
--
ALTER TABLE `wp_berocket_termmeta`
  MODIFY `meta_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_mailchimp_jobs`
--
ALTER TABLE `wp_mailchimp_jobs`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3636;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1422;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_wc_admin_notes`
--
ALTER TABLE `wp_wc_admin_notes`
  MODIFY `note_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `wp_wc_admin_note_actions`
--
ALTER TABLE `wp_wc_admin_note_actions`
  MODIFY `action_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `wp_wc_customer_lookup`
--
ALTER TABLE `wp_wc_customer_lookup`
  MODIFY `customer_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  MODIFY `download_log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wc_tax_rate_classes`
--
ALTER TABLE `wp_wc_tax_rate_classes`
  MODIFY `tax_rate_class_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  MODIFY `webhook_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  MODIFY `key_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  MODIFY `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  MODIFY `token_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  MODIFY `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  MODIFY `zone_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  MODIFY `instance_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD CONSTRAINT `fk_wp_wc_download_log_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `wp_woocommerce_downloadable_product_permissions` (`permission_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
