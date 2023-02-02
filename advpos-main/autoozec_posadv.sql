-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 01, 2023 at 04:27 PM
-- Server version: 10.3.37-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `autoozec_posadv`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int(10) UNSIGNED NOT NULL,
  `business_id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `account_number` varchar(191) NOT NULL,
  `account_type_id` int(11) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `is_closed` tinyint(1) NOT NULL DEFAULT 0,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `account_transactions`
--

CREATE TABLE `account_transactions` (
  `id` int(10) UNSIGNED NOT NULL,
  `account_id` int(11) NOT NULL,
  `type` enum('debit','credit') NOT NULL,
  `sub_type` enum('opening_balance','fund_transfer','deposit') DEFAULT NULL,
  `amount` decimal(22,4) NOT NULL,
  `reff_no` varchar(191) DEFAULT NULL,
  `operation_date` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `transaction_id` int(11) DEFAULT NULL,
  `transaction_payment_id` int(11) DEFAULT NULL,
  `transfer_transaction_id` int(11) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `account_types`
--

CREATE TABLE `account_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `parent_account_type_id` int(11) DEFAULT NULL,
  `business_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `log_name` varchar(191) DEFAULT NULL,
  `description` text NOT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `subject_type` varchar(191) DEFAULT NULL,
  `causer_id` int(11) DEFAULT NULL,
  `causer_type` varchar(191) DEFAULT NULL,
  `properties` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activity_log`
--

INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_id`, `subject_type`, `causer_id`, `causer_type`, `properties`, `created_at`, `updated_at`) VALUES
(1, 'default', 'added', 6, 'App\\Transaction', 3, 'App\\User', '[]', '2022-03-10 01:57:40', '2022-03-10 01:57:40'),
(2, 'default', 'added', 8, 'App\\Transaction', 4, 'App\\User', '[]', '2022-03-30 10:38:39', '2022-03-30 10:38:39'),
(3, 'default', 'added', 9, 'App\\Transaction', 4, 'App\\User', '[]', '2022-03-30 10:39:23', '2022-03-30 10:39:23'),
(4, 'default', 'added', 10, 'App\\Transaction', 4, 'App\\User', '[]', '2022-03-31 10:11:05', '2022-03-31 10:11:05'),
(5, 'default', 'added', 11, 'App\\Transaction', 4, 'App\\User', '[]', '2022-03-31 10:17:13', '2022-03-31 10:17:13'),
(6, 'default', 'added', 12, 'App\\Transaction', 4, 'App\\User', '[]', '2022-03-31 10:17:24', '2022-03-31 10:17:24'),
(7, 'default', 'added', 13, 'App\\Transaction', 4, 'App\\User', '[]', '2022-03-31 10:18:21', '2022-03-31 10:18:21'),
(8, 'default', 'added', 16, 'App\\Transaction', 6, 'App\\User', '[]', '2023-01-17 11:11:18', '2023-01-17 11:11:18'),
(9, 'default', 'added', 17, 'App\\Transaction', 6, 'App\\User', '[]', '2023-01-17 11:12:30', '2023-01-17 11:12:30'),
(10, 'default', 'added', 18, 'App\\Transaction', 6, 'App\\User', '[]', '2023-01-17 11:16:03', '2023-01-17 11:16:03'),
(11, 'default', 'added', 19, 'App\\Transaction', 6, 'App\\User', '[]', '2023-01-17 11:16:55', '2023-01-17 11:16:55'),
(12, 'default', 'added', 20, 'App\\Transaction', 6, 'App\\User', '[]', '2023-01-17 11:19:30', '2023-01-17 11:19:30'),
(13, 'default', 'added', 21, 'App\\Transaction', 6, 'App\\User', '[]', '2023-01-17 11:20:17', '2023-01-17 11:20:17'),
(14, 'default', 'added', 22, 'App\\Transaction', 6, 'App\\User', '[]', '2023-01-17 11:23:12', '2023-01-17 11:23:12'),
(15, 'default', 'added', 24, 'App\\Transaction', 6, 'App\\User', '[]', '2023-01-17 11:32:58', '2023-01-17 11:32:58'),
(16, 'default', 'added', 25, 'App\\Transaction', 6, 'App\\User', '[]', '2023-01-17 11:33:52', '2023-01-17 11:33:52'),
(17, 'default', 'added', 26, 'App\\Transaction', 6, 'App\\User', '[]', '2023-01-17 11:34:21', '2023-01-17 11:34:21'),
(18, 'default', 'added', 27, 'App\\Transaction', 6, 'App\\User', '[]', '2023-01-17 11:38:33', '2023-01-17 11:38:33'),
(19, 'default', 'added', 28, 'App\\Transaction', 6, 'App\\User', '[]', '2023-01-17 16:31:18', '2023-01-17 16:31:18'),
(20, 'default', 'added', 30, 'App\\Transaction', 6, 'App\\User', '[]', '2023-01-17 16:36:57', '2023-01-17 16:36:57'),
(21, 'default', 'added', 31, 'App\\Transaction', 6, 'App\\User', '[]', '2023-01-17 16:49:16', '2023-01-17 16:49:16'),
(22, 'default', 'added', 33, 'App\\Transaction', 6, 'App\\User', '[]', '2023-01-18 18:28:35', '2023-01-18 18:28:35'),
(23, 'default', 'added', 35, 'App\\Transaction', 6, 'App\\User', '[]', '2023-01-18 18:33:44', '2023-01-18 18:33:44'),
(24, 'default', 'added', 36, 'App\\Transaction', 6, 'App\\User', '[]', '2023-01-18 18:34:15', '2023-01-18 18:34:15'),
(25, 'default', 'added', 44, 'App\\Transaction', 6, 'App\\User', '[]', '2023-01-19 20:46:28', '2023-01-19 20:46:28'),
(26, 'default', 'added', 45, 'App\\Transaction', 6, 'App\\User', '[]', '2023-01-19 20:51:18', '2023-01-19 20:51:18'),
(27, 'default', 'added', 47, 'App\\Transaction', 8, 'App\\User', '[]', '2023-01-31 11:18:04', '2023-01-31 11:18:04'),
(28, 'default', 'added', 49, 'App\\Transaction', 8, 'App\\User', '[]', '2023-01-31 11:30:39', '2023-01-31 11:30:39'),
(29, 'default', 'added', 50, 'App\\Transaction', 8, 'App\\User', '[]', '2023-01-31 11:32:13', '2023-01-31 11:32:13'),
(30, 'default', 'added', 51, 'App\\Transaction', 8, 'App\\User', '[]', '2023-01-31 11:40:47', '2023-01-31 11:40:47'),
(31, 'default', 'edited', 51, 'App\\Transaction', 8, 'App\\User', '[]', '2023-01-31 11:42:52', '2023-01-31 11:42:52'),
(32, 'default', 'edited', 50, 'App\\Transaction', 8, 'App\\User', '[]', '2023-01-31 11:47:06', '2023-01-31 11:47:06');

-- --------------------------------------------------------

--
-- Table structure for table `barcodes`
--

CREATE TABLE `barcodes` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` text DEFAULT NULL,
  `width` double(22,4) DEFAULT NULL,
  `height` double(22,4) DEFAULT NULL,
  `paper_width` double(22,4) DEFAULT NULL,
  `paper_height` double(22,4) DEFAULT NULL,
  `top_margin` double(22,4) DEFAULT NULL,
  `left_margin` double(22,4) DEFAULT NULL,
  `row_distance` double(22,4) DEFAULT NULL,
  `col_distance` double(22,4) DEFAULT NULL,
  `stickers_in_one_row` int(11) DEFAULT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0,
  `is_continuous` tinyint(1) NOT NULL DEFAULT 0,
  `stickers_in_one_sheet` int(11) DEFAULT NULL,
  `business_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `barcodes`
--

INSERT INTO `barcodes` (`id`, `name`, `description`, `width`, `height`, `paper_width`, `paper_height`, `top_margin`, `left_margin`, `row_distance`, `col_distance`, `stickers_in_one_row`, `is_default`, `is_continuous`, `stickers_in_one_sheet`, `business_id`, `created_at`, `updated_at`) VALUES
(1, '20 Labels per Sheet - (8.5\" x 11\")', 'Sheet Size: 8.5\" x 11\"\\r\\nLabel Size: 4\" x 1\"\\r\\nLabels per sheet: 20', 3.7500, 1.0000, 8.5000, 11.0000, 0.5000, 0.5000, 0.0000, 0.1562, 2, 0, 0, 20, NULL, '2017-12-18 01:13:44', '2017-12-18 01:13:44'),
(2, '30 Labels per sheet - (8.5\" x 11\")', 'Sheet Size: 8.5\" x 11\"\\r\\nLabel Size: 2.625\" x 1\"\\r\\nLabels per sheet: 30', 2.6250, 1.0000, 8.5000, 11.0000, 0.5000, 0.2198, 0.0000, 0.1400, 3, 0, 0, 30, NULL, '2017-12-18 01:04:39', '2017-12-18 01:10:40'),
(3, '32 Labels per sheet - (8.5\" x 11\")', 'Sheet Size: 8.5\" x 11\"\\r\\nLabel Size: 2\" x 1.25\"\\r\\nLabels per sheet: 32', 2.0000, 1.2500, 8.5000, 11.0000, 0.5000, 0.2500, 0.0000, 0.0000, 4, 0, 0, 32, NULL, '2017-12-18 00:55:40', '2017-12-18 00:55:40'),
(4, '40 Labels per sheet - (8.5\" x 11\")', 'Sheet Size: 8.5\" x 11\"\\r\\nLabel Size: 2\" x 1\"\\r\\nLabels per sheet: 40', 2.0000, 1.0000, 8.5000, 11.0000, 0.5000, 0.2500, 0.0000, 0.0000, 4, 0, 0, 40, NULL, '2017-12-18 00:58:40', '2017-12-18 00:58:40'),
(5, '50 Labels per Sheet - (8.5\" x 11\")', 'Sheet Size: 8.5\" x 11\"\\r\\nLabel Size: 1.5\" x 1\"\\r\\nLabels per sheet: 50', 1.5000, 1.0000, 8.5000, 11.0000, 0.5000, 0.5000, 0.0000, 0.0000, 5, 0, 0, 50, NULL, '2017-12-18 00:51:10', '2017-12-18 00:51:10'),
(6, 'Continuous Rolls - 31.75mm x 25.4mm', 'Label Size: 31.75mm x 25.4mm\\r\\nGap: 3.18mm', 1.2500, 1.0000, 1.2500, 0.0000, 0.1250, 0.0000, 0.1250, 0.0000, 1, 0, 1, NULL, NULL, '2017-12-18 00:51:10', '2017-12-18 00:51:10');

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` int(10) UNSIGNED NOT NULL,
  `contact_id` int(10) UNSIGNED NOT NULL,
  `waiter_id` int(10) UNSIGNED DEFAULT NULL,
  `table_id` int(10) UNSIGNED DEFAULT NULL,
  `correspondent_id` int(11) DEFAULT NULL,
  `business_id` int(10) UNSIGNED NOT NULL,
  `location_id` int(10) UNSIGNED NOT NULL,
  `booking_start` datetime NOT NULL,
  `booking_end` datetime NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `booking_status` varchar(191) NOT NULL,
  `booking_note` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `business_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` text DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `business_id`, `name`, `description`, `created_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 3, 'Samsung', NULL, 3, NULL, '2022-03-10 01:31:44', '2022-03-10 01:31:44'),
(2, 3, 'LG', NULL, 3, NULL, '2022-03-10 01:32:03', '2022-03-10 01:32:03'),
(3, 3, 'Apple', NULL, 3, NULL, '2022-03-10 01:32:10', '2022-03-10 01:32:10'),
(4, 3, 'OPPO', NULL, 3, NULL, '2022-03-10 01:32:21', '2022-03-10 01:32:21'),
(5, 5, 'B1', 'High quality', 5, NULL, '2022-09-09 11:20:16', '2022-09-09 11:20:16'),
(6, 6, 'Lux', NULL, 6, NULL, '2023-01-17 10:26:00', '2023-01-17 10:26:00'),
(7, 6, 'KAPTURE', 'KAPTURE', 6, NULL, '2023-01-18 21:20:25', '2023-01-18 21:20:25'),
(8, 7, 'freelan', 'pepper powder', 8, NULL, '2023-01-31 11:04:11', '2023-01-31 11:04:11');

-- --------------------------------------------------------

--
-- Table structure for table `business`
--

CREATE TABLE `business` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `currency_id` int(10) UNSIGNED NOT NULL,
  `start_date` date DEFAULT NULL,
  `tax_number_1` varchar(100) DEFAULT NULL,
  `tax_label_1` varchar(10) DEFAULT NULL,
  `tax_number_2` varchar(100) DEFAULT NULL,
  `tax_label_2` varchar(10) DEFAULT NULL,
  `default_sales_tax` int(10) UNSIGNED DEFAULT NULL,
  `default_profit_percent` double(5,2) NOT NULL DEFAULT 0.00,
  `owner_id` int(10) UNSIGNED NOT NULL,
  `time_zone` varchar(191) NOT NULL DEFAULT 'Asia/Kolkata',
  `fy_start_month` tinyint(4) NOT NULL DEFAULT 1,
  `accounting_method` enum('fifo','lifo','avco') NOT NULL DEFAULT 'fifo',
  `default_sales_discount` decimal(5,2) DEFAULT NULL,
  `sell_price_tax` enum('includes','excludes') NOT NULL DEFAULT 'includes',
  `logo` varchar(191) DEFAULT NULL,
  `sku_prefix` varchar(191) DEFAULT NULL,
  `enable_product_expiry` tinyint(1) NOT NULL DEFAULT 0,
  `expiry_type` enum('add_expiry','add_manufacturing') NOT NULL DEFAULT 'add_expiry',
  `on_product_expiry` enum('keep_selling','stop_selling','auto_delete') NOT NULL DEFAULT 'keep_selling',
  `stop_selling_before` int(11) NOT NULL COMMENT 'Stop selling expied item n days before expiry',
  `enable_tooltip` tinyint(1) NOT NULL DEFAULT 1,
  `purchase_in_diff_currency` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Allow purchase to be in different currency then the business currency',
  `purchase_currency_id` int(10) UNSIGNED DEFAULT NULL,
  `p_exchange_rate` decimal(20,3) NOT NULL DEFAULT 1.000,
  `transaction_edit_days` int(10) UNSIGNED NOT NULL DEFAULT 30,
  `stock_expiry_alert_days` int(10) UNSIGNED NOT NULL DEFAULT 30,
  `keyboard_shortcuts` text DEFAULT NULL,
  `pos_settings` text DEFAULT NULL,
  `weighing_scale_setting` text NOT NULL COMMENT 'used to store the configuration of weighing scale',
  `enable_brand` tinyint(1) NOT NULL DEFAULT 1,
  `enable_category` tinyint(1) NOT NULL DEFAULT 1,
  `enable_sub_category` tinyint(1) NOT NULL DEFAULT 1,
  `enable_price_tax` tinyint(1) NOT NULL DEFAULT 1,
  `enable_purchase_status` tinyint(1) DEFAULT 1,
  `enable_lot_number` tinyint(1) NOT NULL DEFAULT 0,
  `default_unit` int(11) DEFAULT NULL,
  `enable_sub_units` tinyint(1) NOT NULL DEFAULT 0,
  `enable_racks` tinyint(1) NOT NULL DEFAULT 0,
  `enable_row` tinyint(1) NOT NULL DEFAULT 0,
  `enable_position` tinyint(1) NOT NULL DEFAULT 0,
  `enable_editing_product_from_purchase` tinyint(1) NOT NULL DEFAULT 1,
  `sales_cmsn_agnt` enum('logged_in_user','user','cmsn_agnt') DEFAULT NULL,
  `item_addition_method` tinyint(1) NOT NULL DEFAULT 1,
  `enable_inline_tax` tinyint(1) NOT NULL DEFAULT 1,
  `currency_symbol_placement` enum('before','after') NOT NULL DEFAULT 'before',
  `enabled_modules` text DEFAULT NULL,
  `date_format` varchar(191) NOT NULL DEFAULT 'm/d/Y',
  `time_format` enum('12','24') NOT NULL DEFAULT '24',
  `ref_no_prefixes` text DEFAULT NULL,
  `theme_color` char(20) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `enable_rp` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'rp is the short form of reward points',
  `rp_name` varchar(191) DEFAULT NULL COMMENT 'rp is the short form of reward points',
  `amount_for_unit_rp` decimal(22,4) NOT NULL DEFAULT 1.0000 COMMENT 'rp is the short form of reward points',
  `min_order_total_for_rp` decimal(22,4) NOT NULL DEFAULT 1.0000 COMMENT 'rp is the short form of reward points',
  `max_rp_per_order` int(11) DEFAULT NULL COMMENT 'rp is the short form of reward points',
  `redeem_amount_per_unit_rp` decimal(22,4) NOT NULL DEFAULT 1.0000 COMMENT 'rp is the short form of reward points',
  `min_order_total_for_redeem` decimal(22,4) NOT NULL DEFAULT 1.0000 COMMENT 'rp is the short form of reward points',
  `min_redeem_point` int(11) DEFAULT NULL COMMENT 'rp is the short form of reward points',
  `max_redeem_point` int(11) DEFAULT NULL COMMENT 'rp is the short form of reward points',
  `rp_expiry_period` int(11) DEFAULT NULL COMMENT 'rp is the short form of reward points',
  `rp_expiry_type` enum('month','year') NOT NULL DEFAULT 'year' COMMENT 'rp is the short form of reward points',
  `email_settings` text DEFAULT NULL,
  `sms_settings` text DEFAULT NULL,
  `custom_labels` text DEFAULT NULL,
  `common_settings` text DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `business`
--

INSERT INTO `business` (`id`, `name`, `currency_id`, `start_date`, `tax_number_1`, `tax_label_1`, `tax_number_2`, `tax_label_2`, `default_sales_tax`, `default_profit_percent`, `owner_id`, `time_zone`, `fy_start_month`, `accounting_method`, `default_sales_discount`, `sell_price_tax`, `logo`, `sku_prefix`, `enable_product_expiry`, `expiry_type`, `on_product_expiry`, `stop_selling_before`, `enable_tooltip`, `purchase_in_diff_currency`, `purchase_currency_id`, `p_exchange_rate`, `transaction_edit_days`, `stock_expiry_alert_days`, `keyboard_shortcuts`, `pos_settings`, `weighing_scale_setting`, `enable_brand`, `enable_category`, `enable_sub_category`, `enable_price_tax`, `enable_purchase_status`, `enable_lot_number`, `default_unit`, `enable_sub_units`, `enable_racks`, `enable_row`, `enable_position`, `enable_editing_product_from_purchase`, `sales_cmsn_agnt`, `item_addition_method`, `enable_inline_tax`, `currency_symbol_placement`, `enabled_modules`, `date_format`, `time_format`, `ref_no_prefixes`, `theme_color`, `created_by`, `enable_rp`, `rp_name`, `amount_for_unit_rp`, `min_order_total_for_rp`, `max_rp_per_order`, `redeem_amount_per_unit_rp`, `min_order_total_for_redeem`, `min_redeem_point`, `max_redeem_point`, `rp_expiry_period`, `rp_expiry_type`, `email_settings`, `sms_settings`, `custom_labels`, `common_settings`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Ahtasham', 91, '2022-03-05', NULL, NULL, NULL, NULL, NULL, 25.00, 1, 'Asia/Kolkata', 1, 'fifo', NULL, 'includes', NULL, NULL, 0, 'add_expiry', 'keep_selling', 0, 1, 0, NULL, '1.000', 30, 30, '{\"pos\":{\"express_checkout\":\"shift+e\",\"pay_n_ckeckout\":\"shift+p\",\"draft\":\"shift+d\",\"cancel\":\"shift+c\",\"edit_discount\":\"shift+i\",\"edit_order_tax\":\"shift+t\",\"add_payment_row\":\"shift+r\",\"finalize_payment\":\"shift+f\",\"recent_product_quantity\":\"f2\",\"add_new_product\":\"f4\"}}', NULL, '', 1, 1, 1, 1, 1, 0, NULL, 0, 0, 0, 0, 1, NULL, 1, 0, 'before', '[\"purchases\",\"add_sale\",\"pos_sale\",\"stock_transfers\",\"stock_adjustment\",\"expenses\"]', 'm/d/Y', '24', '{\"purchase\":\"PO\",\"stock_transfer\":\"ST\",\"stock_adjustment\":\"SA\",\"sell_return\":\"CN\",\"expense\":\"EP\",\"contacts\":\"CO\",\"purchase_payment\":\"PP\",\"sell_payment\":\"SP\",\"business_location\":\"BL\"}', NULL, NULL, 0, NULL, '1.0000', '1.0000', NULL, '1.0000', '1.0000', NULL, NULL, NULL, 'year', NULL, NULL, NULL, NULL, 1, '2022-03-05 07:37:20', '2022-03-05 07:37:20'),
(2, 'usl', 91, NULL, NULL, NULL, NULL, NULL, NULL, 25.00, 2, 'Asia/Kolkata', 1, 'fifo', NULL, 'includes', NULL, NULL, 0, 'add_expiry', 'keep_selling', 0, 1, 0, NULL, '1.000', 30, 30, '{\"pos\":{\"express_checkout\":\"shift+e\",\"pay_n_ckeckout\":\"shift+p\",\"draft\":\"shift+d\",\"cancel\":\"shift+c\",\"edit_discount\":\"shift+i\",\"edit_order_tax\":\"shift+t\",\"add_payment_row\":\"shift+r\",\"finalize_payment\":\"shift+f\",\"recent_product_quantity\":\"f2\",\"add_new_product\":\"f4\"}}', NULL, '', 1, 1, 1, 1, 1, 0, NULL, 0, 0, 0, 0, 1, NULL, 1, 0, 'before', '[\"purchases\",\"add_sale\",\"pos_sale\",\"stock_transfers\",\"stock_adjustment\",\"expenses\"]', 'm/d/Y', '24', '{\"purchase\":\"PO\",\"stock_transfer\":\"ST\",\"stock_adjustment\":\"SA\",\"sell_return\":\"CN\",\"expense\":\"EP\",\"contacts\":\"CO\",\"purchase_payment\":\"PP\",\"sell_payment\":\"SP\",\"business_location\":\"BL\"}', NULL, NULL, 0, NULL, '1.0000', '1.0000', NULL, '1.0000', '1.0000', NULL, NULL, NULL, 'year', NULL, NULL, NULL, NULL, 1, '2022-03-05 07:42:24', '2022-03-05 07:42:24'),
(3, 'moderntech', 91, NULL, NULL, NULL, NULL, NULL, NULL, 25.00, 3, 'Asia/Karachi', 1, 'fifo', NULL, 'includes', NULL, NULL, 0, 'add_expiry', 'keep_selling', 0, 1, 0, NULL, '1.000', 30, 30, '{\"pos\":{\"express_checkout\":\"shift+e\",\"pay_n_ckeckout\":\"shift+p\",\"draft\":\"shift+d\",\"cancel\":\"shift+c\",\"edit_discount\":\"shift+i\",\"edit_order_tax\":\"shift+t\",\"add_payment_row\":\"shift+r\",\"finalize_payment\":\"shift+f\",\"recent_product_quantity\":\"f2\",\"add_new_product\":\"f4\"}}', NULL, '', 1, 1, 1, 1, 1, 0, NULL, 0, 0, 0, 0, 1, NULL, 1, 0, 'before', '[\"purchases\",\"add_sale\",\"pos_sale\",\"stock_transfers\",\"stock_adjustment\",\"expenses\"]', 'm/d/Y', '24', '{\"purchase\":\"PO\",\"stock_transfer\":\"ST\",\"stock_adjustment\":\"SA\",\"sell_return\":\"CN\",\"expense\":\"EP\",\"contacts\":\"CO\",\"purchase_payment\":\"PP\",\"sell_payment\":\"SP\",\"business_location\":\"BL\"}', NULL, NULL, 0, NULL, '1.0000', '1.0000', NULL, '1.0000', '1.0000', NULL, NULL, NULL, 'year', NULL, NULL, NULL, NULL, 1, '2022-03-10 01:44:13', '2022-03-10 01:44:13'),
(4, 'Demotest', 124, '2022-03-30', NULL, NULL, NULL, NULL, NULL, 25.00, 4, 'America/Boise', 1, 'fifo', NULL, 'includes', NULL, NULL, 0, 'add_expiry', 'keep_selling', 0, 1, 0, NULL, '1.000', 30, 30, '{\"pos\":{\"express_checkout\":\"shift+e\",\"pay_n_ckeckout\":\"shift+p\",\"draft\":\"shift+d\",\"cancel\":\"shift+c\",\"edit_discount\":\"shift+i\",\"edit_order_tax\":\"shift+t\",\"add_payment_row\":\"shift+r\",\"finalize_payment\":\"shift+f\",\"recent_product_quantity\":\"f2\",\"add_new_product\":\"f4\"}}', NULL, '', 1, 1, 1, 1, 1, 0, NULL, 0, 0, 0, 0, 1, NULL, 1, 0, 'before', '[\"purchases\",\"add_sale\",\"pos_sale\",\"stock_transfers\",\"stock_adjustment\",\"expenses\"]', 'm/d/Y', '24', '{\"purchase\":\"PO\",\"stock_transfer\":\"ST\",\"stock_adjustment\":\"SA\",\"sell_return\":\"CN\",\"expense\":\"EP\",\"contacts\":\"CO\",\"purchase_payment\":\"PP\",\"sell_payment\":\"SP\",\"business_location\":\"BL\"}', NULL, NULL, 0, NULL, '1.0000', '1.0000', NULL, '1.0000', '1.0000', NULL, NULL, NULL, 'year', NULL, NULL, NULL, NULL, 1, '2022-03-30 16:50:27', '2022-03-30 16:50:27'),
(5, 'SIMBA supermarket', 133, '1970-01-01', NULL, NULL, NULL, NULL, NULL, 25.00, 5, 'Asia/Kolkata', 1, 'fifo', '0.00', 'includes', '1662706004_simba-supermarket.png', NULL, 1, 'add_manufacturing', 'stop_selling', 10, 1, 0, NULL, '1.000', 30, 30, '{\"pos\":{\"express_checkout\":\"shift+e\",\"pay_n_ckeckout\":\"shift+p\",\"draft\":\"shift+d\",\"cancel\":\"shift+c\",\"recent_product_quantity\":\"f2\",\"weighing_scale\":null,\"edit_discount\":\"shift+i\",\"edit_order_tax\":\"shift+t\",\"add_payment_row\":\"shift+r\",\"finalize_payment\":\"shift+f\",\"add_new_product\":\"f4\"}}', '{\"amount_rounding_method\":null,\"disable_pay_checkout\":0,\"disable_draft\":0,\"disable_express_checkout\":0,\"hide_product_suggestion\":0,\"hide_recent_trans\":0,\"disable_discount\":0,\"disable_order_tax\":0,\"is_pos_subtotal_editable\":0}', '{\"label_prefix\":null,\"product_sku_length\":\"4\",\"qty_length\":\"3\",\"qty_length_decimal\":\"2\"}', 1, 1, 1, 1, 1, 0, NULL, 0, 0, 0, 0, 1, NULL, 1, 0, 'before', '[\"purchases\",\"add_sale\",\"pos_sale\",\"stock_transfers\",\"stock_adjustment\",\"expenses\",\"account\"]', 'm/d/Y', '24', '{\"purchase\":\"PO\",\"purchase_return\":null,\"stock_transfer\":\"ST\",\"stock_adjustment\":\"SA\",\"sell_return\":\"CN\",\"expense\":\"EP\",\"contacts\":\"CO\",\"purchase_payment\":\"PP\",\"sell_payment\":\"SP\",\"expense_payment\":null,\"business_location\":\"BL\",\"username\":null,\"subscription\":null,\"draft\":null}', 'yellow', NULL, 0, NULL, '1.0000', '1.0000', NULL, '1.0000', '1.0000', NULL, NULL, NULL, 'year', '{\"mail_driver\":\"smtp\",\"mail_host\":null,\"mail_port\":null,\"mail_username\":null,\"mail_password\":null,\"mail_encryption\":null,\"mail_from_address\":null,\"mail_from_name\":null}', '{\"sms_service\":\"other\",\"nexmo_key\":null,\"nexmo_secret\":null,\"nexmo_from\":null,\"twilio_sid\":null,\"twilio_token\":null,\"twilio_from\":null,\"url\":null,\"send_to_param_name\":\"to\",\"msg_param_name\":\"text\",\"request_method\":\"post\",\"header_1\":null,\"header_val_1\":null,\"header_2\":null,\"header_val_2\":null,\"header_3\":null,\"header_val_3\":null,\"param_1\":null,\"param_val_1\":null,\"param_2\":null,\"param_val_2\":null,\"param_3\":null,\"param_val_3\":null,\"param_4\":null,\"param_val_4\":null,\"param_5\":null,\"param_val_5\":null,\"param_6\":null,\"param_val_6\":null,\"param_7\":null,\"param_val_7\":null,\"param_8\":null,\"param_val_8\":null,\"param_9\":null,\"param_val_9\":null,\"param_10\":null,\"param_val_10\":null}', '{\"payments\":{\"custom_pay_1\":null,\"custom_pay_2\":null,\"custom_pay_3\":null},\"contact\":{\"custom_field_1\":null,\"custom_field_2\":null,\"custom_field_3\":null,\"custom_field_4\":null},\"product\":{\"custom_field_1\":null,\"custom_field_2\":null,\"custom_field_3\":null,\"custom_field_4\":null},\"location\":{\"custom_field_1\":null,\"custom_field_2\":null,\"custom_field_3\":null,\"custom_field_4\":null},\"user\":{\"custom_field_1\":null,\"custom_field_2\":null,\"custom_field_3\":null,\"custom_field_4\":null},\"purchase\":{\"custom_field_1\":null,\"custom_field_2\":null,\"custom_field_3\":null,\"custom_field_4\":null},\"sell\":{\"custom_field_1\":null,\"custom_field_2\":null,\"custom_field_3\":null,\"custom_field_4\":null},\"types_of_service\":{\"custom_field_1\":null,\"custom_field_2\":null,\"custom_field_3\":null,\"custom_field_4\":null}}', '{\"default_datatable_page_entries\":\"25\"}', 1, '2022-09-09 11:16:44', '2023-01-14 08:24:41'),
(6, 'Demo', 111, '2023-01-01', NULL, NULL, NULL, NULL, NULL, 25.00, 6, 'Asia/Colombo', 1, 'fifo', '0.00', 'includes', NULL, NULL, 0, 'add_expiry', 'keep_selling', 0, 1, 0, NULL, '1.000', 30, 30, '{\"pos\":{\"express_checkout\":\"shift+e\",\"pay_n_ckeckout\":\"shift+p\",\"draft\":\"shift+d\",\"cancel\":\"shift+c\",\"recent_product_quantity\":\"f2\",\"weighing_scale\":null,\"edit_discount\":\"shift+i\",\"edit_order_tax\":\"shift+t\",\"add_payment_row\":\"shift+r\",\"finalize_payment\":\"shift+f\",\"add_new_product\":\"f4\"}}', '{\"amount_rounding_method\":null,\"disable_express_checkout\":\"1\",\"is_pos_subtotal_editable\":\"1\",\"disable_pay_checkout\":0,\"disable_draft\":0,\"hide_product_suggestion\":0,\"hide_recent_trans\":0,\"disable_discount\":0,\"disable_order_tax\":0}', '{\"label_prefix\":null,\"product_sku_length\":\"4\",\"qty_length\":\"3\",\"qty_length_decimal\":\"2\"}', 1, 1, 1, 1, 1, 0, NULL, 0, 0, 0, 0, 1, NULL, 1, 0, 'before', '[\"purchases\",\"add_sale\",\"pos_sale\",\"stock_transfers\",\"stock_adjustment\",\"expenses\"]', 'm/d/Y', '24', '{\"purchase\":\"PO\",\"purchase_return\":null,\"stock_transfer\":\"ST\",\"stock_adjustment\":\"SA\",\"sell_return\":\"CN\",\"expense\":\"EP\",\"contacts\":\"CO\",\"purchase_payment\":\"PP\",\"sell_payment\":\"SP\",\"expense_payment\":null,\"business_location\":\"BL\",\"username\":null,\"subscription\":null,\"draft\":null}', NULL, NULL, 0, NULL, '1.0000', '1.0000', NULL, '1.0000', '1.0000', NULL, NULL, NULL, 'year', '{\"mail_driver\":\"smtp\",\"mail_host\":null,\"mail_port\":null,\"mail_username\":null,\"mail_password\":null,\"mail_encryption\":null,\"mail_from_address\":null,\"mail_from_name\":null}', '{\"sms_service\":\"other\",\"nexmo_key\":null,\"nexmo_secret\":null,\"nexmo_from\":null,\"twilio_sid\":null,\"twilio_token\":null,\"twilio_from\":null,\"url\":null,\"send_to_param_name\":\"to\",\"msg_param_name\":\"text\",\"request_method\":\"post\",\"header_1\":null,\"header_val_1\":null,\"header_2\":null,\"header_val_2\":null,\"header_3\":null,\"header_val_3\":null,\"param_1\":null,\"param_val_1\":null,\"param_2\":null,\"param_val_2\":null,\"param_3\":null,\"param_val_3\":null,\"param_4\":null,\"param_val_4\":null,\"param_5\":null,\"param_val_5\":null,\"param_6\":null,\"param_val_6\":null,\"param_7\":null,\"param_val_7\":null,\"param_8\":null,\"param_val_8\":null,\"param_9\":null,\"param_val_9\":null,\"param_10\":null,\"param_val_10\":null}', '{\"payments\":{\"custom_pay_1\":null,\"custom_pay_2\":null,\"custom_pay_3\":null},\"contact\":{\"custom_field_1\":null,\"custom_field_2\":null,\"custom_field_3\":null,\"custom_field_4\":null},\"product\":{\"custom_field_1\":null,\"custom_field_2\":null,\"custom_field_3\":null,\"custom_field_4\":null},\"location\":{\"custom_field_1\":null,\"custom_field_2\":null,\"custom_field_3\":null,\"custom_field_4\":null},\"user\":{\"custom_field_1\":null,\"custom_field_2\":null,\"custom_field_3\":null,\"custom_field_4\":null},\"purchase\":{\"custom_field_1\":null,\"custom_field_2\":null,\"custom_field_3\":null,\"custom_field_4\":null},\"sell\":{\"custom_field_1\":null,\"custom_field_2\":null,\"custom_field_3\":null,\"custom_field_4\":null},\"types_of_service\":{\"custom_field_1\":null,\"custom_field_2\":null,\"custom_field_3\":null,\"custom_field_4\":null}}', '{\"default_datatable_page_entries\":\"25\"}', 1, '2023-01-14 08:38:19', '2023-01-19 20:49:13'),
(7, 'MicroWe POS Demo', 111, '2023-01-30', NULL, NULL, NULL, NULL, NULL, 25.00, 8, 'Asia/Colombo', 1, 'fifo', NULL, 'includes', NULL, NULL, 0, 'add_expiry', 'keep_selling', 0, 1, 0, NULL, '1.000', 30, 30, '{\"pos\":{\"express_checkout\":\"shift+e\",\"pay_n_ckeckout\":\"shift+p\",\"draft\":\"shift+d\",\"cancel\":\"shift+c\",\"edit_discount\":\"shift+i\",\"edit_order_tax\":\"shift+t\",\"add_payment_row\":\"shift+r\",\"finalize_payment\":\"shift+f\",\"recent_product_quantity\":\"f2\",\"add_new_product\":\"f4\"}}', NULL, '', 1, 1, 1, 1, 1, 0, NULL, 0, 0, 0, 0, 1, NULL, 1, 0, 'before', '[\"purchases\",\"add_sale\",\"pos_sale\",\"stock_transfers\",\"stock_adjustment\",\"expenses\"]', 'm/d/Y', '24', '{\"purchase\":\"PO\",\"stock_transfer\":\"ST\",\"stock_adjustment\":\"SA\",\"sell_return\":\"CN\",\"expense\":\"EP\",\"contacts\":\"CO\",\"purchase_payment\":\"PP\",\"sell_payment\":\"SP\",\"business_location\":\"BL\"}', NULL, NULL, 0, NULL, '1.0000', '1.0000', NULL, '1.0000', '1.0000', NULL, NULL, NULL, 'year', NULL, NULL, NULL, NULL, 1, '2023-01-30 12:56:59', '2023-01-31 11:29:21');

-- --------------------------------------------------------

--
-- Table structure for table `business_locations`
--

CREATE TABLE `business_locations` (
  `id` int(10) UNSIGNED NOT NULL,
  `business_id` int(10) UNSIGNED NOT NULL,
  `location_id` varchar(191) DEFAULT NULL,
  `name` varchar(256) NOT NULL,
  `landmark` text DEFAULT NULL,
  `country` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `zip_code` char(7) NOT NULL,
  `invoice_scheme_id` int(10) UNSIGNED NOT NULL,
  `invoice_layout_id` int(10) UNSIGNED NOT NULL,
  `sale_invoice_layout_id` int(11) DEFAULT NULL,
  `selling_price_group_id` int(11) DEFAULT NULL,
  `print_receipt_on_invoice` tinyint(1) DEFAULT 1,
  `receipt_printer_type` enum('browser','printer') NOT NULL DEFAULT 'browser',
  `printer_id` int(11) DEFAULT NULL,
  `mobile` varchar(191) DEFAULT NULL,
  `alternate_number` varchar(191) DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL,
  `website` varchar(191) DEFAULT NULL,
  `featured_products` text DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `default_payment_accounts` text DEFAULT NULL,
  `custom_field1` varchar(191) DEFAULT NULL,
  `custom_field2` varchar(191) DEFAULT NULL,
  `custom_field3` varchar(191) DEFAULT NULL,
  `custom_field4` varchar(191) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `business_locations`
--

INSERT INTO `business_locations` (`id`, `business_id`, `location_id`, `name`, `landmark`, `country`, `state`, `city`, `zip_code`, `invoice_scheme_id`, `invoice_layout_id`, `sale_invoice_layout_id`, `selling_price_group_id`, `print_receipt_on_invoice`, `receipt_printer_type`, `printer_id`, `mobile`, `alternate_number`, `email`, `website`, `featured_products`, `is_active`, `default_payment_accounts`, `custom_field1`, `custom_field2`, `custom_field3`, `custom_field4`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'BL0001', 'Ahtasham', 'Baddomalhi', 'Pakistan', 'Punjab', 'Narowal', '0551', 1, 1, 1, NULL, 1, 'browser', NULL, '', '', '', '', NULL, 1, '{\"cash\":{\"is_enabled\":1,\"account\":null},\"card\":{\"is_enabled\":1,\"account\":null},\"cheque\":{\"is_enabled\":1,\"account\":null},\"bank_transfer\":{\"is_enabled\":1,\"account\":null},\"other\":{\"is_enabled\":1,\"account\":null},\"custom_pay_1\":{\"is_enabled\":1,\"account\":null},\"custom_pay_2\":{\"is_enabled\":1,\"account\":null},\"custom_pay_3\":{\"is_enabled\":1,\"account\":null}}', NULL, NULL, NULL, NULL, NULL, '2022-03-05 07:37:21', '2022-03-05 07:37:21'),
(2, 2, 'BL0001', 'usl', 'llll', 'pak', 'punjab', 'narol', '0', 2, 2, 2, NULL, 1, 'browser', NULL, '', '', '', '', NULL, 1, '{\"cash\":{\"is_enabled\":1,\"account\":null},\"card\":{\"is_enabled\":1,\"account\":null},\"cheque\":{\"is_enabled\":1,\"account\":null},\"bank_transfer\":{\"is_enabled\":1,\"account\":null},\"other\":{\"is_enabled\":1,\"account\":null},\"custom_pay_1\":{\"is_enabled\":1,\"account\":null},\"custom_pay_2\":{\"is_enabled\":1,\"account\":null},\"custom_pay_3\":{\"is_enabled\":1,\"account\":null}}', NULL, NULL, NULL, NULL, NULL, '2022-03-05 07:42:24', '2022-03-05 07:42:24'),
(3, 3, 'BL0001', 'moderntech', 'admin', 'Pakistan', 'Punjab', 'Narowal', '51600', 3, 3, 3, NULL, 1, 'browser', NULL, '89898989898', '', '', '', NULL, 1, '{\"cash\":{\"is_enabled\":1,\"account\":null},\"card\":{\"is_enabled\":1,\"account\":null},\"cheque\":{\"is_enabled\":1,\"account\":null},\"bank_transfer\":{\"is_enabled\":1,\"account\":null},\"other\":{\"is_enabled\":1,\"account\":null},\"custom_pay_1\":{\"is_enabled\":1,\"account\":null},\"custom_pay_2\":{\"is_enabled\":1,\"account\":null},\"custom_pay_3\":{\"is_enabled\":1,\"account\":null}}', NULL, NULL, NULL, NULL, NULL, '2022-03-10 01:44:13', '2022-03-10 01:44:13'),
(4, 4, 'BL0001', 'Demotest', 'Hshah', 'USA', 'LA', 'LA', '99999', 4, 4, 4, NULL, 1, 'browser', NULL, '', '', '', '', NULL, 1, '{\"cash\":{\"is_enabled\":1,\"account\":null},\"card\":{\"is_enabled\":1,\"account\":null},\"cheque\":{\"is_enabled\":1,\"account\":null},\"bank_transfer\":{\"is_enabled\":1,\"account\":null},\"other\":{\"is_enabled\":1,\"account\":null},\"custom_pay_1\":{\"is_enabled\":1,\"account\":null},\"custom_pay_2\":{\"is_enabled\":1,\"account\":null},\"custom_pay_3\":{\"is_enabled\":1,\"account\":null}}', NULL, NULL, NULL, NULL, NULL, '2022-03-30 16:50:28', '2022-03-30 16:50:28'),
(5, 5, 'BL0001', 'SIMBA supermarket', '23WX+G8V, KN 5 Rd, Kigali, Rwanda', 'Rwanda', 'Kigali', 'Rwanda', '00000', 5, 5, 5, NULL, 1, 'browser', NULL, '+250 252 570 566', '+250 788 307 200', '', 'https://simbasupermarket.rw/', NULL, 1, '{\"cash\":{\"is_enabled\":1,\"account\":null},\"card\":{\"is_enabled\":1,\"account\":null},\"cheque\":{\"is_enabled\":1,\"account\":null},\"bank_transfer\":{\"is_enabled\":1,\"account\":null},\"other\":{\"is_enabled\":1,\"account\":null},\"custom_pay_1\":{\"is_enabled\":1,\"account\":null},\"custom_pay_2\":{\"is_enabled\":1,\"account\":null},\"custom_pay_3\":{\"is_enabled\":1,\"account\":null}}', NULL, NULL, NULL, NULL, NULL, '2022-09-09 11:16:45', '2022-09-09 11:16:45'),
(6, 6, 'BL0001', 'Demo', 'Jaffna', 'Sri Lanka', 'Northern', 'Jaffna', '40000', 6, 6, 6, NULL, 1, 'browser', NULL, '', '', '', '', NULL, 1, '{\"cash\":{\"is_enabled\":1,\"account\":null},\"card\":{\"is_enabled\":1,\"account\":null},\"cheque\":{\"is_enabled\":1,\"account\":null},\"bank_transfer\":{\"is_enabled\":1,\"account\":null},\"other\":{\"is_enabled\":1,\"account\":null},\"custom_pay_1\":{\"is_enabled\":1,\"account\":null},\"custom_pay_2\":{\"is_enabled\":1,\"account\":null},\"custom_pay_3\":{\"is_enabled\":1,\"account\":null}}', NULL, NULL, NULL, NULL, NULL, '2023-01-14 08:38:19', '2023-01-14 08:38:19'),
(7, 7, 'BL0001', 'MicroWe POS Demo', 'Vinoojan', 'srilanka', 'northern', 'jaffna, srilanka', '40000', 7, 7, 7, NULL, 1, 'browser', NULL, '0775224424', '0777637826', '', '', NULL, 1, '{\"cash\":{\"is_enabled\":1,\"account\":null},\"card\":{\"is_enabled\":1,\"account\":null},\"cheque\":{\"is_enabled\":1,\"account\":null},\"bank_transfer\":{\"is_enabled\":1,\"account\":null},\"other\":{\"is_enabled\":1,\"account\":null},\"custom_pay_1\":{\"is_enabled\":1,\"account\":null},\"custom_pay_2\":{\"is_enabled\":1,\"account\":null},\"custom_pay_3\":{\"is_enabled\":1,\"account\":null}}', NULL, NULL, NULL, NULL, NULL, '2023-01-30 12:56:59', '2023-01-30 12:56:59');

-- --------------------------------------------------------

--
-- Table structure for table `cash_registers`
--

CREATE TABLE `cash_registers` (
  `id` int(10) UNSIGNED NOT NULL,
  `business_id` int(10) UNSIGNED NOT NULL,
  `location_id` int(11) DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `status` enum('close','open') NOT NULL DEFAULT 'open',
  `closed_at` datetime DEFAULT NULL,
  `closing_amount` decimal(22,4) NOT NULL DEFAULT 0.0000,
  `total_card_slips` int(11) NOT NULL DEFAULT 0,
  `total_cheques` int(11) NOT NULL DEFAULT 0,
  `closing_note` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cash_registers`
--

INSERT INTO `cash_registers` (`id`, `business_id`, `location_id`, `user_id`, `status`, `closed_at`, `closing_amount`, `total_card_slips`, `total_cheques`, `closing_note`, `created_at`, `updated_at`) VALUES
(1, 3, 3, 3, 'open', NULL, '0.0000', 0, 0, NULL, '2022-03-10 01:41:00', '2022-03-10 01:41:41'),
(2, 4, 4, 4, 'close', '2022-03-31 15:11:34', '218.7500', 1, 0, NULL, '2022-03-30 05:46:00', '2022-03-31 10:11:34'),
(3, 4, 4, 4, 'close', '2022-03-31 15:19:22', '204.6800', 1, 0, NULL, '2022-03-31 10:16:00', '2022-03-31 10:19:22'),
(4, 5, 5, 5, 'open', NULL, '0.0000', 0, 0, NULL, '2022-09-19 15:23:00', '2022-09-19 15:23:54'),
(5, 6, 6, 6, 'close', '2023-01-17 11:25:55', '2660.0000', 0, 0, NULL, '2023-01-17 11:10:00', '2023-01-17 11:25:55'),
(6, 6, 6, 6, 'close', '2023-01-17 11:28:43', '2000.0000', 0, 0, NULL, '2023-01-17 11:28:00', '2023-01-17 11:28:43'),
(7, 6, 6, 6, 'close', '2023-01-18 18:29:03', '11885.0000', 0, 0, NULL, '2023-01-17 11:32:00', '2023-01-18 18:29:03'),
(8, 6, 6, 7, 'close', '2023-01-17 12:02:58', '100.0000', 0, 0, NULL, '2023-01-17 12:01:00', '2023-01-17 12:02:58'),
(9, 6, 6, 7, 'close', '2023-01-17 12:17:28', '1000.0000', 0, 0, NULL, '2023-01-17 12:16:00', '2023-01-17 12:17:28'),
(10, 6, 6, 6, 'close', '2023-01-18 18:34:33', '10450.0000', 0, 0, NULL, '2023-01-18 18:33:00', '2023-01-18 18:34:33'),
(11, 6, 6, 6, 'close', '2023-01-18 18:42:51', '10000.0000', 0, 0, NULL, '2023-01-18 18:41:00', '2023-01-18 18:42:51'),
(12, 6, 6, 6, 'close', '2023-01-19 20:47:42', '1150.0000', 0, 0, NULL, '2023-01-18 18:47:00', '2023-01-19 20:47:42'),
(13, 6, 6, 6, 'close', '2023-01-19 20:53:24', '1150.0000', 0, 0, NULL, '2023-01-19 20:49:00', '2023-01-19 20:53:24'),
(14, 6, 6, 6, 'open', NULL, '0.0000', 0, 0, NULL, '2023-01-20 08:56:00', '2023-01-20 08:56:18'),
(15, 7, 7, 8, 'close', '2023-01-31 11:27:35', '1003.7800', 0, 0, NULL, '2023-01-30 12:57:00', '2023-01-31 11:27:35'),
(16, 7, 7, 8, 'open', NULL, '0.0000', 0, 0, NULL, '2023-01-31 11:30:00', '2023-01-31 11:30:03');

-- --------------------------------------------------------

--
-- Table structure for table `cash_register_transactions`
--

CREATE TABLE `cash_register_transactions` (
  `id` int(10) UNSIGNED NOT NULL,
  `cash_register_id` int(10) UNSIGNED NOT NULL,
  `amount` decimal(22,4) NOT NULL DEFAULT 0.0000,
  `pay_method` varchar(191) DEFAULT NULL,
  `type` enum('debit','credit') NOT NULL,
  `transaction_type` enum('initial','sell','transfer','refund') NOT NULL,
  `transaction_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cash_register_transactions`
--

INSERT INTO `cash_register_transactions` (`id`, `cash_register_id`, `amount`, `pay_method`, `type`, `transaction_type`, `transaction_id`, `created_at`, `updated_at`) VALUES
(1, 1, '200000.0000', 'cash', 'credit', 'initial', NULL, '2022-03-10 01:41:41', '2022-03-10 01:41:41'),
(2, 1, '1275.0000', 'cash', 'credit', 'sell', 6, '2022-03-10 01:57:40', '2022-03-10 01:57:40'),
(3, 1, '0.0000', 'cash', 'credit', 'sell', 6, '2022-03-10 01:57:40', '2022-03-10 01:57:40'),
(4, 2, '50.0000', 'cash', 'credit', 'initial', NULL, '2022-03-30 05:46:33', '2022-03-30 05:46:33'),
(5, 2, '112.5000', 'card', 'credit', 'sell', 8, '2022-03-30 10:38:39', '2022-03-30 10:38:39'),
(6, 2, '0.0000', 'cash', 'credit', 'sell', 8, '2022-03-30 10:38:39', '2022-03-30 10:38:39'),
(7, 2, '56.2500', 'cash', 'credit', 'sell', 9, '2022-03-30 10:39:22', '2022-03-30 10:39:22'),
(8, 2, '0.0000', 'cash', 'credit', 'sell', 9, '2022-03-30 10:39:22', '2022-03-30 10:39:22'),
(9, 2, '112.5000', 'cash', 'credit', 'sell', 10, '2022-03-31 10:11:05', '2022-03-31 10:11:05'),
(10, 2, '0.0000', 'cash', 'credit', 'sell', 10, '2022-03-31 10:11:05', '2022-03-31 10:11:05'),
(11, 3, '199.6800', 'cash', 'credit', 'initial', NULL, '2022-03-31 10:16:01', '2022-03-31 10:16:01'),
(12, 3, '56.2500', 'card', 'credit', 'sell', 11, '2022-03-31 10:17:13', '2022-03-31 10:17:13'),
(13, 3, '0.0000', 'cash', 'credit', 'sell', 11, '2022-03-31 10:17:13', '2022-03-31 10:17:13'),
(14, 3, '5.0000', 'cash', 'credit', 'sell', 13, '2022-03-31 10:18:21', '2022-03-31 10:18:21'),
(15, 3, '51.2500', 'bank_transfer', 'credit', 'sell', 13, '2022-03-31 10:18:21', '2022-03-31 10:18:21'),
(16, 3, '0.0000', 'cash', 'credit', 'sell', 13, '2022-03-31 10:18:21', '2022-03-31 10:18:21'),
(17, 3, '0.0000', 'cash', 'credit', 'sell', 13, '2022-03-31 10:18:21', '2022-03-31 10:18:21'),
(18, 4, '10000.0000', 'cash', 'credit', 'initial', NULL, '2022-09-19 15:23:54', '2022-09-19 15:23:54'),
(19, 5, '1000.0000', 'cash', 'credit', 'initial', NULL, '2023-01-17 11:10:42', '2023-01-17 11:10:42'),
(20, 5, '580.0000', 'cash', 'credit', 'sell', 16, '2023-01-17 11:11:17', '2023-01-17 11:11:17'),
(21, 5, '0.0000', 'cash', 'credit', 'sell', 16, '2023-01-17 11:11:17', '2023-01-17 11:11:17'),
(22, 5, '290.0000', 'cash', 'credit', 'sell', 17, '2023-01-17 11:12:30', '2023-01-17 11:12:30'),
(23, 5, '0.0000', 'cash', 'credit', 'sell', 17, '2023-01-17 11:12:30', '2023-01-17 11:12:30'),
(24, 5, '420.0000', 'cash', 'credit', 'sell', 18, '2023-01-17 11:16:03', '2023-01-17 11:16:03'),
(25, 5, '0.0000', 'cash', 'credit', 'sell', 18, '2023-01-17 11:16:03', '2023-01-17 11:16:03'),
(26, 5, '140.0000', 'cash', 'credit', 'sell', 20, '2023-01-17 11:19:30', '2023-01-17 11:19:30'),
(27, 5, '0.0000', 'cash', 'credit', 'sell', 20, '2023-01-17 11:19:30', '2023-01-17 11:19:30'),
(28, 5, '100.0000', 'cash', 'credit', 'sell', 21, '2023-01-17 11:20:17', '2023-01-17 11:20:17'),
(29, 5, '40.0000', 'other', 'credit', 'sell', 21, '2023-01-17 11:20:17', '2023-01-17 11:20:17'),
(30, 5, '0.0000', 'cash', 'credit', 'sell', 21, '2023-01-17 11:20:17', '2023-01-17 11:20:17'),
(31, 5, '130.0000', 'cash', 'credit', 'sell', 22, '2023-01-17 11:23:12', '2023-01-17 11:23:12'),
(32, 5, '0.0000', 'cash', 'credit', 'sell', 22, '2023-01-17 11:23:12', '2023-01-17 11:23:12'),
(33, 6, '2000.0000', 'cash', 'credit', 'initial', NULL, '2023-01-17 11:28:29', '2023-01-17 11:28:29'),
(34, 7, '10000.0000', 'cash', 'credit', 'initial', NULL, '2023-01-17 11:32:10', '2023-01-17 11:32:10'),
(35, 7, '870.0000', 'cash', 'credit', 'sell', 24, '2023-01-17 11:32:58', '2023-01-17 11:32:58'),
(36, 7, '0.0000', 'cash', 'credit', 'sell', 24, '2023-01-17 11:32:58', '2023-01-17 11:32:58'),
(37, 7, '140.0000', 'cash', 'credit', 'sell', 26, '2023-01-17 11:34:21', '2023-01-17 11:34:21'),
(38, 7, '0.0000', 'cash', 'credit', 'sell', 26, '2023-01-17 11:34:21', '2023-01-17 11:34:21'),
(39, 8, '100.0000', 'cash', 'credit', 'initial', NULL, '2023-01-17 12:01:08', '2023-01-17 12:01:08'),
(40, 9, '1000.0000', 'cash', 'credit', 'initial', NULL, '2023-01-17 12:16:11', '2023-01-17 12:16:11'),
(41, 7, '140.0000', 'cash', 'credit', 'sell', 28, '2023-01-17 16:31:18', '2023-01-17 16:31:18'),
(42, 7, '0.0000', 'cash', 'credit', 'sell', 28, '2023-01-17 16:31:18', '2023-01-17 16:31:18'),
(43, 7, '305.0000', 'cash', 'credit', 'sell', 30, '2023-01-17 16:36:57', '2023-01-17 16:36:57'),
(44, 7, '0.0000', 'cash', 'credit', 'sell', 30, '2023-01-17 16:36:57', '2023-01-17 16:36:57'),
(45, 7, '140.0000', 'cash', 'credit', 'sell', 31, '2023-01-17 16:49:16', '2023-01-17 16:49:16'),
(46, 7, '0.0000', 'cash', 'credit', 'sell', 31, '2023-01-17 16:49:16', '2023-01-17 16:49:16'),
(47, 7, '290.0000', 'cash', 'credit', 'sell', 33, '2023-01-18 18:28:35', '2023-01-18 18:28:35'),
(48, 7, '0.0000', 'cash', 'credit', 'sell', 33, '2023-01-18 18:28:35', '2023-01-18 18:28:35'),
(49, 10, '10000.0000', 'cash', 'credit', 'initial', NULL, '2023-01-18 18:33:28', '2023-01-18 18:33:28'),
(50, 10, '150.0000', 'cash', 'credit', 'sell', 35, '2023-01-18 18:33:43', '2023-01-18 18:33:43'),
(51, 10, '0.0000', 'cash', 'credit', 'sell', 35, '2023-01-18 18:33:43', '2023-01-18 18:33:43'),
(52, 10, '300.0000', 'cash', 'credit', 'sell', 36, '2023-01-18 18:34:14', '2023-01-18 18:34:14'),
(53, 10, '0.0000', 'cash', 'credit', 'sell', 36, '2023-01-18 18:34:14', '2023-01-18 18:34:14'),
(54, 11, '10000.0000', 'cash', 'credit', 'initial', NULL, '2023-01-18 18:41:46', '2023-01-18 18:41:46'),
(55, 12, '1000.0000', 'cash', 'credit', 'initial', NULL, '2023-01-18 18:47:44', '2023-01-18 18:47:44'),
(58, 12, '150.0000', 'cash', 'credit', 'sell', 44, '2023-01-19 20:46:28', '2023-01-19 20:46:28'),
(59, 12, '0.0000', 'cash', 'credit', 'sell', 44, '2023-01-19 20:46:28', '2023-01-19 20:46:28'),
(60, 13, '1000.0000', 'cash', 'credit', 'initial', NULL, '2023-01-19 20:49:32', '2023-01-19 20:49:32'),
(61, 13, '1000.0000', 'cash', 'credit', 'sell', 45, '2023-01-19 20:51:18', '2023-01-19 20:51:18'),
(62, 13, '-850.0000', 'cash', 'credit', 'sell', 45, '2023-01-19 20:51:18', '2023-01-19 20:51:18'),
(63, 14, '10000.0000', 'cash', 'credit', 'initial', NULL, '2023-01-20 08:56:18', '2023-01-20 08:56:18'),
(64, 15, '1000.0000', 'cash', 'credit', 'initial', NULL, '2023-01-30 12:57:45', '2023-01-30 12:57:45'),
(65, 15, '100.0000', 'cash', 'credit', 'sell', 47, '2023-01-31 11:18:03', '2023-01-31 11:18:03'),
(66, 15, '-96.2200', 'cash', 'credit', 'sell', 47, '2023-01-31 11:18:03', '2023-01-31 11:18:03'),
(67, 16, '1000.0000', 'cash', 'credit', 'initial', NULL, '2023-01-31 11:30:03', '2023-01-31 11:30:03'),
(68, 16, '500.0000', 'cash', 'credit', 'sell', 49, '2023-01-31 11:30:39', '2023-01-31 11:30:39'),
(69, 16, '-150.0000', 'cash', 'credit', 'sell', 49, '2023-01-31 11:30:39', '2023-01-31 11:30:39'),
(70, 16, '200.0000', 'cash', 'credit', 'sell', 51, '2023-01-31 11:40:47', '2023-01-31 11:40:47'),
(71, 16, '-60.0000', 'cash', 'credit', 'sell', 51, '2023-01-31 11:40:47', '2023-01-31 11:40:47'),
(72, 16, '70.6300', 'cash', 'credit', 'sell', 50, '2023-01-31 11:47:06', '2023-01-31 11:47:06');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `business_id` int(10) UNSIGNED NOT NULL,
  `short_code` varchar(191) DEFAULT NULL,
  `parent_id` int(11) NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `category_type` varchar(191) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `slug` varchar(191) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `business_id`, `short_code`, `parent_id`, `created_by`, `category_type`, `description`, `slug`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Mobiles', 3, 'PK', 0, 3, 'product', NULL, NULL, NULL, '2022-03-10 01:29:59', '2022-03-10 01:29:59'),
(2, 'Laptop', 3, 'PK', 0, 3, 'product', NULL, NULL, NULL, '2022-03-10 01:30:26', '2022-03-10 01:30:26'),
(3, 'Handfree', 3, 'PK', 0, 3, 'product', NULL, NULL, NULL, '2022-03-10 01:30:41', '2022-03-10 01:30:41'),
(4, 'Charger', 3, 'PK', 0, 3, 'product', NULL, NULL, NULL, '2022-03-10 01:31:19', '2022-03-10 01:31:19'),
(5, 'Mobile Cases', 3, 'PK', 0, 3, 'product', NULL, NULL, NULL, '2022-03-10 01:46:55', '2022-03-10 01:46:55'),
(6, 'Electronic', 4, 'Electronics', 0, 4, 'product', NULL, NULL, NULL, '2022-03-30 10:31:54', '2022-03-30 10:31:54'),
(7, 'Dry Goods', 5, '1', 0, 5, 'product', 'dry goods', NULL, NULL, '2022-09-09 11:18:55', '2022-09-09 11:18:55'),
(8, 'Chocolates items', 5, '2', 0, 5, 'product', 'branded choco', NULL, NULL, '2022-09-09 11:19:19', '2022-09-09 11:19:19'),
(9, 'Fruits & vegetables', 5, '3', 0, 5, 'product', 'fresh fruits & vegetables', NULL, NULL, '2022-09-09 11:19:58', '2022-09-09 11:19:58'),
(10, 'Snacks', 5, '4', 0, 5, 'product', 'tasty & jummy', NULL, NULL, '2022-09-09 11:27:02', '2022-09-09 11:27:02'),
(11, 'Soap', 6, 'S-01', 0, 6, 'product', NULL, NULL, NULL, '2023-01-17 10:24:50', '2023-01-17 10:24:50'),
(12, 'food', 6, 'f01', 0, 6, 'product', NULL, NULL, NULL, '2023-01-18 21:19:07', '2023-01-18 21:19:33'),
(13, 'fast food', 6, 'fd01', 12, 6, 'product', NULL, NULL, NULL, '2023-01-18 21:19:57', '2023-01-18 21:19:57'),
(14, 'spices', 7, 'spc', 0, 8, 'product', NULL, NULL, NULL, '2023-01-31 11:05:25', '2023-01-31 11:05:25');

-- --------------------------------------------------------

--
-- Table structure for table `categorizables`
--

CREATE TABLE `categorizables` (
  `category_id` int(11) NOT NULL,
  `categorizable_type` varchar(191) NOT NULL,
  `categorizable_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `business_id` int(10) UNSIGNED NOT NULL,
  `type` varchar(191) NOT NULL,
  `supplier_business_name` varchar(191) DEFAULT NULL,
  `name` varchar(191) NOT NULL,
  `prefix` varchar(191) DEFAULT NULL,
  `first_name` varchar(191) DEFAULT NULL,
  `middle_name` varchar(191) DEFAULT NULL,
  `last_name` varchar(191) DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL,
  `contact_id` varchar(191) DEFAULT NULL,
  `contact_status` varchar(191) NOT NULL DEFAULT 'active',
  `tax_number` varchar(191) DEFAULT NULL,
  `city` varchar(191) DEFAULT NULL,
  `state` varchar(191) DEFAULT NULL,
  `country` varchar(191) DEFAULT NULL,
  `address_line_1` text DEFAULT NULL,
  `address_line_2` text DEFAULT NULL,
  `zip_code` varchar(191) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `mobile` varchar(191) NOT NULL,
  `landline` varchar(191) DEFAULT NULL,
  `alternate_number` varchar(191) DEFAULT NULL,
  `pay_term_number` int(11) DEFAULT NULL,
  `pay_term_type` enum('days','months') DEFAULT NULL,
  `credit_limit` decimal(22,4) DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `balance` decimal(22,4) NOT NULL DEFAULT 0.0000,
  `total_rp` int(11) NOT NULL DEFAULT 0 COMMENT 'rp is the short form of reward points',
  `total_rp_used` int(11) NOT NULL DEFAULT 0 COMMENT 'rp is the short form of reward points',
  `total_rp_expired` int(11) NOT NULL DEFAULT 0 COMMENT 'rp is the short form of reward points',
  `is_default` tinyint(1) NOT NULL DEFAULT 0,
  `shipping_address` text DEFAULT NULL,
  `position` varchar(191) DEFAULT NULL,
  `customer_group_id` int(11) DEFAULT NULL,
  `custom_field1` varchar(191) DEFAULT NULL,
  `custom_field2` varchar(191) DEFAULT NULL,
  `custom_field3` varchar(191) DEFAULT NULL,
  `custom_field4` varchar(191) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `business_id`, `type`, `supplier_business_name`, `name`, `prefix`, `first_name`, `middle_name`, `last_name`, `email`, `contact_id`, `contact_status`, `tax_number`, `city`, `state`, `country`, `address_line_1`, `address_line_2`, `zip_code`, `dob`, `mobile`, `landline`, `alternate_number`, `pay_term_number`, `pay_term_type`, `credit_limit`, `created_by`, `balance`, `total_rp`, `total_rp_used`, `total_rp_expired`, `is_default`, `shipping_address`, `position`, `customer_group_id`, `custom_field1`, `custom_field2`, `custom_field3`, `custom_field4`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'customer', NULL, 'Walk-In Customer', NULL, NULL, NULL, NULL, NULL, 'CO0001', 'active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '0.0000', 1, '0.0000', 0, 0, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-05 07:37:20', '2022-03-05 07:37:20'),
(2, 2, 'customer', NULL, 'Walk-In Customer', NULL, NULL, NULL, NULL, NULL, 'CO0001', 'active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '0.0000', 2, '0.0000', 0, 0, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-05 07:42:24', '2022-03-05 07:42:24'),
(3, 3, 'customer', NULL, 'Walk-In Customer', NULL, NULL, NULL, NULL, NULL, 'CO0001', 'active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '0.0000', 3, '0.0000', 0, 0, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-10 01:44:13', '2022-03-10 01:44:13'),
(4, 4, 'customer', NULL, 'Walk-In Customer', NULL, NULL, NULL, NULL, NULL, 'CO0001', 'active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '0.0000', 4, '0.0000', 0, 0, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-30 16:50:28', '2022-03-30 16:50:28'),
(5, 5, 'customer', NULL, 'Walk-In Customer', NULL, NULL, NULL, NULL, NULL, 'CO0001', 'active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '0.0000', 5, '0.0000', 0, 0, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-09 11:16:44', '2022-09-09 11:16:44'),
(6, 5, 'supplier', 'abc', 'Mr test test test', 'Mr', 'test', 'test', 'test', 'test@gmail.com', 'S0001', 'active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1990-01-01', '0771122333', NULL, NULL, NULL, NULL, NULL, 5, '0.0000', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-20 16:04:31', '2022-09-20 16:04:31'),
(7, 5, 'supplier', 'Shop', 'Ms Kageena  Arunthavarasa', 'Ms', 'Kageena', NULL, 'Arunthavarasa', 'kageenakagee96@gmail.com', '101', 'active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '772280476', NULL, NULL, NULL, NULL, NULL, 5, '0.0000', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-22 09:02:53', '2022-09-22 09:02:53'),
(8, 5, 'customer', NULL, 'Ms Kageena  Arunthavarasa', 'Ms', 'Kageena', NULL, 'Arunthavarasa', 'kageenakagee96@gmail.com', '1001', 'active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '772280476', NULL, NULL, NULL, NULL, NULL, 5, '0.0000', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-22 09:28:58', '2022-09-22 09:28:58'),
(9, 6, 'customer', NULL, 'Walk-In Customer', NULL, NULL, NULL, NULL, NULL, 'CO0001', 'active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '0.0000', 6, '0.0000', 0, 0, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-14 08:38:19', '2023-01-14 08:38:19'),
(10, 6, 'supplier', 'test', 't1 t1 t1 t1', 't1', 't1', 't1', 't1', 'aarondavis2108@gmail.com', 'test', 'active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0776100781', NULL, '0767670764', NULL, NULL, NULL, 6, '0.0000', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-17 11:01:09', '2023-01-17 11:01:09'),
(11, 6, 'both', 'Ding Dong Maadu', ' Elmo Johnson  Aaron Davis', NULL, 'Elmo Johnson', NULL, 'Aaron Davis', 'aarondavis2108@gmail.com', '1', 'active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0776100781', NULL, NULL, NULL, NULL, '1000.0000', 6, '0.0000', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-18 18:47:09', '2023-01-18 18:47:32'),
(12, 7, 'customer', NULL, 'Walk-In Customer', NULL, NULL, NULL, NULL, NULL, 'CO0001', 'active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '0.0000', 8, '0.0000', 0, 0, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-30 12:56:59', '2023-01-30 12:56:59'),
(13, 7, 'supplier', 'kaaaru', ' kary  ', NULL, 'kary', NULL, NULL, NULL, '077610781', 'active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0776107481', NULL, NULL, NULL, NULL, NULL, 8, '0.0000', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-31 11:13:54', '2023-01-31 11:13:54');

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int(10) UNSIGNED NOT NULL,
  `country` varchar(100) NOT NULL,
  `currency` varchar(100) NOT NULL,
  `code` varchar(25) NOT NULL,
  `symbol` varchar(25) NOT NULL,
  `thousand_separator` varchar(10) NOT NULL,
  `decimal_separator` varchar(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `country`, `currency`, `code`, `symbol`, `thousand_separator`, `decimal_separator`, `created_at`, `updated_at`) VALUES
(1, 'Albania', 'Leke', 'ALL', 'Lek', ',', '.', NULL, NULL),
(2, 'America', 'Dollars', 'USD', '$', ',', '.', NULL, NULL),
(3, 'Afghanistan', 'Afghanis', 'AF', '؋', ',', '.', NULL, NULL),
(4, 'Argentina', 'Pesos', 'ARS', '$', ',', '.', NULL, NULL),
(5, 'Aruba', 'Guilders', 'AWG', 'ƒ', ',', '.', NULL, NULL),
(6, 'Australia', 'Dollars', 'AUD', '$', ',', '.', NULL, NULL),
(7, 'Azerbaijan', 'New Manats', 'AZ', 'ман', ',', '.', NULL, NULL),
(8, 'Bahamas', 'Dollars', 'BSD', '$', ',', '.', NULL, NULL),
(9, 'Barbados', 'Dollars', 'BBD', '$', ',', '.', NULL, NULL),
(10, 'Belarus', 'Rubles', 'BYR', 'p.', ',', '.', NULL, NULL),
(11, 'Belgium', 'Euro', 'EUR', '€', ',', '.', NULL, NULL),
(12, 'Beliz', 'Dollars', 'BZD', 'BZ$', ',', '.', NULL, NULL),
(13, 'Bermuda', 'Dollars', 'BMD', '$', ',', '.', NULL, NULL),
(14, 'Bolivia', 'Bolivianos', 'BOB', '$b', ',', '.', NULL, NULL),
(15, 'Bosnia and Herzegovina', 'Convertible Marka', 'BAM', 'KM', ',', '.', NULL, NULL),
(16, 'Botswana', 'Pula\'s', 'BWP', 'P', ',', '.', NULL, NULL),
(17, 'Bulgaria', 'Leva', 'BG', 'лв', ',', '.', NULL, NULL),
(18, 'Brazil', 'Reais', 'BRL', 'R$', ',', '.', NULL, NULL),
(19, 'Britain [United Kingdom]', 'Pounds', 'GBP', '£', ',', '.', NULL, NULL),
(20, 'Brunei Darussalam', 'Dollars', 'BND', '$', ',', '.', NULL, NULL),
(21, 'Cambodia', 'Riels', 'KHR', '៛', ',', '.', NULL, NULL),
(22, 'Canada', 'Dollars', 'CAD', '$', ',', '.', NULL, NULL),
(23, 'Cayman Islands', 'Dollars', 'KYD', '$', ',', '.', NULL, NULL),
(24, 'Chile', 'Pesos', 'CLP', '$', ',', '.', NULL, NULL),
(25, 'China', 'Yuan Renminbi', 'CNY', '¥', ',', '.', NULL, NULL),
(26, 'Colombia', 'Pesos', 'COP', '$', ',', '.', NULL, NULL),
(27, 'Costa Rica', 'Colón', 'CRC', '₡', ',', '.', NULL, NULL),
(28, 'Croatia', 'Kuna', 'HRK', 'kn', ',', '.', NULL, NULL),
(29, 'Cuba', 'Pesos', 'CUP', '₱', ',', '.', NULL, NULL),
(30, 'Cyprus', 'Euro', 'EUR', '€', '.', ',', NULL, NULL),
(31, 'Czech Republic', 'Koruny', 'CZK', 'Kč', ',', '.', NULL, NULL),
(32, 'Denmark', 'Kroner', 'DKK', 'kr', ',', '.', NULL, NULL),
(33, 'Dominican Republic', 'Pesos', 'DOP ', 'RD$', ',', '.', NULL, NULL),
(34, 'East Caribbean', 'Dollars', 'XCD', '$', ',', '.', NULL, NULL),
(35, 'Egypt', 'Pounds', 'EGP', '£', ',', '.', NULL, NULL),
(36, 'El Salvador', 'Colones', 'SVC', '$', ',', '.', NULL, NULL),
(37, 'England [United Kingdom]', 'Pounds', 'GBP', '£', ',', '.', NULL, NULL),
(38, 'Euro', 'Euro', 'EUR', '€', '.', ',', NULL, NULL),
(39, 'Falkland Islands', 'Pounds', 'FKP', '£', ',', '.', NULL, NULL),
(40, 'Fiji', 'Dollars', 'FJD', '$', ',', '.', NULL, NULL),
(41, 'France', 'Euro', 'EUR', '€', '.', ',', NULL, NULL),
(42, 'Ghana', 'Cedis', 'GHS', '¢', ',', '.', NULL, NULL),
(43, 'Gibraltar', 'Pounds', 'GIP', '£', ',', '.', NULL, NULL),
(44, 'Greece', 'Euro', 'EUR', '€', '.', ',', NULL, NULL),
(45, 'Guatemala', 'Quetzales', 'GTQ', 'Q', ',', '.', NULL, NULL),
(46, 'Guernsey', 'Pounds', 'GGP', '£', ',', '.', NULL, NULL),
(47, 'Guyana', 'Dollars', 'GYD', '$', ',', '.', NULL, NULL),
(48, 'Holland [Netherlands]', 'Euro', 'EUR', '€', '.', ',', NULL, NULL),
(49, 'Honduras', 'Lempiras', 'HNL', 'L', ',', '.', NULL, NULL),
(50, 'Hong Kong', 'Dollars', 'HKD', '$', ',', '.', NULL, NULL),
(51, 'Hungary', 'Forint', 'HUF', 'Ft', ',', '.', NULL, NULL),
(52, 'Iceland', 'Kronur', 'ISK', 'kr', ',', '.', NULL, NULL),
(53, 'India', 'Rupees', 'INR', '₹', ',', '.', NULL, NULL),
(54, 'Indonesia', 'Rupiahs', 'IDR', 'Rp', ',', '.', NULL, NULL),
(55, 'Iran', 'Rials', 'IRR', '﷼', ',', '.', NULL, NULL),
(56, 'Ireland', 'Euro', 'EUR', '€', '.', ',', NULL, NULL),
(57, 'Isle of Man', 'Pounds', 'IMP', '£', ',', '.', NULL, NULL),
(58, 'Israel', 'New Shekels', 'ILS', '₪', ',', '.', NULL, NULL),
(59, 'Italy', 'Euro', 'EUR', '€', '.', ',', NULL, NULL),
(60, 'Jamaica', 'Dollars', 'JMD', 'J$', ',', '.', NULL, NULL),
(61, 'Japan', 'Yen', 'JPY', '¥', ',', '.', NULL, NULL),
(62, 'Jersey', 'Pounds', 'JEP', '£', ',', '.', NULL, NULL),
(63, 'Kazakhstan', 'Tenge', 'KZT', 'лв', ',', '.', NULL, NULL),
(64, 'Korea [North]', 'Won', 'KPW', '₩', ',', '.', NULL, NULL),
(65, 'Korea [South]', 'Won', 'KRW', '₩', ',', '.', NULL, NULL),
(66, 'Kyrgyzstan', 'Soms', 'KGS', 'лв', ',', '.', NULL, NULL),
(67, 'Laos', 'Kips', 'LAK', '₭', ',', '.', NULL, NULL),
(68, 'Latvia', 'Lati', 'LVL', 'Ls', ',', '.', NULL, NULL),
(69, 'Lebanon', 'Pounds', 'LBP', '£', ',', '.', NULL, NULL),
(70, 'Liberia', 'Dollars', 'LRD', '$', ',', '.', NULL, NULL),
(71, 'Liechtenstein', 'Switzerland Francs', 'CHF', 'CHF', ',', '.', NULL, NULL),
(72, 'Lithuania', 'Litai', 'LTL', 'Lt', ',', '.', NULL, NULL),
(73, 'Luxembourg', 'Euro', 'EUR', '€', '.', ',', NULL, NULL),
(74, 'Macedonia', 'Denars', 'MKD', 'ден', ',', '.', NULL, NULL),
(75, 'Malaysia', 'Ringgits', 'MYR', 'RM', ',', '.', NULL, NULL),
(76, 'Malta', 'Euro', 'EUR', '€', '.', ',', NULL, NULL),
(77, 'Mauritius', 'Rupees', 'MUR', '₨', ',', '.', NULL, NULL),
(78, 'Mexico', 'Pesos', 'MXN', '$', ',', '.', NULL, NULL),
(79, 'Mongolia', 'Tugriks', 'MNT', '₮', ',', '.', NULL, NULL),
(80, 'Mozambique', 'Meticais', 'MZ', 'MT', ',', '.', NULL, NULL),
(81, 'Namibia', 'Dollars', 'NAD', '$', ',', '.', NULL, NULL),
(82, 'Nepal', 'Rupees', 'NPR', '₨', ',', '.', NULL, NULL),
(83, 'Netherlands Antilles', 'Guilders', 'ANG', 'ƒ', ',', '.', NULL, NULL),
(84, 'Netherlands', 'Euro', 'EUR', '€', '.', ',', NULL, NULL),
(85, 'New Zealand', 'Dollars', 'NZD', '$', ',', '.', NULL, NULL),
(86, 'Nicaragua', 'Cordobas', 'NIO', 'C$', ',', '.', NULL, NULL),
(87, 'Nigeria', 'Nairas', 'NGN', '₦', ',', '.', NULL, NULL),
(88, 'North Korea', 'Won', 'KPW', '₩', ',', '.', NULL, NULL),
(89, 'Norway', 'Krone', 'NOK', 'kr', ',', '.', NULL, NULL),
(90, 'Oman', 'Rials', 'OMR', '﷼', ',', '.', NULL, NULL),
(91, 'Pakistan', 'Rupees', 'PKR', '₨', ',', '.', NULL, NULL),
(92, 'Panama', 'Balboa', 'PAB', 'B/.', ',', '.', NULL, NULL),
(93, 'Paraguay', 'Guarani', 'PYG', 'Gs', ',', '.', NULL, NULL),
(94, 'Peru', 'Nuevos Soles', 'PE', 'S/.', ',', '.', NULL, NULL),
(95, 'Philippines', 'Pesos', 'PHP', 'Php', ',', '.', NULL, NULL),
(96, 'Poland', 'Zlotych', 'PL', 'zł', ',', '.', NULL, NULL),
(97, 'Qatar', 'Rials', 'QAR', '﷼', ',', '.', NULL, NULL),
(98, 'Romania', 'New Lei', 'RO', 'lei', ',', '.', NULL, NULL),
(99, 'Russia', 'Rubles', 'RUB', 'руб', ',', '.', NULL, NULL),
(100, 'Saint Helena', 'Pounds', 'SHP', '£', ',', '.', NULL, NULL),
(101, 'Saudi Arabia', 'Riyals', 'SAR', '﷼', ',', '.', NULL, NULL),
(102, 'Serbia', 'Dinars', 'RSD', 'Дин.', ',', '.', NULL, NULL),
(103, 'Seychelles', 'Rupees', 'SCR', '₨', ',', '.', NULL, NULL),
(104, 'Singapore', 'Dollars', 'SGD', '$', ',', '.', NULL, NULL),
(105, 'Slovenia', 'Euro', 'EUR', '€', '.', ',', NULL, NULL),
(106, 'Solomon Islands', 'Dollars', 'SBD', '$', ',', '.', NULL, NULL),
(107, 'Somalia', 'Shillings', 'SOS', 'S', ',', '.', NULL, NULL),
(108, 'South Africa', 'Rand', 'ZAR', 'R', ',', '.', NULL, NULL),
(109, 'South Korea', 'Won', 'KRW', '₩', ',', '.', NULL, NULL),
(110, 'Spain', 'Euro', 'EUR', '€', '.', ',', NULL, NULL),
(111, 'Sri Lanka', 'Rupees', 'LKR', '₨', ',', '.', NULL, NULL),
(112, 'Sweden', 'Kronor', 'SEK', 'kr', ',', '.', NULL, NULL),
(113, 'Switzerland', 'Francs', 'CHF', 'CHF', ',', '.', NULL, NULL),
(114, 'Suriname', 'Dollars', 'SRD', '$', ',', '.', NULL, NULL),
(115, 'Syria', 'Pounds', 'SYP', '£', ',', '.', NULL, NULL),
(116, 'Taiwan', 'New Dollars', 'TWD', 'NT$', ',', '.', NULL, NULL),
(117, 'Thailand', 'Baht', 'THB', '฿', ',', '.', NULL, NULL),
(118, 'Trinidad and Tobago', 'Dollars', 'TTD', 'TT$', ',', '.', NULL, NULL),
(119, 'Turkey', 'Lira', 'TRY', 'TL', ',', '.', NULL, NULL),
(120, 'Turkey', 'Liras', 'TRL', '£', ',', '.', NULL, NULL),
(121, 'Tuvalu', 'Dollars', 'TVD', '$', ',', '.', NULL, NULL),
(122, 'Ukraine', 'Hryvnia', 'UAH', '₴', ',', '.', NULL, NULL),
(123, 'United Kingdom', 'Pounds', 'GBP', '£', ',', '.', NULL, NULL),
(124, 'United States of America', 'Dollars', 'USD', '$', ',', '.', NULL, NULL),
(125, 'Uruguay', 'Pesos', 'UYU', '$U', ',', '.', NULL, NULL),
(126, 'Uzbekistan', 'Sums', 'UZS', 'лв', ',', '.', NULL, NULL),
(127, 'Vatican City', 'Euro', 'EUR', '€', '.', ',', NULL, NULL),
(128, 'Venezuela', 'Bolivares Fuertes', 'VEF', 'Bs', ',', '.', NULL, NULL),
(129, 'Vietnam', 'Dong', 'VND', '₫', ',', '.', NULL, NULL),
(130, 'Yemen', 'Rials', 'YER', '﷼', ',', '.', NULL, NULL),
(131, 'Zimbabwe', 'Zimbabwe Dollars', 'ZWD', 'Z$', ',', '.', NULL, NULL),
(132, 'Iraq', 'Iraqi dinar', 'IQD', 'د.ع', ',', '.', NULL, NULL),
(133, 'Kenya', 'Kenyan shilling', 'KES', 'KSh', ',', '.', NULL, NULL),
(134, 'Bangladesh', 'Taka', 'BDT', '৳', ',', '.', NULL, NULL),
(135, 'Algerie', 'Algerian dinar', 'DZD', 'د.ج', ' ', '.', NULL, NULL),
(136, 'United Arab Emirates', 'United Arab Emirates dirham', 'AED', 'د.إ', ',', '.', NULL, NULL),
(137, 'Uganda', 'Uganda shillings', 'UGX', 'USh', ',', '.', NULL, NULL),
(138, 'Tanzania', 'Tanzanian shilling', 'TZS', 'TSh', ',', '.', NULL, NULL),
(139, 'Angola', 'Kwanza', 'AOA', 'Kz', ',', '.', NULL, NULL),
(140, 'Kuwait', 'Kuwaiti dinar', 'KWD', 'KD', ',', '.', NULL, NULL),
(141, 'Bahrain', 'Bahraini dinar', 'BHD', 'BD', ',', '.', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customer_groups`
--

CREATE TABLE `customer_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `business_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `amount` double(5,2) NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_configurations`
--

CREATE TABLE `dashboard_configurations` (
  `id` int(10) UNSIGNED NOT NULL,
  `business_id` int(10) UNSIGNED NOT NULL,
  `created_by` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `color` varchar(191) NOT NULL,
  `configuration` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `discounts`
--

CREATE TABLE `discounts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `business_id` int(11) NOT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `discount_type` varchar(191) DEFAULT NULL,
  `discount_amount` decimal(22,4) NOT NULL DEFAULT 0.0000,
  `starts_at` datetime DEFAULT NULL,
  `ends_at` datetime DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `applicable_in_spg` tinyint(1) DEFAULT 0,
  `applicable_in_cg` tinyint(1) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `discount_variations`
--

CREATE TABLE `discount_variations` (
  `discount_id` int(11) NOT NULL,
  `variation_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `document_and_notes`
--

CREATE TABLE `document_and_notes` (
  `id` int(10) UNSIGNED NOT NULL,
  `business_id` int(11) NOT NULL,
  `notable_id` int(11) NOT NULL,
  `notable_type` varchar(191) NOT NULL,
  `heading` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `is_private` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expense_categories`
--

CREATE TABLE `expense_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `business_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expense_categories`
--

INSERT INTO `expense_categories` (`id`, `name`, `business_id`, `code`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'tea', 6, 'tea', NULL, '2023-01-17 23:28:22', '2023-01-17 23:28:22');

-- --------------------------------------------------------

--
-- Table structure for table `group_sub_taxes`
--

CREATE TABLE `group_sub_taxes` (
  `group_tax_id` int(10) UNSIGNED NOT NULL,
  `tax_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoice_layouts`
--

CREATE TABLE `invoice_layouts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `header_text` text DEFAULT NULL,
  `invoice_no_prefix` varchar(191) DEFAULT NULL,
  `quotation_no_prefix` varchar(191) DEFAULT NULL,
  `invoice_heading` varchar(191) DEFAULT NULL,
  `sub_heading_line1` varchar(191) DEFAULT NULL,
  `sub_heading_line2` varchar(191) DEFAULT NULL,
  `sub_heading_line3` varchar(191) DEFAULT NULL,
  `sub_heading_line4` varchar(191) DEFAULT NULL,
  `sub_heading_line5` varchar(191) DEFAULT NULL,
  `invoice_heading_not_paid` varchar(191) DEFAULT NULL,
  `invoice_heading_paid` varchar(191) DEFAULT NULL,
  `quotation_heading` varchar(191) DEFAULT NULL,
  `sub_total_label` varchar(191) DEFAULT NULL,
  `discount_label` varchar(191) DEFAULT NULL,
  `tax_label` varchar(191) DEFAULT NULL,
  `total_label` varchar(191) DEFAULT NULL,
  `round_off_label` varchar(191) DEFAULT NULL,
  `total_due_label` varchar(191) DEFAULT NULL,
  `paid_label` varchar(191) DEFAULT NULL,
  `show_client_id` tinyint(1) NOT NULL DEFAULT 0,
  `client_id_label` varchar(191) DEFAULT NULL,
  `client_tax_label` varchar(191) DEFAULT NULL,
  `date_label` varchar(191) DEFAULT NULL,
  `date_time_format` varchar(191) DEFAULT NULL,
  `show_time` tinyint(1) NOT NULL DEFAULT 1,
  `show_brand` tinyint(1) NOT NULL DEFAULT 0,
  `show_sku` tinyint(1) NOT NULL DEFAULT 1,
  `show_cat_code` tinyint(1) NOT NULL DEFAULT 1,
  `show_expiry` tinyint(1) NOT NULL DEFAULT 0,
  `show_lot` tinyint(1) NOT NULL DEFAULT 0,
  `show_image` tinyint(1) NOT NULL DEFAULT 0,
  `show_sale_description` tinyint(1) NOT NULL DEFAULT 0,
  `sales_person_label` varchar(191) DEFAULT NULL,
  `show_sales_person` tinyint(1) NOT NULL DEFAULT 0,
  `table_product_label` varchar(191) DEFAULT NULL,
  `table_qty_label` varchar(191) DEFAULT NULL,
  `table_unit_price_label` varchar(191) DEFAULT NULL,
  `table_subtotal_label` varchar(191) DEFAULT NULL,
  `cat_code_label` varchar(191) DEFAULT NULL,
  `logo` varchar(191) DEFAULT NULL,
  `show_logo` tinyint(1) NOT NULL DEFAULT 0,
  `show_business_name` tinyint(1) NOT NULL DEFAULT 0,
  `show_location_name` tinyint(1) NOT NULL DEFAULT 1,
  `show_landmark` tinyint(1) NOT NULL DEFAULT 1,
  `show_city` tinyint(1) NOT NULL DEFAULT 1,
  `show_state` tinyint(1) NOT NULL DEFAULT 1,
  `show_zip_code` tinyint(1) NOT NULL DEFAULT 1,
  `show_country` tinyint(1) NOT NULL DEFAULT 1,
  `show_mobile_number` tinyint(1) NOT NULL DEFAULT 1,
  `show_alternate_number` tinyint(1) NOT NULL DEFAULT 0,
  `show_email` tinyint(1) NOT NULL DEFAULT 0,
  `show_tax_1` tinyint(1) NOT NULL DEFAULT 1,
  `show_tax_2` tinyint(1) NOT NULL DEFAULT 0,
  `show_barcode` tinyint(1) NOT NULL DEFAULT 0,
  `show_payments` tinyint(1) NOT NULL DEFAULT 0,
  `show_customer` tinyint(1) NOT NULL DEFAULT 0,
  `customer_label` varchar(191) DEFAULT NULL,
  `show_reward_point` tinyint(1) NOT NULL DEFAULT 0,
  `highlight_color` varchar(10) DEFAULT NULL,
  `footer_text` text DEFAULT NULL,
  `module_info` text DEFAULT NULL,
  `common_settings` text DEFAULT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0,
  `business_id` int(10) UNSIGNED NOT NULL,
  `design` varchar(190) DEFAULT 'classic',
  `cn_heading` varchar(191) DEFAULT NULL COMMENT 'cn = credit note',
  `cn_no_label` varchar(191) DEFAULT NULL,
  `cn_amount_label` varchar(191) DEFAULT NULL,
  `table_tax_headings` text DEFAULT NULL,
  `show_previous_bal` tinyint(1) NOT NULL DEFAULT 0,
  `prev_bal_label` varchar(191) DEFAULT NULL,
  `change_return_label` varchar(191) DEFAULT NULL,
  `product_custom_fields` text DEFAULT NULL,
  `contact_custom_fields` text DEFAULT NULL,
  `location_custom_fields` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoice_layouts`
--

INSERT INTO `invoice_layouts` (`id`, `name`, `header_text`, `invoice_no_prefix`, `quotation_no_prefix`, `invoice_heading`, `sub_heading_line1`, `sub_heading_line2`, `sub_heading_line3`, `sub_heading_line4`, `sub_heading_line5`, `invoice_heading_not_paid`, `invoice_heading_paid`, `quotation_heading`, `sub_total_label`, `discount_label`, `tax_label`, `total_label`, `round_off_label`, `total_due_label`, `paid_label`, `show_client_id`, `client_id_label`, `client_tax_label`, `date_label`, `date_time_format`, `show_time`, `show_brand`, `show_sku`, `show_cat_code`, `show_expiry`, `show_lot`, `show_image`, `show_sale_description`, `sales_person_label`, `show_sales_person`, `table_product_label`, `table_qty_label`, `table_unit_price_label`, `table_subtotal_label`, `cat_code_label`, `logo`, `show_logo`, `show_business_name`, `show_location_name`, `show_landmark`, `show_city`, `show_state`, `show_zip_code`, `show_country`, `show_mobile_number`, `show_alternate_number`, `show_email`, `show_tax_1`, `show_tax_2`, `show_barcode`, `show_payments`, `show_customer`, `customer_label`, `show_reward_point`, `highlight_color`, `footer_text`, `module_info`, `common_settings`, `is_default`, `business_id`, `design`, `cn_heading`, `cn_no_label`, `cn_amount_label`, `table_tax_headings`, `show_previous_bal`, `prev_bal_label`, `change_return_label`, `product_custom_fields`, `contact_custom_fields`, `location_custom_fields`, `created_at`, `updated_at`) VALUES
(1, 'Default', NULL, 'Invoice No.', NULL, 'Invoice', NULL, NULL, NULL, NULL, NULL, '', '', NULL, 'Subtotal', 'Discount', 'Tax', 'Total', NULL, 'Total Due', 'Total Paid', 0, NULL, NULL, 'Date', NULL, 1, 0, 1, 1, 0, 0, 0, 0, NULL, 0, 'Product', 'Quantity', 'Unit Price', 'Subtotal', NULL, NULL, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 1, 1, 'Customer', 0, '#000000', '', NULL, NULL, 1, 1, 'classic', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-03-05 07:37:20', '2022-03-05 07:37:20'),
(2, 'Default', NULL, 'Invoice No.', NULL, 'Invoice', NULL, NULL, NULL, NULL, NULL, '', '', NULL, 'Subtotal', 'Discount', 'Tax', 'Total', NULL, 'Total Due', 'Total Paid', 0, NULL, NULL, 'Date', NULL, 1, 0, 1, 1, 0, 0, 0, 0, NULL, 0, 'Product', 'Quantity', 'Unit Price', 'Subtotal', NULL, NULL, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 1, 1, 'Customer', 0, '#000000', '', NULL, NULL, 1, 2, 'classic', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-03-05 07:42:24', '2022-03-05 07:42:24'),
(3, 'Default', NULL, 'Invoice No.', NULL, 'Invoice', NULL, NULL, NULL, NULL, NULL, '', '', NULL, 'Subtotal', 'Discount', 'Tax', 'Total', NULL, 'Total Due', 'Total Paid', 0, NULL, NULL, 'Date', NULL, 1, 0, 1, 1, 0, 0, 0, 0, NULL, 0, 'Product', 'Quantity', 'Unit Price', 'Subtotal', NULL, NULL, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 1, 1, 'Customer', 0, '#000000', '', NULL, NULL, 1, 3, 'classic', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-03-10 01:44:13', '2022-03-10 01:44:13'),
(4, 'Default', NULL, 'Invoice No.', NULL, 'Invoice', NULL, NULL, NULL, NULL, NULL, '', '', NULL, 'Subtotal', 'Discount', 'Tax', 'Total', NULL, 'Total Due', 'Total Paid', 0, NULL, NULL, 'Date', NULL, 1, 0, 1, 1, 0, 0, 0, 0, NULL, 0, 'Product', 'Quantity', 'Unit Price', 'Subtotal', NULL, NULL, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 1, 1, 'Customer', 0, '#000000', '', NULL, NULL, 1, 4, 'classic', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-03-30 16:50:28', '2022-03-30 16:50:28'),
(5, 'Default', NULL, 'Invoice No.', NULL, 'Invoice', NULL, NULL, NULL, NULL, NULL, '', '', NULL, 'Subtotal', 'Discount', 'Tax', 'Total', NULL, 'Total Due', 'Total Paid', 0, NULL, NULL, 'Date', NULL, 1, 0, 1, 1, 0, 0, 0, 0, NULL, 0, 'Product', 'Quantity', 'Unit Price', 'Subtotal', NULL, NULL, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 1, 1, 'Customer', 0, '#000000', '', NULL, NULL, 1, 5, 'classic', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-09-09 11:16:44', '2022-09-09 11:16:44'),
(6, 'Default', NULL, 'Invoice No.', NULL, 'Invoice', NULL, NULL, NULL, NULL, NULL, '', '', NULL, 'Subtotal', 'Discount', 'Tax', 'Total', NULL, 'Total Due', 'Total Paid', 0, NULL, NULL, 'Date', NULL, 1, 0, 1, 1, 0, 0, 0, 0, NULL, 0, 'Product', 'Quantity', 'Unit Price', 'Subtotal', NULL, NULL, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 1, 1, 'Customer', 0, '#000000', '', NULL, NULL, 1, 6, 'classic', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2023-01-14 08:38:19', '2023-01-14 08:38:19'),
(7, 'Default', NULL, 'Invoice No.', NULL, 'Invoice', NULL, NULL, NULL, NULL, NULL, '', '', NULL, 'Subtotal', 'Discount', 'Tax', 'Total', NULL, 'Total Due', 'Total Paid', 0, NULL, NULL, 'Date', NULL, 1, 0, 1, 1, 0, 0, 0, 0, NULL, 0, 'Product', 'Quantity', 'Unit Price', 'Subtotal', NULL, NULL, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 1, 1, 'Customer', 0, '#000000', '', NULL, NULL, 1, 7, 'classic', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2023-01-30 12:56:59', '2023-01-30 12:56:59');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_schemes`
--

CREATE TABLE `invoice_schemes` (
  `id` int(10) UNSIGNED NOT NULL,
  `business_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `scheme_type` enum('blank','year') NOT NULL,
  `prefix` varchar(191) DEFAULT NULL,
  `start_number` int(11) DEFAULT NULL,
  `invoice_count` int(11) NOT NULL DEFAULT 0,
  `total_digits` int(11) DEFAULT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoice_schemes`
--

INSERT INTO `invoice_schemes` (`id`, `business_id`, `name`, `scheme_type`, `prefix`, `start_number`, `invoice_count`, `total_digits`, `is_default`, `created_at`, `updated_at`) VALUES
(1, 1, 'Default', 'blank', '', 1, 0, 4, 1, '2022-03-05 07:37:20', '2022-03-05 07:37:20'),
(2, 2, 'Default', 'blank', '', 1, 0, 4, 1, '2022-03-05 07:42:24', '2022-03-05 07:42:24'),
(3, 3, 'Default', 'blank', '', 1, 1, 4, 1, '2022-03-10 01:44:13', '2022-03-10 01:57:39'),
(4, 4, 'Default', 'blank', '', 1, 5, 4, 1, '2022-03-30 16:50:28', '2022-03-31 10:18:21'),
(5, 5, 'Default', 'blank', '', 1, 0, 4, 1, '2022-09-09 11:16:44', '2022-09-09 11:16:44'),
(6, 6, 'Default', 'blank', '', 1, 17, 4, 1, '2023-01-14 08:38:19', '2023-01-19 20:51:18'),
(7, 7, 'Default', 'blank', '', 1, 4, 4, 1, '2023-01-30 12:56:59', '2023-01-31 11:40:47');

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` int(10) UNSIGNED NOT NULL,
  `business_id` int(11) NOT NULL,
  `file_name` varchar(191) NOT NULL,
  `description` text DEFAULT NULL,
  `uploaded_by` int(11) DEFAULT NULL,
  `model_type` varchar(191) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `business_id`, `file_name`, `description`, `uploaded_by`, `model_type`, `model_id`, `created_at`, `updated_at`) VALUES
(1, 3, '1646876158_1877907051_SamsungGalaxyZFold3-b.jpg', NULL, 3, 'App\\Variation', 1, '2022-03-10 01:35:58', '2022-03-10 01:35:58'),
(2, 5, '1662706367_1713997919_snickers.jpg', NULL, 5, 'App\\Variation', 7, '2022-09-09 11:22:47', '2022-09-09 11:22:47'),
(3, 5, '1662706445_2119909157_applie.jpg', NULL, 5, 'App\\Variation', 8, '2022-09-09 11:24:05', '2022-09-09 11:24:05'),
(4, 5, '1662706517_1722223272_orangepac.jpg', NULL, 5, 'App\\Variation', 9, '2022-09-09 11:25:17', '2022-09-09 11:25:17'),
(5, 5, '1662706700_472819842_lays.jpg', NULL, 5, 'App\\Variation', 11, '2022-09-09 11:28:20', '2022-09-09 11:28:20'),
(6, 5, '1662706824_538099226_chips.jpg', NULL, 5, 'App\\Variation', 12, '2022-09-09 11:30:24', '2022-09-09 11:30:24'),
(7, 5, '1662706899_1778463678_coconut milk.jpg', NULL, 5, 'App\\Variation', 13, '2022-09-09 11:31:39', '2022-09-09 11:31:39'),
(8, 5, '1662706964_1142677766_potato.jpg', NULL, 5, 'App\\Variation', 14, '2022-09-09 11:32:44', '2022-09-09 11:32:44'),
(9, 5, '1662707024_2132890400_tomato.jpg', NULL, 5, 'App\\Variation', 15, '2022-09-09 11:33:44', '2022-09-09 11:33:44'),
(10, 5, '1662707079_1179344514_strwberry.jpg', NULL, 5, 'App\\Variation', 16, '2022-09-09 11:34:39', '2022-09-09 11:34:39');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_07_05_071953_create_currencies_table', 1),
(4, '2017_07_05_073658_create_business_table', 1),
(5, '2017_07_22_075923_add_business_id_users_table', 1),
(6, '2017_07_23_113209_create_brands_table', 1),
(7, '2017_07_26_083429_create_permission_tables', 1),
(8, '2017_07_26_110000_create_tax_rates_table', 1),
(9, '2017_07_26_122313_create_units_table', 1),
(10, '2017_07_27_075706_create_contacts_table', 1),
(11, '2017_08_04_071038_create_categories_table', 1),
(12, '2017_08_08_115903_create_products_table', 1),
(13, '2017_08_09_061616_create_variation_templates_table', 1),
(14, '2017_08_09_061638_create_variation_value_templates_table', 1),
(15, '2017_08_10_061146_create_product_variations_table', 1),
(16, '2017_08_10_061216_create_variations_table', 1),
(17, '2017_08_19_054827_create_transactions_table', 1),
(18, '2017_08_31_073533_create_purchase_lines_table', 1),
(19, '2017_10_15_064638_create_transaction_payments_table', 1),
(20, '2017_10_31_065621_add_default_sales_tax_to_business_table', 1),
(21, '2017_11_20_051930_create_table_group_sub_taxes', 1),
(22, '2017_11_20_063603_create_transaction_sell_lines', 1),
(23, '2017_11_21_064540_create_barcodes_table', 1),
(24, '2017_11_23_181237_create_invoice_schemes_table', 1),
(25, '2017_12_25_122822_create_business_locations_table', 1),
(26, '2017_12_25_160253_add_location_id_to_transactions_table', 1),
(27, '2017_12_25_163227_create_variation_location_details_table', 1),
(28, '2018_01_04_115627_create_sessions_table', 1),
(29, '2018_01_05_112817_create_invoice_layouts_table', 1),
(30, '2018_01_06_112303_add_invoice_scheme_id_and_invoice_layout_id_to_business_locations', 1),
(31, '2018_01_08_104124_create_expense_categories_table', 1),
(32, '2018_01_08_123327_modify_transactions_table_for_expenses', 1),
(33, '2018_01_09_111005_modify_payment_status_in_transactions_table', 1),
(34, '2018_01_09_111109_add_paid_on_column_to_transaction_payments_table', 1),
(35, '2018_01_25_172439_add_printer_related_fields_to_business_locations_table', 1),
(36, '2018_01_27_184322_create_printers_table', 1),
(37, '2018_01_30_181442_create_cash_registers_table', 1),
(38, '2018_01_31_125836_create_cash_register_transactions_table', 1),
(39, '2018_02_07_173326_modify_business_table', 1),
(40, '2018_02_08_105425_add_enable_product_expiry_column_to_business_table', 1),
(41, '2018_02_08_111027_add_expiry_period_and_expiry_period_type_columns_to_products_table', 1),
(42, '2018_02_08_131118_add_mfg_date_and_exp_date_purchase_lines_table', 1),
(43, '2018_02_08_155348_add_exchange_rate_to_transactions_table', 1),
(44, '2018_02_09_124945_modify_transaction_payments_table_for_contact_payments', 1),
(45, '2018_02_12_113640_create_transaction_sell_lines_purchase_lines_table', 1),
(46, '2018_02_12_114605_add_quantity_sold_in_purchase_lines_table', 1),
(47, '2018_02_13_183323_alter_decimal_fields_size', 1),
(48, '2018_02_14_161928_add_transaction_edit_days_to_business_table', 1),
(49, '2018_02_15_161032_add_document_column_to_transactions_table', 1),
(50, '2018_02_17_124709_add_more_options_to_invoice_layouts', 1),
(51, '2018_02_19_111517_add_keyboard_shortcut_column_to_business_table', 1),
(52, '2018_02_19_121537_stock_adjustment_move_to_transaction_table', 1),
(53, '2018_02_20_165505_add_is_direct_sale_column_to_transactions_table', 1),
(54, '2018_02_21_105329_create_system_table', 1),
(55, '2018_02_23_100549_version_1_2', 1),
(56, '2018_02_23_125648_add_enable_editing_sp_from_purchase_column_to_business_table', 1),
(57, '2018_02_26_103612_add_sales_commission_agent_column_to_business_table', 1),
(58, '2018_02_26_130519_modify_users_table_for_sales_cmmsn_agnt', 1),
(59, '2018_02_26_134500_add_commission_agent_to_transactions_table', 1),
(60, '2018_02_27_121422_add_item_addition_method_to_business_table', 1),
(61, '2018_02_27_170232_modify_transactions_table_for_stock_transfer', 1),
(62, '2018_03_05_153510_add_enable_inline_tax_column_to_business_table', 1),
(63, '2018_03_06_210206_modify_product_barcode_types', 1),
(64, '2018_03_13_181541_add_expiry_type_to_business_table', 1),
(65, '2018_03_16_113446_product_expiry_setting_for_business', 1),
(66, '2018_03_19_113601_add_business_settings_options', 1),
(67, '2018_03_26_125334_add_pos_settings_to_business_table', 1),
(68, '2018_03_26_165350_create_customer_groups_table', 1),
(69, '2018_03_27_122720_customer_group_related_changes_in_tables', 1),
(70, '2018_03_29_110138_change_tax_field_to_nullable_in_business_table', 1),
(71, '2018_03_29_115502_add_changes_for_sr_number_in_products_and_sale_lines_table', 1),
(72, '2018_03_29_134340_add_inline_discount_fields_in_purchase_lines', 1),
(73, '2018_03_31_140921_update_transactions_table_exchange_rate', 1),
(74, '2018_04_03_103037_add_contact_id_to_contacts_table', 1),
(75, '2018_04_03_122709_add_changes_to_invoice_layouts_table', 1),
(76, '2018_04_09_135320_change_exchage_rate_size_in_business_table', 1),
(77, '2018_04_17_123122_add_lot_number_to_business', 1),
(78, '2018_04_17_160845_add_product_racks_table', 1),
(79, '2018_04_20_182015_create_res_tables_table', 1),
(80, '2018_04_24_105246_restaurant_fields_in_transaction_table', 1),
(81, '2018_04_24_114149_add_enabled_modules_business_table', 1),
(82, '2018_04_24_133704_add_modules_fields_in_invoice_layout_table', 1),
(83, '2018_04_27_132653_quotation_related_change', 1),
(84, '2018_05_02_104439_add_date_format_and_time_format_to_business', 1),
(85, '2018_05_02_111939_add_sell_return_to_transaction_payments', 1),
(86, '2018_05_14_114027_add_rows_positions_for_products', 1),
(87, '2018_05_14_125223_add_weight_to_products_table', 1),
(88, '2018_05_14_164754_add_opening_stock_permission', 1),
(89, '2018_05_15_134729_add_design_to_invoice_layouts', 1),
(90, '2018_05_16_183307_add_tax_fields_invoice_layout', 1),
(91, '2018_05_18_191956_add_sell_return_to_transaction_table', 1),
(92, '2018_05_21_131349_add_custom_fileds_to_contacts_table', 1),
(93, '2018_05_21_131607_invoice_layout_fields_for_sell_return', 1),
(94, '2018_05_21_131949_add_custom_fileds_and_website_to_business_locations_table', 1),
(95, '2018_05_22_123527_create_reference_counts_table', 1),
(96, '2018_05_22_154540_add_ref_no_prefixes_column_to_business_table', 1),
(97, '2018_05_24_132620_add_ref_no_column_to_transaction_payments_table', 1),
(98, '2018_05_24_161026_add_location_id_column_to_business_location_table', 1),
(99, '2018_05_25_180603_create_modifiers_related_table', 1),
(100, '2018_05_29_121714_add_purchase_line_id_to_stock_adjustment_line_table', 1),
(101, '2018_05_31_114645_add_res_order_status_column_to_transactions_table', 1),
(102, '2018_06_05_103530_rename_purchase_line_id_in_stock_adjustment_lines_table', 1),
(103, '2018_06_05_111905_modify_products_table_for_modifiers', 1),
(104, '2018_06_06_110524_add_parent_sell_line_id_column_to_transaction_sell_lines_table', 1),
(105, '2018_06_07_152443_add_is_service_staff_to_roles_table', 1),
(106, '2018_06_07_182258_add_image_field_to_products_table', 1),
(107, '2018_06_13_133705_create_bookings_table', 1),
(108, '2018_06_15_173636_add_email_column_to_contacts_table', 1),
(109, '2018_06_27_182835_add_superadmin_related_fields_business', 1),
(110, '2018_07_10_101913_add_custom_fields_to_products_table', 1),
(111, '2018_07_17_103434_add_sales_person_name_label_to_invoice_layouts_table', 1),
(112, '2018_07_17_163920_add_theme_skin_color_column_to_business_table', 1),
(113, '2018_07_24_160319_add_lot_no_line_id_to_transaction_sell_lines_table', 1),
(114, '2018_07_25_110004_add_show_expiry_and_show_lot_colums_to_invoice_layouts_table', 1),
(115, '2018_07_25_172004_add_discount_columns_to_transaction_sell_lines_table', 1),
(116, '2018_07_26_124720_change_design_column_type_in_invoice_layouts_table', 1),
(117, '2018_07_26_170424_add_unit_price_before_discount_column_to_transaction_sell_line_table', 1),
(118, '2018_07_28_103614_add_credit_limit_column_to_contacts_table', 1),
(119, '2018_08_08_110755_add_new_payment_methods_to_transaction_payments_table', 1),
(120, '2018_08_08_122225_modify_cash_register_transactions_table_for_new_payment_methods', 1),
(121, '2018_08_14_104036_add_opening_balance_type_to_transactions_table', 1),
(122, '2018_09_04_155900_create_accounts_table', 1),
(123, '2018_09_06_114438_create_selling_price_groups_table', 1),
(124, '2018_09_06_154057_create_variation_group_prices_table', 1),
(125, '2018_09_07_102413_add_permission_to_access_default_selling_price', 1),
(126, '2018_09_07_134858_add_selling_price_group_id_to_transactions_table', 1),
(127, '2018_09_10_112448_update_product_type_to_single_if_null_in_products_table', 1),
(128, '2018_09_10_152703_create_account_transactions_table', 1),
(129, '2018_09_10_173656_add_account_id_column_to_transaction_payments_table', 1),
(130, '2018_09_19_123914_create_notification_templates_table', 1),
(131, '2018_09_22_110504_add_sms_and_email_settings_columns_to_business_table', 1),
(132, '2018_09_24_134942_add_lot_no_line_id_to_stock_adjustment_lines_table', 1),
(133, '2018_09_26_105557_add_transaction_payments_for_existing_expenses', 1),
(134, '2018_09_27_111609_modify_transactions_table_for_purchase_return', 1),
(135, '2018_09_27_131154_add_quantity_returned_column_to_purchase_lines_table', 1),
(136, '2018_10_02_131401_add_return_quantity_column_to_transaction_sell_lines_table', 1),
(137, '2018_10_03_104918_add_qty_returned_column_to_transaction_sell_lines_purchase_lines_table', 1),
(138, '2018_10_03_185947_add_default_notification_templates_to_database', 1),
(139, '2018_10_09_153105_add_business_id_to_transaction_payments_table', 1),
(140, '2018_10_16_135229_create_permission_for_sells_and_purchase', 1),
(141, '2018_10_22_114441_add_columns_for_variable_product_modifications', 1),
(142, '2018_10_22_134428_modify_variable_product_data', 1),
(143, '2018_10_30_181558_add_table_tax_headings_to_invoice_layout', 1),
(144, '2018_10_31_122619_add_pay_terms_field_transactions_table', 1),
(145, '2018_10_31_161328_add_new_permissions_for_pos_screen', 1),
(146, '2018_10_31_174752_add_access_selected_contacts_only_to_users_table', 1),
(147, '2018_10_31_175627_add_user_contact_access', 1),
(148, '2018_10_31_180559_add_auto_send_sms_column_to_notification_templates_table', 1),
(149, '2018_11_02_171949_change_card_type_column_to_varchar_in_transaction_payments_table', 1),
(150, '2018_11_08_105621_add_role_permissions', 1),
(151, '2018_11_26_114135_add_is_suspend_column_to_transactions_table', 1),
(152, '2018_11_28_104410_modify_units_table_for_multi_unit', 1),
(153, '2018_11_28_170952_add_sub_unit_id_to_purchase_lines_and_sell_lines', 1),
(154, '2018_11_29_115918_add_primary_key_in_system_table', 1),
(155, '2018_12_03_185546_add_product_description_column_to_products_table', 1),
(156, '2018_12_06_114937_modify_system_table_and_users_table', 1),
(157, '2018_12_13_160007_add_custom_fields_display_options_to_invoice_layouts_table', 1),
(158, '2018_12_14_103307_modify_system_table', 1),
(159, '2018_12_18_133837_add_prev_balance_due_columns_to_invoice_layouts_table', 1),
(160, '2018_12_18_170656_add_invoice_token_column_to_transaction_table', 1),
(161, '2018_12_20_133639_add_date_time_format_column_to_invoice_layouts_table', 1),
(162, '2018_12_21_120659_add_recurring_invoice_fields_to_transactions_table', 1),
(163, '2018_12_24_154933_create_notifications_table', 1),
(164, '2019_01_08_112015_add_document_column_to_transaction_payments_table', 1),
(165, '2019_01_10_124645_add_account_permission', 1),
(166, '2019_01_16_125825_add_subscription_no_column_to_transactions_table', 1),
(167, '2019_01_28_111647_add_order_addresses_column_to_transactions_table', 1),
(168, '2019_02_13_173821_add_is_inactive_column_to_products_table', 1),
(169, '2019_02_19_103118_create_discounts_table', 1),
(170, '2019_02_21_120324_add_discount_id_column_to_transaction_sell_lines_table', 1),
(171, '2019_02_21_134324_add_permission_for_discount', 1),
(172, '2019_03_04_170832_add_service_staff_columns_to_transaction_sell_lines_table', 1),
(173, '2019_03_09_102425_add_sub_type_column_to_transactions_table', 1),
(174, '2019_03_09_124457_add_indexing_transaction_sell_lines_purchase_lines_table', 1),
(175, '2019_03_12_120336_create_activity_log_table', 1),
(176, '2019_03_15_132925_create_media_table', 1),
(177, '2019_05_08_130339_add_indexing_to_parent_id_in_transaction_payments_table', 1),
(178, '2019_05_10_132311_add_missing_column_indexing', 1),
(179, '2019_05_14_091812_add_show_image_column_to_invoice_layouts_table', 1),
(180, '2019_05_25_104922_add_view_purchase_price_permission', 1),
(181, '2019_06_17_103515_add_profile_informations_columns_to_users_table', 1),
(182, '2019_06_18_135524_add_permission_to_view_own_sales_only', 1),
(183, '2019_06_19_112058_add_database_changes_for_reward_points', 1),
(184, '2019_06_28_133732_change_type_column_to_string_in_transactions_table', 1),
(185, '2019_07_13_111420_add_is_created_from_api_column_to_transactions_table', 1),
(186, '2019_07_15_165136_add_fields_for_combo_product', 1),
(187, '2019_07_19_103446_add_mfg_quantity_used_column_to_purchase_lines_table', 1),
(188, '2019_07_22_152649_add_not_for_selling_in_product_table', 1),
(189, '2019_07_29_185351_add_show_reward_point_column_to_invoice_layouts_table', 1),
(190, '2019_08_08_162302_add_sub_units_related_fields', 1),
(191, '2019_08_26_133419_update_price_fields_decimal_point', 1),
(192, '2019_09_02_160054_remove_location_permissions_from_roles', 1),
(193, '2019_09_03_185259_add_permission_for_pos_screen', 1),
(194, '2019_09_04_163141_add_location_id_to_cash_registers_table', 1),
(195, '2019_09_04_184008_create_types_of_services_table', 1),
(196, '2019_09_06_131445_add_types_of_service_fields_to_transactions_table', 1),
(197, '2019_09_09_134810_add_default_selling_price_group_id_column_to_business_locations_table', 1),
(198, '2019_09_12_105616_create_product_locations_table', 1),
(199, '2019_09_17_122522_add_custom_labels_column_to_business_table', 1),
(200, '2019_09_18_164319_add_shipping_fields_to_transactions_table', 1),
(201, '2019_09_19_170927_close_all_active_registers', 1),
(202, '2019_09_23_161906_add_media_description_cloumn_to_media_table', 1),
(203, '2019_10_18_155633_create_account_types_table', 1),
(204, '2019_10_22_163335_add_common_settings_column_to_business_table', 1),
(205, '2019_10_29_132521_add_update_purchase_status_permission', 1),
(206, '2019_11_09_110522_add_indexing_to_lot_number', 1),
(207, '2019_11_19_170824_add_is_active_column_to_business_locations_table', 1),
(208, '2019_11_21_162913_change_quantity_field_types_to_decimal', 1),
(209, '2019_11_25_160340_modify_categories_table_for_polymerphic_relationship', 1),
(210, '2019_12_02_105025_create_warranties_table', 1),
(211, '2019_12_03_180342_add_common_settings_field_to_invoice_layouts_table', 1),
(212, '2019_12_05_183955_add_more_fields_to_users_table', 1),
(213, '2019_12_06_174904_add_change_return_label_column_to_invoice_layouts_table', 1),
(214, '2019_12_11_121307_add_draft_and_quotation_list_permissions', 1),
(215, '2019_12_12_180126_copy_expense_total_to_total_before_tax', 1),
(216, '2019_12_19_181412_make_alert_quantity_field_nullable_on_products_table', 1),
(217, '2019_12_25_173413_create_dashboard_configurations_table', 1),
(218, '2020_01_08_133506_create_document_and_notes_table', 1),
(219, '2020_01_09_113252_add_cc_bcc_column_to_notification_templates_table', 1),
(220, '2020_01_16_174818_add_round_off_amount_field_to_transactions_table', 1),
(221, '2020_01_28_162345_add_weighing_scale_settings_in_business_settings_table', 1),
(222, '2020_02_18_172447_add_import_fields_to_transactions_table', 1),
(223, '2020_03_13_135844_add_is_active_column_to_selling_price_groups_table', 1),
(224, '2020_03_16_115449_add_contact_status_field_to_contacts_table', 1),
(225, '2020_03_26_124736_add_allow_login_column_in_users_table', 1),
(226, '2020_04_13_154150_add_feature_products_column_to_business_loactions', 1),
(227, '2020_04_15_151802_add_user_type_to_users_table', 1),
(228, '2020_04_22_153905_add_subscription_repeat_on_column_to_transactions_table', 1),
(229, '2020_04_28_111436_add_shipping_address_to_contacts_table', 1),
(230, '2020_06_01_094654_add_max_sale_discount_column_to_users_table', 1),
(231, '2020_06_12_162245_modify_contacts_table', 1),
(232, '2020_06_22_103104_change_recur_interval_default_to_one', 1),
(233, '2020_07_09_174621_add_balance_field_to_contacts_table', 1),
(234, '2020_07_23_104933_change_status_column_to_varchar_in_transaction_table', 1),
(235, '2020_09_07_171059_change_completed_stock_transfer_status_to_final', 1),
(236, '2020_09_21_123224_modify_booking_status_column_in_bookings_table', 1),
(237, '2020_09_22_121639_create_discount_variations_table', 1),
(238, '2020_10_05_121550_modify_business_location_table_for_invoice_layout', 1),
(239, '2020_10_16_175726_set_status_as_received_for_opening_stock', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_permissions`
--

INSERT INTO `model_has_permissions` (`permission_id`, `model_type`, `model_id`) VALUES
(77, 'App\\User', 7);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\User', 1),
(3, 'App\\User', 2),
(5, 'App\\User', 3),
(7, 'App\\User', 4),
(9, 'App\\User', 5),
(11, 'App\\User', 6),
(12, 'App\\User', 7),
(13, 'App\\User', 8);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) NOT NULL,
  `type` varchar(191) NOT NULL,
  `notifiable_type` varchar(191) NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notification_templates`
--

CREATE TABLE `notification_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `business_id` int(11) NOT NULL,
  `template_for` varchar(191) NOT NULL,
  `email_body` text DEFAULT NULL,
  `sms_body` text DEFAULT NULL,
  `subject` varchar(191) DEFAULT NULL,
  `cc` varchar(191) DEFAULT NULL,
  `bcc` varchar(191) DEFAULT NULL,
  `auto_send` tinyint(1) NOT NULL DEFAULT 0,
  `auto_send_sms` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notification_templates`
--

INSERT INTO `notification_templates` (`id`, `business_id`, `template_for`, `email_body`, `sms_body`, `subject`, `cc`, `bcc`, `auto_send`, `auto_send_sms`, `created_at`, `updated_at`) VALUES
(1, 1, 'new_sale', '<p>Dear {contact_name},</p>\n\n                    <p>Your invoice number is {invoice_number}<br />\n                    Total amount: {total_amount}<br />\n                    Paid amount: {received_amount}</p>\n\n                    <p>Thank you for shopping with us.</p>\n\n                    <p>{business_logo}</p>\n\n                    <p>&nbsp;</p>', 'Dear {contact_name}, Thank you for shopping with us. {business_name}', 'Thank you from {business_name}', NULL, NULL, 0, 0, '2022-03-05 07:37:20', '2022-03-05 07:37:20'),
(2, 1, 'payment_received', '<p>Dear {contact_name},</p>\n\n                <p>We have received a payment of {received_amount}</p>\n\n                <p>{business_logo}</p>', 'Dear {contact_name}, We have received a payment of {received_amount}. {business_name}', 'Payment Received, from {business_name}', NULL, NULL, 0, 0, '2022-03-05 07:37:21', '2022-03-05 07:37:21'),
(3, 1, 'payment_reminder', '<p>Dear {contact_name},</p>\n\n                    <p>This is to remind you that you have pending payment of {due_amount}. Kindly pay it as soon as possible.</p>\n\n                    <p>{business_logo}</p>', 'Dear {contact_name}, You have pending payment of {due_amount}. Kindly pay it as soon as possible. {business_name}', 'Payment Reminder, from {business_name}', NULL, NULL, 0, 0, '2022-03-05 07:37:21', '2022-03-05 07:37:21'),
(4, 1, 'new_booking', '<p>Dear {contact_name},</p>\n\n                    <p>Your booking is confirmed</p>\n\n                    <p>Date: {start_time} to {end_time}</p>\n\n                    <p>Table: {table}</p>\n\n                    <p>Location: {location}</p>\n\n                    <p>{business_logo}</p>', 'Dear {contact_name}, Your booking is confirmed. Date: {start_time} to {end_time}, Table: {table}, Location: {location}', 'Booking Confirmed - {business_name}', NULL, NULL, 0, 0, '2022-03-05 07:37:21', '2022-03-05 07:37:21'),
(5, 1, 'new_order', '<p>Dear {contact_name},</p>\n\n                    <p>We have a new order with reference number {order_ref_number}. Kindly process the products as soon as possible.</p>\n\n                    <p>{business_name}<br />\n                    {business_logo}</p>', 'Dear {contact_name}, We have a new order with reference number {order_ref_number}. Kindly process the products as soon as possible. {business_name}', 'New Order, from {business_name}', NULL, NULL, 0, 0, '2022-03-05 07:37:21', '2022-03-05 07:37:21'),
(6, 1, 'payment_paid', '<p>Dear {contact_name},</p>\n\n                    <p>We have paid amount {paid_amount} again invoice number {order_ref_number}.<br />\n                    Kindly note it down.</p>\n\n                    <p>{business_name}<br />\n                    {business_logo}</p>', 'We have paid amount {paid_amount} again invoice number {order_ref_number}.\n                    Kindly note it down. {business_name}', 'Payment Paid, from {business_name}', NULL, NULL, 0, 0, '2022-03-05 07:37:21', '2022-03-05 07:37:21'),
(7, 1, 'items_received', '<p>Dear {contact_name},</p>\n\n                    <p>We have received all items from invoice reference number {order_ref_number}. Thank you for processing it.</p>\n\n                    <p>{business_name}<br />\n                    {business_logo}</p>', 'We have received all items from invoice reference number {order_ref_number}. Thank you for processing it. {business_name}', 'Items received, from {business_name}', NULL, NULL, 0, 0, '2022-03-05 07:37:21', '2022-03-05 07:37:21'),
(8, 1, 'items_pending', '<p>Dear {contact_name},<br />\n                    This is to remind you that we have not yet received some items from invoice reference number {order_ref_number}. Please process it as soon as possible.</p>\n\n                    <p>{business_name}<br />\n                    {business_logo}</p>', 'This is to remind you that we have not yet received some items from invoice reference number {order_ref_number} . Please process it as soon as possible.{business_name}', 'Items Pending, from {business_name}', NULL, NULL, 0, 0, '2022-03-05 07:37:21', '2022-03-05 07:37:21'),
(9, 1, 'new_quotation', '<p>Dear {contact_name},</p>\n\n                    <p>Your quotation number is {invoice_number}<br />\n                    Total amount: {total_amount}</p>\n\n                    <p>Thank you for shopping with us.</p>\n\n                    <p>{business_logo}</p>\n\n                    <p>&nbsp;</p>', 'Dear {contact_name}, Thank you for shopping with us. {business_name}', 'Thank you from {business_name}', NULL, NULL, 0, 0, '2022-03-05 07:37:21', '2022-03-05 07:37:21'),
(10, 2, 'new_sale', '<p>Dear {contact_name},</p>\n\n                    <p>Your invoice number is {invoice_number}<br />\n                    Total amount: {total_amount}<br />\n                    Paid amount: {received_amount}</p>\n\n                    <p>Thank you for shopping with us.</p>\n\n                    <p>{business_logo}</p>\n\n                    <p>&nbsp;</p>', 'Dear {contact_name}, Thank you for shopping with us. {business_name}', 'Thank you from {business_name}', NULL, NULL, 0, 0, '2022-03-05 07:42:24', '2022-03-05 07:42:24'),
(11, 2, 'payment_received', '<p>Dear {contact_name},</p>\n\n                <p>We have received a payment of {received_amount}</p>\n\n                <p>{business_logo}</p>', 'Dear {contact_name}, We have received a payment of {received_amount}. {business_name}', 'Payment Received, from {business_name}', NULL, NULL, 0, 0, '2022-03-05 07:42:24', '2022-03-05 07:42:24'),
(12, 2, 'payment_reminder', '<p>Dear {contact_name},</p>\n\n                    <p>This is to remind you that you have pending payment of {due_amount}. Kindly pay it as soon as possible.</p>\n\n                    <p>{business_logo}</p>', 'Dear {contact_name}, You have pending payment of {due_amount}. Kindly pay it as soon as possible. {business_name}', 'Payment Reminder, from {business_name}', NULL, NULL, 0, 0, '2022-03-05 07:42:24', '2022-03-05 07:42:24'),
(13, 2, 'new_booking', '<p>Dear {contact_name},</p>\n\n                    <p>Your booking is confirmed</p>\n\n                    <p>Date: {start_time} to {end_time}</p>\n\n                    <p>Table: {table}</p>\n\n                    <p>Location: {location}</p>\n\n                    <p>{business_logo}</p>', 'Dear {contact_name}, Your booking is confirmed. Date: {start_time} to {end_time}, Table: {table}, Location: {location}', 'Booking Confirmed - {business_name}', NULL, NULL, 0, 0, '2022-03-05 07:42:24', '2022-03-05 07:42:24'),
(14, 2, 'new_order', '<p>Dear {contact_name},</p>\n\n                    <p>We have a new order with reference number {order_ref_number}. Kindly process the products as soon as possible.</p>\n\n                    <p>{business_name}<br />\n                    {business_logo}</p>', 'Dear {contact_name}, We have a new order with reference number {order_ref_number}. Kindly process the products as soon as possible. {business_name}', 'New Order, from {business_name}', NULL, NULL, 0, 0, '2022-03-05 07:42:24', '2022-03-05 07:42:24'),
(15, 2, 'payment_paid', '<p>Dear {contact_name},</p>\n\n                    <p>We have paid amount {paid_amount} again invoice number {order_ref_number}.<br />\n                    Kindly note it down.</p>\n\n                    <p>{business_name}<br />\n                    {business_logo}</p>', 'We have paid amount {paid_amount} again invoice number {order_ref_number}.\n                    Kindly note it down. {business_name}', 'Payment Paid, from {business_name}', NULL, NULL, 0, 0, '2022-03-05 07:42:24', '2022-03-05 07:42:24'),
(16, 2, 'items_received', '<p>Dear {contact_name},</p>\n\n                    <p>We have received all items from invoice reference number {order_ref_number}. Thank you for processing it.</p>\n\n                    <p>{business_name}<br />\n                    {business_logo}</p>', 'We have received all items from invoice reference number {order_ref_number}. Thank you for processing it. {business_name}', 'Items received, from {business_name}', NULL, NULL, 0, 0, '2022-03-05 07:42:24', '2022-03-05 07:42:24'),
(17, 2, 'items_pending', '<p>Dear {contact_name},<br />\n                    This is to remind you that we have not yet received some items from invoice reference number {order_ref_number}. Please process it as soon as possible.</p>\n\n                    <p>{business_name}<br />\n                    {business_logo}</p>', 'This is to remind you that we have not yet received some items from invoice reference number {order_ref_number} . Please process it as soon as possible.{business_name}', 'Items Pending, from {business_name}', NULL, NULL, 0, 0, '2022-03-05 07:42:24', '2022-03-05 07:42:24'),
(18, 2, 'new_quotation', '<p>Dear {contact_name},</p>\n\n                    <p>Your quotation number is {invoice_number}<br />\n                    Total amount: {total_amount}</p>\n\n                    <p>Thank you for shopping with us.</p>\n\n                    <p>{business_logo}</p>\n\n                    <p>&nbsp;</p>', 'Dear {contact_name}, Thank you for shopping with us. {business_name}', 'Thank you from {business_name}', NULL, NULL, 0, 0, '2022-03-05 07:42:24', '2022-03-05 07:42:24'),
(19, 3, 'new_sale', '<p>Dear {contact_name},</p>\n\n                    <p>Your invoice number is {invoice_number}<br />\n                    Total amount: {total_amount}<br />\n                    Paid amount: {received_amount}</p>\n\n                    <p>Thank you for shopping with us.</p>\n\n                    <p>{business_logo}</p>\n\n                    <p>&nbsp;</p>', 'Dear {contact_name}, Thank you for shopping with us. {business_name}', 'Thank you from {business_name}', NULL, NULL, 0, 0, '2022-03-10 01:44:13', '2022-03-10 01:44:13'),
(20, 3, 'payment_received', '<p>Dear {contact_name},</p>\n\n                <p>We have received a payment of {received_amount}</p>\n\n                <p>{business_logo}</p>', 'Dear {contact_name}, We have received a payment of {received_amount}. {business_name}', 'Payment Received, from {business_name}', NULL, NULL, 0, 0, '2022-03-10 01:44:13', '2022-03-10 01:44:13'),
(21, 3, 'payment_reminder', '<p>Dear {contact_name},</p>\n\n                    <p>This is to remind you that you have pending payment of {due_amount}. Kindly pay it as soon as possible.</p>\n\n                    <p>{business_logo}</p>', 'Dear {contact_name}, You have pending payment of {due_amount}. Kindly pay it as soon as possible. {business_name}', 'Payment Reminder, from {business_name}', NULL, NULL, 0, 0, '2022-03-10 01:44:13', '2022-03-10 01:44:13'),
(22, 3, 'new_booking', '<p>Dear {contact_name},</p>\n\n                    <p>Your booking is confirmed</p>\n\n                    <p>Date: {start_time} to {end_time}</p>\n\n                    <p>Table: {table}</p>\n\n                    <p>Location: {location}</p>\n\n                    <p>{business_logo}</p>', 'Dear {contact_name}, Your booking is confirmed. Date: {start_time} to {end_time}, Table: {table}, Location: {location}', 'Booking Confirmed - {business_name}', NULL, NULL, 0, 0, '2022-03-10 01:44:13', '2022-03-10 01:44:13'),
(23, 3, 'new_order', '<p>Dear {contact_name},</p>\n\n                    <p>We have a new order with reference number {order_ref_number}. Kindly process the products as soon as possible.</p>\n\n                    <p>{business_name}<br />\n                    {business_logo}</p>', 'Dear {contact_name}, We have a new order with reference number {order_ref_number}. Kindly process the products as soon as possible. {business_name}', 'New Order, from {business_name}', NULL, NULL, 0, 0, '2022-03-10 01:44:13', '2022-03-10 01:44:13'),
(24, 3, 'payment_paid', '<p>Dear {contact_name},</p>\n\n                    <p>We have paid amount {paid_amount} again invoice number {order_ref_number}.<br />\n                    Kindly note it down.</p>\n\n                    <p>{business_name}<br />\n                    {business_logo}</p>', 'We have paid amount {paid_amount} again invoice number {order_ref_number}.\n                    Kindly note it down. {business_name}', 'Payment Paid, from {business_name}', NULL, NULL, 0, 0, '2022-03-10 01:44:13', '2022-03-10 01:44:13'),
(25, 3, 'items_received', '<p>Dear {contact_name},</p>\n\n                    <p>We have received all items from invoice reference number {order_ref_number}. Thank you for processing it.</p>\n\n                    <p>{business_name}<br />\n                    {business_logo}</p>', 'We have received all items from invoice reference number {order_ref_number}. Thank you for processing it. {business_name}', 'Items received, from {business_name}', NULL, NULL, 0, 0, '2022-03-10 01:44:13', '2022-03-10 01:44:13'),
(26, 3, 'items_pending', '<p>Dear {contact_name},<br />\n                    This is to remind you that we have not yet received some items from invoice reference number {order_ref_number}. Please process it as soon as possible.</p>\n\n                    <p>{business_name}<br />\n                    {business_logo}</p>', 'This is to remind you that we have not yet received some items from invoice reference number {order_ref_number} . Please process it as soon as possible.{business_name}', 'Items Pending, from {business_name}', NULL, NULL, 0, 0, '2022-03-10 01:44:13', '2022-03-10 01:44:13'),
(27, 3, 'new_quotation', '<p>Dear {contact_name},</p>\n\n                    <p>Your quotation number is {invoice_number}<br />\n                    Total amount: {total_amount}</p>\n\n                    <p>Thank you for shopping with us.</p>\n\n                    <p>{business_logo}</p>\n\n                    <p>&nbsp;</p>', 'Dear {contact_name}, Thank you for shopping with us. {business_name}', 'Thank you from {business_name}', NULL, NULL, 0, 0, '2022-03-10 01:44:13', '2022-03-10 01:44:13'),
(28, 4, 'new_sale', '<p>Dear {contact_name},</p>\n\n                    <p>Your invoice number is {invoice_number}<br />\n                    Total amount: {total_amount}<br />\n                    Paid amount: {received_amount}</p>\n\n                    <p>Thank you for shopping with us.</p>\n\n                    <p>{business_logo}</p>\n\n                    <p>&nbsp;</p>', 'Dear {contact_name}, Thank you for shopping with us. {business_name}', 'Thank you from {business_name}', NULL, NULL, 0, 0, '2022-03-30 16:50:28', '2022-03-30 16:50:28'),
(29, 4, 'payment_received', '<p>Dear {contact_name},</p>\n\n                <p>We have received a payment of {received_amount}</p>\n\n                <p>{business_logo}</p>', 'Dear {contact_name}, We have received a payment of {received_amount}. {business_name}', 'Payment Received, from {business_name}', NULL, NULL, 0, 0, '2022-03-30 16:50:28', '2022-03-30 16:50:28'),
(30, 4, 'payment_reminder', '<p>Dear {contact_name},</p>\n\n                    <p>This is to remind you that you have pending payment of {due_amount}. Kindly pay it as soon as possible.</p>\n\n                    <p>{business_logo}</p>', 'Dear {contact_name}, You have pending payment of {due_amount}. Kindly pay it as soon as possible. {business_name}', 'Payment Reminder, from {business_name}', NULL, NULL, 0, 0, '2022-03-30 16:50:28', '2022-03-30 16:50:28'),
(31, 4, 'new_booking', '<p>Dear {contact_name},</p>\n\n                    <p>Your booking is confirmed</p>\n\n                    <p>Date: {start_time} to {end_time}</p>\n\n                    <p>Table: {table}</p>\n\n                    <p>Location: {location}</p>\n\n                    <p>{business_logo}</p>', 'Dear {contact_name}, Your booking is confirmed. Date: {start_time} to {end_time}, Table: {table}, Location: {location}', 'Booking Confirmed - {business_name}', NULL, NULL, 0, 0, '2022-03-30 16:50:28', '2022-03-30 16:50:28'),
(32, 4, 'new_order', '<p>Dear {contact_name},</p>\n\n                    <p>We have a new order with reference number {order_ref_number}. Kindly process the products as soon as possible.</p>\n\n                    <p>{business_name}<br />\n                    {business_logo}</p>', 'Dear {contact_name}, We have a new order with reference number {order_ref_number}. Kindly process the products as soon as possible. {business_name}', 'New Order, from {business_name}', NULL, NULL, 0, 0, '2022-03-30 16:50:28', '2022-03-30 16:50:28'),
(33, 4, 'payment_paid', '<p>Dear {contact_name},</p>\n\n                    <p>We have paid amount {paid_amount} again invoice number {order_ref_number}.<br />\n                    Kindly note it down.</p>\n\n                    <p>{business_name}<br />\n                    {business_logo}</p>', 'We have paid amount {paid_amount} again invoice number {order_ref_number}.\n                    Kindly note it down. {business_name}', 'Payment Paid, from {business_name}', NULL, NULL, 0, 0, '2022-03-30 16:50:28', '2022-03-30 16:50:28'),
(34, 4, 'items_received', '<p>Dear {contact_name},</p>\n\n                    <p>We have received all items from invoice reference number {order_ref_number}. Thank you for processing it.</p>\n\n                    <p>{business_name}<br />\n                    {business_logo}</p>', 'We have received all items from invoice reference number {order_ref_number}. Thank you for processing it. {business_name}', 'Items received, from {business_name}', NULL, NULL, 0, 0, '2022-03-30 16:50:28', '2022-03-30 16:50:28'),
(35, 4, 'items_pending', '<p>Dear {contact_name},<br />\n                    This is to remind you that we have not yet received some items from invoice reference number {order_ref_number}. Please process it as soon as possible.</p>\n\n                    <p>{business_name}<br />\n                    {business_logo}</p>', 'This is to remind you that we have not yet received some items from invoice reference number {order_ref_number} . Please process it as soon as possible.{business_name}', 'Items Pending, from {business_name}', NULL, NULL, 0, 0, '2022-03-30 16:50:28', '2022-03-30 16:50:28'),
(36, 4, 'new_quotation', '<p>Dear {contact_name},</p>\n\n                    <p>Your quotation number is {invoice_number}<br />\n                    Total amount: {total_amount}</p>\n\n                    <p>Thank you for shopping with us.</p>\n\n                    <p>{business_logo}</p>\n\n                    <p>&nbsp;</p>', 'Dear {contact_name}, Thank you for shopping with us. {business_name}', 'Thank you from {business_name}', NULL, NULL, 0, 0, '2022-03-30 16:50:28', '2022-03-30 16:50:28'),
(37, 5, 'new_sale', '<p>Dear {contact_name},</p>\r\n<p>Your invoice number is {invoice_number}<br />Total amount: {total_amount}<br />Paid amount: {received_amount}</p>\r\n<p>Thank you for shopping with us.</p>\r\n<p>{business_logo}</p>\r\n<p>&nbsp;</p>', 'Dear {contact_name}, Thank you for shopping with us. {business_name}', 'Thank you from {business_name}', NULL, NULL, 0, 0, '2022-09-09 11:16:44', '2022-09-13 11:32:23'),
(38, 5, 'payment_received', '<p>Dear {contact_name},</p>\r\n<p>We have received a payment of {received_amount}</p>\r\n<p>{business_logo}</p>', 'Dear {contact_name}, We have received a payment of {received_amount}. {business_name}', 'Payment Received, from {business_name}', NULL, NULL, 0, 0, '2022-09-09 11:16:44', '2022-09-13 11:32:23'),
(39, 5, 'payment_reminder', '<p>Dear {contact_name},</p>\r\n<p>This is to remind you that you have pending payment of {due_amount}. Kindly pay it as soon as possible.</p>\r\n<p>{business_logo}</p>', 'Dear {contact_name}, You have pending payment of {due_amount}. Kindly pay it as soon as possible. {business_name}', 'Payment Reminder, from {business_name}', NULL, NULL, 0, 0, '2022-09-09 11:16:44', '2022-09-13 11:32:23'),
(40, 5, 'new_booking', '<p>Dear {contact_name},</p>\r\n<p>Your booking is confirmed</p>\r\n<p>Date: {start_time} to {end_time}</p>\r\n<p>Table: {table}</p>\r\n<p>Location: {location}</p>\r\n<p>{business_logo}</p>', 'Dear {contact_name}, Your booking is confirmed. Date: {start_time} to {end_time}, Table: {table}, Location: {location}', 'Booking Confirmed - {business_name}', NULL, NULL, 0, 0, '2022-09-09 11:16:44', '2022-09-13 11:32:23'),
(41, 5, 'new_order', '<p>Dear {contact_name},</p>\r\n<p>We have a new order with reference number {order_ref_number}. Kindly process the products as soon as possible.</p>\r\n<p>{business_name}<br />{business_logo}</p>', 'Dear {contact_name}, We have a new order with reference number {order_ref_number}. Kindly process the products as soon as possible. {business_name}', 'New Order, from {business_name}', NULL, NULL, 0, 0, '2022-09-09 11:16:44', '2022-09-13 11:32:23'),
(42, 5, 'payment_paid', '<p>Dear {contact_name},</p>\r\n<p>We have paid amount {paid_amount} again invoice number {order_ref_number}.<br />Kindly note it down.</p>\r\n<p>{business_name}<br />{business_logo}</p>', 'We have paid amount {paid_amount} again invoice number {order_ref_number}.\r\n                    Kindly note it down. {business_name}', 'Payment Paid, from {business_name}', NULL, NULL, 0, 0, '2022-09-09 11:16:44', '2022-09-13 11:32:23'),
(43, 5, 'items_received', '<p>Dear {contact_name},</p>\r\n<p>We have received all items from invoice reference number {order_ref_number}. Thank you for processing it.</p>\r\n<p>{business_name}<br />{business_logo}</p>', 'We have received all items from invoice reference number {order_ref_number}. Thank you for processing it. {business_name}', 'Items received, from {business_name}', NULL, NULL, 0, 0, '2022-09-09 11:16:44', '2022-09-13 11:32:23'),
(44, 5, 'items_pending', '<p>Dear {contact_name},<br />This is to remind you that we have not yet received some items from invoice reference number {order_ref_number}. Please process it as soon as possible.</p>\r\n<p>{business_name}<br />{business_logo}</p>', 'This is to remind you that we have not yet received some items from invoice reference number {order_ref_number} . Please process it as soon as possible.{business_name}', 'Items Pending, from {business_name}', NULL, NULL, 0, 0, '2022-09-09 11:16:44', '2022-09-13 11:32:23'),
(45, 5, 'new_quotation', '<p>Dear {contact_name},</p>\r\n<p>Your quotation number is {invoice_number}<br />Total amount: {total_amount}</p>\r\n<p>Thank you for shopping with us.</p>\r\n<p>{business_logo}</p>\r\n<p>&nbsp;</p>', 'Dear {contact_name}, Thank you for shopping with us. {business_name}', 'Thank you from {business_name}', NULL, NULL, 0, 0, '2022-09-09 11:16:44', '2022-09-13 11:32:23'),
(46, 5, 'send_ledger', '<p>test</p>', NULL, 'test', 'sangee2230@gmail.com', 'kageena.arunthavarasa@kodplex.com', 0, 0, '2022-09-13 11:32:23', '2022-09-13 12:31:25'),
(47, 6, 'new_sale', '<p>Dear {contact_name},</p>\r\n<p>Your invoice number is {invoice_number}<br />Total amount: {total_amount}<br />Paid amount: {received_amount}</p>\r\n<p>Thank you for shopping with us.</p>\r\n<p>{business_logo}</p>\r\n<p>&nbsp;</p>', 'Dear {contact_name}, Thank you for shopping with us. {business_name}', 'Thank you from {business_name}', NULL, NULL, 1, 0, '2023-01-14 08:38:19', '2023-01-18 18:31:18'),
(48, 6, 'payment_received', '<p>Dear {contact_name},</p>\r\n<p>We have received a payment of {received_amount}</p>\r\n<p>{business_logo}</p>', 'Dear {contact_name}, We have received a payment of {received_amount}. {business_name}', 'Payment Received, from {business_name}', NULL, NULL, 0, 0, '2023-01-14 08:38:19', '2023-01-18 18:31:18'),
(49, 6, 'payment_reminder', '<p>Dear {contact_name},</p>\r\n<p>This is to remind you that you have pending payment of {due_amount}. Kindly pay it as soon as possible.</p>\r\n<p>{business_logo}</p>', 'Dear {contact_name}, You have pending payment of {due_amount}. Kindly pay it as soon as possible. {business_name}', 'Payment Reminder, from {business_name}', NULL, NULL, 0, 0, '2023-01-14 08:38:19', '2023-01-18 18:31:18'),
(50, 6, 'new_booking', '<p>Dear {contact_name},</p>\r\n<p>Your booking is confirmed</p>\r\n<p>Date: {start_time} to {end_time}</p>\r\n<p>Table: {table}</p>\r\n<p>Location: {location}</p>\r\n<p>{business_logo}</p>', 'Dear {contact_name}, Your booking is confirmed. Date: {start_time} to {end_time}, Table: {table}, Location: {location}', 'Booking Confirmed - {business_name}', NULL, NULL, 0, 0, '2023-01-14 08:38:19', '2023-01-18 18:31:18'),
(51, 6, 'new_order', '<p>Dear {contact_name},</p>\r\n<p>We have a new order with reference number {order_ref_number}. Kindly process the products as soon as possible.</p>\r\n<p>{business_name}<br />{business_logo}</p>', 'Dear {contact_name}, We have a new order with reference number {order_ref_number}. Kindly process the products as soon as possible. {business_name}', 'New Order, from {business_name}', NULL, NULL, 0, 0, '2023-01-14 08:38:19', '2023-01-18 18:31:18'),
(52, 6, 'payment_paid', '<p>Dear {contact_name},</p>\r\n<p>We have paid amount {paid_amount} again invoice number {order_ref_number}.<br />Kindly note it down.</p>\r\n<p>{business_name}<br />{business_logo}</p>', 'We have paid amount {paid_amount} again invoice number {order_ref_number}.\r\n                    Kindly note it down. {business_name}', 'Payment Paid, from {business_name}', NULL, NULL, 0, 0, '2023-01-14 08:38:19', '2023-01-18 18:31:18'),
(53, 6, 'items_received', '<p>Dear {contact_name},</p>\r\n<p>We have received all items from invoice reference number {order_ref_number}. Thank you for processing it.</p>\r\n<p>{business_name}<br />{business_logo}</p>', 'We have received all items from invoice reference number {order_ref_number}. Thank you for processing it. {business_name}', 'Items received, from {business_name}', NULL, NULL, 0, 0, '2023-01-14 08:38:19', '2023-01-18 18:31:18'),
(54, 6, 'items_pending', '<p>Dear {contact_name},<br />This is to remind you that we have not yet received some items from invoice reference number {order_ref_number}. Please process it as soon as possible.</p>\r\n<p>{business_name}<br />{business_logo}</p>', 'This is to remind you that we have not yet received some items from invoice reference number {order_ref_number} . Please process it as soon as possible.{business_name}', 'Items Pending, from {business_name}', NULL, NULL, 0, 0, '2023-01-14 08:38:19', '2023-01-18 18:31:18'),
(55, 6, 'new_quotation', '<p>Dear {contact_name},</p>\r\n<p>Your quotation number is {invoice_number}<br />Total amount: {total_amount}</p>\r\n<p>Thank you for shopping with us.</p>\r\n<p>{business_logo}</p>\r\n<p>&nbsp;</p>', 'Dear {contact_name}, Thank you for shopping with us. {business_name}', 'Thank you from {business_name}', NULL, NULL, 0, 0, '2023-01-14 08:38:19', '2023-01-18 18:31:18'),
(56, 6, 'send_ledger', '<p>aaa</p>', NULL, 'aarondavis2108@gmail.com', NULL, NULL, 0, 0, '2023-01-18 18:31:18', '2023-01-18 18:31:18'),
(57, 7, 'new_sale', '<p>Dear {contact_name},</p>\n\n                    <p>Your invoice number is {invoice_number}<br />\n                    Total amount: {total_amount}<br />\n                    Paid amount: {received_amount}</p>\n\n                    <p>Thank you for shopping with us.</p>\n\n                    <p>{business_logo}</p>\n\n                    <p>&nbsp;</p>', 'Dear {contact_name}, Thank you for shopping with us. {business_name}', 'Thank you from {business_name}', NULL, NULL, 0, 0, '2023-01-30 12:56:59', '2023-01-30 12:56:59'),
(58, 7, 'payment_received', '<p>Dear {contact_name},</p>\n\n                <p>We have received a payment of {received_amount}</p>\n\n                <p>{business_logo}</p>', 'Dear {contact_name}, We have received a payment of {received_amount}. {business_name}', 'Payment Received, from {business_name}', NULL, NULL, 0, 0, '2023-01-30 12:56:59', '2023-01-30 12:56:59'),
(59, 7, 'payment_reminder', '<p>Dear {contact_name},</p>\n\n                    <p>This is to remind you that you have pending payment of {due_amount}. Kindly pay it as soon as possible.</p>\n\n                    <p>{business_logo}</p>', 'Dear {contact_name}, You have pending payment of {due_amount}. Kindly pay it as soon as possible. {business_name}', 'Payment Reminder, from {business_name}', NULL, NULL, 0, 0, '2023-01-30 12:56:59', '2023-01-30 12:56:59'),
(60, 7, 'new_booking', '<p>Dear {contact_name},</p>\n\n                    <p>Your booking is confirmed</p>\n\n                    <p>Date: {start_time} to {end_time}</p>\n\n                    <p>Table: {table}</p>\n\n                    <p>Location: {location}</p>\n\n                    <p>{business_logo}</p>', 'Dear {contact_name}, Your booking is confirmed. Date: {start_time} to {end_time}, Table: {table}, Location: {location}', 'Booking Confirmed - {business_name}', NULL, NULL, 0, 0, '2023-01-30 12:56:59', '2023-01-30 12:56:59'),
(61, 7, 'new_order', '<p>Dear {contact_name},</p>\n\n                    <p>We have a new order with reference number {order_ref_number}. Kindly process the products as soon as possible.</p>\n\n                    <p>{business_name}<br />\n                    {business_logo}</p>', 'Dear {contact_name}, We have a new order with reference number {order_ref_number}. Kindly process the products as soon as possible. {business_name}', 'New Order, from {business_name}', NULL, NULL, 0, 0, '2023-01-30 12:56:59', '2023-01-30 12:56:59'),
(62, 7, 'payment_paid', '<p>Dear {contact_name},</p>\n\n                    <p>We have paid amount {paid_amount} again invoice number {order_ref_number}.<br />\n                    Kindly note it down.</p>\n\n                    <p>{business_name}<br />\n                    {business_logo}</p>', 'We have paid amount {paid_amount} again invoice number {order_ref_number}.\n                    Kindly note it down. {business_name}', 'Payment Paid, from {business_name}', NULL, NULL, 0, 0, '2023-01-30 12:56:59', '2023-01-30 12:56:59'),
(63, 7, 'items_received', '<p>Dear {contact_name},</p>\n\n                    <p>We have received all items from invoice reference number {order_ref_number}. Thank you for processing it.</p>\n\n                    <p>{business_name}<br />\n                    {business_logo}</p>', 'We have received all items from invoice reference number {order_ref_number}. Thank you for processing it. {business_name}', 'Items received, from {business_name}', NULL, NULL, 0, 0, '2023-01-30 12:56:59', '2023-01-30 12:56:59'),
(64, 7, 'items_pending', '<p>Dear {contact_name},<br />\n                    This is to remind you that we have not yet received some items from invoice reference number {order_ref_number}. Please process it as soon as possible.</p>\n\n                    <p>{business_name}<br />\n                    {business_logo}</p>', 'This is to remind you that we have not yet received some items from invoice reference number {order_ref_number} . Please process it as soon as possible.{business_name}', 'Items Pending, from {business_name}', NULL, NULL, 0, 0, '2023-01-30 12:56:59', '2023-01-30 12:56:59'),
(65, 7, 'new_quotation', '<p>Dear {contact_name},</p>\n\n                    <p>Your quotation number is {invoice_number}<br />\n                    Total amount: {total_amount}</p>\n\n                    <p>Thank you for shopping with us.</p>\n\n                    <p>{business_logo}</p>\n\n                    <p>&nbsp;</p>', 'Dear {contact_name}, Thank you for shopping with us. {business_name}', 'Thank you from {business_name}', NULL, NULL, 0, 0, '2023-01-30 12:56:59', '2023-01-30 12:56:59');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('vinoo@upview.tech', '$2y$10$nn1lSDoQBdLfd8BfwRdTau2vaeOJMQmM9v6a.tCs2jBG//61/N8WG', '2023-01-14 08:35:33');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `guard_name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'profit_loss_report.view', 'web', '2022-03-05 06:22:37', NULL),
(2, 'direct_sell.access', 'web', '2022-03-05 06:22:37', NULL),
(3, 'product.opening_stock', 'web', '2022-03-05 06:22:38', '2022-03-05 06:22:38'),
(4, 'crud_all_bookings', 'web', '2022-03-05 06:22:38', '2022-03-05 06:22:38'),
(5, 'crud_own_bookings', 'web', '2022-03-05 06:22:38', '2022-03-05 06:22:38'),
(6, 'access_default_selling_price', 'web', '2022-03-05 06:22:39', '2022-03-05 06:22:39'),
(7, 'purchase.payments', 'web', '2022-03-05 06:22:39', '2022-03-05 06:22:39'),
(8, 'sell.payments', 'web', '2022-03-05 06:22:39', '2022-03-05 06:22:39'),
(9, 'edit_product_price_from_sale_screen', 'web', '2022-03-05 06:22:39', '2022-03-05 06:22:39'),
(10, 'edit_product_discount_from_sale_screen', 'web', '2022-03-05 06:22:39', '2022-03-05 06:22:39'),
(11, 'roles.view', 'web', '2022-03-05 06:22:39', '2022-03-05 06:22:39'),
(12, 'roles.create', 'web', '2022-03-05 06:22:39', '2022-03-05 06:22:39'),
(13, 'roles.update', 'web', '2022-03-05 06:22:39', '2022-03-05 06:22:39'),
(14, 'roles.delete', 'web', '2022-03-05 06:22:39', '2022-03-05 06:22:39'),
(15, 'account.access', 'web', '2022-03-05 06:22:40', '2022-03-05 06:22:40'),
(16, 'discount.access', 'web', '2022-03-05 06:22:40', '2022-03-05 06:22:40'),
(17, 'view_purchase_price', 'web', '2022-03-05 06:22:40', '2022-03-05 06:22:40'),
(18, 'view_own_sell_only', 'web', '2022-03-05 06:22:40', '2022-03-05 06:22:40'),
(19, 'edit_product_discount_from_pos_screen', 'web', '2022-03-05 06:22:40', '2022-03-05 06:22:40'),
(20, 'edit_product_price_from_pos_screen', 'web', '2022-03-05 06:22:40', '2022-03-05 06:22:40'),
(21, 'access_shipping', 'web', '2022-03-05 06:22:41', '2022-03-05 06:22:41'),
(22, 'purchase.update_status', 'web', '2022-03-05 06:22:41', '2022-03-05 06:22:41'),
(23, 'list_drafts', 'web', '2022-03-05 06:22:41', '2022-03-05 06:22:41'),
(24, 'list_quotations', 'web', '2022-03-05 06:22:41', '2022-03-05 06:22:41'),
(25, 'user.view', 'web', '2022-03-05 06:22:42', NULL),
(26, 'user.create', 'web', '2022-03-05 06:22:42', NULL),
(27, 'user.update', 'web', '2022-03-05 06:22:42', NULL),
(28, 'user.delete', 'web', '2022-03-05 06:22:42', NULL),
(29, 'supplier.view', 'web', '2022-03-05 06:22:42', NULL),
(30, 'supplier.create', 'web', '2022-03-05 06:22:42', NULL),
(31, 'supplier.update', 'web', '2022-03-05 06:22:42', NULL),
(32, 'supplier.delete', 'web', '2022-03-05 06:22:42', NULL),
(33, 'customer.view', 'web', '2022-03-05 06:22:42', NULL),
(34, 'customer.create', 'web', '2022-03-05 06:22:42', NULL),
(35, 'customer.update', 'web', '2022-03-05 06:22:42', NULL),
(36, 'customer.delete', 'web', '2022-03-05 06:22:42', NULL),
(37, 'product.view', 'web', '2022-03-05 06:22:42', NULL),
(38, 'product.create', 'web', '2022-03-05 06:22:42', NULL),
(39, 'product.update', 'web', '2022-03-05 06:22:42', NULL),
(40, 'product.delete', 'web', '2022-03-05 06:22:42', NULL),
(41, 'purchase.view', 'web', '2022-03-05 06:22:42', NULL),
(42, 'purchase.create', 'web', '2022-03-05 06:22:42', NULL),
(43, 'purchase.update', 'web', '2022-03-05 06:22:42', NULL),
(44, 'purchase.delete', 'web', '2022-03-05 06:22:42', NULL),
(45, 'sell.view', 'web', '2022-03-05 06:22:42', NULL),
(46, 'sell.create', 'web', '2022-03-05 06:22:42', NULL),
(47, 'sell.update', 'web', '2022-03-05 06:22:42', NULL),
(48, 'sell.delete', 'web', '2022-03-05 06:22:42', NULL),
(49, 'purchase_n_sell_report.view', 'web', '2022-03-05 06:22:42', NULL),
(50, 'contacts_report.view', 'web', '2022-03-05 06:22:42', NULL),
(51, 'stock_report.view', 'web', '2022-03-05 06:22:42', NULL),
(52, 'tax_report.view', 'web', '2022-03-05 06:22:42', NULL),
(53, 'trending_product_report.view', 'web', '2022-03-05 06:22:42', NULL),
(54, 'register_report.view', 'web', '2022-03-05 06:22:42', NULL),
(55, 'sales_representative.view', 'web', '2022-03-05 06:22:42', NULL),
(56, 'expense_report.view', 'web', '2022-03-05 06:22:42', NULL),
(57, 'business_settings.access', 'web', '2022-03-05 06:22:42', NULL),
(58, 'barcode_settings.access', 'web', '2022-03-05 06:22:42', NULL),
(59, 'invoice_settings.access', 'web', '2022-03-05 06:22:42', NULL),
(60, 'brand.view', 'web', '2022-03-05 06:22:42', NULL),
(61, 'brand.create', 'web', '2022-03-05 06:22:42', NULL),
(62, 'brand.update', 'web', '2022-03-05 06:22:42', NULL),
(63, 'brand.delete', 'web', '2022-03-05 06:22:42', NULL),
(64, 'tax_rate.view', 'web', '2022-03-05 06:22:42', NULL),
(65, 'tax_rate.create', 'web', '2022-03-05 06:22:42', NULL),
(66, 'tax_rate.update', 'web', '2022-03-05 06:22:42', NULL),
(67, 'tax_rate.delete', 'web', '2022-03-05 06:22:42', NULL),
(68, 'unit.view', 'web', '2022-03-05 06:22:42', NULL),
(69, 'unit.create', 'web', '2022-03-05 06:22:42', NULL),
(70, 'unit.update', 'web', '2022-03-05 06:22:42', NULL),
(71, 'unit.delete', 'web', '2022-03-05 06:22:42', NULL),
(72, 'category.view', 'web', '2022-03-05 06:22:42', NULL),
(73, 'category.create', 'web', '2022-03-05 06:22:42', NULL),
(74, 'category.update', 'web', '2022-03-05 06:22:42', NULL),
(75, 'category.delete', 'web', '2022-03-05 06:22:42', NULL),
(76, 'expense.access', 'web', '2022-03-05 06:22:42', NULL),
(77, 'access_all_locations', 'web', '2022-03-05 06:22:42', NULL),
(78, 'dashboard.data', 'web', '2022-03-05 06:22:42', NULL),
(79, 'location.1', 'web', '2022-03-05 07:37:21', '2022-03-05 07:37:21'),
(80, 'location.2', 'web', '2022-03-05 07:42:24', '2022-03-05 07:42:24'),
(81, 'location.3', 'web', '2022-03-10 01:44:13', '2022-03-10 01:44:13'),
(82, 'location.4', 'web', '2022-03-30 16:50:28', '2022-03-30 16:50:28'),
(83, 'location.5', 'web', '2022-09-09 11:16:45', '2022-09-09 11:16:45'),
(84, 'location.6', 'web', '2023-01-14 08:38:19', '2023-01-14 08:38:19'),
(85, 'location.7', 'web', '2023-01-30 12:56:59', '2023-01-30 12:56:59');

-- --------------------------------------------------------

--
-- Table structure for table `printers`
--

CREATE TABLE `printers` (
  `id` int(10) UNSIGNED NOT NULL,
  `business_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `connection_type` enum('network','windows','linux') NOT NULL,
  `capability_profile` enum('default','simple','SP2000','TEP-200M','P822D') NOT NULL DEFAULT 'default',
  `char_per_line` varchar(191) DEFAULT NULL,
  `ip_address` varchar(191) DEFAULT NULL,
  `port` varchar(191) DEFAULT NULL,
  `path` varchar(191) DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `business_id` int(10) UNSIGNED NOT NULL,
  `type` enum('single','variable','modifier','combo') DEFAULT NULL,
  `unit_id` int(11) UNSIGNED DEFAULT NULL,
  `sub_unit_ids` text DEFAULT NULL,
  `brand_id` int(10) UNSIGNED DEFAULT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `sub_category_id` int(10) UNSIGNED DEFAULT NULL,
  `tax` int(10) UNSIGNED DEFAULT NULL,
  `tax_type` enum('inclusive','exclusive') NOT NULL,
  `enable_stock` tinyint(1) NOT NULL DEFAULT 0,
  `alert_quantity` decimal(22,4) DEFAULT NULL,
  `sku` varchar(191) NOT NULL,
  `barcode_type` enum('C39','C128','EAN13','EAN8','UPCA','UPCE') DEFAULT 'C128',
  `expiry_period` decimal(4,2) DEFAULT NULL,
  `expiry_period_type` enum('days','months') DEFAULT NULL,
  `enable_sr_no` tinyint(1) NOT NULL DEFAULT 0,
  `weight` varchar(191) DEFAULT NULL,
  `product_custom_field1` varchar(191) DEFAULT NULL,
  `product_custom_field2` varchar(191) DEFAULT NULL,
  `product_custom_field3` varchar(191) DEFAULT NULL,
  `product_custom_field4` varchar(191) DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL,
  `product_description` text DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `warranty_id` int(11) DEFAULT NULL,
  `is_inactive` tinyint(1) NOT NULL DEFAULT 0,
  `not_for_selling` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `business_id`, `type`, `unit_id`, `sub_unit_ids`, `brand_id`, `category_id`, `sub_category_id`, `tax`, `tax_type`, `enable_stock`, `alert_quantity`, `sku`, `barcode_type`, `expiry_period`, `expiry_period_type`, `enable_sr_no`, `weight`, `product_custom_field1`, `product_custom_field2`, `product_custom_field3`, `product_custom_field4`, `image`, `product_description`, `created_by`, `warranty_id`, `is_inactive`, `not_for_selling`, `created_at`, `updated_at`) VALUES
(1, 'Samsung Galaxy Z Fold 3', 3, 'single', 3, NULL, 1, NULL, NULL, NULL, 'exclusive', 1, '25.0000', '0001', 'C128', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0, '2022-03-10 01:35:58', '2022-03-10 01:35:58'),
(2, 'Samsung Galaxy S10 Lite', 3, 'single', 3, NULL, 1, 1, NULL, NULL, 'exclusive', 1, NULL, '0002', 'C128', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '1646876421_SamsungGalaxyS10Lite-b.jpg', NULL, 3, NULL, 0, 0, '2022-03-10 01:40:21', '2022-03-10 01:40:21'),
(3, 'Original Samsung 35W Duo OEM Super Fast Charger', 3, 'single', 3, NULL, 1, 4, NULL, NULL, 'exclusive', 1, NULL, '0003', 'C128', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '1646876701_charger.JPG', NULL, 3, NULL, 0, 0, '2022-03-10 01:45:01', '2022-03-10 01:45:01'),
(4, 'Samsung Galaxy S21 FE Soft Case Camera Lens Protected Back', 3, 'single', 3, NULL, NULL, 5, NULL, NULL, 'exclusive', 1, NULL, '0004', 'C128', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '1646876891_mobile.JPG', NULL, 3, NULL, 0, 0, '2022-03-10 01:48:11', '2022-03-10 01:48:11'),
(5, 'Lereach For Xiaomi 11T / 11T Pro lens all-inclusive protection Stacked', 3, 'single', 3, NULL, 1, 5, NULL, NULL, 'exclusive', 1, NULL, '0005', 'C128', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '1646877340_f984aea8252aac262e811f2d6631197c.jpg', NULL, 3, NULL, 0, 0, '2022-03-10 01:55:40', '2022-03-10 01:55:40'),
(6, 'Solar', 4, 'single', 4, NULL, NULL, 6, NULL, NULL, 'exclusive', 1, '0.0000', '0006', 'C128', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, 0, 0, '2022-03-30 10:35:26', '2022-03-30 10:35:26'),
(7, 'Snickers', 5, 'single', 6, NULL, 5, 8, NULL, NULL, 'exclusive', 1, '10.0000', '1', 'C128', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '1662706367_snickers.jpg', NULL, 5, NULL, 0, 0, '2022-09-09 11:22:47', '2022-09-09 11:22:47'),
(8, 'Apple', 5, 'single', 6, NULL, 5, 9, NULL, NULL, 'exclusive', 1, '5.0000', '2', 'C128', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '1662706445_applie.jpg', NULL, 5, NULL, 0, 0, '2022-09-09 11:24:05', '2022-09-09 11:24:05'),
(9, 'Orange', 5, 'single', 6, NULL, 5, 9, NULL, NULL, 'exclusive', 1, '10.0000', '3', 'C128', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '1662706517_orangepac.jpg', NULL, 5, NULL, 0, 0, '2022-09-09 11:25:17', '2022-09-09 11:25:17'),
(10, 'Kit Kat', 5, 'single', 6, NULL, 5, 9, NULL, NULL, 'exclusive', 1, '12.0000', '4', 'C128', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '1662706567_kitkat.jpg', NULL, 5, NULL, 0, 0, '2022-09-09 11:26:07', '2022-09-09 11:26:07'),
(11, 'Lays', 5, 'single', 6, NULL, 5, 10, NULL, NULL, 'exclusive', 1, '24.0000', '6', 'C128', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '1662706700_lays.jpg', NULL, 5, NULL, 0, 0, '2022-09-09 11:28:20', '2022-09-09 11:28:20'),
(12, 'Chips', 5, 'single', 6, NULL, 5, 10, NULL, NULL, 'exclusive', 1, '10.0000', '7', 'C128', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '1662706824_chips.jpg', NULL, 5, NULL, 0, 0, '2022-09-09 11:30:24', '2022-09-09 11:30:24'),
(13, 'Coconut milk', 5, 'single', 5, NULL, 5, 7, NULL, NULL, 'exclusive', 1, '12.0000', '8', 'C128', '3.00', 'days', 0, NULL, NULL, NULL, NULL, NULL, '1662706899_coconut milk.jpg', NULL, 5, NULL, 0, 0, '2022-09-20 16:00:58', '2022-09-20 20:53:23'),
(14, 'Potatoes', 5, 'single', 7, NULL, 5, 9, NULL, NULL, 'exclusive', 1, '10.0000', '9', 'C128', '5.00', 'days', 0, '1kg', NULL, NULL, NULL, NULL, '1662706964_potato.jpg', NULL, 5, NULL, 0, 0, '2022-09-20 16:00:58', '2022-09-20 20:54:00'),
(15, 'Tomatoes', 5, 'single', 7, NULL, 5, 9, NULL, NULL, 'exclusive', 1, '10.0000', '10', 'C128', NULL, NULL, 0, '1kg', NULL, NULL, NULL, NULL, '1662707024_tomato.jpg', NULL, 5, NULL, 0, 0, '2022-09-09 11:33:44', '2022-09-09 11:33:44'),
(16, 'strawberry', 5, 'single', 7, NULL, 5, 9, NULL, NULL, 'exclusive', 1, '20.0000', '11', 'C128', NULL, NULL, 0, '1kg', NULL, NULL, NULL, NULL, '1662707079_strwberry.jpg', NULL, 5, NULL, 0, 0, '2022-09-09 11:34:39', '2022-09-09 11:34:39'),
(17, 'Biscuits', 5, 'single', 6, NULL, 5, 10, NULL, NULL, 'exclusive', 1, '10.0000', '1100', 'C128', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, 0, 0, '2022-09-20 15:58:06', '2022-09-20 15:58:06'),
(18, 'Soap', 5, 'single', 6, NULL, 5, 7, NULL, NULL, 'exclusive', 1, '5.0000', '1101', 'C128', '12.00', 'months', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, 0, 0, '2022-09-20 16:00:58', '2022-09-20 16:00:58'),
(19, 'Diary milk choco', 5, 'single', 6, NULL, NULL, 8, NULL, NULL, 'exclusive', 1, '10.0000', '1102', 'C128', '1.00', 'months', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, 0, 0, '2022-08-29 16:00:58', '2022-09-20 16:04:04'),
(20, 'Lux soap', 6, 'single', 8, NULL, 6, 11, NULL, NULL, 'exclusive', 1, '20.0000', '0020', 'C128', NULL, NULL, 0, '150G', NULL, NULL, NULL, NULL, '1673931702_112094--01--1605150108.jpeg', NULL, 6, NULL, 0, 0, '2023-01-17 10:29:25', '2023-01-17 10:31:42'),
(21, 'test', 6, 'single', 8, NULL, 6, 11, NULL, NULL, 'exclusive', 1, NULL, '0021', 'C128', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, NULL, 0, 0, '2023-01-17 10:56:25', '2023-01-17 10:56:25'),
(22, 'aa', 6, 'single', 8, NULL, 6, 11, NULL, NULL, 'exclusive', 1, '1.0000', '0022', 'C128', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, NULL, 0, 0, '2023-01-17 16:33:39', '2023-01-17 16:33:39'),
(23, 't1', 6, 'single', 8, NULL, NULL, NULL, NULL, NULL, 'exclusive', 1, '0.0000', '0023', 'C128', NULL, NULL, 0, '', '', '', '', '', '', NULL, 6, NULL, 0, 0, '2023-01-18 21:15:11', '2023-01-18 21:15:11'),
(24, 't2', 6, 'single', 8, NULL, NULL, NULL, NULL, NULL, 'exclusive', 1, '0.0000', '0024', 'C128', NULL, NULL, 0, '', '', '', '', '', '', NULL, 6, NULL, 0, 0, '2023-01-18 21:15:11', '2023-01-18 21:15:11'),
(25, 't3', 6, 'single', 8, NULL, NULL, NULL, NULL, NULL, 'exclusive', 1, '0.0000', '0025', 'C128', NULL, NULL, 0, '', '', '', '', '', '', NULL, 6, NULL, 0, 0, '2023-01-18 21:15:11', '2023-01-18 21:15:11'),
(26, 't4', 6, 'single', 8, NULL, NULL, NULL, NULL, NULL, 'exclusive', 1, '0.0000', '0026', 'C128', NULL, NULL, 0, '', '', '', '', '', '', NULL, 6, NULL, 0, 0, '2023-01-18 21:15:11', '2023-01-18 21:15:11'),
(27, 't5', 6, 'single', 8, NULL, NULL, NULL, NULL, NULL, 'exclusive', 1, '0.0000', '0027', 'C128', NULL, NULL, 0, '', '', '', '', '', '', NULL, 6, NULL, 0, 0, '2023-01-18 21:15:11', '2023-01-18 21:15:11'),
(28, 't6', 6, 'single', 8, NULL, NULL, NULL, NULL, NULL, 'exclusive', 1, '0.0000', '0028', 'C128', NULL, NULL, 0, '', '', '', '', '', '', NULL, 6, NULL, 0, 0, '2023-01-18 21:15:11', '2023-01-18 21:15:11'),
(29, 't7', 6, 'single', 8, NULL, NULL, NULL, NULL, NULL, 'exclusive', 1, '0.0000', '0029', 'C128', NULL, NULL, 0, '', '', '', '', '', '', NULL, 6, NULL, 0, 0, '2023-01-18 21:15:11', '2023-01-18 21:15:11'),
(30, 't8', 6, 'single', 8, NULL, NULL, NULL, NULL, NULL, 'exclusive', 1, '0.0000', '0030', 'C128', NULL, NULL, 0, '', '', '', '', '', '', NULL, 6, NULL, 0, 0, '2023-01-18 21:15:11', '2023-01-18 21:15:11'),
(31, 't9', 6, 'single', 8, NULL, NULL, NULL, NULL, NULL, 'exclusive', 1, '0.0000', '0031', 'C128', NULL, NULL, 0, '', '', '', '', '', '', NULL, 6, NULL, 0, 0, '2023-01-18 21:15:11', '2023-01-18 21:15:11'),
(32, 't10', 6, 'single', 8, NULL, NULL, NULL, NULL, NULL, 'exclusive', 1, '0.0000', '0032', 'C128', NULL, NULL, 0, '', '', '', '', '', '', NULL, 6, NULL, 0, 0, '2023-01-18 21:15:11', '2023-01-18 21:15:11'),
(33, 'nn', 6, 'single', 8, NULL, 6, NULL, NULL, NULL, 'exclusive', 1, NULL, 'm', 'C128', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, NULL, 0, 0, '2023-01-19 20:56:34', '2023-01-19 20:56:34'),
(34, 'Check1', 6, 'single', 8, NULL, 6, 11, NULL, NULL, 'exclusive', 1, NULL, '200', 'C128', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, NULL, 0, 0, '2023-01-20 12:53:22', '2023-01-20 12:53:22'),
(35, 'pepper', 7, 'single', 10, NULL, 8, 14, NULL, NULL, 'exclusive', 1, '20.0000', '0035', 'C128', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '1675143649_logo.jpg', NULL, 8, NULL, 0, 0, '2023-01-31 11:10:49', '2023-01-31 11:10:49'),
(36, 'peper1', 7, 'single', 10, NULL, 8, 14, NULL, NULL, 'exclusive', 1, '10.0000', '4796000300382', 'C128', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, NULL, 0, 0, '2023-01-31 11:27:11', '2023-01-31 11:27:11');

-- --------------------------------------------------------

--
-- Table structure for table `product_locations`
--

CREATE TABLE `product_locations` (
  `product_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_locations`
--

INSERT INTO `product_locations` (`product_id`, `location_id`) VALUES
(1, 3),
(2, 3),
(3, 3),
(4, 3),
(5, 3),
(6, 4),
(7, 5),
(8, 5),
(9, 5),
(10, 5),
(11, 5),
(12, 5),
(13, 5),
(14, 5),
(15, 5),
(16, 5),
(17, 5),
(18, 5),
(19, 5),
(20, 6),
(21, 6),
(22, 6),
(33, 6),
(34, 6),
(35, 7),
(36, 7);

-- --------------------------------------------------------

--
-- Table structure for table `product_racks`
--

CREATE TABLE `product_racks` (
  `id` int(10) UNSIGNED NOT NULL,
  `business_id` int(10) UNSIGNED NOT NULL,
  `location_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `rack` varchar(191) DEFAULT NULL,
  `row` varchar(191) DEFAULT NULL,
  `position` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_variations`
--

CREATE TABLE `product_variations` (
  `id` int(10) UNSIGNED NOT NULL,
  `variation_template_id` int(11) DEFAULT NULL,
  `name` varchar(191) NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `is_dummy` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_variations`
--

INSERT INTO `product_variations` (`id`, `variation_template_id`, `name`, `product_id`, `is_dummy`, `created_at`, `updated_at`) VALUES
(1, NULL, 'DUMMY', 1, 1, '2022-03-10 01:35:58', '2022-03-10 01:35:58'),
(2, NULL, 'DUMMY', 2, 1, '2022-03-10 01:40:21', '2022-03-10 01:40:21'),
(3, NULL, 'DUMMY', 3, 1, '2022-03-10 01:45:01', '2022-03-10 01:45:01'),
(4, NULL, 'DUMMY', 4, 1, '2022-03-10 01:48:11', '2022-03-10 01:48:11'),
(5, NULL, 'DUMMY', 5, 1, '2022-03-10 01:55:40', '2022-03-10 01:55:40'),
(6, NULL, 'DUMMY', 6, 1, '2022-03-30 10:35:26', '2022-03-30 10:35:26'),
(7, NULL, 'DUMMY', 7, 1, '2022-09-09 11:22:47', '2022-09-09 11:22:47'),
(8, NULL, 'DUMMY', 8, 1, '2022-09-09 11:24:05', '2022-09-09 11:24:05'),
(9, NULL, 'DUMMY', 9, 1, '2022-09-09 11:25:17', '2022-09-09 11:25:17'),
(10, NULL, 'DUMMY', 10, 1, '2022-09-09 11:26:07', '2022-09-09 11:26:07'),
(11, NULL, 'DUMMY', 11, 1, '2022-09-09 11:28:20', '2022-09-09 11:28:20'),
(12, NULL, 'DUMMY', 12, 1, '2022-09-09 11:30:24', '2022-09-09 11:30:24'),
(13, NULL, 'DUMMY', 13, 1, '2022-09-09 11:31:39', '2022-09-09 11:31:39'),
(14, NULL, 'DUMMY', 14, 1, '2022-09-09 11:32:44', '2022-09-09 11:32:44'),
(15, NULL, 'DUMMY', 15, 1, '2022-09-09 11:33:44', '2022-09-09 11:33:44'),
(16, NULL, 'DUMMY', 16, 1, '2022-09-09 11:34:39', '2022-09-09 11:34:39'),
(17, NULL, 'DUMMY', 17, 1, '2022-09-20 15:58:06', '2022-09-20 15:58:06'),
(18, NULL, 'DUMMY', 18, 1, '2022-09-20 16:00:58', '2022-09-20 16:00:58'),
(19, NULL, 'DUMMY', 19, 1, '2022-09-20 16:04:04', '2022-09-20 16:04:04'),
(20, NULL, 'DUMMY', 20, 1, '2023-01-17 10:29:25', '2023-01-17 10:29:25'),
(21, NULL, 'DUMMY', 21, 1, '2023-01-17 10:56:25', '2023-01-17 10:56:25'),
(22, NULL, 'DUMMY', 22, 1, '2023-01-17 16:33:39', '2023-01-17 16:33:39'),
(23, NULL, 'DUMMY', 23, 1, '2023-01-18 21:15:11', '2023-01-18 21:15:11'),
(24, NULL, 'DUMMY', 24, 1, '2023-01-18 21:15:11', '2023-01-18 21:15:11'),
(25, NULL, 'DUMMY', 25, 1, '2023-01-18 21:15:11', '2023-01-18 21:15:11'),
(26, NULL, 'DUMMY', 26, 1, '2023-01-18 21:15:11', '2023-01-18 21:15:11'),
(27, NULL, 'DUMMY', 27, 1, '2023-01-18 21:15:11', '2023-01-18 21:15:11'),
(28, NULL, 'DUMMY', 28, 1, '2023-01-18 21:15:11', '2023-01-18 21:15:11'),
(29, NULL, 'DUMMY', 29, 1, '2023-01-18 21:15:11', '2023-01-18 21:15:11'),
(30, NULL, 'DUMMY', 30, 1, '2023-01-18 21:15:11', '2023-01-18 21:15:11'),
(31, NULL, 'DUMMY', 31, 1, '2023-01-18 21:15:11', '2023-01-18 21:15:11'),
(32, NULL, 'DUMMY', 32, 1, '2023-01-18 21:15:11', '2023-01-18 21:15:11'),
(33, NULL, 'DUMMY', 33, 1, '2023-01-19 20:56:34', '2023-01-19 20:56:34'),
(34, NULL, 'DUMMY', 34, 1, '2023-01-20 12:53:22', '2023-01-20 12:53:22'),
(35, NULL, 'DUMMY', 35, 1, '2023-01-31 11:10:49', '2023-01-31 11:10:49'),
(36, NULL, 'DUMMY', 36, 1, '2023-01-31 11:27:11', '2023-01-31 11:27:11');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_lines`
--

CREATE TABLE `purchase_lines` (
  `id` int(10) UNSIGNED NOT NULL,
  `transaction_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `variation_id` int(10) UNSIGNED NOT NULL,
  `quantity` decimal(22,4) NOT NULL DEFAULT 0.0000,
  `pp_without_discount` decimal(22,4) NOT NULL DEFAULT 0.0000 COMMENT 'Purchase price before inline discounts',
  `discount_percent` decimal(5,2) NOT NULL DEFAULT 0.00 COMMENT 'Inline discount percentage',
  `purchase_price` decimal(22,4) NOT NULL,
  `purchase_price_inc_tax` decimal(22,4) NOT NULL DEFAULT 0.0000,
  `item_tax` decimal(22,4) NOT NULL COMMENT 'Tax for one quantity',
  `tax_id` int(10) UNSIGNED DEFAULT NULL,
  `quantity_sold` decimal(22,4) NOT NULL DEFAULT 0.0000 COMMENT 'Quanity sold from this purchase line',
  `quantity_adjusted` decimal(22,4) NOT NULL DEFAULT 0.0000 COMMENT 'Quanity adjusted in stock adjustment from this purchase line',
  `quantity_returned` decimal(22,4) NOT NULL DEFAULT 0.0000,
  `mfg_quantity_used` decimal(22,4) NOT NULL DEFAULT 0.0000,
  `mfg_date` date DEFAULT NULL,
  `exp_date` date DEFAULT NULL,
  `lot_number` varchar(191) DEFAULT NULL,
  `sub_unit_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchase_lines`
--

INSERT INTO `purchase_lines` (`id`, `transaction_id`, `product_id`, `variation_id`, `quantity`, `pp_without_discount`, `discount_percent`, `purchase_price`, `purchase_price_inc_tax`, `item_tax`, `tax_id`, `quantity_sold`, `quantity_adjusted`, `quantity_returned`, `mfg_quantity_used`, `mfg_date`, `exp_date`, `lot_number`, `sub_unit_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, '25.0000', '314999.0000', '0.00', '314999.0000', '314999.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '2022-03-10 01:36:24', '2022-03-10 01:36:24'),
(2, 2, 2, 2, '25.0000', '113999.0000', '0.00', '113999.0000', '113999.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '2022-03-10 01:40:30', '2022-03-10 01:40:30'),
(3, 3, 3, 3, '1000.0000', '3500.0000', '0.00', '3500.0000', '3500.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '2022-03-10 01:45:10', '2022-03-10 01:45:10'),
(4, 4, 4, 4, '100.0000', '350.0000', '0.00', '350.0000', '350.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '2022-03-10 01:48:25', '2022-03-10 01:48:25'),
(5, 5, 5, 5, '100.0000', '340.0000', '0.00', '340.0000', '340.0000', '0.0000', NULL, '3.0000', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '2022-03-10 01:55:58', '2022-03-10 01:57:40'),
(6, 7, 6, 6, '20.0000', '45.0000', '0.00', '45.0000', '45.0000', '0.0000', NULL, '7.0000', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '2022-03-30 10:35:42', '2022-03-31 10:18:21'),
(7, 14, 8, 8, '250.0000', '800.0000', '0.00', '800.0000', '800.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '2022-09-22 09:04:19', '2022-09-22 09:04:19'),
(8, 15, 20, 20, '3.0000', '76.0000', '0.00', '76.0000', '76.0000', '0.0000', NULL, '3.0000', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '2023-01-17 11:01:17', '2023-01-17 11:12:30'),
(9, 15, 21, 21, '10.0000', '80.0000', '0.00', '80.0000', '80.0000', '0.0000', NULL, '10.0000', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '2023-01-17 11:01:17', '2023-01-17 11:23:12'),
(10, 23, 20, 20, '1000.0000', '76.0000', '0.00', '76.0000', '76.0000', '0.0000', NULL, '9.0000', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '2023-01-17 11:30:19', '2023-01-19 20:51:18'),
(11, 23, 21, 21, '1000.0000', '80.0000', '0.00', '80.0000', '80.0000', '0.0000', NULL, '7.0000', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '2023-01-17 11:30:19', '2023-01-18 18:28:35'),
(12, 29, 22, 22, '2.0000', '122.0000', '0.00', '122.0000', '122.0000', '0.0000', NULL, '2.0000', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '2023-01-17 16:36:21', '2023-01-17 16:36:57'),
(13, 34, 21, 21, '2000.0000', '80.0000', '0.00', '80.0000', '80.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '2023-01-18 18:30:27', '2023-01-18 18:30:27'),
(14, 34, 20, 20, '700.0000', '76.0000', '0.00', '76.0000', '76.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '2023-01-18 18:30:27', '2023-01-18 18:30:27'),
(15, 40, 21, 21, '0.0000', '80.0000', '0.00', '80.0000', '80.0000', '0.0000', NULL, '0.0000', '0.0000', '5.0000', '0.0000', NULL, NULL, NULL, NULL, '2023-01-18 21:39:11', '2023-01-18 21:39:11'),
(16, 46, 35, 35, '100.0000', '0.5000', '0.00', '0.5000', '0.5000', '0.0000', NULL, '7.0000', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '2023-01-31 11:17:24', '2023-01-31 11:32:13'),
(17, 48, 36, 36, '100.0000', '70.0000', '15.00', '59.5000', '59.5000', '0.0000', NULL, '8.0000', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '2023-01-31 11:29:22', '2023-01-31 11:40:47');

-- --------------------------------------------------------

--
-- Table structure for table `reference_counts`
--

CREATE TABLE `reference_counts` (
  `id` int(10) UNSIGNED NOT NULL,
  `ref_type` varchar(191) NOT NULL,
  `ref_count` int(11) NOT NULL,
  `business_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reference_counts`
--

INSERT INTO `reference_counts` (`id`, `ref_type`, `ref_count`, `business_id`, `created_at`, `updated_at`) VALUES
(1, 'contacts', 1, 1, '2022-03-05 07:37:20', '2022-03-05 07:37:20'),
(2, 'business_location', 1, 1, '2022-03-05 07:37:21', '2022-03-05 07:37:21'),
(3, 'contacts', 1, 2, '2022-03-05 07:42:24', '2022-03-05 07:42:24'),
(4, 'business_location', 1, 2, '2022-03-05 07:42:24', '2022-03-05 07:42:24'),
(5, 'contacts', 1, 3, '2022-03-10 01:44:13', '2022-03-10 01:44:13'),
(6, 'business_location', 1, 3, '2022-03-10 01:44:13', '2022-03-10 01:44:13'),
(7, 'sell_payment', 1, 3, '2022-03-10 01:57:39', '2022-03-10 01:57:39'),
(8, 'contacts', 1, 4, '2022-03-30 16:50:28', '2022-03-30 16:50:28'),
(9, 'business_location', 1, 4, '2022-03-30 16:50:28', '2022-03-30 16:50:28'),
(10, 'sell_payment', 6, 4, '2022-03-30 10:38:39', '2022-03-31 10:18:21'),
(11, 'draft', 1, 4, '2022-03-31 10:17:24', '2022-03-31 10:17:24'),
(12, 'contacts', 4, 5, '2022-09-09 11:16:44', '2022-09-22 09:28:58'),
(13, 'business_location', 1, 5, '2022-09-09 11:16:45', '2022-09-09 11:16:45'),
(14, 'purchase', 1, 5, '2022-09-22 09:04:19', '2022-09-22 09:04:19'),
(15, 'purchase_payment', 2, 5, '2022-09-22 09:05:35', '2022-09-22 09:05:59'),
(16, 'contacts', 3, 6, '2023-01-14 08:38:19', '2023-01-18 18:47:09'),
(17, 'business_location', 1, 6, '2023-01-14 08:38:19', '2023-01-14 08:38:19'),
(18, 'purchase', 4, 6, '2023-01-17 11:01:17', '2023-01-18 18:30:27'),
(19, 'purchase_payment', 7, 6, '2023-01-17 11:01:17', '2023-01-18 21:39:57'),
(20, 'sell_payment', 20, 6, '2023-01-17 11:11:17', '2023-01-19 20:51:18'),
(21, 'draft', 2, 6, '2023-01-17 11:33:52', '2023-01-17 11:38:33'),
(22, 'username', 1, 6, '2023-01-17 11:59:44', '2023-01-17 11:59:44'),
(23, 'expense', 1, 6, '2023-01-17 23:29:35', '2023-01-17 23:29:35'),
(24, 'purchase_return', 1, 6, '2023-01-18 21:39:11', '2023-01-18 21:39:11'),
(25, 'contacts', 2, 7, '2023-01-30 12:56:59', '2023-01-31 11:13:54'),
(26, 'business_location', 1, 7, '2023-01-30 12:56:59', '2023-01-30 12:56:59'),
(27, 'purchase', 2, 7, '2023-01-31 11:17:24', '2023-01-31 11:29:21'),
(28, 'purchase_payment', 2, 7, '2023-01-31 11:17:24', '2023-01-31 11:29:22'),
(29, 'sell_payment', 8, 7, '2023-01-31 11:18:03', '2023-01-31 11:47:06');

-- --------------------------------------------------------

--
-- Table structure for table `res_product_modifier_sets`
--

CREATE TABLE `res_product_modifier_sets` (
  `modifier_set_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL COMMENT 'Table use to store the modifier sets applicable for a product'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `res_tables`
--

CREATE TABLE `res_tables` (
  `id` int(10) UNSIGNED NOT NULL,
  `business_id` int(10) UNSIGNED NOT NULL,
  `location_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` text DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `guard_name` varchar(191) NOT NULL,
  `business_id` int(10) UNSIGNED NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0,
  `is_service_staff` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `business_id`, `is_default`, `is_service_staff`, `created_at`, `updated_at`) VALUES
(1, 'Admin#1', 'web', 1, 1, 0, '2022-03-05 07:37:20', '2022-03-05 07:37:20'),
(2, 'Cashier#1', 'web', 1, 0, 0, '2022-03-05 07:37:20', '2022-03-05 07:37:20'),
(3, 'Admin#2', 'web', 2, 1, 0, '2022-03-05 07:42:24', '2022-03-05 07:42:24'),
(4, 'Cashier#2', 'web', 2, 0, 0, '2022-03-05 07:42:24', '2022-03-05 07:42:24'),
(5, 'Admin#3', 'web', 3, 1, 0, '2022-03-10 01:44:13', '2022-03-10 01:44:13'),
(6, 'Cashier#3', 'web', 3, 0, 0, '2022-03-10 01:44:13', '2022-03-10 01:44:13'),
(7, 'Admin#4', 'web', 4, 1, 0, '2022-03-30 16:50:28', '2022-03-30 16:50:28'),
(8, 'Cashier#4', 'web', 4, 0, 0, '2022-03-30 16:50:28', '2022-03-30 16:50:28'),
(9, 'Admin#5', 'web', 5, 1, 0, '2022-09-09 11:16:44', '2022-09-09 11:16:44'),
(10, 'Cashier#5', 'web', 5, 0, 0, '2022-09-09 11:16:44', '2022-09-09 11:16:44'),
(11, 'Admin#6', 'web', 6, 1, 0, '2023-01-14 08:38:19', '2023-01-14 08:38:19'),
(12, 'Cashier#6', 'web', 6, 0, 0, '2023-01-14 08:38:19', '2023-01-14 08:38:19'),
(13, 'Admin#7', 'web', 7, 1, 0, '2023-01-30 12:56:59', '2023-01-30 12:56:59'),
(14, 'Cashier#7', 'web', 7, 0, 0, '2023-01-30 12:56:59', '2023-01-30 12:56:59');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(45, 2),
(45, 4),
(45, 6),
(45, 8),
(45, 10),
(45, 12),
(45, 14),
(46, 2),
(46, 4),
(46, 6),
(46, 8),
(46, 10),
(46, 12),
(46, 14),
(47, 2),
(47, 4),
(47, 6),
(47, 8),
(47, 10),
(47, 12),
(47, 14),
(48, 2),
(48, 4),
(48, 6),
(48, 8),
(48, 10),
(48, 12),
(48, 14),
(77, 2),
(77, 4),
(77, 6),
(77, 8),
(77, 10),
(77, 12),
(77, 14);

-- --------------------------------------------------------

--
-- Table structure for table `selling_price_groups`
--

CREATE TABLE `selling_price_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` text DEFAULT NULL,
  `business_id` int(10) UNSIGNED NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sell_line_warranties`
--

CREATE TABLE `sell_line_warranties` (
  `sell_line_id` int(11) NOT NULL,
  `warranty_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(191) NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` text NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stock_adjustments_temp`
--

CREATE TABLE `stock_adjustments_temp` (
  `id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stock_adjustment_lines`
--

CREATE TABLE `stock_adjustment_lines` (
  `id` int(10) UNSIGNED NOT NULL,
  `transaction_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `variation_id` int(10) UNSIGNED NOT NULL,
  `quantity` decimal(22,4) NOT NULL,
  `unit_price` decimal(22,4) DEFAULT NULL COMMENT 'Last purchase unit price',
  `removed_purchase_line` int(11) DEFAULT NULL,
  `lot_no_line_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system`
--

CREATE TABLE `system` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) NOT NULL,
  `value` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `system`
--

INSERT INTO `system` (`id`, `key`, `value`) VALUES
(1, 'db_version', '3.6'),
(2, 'default_business_active_status', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tax_rates`
--

CREATE TABLE `tax_rates` (
  `id` int(10) UNSIGNED NOT NULL,
  `business_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `amount` double(22,4) NOT NULL,
  `is_tax_group` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(10) UNSIGNED NOT NULL,
  `business_id` int(10) UNSIGNED NOT NULL,
  `location_id` int(10) UNSIGNED DEFAULT NULL,
  `res_table_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'fields to restaurant module',
  `res_waiter_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'fields to restaurant module',
  `res_order_status` enum('received','cooked','served') DEFAULT NULL,
  `type` varchar(191) DEFAULT NULL,
  `sub_type` varchar(20) DEFAULT NULL,
  `status` varchar(191) NOT NULL,
  `is_quotation` tinyint(1) NOT NULL DEFAULT 0,
  `payment_status` enum('paid','due','partial') DEFAULT NULL,
  `adjustment_type` enum('normal','abnormal') DEFAULT NULL,
  `contact_id` int(11) UNSIGNED DEFAULT NULL,
  `customer_group_id` int(11) DEFAULT NULL COMMENT 'used to add customer group while selling',
  `invoice_no` varchar(191) DEFAULT NULL,
  `ref_no` varchar(191) DEFAULT NULL,
  `subscription_no` varchar(191) DEFAULT NULL,
  `subscription_repeat_on` varchar(191) DEFAULT NULL,
  `transaction_date` datetime NOT NULL,
  `total_before_tax` decimal(22,4) NOT NULL DEFAULT 0.0000 COMMENT 'Total before the purchase/invoice tax, this includeds the indivisual product tax',
  `tax_id` int(10) UNSIGNED DEFAULT NULL,
  `tax_amount` decimal(22,4) NOT NULL DEFAULT 0.0000,
  `discount_type` enum('fixed','percentage') DEFAULT NULL,
  `discount_amount` decimal(22,4) DEFAULT 0.0000,
  `rp_redeemed` int(11) NOT NULL DEFAULT 0 COMMENT 'rp is the short form of reward points',
  `rp_redeemed_amount` decimal(22,4) NOT NULL DEFAULT 0.0000 COMMENT 'rp is the short form of reward points',
  `shipping_details` varchar(191) DEFAULT NULL,
  `shipping_address` text DEFAULT NULL,
  `shipping_status` varchar(191) DEFAULT NULL,
  `delivered_to` varchar(191) DEFAULT NULL,
  `shipping_charges` decimal(22,4) NOT NULL DEFAULT 0.0000,
  `additional_notes` text DEFAULT NULL,
  `staff_note` text DEFAULT NULL,
  `round_off_amount` decimal(22,4) NOT NULL DEFAULT 0.0000 COMMENT 'Difference of rounded total and actual total',
  `final_total` decimal(22,4) NOT NULL DEFAULT 0.0000,
  `expense_category_id` int(10) UNSIGNED DEFAULT NULL,
  `expense_for` int(10) UNSIGNED DEFAULT NULL,
  `commission_agent` int(11) DEFAULT NULL,
  `document` varchar(191) DEFAULT NULL,
  `is_direct_sale` tinyint(1) NOT NULL DEFAULT 0,
  `is_suspend` tinyint(1) NOT NULL DEFAULT 0,
  `exchange_rate` decimal(20,3) NOT NULL DEFAULT 1.000,
  `total_amount_recovered` decimal(22,4) DEFAULT NULL COMMENT 'Used for stock adjustment.',
  `transfer_parent_id` int(11) DEFAULT NULL,
  `return_parent_id` int(11) DEFAULT NULL,
  `opening_stock_product_id` int(11) DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `import_batch` int(11) DEFAULT NULL,
  `import_time` datetime DEFAULT NULL,
  `types_of_service_id` int(11) DEFAULT NULL,
  `packing_charge` decimal(22,4) DEFAULT NULL,
  `packing_charge_type` enum('fixed','percent') DEFAULT NULL,
  `service_custom_field_1` text DEFAULT NULL,
  `service_custom_field_2` text DEFAULT NULL,
  `service_custom_field_3` text DEFAULT NULL,
  `service_custom_field_4` text DEFAULT NULL,
  `is_created_from_api` tinyint(1) NOT NULL DEFAULT 0,
  `rp_earned` int(11) NOT NULL DEFAULT 0 COMMENT 'rp is the short form of reward points',
  `order_addresses` text DEFAULT NULL,
  `is_recurring` tinyint(1) NOT NULL DEFAULT 0,
  `recur_interval` double(22,4) DEFAULT NULL,
  `recur_interval_type` enum('days','months','years') DEFAULT NULL,
  `recur_repetitions` int(11) DEFAULT NULL,
  `recur_stopped_on` datetime DEFAULT NULL,
  `recur_parent_id` int(11) DEFAULT NULL,
  `invoice_token` varchar(191) DEFAULT NULL,
  `pay_term_number` int(11) DEFAULT NULL,
  `pay_term_type` enum('days','months') DEFAULT NULL,
  `selling_price_group_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `business_id`, `location_id`, `res_table_id`, `res_waiter_id`, `res_order_status`, `type`, `sub_type`, `status`, `is_quotation`, `payment_status`, `adjustment_type`, `contact_id`, `customer_group_id`, `invoice_no`, `ref_no`, `subscription_no`, `subscription_repeat_on`, `transaction_date`, `total_before_tax`, `tax_id`, `tax_amount`, `discount_type`, `discount_amount`, `rp_redeemed`, `rp_redeemed_amount`, `shipping_details`, `shipping_address`, `shipping_status`, `delivered_to`, `shipping_charges`, `additional_notes`, `staff_note`, `round_off_amount`, `final_total`, `expense_category_id`, `expense_for`, `commission_agent`, `document`, `is_direct_sale`, `is_suspend`, `exchange_rate`, `total_amount_recovered`, `transfer_parent_id`, `return_parent_id`, `opening_stock_product_id`, `created_by`, `import_batch`, `import_time`, `types_of_service_id`, `packing_charge`, `packing_charge_type`, `service_custom_field_1`, `service_custom_field_2`, `service_custom_field_3`, `service_custom_field_4`, `is_created_from_api`, `rp_earned`, `order_addresses`, `is_recurring`, `recur_interval`, `recur_interval_type`, `recur_repetitions`, `recur_stopped_on`, `recur_parent_id`, `invoice_token`, `pay_term_number`, `pay_term_type`, `selling_price_group_id`, `created_at`, `updated_at`) VALUES
(1, 3, 3, NULL, NULL, NULL, 'opening_stock', NULL, 'received', 0, 'paid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-01 06:36:24', '7874975.0000', NULL, '0.0000', NULL, '0.0000', 0, '0.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, '0.0000', '7874975.0000', NULL, NULL, NULL, NULL, 0, 0, '1.000', NULL, NULL, NULL, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-10 01:36:24', '2022-03-10 01:36:24'),
(2, 3, 3, NULL, NULL, NULL, 'opening_stock', NULL, 'received', 0, 'paid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-01 06:40:30', '2849975.0000', NULL, '0.0000', NULL, '0.0000', 0, '0.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, '0.0000', '2849975.0000', NULL, NULL, NULL, NULL, 0, 0, '1.000', NULL, NULL, NULL, 2, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-10 01:40:30', '2022-03-10 01:40:30'),
(3, 3, 3, NULL, NULL, NULL, 'opening_stock', NULL, 'received', 0, 'paid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-01 06:45:10', '3500000.0000', NULL, '0.0000', NULL, '0.0000', 0, '0.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, '0.0000', '3500000.0000', NULL, NULL, NULL, NULL, 0, 0, '1.000', NULL, NULL, NULL, 3, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-10 01:45:10', '2022-03-10 01:45:10'),
(4, 3, 3, NULL, NULL, NULL, 'opening_stock', NULL, 'received', 0, 'paid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-01 06:48:25', '35000.0000', NULL, '0.0000', NULL, '0.0000', 0, '0.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, '0.0000', '35000.0000', NULL, NULL, NULL, NULL, 0, 0, '1.000', NULL, NULL, NULL, 4, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-10 01:48:25', '2022-03-10 01:48:25'),
(5, 3, 3, NULL, NULL, NULL, 'opening_stock', NULL, 'received', 0, 'paid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-01 06:55:58', '34000.0000', NULL, '0.0000', NULL, '0.0000', 0, '0.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, '0.0000', '34000.0000', NULL, NULL, NULL, NULL, 0, 0, '1.000', NULL, NULL, NULL, 5, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-10 01:55:58', '2022-03-10 01:55:58'),
(6, 3, 3, NULL, NULL, NULL, 'sell', NULL, 'final', 0, 'paid', NULL, 3, NULL, '0001', '', NULL, NULL, '2022-03-10 06:57:39', '1275.0000', NULL, '0.0000', 'percentage', '0.0000', 0, '0.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, '0.0000', '1275.0000', NULL, NULL, NULL, NULL, 0, 0, '1.000', NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 1.0000, 'days', 0, NULL, NULL, NULL, NULL, NULL, 0, '2022-03-10 01:57:39', '2022-03-10 01:57:40'),
(7, 4, 4, NULL, NULL, NULL, 'opening_stock', NULL, 'received', 0, 'paid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-01 15:35:42', '900.0000', NULL, '0.0000', NULL, '0.0000', 0, '0.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, '0.0000', '900.0000', NULL, NULL, NULL, NULL, 0, 0, '1.000', NULL, NULL, NULL, 6, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-30 10:35:42', '2022-03-30 10:35:42'),
(8, 4, 4, NULL, NULL, NULL, 'sell', NULL, 'final', 0, 'paid', NULL, 4, NULL, '0001', '', NULL, NULL, '2022-03-30 15:38:39', '112.5000', NULL, '0.0000', 'percentage', '0.0000', 0, '0.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, '0.0000', '112.5000', NULL, NULL, NULL, NULL, 0, 0, '1.000', NULL, NULL, NULL, NULL, 4, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 1.0000, 'days', 0, NULL, NULL, NULL, NULL, NULL, 0, '2022-03-30 10:38:39', '2022-03-30 10:38:39'),
(9, 4, 4, NULL, NULL, NULL, 'sell', NULL, 'final', 0, 'paid', NULL, 4, NULL, '0002', '', NULL, NULL, '2022-03-30 15:39:22', '56.2500', NULL, '0.0000', 'percentage', '0.0000', 0, '0.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, '0.0000', '56.2500', NULL, NULL, NULL, NULL, 0, 0, '1.000', NULL, NULL, NULL, NULL, 4, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 1.0000, 'days', 0, NULL, NULL, NULL, NULL, NULL, 0, '2022-03-30 10:39:22', '2022-03-30 10:39:22'),
(10, 4, 4, NULL, NULL, NULL, 'sell', NULL, 'final', 0, 'paid', NULL, 4, NULL, '0003', '', NULL, NULL, '2022-03-31 15:11:05', '112.5000', NULL, '0.0000', 'percentage', '0.0000', 0, '0.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, '0.0000', '112.5000', NULL, NULL, NULL, NULL, 0, 0, '1.000', NULL, NULL, NULL, NULL, 4, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 1.0000, 'days', 0, NULL, NULL, NULL, NULL, NULL, 0, '2022-03-31 10:11:05', '2022-03-31 10:11:05'),
(11, 4, 4, NULL, NULL, NULL, 'sell', NULL, 'final', 0, 'paid', NULL, 4, NULL, '0004', '', NULL, NULL, '2022-03-31 15:17:13', '56.2500', NULL, '0.0000', 'percentage', '0.0000', 0, '0.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, '0.0000', '56.2500', NULL, NULL, NULL, NULL, 0, 0, '1.000', NULL, NULL, NULL, NULL, 4, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 1.0000, 'days', 0, NULL, NULL, NULL, NULL, NULL, 0, '2022-03-31 10:17:13', '2022-03-31 10:17:13'),
(12, 4, 4, NULL, NULL, NULL, 'sell', NULL, 'draft', 1, NULL, NULL, 4, NULL, '2022/0001', '', NULL, NULL, '2022-03-31 15:17:24', '56.2500', NULL, '0.0000', 'percentage', '0.0000', 0, '0.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, '0.0000', '56.2500', NULL, NULL, NULL, NULL, 0, 0, '1.000', NULL, NULL, NULL, NULL, 4, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 1.0000, 'days', 0, NULL, NULL, NULL, NULL, NULL, 0, '2022-03-31 10:17:24', '2022-03-31 10:17:24'),
(13, 4, 4, NULL, NULL, NULL, 'sell', NULL, 'final', 0, 'paid', NULL, 4, NULL, '0005', '', NULL, NULL, '2022-03-31 15:18:21', '56.2500', NULL, '0.0000', 'percentage', '0.0000', 0, '0.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, '0.0000', '56.2500', NULL, NULL, NULL, NULL, 0, 0, '1.000', NULL, NULL, NULL, NULL, 4, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 1.0000, 'days', 0, NULL, NULL, NULL, NULL, NULL, 0, '2022-03-31 10:18:21', '2022-03-31 10:18:21'),
(14, 5, 5, NULL, NULL, NULL, 'purchase', NULL, 'received', 0, 'paid', NULL, 7, NULL, NULL, 'PO2022/0001', NULL, NULL, '2022-09-22 10:01:00', '200000.0000', NULL, '0.0000', NULL, '0.0000', 0, '0.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, '0.0000', '200000.0000', NULL, NULL, NULL, NULL, 0, 0, '1.000', NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-22 09:04:19', '2022-09-22 09:05:59'),
(15, 6, 6, NULL, NULL, NULL, 'purchase', NULL, 'received', 0, 'paid', NULL, 10, NULL, NULL, 'PO2023/0001', NULL, NULL, '2023-01-17 10:55:00', '1028.0000', NULL, '0.0000', NULL, '0.0000', 0, '0.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, '0.0000', '1028.0000', NULL, NULL, NULL, NULL, 0, 0, '1.000', NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-17 11:01:17', '2023-01-18 18:55:48'),
(16, 6, 6, NULL, NULL, NULL, 'sell', NULL, 'final', 0, 'paid', NULL, 9, NULL, '0001', '', NULL, NULL, '2023-01-17 11:11:17', '580.0000', NULL, '0.0000', 'percentage', '0.0000', 0, '0.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, '0.0000', '580.0000', NULL, NULL, NULL, NULL, 0, 0, '1.000', NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 1.0000, 'days', 0, NULL, NULL, NULL, NULL, NULL, 0, '2023-01-17 11:11:17', '2023-01-17 11:11:17'),
(17, 6, 6, NULL, NULL, NULL, 'sell', NULL, 'final', 0, 'paid', NULL, 9, NULL, '0002', '', NULL, NULL, '2023-01-17 11:12:30', '290.0000', NULL, '0.0000', 'percentage', '0.0000', 0, '0.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, '0.0000', '290.0000', NULL, NULL, NULL, NULL, 0, 0, '1.000', NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 1.0000, 'days', 0, NULL, NULL, NULL, NULL, NULL, 0, '2023-01-17 11:12:30', '2023-01-17 11:12:30'),
(18, 6, 6, NULL, NULL, NULL, 'sell', NULL, 'final', 0, 'paid', NULL, 9, NULL, '0003', '', NULL, NULL, '2023-01-17 11:16:03', '420.0000', NULL, '0.0000', 'percentage', '0.0000', 0, '0.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, '0.0000', '420.0000', NULL, NULL, NULL, NULL, 0, 0, '1.000', NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 1.0000, 'days', 0, NULL, NULL, NULL, NULL, NULL, 0, '2023-01-17 11:16:03', '2023-01-17 11:16:03'),
(19, 6, 6, NULL, NULL, NULL, 'sell', NULL, 'final', 0, 'partial', NULL, 9, NULL, '0004', '', NULL, NULL, '2023-01-17 11:16:55', '140.0000', NULL, '0.0000', 'percentage', '0.0000', 0, '0.0000', NULL, NULL, NULL, NULL, '0.0000', 'damge', NULL, '0.0000', '140.0000', NULL, NULL, NULL, NULL, 0, 1, '1.000', NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 1.0000, 'days', 0, NULL, NULL, NULL, NULL, NULL, 0, '2023-01-17 11:16:55', '2023-01-17 12:10:20'),
(20, 6, 6, NULL, NULL, NULL, 'sell', NULL, 'final', 0, 'paid', NULL, 9, NULL, '0005', '', NULL, NULL, '2023-01-17 11:19:30', '140.0000', NULL, '0.0000', 'percentage', '0.0000', 0, '0.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, '0.0000', '140.0000', NULL, NULL, NULL, NULL, 0, 0, '1.000', NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 1.0000, 'days', 0, NULL, NULL, NULL, NULL, NULL, 0, '2023-01-17 11:19:30', '2023-01-17 11:19:30'),
(21, 6, 6, NULL, NULL, NULL, 'sell', NULL, 'final', 0, 'paid', NULL, 9, NULL, '0006', '', NULL, NULL, '2023-01-17 11:20:17', '140.0000', NULL, '0.0000', 'percentage', '0.0000', 0, '0.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, '0.0000', '140.0000', NULL, NULL, NULL, NULL, 0, 0, '1.000', NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 1.0000, 'days', 0, NULL, NULL, NULL, NULL, NULL, 0, '2023-01-17 11:20:17', '2023-01-17 11:20:17'),
(22, 6, 6, NULL, NULL, NULL, 'sell', NULL, 'final', 0, 'paid', NULL, 9, NULL, '0007', '', NULL, NULL, '2023-01-17 11:23:12', '140.0000', NULL, '0.0000', 'fixed', '10.0000', 0, '0.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, '0.0000', '130.0000', NULL, NULL, NULL, NULL, 0, 0, '1.000', NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 1.0000, 'days', 0, NULL, NULL, NULL, NULL, NULL, 0, '2023-01-17 11:23:12', '2023-01-17 11:23:12'),
(23, 6, 6, NULL, NULL, NULL, 'purchase', NULL, 'received', 0, 'paid', NULL, 10, NULL, NULL, '100260', NULL, NULL, '2023-01-17 11:29:00', '156000.0000', NULL, '0.0000', NULL, '0.0000', 0, '0.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, '0.0000', '156000.0000', NULL, NULL, NULL, NULL, 0, 0, '1.000', NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'months', NULL, '2023-01-17 11:30:19', '2023-01-17 11:30:59'),
(24, 6, 6, NULL, NULL, NULL, 'sell', NULL, 'final', 0, 'paid', NULL, 9, NULL, '0008', '', NULL, NULL, '2023-01-17 11:32:58', '870.0000', NULL, '0.0000', 'percentage', '0.0000', 0, '0.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, '0.0000', '870.0000', NULL, NULL, NULL, NULL, 0, 0, '1.000', NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 1.0000, 'days', 0, NULL, NULL, NULL, NULL, NULL, 0, '2023-01-17 11:32:58', '2023-01-17 11:32:58'),
(25, 6, 6, NULL, NULL, NULL, 'sell', NULL, 'draft', 1, NULL, NULL, 9, NULL, '2023/0001', '', NULL, NULL, '2023-01-17 11:33:52', '150.0000', NULL, '0.0000', 'percentage', '0.0000', 0, '0.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, '0.0000', '150.0000', NULL, NULL, NULL, NULL, 0, 0, '1.000', NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 1.0000, 'days', 0, NULL, NULL, NULL, NULL, NULL, 0, '2023-01-17 11:33:52', '2023-01-17 11:33:52'),
(26, 6, 6, NULL, NULL, NULL, 'sell', NULL, 'final', 0, 'paid', NULL, 9, NULL, '0009', '', NULL, NULL, '2023-01-17 11:34:21', '140.0000', NULL, '0.0000', 'percentage', '0.0000', 0, '0.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, '0.0000', '140.0000', NULL, NULL, NULL, NULL, 0, 0, '1.000', NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 1.0000, 'days', 0, NULL, NULL, NULL, NULL, NULL, 0, '2023-01-17 11:34:21', '2023-01-17 11:34:21'),
(27, 6, 6, NULL, NULL, NULL, 'sell', NULL, 'draft', 0, NULL, NULL, 9, NULL, '2023/0002', '', NULL, NULL, '2023-01-17 11:38:33', '148.5000', NULL, '0.0000', 'percentage', '0.0000', 0, '0.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, '0.0000', '148.5000', NULL, NULL, NULL, NULL, 0, 0, '1.000', NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 1.0000, 'days', 0, NULL, NULL, NULL, NULL, NULL, 0, '2023-01-17 11:38:33', '2023-01-17 11:38:33'),
(28, 6, 6, NULL, NULL, NULL, 'sell', NULL, 'final', 0, 'paid', NULL, 9, NULL, '0010', '', NULL, NULL, '2023-01-17 16:31:18', '140.0000', NULL, '0.0000', 'percentage', '0.0000', 0, '0.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, '0.0000', '140.0000', NULL, NULL, NULL, NULL, 0, 0, '1.000', NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 1.0000, 'days', 0, NULL, NULL, NULL, NULL, NULL, 0, '2023-01-17 16:31:18', '2023-01-17 16:31:18'),
(29, 6, 6, NULL, NULL, NULL, 'purchase', NULL, 'received', 0, 'paid', NULL, 10, NULL, NULL, '100260t', NULL, NULL, '2023-01-17 16:35:00', '244.0000', NULL, '0.0000', NULL, '0.0000', 0, '0.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, '0.0000', '244.0000', NULL, NULL, NULL, NULL, 0, 0, '1.000', NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-17 16:36:21', '2023-01-18 18:55:34'),
(30, 6, 6, NULL, NULL, NULL, 'sell', NULL, 'final', 0, 'paid', NULL, 9, NULL, '0011', '', NULL, NULL, '2023-01-17 16:36:57', '305.0000', NULL, '0.0000', 'percentage', '0.0000', 0, '0.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, '0.0000', '305.0000', NULL, NULL, NULL, NULL, 0, 0, '1.000', NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 1.0000, 'days', 0, NULL, NULL, NULL, NULL, NULL, 0, '2023-01-17 16:36:57', '2023-01-17 16:36:57'),
(31, 6, 6, NULL, NULL, NULL, 'sell', NULL, 'final', 0, 'paid', NULL, 9, NULL, '0012', '', NULL, NULL, '2023-01-17 16:49:16', '140.0000', NULL, '0.0000', 'percentage', '0.0000', 0, '0.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, '0.0000', '140.0000', NULL, NULL, NULL, NULL, 0, 0, '1.000', NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 1.0000, 'days', 0, NULL, NULL, NULL, NULL, NULL, 0, '2023-01-17 16:49:16', '2023-01-17 16:49:16'),
(32, 6, 6, NULL, NULL, NULL, 'expense', NULL, 'final', 0, 'paid', NULL, 10, NULL, NULL, 'EP2023/0001', NULL, NULL, '2023-01-17 23:28:00', '1000.0000', NULL, '0.0000', NULL, '0.0000', 0, '0.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, '0.0000', '1000.0000', 1, 7, NULL, NULL, 0, 0, '1.000', NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 1, 10.0000, 'days', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-17 23:29:35', '2023-01-17 23:29:35'),
(33, 6, 6, NULL, NULL, NULL, 'sell', NULL, 'final', 0, 'paid', NULL, 9, NULL, '0013', '', NULL, NULL, '2023-01-18 18:28:35', '290.0000', NULL, '0.0000', 'percentage', '0.0000', 0, '0.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, '0.0000', '290.0000', NULL, NULL, NULL, NULL, 0, 0, '1.000', NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 1.0000, 'days', 0, NULL, NULL, NULL, NULL, NULL, 0, '2023-01-18 18:28:35', '2023-01-18 18:28:35'),
(34, 6, 6, NULL, NULL, NULL, 'purchase', NULL, 'received', 0, 'paid', NULL, 10, NULL, NULL, '100260tgg', NULL, NULL, '2023-01-18 18:29:00', '213200.0000', NULL, '0.0000', NULL, '0.0000', 0, '0.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, '0.0000', '213200.0000', NULL, NULL, NULL, NULL, 0, 0, '1.000', NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-18 18:30:27', '2023-01-18 18:55:21'),
(35, 6, 6, NULL, NULL, NULL, 'sell', NULL, 'final', 0, 'paid', NULL, 9, NULL, '0014', '', NULL, NULL, '2023-01-18 18:33:43', '150.0000', NULL, '0.0000', 'percentage', '0.0000', 0, '0.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, '0.0000', '150.0000', NULL, NULL, NULL, NULL, 0, 0, '1.000', NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 1.0000, 'days', 0, NULL, NULL, NULL, NULL, NULL, 0, '2023-01-18 18:33:43', '2023-01-18 18:33:43'),
(36, 6, 6, NULL, NULL, NULL, 'sell', NULL, 'final', 0, 'paid', NULL, 9, NULL, '0015', '', NULL, NULL, '2023-01-18 18:34:14', '300.0000', NULL, '0.0000', 'percentage', '0.0000', 0, '0.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, '0.0000', '300.0000', NULL, NULL, NULL, NULL, 0, 0, '1.000', NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 1.0000, 'days', 0, NULL, NULL, NULL, NULL, NULL, 0, '2023-01-18 18:34:14', '2023-01-18 18:34:14'),
(40, 6, 6, NULL, NULL, NULL, 'purchase_return', NULL, '', 0, 'paid', NULL, 10, NULL, NULL, '100260tgg', NULL, NULL, '2023-01-18 21:38:00', '400.0000', NULL, '0.0000', NULL, '0.0000', 0, '0.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, '0.0000', '400.0000', NULL, NULL, NULL, NULL, 0, 0, '1.000', NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-18 21:39:11', '2023-01-18 21:39:57'),
(44, 6, 6, NULL, NULL, NULL, 'sell', NULL, 'final', 0, 'paid', NULL, 9, NULL, '0016', '', NULL, NULL, '2023-01-19 20:46:28', '150.0000', NULL, '0.0000', 'percentage', '0.0000', 0, '0.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, '0.0000', '150.0000', NULL, NULL, NULL, NULL, 0, 0, '1.000', NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 1.0000, 'days', 0, NULL, NULL, NULL, NULL, NULL, 0, '2023-01-19 20:46:28', '2023-01-19 20:46:28'),
(45, 6, 6, NULL, NULL, NULL, 'sell', NULL, 'final', 0, 'paid', NULL, 9, NULL, '0017', '', NULL, NULL, '2023-01-19 20:51:18', '150.0000', NULL, '0.0000', 'percentage', '0.0000', 0, '0.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, '0.0000', '150.0000', NULL, NULL, NULL, NULL, 0, 0, '1.000', NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 1.0000, 'days', 0, NULL, NULL, NULL, NULL, NULL, 0, '2023-01-19 20:51:18', '2023-01-19 20:51:18'),
(46, 7, 7, NULL, NULL, NULL, 'purchase', NULL, 'received', 0, 'paid', NULL, 13, NULL, NULL, '10000', NULL, NULL, '2023-01-31 11:14:00', '50.0000', NULL, '0.0000', NULL, '0.0000', 0, '0.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, '0.0000', '50.0000', NULL, NULL, NULL, NULL, 0, 0, '1.000', NULL, NULL, NULL, NULL, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-31 11:17:24', '2023-01-31 11:17:24'),
(47, 7, 7, NULL, NULL, NULL, 'sell', NULL, 'final', 0, 'paid', NULL, 12, NULL, '0001', '', NULL, NULL, '2023-01-31 11:18:03', '3.7800', NULL, '0.0000', 'percentage', '0.0000', 0, '0.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, '0.0000', '3.7800', NULL, NULL, NULL, NULL, 0, 0, '1.000', NULL, NULL, NULL, NULL, 8, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 1.0000, 'days', 0, NULL, NULL, NULL, NULL, NULL, 0, '2023-01-31 11:18:03', '2023-01-31 11:18:03'),
(48, 7, 7, NULL, NULL, NULL, 'purchase', NULL, 'received', 0, 'paid', NULL, 13, NULL, NULL, '1000011', NULL, NULL, '2023-01-31 11:27:00', '5950.0000', NULL, '0.0000', NULL, '0.0000', 0, '0.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, '0.0000', '5950.0000', NULL, NULL, NULL, NULL, 0, 0, '1.000', NULL, NULL, NULL, NULL, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-31 11:29:21', '2023-01-31 11:29:22'),
(49, 7, 7, NULL, NULL, NULL, 'sell', NULL, 'final', 0, 'paid', NULL, 12, NULL, '0002', '', NULL, NULL, '2023-01-31 11:30:39', '350.0000', NULL, '0.0000', 'percentage', '0.0000', 0, '0.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, '0.0000', '350.0000', NULL, NULL, NULL, NULL, 0, 0, '1.000', NULL, NULL, NULL, NULL, 8, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 1.0000, 'days', 0, NULL, NULL, NULL, NULL, NULL, 0, '2023-01-31 11:30:39', '2023-01-31 11:30:39'),
(50, 7, 7, NULL, NULL, NULL, 'sell', NULL, 'final', 0, 'paid', NULL, 12, NULL, '0003', '', NULL, NULL, '2023-01-31 11:32:13', '70.6300', NULL, '0.0000', 'percentage', '0.0000', 0, '0.0000', NULL, NULL, NULL, NULL, '0.0000', 'c', NULL, '0.0000', '70.6300', NULL, NULL, NULL, NULL, 0, 0, '1.000', NULL, NULL, NULL, NULL, 8, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 1.0000, 'days', 0, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-31 11:32:13', '2023-01-31 11:47:06'),
(51, 7, 7, NULL, NULL, NULL, 'sell', NULL, 'final', 0, 'paid', NULL, 12, NULL, '0004', '', NULL, NULL, '2023-01-31 11:40:47', '140.0000', NULL, '0.0000', 'percentage', '0.0000', 0, '0.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, '0.0000', '140.0000', NULL, NULL, NULL, NULL, 0, 0, '1.000', NULL, NULL, NULL, NULL, 8, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 1.0000, 'days', 0, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-31 11:40:47', '2023-01-31 11:42:52');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_payments`
--

CREATE TABLE `transaction_payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `transaction_id` int(11) UNSIGNED DEFAULT NULL,
  `business_id` int(11) DEFAULT NULL,
  `is_return` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Used during sales to return the change',
  `amount` decimal(22,4) NOT NULL DEFAULT 0.0000,
  `method` varchar(191) DEFAULT NULL,
  `transaction_no` varchar(191) DEFAULT NULL,
  `card_transaction_number` varchar(191) DEFAULT NULL,
  `card_number` varchar(191) DEFAULT NULL,
  `card_type` varchar(191) DEFAULT NULL,
  `card_holder_name` varchar(191) DEFAULT NULL,
  `card_month` varchar(191) DEFAULT NULL,
  `card_year` varchar(191) DEFAULT NULL,
  `card_security` varchar(5) DEFAULT NULL,
  `cheque_number` varchar(191) DEFAULT NULL,
  `bank_account_number` varchar(191) DEFAULT NULL,
  `paid_on` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `is_advance` tinyint(1) NOT NULL DEFAULT 0,
  `payment_for` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `note` varchar(191) DEFAULT NULL,
  `document` varchar(191) DEFAULT NULL,
  `payment_ref_no` varchar(191) DEFAULT NULL,
  `account_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transaction_payments`
--

INSERT INTO `transaction_payments` (`id`, `transaction_id`, `business_id`, `is_return`, `amount`, `method`, `transaction_no`, `card_transaction_number`, `card_number`, `card_type`, `card_holder_name`, `card_month`, `card_year`, `card_security`, `cheque_number`, `bank_account_number`, `paid_on`, `created_by`, `is_advance`, `payment_for`, `parent_id`, `note`, `document`, `payment_ref_no`, `account_id`, `created_at`, `updated_at`) VALUES
(1, 6, 3, 0, '1275.0000', 'cash', NULL, NULL, NULL, 'credit', NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-10 06:57:39', 3, 0, 3, NULL, NULL, NULL, 'SP2022/0001', NULL, '2022-03-10 01:57:39', '2022-03-10 01:57:39'),
(2, 8, 4, 0, '112.5000', 'card', NULL, NULL, NULL, 'visa', NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-30 15:38:39', 4, 0, 4, NULL, NULL, NULL, 'SP2022/0001', NULL, '2022-03-30 10:38:39', '2022-03-30 10:38:39'),
(3, 9, 4, 0, '56.2500', 'cash', NULL, NULL, NULL, 'credit', NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-30 15:39:22', 4, 0, 4, NULL, NULL, NULL, 'SP2022/0002', NULL, '2022-03-30 10:39:22', '2022-03-30 10:39:22'),
(4, 10, 4, 0, '112.5000', 'cash', NULL, NULL, NULL, 'credit', NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-31 15:11:05', 4, 0, 4, NULL, NULL, NULL, 'SP2022/0003', NULL, '2022-03-31 10:11:05', '2022-03-31 10:11:05'),
(5, 11, 4, 0, '56.2500', 'card', NULL, NULL, NULL, 'visa', NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-31 15:17:13', 4, 0, 4, NULL, NULL, NULL, 'SP2022/0004', NULL, '2022-03-31 10:17:13', '2022-03-31 10:17:13'),
(6, 13, 4, 0, '5.0000', 'cash', NULL, NULL, NULL, 'credit', NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-31 15:18:21', 4, 0, 4, NULL, NULL, NULL, 'SP2022/0005', NULL, '2022-03-31 10:18:21', '2022-03-31 10:18:21'),
(7, 13, 4, 0, '51.2500', 'bank_transfer', NULL, NULL, NULL, 'credit', NULL, NULL, NULL, NULL, NULL, '444', '2022-03-31 15:18:21', 4, 0, 4, NULL, NULL, NULL, 'SP2022/0006', NULL, '2022-03-31 10:18:21', '2022-03-31 10:18:21'),
(8, 14, 5, 0, '100000.0000', 'cash', NULL, NULL, NULL, 'credit', NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-22 10:04:00', 5, 0, 7, NULL, NULL, NULL, 'PP2022/0001', NULL, '2022-09-22 09:05:35', '2022-09-22 09:05:35'),
(9, 14, 5, 0, '100000.0000', 'cash', NULL, NULL, NULL, 'credit', NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-22 10:05:00', 5, 0, 7, NULL, NULL, NULL, 'PP2022/0002', NULL, '2022-09-22 09:05:59', '2022-09-22 09:05:59'),
(10, 15, 6, 0, '1000.0000', 'cash', NULL, NULL, NULL, 'credit', NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-17 11:01:17', 6, 0, 10, NULL, NULL, NULL, 'PP2023/0001', NULL, '2023-01-17 11:01:17', '2023-01-17 11:01:17'),
(11, 16, 6, 0, '580.0000', 'cash', NULL, NULL, NULL, 'credit', NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-17 11:11:17', 6, 0, 9, NULL, NULL, NULL, 'SP2023/0001', NULL, '2023-01-17 11:11:17', '2023-01-17 11:11:17'),
(12, 17, 6, 0, '290.0000', 'cash', NULL, NULL, NULL, 'credit', NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-17 11:12:30', 6, 0, 9, NULL, NULL, NULL, 'SP2023/0002', NULL, '2023-01-17 11:12:30', '2023-01-17 11:12:30'),
(13, 18, 6, 0, '420.0000', 'cash', NULL, NULL, NULL, 'credit', NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-17 11:16:03', 6, 0, 9, NULL, NULL, NULL, 'SP2023/0003', NULL, '2023-01-17 11:16:03', '2023-01-17 11:16:03'),
(14, 20, 6, 0, '140.0000', 'cash', NULL, NULL, NULL, 'credit', NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-17 11:19:30', 6, 0, 9, NULL, NULL, NULL, 'SP2023/0004', NULL, '2023-01-17 11:19:30', '2023-01-17 11:19:30'),
(15, 21, 6, 0, '100.0000', 'cash', NULL, NULL, NULL, 'credit', NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-17 11:20:17', 6, 0, 9, NULL, NULL, NULL, 'SP2023/0005', NULL, '2023-01-17 11:20:17', '2023-01-17 11:20:17'),
(16, 21, 6, 0, '40.0000', 'other', NULL, NULL, NULL, 'credit', NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-17 11:20:17', 6, 0, 9, NULL, NULL, NULL, 'SP2023/0006', NULL, '2023-01-17 11:20:17', '2023-01-17 11:20:17'),
(17, 22, 6, 0, '130.0000', 'cash', NULL, NULL, NULL, 'credit', NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-17 11:23:12', 6, 0, 9, NULL, NULL, NULL, 'SP2023/0007', NULL, '2023-01-17 11:23:12', '2023-01-17 11:23:12'),
(18, 23, 6, 0, '156000.0000', 'cash', NULL, NULL, NULL, 'credit', NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-17 11:30:00', 6, 0, 10, NULL, NULL, NULL, 'PP2023/0002', NULL, '2023-01-17 11:30:59', '2023-01-17 11:30:59'),
(19, 24, 6, 0, '870.0000', 'cash', NULL, NULL, NULL, 'credit', NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-17 11:32:58', 6, 0, 9, NULL, NULL, NULL, 'SP2023/0008', NULL, '2023-01-17 11:32:58', '2023-01-17 11:32:58'),
(20, 26, 6, 0, '140.0000', 'cash', NULL, NULL, NULL, 'credit', NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-17 11:34:21', 6, 0, 9, NULL, NULL, NULL, 'SP2023/0009', NULL, '2023-01-17 11:34:21', '2023-01-17 11:34:21'),
(21, 19, 6, 0, '100.0000', 'cash', NULL, NULL, NULL, 'credit', NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-17 12:10:00', 6, 0, 9, NULL, NULL, NULL, 'SP2023/0010', NULL, '2023-01-17 12:10:20', '2023-01-17 12:10:20'),
(22, 28, 6, 0, '140.0000', 'cash', NULL, NULL, NULL, 'credit', NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-17 16:31:18', 6, 0, 9, NULL, NULL, NULL, 'SP2023/0011', NULL, '2023-01-17 16:31:18', '2023-01-17 16:31:18'),
(23, 30, 6, 0, '305.0000', 'cash', NULL, NULL, NULL, 'credit', NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-17 16:36:57', 6, 0, 9, NULL, NULL, NULL, 'SP2023/0012', NULL, '2023-01-17 16:36:57', '2023-01-17 16:36:57'),
(24, 31, 6, 0, '140.0000', 'cash', NULL, NULL, NULL, 'credit', NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-17 16:49:16', 6, 0, 9, NULL, NULL, NULL, 'SP2023/0013', NULL, '2023-01-17 16:49:16', '2023-01-17 16:49:16'),
(25, 32, 6, 0, '1000.0000', 'cash', NULL, NULL, NULL, 'credit', NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-17 23:29:35', 6, 0, 10, NULL, NULL, NULL, 'SP2023/0014', NULL, '2023-01-17 23:29:35', '2023-01-17 23:29:35'),
(26, 33, 6, 0, '290.0000', 'cash', NULL, NULL, NULL, 'credit', NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-18 18:28:35', 6, 0, 9, NULL, NULL, NULL, 'SP2023/0015', NULL, '2023-01-18 18:28:35', '2023-01-18 18:28:35'),
(27, 34, 6, 0, '200000.0000', 'cash', NULL, NULL, NULL, 'credit', NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-18 18:30:27', 6, 0, 10, NULL, NULL, NULL, 'PP2023/0003', NULL, '2023-01-18 18:30:27', '2023-01-18 18:30:27'),
(28, 35, 6, 0, '150.0000', 'cash', NULL, NULL, NULL, 'credit', NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-18 18:33:43', 6, 0, 9, NULL, NULL, NULL, 'SP2023/0016', NULL, '2023-01-18 18:33:43', '2023-01-18 18:33:43'),
(29, 36, 6, 0, '300.0000', 'cash', NULL, NULL, NULL, 'credit', NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-18 18:34:14', 6, 0, 9, NULL, NULL, NULL, 'SP2023/0017', NULL, '2023-01-18 18:34:14', '2023-01-18 18:34:14'),
(30, 34, 6, 0, '13200.0000', 'cash', NULL, NULL, NULL, 'credit', NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-18 18:55:00', 6, 0, 10, NULL, NULL, NULL, 'PP2023/0004', NULL, '2023-01-18 18:55:21', '2023-01-18 18:55:21'),
(31, 29, 6, 0, '244.0000', 'cash', NULL, NULL, NULL, 'credit', NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-18 18:55:00', 6, 0, 10, NULL, NULL, NULL, 'PP2023/0005', NULL, '2023-01-18 18:55:34', '2023-01-18 18:55:34'),
(32, 15, 6, 0, '28.0000', 'cash', NULL, NULL, NULL, 'credit', NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-18 18:55:00', 6, 0, 10, NULL, NULL, NULL, 'PP2023/0006', NULL, '2023-01-18 18:55:48', '2023-01-18 18:55:48'),
(33, 40, 6, 0, '400.0000', 'cash', NULL, NULL, NULL, 'credit', NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-18 21:39:00', 6, 0, 10, NULL, NULL, NULL, 'PP2023/0007', NULL, '2023-01-18 21:39:57', '2023-01-18 21:39:57'),
(35, 44, 6, 0, '150.0000', 'cash', NULL, NULL, NULL, 'credit', NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-19 20:46:28', 6, 0, 9, NULL, NULL, NULL, 'SP2023/0018', NULL, '2023-01-19 20:46:28', '2023-01-19 20:46:28'),
(36, 45, 6, 0, '1000.0000', 'cash', NULL, NULL, NULL, 'credit', NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-19 20:51:18', 6, 0, 9, NULL, NULL, NULL, 'SP2023/0019', NULL, '2023-01-19 20:51:18', '2023-01-19 20:51:18'),
(37, 45, 6, 1, '850.0000', 'cash', NULL, '', '', '', '', '', NULL, '', '', '', '2023-01-19 20:51:18', 6, 0, 9, NULL, '', NULL, 'SP2023/0020', NULL, '2023-01-19 20:51:18', '2023-01-19 20:51:18'),
(38, 46, 7, 0, '50.0000', 'cash', NULL, NULL, NULL, 'credit', NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-31 11:17:24', 8, 0, 13, NULL, 'pay', NULL, 'PP2023/0001', NULL, '2023-01-31 11:17:24', '2023-01-31 11:17:24'),
(39, 47, 7, 0, '100.0000', 'cash', NULL, NULL, NULL, 'credit', NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-31 11:18:03', 8, 0, 12, NULL, NULL, NULL, 'SP2023/0001', NULL, '2023-01-31 11:18:03', '2023-01-31 11:18:03'),
(40, 47, 7, 1, '96.2200', 'cash', NULL, '', '', '', '', '', NULL, '', '', '', '2023-01-31 11:18:03', 8, 0, 12, NULL, '', NULL, 'SP2023/0002', NULL, '2023-01-31 11:18:03', '2023-01-31 11:18:03'),
(41, 48, 7, 0, '5950.0000', 'cash', NULL, NULL, NULL, 'credit', NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-31 11:29:22', 8, 0, 13, NULL, NULL, NULL, 'PP2023/0002', NULL, '2023-01-31 11:29:22', '2023-01-31 11:29:22'),
(42, 49, 7, 0, '500.0000', 'cash', NULL, NULL, NULL, 'credit', NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-31 11:30:39', 8, 0, 12, NULL, NULL, NULL, 'SP2023/0003', NULL, '2023-01-31 11:30:39', '2023-01-31 11:30:39'),
(43, 49, 7, 1, '150.0000', 'cash', NULL, '', '', '', '', '', NULL, '', '', '', '2023-01-31 11:30:39', 8, 0, 12, NULL, '', NULL, 'SP2023/0004', NULL, '2023-01-31 11:30:39', '2023-01-31 11:30:39'),
(44, 51, 7, 0, '200.0000', 'cash', NULL, NULL, NULL, 'credit', NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-31 11:40:47', 8, 0, 12, NULL, NULL, NULL, 'SP2023/0005', NULL, '2023-01-31 11:40:47', '2023-01-31 11:42:52'),
(46, 51, 7, 1, '60.0000', 'cash', NULL, '', '', '', '', '', NULL, '', '', '', '2023-01-31 11:42:52', 8, 0, 12, NULL, '', NULL, 'SP2023/0007', NULL, '2023-01-31 11:42:52', '2023-01-31 11:42:52'),
(47, 50, 7, 0, '70.6300', 'cash', NULL, NULL, NULL, 'credit', NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-31 11:47:06', 8, 0, 12, NULL, NULL, NULL, 'SP2023/0008', NULL, '2023-01-31 11:47:06', '2023-01-31 11:47:06');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_sell_lines`
--

CREATE TABLE `transaction_sell_lines` (
  `id` int(10) UNSIGNED NOT NULL,
  `transaction_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `variation_id` int(10) UNSIGNED NOT NULL,
  `quantity` decimal(22,4) NOT NULL DEFAULT 0.0000,
  `quantity_returned` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `unit_price_before_discount` decimal(22,4) NOT NULL DEFAULT 0.0000,
  `unit_price` decimal(22,4) DEFAULT NULL COMMENT 'Sell price excluding tax',
  `line_discount_type` enum('fixed','percentage') DEFAULT NULL,
  `line_discount_amount` decimal(22,4) NOT NULL DEFAULT 0.0000,
  `unit_price_inc_tax` decimal(22,4) DEFAULT NULL COMMENT 'Sell price including tax',
  `item_tax` decimal(22,4) NOT NULL COMMENT 'Tax for one quantity',
  `tax_id` int(10) UNSIGNED DEFAULT NULL,
  `discount_id` int(11) DEFAULT NULL,
  `lot_no_line_id` int(11) DEFAULT NULL,
  `sell_line_note` text DEFAULT NULL,
  `res_service_staff_id` int(11) DEFAULT NULL,
  `res_line_order_status` varchar(191) DEFAULT NULL,
  `parent_sell_line_id` int(11) DEFAULT NULL,
  `children_type` varchar(191) NOT NULL DEFAULT '' COMMENT 'Type of children for the parent, like modifier or combo',
  `sub_unit_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transaction_sell_lines`
--

INSERT INTO `transaction_sell_lines` (`id`, `transaction_id`, `product_id`, `variation_id`, `quantity`, `quantity_returned`, `unit_price_before_discount`, `unit_price`, `line_discount_type`, `line_discount_amount`, `unit_price_inc_tax`, `item_tax`, `tax_id`, `discount_id`, `lot_no_line_id`, `sell_line_note`, `res_service_staff_id`, `res_line_order_status`, `parent_sell_line_id`, `children_type`, `sub_unit_id`, `created_at`, `updated_at`) VALUES
(1, 6, 5, 5, '3.0000', '0.0000', '425.0000', '425.0000', 'fixed', '0.0000', '425.0000', '0.0000', NULL, NULL, NULL, '', NULL, NULL, NULL, '', NULL, '2022-03-10 01:57:39', '2022-03-10 01:57:39'),
(2, 8, 6, 6, '2.0000', '0.0000', '56.2500', '56.2500', 'fixed', '0.0000', '56.2500', '0.0000', NULL, NULL, NULL, '', NULL, NULL, NULL, '', NULL, '2022-03-30 10:38:39', '2022-03-30 10:38:39'),
(3, 9, 6, 6, '1.0000', '0.0000', '56.2500', '56.2500', 'fixed', '0.0000', '56.2500', '0.0000', NULL, NULL, NULL, '', NULL, NULL, NULL, '', NULL, '2022-03-30 10:39:22', '2022-03-30 10:39:22'),
(4, 10, 6, 6, '2.0000', '0.0000', '56.2500', '56.2500', 'fixed', '0.0000', '56.2500', '0.0000', NULL, NULL, NULL, '', NULL, NULL, NULL, '', NULL, '2022-03-31 10:11:05', '2022-03-31 10:11:05'),
(5, 11, 6, 6, '1.0000', '0.0000', '56.2500', '56.2500', 'fixed', '0.0000', '56.2500', '0.0000', NULL, NULL, NULL, '', NULL, NULL, NULL, '', NULL, '2022-03-31 10:17:13', '2022-03-31 10:17:13'),
(6, 12, 6, 6, '1.0000', '0.0000', '56.2500', '56.2500', 'fixed', '0.0000', '56.2500', '0.0000', NULL, NULL, NULL, '', NULL, NULL, NULL, '', NULL, '2022-03-31 10:17:24', '2022-03-31 10:17:24'),
(7, 13, 6, 6, '1.0000', '0.0000', '56.2500', '56.2500', 'fixed', '0.0000', '56.2500', '0.0000', NULL, NULL, NULL, '', NULL, NULL, NULL, '', NULL, '2022-03-31 10:18:21', '2022-03-31 10:18:21'),
(8, 16, 20, 20, '2.0000', '0.0000', '150.0000', '150.0000', 'fixed', '0.0000', '150.0000', '0.0000', NULL, NULL, NULL, '', NULL, NULL, NULL, '', NULL, '2023-01-17 11:11:17', '2023-01-17 11:11:17'),
(9, 16, 21, 21, '2.0000', '0.0000', '140.0000', '140.0000', 'fixed', '0.0000', '140.0000', '0.0000', NULL, NULL, NULL, '', NULL, NULL, NULL, '', NULL, '2023-01-17 11:11:17', '2023-01-17 11:11:17'),
(10, 17, 20, 20, '1.0000', '0.0000', '150.0000', '150.0000', 'fixed', '0.0000', '150.0000', '0.0000', NULL, NULL, NULL, '', NULL, NULL, NULL, '', NULL, '2023-01-17 11:12:30', '2023-01-17 11:12:30'),
(11, 17, 21, 21, '1.0000', '0.0000', '140.0000', '140.0000', 'fixed', '0.0000', '140.0000', '0.0000', NULL, NULL, NULL, '', NULL, NULL, NULL, '', NULL, '2023-01-17 11:12:30', '2023-01-17 11:12:30'),
(12, 18, 21, 21, '3.0000', '0.0000', '140.0000', '140.0000', 'fixed', '0.0000', '140.0000', '0.0000', NULL, NULL, NULL, '', NULL, NULL, NULL, '', NULL, '2023-01-17 11:16:03', '2023-01-17 11:16:03'),
(13, 19, 21, 21, '1.0000', '0.0000', '140.0000', '140.0000', 'fixed', '0.0000', '140.0000', '0.0000', NULL, NULL, NULL, '', NULL, NULL, NULL, '', NULL, '2023-01-17 11:16:55', '2023-01-17 11:16:55'),
(14, 20, 21, 21, '1.0000', '0.0000', '140.0000', '140.0000', 'fixed', '0.0000', '140.0000', '0.0000', NULL, NULL, NULL, '', NULL, NULL, NULL, '', NULL, '2023-01-17 11:19:30', '2023-01-17 11:19:30'),
(15, 21, 21, 21, '1.0000', '0.0000', '140.0000', '140.0000', 'fixed', '0.0000', '140.0000', '0.0000', NULL, NULL, NULL, '', NULL, NULL, NULL, '', NULL, '2023-01-17 11:20:17', '2023-01-17 11:20:17'),
(16, 22, 21, 21, '1.0000', '0.0000', '140.0000', '140.0000', 'fixed', '0.0000', '140.0000', '0.0000', NULL, NULL, NULL, '', NULL, NULL, NULL, '', NULL, '2023-01-17 11:23:12', '2023-01-17 11:23:12'),
(17, 24, 20, 20, '3.0000', '0.0000', '150.0000', '150.0000', 'fixed', '0.0000', '150.0000', '0.0000', NULL, NULL, NULL, '', NULL, NULL, NULL, '', NULL, '2023-01-17 11:32:58', '2023-01-17 11:32:58'),
(18, 24, 21, 21, '3.0000', '0.0000', '140.0000', '140.0000', 'fixed', '0.0000', '140.0000', '0.0000', NULL, NULL, NULL, '', NULL, NULL, NULL, '', NULL, '2023-01-17 11:32:58', '2023-01-17 11:32:58'),
(19, 25, 20, 20, '1.0000', '0.0000', '150.0000', '150.0000', 'fixed', '0.0000', '150.0000', '0.0000', NULL, NULL, NULL, '', NULL, NULL, NULL, '', NULL, '2023-01-17 11:33:52', '2023-01-17 11:33:52'),
(20, 26, 21, 21, '1.0000', '0.0000', '140.0000', '140.0000', 'fixed', '0.0000', '140.0000', '0.0000', NULL, NULL, NULL, '', NULL, NULL, NULL, '', NULL, '2023-01-17 11:34:21', '2023-01-17 11:34:21'),
(21, 27, 20, 20, '1.0000', '0.0000', '150.0000', '148.5000', 'percentage', '1.0000', '148.5000', '0.0000', NULL, NULL, NULL, 'add', NULL, NULL, NULL, '', NULL, '2023-01-17 11:38:33', '2023-01-17 11:38:33'),
(22, 28, 21, 21, '1.0000', '0.0000', '140.0000', '140.0000', 'fixed', '0.0000', '140.0000', '0.0000', NULL, NULL, NULL, '', NULL, NULL, NULL, '', NULL, '2023-01-17 16:31:18', '2023-01-17 16:31:18'),
(23, 30, 22, 22, '2.0000', '0.0000', '152.5000', '152.5000', 'fixed', '0.0000', '152.5000', '0.0000', NULL, NULL, NULL, '', NULL, NULL, NULL, '', NULL, '2023-01-17 16:36:57', '2023-01-17 16:36:57'),
(24, 31, 21, 21, '1.0000', '0.0000', '140.0000', '140.0000', 'fixed', '0.0000', '140.0000', '0.0000', NULL, NULL, NULL, '', NULL, NULL, NULL, '', NULL, '2023-01-17 16:49:16', '2023-01-17 16:49:16'),
(25, 33, 21, 21, '1.0000', '0.0000', '140.0000', '140.0000', 'fixed', '0.0000', '140.0000', '0.0000', NULL, NULL, NULL, '', NULL, NULL, NULL, '', NULL, '2023-01-18 18:28:35', '2023-01-18 18:28:35'),
(26, 33, 20, 20, '1.0000', '0.0000', '150.0000', '150.0000', 'fixed', '0.0000', '150.0000', '0.0000', NULL, NULL, NULL, '', NULL, NULL, NULL, '', NULL, '2023-01-18 18:28:35', '2023-01-18 18:28:35'),
(27, 35, 20, 20, '1.0000', '0.0000', '150.0000', '150.0000', 'fixed', '0.0000', '150.0000', '0.0000', NULL, NULL, NULL, '', NULL, NULL, NULL, '', NULL, '2023-01-18 18:33:43', '2023-01-18 18:33:43'),
(28, 36, 20, 20, '2.0000', '0.0000', '150.0000', '150.0000', 'fixed', '0.0000', '150.0000', '0.0000', NULL, NULL, NULL, '', NULL, NULL, NULL, '', NULL, '2023-01-18 18:34:14', '2023-01-18 18:34:14'),
(37, 44, 20, 20, '1.0000', '0.0000', '150.0000', '150.0000', 'fixed', '0.0000', '150.0000', '0.0000', NULL, NULL, NULL, '', NULL, NULL, NULL, '', NULL, '2023-01-19 20:46:28', '2023-01-19 20:46:28'),
(38, 45, 20, 20, '1.0000', '0.0000', '150.0000', '150.0000', 'fixed', '0.0000', '150.0000', '0.0000', NULL, NULL, NULL, '', NULL, NULL, NULL, '', NULL, '2023-01-19 20:51:18', '2023-01-19 20:51:18'),
(39, 47, 35, 35, '6.0000', '0.0000', '0.6300', '0.6300', 'fixed', '0.0000', '0.6300', '0.0000', NULL, NULL, NULL, '', NULL, NULL, NULL, '', NULL, '2023-01-31 11:18:03', '2023-01-31 11:18:03'),
(40, 49, 36, 36, '5.0000', '0.0000', '70.0000', '70.0000', 'fixed', '0.0000', '70.0000', '0.0000', NULL, NULL, NULL, '', NULL, NULL, NULL, '', NULL, '2023-01-31 11:30:39', '2023-01-31 11:30:39'),
(41, 50, 35, 35, '1.0000', '0.0000', '0.6300', '0.6300', 'fixed', '0.0000', '0.6300', '0.0000', NULL, NULL, NULL, '', NULL, NULL, NULL, '', NULL, '2023-01-31 11:32:13', '2023-01-31 11:47:06'),
(42, 50, 36, 36, '1.0000', '0.0000', '70.0000', '70.0000', 'fixed', '0.0000', '70.0000', '0.0000', NULL, NULL, NULL, '', NULL, NULL, NULL, '', NULL, '2023-01-31 11:32:13', '2023-01-31 11:47:06'),
(43, 51, 36, 36, '2.0000', '0.0000', '70.0000', '70.0000', 'fixed', '0.0000', '70.0000', '0.0000', NULL, NULL, NULL, '', NULL, NULL, NULL, '', NULL, '2023-01-31 11:40:47', '2023-01-31 11:42:52');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_sell_lines_purchase_lines`
--

CREATE TABLE `transaction_sell_lines_purchase_lines` (
  `id` int(10) UNSIGNED NOT NULL,
  `sell_line_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'id from transaction_sell_lines',
  `stock_adjustment_line_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'id from stock_adjustment_lines',
  `purchase_line_id` int(10) UNSIGNED NOT NULL COMMENT 'id from purchase_lines',
  `quantity` decimal(22,4) NOT NULL,
  `qty_returned` decimal(22,4) NOT NULL DEFAULT 0.0000,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transaction_sell_lines_purchase_lines`
--

INSERT INTO `transaction_sell_lines_purchase_lines` (`id`, `sell_line_id`, `stock_adjustment_line_id`, `purchase_line_id`, `quantity`, `qty_returned`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 5, '3.0000', '0.0000', '2022-03-10 01:57:40', '2022-03-10 01:57:40'),
(2, 2, NULL, 6, '2.0000', '0.0000', '2022-03-30 10:38:39', '2022-03-30 10:38:39'),
(3, 3, NULL, 6, '1.0000', '0.0000', '2022-03-30 10:39:22', '2022-03-30 10:39:22'),
(4, 4, NULL, 6, '2.0000', '0.0000', '2022-03-31 10:11:05', '2022-03-31 10:11:05'),
(5, 5, NULL, 6, '1.0000', '0.0000', '2022-03-31 10:17:13', '2022-03-31 10:17:13'),
(6, 7, NULL, 6, '1.0000', '0.0000', '2022-03-31 10:18:21', '2022-03-31 10:18:21'),
(7, 8, NULL, 8, '2.0000', '0.0000', '2023-01-17 11:11:18', '2023-01-17 11:11:18'),
(8, 9, NULL, 9, '2.0000', '0.0000', '2023-01-17 11:11:18', '2023-01-17 11:11:18'),
(9, 10, NULL, 8, '1.0000', '0.0000', '2023-01-17 11:12:30', '2023-01-17 11:12:30'),
(10, 11, NULL, 9, '1.0000', '0.0000', '2023-01-17 11:12:30', '2023-01-17 11:12:30'),
(11, 12, NULL, 9, '3.0000', '0.0000', '2023-01-17 11:16:03', '2023-01-17 11:16:03'),
(12, 13, NULL, 9, '1.0000', '0.0000', '2023-01-17 11:16:55', '2023-01-17 11:16:55'),
(13, 14, NULL, 9, '1.0000', '0.0000', '2023-01-17 11:19:30', '2023-01-17 11:19:30'),
(14, 15, NULL, 9, '1.0000', '0.0000', '2023-01-17 11:20:17', '2023-01-17 11:20:17'),
(15, 16, NULL, 9, '1.0000', '0.0000', '2023-01-17 11:23:12', '2023-01-17 11:23:12'),
(16, 17, NULL, 10, '3.0000', '0.0000', '2023-01-17 11:32:58', '2023-01-17 11:32:58'),
(17, 18, NULL, 11, '3.0000', '0.0000', '2023-01-17 11:32:58', '2023-01-17 11:32:58'),
(18, 20, NULL, 11, '1.0000', '0.0000', '2023-01-17 11:34:21', '2023-01-17 11:34:21'),
(19, 22, NULL, 11, '1.0000', '0.0000', '2023-01-17 16:31:18', '2023-01-17 16:31:18'),
(20, 23, NULL, 12, '2.0000', '0.0000', '2023-01-17 16:36:57', '2023-01-17 16:36:57'),
(21, 24, NULL, 11, '1.0000', '0.0000', '2023-01-17 16:49:16', '2023-01-17 16:49:16'),
(22, 25, NULL, 11, '1.0000', '0.0000', '2023-01-18 18:28:35', '2023-01-18 18:28:35'),
(23, 26, NULL, 10, '1.0000', '0.0000', '2023-01-18 18:28:35', '2023-01-18 18:28:35'),
(24, 27, NULL, 10, '1.0000', '0.0000', '2023-01-18 18:33:43', '2023-01-18 18:33:43'),
(25, 28, NULL, 10, '2.0000', '0.0000', '2023-01-18 18:34:14', '2023-01-18 18:34:14'),
(34, 37, NULL, 10, '1.0000', '0.0000', '2023-01-19 20:46:28', '2023-01-19 20:46:28'),
(35, 38, NULL, 10, '1.0000', '0.0000', '2023-01-19 20:51:18', '2023-01-19 20:51:18'),
(36, 39, NULL, 16, '6.0000', '0.0000', '2023-01-31 11:18:03', '2023-01-31 11:18:03'),
(37, 40, NULL, 17, '5.0000', '0.0000', '2023-01-31 11:30:39', '2023-01-31 11:30:39'),
(38, 41, NULL, 16, '1.0000', '0.0000', '2023-01-31 11:32:13', '2023-01-31 11:32:13'),
(39, 42, NULL, 17, '1.0000', '0.0000', '2023-01-31 11:32:13', '2023-01-31 11:32:13'),
(40, 43, NULL, 17, '2.0000', '0.0000', '2023-01-31 11:40:47', '2023-01-31 11:40:47');

-- --------------------------------------------------------

--
-- Table structure for table `types_of_services`
--

CREATE TABLE `types_of_services` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` text DEFAULT NULL,
  `business_id` int(11) NOT NULL,
  `location_price_group` text DEFAULT NULL,
  `packing_charge` decimal(22,4) DEFAULT NULL,
  `packing_charge_type` enum('fixed','percent') DEFAULT NULL,
  `enable_custom_fields` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` int(10) UNSIGNED NOT NULL,
  `business_id` int(10) UNSIGNED NOT NULL,
  `actual_name` varchar(191) NOT NULL,
  `short_name` varchar(191) NOT NULL,
  `allow_decimal` tinyint(1) NOT NULL,
  `base_unit_id` int(11) DEFAULT NULL,
  `base_unit_multiplier` decimal(20,4) DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `business_id`, `actual_name`, `short_name`, `allow_decimal`, `base_unit_id`, `base_unit_multiplier`, `created_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'Pieces', 'Pc(s)', 0, NULL, NULL, 1, NULL, '2022-03-05 07:37:20', '2022-03-05 07:37:20'),
(2, 2, 'Pieces', 'Pc(s)', 0, NULL, NULL, 2, NULL, '2022-03-05 07:42:24', '2022-03-05 07:42:24'),
(3, 3, 'Pieces', 'Pc(s)', 0, NULL, NULL, 3, NULL, '2022-03-10 01:44:13', '2022-03-10 01:44:13'),
(4, 4, 'Pieces', 'Pc(s)', 0, NULL, NULL, 4, NULL, '2022-03-30 16:50:28', '2022-03-30 16:50:28'),
(5, 5, 'Pieces', 'Pc(s)', 0, NULL, NULL, 5, NULL, '2022-09-09 11:16:44', '2022-09-09 11:16:44'),
(6, 5, 'Packages', 'Pkg', 0, NULL, NULL, 5, NULL, '2022-09-09 11:20:56', '2022-09-09 11:20:56'),
(7, 5, 'Kilo grams', 'kg', 1, NULL, NULL, 5, NULL, '2022-09-09 11:21:16', '2022-09-09 11:21:16'),
(8, 6, 'Pieces', 'Pc(s)', 0, NULL, NULL, 6, NULL, '2023-01-14 08:38:19', '2023-01-14 08:38:19'),
(9, 6, 'kilogram', 'kg', 1, NULL, NULL, 6, NULL, '2023-01-18 21:18:15', '2023-01-18 21:18:15'),
(10, 7, 'Pieces', 'Pc(s)', 0, NULL, NULL, 8, NULL, '2023-01-30 12:56:59', '2023-01-30 12:56:59'),
(11, 7, 'kilogram', 'Kg', 1, NULL, NULL, 8, NULL, '2023-01-31 11:07:58', '2023-01-31 11:07:58');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_type` varchar(191) NOT NULL DEFAULT 'user',
  `surname` char(10) DEFAULT NULL,
  `first_name` varchar(191) NOT NULL,
  `last_name` varchar(191) DEFAULT NULL,
  `username` varchar(191) DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL,
  `password` varchar(191) DEFAULT NULL,
  `language` char(7) NOT NULL DEFAULT 'en',
  `contact_no` char(15) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `business_id` int(10) UNSIGNED DEFAULT NULL,
  `max_sales_discount_percent` decimal(5,2) DEFAULT NULL,
  `allow_login` tinyint(1) NOT NULL DEFAULT 1,
  `status` enum('active','inactive','terminated') NOT NULL DEFAULT 'active',
  `is_cmmsn_agnt` tinyint(1) NOT NULL DEFAULT 0,
  `cmmsn_percent` decimal(4,2) NOT NULL DEFAULT 0.00,
  `selected_contacts` tinyint(1) NOT NULL DEFAULT 0,
  `dob` date DEFAULT NULL,
  `gender` varchar(191) DEFAULT NULL,
  `marital_status` enum('married','unmarried','divorced') DEFAULT NULL,
  `blood_group` char(10) DEFAULT NULL,
  `contact_number` char(20) DEFAULT NULL,
  `fb_link` varchar(191) DEFAULT NULL,
  `twitter_link` varchar(191) DEFAULT NULL,
  `social_media_1` varchar(191) DEFAULT NULL,
  `social_media_2` varchar(191) DEFAULT NULL,
  `permanent_address` text DEFAULT NULL,
  `current_address` text DEFAULT NULL,
  `guardian_name` varchar(191) DEFAULT NULL,
  `custom_field_1` varchar(191) DEFAULT NULL,
  `custom_field_2` varchar(191) DEFAULT NULL,
  `custom_field_3` varchar(191) DEFAULT NULL,
  `custom_field_4` varchar(191) DEFAULT NULL,
  `bank_details` longtext DEFAULT NULL,
  `id_proof_name` varchar(191) DEFAULT NULL,
  `id_proof_number` varchar(191) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_type`, `surname`, `first_name`, `last_name`, `username`, `email`, `password`, `language`, `contact_no`, `address`, `remember_token`, `business_id`, `max_sales_discount_percent`, `allow_login`, `status`, `is_cmmsn_agnt`, `cmmsn_percent`, `selected_contacts`, `dob`, `gender`, `marital_status`, `blood_group`, `contact_number`, `fb_link`, `twitter_link`, `social_media_1`, `social_media_2`, `permanent_address`, `current_address`, `guardian_name`, `custom_field_1`, `custom_field_2`, `custom_field_3`, `custom_field_4`, `bank_details`, `id_proof_name`, `id_proof_number`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'user', 'Ahtasham', 'Ahtasham', 'Basheer', 'Ahtashambasheer', 'Ahtasham@gmai.com', '$2y$10$VnVdMgXifB01t4QzHlhgnulsCuzg1StikIdgGQ8hY6Fct5hkTW.tm\r\n', 'en', NULL, NULL, NULL, 1, NULL, 1, 'active', 0, '0.00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-05 07:37:20', '2022-03-05 07:37:20'),
(2, 'user', 'shehzad', 'shehzad', 'g', 'shehzad', 'shehzad@gmail.com', '$2y$10$1RrEuoSCK0wY1HMyDzDEUuK0McAtogGsheoJheRulP27dSFwi/ft.', 'en', NULL, NULL, NULL, 2, NULL, 1, 'active', 0, '0.00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-05 07:42:24', '2022-03-05 07:42:24'),
(3, 'user', 'Mr', 'Usman', 'Butt', 'buttmobileshop', 'buttmobileshop@gmail.com', '$2y$10$c1udsE77//zCD5qHPTf8xOReKJs1B/6WKXwaR.rbvv3KXNPPeDwvi', 'en', NULL, NULL, NULL, 3, NULL, 1, 'active', 0, '0.00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-10 01:44:13', '2022-03-10 01:44:13'),
(4, 'user', 'Mr', 'Demotest', 'Test', 'Demotest', 'vinoo@upview.tech', '$2y$10$zWlRrwCW.BPNCy8uEZrvAeKoZTzQCNM/TzC5ARbwf0cfJqyAx6lcS', 'en', NULL, NULL, NULL, 4, NULL, 1, 'active', 0, '0.00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-30 16:50:27', '2022-03-30 16:50:27'),
(5, 'user', 'Miss', 'Kagee', NULL, 'Kagee', 'kageena.arunthavarasa@kodplex.com', '$2y$10$VnVdMgXifB01t4QzHlhgnulsCuzg1StikIdgGQ8hY6Fct5hkTW.tm', 'en', NULL, NULL, 'PbEi7i8yIE8shvF45GaZU25MECW4uc57qcF0FLT2aJ2rJpi6dKMuZN3IVdi3', 5, NULL, 1, 'active', 0, '0.00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-09 11:16:44', '2022-09-09 11:16:44'),
(6, 'user', 'MR', 'Vinoo', 'Thayalan', 'Vinoojan', NULL, '$2y$10$HIxQSXNng43DibTJfvp6uuJoUGVN4.Gzz0.XayWYQSO1N31sIlU6m', 'en', NULL, NULL, NULL, 6, NULL, 1, 'active', 0, '0.00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-14 08:38:19', '2023-01-14 08:38:19'),
(7, 'user', 'Mr', 'Elmo Johnson', 'Aaron Davis', 'aaron2123', 'aarondavis2108@gmail.com', '$2y$10$FMw9TQGO5z8URSF2hqYslOLPrwAidpHhifGWZ93vgpgHFtbZ.5jeO', 'en', NULL, NULL, 'B3Q03F9F4plHAVYPE9cFdhxGb6JNW2oUacTzR2QE82GmXAaRpWFa9UjjrjAA', 6, NULL, 1, 'active', 0, '0.00', 0, NULL, NULL, NULL, NULL, '0776100781', NULL, NULL, NULL, NULL, '46th vidhans lane chundukulli jaffna', '46th vidhans lane chundukulli jaffna', NULL, NULL, NULL, NULL, NULL, '{\"account_holder_name\":null,\"account_number\":null,\"bank_name\":null,\"bank_code\":null,\"branch\":null,\"tax_payer_id\":null}', NULL, NULL, NULL, '2023-01-17 11:59:44', '2023-01-17 12:00:37'),
(8, 'user', 'Mr', 'Kaarun', 'Sri', 'Kaarun', 'demo@Gmail.com', '$2y$10$pr1q5zzcQ5yrUow4ARSDbOfuwa73iqvPb6e/E0Gd6d792GlqAFfme', 'en', NULL, NULL, NULL, 7, NULL, 1, 'active', 0, '0.00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-30 12:56:59', '2023-01-30 12:56:59');

-- --------------------------------------------------------

--
-- Table structure for table `user_contact_access`
--

CREATE TABLE `user_contact_access` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `contact_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `variations`
--

CREATE TABLE `variations` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `sub_sku` varchar(191) DEFAULT NULL,
  `product_variation_id` int(10) UNSIGNED NOT NULL,
  `variation_value_id` int(11) DEFAULT NULL,
  `default_purchase_price` decimal(22,4) DEFAULT NULL,
  `dpp_inc_tax` decimal(22,4) NOT NULL DEFAULT 0.0000,
  `profit_percent` decimal(22,4) NOT NULL DEFAULT 0.0000,
  `default_sell_price` decimal(22,4) DEFAULT NULL,
  `sell_price_inc_tax` decimal(22,4) DEFAULT NULL COMMENT 'Sell price including tax',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `combo_variations` text DEFAULT NULL COMMENT 'Contains the combo variation details'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `variations`
--

INSERT INTO `variations` (`id`, `name`, `product_id`, `sub_sku`, `product_variation_id`, `variation_value_id`, `default_purchase_price`, `dpp_inc_tax`, `profit_percent`, `default_sell_price`, `sell_price_inc_tax`, `created_at`, `updated_at`, `deleted_at`, `combo_variations`) VALUES
(1, 'DUMMY', 1, '0001', 1, NULL, '314999.0000', '314999.0000', '25.0000', '393748.7500', '393748.7500', '2022-03-10 01:35:58', '2022-03-10 01:35:58', NULL, '[]'),
(2, 'DUMMY', 2, '0002', 2, NULL, '113999.0000', '113999.0000', '25.0000', '142498.7500', '142498.7500', '2022-03-10 01:40:21', '2022-03-10 01:40:21', NULL, '[]'),
(3, 'DUMMY', 3, '0003', 3, NULL, '3500.0000', '3500.0000', '25.0000', '4375.0000', '4375.0000', '2022-03-10 01:45:01', '2022-03-10 01:45:01', NULL, '[]'),
(4, 'DUMMY', 4, '0004', 4, NULL, '350.0000', '350.0000', '25.0000', '437.5000', '437.5000', '2022-03-10 01:48:11', '2022-03-10 01:48:11', NULL, '[]'),
(5, 'DUMMY', 5, '0005', 5, NULL, '340.0000', '340.0000', '25.0000', '425.0000', '425.0000', '2022-03-10 01:55:40', '2022-03-10 01:55:40', NULL, '[]'),
(6, 'DUMMY', 6, '0006', 6, NULL, '45.0000', '45.0000', '25.0000', '56.2500', '56.2500', '2022-03-30 10:35:26', '2022-03-30 10:35:26', NULL, '[]'),
(7, 'DUMMY', 7, '1', 7, NULL, '180.0000', '180.0000', '25.0000', '225.0000', '225.0000', '2022-09-09 11:22:47', '2022-09-09 11:22:47', NULL, '[]'),
(8, 'DUMMY', 8, '2', 8, NULL, '800.0000', '800.0000', '25.0000', '1000.0000', '1000.0000', '2022-09-09 11:24:05', '2022-09-09 11:24:05', NULL, '[]'),
(9, 'DUMMY', 9, '3', 9, NULL, '900.0000', '900.0000', '25.0000', '1125.0000', '1125.0000', '2022-09-09 11:25:17', '2022-09-09 11:25:17', NULL, '[]'),
(10, 'DUMMY', 10, '4', 10, NULL, '120.0000', '120.0000', '25.0000', '150.0000', '150.0000', '2022-09-09 11:26:07', '2022-09-09 11:26:07', NULL, '[]'),
(11, 'DUMMY', 11, '6', 11, NULL, '120.0000', '120.0000', '25.0000', '150.0000', '150.0000', '2022-09-09 11:28:20', '2022-09-09 11:28:20', NULL, '[]'),
(12, 'DUMMY', 12, '7', 12, NULL, '125.0000', '125.0000', '25.0000', '156.2500', '156.2500', '2022-09-09 11:30:24', '2022-09-09 11:30:24', NULL, '[]'),
(13, 'DUMMY', 13, '8', 13, NULL, '900.0000', '900.0000', '25.0000', '1125.0000', '1125.0000', '2022-09-09 11:31:39', '2022-09-20 20:53:23', NULL, '[]'),
(14, 'DUMMY', 14, '9', 14, NULL, '370.0000', '370.0000', '10.0000', '407.0000', '407.0000', '2022-09-09 11:32:44', '2022-09-20 20:54:00', NULL, '[]'),
(15, 'DUMMY', 15, '10', 15, NULL, '1000.0000', '1000.0000', '25.0000', '1250.0000', '1250.0000', '2022-09-09 11:33:44', '2022-09-09 11:33:44', NULL, '[]'),
(16, 'DUMMY', 16, '11', 16, NULL, '2200.0000', '2200.0000', '25.0000', '2750.0000', '2750.0000', '2022-09-09 11:34:39', '2022-09-09 11:34:39', NULL, '[]'),
(17, 'DUMMY', 17, '1100', 17, NULL, '900.0000', '900.0000', '25.0000', '1125.0000', '1125.0000', '2022-09-20 15:58:06', '2022-09-20 15:58:06', NULL, '[]'),
(18, 'DUMMY', 18, '1101', 18, NULL, '80.0000', '80.0000', '25.0000', '100.0000', '100.0000', '2022-09-20 16:00:58', '2022-09-20 16:00:58', NULL, '[]'),
(19, 'DUMMY', 19, '1102', 19, NULL, '250.0000', '250.0000', '25.0000', '312.5000', '312.5000', '2022-09-20 16:04:04', '2022-09-20 16:04:04', NULL, '[]'),
(20, 'DUMMY', 20, '0020', 20, NULL, '76.0000', '76.0000', '97.3700', '150.0000', '150.0000', '2023-01-17 10:29:25', '2023-01-17 10:31:42', NULL, '[]'),
(21, 'DUMMY', 21, '0021', 21, NULL, '80.0000', '80.0000', '75.0000', '140.0000', '140.0000', '2023-01-17 10:56:25', '2023-01-17 10:56:25', NULL, '[]'),
(22, 'DUMMY', 22, '0022', 22, NULL, '122.0000', '122.0000', '25.0000', '152.5000', '152.5000', '2023-01-17 16:33:39', '2023-01-17 16:33:39', NULL, '[]'),
(23, 'DUMMY', 23, '0023', 23, NULL, '120.0000', '122.0000', '25.0000', '150.0000', '150.0000', '2023-01-18 21:15:11', '2023-01-18 21:15:11', NULL, '[]'),
(24, 'DUMMY', 24, '0024', 24, NULL, '120.0000', '122.0000', '25.0000', '150.0000', '150.0000', '2023-01-18 21:15:11', '2023-01-18 21:15:11', NULL, '[]'),
(25, 'DUMMY', 25, '0025', 25, NULL, '120.0000', '122.0000', '25.0000', '150.0000', '150.0000', '2023-01-18 21:15:11', '2023-01-18 21:15:11', NULL, '[]'),
(26, 'DUMMY', 26, '0026', 26, NULL, '120.0000', '122.0000', '25.0000', '150.0000', '150.0000', '2023-01-18 21:15:11', '2023-01-18 21:15:11', NULL, '[]'),
(27, 'DUMMY', 27, '0027', 27, NULL, '120.0000', '122.0000', '25.0000', '150.0000', '150.0000', '2023-01-18 21:15:11', '2023-01-18 21:15:11', NULL, '[]'),
(28, 'DUMMY', 28, '0028', 28, NULL, '120.0000', '122.0000', '25.0000', '150.0000', '150.0000', '2023-01-18 21:15:11', '2023-01-18 21:15:11', NULL, '[]'),
(29, 'DUMMY', 29, '0029', 29, NULL, '120.0000', '122.0000', '25.0000', '150.0000', '150.0000', '2023-01-18 21:15:11', '2023-01-18 21:15:11', NULL, '[]'),
(30, 'DUMMY', 30, '0030', 30, NULL, '120.0000', '122.0000', '25.0000', '150.0000', '150.0000', '2023-01-18 21:15:11', '2023-01-18 21:15:11', NULL, '[]'),
(31, 'DUMMY', 31, '0031', 31, NULL, '120.0000', '122.0000', '25.0000', '150.0000', '150.0000', '2023-01-18 21:15:11', '2023-01-18 21:15:11', NULL, '[]'),
(32, 'DUMMY', 32, '0032', 32, NULL, '120.0000', '122.0000', '25.0000', '150.0000', '150.0000', '2023-01-18 21:15:11', '2023-01-18 21:15:11', NULL, '[]'),
(33, 'DUMMY', 33, 'm', 33, NULL, '89.0000', '89.0000', '25.0000', '111.2500', '111.2500', '2023-01-19 20:56:34', '2023-01-19 20:56:34', NULL, '[]'),
(34, 'DUMMY', 34, '200', 34, NULL, '180.0000', '180.0000', '25.0000', '225.0000', '225.0000', '2023-01-20 12:53:22', '2023-01-20 12:53:22', NULL, '[]'),
(35, 'DUMMY', 35, '0035', 35, NULL, '0.5000', '0.5000', '25.0000', '0.6300', '0.6300', '2023-01-31 11:10:49', '2023-01-31 11:10:49', NULL, '[]'),
(36, 'DUMMY', 36, '4796000300382', 36, NULL, '70.0000', '70.0000', '0.0000', '70.0000', '70.0000', '2023-01-31 11:27:11', '2023-01-31 11:29:22', NULL, '[]');

-- --------------------------------------------------------

--
-- Table structure for table `variation_group_prices`
--

CREATE TABLE `variation_group_prices` (
  `id` int(10) UNSIGNED NOT NULL,
  `variation_id` int(10) UNSIGNED NOT NULL,
  `price_group_id` int(10) UNSIGNED NOT NULL,
  `price_inc_tax` decimal(22,4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `variation_location_details`
--

CREATE TABLE `variation_location_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `product_variation_id` int(10) UNSIGNED NOT NULL COMMENT 'id from product_variations table',
  `variation_id` int(10) UNSIGNED NOT NULL,
  `location_id` int(10) UNSIGNED NOT NULL,
  `qty_available` decimal(22,4) NOT NULL DEFAULT 0.0000,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `variation_location_details`
--

INSERT INTO `variation_location_details` (`id`, `product_id`, `product_variation_id`, `variation_id`, `location_id`, `qty_available`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 3, '25.0000', '2022-03-10 01:36:24', '2022-03-10 01:36:24'),
(2, 2, 2, 2, 3, '25.0000', '2022-03-10 01:40:30', '2022-03-10 01:40:30'),
(3, 3, 3, 3, 3, '1000.0000', '2022-03-10 01:45:10', '2022-03-10 01:45:10'),
(4, 4, 4, 4, 3, '100.0000', '2022-03-10 01:48:25', '2022-03-10 01:48:25'),
(5, 5, 5, 5, 3, '97.0000', '2022-03-10 01:55:58', '2022-03-10 01:57:40'),
(6, 6, 6, 6, 4, '13.0000', '2022-03-30 10:35:42', '2022-03-31 10:18:21'),
(7, 8, 8, 8, 5, '250.0000', '2022-09-22 09:04:19', '2022-09-22 09:04:19'),
(8, 20, 20, 20, 6, '1691.0000', '2023-01-17 11:01:17', '2023-01-19 20:51:18'),
(9, 21, 21, 21, 6, '2988.0000', '2023-01-17 11:01:17', '2023-01-18 21:39:11'),
(10, 22, 22, 22, 6, '0.0000', '2023-01-17 16:36:21', '2023-01-17 16:36:57'),
(11, 35, 35, 35, 7, '93.0000', '2023-01-31 11:17:24', '2023-01-31 11:32:13'),
(12, 36, 36, 36, 7, '92.0000', '2023-01-31 11:29:21', '2023-01-31 11:40:47');

-- --------------------------------------------------------

--
-- Table structure for table `variation_templates`
--

CREATE TABLE `variation_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `business_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `variation_templates`
--

INSERT INTO `variation_templates` (`id`, `name`, `business_id`, `created_at`, `updated_at`) VALUES
(1, 'Color', 5, '2023-01-13 21:44:38', '2023-01-13 21:44:38'),
(2, 'Size', 5, '2023-01-13 21:44:55', '2023-01-13 21:44:55'),
(3, 't1', 6, '2023-01-17 16:42:16', '2023-01-17 16:42:16');

-- --------------------------------------------------------

--
-- Table structure for table `variation_value_templates`
--

CREATE TABLE `variation_value_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `variation_template_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `variation_value_templates`
--

INSERT INTO `variation_value_templates` (`id`, `name`, `variation_template_id`, `created_at`, `updated_at`) VALUES
(1, 'Blue', 1, '2023-01-13 21:44:38', '2023-01-13 21:44:38'),
(2, 'White', 1, '2023-01-13 21:44:38', '2023-01-13 21:44:38'),
(3, 'M', 2, '2023-01-13 21:44:55', '2023-01-13 21:44:55'),
(4, 'S', 2, '2023-01-13 21:44:55', '2023-01-13 21:44:55'),
(5, '12', 3, '2023-01-17 16:42:16', '2023-01-17 16:42:37'),
(6, '2', 3, '2023-01-17 16:42:16', '2023-01-17 16:42:16');

-- --------------------------------------------------------

--
-- Table structure for table `warranties`
--

CREATE TABLE `warranties` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `business_id` int(11) NOT NULL,
  `description` text DEFAULT NULL,
  `duration` int(11) NOT NULL,
  `duration_type` enum('days','months','years') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `warranties`
--

INSERT INTO `warranties` (`id`, `name`, `business_id`, `description`, `duration`, `duration_type`, `created_at`, `updated_at`) VALUES
(1, 'Meta fried chicken (11045)', 6, 'md', 2, 'years', '2023-01-18 21:20:58', '2023-01-18 21:20:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `account_transactions`
--
ALTER TABLE `account_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `account_transactions_account_id_index` (`account_id`),
  ADD KEY `account_transactions_transaction_id_index` (`transaction_id`),
  ADD KEY `account_transactions_transaction_payment_id_index` (`transaction_payment_id`),
  ADD KEY `account_transactions_transfer_transaction_id_index` (`transfer_transaction_id`),
  ADD KEY `account_transactions_created_by_index` (`created_by`);

--
-- Indexes for table `account_types`
--
ALTER TABLE `account_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activity_log_log_name_index` (`log_name`);

--
-- Indexes for table `barcodes`
--
ALTER TABLE `barcodes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `barcodes_business_id_foreign` (`business_id`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bookings_contact_id_foreign` (`contact_id`),
  ADD KEY `bookings_business_id_foreign` (`business_id`),
  ADD KEY `bookings_created_by_foreign` (`created_by`),
  ADD KEY `bookings_table_id_index` (`table_id`),
  ADD KEY `bookings_waiter_id_index` (`waiter_id`),
  ADD KEY `bookings_location_id_index` (`location_id`),
  ADD KEY `bookings_booking_status_index` (`booking_status`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD KEY `brands_business_id_foreign` (`business_id`),
  ADD KEY `brands_created_by_foreign` (`created_by`);

--
-- Indexes for table `business`
--
ALTER TABLE `business`
  ADD PRIMARY KEY (`id`),
  ADD KEY `business_owner_id_foreign` (`owner_id`),
  ADD KEY `business_currency_id_foreign` (`currency_id`),
  ADD KEY `business_default_sales_tax_foreign` (`default_sales_tax`);

--
-- Indexes for table `business_locations`
--
ALTER TABLE `business_locations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `business_locations_business_id_index` (`business_id`),
  ADD KEY `business_locations_invoice_scheme_id_foreign` (`invoice_scheme_id`),
  ADD KEY `business_locations_invoice_layout_id_foreign` (`invoice_layout_id`);

--
-- Indexes for table `cash_registers`
--
ALTER TABLE `cash_registers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cash_registers_business_id_foreign` (`business_id`),
  ADD KEY `cash_registers_user_id_foreign` (`user_id`),
  ADD KEY `cash_registers_location_id_index` (`location_id`);

--
-- Indexes for table `cash_register_transactions`
--
ALTER TABLE `cash_register_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cash_register_transactions_cash_register_id_foreign` (`cash_register_id`),
  ADD KEY `cash_register_transactions_transaction_id_index` (`transaction_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_business_id_foreign` (`business_id`),
  ADD KEY `categories_created_by_foreign` (`created_by`);

--
-- Indexes for table `categorizables`
--
ALTER TABLE `categorizables`
  ADD KEY `categorizables_categorizable_type_categorizable_id_index` (`categorizable_type`,`categorizable_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contacts_business_id_foreign` (`business_id`),
  ADD KEY `contacts_created_by_foreign` (`created_by`),
  ADD KEY `contacts_type_index` (`type`),
  ADD KEY `contacts_contact_status_index` (`contact_status`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_groups`
--
ALTER TABLE `customer_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_groups_business_id_foreign` (`business_id`);

--
-- Indexes for table `dashboard_configurations`
--
ALTER TABLE `dashboard_configurations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dashboard_configurations_business_id_foreign` (`business_id`);

--
-- Indexes for table `discounts`
--
ALTER TABLE `discounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `discounts_business_id_index` (`business_id`),
  ADD KEY `discounts_brand_id_index` (`brand_id`),
  ADD KEY `discounts_category_id_index` (`category_id`),
  ADD KEY `discounts_location_id_index` (`location_id`),
  ADD KEY `discounts_priority_index` (`priority`);

--
-- Indexes for table `document_and_notes`
--
ALTER TABLE `document_and_notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `document_and_notes_business_id_index` (`business_id`),
  ADD KEY `document_and_notes_notable_id_index` (`notable_id`),
  ADD KEY `document_and_notes_created_by_index` (`created_by`);

--
-- Indexes for table `expense_categories`
--
ALTER TABLE `expense_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `expense_categories_business_id_foreign` (`business_id`);

--
-- Indexes for table `group_sub_taxes`
--
ALTER TABLE `group_sub_taxes`
  ADD KEY `group_sub_taxes_group_tax_id_foreign` (`group_tax_id`),
  ADD KEY `group_sub_taxes_tax_id_foreign` (`tax_id`);

--
-- Indexes for table `invoice_layouts`
--
ALTER TABLE `invoice_layouts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoice_layouts_business_id_foreign` (`business_id`);

--
-- Indexes for table `invoice_schemes`
--
ALTER TABLE `invoice_schemes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoice_schemes_business_id_foreign` (`business_id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_model_type_model_id_index` (`model_type`,`model_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_type_model_id_index` (`model_type`,`model_id`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_type_model_id_index` (`model_type`,`model_id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `notification_templates`
--
ALTER TABLE `notification_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `printers`
--
ALTER TABLE `printers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `printers_business_id_foreign` (`business_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_brand_id_foreign` (`brand_id`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_sub_category_id_foreign` (`sub_category_id`),
  ADD KEY `products_tax_foreign` (`tax`),
  ADD KEY `products_name_index` (`name`),
  ADD KEY `products_business_id_index` (`business_id`),
  ADD KEY `products_unit_id_index` (`unit_id`),
  ADD KEY `products_created_by_index` (`created_by`),
  ADD KEY `products_warranty_id_index` (`warranty_id`);

--
-- Indexes for table `product_locations`
--
ALTER TABLE `product_locations`
  ADD KEY `product_locations_product_id_index` (`product_id`),
  ADD KEY `product_locations_location_id_index` (`location_id`);

--
-- Indexes for table `product_racks`
--
ALTER TABLE `product_racks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_variations`
--
ALTER TABLE `product_variations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_variations_name_index` (`name`),
  ADD KEY `product_variations_product_id_index` (`product_id`);

--
-- Indexes for table `purchase_lines`
--
ALTER TABLE `purchase_lines`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchase_lines_transaction_id_foreign` (`transaction_id`),
  ADD KEY `purchase_lines_product_id_foreign` (`product_id`),
  ADD KEY `purchase_lines_variation_id_foreign` (`variation_id`),
  ADD KEY `purchase_lines_tax_id_foreign` (`tax_id`),
  ADD KEY `purchase_lines_sub_unit_id_index` (`sub_unit_id`),
  ADD KEY `purchase_lines_lot_number_index` (`lot_number`);

--
-- Indexes for table `reference_counts`
--
ALTER TABLE `reference_counts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `res_product_modifier_sets`
--
ALTER TABLE `res_product_modifier_sets`
  ADD KEY `res_product_modifier_sets_modifier_set_id_foreign` (`modifier_set_id`);

--
-- Indexes for table `res_tables`
--
ALTER TABLE `res_tables`
  ADD PRIMARY KEY (`id`),
  ADD KEY `res_tables_business_id_foreign` (`business_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `roles_business_id_foreign` (`business_id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `selling_price_groups`
--
ALTER TABLE `selling_price_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `selling_price_groups_business_id_foreign` (`business_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD UNIQUE KEY `sessions_id_unique` (`id`);

--
-- Indexes for table `stock_adjustment_lines`
--
ALTER TABLE `stock_adjustment_lines`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stock_adjustment_lines_product_id_foreign` (`product_id`),
  ADD KEY `stock_adjustment_lines_variation_id_foreign` (`variation_id`),
  ADD KEY `stock_adjustment_lines_transaction_id_index` (`transaction_id`);

--
-- Indexes for table `system`
--
ALTER TABLE `system`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tax_rates`
--
ALTER TABLE `tax_rates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tax_rates_business_id_foreign` (`business_id`),
  ADD KEY `tax_rates_created_by_foreign` (`created_by`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_tax_id_foreign` (`tax_id`),
  ADD KEY `transactions_business_id_index` (`business_id`),
  ADD KEY `transactions_type_index` (`type`),
  ADD KEY `transactions_contact_id_index` (`contact_id`),
  ADD KEY `transactions_transaction_date_index` (`transaction_date`),
  ADD KEY `transactions_created_by_index` (`created_by`),
  ADD KEY `transactions_location_id_index` (`location_id`),
  ADD KEY `transactions_expense_for_foreign` (`expense_for`),
  ADD KEY `transactions_expense_category_id_index` (`expense_category_id`),
  ADD KEY `transactions_sub_type_index` (`sub_type`),
  ADD KEY `transactions_return_parent_id_index` (`return_parent_id`),
  ADD KEY `type` (`type`),
  ADD KEY `transactions_status_index` (`status`);

--
-- Indexes for table `transaction_payments`
--
ALTER TABLE `transaction_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaction_payments_transaction_id_foreign` (`transaction_id`),
  ADD KEY `transaction_payments_created_by_index` (`created_by`),
  ADD KEY `transaction_payments_parent_id_index` (`parent_id`);

--
-- Indexes for table `transaction_sell_lines`
--
ALTER TABLE `transaction_sell_lines`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaction_sell_lines_transaction_id_foreign` (`transaction_id`),
  ADD KEY `transaction_sell_lines_product_id_foreign` (`product_id`),
  ADD KEY `transaction_sell_lines_variation_id_foreign` (`variation_id`),
  ADD KEY `transaction_sell_lines_tax_id_foreign` (`tax_id`),
  ADD KEY `transaction_sell_lines_children_type_index` (`children_type`),
  ADD KEY `transaction_sell_lines_parent_sell_line_id_index` (`parent_sell_line_id`);

--
-- Indexes for table `transaction_sell_lines_purchase_lines`
--
ALTER TABLE `transaction_sell_lines_purchase_lines`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sell_line_id` (`sell_line_id`),
  ADD KEY `stock_adjustment_line_id` (`stock_adjustment_line_id`),
  ADD KEY `purchase_line_id` (`purchase_line_id`);

--
-- Indexes for table `types_of_services`
--
ALTER TABLE `types_of_services`
  ADD PRIMARY KEY (`id`),
  ADD KEY `types_of_services_business_id_index` (`business_id`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`),
  ADD KEY `units_business_id_foreign` (`business_id`),
  ADD KEY `units_created_by_foreign` (`created_by`),
  ADD KEY `units_base_unit_id_index` (`base_unit_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD KEY `users_business_id_foreign` (`business_id`),
  ADD KEY `users_user_type_index` (`user_type`);

--
-- Indexes for table `user_contact_access`
--
ALTER TABLE `user_contact_access`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `variations`
--
ALTER TABLE `variations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `variations_product_id_foreign` (`product_id`),
  ADD KEY `variations_product_variation_id_foreign` (`product_variation_id`),
  ADD KEY `variations_name_index` (`name`),
  ADD KEY `variations_sub_sku_index` (`sub_sku`),
  ADD KEY `variations_variation_value_id_index` (`variation_value_id`);

--
-- Indexes for table `variation_group_prices`
--
ALTER TABLE `variation_group_prices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `variation_group_prices_variation_id_foreign` (`variation_id`),
  ADD KEY `variation_group_prices_price_group_id_foreign` (`price_group_id`);

--
-- Indexes for table `variation_location_details`
--
ALTER TABLE `variation_location_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `variation_location_details_location_id_foreign` (`location_id`),
  ADD KEY `variation_location_details_product_id_index` (`product_id`),
  ADD KEY `variation_location_details_product_variation_id_index` (`product_variation_id`),
  ADD KEY `variation_location_details_variation_id_index` (`variation_id`);

--
-- Indexes for table `variation_templates`
--
ALTER TABLE `variation_templates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `variation_templates_business_id_foreign` (`business_id`);

--
-- Indexes for table `variation_value_templates`
--
ALTER TABLE `variation_value_templates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `variation_value_templates_name_index` (`name`),
  ADD KEY `variation_value_templates_variation_template_id_index` (`variation_template_id`);

--
-- Indexes for table `warranties`
--
ALTER TABLE `warranties`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `account_transactions`
--
ALTER TABLE `account_transactions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `account_types`
--
ALTER TABLE `account_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `barcodes`
--
ALTER TABLE `barcodes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `business`
--
ALTER TABLE `business`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `business_locations`
--
ALTER TABLE `business_locations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `cash_registers`
--
ALTER TABLE `cash_registers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `cash_register_transactions`
--
ALTER TABLE `cash_register_transactions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT for table `customer_groups`
--
ALTER TABLE `customer_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dashboard_configurations`
--
ALTER TABLE `dashboard_configurations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `discounts`
--
ALTER TABLE `discounts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `document_and_notes`
--
ALTER TABLE `document_and_notes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expense_categories`
--
ALTER TABLE `expense_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `invoice_layouts`
--
ALTER TABLE `invoice_layouts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `invoice_schemes`
--
ALTER TABLE `invoice_schemes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=240;

--
-- AUTO_INCREMENT for table `notification_templates`
--
ALTER TABLE `notification_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `printers`
--
ALTER TABLE `printers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `product_racks`
--
ALTER TABLE `product_racks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_variations`
--
ALTER TABLE `product_variations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `purchase_lines`
--
ALTER TABLE `purchase_lines`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `reference_counts`
--
ALTER TABLE `reference_counts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `res_tables`
--
ALTER TABLE `res_tables`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `selling_price_groups`
--
ALTER TABLE `selling_price_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stock_adjustment_lines`
--
ALTER TABLE `stock_adjustment_lines`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system`
--
ALTER TABLE `system`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tax_rates`
--
ALTER TABLE `tax_rates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `transaction_payments`
--
ALTER TABLE `transaction_payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `transaction_sell_lines`
--
ALTER TABLE `transaction_sell_lines`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `transaction_sell_lines_purchase_lines`
--
ALTER TABLE `transaction_sell_lines_purchase_lines`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `types_of_services`
--
ALTER TABLE `types_of_services`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user_contact_access`
--
ALTER TABLE `user_contact_access`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `variations`
--
ALTER TABLE `variations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `variation_group_prices`
--
ALTER TABLE `variation_group_prices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `variation_location_details`
--
ALTER TABLE `variation_location_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `variation_templates`
--
ALTER TABLE `variation_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `variation_value_templates`
--
ALTER TABLE `variation_value_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `warranties`
--
ALTER TABLE `warranties`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `barcodes`
--
ALTER TABLE `barcodes`
  ADD CONSTRAINT `barcodes_business_id_foreign` FOREIGN KEY (`business_id`) REFERENCES `business` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bookings`
--
ALTER TABLE `bookings`
  ADD CONSTRAINT `bookings_business_id_foreign` FOREIGN KEY (`business_id`) REFERENCES `business` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bookings_contact_id_foreign` FOREIGN KEY (`contact_id`) REFERENCES `contacts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bookings_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `brands`
--
ALTER TABLE `brands`
  ADD CONSTRAINT `brands_business_id_foreign` FOREIGN KEY (`business_id`) REFERENCES `business` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `brands_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `business`
--
ALTER TABLE `business`
  ADD CONSTRAINT `business_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`),
  ADD CONSTRAINT `business_default_sales_tax_foreign` FOREIGN KEY (`default_sales_tax`) REFERENCES `tax_rates` (`id`),
  ADD CONSTRAINT `business_owner_id_foreign` FOREIGN KEY (`owner_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `business_locations`
--
ALTER TABLE `business_locations`
  ADD CONSTRAINT `business_locations_business_id_foreign` FOREIGN KEY (`business_id`) REFERENCES `business` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `business_locations_invoice_layout_id_foreign` FOREIGN KEY (`invoice_layout_id`) REFERENCES `invoice_layouts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `business_locations_invoice_scheme_id_foreign` FOREIGN KEY (`invoice_scheme_id`) REFERENCES `invoice_schemes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cash_registers`
--
ALTER TABLE `cash_registers`
  ADD CONSTRAINT `cash_registers_business_id_foreign` FOREIGN KEY (`business_id`) REFERENCES `business` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cash_registers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cash_register_transactions`
--
ALTER TABLE `cash_register_transactions`
  ADD CONSTRAINT `cash_register_transactions_cash_register_id_foreign` FOREIGN KEY (`cash_register_id`) REFERENCES `cash_registers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_business_id_foreign` FOREIGN KEY (`business_id`) REFERENCES `business` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `categories_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `contacts`
--
ALTER TABLE `contacts`
  ADD CONSTRAINT `contacts_business_id_foreign` FOREIGN KEY (`business_id`) REFERENCES `business` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `contacts_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `customer_groups`
--
ALTER TABLE `customer_groups`
  ADD CONSTRAINT `customer_groups_business_id_foreign` FOREIGN KEY (`business_id`) REFERENCES `business` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `dashboard_configurations`
--
ALTER TABLE `dashboard_configurations`
  ADD CONSTRAINT `dashboard_configurations_business_id_foreign` FOREIGN KEY (`business_id`) REFERENCES `business` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `expense_categories`
--
ALTER TABLE `expense_categories`
  ADD CONSTRAINT `expense_categories_business_id_foreign` FOREIGN KEY (`business_id`) REFERENCES `business` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `group_sub_taxes`
--
ALTER TABLE `group_sub_taxes`
  ADD CONSTRAINT `group_sub_taxes_group_tax_id_foreign` FOREIGN KEY (`group_tax_id`) REFERENCES `tax_rates` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `group_sub_taxes_tax_id_foreign` FOREIGN KEY (`tax_id`) REFERENCES `tax_rates` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `invoice_layouts`
--
ALTER TABLE `invoice_layouts`
  ADD CONSTRAINT `invoice_layouts_business_id_foreign` FOREIGN KEY (`business_id`) REFERENCES `business` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `invoice_schemes`
--
ALTER TABLE `invoice_schemes`
  ADD CONSTRAINT `invoice_schemes_business_id_foreign` FOREIGN KEY (`business_id`) REFERENCES `business` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `printers`
--
ALTER TABLE `printers`
  ADD CONSTRAINT `printers_business_id_foreign` FOREIGN KEY (`business_id`) REFERENCES `business` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_business_id_foreign` FOREIGN KEY (`business_id`) REFERENCES `business` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_sub_category_id_foreign` FOREIGN KEY (`sub_category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_tax_foreign` FOREIGN KEY (`tax`) REFERENCES `tax_rates` (`id`),
  ADD CONSTRAINT `products_unit_id_foreign` FOREIGN KEY (`unit_id`) REFERENCES `units` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_variations`
--
ALTER TABLE `product_variations`
  ADD CONSTRAINT `product_variations_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `purchase_lines`
--
ALTER TABLE `purchase_lines`
  ADD CONSTRAINT `purchase_lines_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `purchase_lines_tax_id_foreign` FOREIGN KEY (`tax_id`) REFERENCES `tax_rates` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `purchase_lines_transaction_id_foreign` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `purchase_lines_variation_id_foreign` FOREIGN KEY (`variation_id`) REFERENCES `variations` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `res_product_modifier_sets`
--
ALTER TABLE `res_product_modifier_sets`
  ADD CONSTRAINT `res_product_modifier_sets_modifier_set_id_foreign` FOREIGN KEY (`modifier_set_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `res_tables`
--
ALTER TABLE `res_tables`
  ADD CONSTRAINT `res_tables_business_id_foreign` FOREIGN KEY (`business_id`) REFERENCES `business` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `roles`
--
ALTER TABLE `roles`
  ADD CONSTRAINT `roles_business_id_foreign` FOREIGN KEY (`business_id`) REFERENCES `business` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `selling_price_groups`
--
ALTER TABLE `selling_price_groups`
  ADD CONSTRAINT `selling_price_groups_business_id_foreign` FOREIGN KEY (`business_id`) REFERENCES `business` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `stock_adjustment_lines`
--
ALTER TABLE `stock_adjustment_lines`
  ADD CONSTRAINT `stock_adjustment_lines_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `stock_adjustment_lines_transaction_id_foreign` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `stock_adjustment_lines_variation_id_foreign` FOREIGN KEY (`variation_id`) REFERENCES `variations` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tax_rates`
--
ALTER TABLE `tax_rates`
  ADD CONSTRAINT `tax_rates_business_id_foreign` FOREIGN KEY (`business_id`) REFERENCES `business` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tax_rates_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_business_id_foreign` FOREIGN KEY (`business_id`) REFERENCES `business` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_contact_id_foreign` FOREIGN KEY (`contact_id`) REFERENCES `contacts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_expense_category_id_foreign` FOREIGN KEY (`expense_category_id`) REFERENCES `expense_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_expense_for_foreign` FOREIGN KEY (`expense_for`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_location_id_foreign` FOREIGN KEY (`location_id`) REFERENCES `business_locations` (`id`),
  ADD CONSTRAINT `transactions_tax_id_foreign` FOREIGN KEY (`tax_id`) REFERENCES `tax_rates` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transaction_payments`
--
ALTER TABLE `transaction_payments`
  ADD CONSTRAINT `transaction_payments_transaction_id_foreign` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transaction_sell_lines`
--
ALTER TABLE `transaction_sell_lines`
  ADD CONSTRAINT `transaction_sell_lines_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transaction_sell_lines_tax_id_foreign` FOREIGN KEY (`tax_id`) REFERENCES `tax_rates` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transaction_sell_lines_transaction_id_foreign` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transaction_sell_lines_variation_id_foreign` FOREIGN KEY (`variation_id`) REFERENCES `variations` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `units`
--
ALTER TABLE `units`
  ADD CONSTRAINT `units_business_id_foreign` FOREIGN KEY (`business_id`) REFERENCES `business` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `units_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_business_id_foreign` FOREIGN KEY (`business_id`) REFERENCES `business` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `variations`
--
ALTER TABLE `variations`
  ADD CONSTRAINT `variations_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `variations_product_variation_id_foreign` FOREIGN KEY (`product_variation_id`) REFERENCES `product_variations` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `variation_group_prices`
--
ALTER TABLE `variation_group_prices`
  ADD CONSTRAINT `variation_group_prices_price_group_id_foreign` FOREIGN KEY (`price_group_id`) REFERENCES `selling_price_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `variation_group_prices_variation_id_foreign` FOREIGN KEY (`variation_id`) REFERENCES `variations` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `variation_location_details`
--
ALTER TABLE `variation_location_details`
  ADD CONSTRAINT `variation_location_details_location_id_foreign` FOREIGN KEY (`location_id`) REFERENCES `business_locations` (`id`),
  ADD CONSTRAINT `variation_location_details_variation_id_foreign` FOREIGN KEY (`variation_id`) REFERENCES `variations` (`id`);

--
-- Constraints for table `variation_templates`
--
ALTER TABLE `variation_templates`
  ADD CONSTRAINT `variation_templates_business_id_foreign` FOREIGN KEY (`business_id`) REFERENCES `business` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `variation_value_templates`
--
ALTER TABLE `variation_value_templates`
  ADD CONSTRAINT `variation_value_templates_variation_template_id_foreign` FOREIGN KEY (`variation_template_id`) REFERENCES `variation_templates` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
