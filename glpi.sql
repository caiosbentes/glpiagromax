-- phpMyAdmin SQL Dump
-- version 4.6.6deb4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 01/08/2018 às 10:26
-- Versão do servidor: 10.1.26-MariaDB-0+deb9u1
-- Versão do PHP: 7.0.30-0+deb9u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `glpi`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_alerts`
--

CREATE TABLE `glpi_alerts` (
  `id` int(11) NOT NULL,
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0' COMMENT 'see define.php ALERT_* constant',
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_apiclients`
--

CREATE TABLE `glpi_apiclients` (
  `id` int(11) NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `ipv4_range_start` bigint(20) DEFAULT NULL,
  `ipv4_range_end` bigint(20) DEFAULT NULL,
  `ipv6` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `app_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `app_token_date` datetime DEFAULT NULL,
  `dolog_method` tinyint(4) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `glpi_apiclients`
--

INSERT INTO `glpi_apiclients` (`id`, `entities_id`, `is_recursive`, `name`, `date_mod`, `is_active`, `ipv4_range_start`, `ipv4_range_end`, `ipv6`, `app_token`, `app_token_date`, `dolog_method`, `comment`) VALUES
(1, 0, 1, 'full access from localhost', NULL, 1, 2130706433, 2130706433, '::1', '', NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_authldapreplicates`
--

CREATE TABLE `glpi_authldapreplicates` (
  `id` int(11) NOT NULL,
  `authldaps_id` int(11) NOT NULL DEFAULT '0',
  `host` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `port` int(11) NOT NULL DEFAULT '389',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_authldaps`
--

CREATE TABLE `glpi_authldaps` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `host` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `basedn` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rootdn` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `port` int(11) NOT NULL DEFAULT '389',
  `condition` text COLLATE utf8_unicode_ci,
  `login_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'uid',
  `sync_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `use_tls` tinyint(1) NOT NULL DEFAULT '0',
  `group_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `group_condition` text COLLATE utf8_unicode_ci,
  `group_search_type` int(11) NOT NULL DEFAULT '0',
  `group_member_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email1_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `realname_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `firstname_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone2_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `use_dn` tinyint(1) NOT NULL DEFAULT '1',
  `time_offset` int(11) NOT NULL DEFAULT '0' COMMENT 'in seconds',
  `deref_option` int(11) NOT NULL DEFAULT '0',
  `title_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entity_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entity_condition` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `rootdn_passwd` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `registration_number_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email2_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email3_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email4_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pagesize` int(11) NOT NULL DEFAULT '0',
  `ldap_maxlimit` int(11) NOT NULL DEFAULT '0',
  `can_support_pagesize` tinyint(1) NOT NULL DEFAULT '0',
  `picture_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  `inventory_domain` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_authmails`
--

CREATE TABLE `glpi_authmails` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `connect_string` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `host` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `is_active` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_autoupdatesystems`
--

CREATE TABLE `glpi_autoupdatesystems` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_blacklistedmailcontents`
--

CREATE TABLE `glpi_blacklistedmailcontents` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_blacklists`
--

CREATE TABLE `glpi_blacklists` (
  `id` int(11) NOT NULL,
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `glpi_blacklists`
--

INSERT INTO `glpi_blacklists` (`id`, `type`, `name`, `value`, `comment`, `date_mod`, `date_creation`) VALUES
(1, 1, 'empty IP', '', NULL, NULL, NULL),
(2, 1, 'localhost', '127.0.0.1', NULL, NULL, NULL),
(3, 1, 'zero IP', '0.0.0.0', NULL, NULL, NULL),
(4, 2, 'empty MAC', '', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_budgets`
--

CREATE TABLE `glpi_budgets` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `begin_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `value` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `is_template` tinyint(1) NOT NULL DEFAULT '0',
  `template_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `budgettypes_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_budgettypes`
--

CREATE TABLE `glpi_budgettypes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_businesscriticities`
--

CREATE TABLE `glpi_businesscriticities` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  `businesscriticities_id` int(11) NOT NULL DEFAULT '0',
  `completename` text COLLATE utf8_unicode_ci,
  `level` int(11) NOT NULL DEFAULT '0',
  `ancestors_cache` longtext COLLATE utf8_unicode_ci,
  `sons_cache` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_calendars`
--

CREATE TABLE `glpi_calendars` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `cache_duration` text COLLATE utf8_unicode_ci,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `glpi_calendars`
--

INSERT INTO `glpi_calendars` (`id`, `name`, `entities_id`, `is_recursive`, `comment`, `date_mod`, `cache_duration`, `date_creation`) VALUES
(1, 'Default', 0, 1, 'Default calendar', NULL, '[0,43200,43200,43200,43200,43200,0]', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_calendarsegments`
--

CREATE TABLE `glpi_calendarsegments` (
  `id` int(11) NOT NULL,
  `calendars_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `day` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'numer of the day based on date(w)',
  `begin` time DEFAULT NULL,
  `end` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `glpi_calendarsegments`
--

INSERT INTO `glpi_calendarsegments` (`id`, `calendars_id`, `entities_id`, `is_recursive`, `day`, `begin`, `end`) VALUES
(1, 1, 0, 0, 1, '08:00:00', '20:00:00'),
(2, 1, 0, 0, 2, '08:00:00', '20:00:00'),
(3, 1, 0, 0, 3, '08:00:00', '20:00:00'),
(4, 1, 0, 0, 4, '08:00:00', '20:00:00'),
(5, 1, 0, 0, 5, '08:00:00', '20:00:00');

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_calendars_holidays`
--

CREATE TABLE `glpi_calendars_holidays` (
  `id` int(11) NOT NULL,
  `calendars_id` int(11) NOT NULL DEFAULT '0',
  `holidays_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_cartridgeitems`
--

CREATE TABLE `glpi_cartridgeitems` (
  `id` int(11) NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ref` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `cartridgeitemtypes_id` int(11) NOT NULL DEFAULT '0',
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `users_id_tech` int(11) NOT NULL DEFAULT '0',
  `groups_id_tech` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `alarm_threshold` int(11) NOT NULL DEFAULT '10',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_cartridgeitems_printermodels`
--

CREATE TABLE `glpi_cartridgeitems_printermodels` (
  `id` int(11) NOT NULL,
  `cartridgeitems_id` int(11) NOT NULL DEFAULT '0',
  `printermodels_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_cartridgeitemtypes`
--

CREATE TABLE `glpi_cartridgeitemtypes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_cartridges`
--

CREATE TABLE `glpi_cartridges` (
  `id` int(11) NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `cartridgeitems_id` int(11) NOT NULL DEFAULT '0',
  `printers_id` int(11) NOT NULL DEFAULT '0',
  `date_in` date DEFAULT NULL,
  `date_use` date DEFAULT NULL,
  `date_out` date DEFAULT NULL,
  `pages` int(11) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_certificates`
--

CREATE TABLE `glpi_certificates` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `serial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `otherserial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_template` tinyint(1) NOT NULL DEFAULT '0',
  `template_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `certificatetypes_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_certificatetypes (id)',
  `dns_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dns_suffix` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `users_id_tech` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_users (id)',
  `groups_id_tech` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_groups (id)',
  `locations_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_locations (id)',
  `manufacturers_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_manufacturers (id)',
  `contact` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_num` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `groups_id` int(11) NOT NULL DEFAULT '0',
  `is_autosign` tinyint(1) NOT NULL DEFAULT '0',
  `date_expiration` date DEFAULT NULL,
  `states_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to states (id)',
  `command` text COLLATE utf8_unicode_ci,
  `certificate_request` text COLLATE utf8_unicode_ci,
  `certificate_item` text COLLATE utf8_unicode_ci,
  `date_creation` datetime DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_certificates_items`
--

CREATE TABLE `glpi_certificates_items` (
  `id` int(11) NOT NULL,
  `certificates_id` int(11) NOT NULL DEFAULT '0',
  `items_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to various tables, according to itemtype (id)',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'see .class.php file',
  `date_creation` datetime DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_certificatetypes`
--

CREATE TABLE `glpi_certificatetypes` (
  `id` int(11) NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_creation` datetime DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_changecosts`
--

CREATE TABLE `glpi_changecosts` (
  `id` int(11) NOT NULL,
  `changes_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `begin_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `actiontime` int(11) NOT NULL DEFAULT '0',
  `cost_time` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `cost_fixed` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `cost_material` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `budgets_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_changes`
--

CREATE TABLE `glpi_changes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1',
  `content` longtext COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `solvedate` datetime DEFAULT NULL,
  `closedate` datetime DEFAULT NULL,
  `time_to_resolve` datetime DEFAULT NULL,
  `users_id_recipient` int(11) NOT NULL DEFAULT '0',
  `users_id_lastupdater` int(11) NOT NULL DEFAULT '0',
  `urgency` int(11) NOT NULL DEFAULT '1',
  `impact` int(11) NOT NULL DEFAULT '1',
  `priority` int(11) NOT NULL DEFAULT '1',
  `itilcategories_id` int(11) NOT NULL DEFAULT '0',
  `impactcontent` longtext COLLATE utf8_unicode_ci,
  `controlistcontent` longtext COLLATE utf8_unicode_ci,
  `rolloutplancontent` longtext COLLATE utf8_unicode_ci,
  `backoutplancontent` longtext COLLATE utf8_unicode_ci,
  `checklistcontent` longtext COLLATE utf8_unicode_ci,
  `global_validation` int(11) NOT NULL DEFAULT '1',
  `validation_percent` int(11) NOT NULL DEFAULT '0',
  `actiontime` int(11) NOT NULL DEFAULT '0',
  `begin_waiting_date` datetime DEFAULT NULL,
  `waiting_duration` int(11) NOT NULL DEFAULT '0',
  `close_delay_stat` int(11) NOT NULL DEFAULT '0',
  `solve_delay_stat` int(11) NOT NULL DEFAULT '0',
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_changes_groups`
--

CREATE TABLE `glpi_changes_groups` (
  `id` int(11) NOT NULL,
  `changes_id` int(11) NOT NULL DEFAULT '0',
  `groups_id` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_changes_items`
--

CREATE TABLE `glpi_changes_items` (
  `id` int(11) NOT NULL,
  `changes_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_changes_problems`
--

CREATE TABLE `glpi_changes_problems` (
  `id` int(11) NOT NULL,
  `changes_id` int(11) NOT NULL DEFAULT '0',
  `problems_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_changes_projects`
--

CREATE TABLE `glpi_changes_projects` (
  `id` int(11) NOT NULL,
  `changes_id` int(11) NOT NULL DEFAULT '0',
  `projects_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_changes_suppliers`
--

CREATE TABLE `glpi_changes_suppliers` (
  `id` int(11) NOT NULL,
  `changes_id` int(11) NOT NULL DEFAULT '0',
  `suppliers_id` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '1',
  `use_notification` tinyint(1) NOT NULL DEFAULT '0',
  `alternative_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_changes_tickets`
--

CREATE TABLE `glpi_changes_tickets` (
  `id` int(11) NOT NULL,
  `changes_id` int(11) NOT NULL DEFAULT '0',
  `tickets_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_changes_users`
--

CREATE TABLE `glpi_changes_users` (
  `id` int(11) NOT NULL,
  `changes_id` int(11) NOT NULL DEFAULT '0',
  `users_id` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '1',
  `use_notification` tinyint(1) NOT NULL DEFAULT '0',
  `alternative_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_changetasks`
--

CREATE TABLE `glpi_changetasks` (
  `id` int(11) NOT NULL,
  `changes_id` int(11) NOT NULL DEFAULT '0',
  `taskcategories_id` int(11) NOT NULL DEFAULT '0',
  `state` int(11) NOT NULL DEFAULT '0',
  `date` datetime DEFAULT NULL,
  `begin` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `users_id_editor` int(11) NOT NULL DEFAULT '0',
  `users_id_tech` int(11) NOT NULL DEFAULT '0',
  `groups_id_tech` int(11) NOT NULL DEFAULT '0',
  `content` longtext COLLATE utf8_unicode_ci,
  `actiontime` int(11) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  `tasktemplates_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_changevalidations`
--

CREATE TABLE `glpi_changevalidations` (
  `id` int(11) NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `users_id` int(11) NOT NULL DEFAULT '0',
  `changes_id` int(11) NOT NULL DEFAULT '0',
  `users_id_validate` int(11) NOT NULL DEFAULT '0',
  `comment_submission` text COLLATE utf8_unicode_ci,
  `comment_validation` text COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '2',
  `submission_date` datetime DEFAULT NULL,
  `validation_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_computerantiviruses`
--

CREATE TABLE `glpi_computerantiviruses` (
  `id` int(11) NOT NULL,
  `computers_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `antivirus_version` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `signature_version` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_uptodate` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `date_expiration` datetime DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_computermodels`
--

CREATE TABLE `glpi_computermodels` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `product_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `weight` int(11) NOT NULL DEFAULT '0',
  `required_units` int(11) NOT NULL DEFAULT '1',
  `depth` float NOT NULL DEFAULT '1',
  `power_connections` int(11) NOT NULL DEFAULT '0',
  `power_consumption` int(11) NOT NULL DEFAULT '0',
  `is_half_rack` tinyint(1) NOT NULL DEFAULT '0',
  `picture_front` text COLLATE utf8_unicode_ci,
  `picture_rear` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_computers`
--

CREATE TABLE `glpi_computers` (
  `id` int(11) NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `serial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `otherserial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_num` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `users_id_tech` int(11) NOT NULL DEFAULT '0',
  `groups_id_tech` int(11) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `autoupdatesystems_id` int(11) NOT NULL DEFAULT '0',
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `domains_id` int(11) NOT NULL DEFAULT '0',
  `networks_id` int(11) NOT NULL DEFAULT '0',
  `computermodels_id` int(11) NOT NULL DEFAULT '0',
  `computertypes_id` int(11) NOT NULL DEFAULT '0',
  `is_template` tinyint(1) NOT NULL DEFAULT '0',
  `template_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `users_id` int(11) NOT NULL DEFAULT '0',
  `groups_id` int(11) NOT NULL DEFAULT '0',
  `states_id` int(11) NOT NULL DEFAULT '0',
  `ticket_tco` decimal(20,4) DEFAULT '0.0000',
  `uuid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_computers_items`
--

CREATE TABLE `glpi_computers_items` (
  `id` int(11) NOT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to various table, according to itemtype (ID)',
  `computers_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_computers_softwarelicenses`
--

CREATE TABLE `glpi_computers_softwarelicenses` (
  `id` int(11) NOT NULL,
  `computers_id` int(11) NOT NULL DEFAULT '0',
  `softwarelicenses_id` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_computers_softwareversions`
--

CREATE TABLE `glpi_computers_softwareversions` (
  `id` int(11) NOT NULL,
  `computers_id` int(11) NOT NULL DEFAULT '0',
  `softwareversions_id` int(11) NOT NULL DEFAULT '0',
  `is_deleted_computer` tinyint(1) NOT NULL DEFAULT '0',
  `is_template_computer` tinyint(1) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `date_install` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_computertypes`
--

CREATE TABLE `glpi_computertypes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_computervirtualmachines`
--

CREATE TABLE `glpi_computervirtualmachines` (
  `id` int(11) NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `computers_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `virtualmachinestates_id` int(11) NOT NULL DEFAULT '0',
  `virtualmachinesystems_id` int(11) NOT NULL DEFAULT '0',
  `virtualmachinetypes_id` int(11) NOT NULL DEFAULT '0',
  `uuid` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `vcpu` int(11) NOT NULL DEFAULT '0',
  `ram` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_configs`
--

CREATE TABLE `glpi_configs` (
  `id` int(11) NOT NULL,
  `context` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `glpi_configs`
--

INSERT INTO `glpi_configs` (`id`, `context`, `name`, `value`) VALUES
(1, 'core', 'version', '9.3.0'),
(2, 'core', 'show_jobs_at_login', '0'),
(3, 'core', 'cut', '250'),
(4, 'core', 'list_limit', '15'),
(5, 'core', 'list_limit_max', '50'),
(6, 'core', 'url_maxlength', '30'),
(7, 'core', 'event_loglevel', '5'),
(8, 'core', 'notifications_mailing', '0'),
(9, 'core', 'admin_email', 'admsys@localhost'),
(10, 'core', 'admin_email_name', ''),
(11, 'core', 'admin_reply', ''),
(12, 'core', 'admin_reply_name', ''),
(13, 'core', 'mailing_signature', 'SIGNATURE'),
(14, 'core', 'use_anonymous_helpdesk', '0'),
(15, 'core', 'use_anonymous_followups', '0'),
(16, 'core', 'language', 'pt_BR'),
(17, 'core', 'priority_1', '#fff2f2'),
(18, 'core', 'priority_2', '#ffe0e0'),
(19, 'core', 'priority_3', '#ffcece'),
(20, 'core', 'priority_4', '#ffbfbf'),
(21, 'core', 'priority_5', '#ffadad'),
(22, 'core', 'priority_6', '#ff5555'),
(23, 'core', 'date_tax', '2005-12-31'),
(24, 'core', 'cas_host', ''),
(25, 'core', 'cas_port', '443'),
(26, 'core', 'cas_uri', ''),
(27, 'core', 'cas_logout', ''),
(28, 'core', 'existing_auth_server_field_clean_domain', '0'),
(29, 'core', 'planning_begin', '08:00:00'),
(30, 'core', 'planning_end', '20:00:00'),
(31, 'core', 'utf8_conv', '1'),
(32, 'core', 'use_public_faq', '0'),
(33, 'core', 'url_base', 'http://glpi'),
(34, 'core', 'show_link_in_mail', '0'),
(35, 'core', 'text_login', ''),
(36, 'core', 'founded_new_version', ''),
(37, 'core', 'dropdown_max', '100'),
(38, 'core', 'ajax_wildcard', '*'),
(42, 'core', 'ajax_limit_count', '10'),
(43, 'core', 'use_ajax_autocompletion', '1'),
(44, 'core', 'is_users_auto_add', '1'),
(45, 'core', 'date_format', '0'),
(46, 'core', 'number_format', '0'),
(47, 'core', 'csv_delimiter', ';'),
(48, 'core', 'is_ids_visible', '0'),
(50, 'core', 'smtp_mode', '0'),
(51, 'core', 'smtp_host', ''),
(52, 'core', 'smtp_port', '25'),
(53, 'core', 'smtp_username', ''),
(54, 'core', 'proxy_name', ''),
(55, 'core', 'proxy_port', '8080'),
(56, 'core', 'proxy_user', ''),
(57, 'core', 'add_followup_on_update_ticket', '1'),
(58, 'core', 'keep_tickets_on_delete', '0'),
(59, 'core', 'time_step', '5'),
(60, 'core', 'decimal_number', '2'),
(61, 'core', 'helpdesk_doc_url', ''),
(62, 'core', 'central_doc_url', ''),
(63, 'core', 'documentcategories_id_forticket', '0'),
(64, 'core', 'monitors_management_restrict', '2'),
(65, 'core', 'phones_management_restrict', '2'),
(66, 'core', 'peripherals_management_restrict', '2'),
(67, 'core', 'printers_management_restrict', '2'),
(68, 'core', 'use_log_in_files', '1'),
(69, 'core', 'time_offset', '0'),
(70, 'core', 'is_contact_autoupdate', '1'),
(71, 'core', 'is_user_autoupdate', '1'),
(72, 'core', 'is_group_autoupdate', '1'),
(73, 'core', 'is_location_autoupdate', '1'),
(74, 'core', 'state_autoupdate_mode', '0'),
(75, 'core', 'is_contact_autoclean', '0'),
(76, 'core', 'is_user_autoclean', '0'),
(77, 'core', 'is_group_autoclean', '0'),
(78, 'core', 'is_location_autoclean', '0'),
(79, 'core', 'state_autoclean_mode', '0'),
(80, 'core', 'use_flat_dropdowntree', '0'),
(81, 'core', 'use_autoname_by_entity', '1'),
(84, 'core', 'softwarecategories_id_ondelete', '1'),
(85, 'core', 'x509_email_field', ''),
(86, 'core', 'x509_cn_restrict', ''),
(87, 'core', 'x509_o_restrict', ''),
(88, 'core', 'x509_ou_restrict', ''),
(89, 'core', 'default_mailcollector_filesize_max', '2097152'),
(90, 'core', 'followup_private', '0'),
(91, 'core', 'task_private', '0'),
(92, 'core', 'default_software_helpdesk_visible', '1'),
(93, 'core', 'names_format', '0'),
(95, 'core', 'default_requesttypes_id', '1'),
(96, 'core', 'use_noright_users_add', '1'),
(97, 'core', 'cron_limit', '5'),
(98, 'core', 'priority_matrix', '{\"1\":{\"1\":1,\"2\":1,\"3\":2,\"4\":2,\"5\":2},\"2\":{\"1\":1,\"2\":2,\"3\":2,\"4\":3,\"5\":3},\"3\":{\"1\":2,\"2\":2,\"3\":3,\"4\":4,\"5\":4},\"4\":{\"1\":2,\"2\":3,\"3\":4,\"4\":4,\"5\":5},\"5\":{\"1\":2,\"2\":3,\"3\":4,\"4\":5,\"5\":5}}'),
(99, 'core', 'urgency_mask', '62'),
(100, 'core', 'impact_mask', '62'),
(101, 'core', 'user_deleted_ldap', '0'),
(102, 'core', 'auto_create_infocoms', '0'),
(103, 'core', 'use_slave_for_search', '0'),
(104, 'core', 'proxy_passwd', ''),
(105, 'core', 'smtp_passwd', ''),
(106, 'core', 'transfers_id_auto', '0'),
(107, 'core', 'show_count_on_tabs', '1'),
(108, 'core', 'refresh_ticket_list', '0'),
(109, 'core', 'set_default_tech', '1'),
(110, 'core', 'allow_search_view', '2'),
(111, 'core', 'allow_search_all', '0'),
(112, 'core', 'allow_search_global', '1'),
(113, 'core', 'display_count_on_home', '5'),
(114, 'core', 'use_password_security', '0'),
(115, 'core', 'password_min_length', '8'),
(116, 'core', 'password_need_number', '1'),
(117, 'core', 'password_need_letter', '1'),
(118, 'core', 'password_need_caps', '1'),
(119, 'core', 'password_need_symbol', '1'),
(120, 'core', 'use_check_pref', '0'),
(121, 'core', 'notification_to_myself', '1'),
(122, 'core', 'duedateok_color', '#06ff00'),
(123, 'core', 'duedatewarning_color', '#ffb800'),
(124, 'core', 'duedatecritical_color', '#ff0000'),
(125, 'core', 'duedatewarning_less', '20'),
(126, 'core', 'duedatecritical_less', '5'),
(127, 'core', 'duedatewarning_unit', '%'),
(128, 'core', 'duedatecritical_unit', '%'),
(129, 'core', 'realname_ssofield', ''),
(130, 'core', 'firstname_ssofield', ''),
(131, 'core', 'email1_ssofield', ''),
(132, 'core', 'email2_ssofield', ''),
(133, 'core', 'email3_ssofield', ''),
(134, 'core', 'email4_ssofield', ''),
(135, 'core', 'phone_ssofield', ''),
(136, 'core', 'phone2_ssofield', ''),
(137, 'core', 'mobile_ssofield', ''),
(138, 'core', 'comment_ssofield', ''),
(139, 'core', 'title_ssofield', ''),
(140, 'core', 'category_ssofield', ''),
(141, 'core', 'language_ssofield', ''),
(142, 'core', 'entity_ssofield', ''),
(143, 'core', 'registration_number_ssofield', ''),
(144, 'core', 'ssovariables_id', '0'),
(145, 'core', 'translate_kb', '0'),
(146, 'core', 'translate_dropdowns', '0'),
(147, 'core', 'pdffont', 'helvetica'),
(148, 'core', 'keep_devices_when_purging_item', '0'),
(149, 'core', 'maintenance_mode', '0'),
(150, 'core', 'maintenance_text', ''),
(151, 'core', 'use_rich_text', '0'),
(152, 'core', 'attach_ticket_documents_to_mail', '0'),
(153, 'core', 'backcreated', '0'),
(154, 'core', 'task_state', '1'),
(155, 'core', 'layout', 'lefttab'),
(156, 'core', 'ticket_timeline', '1'),
(157, 'core', 'ticket_timeline_keep_replaced_tabs', '0'),
(158, 'core', 'palette', 'auror'),
(159, 'core', 'lock_use_lock_item', '0'),
(160, 'core', 'lock_autolock_mode', '1'),
(161, 'core', 'lock_directunlock_notification', '0'),
(162, 'core', 'lock_item_list', '[]'),
(163, 'core', 'lock_lockprofile_id', '8'),
(164, 'core', 'set_default_requester', '1'),
(165, 'core', 'highcontrast_css', '0'),
(166, 'core', 'smtp_check_certificate', '1'),
(167, 'core', 'enable_api', '0'),
(168, 'core', 'enable_api_login_credentials', '0'),
(169, 'core', 'enable_api_login_external_token', '1'),
(170, 'core', 'url_base_api', 'http://glpi/apirest.php/'),
(171, 'core', 'login_remember_time', '604800'),
(172, 'core', 'login_remember_default', '1'),
(173, 'core', 'use_notifications', '0'),
(174, 'core', 'notifications_ajax', '0'),
(175, 'core', 'notifications_ajax_check_interval', '5'),
(176, 'core', 'notifications_ajax_sound', NULL),
(177, 'core', 'notifications_ajax_icon_url', '/pics/glpi.png'),
(178, 'core', 'dbversion', '9.3'),
(179, 'core', 'smtp_max_retries', '5'),
(180, 'core', 'smtp_sender', NULL),
(181, 'core', 'from_email', NULL),
(182, 'core', 'from_email_name', NULL),
(183, 'core', 'instance_uuid', NULL),
(184, 'core', 'registration_uuid', 'EuI6TqETNI6t6JhT67XMUVyYtzHOO8azVMz57ZHZ'),
(185, 'core', 'smtp_retry_time', '5'),
(186, 'core', 'purge_addrelation', '0'),
(187, 'core', 'purge_deleterelation', '0'),
(188, 'core', 'purge_createitem', '0'),
(189, 'core', 'purge_deleteitem', '0'),
(190, 'core', 'purge_restoreitem', '0'),
(191, 'core', 'purge_updateitem', '0'),
(192, 'core', 'purge_computer_software_install', '0'),
(193, 'core', 'purge_software_computer_install', '0'),
(194, 'core', 'purge_software_version_install', '0'),
(195, 'core', 'purge_infocom_creation', '0'),
(196, 'core', 'purge_profile_user', '0'),
(197, 'core', 'purge_group_user', '0'),
(198, 'core', 'purge_adddevice', '0'),
(199, 'core', 'purge_updatedevice', '0'),
(200, 'core', 'purge_deletedevice', '0'),
(201, 'core', 'purge_connectdevice', '0'),
(202, 'core', 'purge_disconnectdevice', '0'),
(203, 'core', 'purge_userdeletedfromldap', '0'),
(204, 'core', 'purge_comments', '0'),
(205, 'core', 'purge_datemod', '0'),
(206, 'core', 'purge_all', '0'),
(207, 'core', 'purge_user_auth_changes', '0'),
(208, 'core', 'purge_plugins', '0'),
(209, 'core', '_no_history', '');

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_consumableitems`
--

CREATE TABLE `glpi_consumableitems` (
  `id` int(11) NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ref` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `consumableitemtypes_id` int(11) NOT NULL DEFAULT '0',
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `users_id_tech` int(11) NOT NULL DEFAULT '0',
  `groups_id_tech` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `alarm_threshold` int(11) NOT NULL DEFAULT '10',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_consumableitemtypes`
--

CREATE TABLE `glpi_consumableitemtypes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_consumables`
--

CREATE TABLE `glpi_consumables` (
  `id` int(11) NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `consumableitems_id` int(11) NOT NULL DEFAULT '0',
  `date_in` date DEFAULT NULL,
  `date_out` date DEFAULT NULL,
  `itemtype` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_contacts`
--

CREATE TABLE `glpi_contacts` (
  `id` int(11) NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `firstname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contacttypes_id` int(11) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `usertitles_id` int(11) NOT NULL DEFAULT '0',
  `address` text COLLATE utf8_unicode_ci,
  `postcode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `town` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_contacts_suppliers`
--

CREATE TABLE `glpi_contacts_suppliers` (
  `id` int(11) NOT NULL,
  `suppliers_id` int(11) NOT NULL DEFAULT '0',
  `contacts_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_contacttypes`
--

CREATE TABLE `glpi_contacttypes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_contractcosts`
--

CREATE TABLE `glpi_contractcosts` (
  `id` int(11) NOT NULL,
  `contracts_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `begin_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `cost` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `budgets_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_contracts`
--

CREATE TABLE `glpi_contracts` (
  `id` int(11) NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `num` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contracttypes_id` int(11) NOT NULL DEFAULT '0',
  `begin_date` date DEFAULT NULL,
  `duration` int(11) NOT NULL DEFAULT '0',
  `notice` int(11) NOT NULL DEFAULT '0',
  `periodicity` int(11) NOT NULL DEFAULT '0',
  `billing` int(11) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `accounting_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `week_begin_hour` time NOT NULL DEFAULT '00:00:00',
  `week_end_hour` time NOT NULL DEFAULT '00:00:00',
  `saturday_begin_hour` time NOT NULL DEFAULT '00:00:00',
  `saturday_end_hour` time NOT NULL DEFAULT '00:00:00',
  `use_saturday` tinyint(1) NOT NULL DEFAULT '0',
  `monday_begin_hour` time NOT NULL DEFAULT '00:00:00',
  `monday_end_hour` time NOT NULL DEFAULT '00:00:00',
  `use_monday` tinyint(1) NOT NULL DEFAULT '0',
  `max_links_allowed` int(11) NOT NULL DEFAULT '0',
  `alert` int(11) NOT NULL DEFAULT '0',
  `renewal` int(11) NOT NULL DEFAULT '0',
  `template_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_template` tinyint(1) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_contracts_items`
--

CREATE TABLE `glpi_contracts_items` (
  `id` int(11) NOT NULL,
  `contracts_id` int(11) NOT NULL DEFAULT '0',
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_contracts_suppliers`
--

CREATE TABLE `glpi_contracts_suppliers` (
  `id` int(11) NOT NULL,
  `suppliers_id` int(11) NOT NULL DEFAULT '0',
  `contracts_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_contracttypes`
--

CREATE TABLE `glpi_contracttypes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_crontasklogs`
--

CREATE TABLE `glpi_crontasklogs` (
  `id` int(11) NOT NULL,
  `crontasks_id` int(11) NOT NULL,
  `crontasklogs_id` int(11) NOT NULL COMMENT 'id of ''start'' event',
  `date` datetime NOT NULL,
  `state` int(11) NOT NULL COMMENT '0:start, 1:run, 2:stop',
  `elapsed` float NOT NULL COMMENT 'time elapsed since start',
  `volume` int(11) NOT NULL COMMENT 'for statistics',
  `content` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'message'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `glpi_crontasklogs`
--

INSERT INTO `glpi_crontasklogs` (`id`, `crontasks_id`, `crontasklogs_id`, `date`, `state`, `elapsed`, `volume`, `content`) VALUES
(1, 18, 0, '2018-07-25 10:45:27', 0, 0, 0, 'Run mode: GLPI'),
(2, 18, 1, '2018-07-25 10:45:27', 2, 0.0252972, 0, 'Action completed, no processing required'),
(3, 19, 0, '2018-07-25 11:18:49', 0, 0, 0, 'Run mode: GLPI'),
(4, 19, 3, '2018-07-25 11:18:49', 2, 0.0171161, 0, 'Action completed, fully processed'),
(5, 20, 0, '2018-07-25 11:27:53', 0, 0, 0, 'Run mode: GLPI'),
(6, 20, 5, '2018-07-25 11:27:53', 2, 0.0170681, 0, 'Action completed, no processing required'),
(7, 21, 0, '2018-07-25 11:42:11', 0, 0, 0, 'Run mode: GLPI'),
(8, 21, 7, '2018-07-25 11:42:11', 2, 0.0105669, 0, 'Action completed, no processing required'),
(9, 22, 0, '2018-07-25 11:59:35', 0, 0, 0, 'Run mode: GLPI'),
(10, 22, 9, '2018-07-25 11:59:35', 2, 0.00938582, 0, 'Action completed, no processing required'),
(11, 23, 0, '2018-07-25 12:06:00', 0, 0, 0, 'Run mode: GLPI'),
(12, 23, 11, '2018-07-25 12:06:00', 2, 0.0192671, 0, 'Action completed, no processing required');

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_crontasks`
--

CREATE TABLE `glpi_crontasks` (
  `id` int(11) NOT NULL,
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL COMMENT 'task name',
  `frequency` int(11) NOT NULL COMMENT 'second between launch',
  `param` int(11) DEFAULT NULL COMMENT 'task specify parameter',
  `state` int(11) NOT NULL DEFAULT '1' COMMENT '0:disabled, 1:waiting, 2:running',
  `mode` int(11) NOT NULL DEFAULT '1' COMMENT '1:internal, 2:external',
  `allowmode` int(11) NOT NULL DEFAULT '3' COMMENT '1:internal, 2:external, 3:both',
  `hourmin` int(11) NOT NULL DEFAULT '0',
  `hourmax` int(11) NOT NULL DEFAULT '24',
  `logs_lifetime` int(11) NOT NULL DEFAULT '30' COMMENT 'number of days',
  `lastrun` datetime DEFAULT NULL COMMENT 'last run date',
  `lastcode` int(11) DEFAULT NULL COMMENT 'last run return code',
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Task run by internal / external cron.';

--
-- Fazendo dump de dados para tabela `glpi_crontasks`
--

INSERT INTO `glpi_crontasks` (`id`, `itemtype`, `name`, `frequency`, `param`, `state`, `mode`, `allowmode`, `hourmin`, `hourmax`, `logs_lifetime`, `lastrun`, `lastcode`, `comment`, `date_mod`, `date_creation`) VALUES
(2, 'CartridgeItem', 'cartridge', 86400, 10, 0, 1, 3, 0, 24, 30, NULL, NULL, NULL, NULL, NULL),
(3, 'ConsumableItem', 'consumable', 86400, 10, 0, 1, 3, 0, 24, 30, NULL, NULL, NULL, NULL, NULL),
(4, 'SoftwareLicense', 'software', 86400, NULL, 0, 1, 3, 0, 24, 30, NULL, NULL, NULL, NULL, NULL),
(5, 'Contract', 'contract', 86400, NULL, 1, 1, 3, 0, 24, 30, '2010-05-06 09:31:02', NULL, NULL, NULL, NULL),
(6, 'InfoCom', 'infocom', 86400, NULL, 1, 1, 3, 0, 24, 30, '2011-01-18 11:40:43', NULL, NULL, NULL, NULL),
(7, 'CronTask', 'logs', 86400, 30, 0, 1, 3, 0, 24, 30, NULL, NULL, NULL, NULL, NULL),
(9, 'MailCollector', 'mailgate', 600, 10, 1, 1, 3, 0, 24, 30, '2011-06-28 11:34:37', NULL, NULL, NULL, NULL),
(10, 'DBconnection', 'checkdbreplicate', 300, NULL, 0, 1, 3, 0, 24, 30, NULL, NULL, NULL, NULL, NULL),
(11, 'CronTask', 'checkupdate', 604800, NULL, 0, 1, 3, 0, 24, 30, NULL, NULL, NULL, NULL, NULL),
(12, 'CronTask', 'session', 86400, NULL, 1, 1, 3, 0, 24, 30, '2011-08-30 08:22:27', NULL, NULL, NULL, NULL),
(13, 'CronTask', 'graph', 3600, NULL, 1, 1, 3, 0, 24, 30, '2011-12-06 09:48:42', NULL, NULL, NULL, NULL),
(14, 'ReservationItem', 'reservation', 3600, NULL, 1, 1, 3, 0, 24, 30, '2012-04-05 20:31:57', NULL, NULL, NULL, NULL),
(15, 'Ticket', 'closeticket', 43200, NULL, 1, 1, 3, 0, 24, 30, '2014-01-15 14:35:00', NULL, NULL, NULL, NULL),
(16, 'Ticket', 'alertnotclosed', 43200, NULL, 1, 1, 3, 0, 24, 30, '2014-04-16 15:32:00', NULL, NULL, NULL, NULL),
(17, 'SlaLevel_Ticket', 'slaticket', 300, NULL, 1, 1, 3, 0, 24, 30, '2014-06-18 08:02:00', NULL, NULL, NULL, NULL),
(18, 'Ticket', 'createinquest', 86400, NULL, 1, 1, 3, 0, 24, 30, '2018-07-25 10:45:00', NULL, NULL, NULL, NULL),
(19, 'Crontask', 'watcher', 86400, NULL, 1, 1, 3, 0, 24, 30, '2018-07-25 11:18:00', NULL, NULL, NULL, NULL),
(20, 'TicketRecurrent', 'ticketrecurrent', 3600, NULL, 1, 1, 3, 0, 24, 30, '2018-07-25 11:27:00', NULL, NULL, NULL, NULL),
(21, 'PlanningRecall', 'planningrecall', 300, NULL, 1, 1, 3, 0, 24, 30, '2018-07-25 11:42:00', NULL, NULL, NULL, NULL),
(22, 'QueuedNotification', 'queuednotification', 60, 50, 1, 1, 3, 0, 24, 30, '2018-07-25 11:59:00', NULL, NULL, NULL, NULL),
(23, 'QueuedNotification', 'queuednotificationclean', 86400, 30, 1, 1, 3, 0, 24, 30, '2018-07-25 12:06:00', NULL, NULL, NULL, NULL),
(24, 'Crontask', 'temp', 3600, NULL, 1, 1, 3, 0, 24, 30, NULL, NULL, NULL, NULL, NULL),
(25, 'MailCollector', 'mailgateerror', 86400, NULL, 1, 1, 3, 0, 24, 30, NULL, NULL, NULL, NULL, NULL),
(26, 'Crontask', 'circularlogs', 86400, 4, 0, 1, 3, 0, 24, 30, NULL, NULL, NULL, NULL, NULL),
(27, 'ObjectLock', 'unlockobject', 86400, 4, 0, 1, 3, 0, 24, 30, NULL, NULL, NULL, NULL, NULL),
(28, 'SavedSearch', 'countAll', 604800, NULL, 0, 1, 3, 0, 24, 10, NULL, NULL, NULL, NULL, NULL),
(29, 'SavedSearch_Alert', 'savedsearchesalerts', 86400, NULL, 0, 1, 3, 0, 24, 10, NULL, NULL, NULL, NULL, NULL),
(30, 'Telemetry', 'telemetry', 2592000, NULL, 0, 1, 3, 0, 24, 10, NULL, NULL, NULL, NULL, NULL),
(31, 'Certificate', 'certificate', 86400, NULL, 0, 1, 3, 0, 24, 10, NULL, NULL, NULL, NULL, NULL),
(32, 'OlaLevel_Ticket', 'olaticket', 300, NULL, 1, 1, 3, 0, 24, 30, '2014-06-18 08:02:00', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_datacenters`
--

CREATE TABLE `glpi_datacenters` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_dcrooms`
--

CREATE TABLE `glpi_dcrooms` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `vis_cols` int(11) DEFAULT NULL,
  `vis_rows` int(11) DEFAULT NULL,
  `blueprint` text COLLATE utf8_unicode_ci,
  `datacenters_id` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_devicebatteries`
--

CREATE TABLE `glpi_devicebatteries` (
  `id` int(11) NOT NULL,
  `designation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `voltage` int(11) DEFAULT NULL,
  `capacity` int(11) DEFAULT NULL,
  `devicebatterytypes_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `devicebatterymodels_id` int(11) DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_devicebatterymodels`
--

CREATE TABLE `glpi_devicebatterymodels` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `product_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_devicebatterytypes`
--

CREATE TABLE `glpi_devicebatterytypes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_devicecasemodels`
--

CREATE TABLE `glpi_devicecasemodels` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `product_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_devicecases`
--

CREATE TABLE `glpi_devicecases` (
  `id` int(11) NOT NULL,
  `designation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `devicecasetypes_id` int(11) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `devicecasemodels_id` int(11) DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_devicecasetypes`
--

CREATE TABLE `glpi_devicecasetypes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_devicecontrolmodels`
--

CREATE TABLE `glpi_devicecontrolmodels` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `product_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_devicecontrols`
--

CREATE TABLE `glpi_devicecontrols` (
  `id` int(11) NOT NULL,
  `designation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_raid` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `interfacetypes_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `devicecontrolmodels_id` int(11) DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_devicedrivemodels`
--

CREATE TABLE `glpi_devicedrivemodels` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `product_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_devicedrives`
--

CREATE TABLE `glpi_devicedrives` (
  `id` int(11) NOT NULL,
  `designation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_writer` tinyint(1) NOT NULL DEFAULT '1',
  `speed` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `interfacetypes_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `devicedrivemodels_id` int(11) DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_devicefirmwaremodels`
--

CREATE TABLE `glpi_devicefirmwaremodels` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `product_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_devicefirmwares`
--

CREATE TABLE `glpi_devicefirmwares` (
  `id` int(11) NOT NULL,
  `designation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `version` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `devicefirmwaretypes_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `devicefirmwaremodels_id` int(11) DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_devicefirmwaretypes`
--

CREATE TABLE `glpi_devicefirmwaretypes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `glpi_devicefirmwaretypes`
--

INSERT INTO `glpi_devicefirmwaretypes` (`id`, `name`, `comment`, `date_mod`, `date_creation`) VALUES
(1, 'BIOS', NULL, NULL, NULL),
(2, 'UEFI', NULL, NULL, NULL),
(3, 'Firmware', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_devicegenericmodels`
--

CREATE TABLE `glpi_devicegenericmodels` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `product_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_devicegenerics`
--

CREATE TABLE `glpi_devicegenerics` (
  `id` int(11) NOT NULL,
  `designation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `devicegenerictypes_id` int(11) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `states_id` int(11) NOT NULL DEFAULT '0',
  `devicegenericmodels_id` int(11) DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_devicegenerictypes`
--

CREATE TABLE `glpi_devicegenerictypes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_devicegraphiccardmodels`
--

CREATE TABLE `glpi_devicegraphiccardmodels` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `product_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_devicegraphiccards`
--

CREATE TABLE `glpi_devicegraphiccards` (
  `id` int(11) NOT NULL,
  `designation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `interfacetypes_id` int(11) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `memory_default` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `devicegraphiccardmodels_id` int(11) DEFAULT NULL,
  `chipset` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_deviceharddrivemodels`
--

CREATE TABLE `glpi_deviceharddrivemodels` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `product_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_deviceharddrives`
--

CREATE TABLE `glpi_deviceharddrives` (
  `id` int(11) NOT NULL,
  `designation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rpm` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `interfacetypes_id` int(11) NOT NULL DEFAULT '0',
  `cache` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `capacity_default` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `deviceharddrivemodels_id` int(11) DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_devicememories`
--

CREATE TABLE `glpi_devicememories` (
  `id` int(11) NOT NULL,
  `designation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `frequence` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `size_default` int(11) NOT NULL DEFAULT '0',
  `devicememorytypes_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `devicememorymodels_id` int(11) DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_devicememorymodels`
--

CREATE TABLE `glpi_devicememorymodels` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `product_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_devicememorytypes`
--

CREATE TABLE `glpi_devicememorytypes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `glpi_devicememorytypes`
--

INSERT INTO `glpi_devicememorytypes` (`id`, `name`, `comment`, `date_mod`, `date_creation`) VALUES
(1, 'EDO', NULL, NULL, NULL),
(2, 'DDR', NULL, NULL, NULL),
(3, 'SDRAM', NULL, NULL, NULL),
(4, 'SDRAM-2', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_devicemotherboardmodels`
--

CREATE TABLE `glpi_devicemotherboardmodels` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `product_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_devicemotherboards`
--

CREATE TABLE `glpi_devicemotherboards` (
  `id` int(11) NOT NULL,
  `designation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `chipset` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `devicemotherboardmodels_id` int(11) DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_devicenetworkcardmodels`
--

CREATE TABLE `glpi_devicenetworkcardmodels` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `product_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_devicenetworkcards`
--

CREATE TABLE `glpi_devicenetworkcards` (
  `id` int(11) NOT NULL,
  `designation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bandwidth` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `mac_default` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `devicenetworkcardmodels_id` int(11) DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_devicepcimodels`
--

CREATE TABLE `glpi_devicepcimodels` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `product_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_devicepcis`
--

CREATE TABLE `glpi_devicepcis` (
  `id` int(11) NOT NULL,
  `designation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `devicenetworkcardmodels_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `devicepcimodels_id` int(11) DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_devicepowersupplies`
--

CREATE TABLE `glpi_devicepowersupplies` (
  `id` int(11) NOT NULL,
  `designation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `power` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_atx` tinyint(1) NOT NULL DEFAULT '1',
  `comment` text COLLATE utf8_unicode_ci,
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `devicepowersupplymodels_id` int(11) DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_devicepowersupplymodels`
--

CREATE TABLE `glpi_devicepowersupplymodels` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `product_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_deviceprocessormodels`
--

CREATE TABLE `glpi_deviceprocessormodels` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `product_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_deviceprocessors`
--

CREATE TABLE `glpi_deviceprocessors` (
  `id` int(11) NOT NULL,
  `designation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `frequence` int(11) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `frequency_default` int(11) NOT NULL DEFAULT '0',
  `nbcores_default` int(11) DEFAULT NULL,
  `nbthreads_default` int(11) DEFAULT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `deviceprocessormodels_id` int(11) DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_devicesensormodels`
--

CREATE TABLE `glpi_devicesensormodels` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `product_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_devicesensors`
--

CREATE TABLE `glpi_devicesensors` (
  `id` int(11) NOT NULL,
  `designation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `devicesensortypes_id` int(11) NOT NULL DEFAULT '0',
  `devicesensormodels_id` int(11) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `states_id` int(11) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_devicesensortypes`
--

CREATE TABLE `glpi_devicesensortypes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_devicesimcards`
--

CREATE TABLE `glpi_devicesimcards` (
  `id` int(11) NOT NULL,
  `designation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `voltage` int(11) DEFAULT NULL,
  `devicesimcardtypes_id` int(11) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  `allow_voip` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_devicesimcardtypes`
--

CREATE TABLE `glpi_devicesimcardtypes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `glpi_devicesimcardtypes`
--

INSERT INTO `glpi_devicesimcardtypes` (`id`, `name`, `comment`, `date_mod`, `date_creation`) VALUES
(1, 'Full SIM', NULL, NULL, NULL),
(2, 'Mini SIM', NULL, NULL, NULL),
(3, 'Micro SIM', NULL, NULL, NULL),
(4, 'Nano SIM', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_devicesoundcardmodels`
--

CREATE TABLE `glpi_devicesoundcardmodels` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `product_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_devicesoundcards`
--

CREATE TABLE `glpi_devicesoundcards` (
  `id` int(11) NOT NULL,
  `designation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `devicesoundcardmodels_id` int(11) DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_displaypreferences`
--

CREATE TABLE `glpi_displaypreferences` (
  `id` int(11) NOT NULL,
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `num` int(11) NOT NULL DEFAULT '0',
  `rank` int(11) NOT NULL DEFAULT '0',
  `users_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `glpi_displaypreferences`
--

INSERT INTO `glpi_displaypreferences` (`id`, `itemtype`, `num`, `rank`, `users_id`) VALUES
(29, 'Computer', 31, 1, 0),
(30, 'Computer', 23, 2, 0),
(31, 'Computer', 5, 3, 0),
(32, 'Computer', 4, 4, 0),
(33, 'Computer', 40, 5, 0),
(34, 'Computer', 45, 6, 0),
(35, 'Computer', 3, 7, 0),
(36, 'Computer', 19, 8, 0),
(37, 'Computer', 17, 9, 0),
(38, 'NetworkEquipment', 31, 1, 0),
(39, 'NetworkEquipment', 23, 2, 0),
(40, 'NetworkEquipment', 3, 3, 0),
(41, 'NetworkEquipment', 4, 4, 0),
(42, 'NetworkEquipment', 11, 6, 0),
(43, 'NetworkEquipment', 19, 7, 0),
(44, 'Printer', 31, 1, 0),
(45, 'Printer', 23, 2, 0),
(46, 'Printer', 3, 3, 0),
(47, 'Printer', 4, 4, 0),
(48, 'Printer', 19, 6, 0),
(49, 'Monitor', 31, 1, 0),
(50, 'Monitor', 23, 2, 0),
(51, 'Monitor', 3, 3, 0),
(52, 'Monitor', 4, 4, 0),
(53, 'Monitor', 19, 6, 0),
(54, 'Monitor', 7, 7, 0),
(55, 'Peripheral', 31, 1, 0),
(56, 'Peripheral', 23, 2, 0),
(57, 'Peripheral', 3, 3, 0),
(58, 'Peripheral', 4, 4, 0),
(59, 'Peripheral', 19, 6, 0),
(60, 'Peripheral', 7, 7, 0),
(61, 'Software', 23, 1, 0),
(62, 'Software', 5, 2, 0),
(63, 'Software', 4, 3, 0),
(64, 'Contact', 3, 1, 0),
(65, 'Contact', 4, 2, 0),
(66, 'Contact', 5, 3, 0),
(67, 'Contact', 6, 4, 0),
(68, 'Contact', 9, 5, 0),
(69, 'Supplier', 9, 1, 0),
(70, 'Supplier', 3, 2, 0),
(71, 'Supplier', 4, 3, 0),
(72, 'Supplier', 5, 4, 0),
(73, 'Supplier', 10, 5, 0),
(74, 'Supplier', 6, 6, 0),
(75, 'Contract', 4, 1, 0),
(76, 'Contract', 3, 2, 0),
(77, 'Contract', 5, 3, 0),
(78, 'Contract', 6, 4, 0),
(79, 'Contract', 7, 5, 0),
(80, 'Contract', 11, 6, 0),
(82, 'CartridgeItem', 34, 1, 0),
(83, 'CartridgeItem', 4, 2, 0),
(84, 'CartridgeItem', 23, 3, 0),
(85, 'CartridgeItem', 3, 4, 0),
(86, 'DocumentType', 3, 1, 0),
(88, 'DocumentType', 6, 2, 0),
(89, 'DocumentType', 4, 3, 0),
(90, 'DocumentType', 5, 4, 0),
(91, 'Document', 3, 1, 0),
(92, 'Document', 4, 2, 0),
(93, 'Document', 7, 3, 0),
(94, 'Document', 5, 4, 0),
(95, 'Document', 16, 5, 0),
(96, 'User', 34, 1, 0),
(98, 'User', 5, 3, 0),
(99, 'User', 6, 4, 0),
(100, 'User', 3, 5, 0),
(101, 'ConsumableItem', 34, 1, 0),
(102, 'ConsumableItem', 4, 2, 0),
(103, 'ConsumableItem', 23, 3, 0),
(104, 'ConsumableItem', 3, 4, 0),
(105, 'NetworkEquipment', 40, 5, 0),
(106, 'Printer', 40, 5, 0),
(107, 'Monitor', 40, 5, 0),
(108, 'Peripheral', 40, 5, 0),
(109, 'User', 8, 6, 0),
(110, 'Phone', 31, 1, 0),
(111, 'Phone', 23, 2, 0),
(112, 'Phone', 3, 3, 0),
(113, 'Phone', 4, 4, 0),
(114, 'Phone', 40, 5, 0),
(115, 'Phone', 19, 6, 0),
(116, 'Phone', 7, 7, 0),
(117, 'Group', 16, 1, 0),
(118, 'AllAssets', 31, 1, 0),
(119, 'ReservationItem', 4, 1, 0),
(120, 'ReservationItem', 3, 2, 0),
(122, 'Software', 72, 4, 0),
(123, 'Software', 163, 5, 0),
(124, 'Budget', 5, 1, 0),
(125, 'Budget', 3, 2, 0),
(126, 'Budget', 4, 3, 0),
(127, 'Budget', 19, 4, 0),
(128, 'Crontask', 8, 1, 0),
(129, 'Crontask', 3, 2, 0),
(130, 'Crontask', 4, 3, 0),
(131, 'Crontask', 7, 4, 0),
(132, 'RequestType', 14, 1, 0),
(133, 'RequestType', 15, 2, 0),
(134, 'NotificationTemplate', 4, 1, 0),
(135, 'NotificationTemplate', 16, 2, 0),
(136, 'Notification', 5, 1, 0),
(137, 'Notification', 6, 2, 0),
(138, 'Notification', 2, 3, 0),
(139, 'Notification', 4, 4, 0),
(140, 'Notification', 80, 5, 0),
(141, 'Notification', 86, 6, 0),
(142, 'MailCollector', 2, 1, 0),
(143, 'MailCollector', 19, 2, 0),
(144, 'AuthLDAP', 3, 1, 0),
(145, 'AuthLDAP', 19, 2, 0),
(146, 'AuthMail', 3, 1, 0),
(147, 'AuthMail', 19, 2, 0),
(150, 'Profile', 2, 1, 0),
(151, 'Profile', 3, 2, 0),
(152, 'Profile', 19, 3, 0),
(153, 'Transfer', 19, 1, 0),
(154, 'TicketValidation', 3, 1, 0),
(155, 'TicketValidation', 2, 2, 0),
(156, 'TicketValidation', 8, 3, 0),
(157, 'TicketValidation', 4, 4, 0),
(158, 'TicketValidation', 9, 5, 0),
(159, 'TicketValidation', 7, 6, 0),
(160, 'NotImportedEmail', 2, 1, 0),
(161, 'NotImportedEmail', 5, 2, 0),
(162, 'NotImportedEmail', 4, 3, 0),
(163, 'NotImportedEmail', 6, 4, 0),
(164, 'NotImportedEmail', 16, 5, 0),
(165, 'NotImportedEmail', 19, 6, 0),
(166, 'RuleRightParameter', 11, 1, 0),
(167, 'Ticket', 12, 1, 0),
(168, 'Ticket', 19, 2, 0),
(169, 'Ticket', 15, 3, 0),
(170, 'Ticket', 3, 4, 0),
(171, 'Ticket', 4, 5, 0),
(172, 'Ticket', 5, 6, 0),
(173, 'Ticket', 7, 7, 0),
(174, 'Calendar', 19, 1, 0),
(175, 'Holiday', 11, 1, 0),
(176, 'Holiday', 12, 2, 0),
(177, 'Holiday', 13, 3, 0),
(178, 'SLA', 4, 1, 0),
(179, 'Ticket', 18, 8, 0),
(180, 'AuthLdap', 30, 3, 0),
(181, 'AuthMail', 6, 3, 0),
(183, 'FieldUnicity', 1, 1, 0),
(184, 'FieldUnicity', 80, 2, 0),
(185, 'FieldUnicity', 4, 3, 0),
(186, 'FieldUnicity', 3, 4, 0),
(187, 'FieldUnicity', 86, 5, 0),
(188, 'FieldUnicity', 30, 6, 0),
(189, 'Problem', 21, 1, 0),
(190, 'Problem', 12, 2, 0),
(191, 'Problem', 19, 3, 0),
(192, 'Problem', 15, 4, 0),
(193, 'Problem', 3, 5, 0),
(194, 'Problem', 7, 6, 0),
(195, 'Problem', 18, 7, 0),
(196, 'Vlan', 11, 1, 0),
(197, 'TicketRecurrent', 11, 1, 0),
(198, 'TicketRecurrent', 12, 2, 0),
(199, 'TicketRecurrent', 13, 3, 0),
(200, 'TicketRecurrent', 15, 4, 0),
(201, 'TicketRecurrent', 14, 5, 0),
(202, 'Reminder', 2, 1, 0),
(203, 'Reminder', 3, 2, 0),
(204, 'Reminder', 4, 3, 0),
(205, 'Reminder', 5, 4, 0),
(206, 'Reminder', 6, 5, 0),
(207, 'Reminder', 7, 6, 0),
(208, 'FQDN', 11, 1, 0),
(209, 'WifiNetwork', 10, 1, 0),
(210, 'IPNetwork', 18, 1, 0),
(211, 'IPNetwork', 10, 2, 0),
(212, 'IPNetwork', 11, 3, 0),
(213, 'IPNetwork', 12, 4, 0),
(214, 'IPNetwork', 17, 5, 0),
(215, 'NetworkName', 12, 1, 0),
(216, 'NetworkName', 13, 2, 0),
(217, 'RSSFeed', 2, 1, 0),
(218, 'RSSFeed', 4, 2, 0),
(219, 'RSSFeed', 5, 3, 0),
(220, 'RSSFeed', 19, 4, 0),
(221, 'RSSFeed', 6, 5, 0),
(222, 'RSSFeed', 7, 6, 0),
(223, 'Blacklist', 12, 1, 0),
(224, 'Blacklist', 11, 2, 0),
(225, 'ReservationItem', 5, 3, 0),
(226, 'QueueMail', 16, 1, 0),
(227, 'QueueMail', 7, 2, 0),
(228, 'QueueMail', 20, 3, 0),
(229, 'QueueMail', 21, 4, 0),
(230, 'QueueMail', 22, 5, 0),
(231, 'QueueMail', 15, 6, 0),
(232, 'Change', 12, 1, 0),
(233, 'Change', 19, 2, 0),
(234, 'Change', 15, 3, 0),
(235, 'Change', 7, 4, 0),
(236, 'Change', 18, 5, 0),
(237, 'Project', 3, 1, 0),
(238, 'Project', 4, 2, 0),
(239, 'Project', 12, 3, 0),
(240, 'Project', 5, 4, 0),
(241, 'Project', 15, 5, 0),
(242, 'Project', 21, 6, 0),
(243, 'ProjectState', 12, 1, 0),
(244, 'ProjectState', 11, 2, 0),
(245, 'ProjectTask', 2, 1, 0),
(246, 'ProjectTask', 12, 2, 0),
(247, 'ProjectTask', 14, 3, 0),
(248, 'ProjectTask', 5, 4, 0),
(249, 'ProjectTask', 7, 5, 0),
(250, 'ProjectTask', 8, 6, 0),
(251, 'ProjectTask', 13, 7, 0),
(252, 'CartridgeItem', 9, 5, 0),
(253, 'ConsumableItem', 9, 5, 0),
(254, 'ReservationItem', 9, 4, 0),
(255, 'SoftwareLicense', 1, 1, 0),
(256, 'SoftwareLicense', 3, 2, 0),
(257, 'SoftwareLicense', 10, 3, 0),
(258, 'SoftwareLicense', 162, 4, 0),
(259, 'SoftwareLicense', 5, 5, 0),
(260, 'SavedSearch', 8, 1, 0),
(261, 'SavedSearch', 9, 1, 0),
(262, 'SavedSearch', 3, 1, 0),
(263, 'SavedSearch', 10, 1, 0),
(264, 'SavedSearch', 11, 1, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_documentcategories`
--

CREATE TABLE `glpi_documentcategories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `documentcategories_id` int(11) NOT NULL DEFAULT '0',
  `completename` text COLLATE utf8_unicode_ci,
  `level` int(11) NOT NULL DEFAULT '0',
  `ancestors_cache` longtext COLLATE utf8_unicode_ci,
  `sons_cache` longtext COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_documents`
--

CREATE TABLE `glpi_documents` (
  `id` int(11) NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'for display and transfert',
  `filepath` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'file storage path',
  `documentcategories_id` int(11) NOT NULL DEFAULT '0',
  `mime` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `tickets_id` int(11) NOT NULL DEFAULT '0',
  `sha1sum` char(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_blacklisted` tinyint(1) NOT NULL DEFAULT '0',
  `tag` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_documents_items`
--

CREATE TABLE `glpi_documents_items` (
  `id` int(11) NOT NULL,
  `documents_id` int(11) NOT NULL DEFAULT '0',
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `users_id` int(11) DEFAULT '0',
  `timeline_position` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_documenttypes`
--

CREATE TABLE `glpi_documenttypes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ext` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mime` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_uploadable` tinyint(1) NOT NULL DEFAULT '1',
  `date_mod` datetime DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `glpi_documenttypes`
--

INSERT INTO `glpi_documenttypes` (`id`, `name`, `ext`, `icon`, `mime`, `is_uploadable`, `date_mod`, `comment`, `date_creation`) VALUES
(1, 'JPEG', 'jpg', 'jpg-dist.png', '', 1, '2004-12-13 19:47:21', NULL, NULL),
(2, 'PNG', 'png', 'png-dist.png', '', 1, '2004-12-13 19:47:21', NULL, NULL),
(3, 'GIF', 'gif', 'gif-dist.png', '', 1, '2004-12-13 19:47:21', NULL, NULL),
(4, 'BMP', 'bmp', 'bmp-dist.png', '', 1, '2004-12-13 19:47:21', NULL, NULL),
(5, 'Photoshop', 'psd', 'psd-dist.png', '', 1, '2004-12-13 19:47:21', NULL, NULL),
(6, 'TIFF', 'tif', 'tif-dist.png', '', 1, '2004-12-13 19:47:21', NULL, NULL),
(7, 'AIFF', 'aiff', 'aiff-dist.png', '', 1, '2004-12-13 19:47:21', NULL, NULL),
(8, 'Windows Media', 'asf', 'asf-dist.png', '', 1, '2004-12-13 19:47:21', NULL, NULL),
(9, 'Windows Media', 'avi', 'avi-dist.png', '', 1, '2004-12-13 19:47:21', NULL, NULL),
(10, 'BZip', 'bz2', 'bz2-dist.png', '', 1, '2004-12-13 19:47:21', NULL, NULL),
(11, 'Word', 'doc', 'doc-dist.png', '', 1, '2004-12-13 19:47:21', NULL, NULL),
(12, 'DjVu', 'djvu', '', '', 1, '2004-12-13 19:47:21', NULL, NULL),
(13, 'PostScript', 'eps', 'ps-dist.png', '', 1, '2004-12-13 19:47:21', NULL, NULL),
(14, 'GZ', 'gz', 'gz-dist.png', '', 1, '2004-12-13 19:47:21', NULL, NULL),
(15, 'HTML', 'html', 'html-dist.png', '', 1, '2004-12-13 19:47:21', NULL, NULL),
(16, 'Midi', 'mid', 'mid-dist.png', '', 1, '2004-12-13 19:47:21', NULL, NULL),
(17, 'QuickTime', 'mov', 'mov-dist.png', '', 1, '2004-12-13 19:47:21', NULL, NULL),
(18, 'MP3', 'mp3', 'mp3-dist.png', '', 1, '2004-12-13 19:47:21', NULL, NULL),
(19, 'MPEG', 'mpg', 'mpg-dist.png', '', 1, '2004-12-13 19:47:21', NULL, NULL),
(20, 'Ogg Vorbis', 'ogg', 'ogg-dist.png', '', 1, '2004-12-13 19:47:21', NULL, NULL),
(21, 'PDF', 'pdf', 'pdf-dist.png', '', 1, '2004-12-13 19:47:21', NULL, NULL),
(22, 'PowerPoint', 'ppt', 'ppt-dist.png', '', 1, '2004-12-13 19:47:21', NULL, NULL),
(23, 'PostScript', 'ps', 'ps-dist.png', '', 1, '2004-12-13 19:47:21', NULL, NULL),
(24, 'QuickTime', 'qt', 'qt-dist.png', '', 1, '2004-12-13 19:47:21', NULL, NULL),
(25, 'RealAudio', 'ra', 'ra-dist.png', '', 1, '2004-12-13 19:47:21', NULL, NULL),
(26, 'RealAudio', 'ram', 'ram-dist.png', '', 1, '2004-12-13 19:47:21', NULL, NULL),
(27, 'RealAudio', 'rm', 'rm-dist.png', '', 1, '2004-12-13 19:47:21', NULL, NULL),
(28, 'RTF', 'rtf', 'rtf-dist.png', '', 1, '2004-12-13 19:47:21', NULL, NULL),
(29, 'StarOffice', 'sdd', 'sdd-dist.png', '', 1, '2004-12-13 19:47:22', NULL, NULL),
(30, 'StarOffice', 'sdw', 'sdw-dist.png', '', 1, '2004-12-13 19:47:22', NULL, NULL),
(31, 'Stuffit', 'sit', 'sit-dist.png', '', 1, '2004-12-13 19:47:22', NULL, NULL),
(32, 'OpenOffice Impress', 'sxi', 'sxi-dist.png', '', 1, '2004-12-13 19:47:22', NULL, NULL),
(33, 'OpenOffice', 'sxw', 'sxw-dist.png', '', 1, '2004-12-13 19:47:22', NULL, NULL),
(34, 'Flash', 'swf', 'swf-dist.png', '', 1, '2011-12-06 09:48:34', NULL, NULL),
(35, 'TGZ', 'tgz', 'tgz-dist.png', '', 1, '2004-12-13 19:47:22', NULL, NULL),
(36, 'texte', 'txt', 'txt-dist.png', '', 1, '2004-12-13 19:47:22', NULL, NULL),
(37, 'WAV', 'wav', 'wav-dist.png', '', 1, '2004-12-13 19:47:22', NULL, NULL),
(38, 'Excel', 'xls', 'xls-dist.png', '', 1, '2004-12-13 19:47:22', NULL, NULL),
(39, 'XML', 'xml', 'xml-dist.png', '', 1, '2004-12-13 19:47:22', NULL, NULL),
(40, 'Windows Media', 'wmv', 'wmv-dist.png', '', 1, '2011-12-06 09:48:34', NULL, NULL),
(41, 'Zip', 'zip', 'zip-dist.png', '', 1, '2011-12-06 09:48:34', NULL, NULL),
(42, 'MNG', 'mng', '', '', 1, '2004-12-13 19:47:22', NULL, NULL),
(43, 'Adobe Illustrator', 'ai', 'ai-dist.png', '', 1, '2004-12-13 19:47:22', NULL, NULL),
(44, 'C source', 'c', 'c-dist.png', '', 1, '2011-12-06 09:48:34', NULL, NULL),
(45, 'Debian', 'deb', 'deb-dist.png', '', 1, '2004-12-13 19:47:22', NULL, NULL),
(46, 'DVI', 'dvi', 'dvi-dist.png', '', 1, '2004-12-13 19:47:22', NULL, NULL),
(47, 'C header', 'h', 'h-dist.png', '', 1, '2011-12-06 09:48:34', NULL, NULL),
(48, 'Pascal', 'pas', 'pas-dist.png', '', 1, '2011-12-06 09:48:34', NULL, NULL),
(49, 'RedHat/Mandrake/SuSE', 'rpm', 'rpm-dist.png', '', 1, '2004-12-13 19:47:22', NULL, NULL),
(50, 'OpenOffice Calc', 'sxc', 'sxc-dist.png', '', 1, '2004-12-13 19:47:22', NULL, NULL),
(51, 'LaTeX', 'tex', 'tex-dist.png', '', 1, '2004-12-13 19:47:22', NULL, NULL),
(52, 'GIMP multi-layer', 'xcf', 'xcf-dist.png', '', 1, '2004-12-13 19:47:22', NULL, NULL),
(53, 'JPEG', 'jpeg', 'jpg-dist.png', '', 1, '2005-03-07 22:23:17', NULL, NULL),
(54, 'Oasis Open Office Writer', 'odt', 'odt-dist.png', '', 1, '2006-01-21 17:41:13', NULL, NULL),
(55, 'Oasis Open Office Calc', 'ods', 'ods-dist.png', '', 1, '2006-01-21 17:41:31', NULL, NULL),
(56, 'Oasis Open Office Impress', 'odp', 'odp-dist.png', '', 1, '2006-01-21 17:42:54', NULL, NULL),
(57, 'Oasis Open Office Impress Template', 'otp', 'odp-dist.png', '', 1, '2006-01-21 17:43:58', NULL, NULL),
(58, 'Oasis Open Office Writer Template', 'ott', 'odt-dist.png', '', 1, '2006-01-21 17:44:41', NULL, NULL),
(59, 'Oasis Open Office Calc Template', 'ots', 'ods-dist.png', '', 1, '2006-01-21 17:45:30', NULL, NULL),
(60, 'Oasis Open Office Math', 'odf', 'odf-dist.png', '', 1, '2006-01-21 17:48:05', NULL, NULL),
(61, 'Oasis Open Office Draw', 'odg', 'odg-dist.png', '', 1, '2006-01-21 17:48:31', NULL, NULL),
(62, 'Oasis Open Office Draw Template', 'otg', 'odg-dist.png', '', 1, '2006-01-21 17:49:46', NULL, NULL),
(63, 'Oasis Open Office Base', 'odb', 'odb-dist.png', '', 1, '2006-01-21 18:03:34', NULL, NULL),
(64, 'Oasis Open Office HTML', 'oth', 'oth-dist.png', '', 1, '2006-01-21 18:05:27', NULL, NULL),
(65, 'Oasis Open Office Writer Master', 'odm', 'odm-dist.png', '', 1, '2006-01-21 18:06:34', NULL, NULL),
(66, 'Oasis Open Office Chart', 'odc', '', '', 1, '2006-01-21 18:07:48', NULL, NULL),
(67, 'Oasis Open Office Image', 'odi', '', '', 1, '2006-01-21 18:08:18', NULL, NULL),
(68, 'Word XML', 'docx', 'doc-dist.png', NULL, 1, '2011-01-18 11:40:42', NULL, NULL),
(69, 'Excel XML', 'xlsx', 'xls-dist.png', NULL, 1, '2011-01-18 11:40:42', NULL, NULL),
(70, 'PowerPoint XML', 'pptx', 'ppt-dist.png', NULL, 1, '2011-01-18 11:40:42', NULL, NULL),
(71, 'Comma-Separated Values', 'csv', 'csv-dist.png', NULL, 1, '2011-12-06 09:48:34', NULL, NULL),
(72, 'Scalable Vector Graphics', 'svg', 'svg-dist.png', NULL, 1, '2011-12-06 09:48:34', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_domains`
--

CREATE TABLE `glpi_domains` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_dropdowntranslations`
--

CREATE TABLE `glpi_dropdowntranslations` (
  `id` int(11) NOT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_enclosuremodels`
--

CREATE TABLE `glpi_enclosuremodels` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `product_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `weight` int(11) NOT NULL DEFAULT '0',
  `required_units` int(11) NOT NULL DEFAULT '1',
  `depth` float NOT NULL DEFAULT '1',
  `power_connections` int(11) NOT NULL DEFAULT '0',
  `power_consumption` int(11) NOT NULL DEFAULT '0',
  `is_half_rack` tinyint(1) NOT NULL DEFAULT '0',
  `picture_front` text COLLATE utf8_unicode_ci,
  `picture_rear` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_enclosures`
--

CREATE TABLE `glpi_enclosures` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `serial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `otherserial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enclosuremodels_id` int(11) DEFAULT NULL,
  `users_id_tech` int(11) NOT NULL DEFAULT '0',
  `groups_id_tech` int(11) NOT NULL DEFAULT '0',
  `is_template` tinyint(1) NOT NULL DEFAULT '0',
  `template_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `orientation` tinyint(1) DEFAULT NULL,
  `power_supplies` tinyint(1) NOT NULL DEFAULT '0',
  `states_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to states (id)',
  `comment` text COLLATE utf8_unicode_ci,
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_entities`
--

CREATE TABLE `glpi_entities` (
  `id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `completename` text COLLATE utf8_unicode_ci,
  `comment` text COLLATE utf8_unicode_ci,
  `level` int(11) NOT NULL DEFAULT '0',
  `sons_cache` longtext COLLATE utf8_unicode_ci,
  `ancestors_cache` longtext COLLATE utf8_unicode_ci,
  `address` text COLLATE utf8_unicode_ci,
  `postcode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `town` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phonenumber` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_email_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_reply` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_reply_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notification_subject_tag` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ldap_dn` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tag` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `authldaps_id` int(11) NOT NULL DEFAULT '0',
  `mail_domain` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entity_ldapfilter` text COLLATE utf8_unicode_ci,
  `mailing_signature` text COLLATE utf8_unicode_ci,
  `cartridges_alert_repeat` int(11) NOT NULL DEFAULT '-2',
  `consumables_alert_repeat` int(11) NOT NULL DEFAULT '-2',
  `use_licenses_alert` int(11) NOT NULL DEFAULT '-2',
  `send_licenses_alert_before_delay` int(11) NOT NULL DEFAULT '-2',
  `use_certificates_alert` int(11) NOT NULL DEFAULT '-2',
  `send_certificates_alert_before_delay` int(11) NOT NULL DEFAULT '-2',
  `use_contracts_alert` int(11) NOT NULL DEFAULT '-2',
  `send_contracts_alert_before_delay` int(11) NOT NULL DEFAULT '-2',
  `use_infocoms_alert` int(11) NOT NULL DEFAULT '-2',
  `send_infocoms_alert_before_delay` int(11) NOT NULL DEFAULT '-2',
  `use_reservations_alert` int(11) NOT NULL DEFAULT '-2',
  `autoclose_delay` int(11) NOT NULL DEFAULT '-2',
  `notclosed_delay` int(11) NOT NULL DEFAULT '-2',
  `calendars_id` int(11) NOT NULL DEFAULT '-2',
  `auto_assign_mode` int(11) NOT NULL DEFAULT '-2',
  `tickettype` int(11) NOT NULL DEFAULT '-2',
  `max_closedate` datetime DEFAULT NULL,
  `inquest_config` int(11) NOT NULL DEFAULT '-2',
  `inquest_rate` int(11) NOT NULL DEFAULT '0',
  `inquest_delay` int(11) NOT NULL DEFAULT '-10',
  `inquest_URL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `autofill_warranty_date` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '-2',
  `autofill_use_date` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '-2',
  `autofill_buy_date` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '-2',
  `autofill_delivery_date` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '-2',
  `autofill_order_date` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '-2',
  `tickettemplates_id` int(11) NOT NULL DEFAULT '-2',
  `entities_id_software` int(11) NOT NULL DEFAULT '-2',
  `default_contract_alert` int(11) NOT NULL DEFAULT '-2',
  `default_infocom_alert` int(11) NOT NULL DEFAULT '-2',
  `default_cartridges_alarm_threshold` int(11) NOT NULL DEFAULT '-2',
  `default_consumables_alarm_threshold` int(11) NOT NULL DEFAULT '-2',
  `delay_send_emails` int(11) NOT NULL DEFAULT '-2',
  `is_notif_enable_default` int(11) NOT NULL DEFAULT '-2',
  `inquest_duration` int(11) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  `autofill_decommission_date` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '-2'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `glpi_entities`
--

INSERT INTO `glpi_entities` (`id`, `name`, `entities_id`, `completename`, `comment`, `level`, `sons_cache`, `ancestors_cache`, `address`, `postcode`, `town`, `state`, `country`, `website`, `phonenumber`, `fax`, `email`, `admin_email`, `admin_email_name`, `admin_reply`, `admin_reply_name`, `notification_subject_tag`, `ldap_dn`, `tag`, `authldaps_id`, `mail_domain`, `entity_ldapfilter`, `mailing_signature`, `cartridges_alert_repeat`, `consumables_alert_repeat`, `use_licenses_alert`, `send_licenses_alert_before_delay`, `use_certificates_alert`, `send_certificates_alert_before_delay`, `use_contracts_alert`, `send_contracts_alert_before_delay`, `use_infocoms_alert`, `send_infocoms_alert_before_delay`, `use_reservations_alert`, `autoclose_delay`, `notclosed_delay`, `calendars_id`, `auto_assign_mode`, `tickettype`, `max_closedate`, `inquest_config`, `inquest_rate`, `inquest_delay`, `inquest_URL`, `autofill_warranty_date`, `autofill_use_date`, `autofill_buy_date`, `autofill_delivery_date`, `autofill_order_date`, `tickettemplates_id`, `entities_id_software`, `default_contract_alert`, `default_infocom_alert`, `default_cartridges_alarm_threshold`, `default_consumables_alarm_threshold`, `delay_send_emails`, `is_notif_enable_default`, `inquest_duration`, `date_mod`, `date_creation`, `autofill_decommission_date`) VALUES
(0, 'Root entity', -1, 'Root entity', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -10, 0, 0, -10, 1, NULL, 1, 0, 0, NULL, '0', '0', '0', '0', '0', 1, -10, 0, 0, 10, 10, 0, 1, 0, NULL, NULL, '0');

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_entities_knowbaseitems`
--

CREATE TABLE `glpi_entities_knowbaseitems` (
  `id` int(11) NOT NULL,
  `knowbaseitems_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_entities_reminders`
--

CREATE TABLE `glpi_entities_reminders` (
  `id` int(11) NOT NULL,
  `reminders_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_entities_rssfeeds`
--

CREATE TABLE `glpi_entities_rssfeeds` (
  `id` int(11) NOT NULL,
  `rssfeeds_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_events`
--

CREATE TABLE `glpi_events` (
  `id` int(11) NOT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `service` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(11) NOT NULL DEFAULT '0',
  `message` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `glpi_events`
--

INSERT INTO `glpi_events` (`id`, `items_id`, `type`, `date`, `service`, `level`, `message`) VALUES
(1, -1, 'system', '2018-07-25 10:45:32', 'login', 3, 'glpi fez login no IP 192.168.10.185'),
(2, -1, 'system', '2018-07-25 10:47:11', 'login', 3, 'glpi fez login no IP 192.168.10.185'),
(3, 5, 'users', '2018-07-25 10:47:29', 'setup', 5, 'glpi atualizou um item'),
(4, 5, 'users', '2018-07-25 10:47:38', 'setup', 5, 'glpi atualizou um item'),
(5, 5, 'users', '2018-07-25 10:47:48', 'setup', 5, 'glpi atualizou um item'),
(6, -1, 'system', '2018-07-25 10:59:02', 'login', 3, 'Login falhou para glpi no IP 192.168.10.185'),
(7, -1, 'system', '2018-07-25 10:59:11', 'login', 3, 'Login falhou para glpi no IP 192.168.10.185'),
(8, -1, 'system', '2018-07-25 10:59:18', 'login', 3, 'glpi fez login no IP 192.168.10.185'),
(9, 2, 'users', '2018-07-25 10:59:45', 'setup', 5, 'glpi atualizou um item'),
(10, 4, 'users', '2018-07-25 11:00:09', 'setup', 5, 'glpi atualizou um item'),
(11, 4, 'users', '2018-07-25 11:00:22', 'setup', 5, 'glpi atualizou um item'),
(12, 3, 'users', '2018-07-25 11:00:33', 'setup', 5, 'glpi atualizou um item'),
(13, -1, 'system', '2018-07-25 11:02:56', 'login', 3, 'glpi fez login no IP 192.168.10.185'),
(14, -1, 'system', '2018-07-25 11:08:30', 'login', 3, 'glpi fez login no IP 192.168.10.185'),
(15, -1, 'system', '2018-07-25 11:51:45', 'login', 3, 'glpi fez login no IP 192.168.10.185'),
(16, -1, 'system', '2018-07-25 11:59:07', 'login', 3, 'GLPI fez login no IP 192.168.10.118'),
(17, -1, 'system', '2018-07-25 12:00:41', 'login', 3, 'glpi fez login no IP 192.168.10.118'),
(18, -1, 'system', '2018-07-25 12:15:48', 'login', 3, 'glpi fez login no IP 192.168.10.126'),
(19, -1, 'system', '2018-07-25 13:50:54', 'login', 3, 'Login falhou para glpi no IP 192.168.10.185'),
(20, -1, 'system', '2018-07-25 13:51:02', 'login', 3, 'glpi fez login no IP 192.168.10.185'),
(21, -1, 'system', '2018-07-25 14:24:52', 'login', 3, 'glpi fez login no IP 192.168.10.185'),
(22, -1, 'system', '2018-07-25 14:50:42', 'login', 3, 'glpi fez login no IP 192.168.10.185'),
(23, -1, 'system', '2018-07-25 14:53:22', 'login', 3, 'glpi fez login no IP 192.168.10.118'),
(24, -1, 'system', '2018-07-25 15:00:10', 'login', 3, 'glpi fez login no IP 192.168.10.185'),
(25, -1, 'system', '2018-07-25 15:23:32', 'login', 3, 'glpi fez login no IP 192.168.10.118'),
(26, -1, 'system', '2018-07-25 15:29:13', 'login', 3, 'glpi fez login no IP 192.168.10.118'),
(27, -1, 'system', '2018-07-25 15:30:09', 'login', 3, 'glpi fez login no IP 192.168.10.118'),
(28, -1, 'system', '2018-07-25 15:36:11', 'login', 3, 'glpi fez login no IP 192.168.10.118'),
(29, -1, 'system', '2018-07-25 15:36:15', 'login', 3, 'Login falhou para glpi no IP 192.168.10.185'),
(30, -1, 'system', '2018-07-25 15:49:07', 'login', 3, 'glpi fez login no IP 192.168.10.185'),
(31, -1, 'system', '2018-07-25 15:53:12', 'login', 3, 'glpi fez login no IP 192.168.10.185'),
(32, -1, 'system', '2018-07-25 15:55:22', 'login', 3, 'glpi fez login no IP 192.168.10.185'),
(33, -1, 'system', '2018-07-25 15:58:18', 'login', 3, 'glpi fez login no IP 192.168.10.118'),
(34, -1, 'system', '2018-07-25 16:04:54', 'login', 3, 'glpi fez login no IP 192.168.10.185'),
(35, -1, 'system', '2018-07-25 19:46:52', 'login', 3, 'glpi fez login no IP 10.10.10.12'),
(36, -1, 'system', '2018-07-27 07:48:46', 'login', 3, 'glpi fez login no IP 192.168.10.178'),
(37, -1, 'system', '2018-07-30 17:45:54', 'login', 3, 'glpi fez login no IP 192.168.10.188');

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_fieldblacklists`
--

CREATE TABLE `glpi_fieldblacklists` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `field` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `itemtype` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_fieldunicities`
--

CREATE TABLE `glpi_fieldunicities` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `itemtype` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `entities_id` int(11) NOT NULL DEFAULT '-1',
  `fields` text COLLATE utf8_unicode_ci,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `action_refuse` tinyint(1) NOT NULL DEFAULT '0',
  `action_notify` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Stores field unicity criterias';

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_filesystems`
--

CREATE TABLE `glpi_filesystems` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `glpi_filesystems`
--

INSERT INTO `glpi_filesystems` (`id`, `name`, `comment`, `date_mod`, `date_creation`) VALUES
(1, 'ext', NULL, NULL, NULL),
(2, 'ext2', NULL, NULL, NULL),
(3, 'ext3', NULL, NULL, NULL),
(4, 'ext4', NULL, NULL, NULL),
(5, 'FAT', NULL, NULL, NULL),
(6, 'FAT32', NULL, NULL, NULL),
(7, 'VFAT', NULL, NULL, NULL),
(8, 'HFS', NULL, NULL, NULL),
(9, 'HPFS', NULL, NULL, NULL),
(10, 'HTFS', NULL, NULL, NULL),
(11, 'JFS', NULL, NULL, NULL),
(12, 'JFS2', NULL, NULL, NULL),
(13, 'NFS', NULL, NULL, NULL),
(14, 'NTFS', NULL, NULL, NULL),
(15, 'ReiserFS', NULL, NULL, NULL),
(16, 'SMBFS', NULL, NULL, NULL),
(17, 'UDF', NULL, NULL, NULL),
(18, 'UFS', NULL, NULL, NULL),
(19, 'XFS', NULL, NULL, NULL),
(20, 'ZFS', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_fqdns`
--

CREATE TABLE `glpi_fqdns` (
  `id` int(11) NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fqdn` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_groups`
--

CREATE TABLE `glpi_groups` (
  `id` int(11) NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `ldap_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ldap_value` text COLLATE utf8_unicode_ci,
  `ldap_group_dn` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `groups_id` int(11) NOT NULL DEFAULT '0',
  `completename` text COLLATE utf8_unicode_ci,
  `level` int(11) NOT NULL DEFAULT '0',
  `ancestors_cache` longtext COLLATE utf8_unicode_ci,
  `sons_cache` longtext COLLATE utf8_unicode_ci,
  `is_requester` tinyint(1) NOT NULL DEFAULT '1',
  `is_assign` tinyint(1) NOT NULL DEFAULT '1',
  `is_task` tinyint(1) NOT NULL DEFAULT '1',
  `is_notify` tinyint(1) NOT NULL DEFAULT '1',
  `is_itemgroup` tinyint(1) NOT NULL DEFAULT '1',
  `is_usergroup` tinyint(1) NOT NULL DEFAULT '1',
  `is_manager` tinyint(1) NOT NULL DEFAULT '1',
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_groups_knowbaseitems`
--

CREATE TABLE `glpi_groups_knowbaseitems` (
  `id` int(11) NOT NULL,
  `knowbaseitems_id` int(11) NOT NULL DEFAULT '0',
  `groups_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '-1',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_groups_problems`
--

CREATE TABLE `glpi_groups_problems` (
  `id` int(11) NOT NULL,
  `problems_id` int(11) NOT NULL DEFAULT '0',
  `groups_id` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_groups_reminders`
--

CREATE TABLE `glpi_groups_reminders` (
  `id` int(11) NOT NULL,
  `reminders_id` int(11) NOT NULL DEFAULT '0',
  `groups_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '-1',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_groups_rssfeeds`
--

CREATE TABLE `glpi_groups_rssfeeds` (
  `id` int(11) NOT NULL,
  `rssfeeds_id` int(11) NOT NULL DEFAULT '0',
  `groups_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '-1',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_groups_tickets`
--

CREATE TABLE `glpi_groups_tickets` (
  `id` int(11) NOT NULL,
  `tickets_id` int(11) NOT NULL DEFAULT '0',
  `groups_id` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_groups_users`
--

CREATE TABLE `glpi_groups_users` (
  `id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `groups_id` int(11) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `is_manager` tinyint(1) NOT NULL DEFAULT '0',
  `is_userdelegate` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_holidays`
--

CREATE TABLE `glpi_holidays` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `begin_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `is_perpetual` tinyint(1) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_infocoms`
--

CREATE TABLE `glpi_infocoms` (
  `id` int(11) NOT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `buy_date` date DEFAULT NULL,
  `use_date` date DEFAULT NULL,
  `warranty_duration` int(11) NOT NULL DEFAULT '0',
  `warranty_info` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `suppliers_id` int(11) NOT NULL DEFAULT '0',
  `order_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `delivery_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `immo_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `warranty_value` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `sink_time` int(11) NOT NULL DEFAULT '0',
  `sink_type` int(11) NOT NULL DEFAULT '0',
  `sink_coeff` float NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `bill` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `budgets_id` int(11) NOT NULL DEFAULT '0',
  `alert` int(11) NOT NULL DEFAULT '0',
  `order_date` date DEFAULT NULL,
  `delivery_date` date DEFAULT NULL,
  `inventory_date` date DEFAULT NULL,
  `warranty_date` date DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  `decommission_date` datetime DEFAULT NULL,
  `businesscriticities_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_interfacetypes`
--

CREATE TABLE `glpi_interfacetypes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `glpi_interfacetypes`
--

INSERT INTO `glpi_interfacetypes` (`id`, `name`, `comment`, `date_mod`, `date_creation`) VALUES
(1, 'IDE', NULL, NULL, NULL),
(2, 'SATA', NULL, NULL, NULL),
(3, 'SCSI', NULL, NULL, NULL),
(4, 'USB', NULL, NULL, NULL),
(5, 'AGP', '', NULL, NULL),
(6, 'PCI', '', NULL, NULL),
(7, 'PCIe', '', NULL, NULL),
(8, 'PCI-X', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_ipaddresses`
--

CREATE TABLE `glpi_ipaddresses` (
  `id` int(11) NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `version` tinyint(3) UNSIGNED DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `binary_0` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `binary_1` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `binary_2` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `binary_3` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `mainitems_id` int(11) NOT NULL DEFAULT '0',
  `mainitemtype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_ipaddresses_ipnetworks`
--

CREATE TABLE `glpi_ipaddresses_ipnetworks` (
  `id` int(11) NOT NULL,
  `ipaddresses_id` int(11) NOT NULL DEFAULT '0',
  `ipnetworks_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_ipnetworks`
--

CREATE TABLE `glpi_ipnetworks` (
  `id` int(11) NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `ipnetworks_id` int(11) NOT NULL DEFAULT '0',
  `completename` text COLLATE utf8_unicode_ci,
  `level` int(11) NOT NULL DEFAULT '0',
  `ancestors_cache` longtext COLLATE utf8_unicode_ci,
  `sons_cache` longtext COLLATE utf8_unicode_ci,
  `addressable` tinyint(1) NOT NULL DEFAULT '0',
  `version` tinyint(3) UNSIGNED DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_0` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `address_1` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `address_2` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `address_3` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `netmask` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `netmask_0` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `netmask_1` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `netmask_2` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `netmask_3` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `gateway` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gateway_0` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `gateway_1` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `gateway_2` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `gateway_3` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_ipnetworks_vlans`
--

CREATE TABLE `glpi_ipnetworks_vlans` (
  `id` int(11) NOT NULL,
  `ipnetworks_id` int(11) NOT NULL DEFAULT '0',
  `vlans_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_items_devicebatteries`
--

CREATE TABLE `glpi_items_devicebatteries` (
  `id` int(11) NOT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `devicebatteries_id` int(11) NOT NULL DEFAULT '0',
  `manufacturing_date` date DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `serial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `otherserial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `states_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_items_devicecases`
--

CREATE TABLE `glpi_items_devicecases` (
  `id` int(11) NOT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `devicecases_id` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `serial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `otherserial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `states_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_items_devicecontrols`
--

CREATE TABLE `glpi_items_devicecontrols` (
  `id` int(11) NOT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `devicecontrols_id` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `serial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `busID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `otherserial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `states_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_items_devicedrives`
--

CREATE TABLE `glpi_items_devicedrives` (
  `id` int(11) NOT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `devicedrives_id` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `serial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `busID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `otherserial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `states_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_items_devicefirmwares`
--

CREATE TABLE `glpi_items_devicefirmwares` (
  `id` int(11) NOT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `devicefirmwares_id` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `serial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `otherserial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `states_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_items_devicegenerics`
--

CREATE TABLE `glpi_items_devicegenerics` (
  `id` int(11) NOT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `devicegenerics_id` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `serial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `otherserial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `states_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_items_devicegraphiccards`
--

CREATE TABLE `glpi_items_devicegraphiccards` (
  `id` int(11) NOT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `devicegraphiccards_id` int(11) NOT NULL DEFAULT '0',
  `memory` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `serial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `busID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `otherserial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `states_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_items_deviceharddrives`
--

CREATE TABLE `glpi_items_deviceharddrives` (
  `id` int(11) NOT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deviceharddrives_id` int(11) NOT NULL DEFAULT '0',
  `capacity` int(11) NOT NULL DEFAULT '0',
  `serial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `busID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `otherserial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `states_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_items_devicememories`
--

CREATE TABLE `glpi_items_devicememories` (
  `id` int(11) NOT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `devicememories_id` int(11) NOT NULL DEFAULT '0',
  `size` int(11) NOT NULL DEFAULT '0',
  `serial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `busID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `otherserial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `states_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_items_devicemotherboards`
--

CREATE TABLE `glpi_items_devicemotherboards` (
  `id` int(11) NOT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `devicemotherboards_id` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `serial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `otherserial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `states_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_items_devicenetworkcards`
--

CREATE TABLE `glpi_items_devicenetworkcards` (
  `id` int(11) NOT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `devicenetworkcards_id` int(11) NOT NULL DEFAULT '0',
  `mac` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `serial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `busID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `otherserial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `states_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_items_devicepcis`
--

CREATE TABLE `glpi_items_devicepcis` (
  `id` int(11) NOT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `devicepcis_id` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `serial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `busID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `otherserial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `states_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_items_devicepowersupplies`
--

CREATE TABLE `glpi_items_devicepowersupplies` (
  `id` int(11) NOT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `devicepowersupplies_id` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `serial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `otherserial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `states_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_items_deviceprocessors`
--

CREATE TABLE `glpi_items_deviceprocessors` (
  `id` int(11) NOT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deviceprocessors_id` int(11) NOT NULL DEFAULT '0',
  `frequency` int(11) NOT NULL DEFAULT '0',
  `serial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `nbcores` int(11) DEFAULT NULL,
  `nbthreads` int(11) DEFAULT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `busID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `otherserial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `states_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_items_devicesensors`
--

CREATE TABLE `glpi_items_devicesensors` (
  `id` int(11) NOT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `devicesensors_id` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `serial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `otherserial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `states_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_items_devicesimcards`
--

CREATE TABLE `glpi_items_devicesimcards` (
  `id` int(11) NOT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to various table, according to itemtype (id)',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `devicesimcards_id` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `serial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `otherserial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `states_id` int(11) NOT NULL DEFAULT '0',
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `lines_id` int(11) NOT NULL DEFAULT '0',
  `pin` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `pin2` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `puk` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `puk2` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `msin` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_items_devicesoundcards`
--

CREATE TABLE `glpi_items_devicesoundcards` (
  `id` int(11) NOT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `devicesoundcards_id` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `serial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `busID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `otherserial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `states_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_items_disks`
--

CREATE TABLE `glpi_items_disks` (
  `id` int(11) NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `device` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mountpoint` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `filesystems_id` int(11) NOT NULL DEFAULT '0',
  `totalsize` int(11) NOT NULL DEFAULT '0',
  `freesize` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_items_enclosures`
--

CREATE TABLE `glpi_items_enclosures` (
  `id` int(11) NOT NULL,
  `enclosures_id` int(11) NOT NULL,
  `itemtype` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `items_id` int(11) NOT NULL,
  `position` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_items_operatingsystems`
--

CREATE TABLE `glpi_items_operatingsystems` (
  `id` int(11) NOT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `operatingsystems_id` int(11) NOT NULL DEFAULT '0',
  `operatingsystemversions_id` int(11) NOT NULL DEFAULT '0',
  `operatingsystemservicepacks_id` int(11) NOT NULL DEFAULT '0',
  `operatingsystemarchitectures_id` int(11) NOT NULL DEFAULT '0',
  `operatingsystemkernelversions_id` int(11) NOT NULL DEFAULT '0',
  `license_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `license_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `operatingsystemeditions_id` int(11) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_items_problems`
--

CREATE TABLE `glpi_items_problems` (
  `id` int(11) NOT NULL,
  `problems_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_items_projects`
--

CREATE TABLE `glpi_items_projects` (
  `id` int(11) NOT NULL,
  `projects_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_items_racks`
--

CREATE TABLE `glpi_items_racks` (
  `id` int(11) NOT NULL,
  `racks_id` int(11) NOT NULL,
  `itemtype` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `items_id` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `orientation` tinyint(1) DEFAULT NULL,
  `bgcolor` varchar(7) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hpos` tinyint(1) NOT NULL DEFAULT '0',
  `is_reserved` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_items_tickets`
--

CREATE TABLE `glpi_items_tickets` (
  `id` int(11) NOT NULL,
  `itemtype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `tickets_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_itilcategories`
--

CREATE TABLE `glpi_itilcategories` (
  `id` int(11) NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `itilcategories_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `completename` text COLLATE utf8_unicode_ci,
  `comment` text COLLATE utf8_unicode_ci,
  `level` int(11) NOT NULL DEFAULT '0',
  `knowbaseitemcategories_id` int(11) NOT NULL DEFAULT '0',
  `users_id` int(11) NOT NULL DEFAULT '0',
  `groups_id` int(11) NOT NULL DEFAULT '0',
  `ancestors_cache` longtext COLLATE utf8_unicode_ci,
  `sons_cache` longtext COLLATE utf8_unicode_ci,
  `is_helpdeskvisible` tinyint(1) NOT NULL DEFAULT '1',
  `tickettemplates_id_incident` int(11) NOT NULL DEFAULT '0',
  `tickettemplates_id_demand` int(11) NOT NULL DEFAULT '0',
  `is_incident` int(11) NOT NULL DEFAULT '1',
  `is_request` int(11) NOT NULL DEFAULT '1',
  `is_problem` int(11) NOT NULL DEFAULT '1',
  `is_change` tinyint(1) NOT NULL DEFAULT '1',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_itilsolutions`
--

CREATE TABLE `glpi_itilsolutions` (
  `id` int(11) NOT NULL,
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `solutiontypes_id` int(11) NOT NULL DEFAULT '0',
  `solutiontype_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8_unicode_ci,
  `date_creation` datetime DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_approval` datetime DEFAULT NULL,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `user_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `users_id_editor` int(11) NOT NULL DEFAULT '0',
  `users_id_approval` int(11) NOT NULL DEFAULT '0',
  `user_name_approval` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `ticketfollowups_id` int(11) DEFAULT NULL COMMENT 'Followup reference on reject or approve a ticket solution'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_knowbaseitemcategories`
--

CREATE TABLE `glpi_knowbaseitemcategories` (
  `id` int(11) NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `knowbaseitemcategories_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `completename` text COLLATE utf8_unicode_ci,
  `comment` text COLLATE utf8_unicode_ci,
  `level` int(11) NOT NULL DEFAULT '0',
  `sons_cache` longtext COLLATE utf8_unicode_ci,
  `ancestors_cache` longtext COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_knowbaseitems`
--

CREATE TABLE `glpi_knowbaseitems` (
  `id` int(11) NOT NULL,
  `knowbaseitemcategories_id` int(11) NOT NULL DEFAULT '0',
  `name` text COLLATE utf8_unicode_ci,
  `answer` longtext COLLATE utf8_unicode_ci,
  `is_faq` tinyint(1) NOT NULL DEFAULT '0',
  `users_id` int(11) NOT NULL DEFAULT '0',
  `view` int(11) NOT NULL DEFAULT '0',
  `date` datetime DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `begin_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_knowbaseitems_comments`
--

CREATE TABLE `glpi_knowbaseitems_comments` (
  `id` int(11) NOT NULL,
  `knowbaseitems_id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `language` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `parent_comment_id` int(11) DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_knowbaseitems_items`
--

CREATE TABLE `glpi_knowbaseitems_items` (
  `id` int(11) NOT NULL,
  `knowbaseitems_id` int(11) NOT NULL,
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `date_creation` datetime DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_knowbaseitems_profiles`
--

CREATE TABLE `glpi_knowbaseitems_profiles` (
  `id` int(11) NOT NULL,
  `knowbaseitems_id` int(11) NOT NULL DEFAULT '0',
  `profiles_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '-1',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_knowbaseitems_revisions`
--

CREATE TABLE `glpi_knowbaseitems_revisions` (
  `id` int(11) NOT NULL,
  `knowbaseitems_id` int(11) NOT NULL,
  `revision` int(11) NOT NULL,
  `name` text COLLATE utf8_unicode_ci,
  `answer` longtext COLLATE utf8_unicode_ci,
  `language` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_knowbaseitems_users`
--

CREATE TABLE `glpi_knowbaseitems_users` (
  `id` int(11) NOT NULL,
  `knowbaseitems_id` int(11) NOT NULL DEFAULT '0',
  `users_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_knowbaseitemtranslations`
--

CREATE TABLE `glpi_knowbaseitemtranslations` (
  `id` int(11) NOT NULL,
  `knowbaseitems_id` int(11) NOT NULL DEFAULT '0',
  `language` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` text COLLATE utf8_unicode_ci,
  `answer` longtext COLLATE utf8_unicode_ci,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_lineoperators`
--

CREATE TABLE `glpi_lineoperators` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment` text COLLATE utf8_unicode_ci,
  `mcc` int(11) DEFAULT NULL,
  `mnc` int(11) DEFAULT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_lines`
--

CREATE TABLE `glpi_lines` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `caller_num` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `caller_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `users_id` int(11) NOT NULL DEFAULT '0',
  `groups_id` int(11) NOT NULL DEFAULT '0',
  `lineoperators_id` int(11) NOT NULL DEFAULT '0',
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `states_id` int(11) NOT NULL DEFAULT '0',
  `linetypes_id` int(11) NOT NULL DEFAULT '0',
  `date_creation` datetime DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_linetypes`
--

CREATE TABLE `glpi_linetypes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_links`
--

CREATE TABLE `glpi_links` (
  `id` int(11) NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '1',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` text COLLATE utf8_unicode_ci,
  `open_window` tinyint(1) NOT NULL DEFAULT '1',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_links_itemtypes`
--

CREATE TABLE `glpi_links_itemtypes` (
  `id` int(11) NOT NULL,
  `links_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_locations`
--

CREATE TABLE `glpi_locations` (
  `id` int(11) NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `completename` text COLLATE utf8_unicode_ci,
  `comment` text COLLATE utf8_unicode_ci,
  `level` int(11) NOT NULL DEFAULT '0',
  `ancestors_cache` longtext COLLATE utf8_unicode_ci,
  `sons_cache` longtext COLLATE utf8_unicode_ci,
  `address` text COLLATE utf8_unicode_ci,
  `postcode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `town` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `building` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `room` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `latitude` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `longitude` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `altitude` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_logs`
--

CREATE TABLE `glpi_logs` (
  `id` int(11) NOT NULL,
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype_link` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `linked_action` int(11) NOT NULL DEFAULT '0' COMMENT 'see define.php HISTORY_* constant',
  `user_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `id_search_option` int(11) NOT NULL DEFAULT '0' COMMENT 'see search.constant.php for value',
  `old_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `new_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_mailcollectors`
--

CREATE TABLE `glpi_mailcollectors` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `host` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `login` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `filesize_max` int(11) NOT NULL DEFAULT '2097152',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `date_mod` datetime DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `passwd` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `accepted` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `refused` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `use_kerberos` tinyint(1) NOT NULL DEFAULT '0',
  `errors` int(11) NOT NULL DEFAULT '0',
  `use_mail_date` tinyint(1) NOT NULL DEFAULT '0',
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_manufacturers`
--

CREATE TABLE `glpi_manufacturers` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_monitormodels`
--

CREATE TABLE `glpi_monitormodels` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `product_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `weight` int(11) NOT NULL DEFAULT '0',
  `required_units` int(11) NOT NULL DEFAULT '1',
  `depth` float NOT NULL DEFAULT '1',
  `power_connections` int(11) NOT NULL DEFAULT '0',
  `power_consumption` int(11) NOT NULL DEFAULT '0',
  `is_half_rack` tinyint(1) NOT NULL DEFAULT '0',
  `picture_front` text COLLATE utf8_unicode_ci,
  `picture_rear` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_monitors`
--

CREATE TABLE `glpi_monitors` (
  `id` int(11) NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `contact` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_num` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `users_id_tech` int(11) NOT NULL DEFAULT '0',
  `groups_id_tech` int(11) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `serial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `otherserial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` decimal(5,2) NOT NULL DEFAULT '0.00',
  `have_micro` tinyint(1) NOT NULL DEFAULT '0',
  `have_speaker` tinyint(1) NOT NULL DEFAULT '0',
  `have_subd` tinyint(1) NOT NULL DEFAULT '0',
  `have_bnc` tinyint(1) NOT NULL DEFAULT '0',
  `have_dvi` tinyint(1) NOT NULL DEFAULT '0',
  `have_pivot` tinyint(1) NOT NULL DEFAULT '0',
  `have_hdmi` tinyint(1) NOT NULL DEFAULT '0',
  `have_displayport` tinyint(1) NOT NULL DEFAULT '0',
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `monitortypes_id` int(11) NOT NULL DEFAULT '0',
  `monitormodels_id` int(11) NOT NULL DEFAULT '0',
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `is_global` tinyint(1) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_template` tinyint(1) NOT NULL DEFAULT '0',
  `template_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `groups_id` int(11) NOT NULL DEFAULT '0',
  `states_id` int(11) NOT NULL DEFAULT '0',
  `ticket_tco` decimal(20,4) DEFAULT '0.0000',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `date_creation` datetime DEFAULT NULL,
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_monitortypes`
--

CREATE TABLE `glpi_monitortypes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_netpoints`
--

CREATE TABLE `glpi_netpoints` (
  `id` int(11) NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_networkaliases`
--

CREATE TABLE `glpi_networkaliases` (
  `id` int(11) NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `networknames_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fqdns_id` int(11) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_networkequipmentmodels`
--

CREATE TABLE `glpi_networkequipmentmodels` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `product_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `weight` int(11) NOT NULL DEFAULT '0',
  `required_units` int(11) NOT NULL DEFAULT '1',
  `depth` float NOT NULL DEFAULT '1',
  `power_connections` int(11) NOT NULL DEFAULT '0',
  `power_consumption` int(11) NOT NULL DEFAULT '0',
  `is_half_rack` tinyint(1) NOT NULL DEFAULT '0',
  `picture_front` text COLLATE utf8_unicode_ci,
  `picture_rear` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_networkequipments`
--

CREATE TABLE `glpi_networkequipments` (
  `id` int(11) NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ram` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `serial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `otherserial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_num` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `users_id_tech` int(11) NOT NULL DEFAULT '0',
  `groups_id_tech` int(11) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `domains_id` int(11) NOT NULL DEFAULT '0',
  `networks_id` int(11) NOT NULL DEFAULT '0',
  `networkequipmenttypes_id` int(11) NOT NULL DEFAULT '0',
  `networkequipmentmodels_id` int(11) NOT NULL DEFAULT '0',
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_template` tinyint(1) NOT NULL DEFAULT '0',
  `template_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `groups_id` int(11) NOT NULL DEFAULT '0',
  `states_id` int(11) NOT NULL DEFAULT '0',
  `ticket_tco` decimal(20,4) DEFAULT '0.0000',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_networkequipmenttypes`
--

CREATE TABLE `glpi_networkequipmenttypes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_networkinterfaces`
--

CREATE TABLE `glpi_networkinterfaces` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_networknames`
--

CREATE TABLE `glpi_networknames` (
  `id` int(11) NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `fqdns_id` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_networkportaggregates`
--

CREATE TABLE `glpi_networkportaggregates` (
  `id` int(11) NOT NULL,
  `networkports_id` int(11) NOT NULL DEFAULT '0',
  `networkports_id_list` text COLLATE utf8_unicode_ci COMMENT 'array of associated networkports_id',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_networkportaliases`
--

CREATE TABLE `glpi_networkportaliases` (
  `id` int(11) NOT NULL,
  `networkports_id` int(11) NOT NULL DEFAULT '0',
  `networkports_id_alias` int(11) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_networkportdialups`
--

CREATE TABLE `glpi_networkportdialups` (
  `id` int(11) NOT NULL,
  `networkports_id` int(11) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_networkportethernets`
--

CREATE TABLE `glpi_networkportethernets` (
  `id` int(11) NOT NULL,
  `networkports_id` int(11) NOT NULL DEFAULT '0',
  `items_devicenetworkcards_id` int(11) NOT NULL DEFAULT '0',
  `netpoints_id` int(11) NOT NULL DEFAULT '0',
  `type` varchar(10) COLLATE utf8_unicode_ci DEFAULT '' COMMENT 'T, LX, SX',
  `speed` int(11) NOT NULL DEFAULT '10' COMMENT 'Mbit/s: 10, 100, 1000, 10000',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_networkportfiberchannels`
--

CREATE TABLE `glpi_networkportfiberchannels` (
  `id` int(11) NOT NULL,
  `networkports_id` int(11) NOT NULL DEFAULT '0',
  `items_devicenetworkcards_id` int(11) NOT NULL DEFAULT '0',
  `netpoints_id` int(11) NOT NULL DEFAULT '0',
  `wwn` varchar(16) COLLATE utf8_unicode_ci DEFAULT '',
  `speed` int(11) NOT NULL DEFAULT '10' COMMENT 'Mbit/s: 10, 100, 1000, 10000',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_networkportlocals`
--

CREATE TABLE `glpi_networkportlocals` (
  `id` int(11) NOT NULL,
  `networkports_id` int(11) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_networkports`
--

CREATE TABLE `glpi_networkports` (
  `id` int(11) NOT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `logical_number` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `instantiation_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mac` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_networkports_networkports`
--

CREATE TABLE `glpi_networkports_networkports` (
  `id` int(11) NOT NULL,
  `networkports_id_1` int(11) NOT NULL DEFAULT '0',
  `networkports_id_2` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_networkports_vlans`
--

CREATE TABLE `glpi_networkports_vlans` (
  `id` int(11) NOT NULL,
  `networkports_id` int(11) NOT NULL DEFAULT '0',
  `vlans_id` int(11) NOT NULL DEFAULT '0',
  `tagged` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_networkportwifis`
--

CREATE TABLE `glpi_networkportwifis` (
  `id` int(11) NOT NULL,
  `networkports_id` int(11) NOT NULL DEFAULT '0',
  `items_devicenetworkcards_id` int(11) NOT NULL DEFAULT '0',
  `wifinetworks_id` int(11) NOT NULL DEFAULT '0',
  `networkportwifis_id` int(11) NOT NULL DEFAULT '0' COMMENT 'only useful in case of Managed node',
  `version` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'a, a/b, a/b/g, a/b/g/n, a/b/g/n/y',
  `mode` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'ad-hoc, managed, master, repeater, secondary, monitor, auto',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_networks`
--

CREATE TABLE `glpi_networks` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_notepads`
--

CREATE TABLE `glpi_notepads` (
  `id` int(11) NOT NULL,
  `itemtype` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `date` datetime DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `users_id_lastupdater` int(11) NOT NULL DEFAULT '0',
  `content` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_notifications`
--

CREATE TABLE `glpi_notifications` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `event` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `glpi_notifications`
--

INSERT INTO `glpi_notifications` (`id`, `name`, `entities_id`, `itemtype`, `event`, `comment`, `is_recursive`, `is_active`, `date_mod`, `date_creation`) VALUES
(1, 'Alert Tickets not closed', 0, 'Ticket', 'alertnotclosed', '', 1, 1, '2010-02-16 16:41:39', NULL),
(2, 'New Ticket', 0, 'Ticket', 'new', '', 1, 1, '2010-02-16 16:41:39', NULL),
(3, 'Update Ticket', 0, 'Ticket', 'update', '', 1, 0, '2010-02-16 16:41:39', NULL),
(4, 'Close Ticket', 0, 'Ticket', 'closed', '', 1, 1, '2010-02-16 16:41:39', NULL),
(5, 'Add Followup', 0, 'Ticket', 'add_followup', '', 1, 1, '2010-02-16 16:41:39', NULL),
(6, 'Add Task', 0, 'Ticket', 'add_task', '', 1, 1, '2010-02-16 16:41:39', NULL),
(7, 'Update Followup', 0, 'Ticket', 'update_followup', '', 1, 1, '2010-02-16 16:41:39', NULL),
(8, 'Update Task', 0, 'Ticket', 'update_task', '', 1, 1, '2010-02-16 16:41:39', NULL),
(9, 'Delete Followup', 0, 'Ticket', 'delete_followup', '', 1, 1, '2010-02-16 16:41:39', NULL),
(10, 'Delete Task', 0, 'Ticket', 'delete_task', '', 1, 1, '2010-02-16 16:41:39', NULL),
(11, 'Resolve ticket', 0, 'Ticket', 'solved', '', 1, 1, '2010-02-16 16:41:39', NULL),
(12, 'Ticket Validation', 0, 'Ticket', 'validation', '', 1, 1, '2010-02-16 16:41:39', NULL),
(13, 'New Reservation', 0, 'Reservation', 'new', '', 1, 1, '2010-02-16 16:41:39', NULL),
(14, 'Update Reservation', 0, 'Reservation', 'update', '', 1, 1, '2010-02-16 16:41:39', NULL),
(15, 'Delete Reservation', 0, 'Reservation', 'delete', '', 1, 1, '2010-02-16 16:41:39', NULL),
(16, 'Alert Reservation', 0, 'Reservation', 'alert', '', 1, 1, '2010-02-16 16:41:39', NULL),
(17, 'Contract Notice', 0, 'Contract', 'notice', '', 1, 1, '2010-02-16 16:41:39', NULL),
(18, 'Contract End', 0, 'Contract', 'end', '', 1, 1, '2010-02-16 16:41:39', NULL),
(19, 'MySQL Synchronization', 0, 'DBConnection', 'desynchronization', '', 1, 1, '2010-02-16 16:41:39', NULL),
(20, 'Cartridges', 0, 'CartridgeItem', 'alert', '', 1, 1, '2010-02-16 16:41:39', NULL),
(21, 'Consumables', 0, 'ConsumableItem', 'alert', '', 1, 1, '2010-02-16 16:41:39', NULL),
(22, 'Infocoms', 0, 'Infocom', 'alert', '', 1, 1, '2010-02-16 16:41:39', NULL),
(23, 'Software Licenses', 0, 'SoftwareLicense', 'alert', '', 1, 1, '2010-02-16 16:41:39', NULL),
(24, 'Ticket Recall', 0, 'Ticket', 'recall', '', 1, 1, '2011-03-04 11:35:13', NULL),
(25, 'Password Forget', 0, 'User', 'passwordforget', '', 1, 1, '2011-03-04 11:35:13', NULL),
(26, 'Ticket Satisfaction', 0, 'Ticket', 'satisfaction', '', 1, 1, '2011-03-04 11:35:15', NULL),
(27, 'Item not unique', 0, 'FieldUnicity', 'refuse', '', 1, 1, '2011-03-04 11:35:16', NULL),
(28, 'Crontask Watcher', 0, 'Crontask', 'alert', '', 1, 1, '2011-03-04 11:35:16', NULL),
(29, 'New Problem', 0, 'Problem', 'new', '', 1, 1, '2011-12-06 09:48:33', NULL),
(30, 'Update Problem', 0, 'Problem', 'update', '', 1, 1, '2011-12-06 09:48:33', NULL),
(31, 'Resolve Problem', 0, 'Problem', 'solved', '', 1, 1, '2011-12-06 09:48:33', NULL),
(32, 'Add Task', 0, 'Problem', 'add_task', '', 1, 1, '2011-12-06 09:48:33', NULL),
(33, 'Update Task', 0, 'Problem', 'update_task', '', 1, 1, '2011-12-06 09:48:33', NULL),
(34, 'Delete Task', 0, 'Problem', 'delete_task', '', 1, 1, '2011-12-06 09:48:33', NULL),
(35, 'Close Problem', 0, 'Problem', 'closed', '', 1, 1, '2011-12-06 09:48:33', NULL),
(36, 'Delete Problem', 0, 'Problem', 'delete', '', 1, 1, '2011-12-06 09:48:33', NULL),
(37, 'Ticket Validation Answer', 0, 'Ticket', 'validation_answer', '', 1, 1, '2014-01-15 14:35:24', NULL),
(38, 'Contract End Periodicity', 0, 'Contract', 'periodicity', '', 1, 1, '2014-01-15 14:35:24', NULL),
(39, 'Contract Notice Periodicity', 0, 'Contract', 'periodicitynotice', '', 1, 1, '2014-01-15 14:35:24', NULL),
(40, 'Planning recall', 0, 'PlanningRecall', 'planningrecall', '', 1, 1, '2014-01-15 14:35:24', NULL),
(41, 'Delete Ticket', 0, 'Ticket', 'delete', '', 1, 1, '2014-01-15 14:35:26', NULL),
(42, 'New Change', 0, 'Change', 'new', '', 1, 1, '2014-06-18 08:02:07', NULL),
(43, 'Update Change', 0, 'Change', 'update', '', 1, 1, '2014-06-18 08:02:07', NULL),
(44, 'Resolve Change', 0, 'Change', 'solved', '', 1, 1, '2014-06-18 08:02:07', NULL),
(45, 'Add Task', 0, 'Change', 'add_task', '', 1, 1, '2014-06-18 08:02:07', NULL),
(46, 'Update Task', 0, 'Change', 'update_task', '', 1, 1, '2014-06-18 08:02:07', NULL),
(47, 'Delete Task', 0, 'Change', 'delete_task', '', 1, 1, '2014-06-18 08:02:07', NULL),
(48, 'Close Change', 0, 'Change', 'closed', '', 1, 1, '2014-06-18 08:02:07', NULL),
(49, 'Delete Change', 0, 'Change', 'delete', '', 1, 1, '2014-06-18 08:02:07', NULL),
(50, 'Ticket Satisfaction Answer', 0, 'Ticket', 'replysatisfaction', '', 1, 1, '2014-06-18 08:02:08', NULL),
(51, 'Receiver errors', 0, 'MailCollector', 'error', '', 1, 1, '2014-06-18 08:02:08', NULL),
(52, 'New Project', 0, 'Project', 'new', '', 1, 1, '2014-06-18 08:02:09', NULL),
(53, 'Update Project', 0, 'Project', 'update', '', 1, 1, '2014-06-18 08:02:09', NULL),
(54, 'Delete Project', 0, 'Project', 'delete', '', 1, 1, '2014-06-18 08:02:09', NULL),
(55, 'New Project Task', 0, 'ProjectTask', 'new', '', 1, 1, '2014-06-18 08:02:09', NULL),
(56, 'Update Project Task', 0, 'ProjectTask', 'update', '', 1, 1, '2014-06-18 08:02:09', NULL),
(57, 'Delete Project Task', 0, 'ProjectTask', 'delete', '', 1, 1, '2014-06-18 08:02:09', NULL),
(58, 'Request Unlock Items', 0, 'ObjectLock', 'unlock', '', 1, 1, '2016-02-08 16:57:46', NULL),
(59, 'New user in requesters', 0, 'Ticket', 'requester_user', '', 1, 1, '2016-02-08 16:57:46', NULL),
(60, 'New group in requesters', 0, 'Ticket', 'requester_group', '', 1, 1, '2016-02-08 16:57:46', NULL),
(61, 'New user in observers', 0, 'Ticket', 'observer_user', '', 1, 1, '2016-02-08 16:57:46', NULL),
(62, 'New group in observers', 0, 'Ticket', 'observer_group', '', 1, 1, '2016-02-08 16:57:46', NULL),
(63, 'New user in assignees', 0, 'Ticket', 'assign_user', '', 1, 1, '2016-02-08 16:57:46', NULL),
(64, 'New group in assignees', 0, 'Ticket', 'assign_group', '', 1, 1, '2016-02-08 16:57:46', NULL),
(65, 'New supplier in assignees', 0, 'Ticket', 'assign_supplier', '', 1, 1, '2016-02-08 16:57:46', NULL),
(66, 'Saved searches', 0, 'SavedSearch_Alert', 'alert', '', 1, 1, '2016-02-08 16:57:46', NULL),
(67, 'Certificates', 0, 'Certificate', 'alert', '', 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_notifications_notificationtemplates`
--

CREATE TABLE `glpi_notifications_notificationtemplates` (
  `id` int(11) NOT NULL,
  `notifications_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mode` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'See Notification_NotificationTemplate::MODE_* constants',
  `notificationtemplates_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `glpi_notifications_notificationtemplates`
--

INSERT INTO `glpi_notifications_notificationtemplates` (`id`, `notifications_id`, `mode`, `notificationtemplates_id`) VALUES
(1, '1', 'mailing', 6),
(10, '10', 'mailing', 4),
(11, '11', 'mailing', 4),
(12, '12', 'mailing', 7),
(13, '13', 'mailing', 2),
(14, '14', 'mailing', 2),
(15, '15', 'mailing', 2),
(16, '16', 'mailing', 3),
(17, '17', 'mailing', 12),
(18, '18', 'mailing', 12),
(19, '19', 'mailing', 1),
(2, '2', 'mailing', 4),
(20, '20', 'mailing', 8),
(21, '21', 'mailing', 9),
(22, '22', 'mailing', 10),
(23, '23', 'mailing', 11),
(24, '24', 'mailing', 4),
(25, '25', 'mailing', 13),
(26, '26', 'mailing', 14),
(27, '27', 'mailing', 15),
(28, '28', 'mailing', 16),
(29, '29', 'mailing', 17),
(3, '3', 'mailing', 4),
(30, '30', 'mailing', 17),
(31, '31', 'mailing', 17),
(32, '32', 'mailing', 17),
(33, '33', 'mailing', 17),
(34, '34', 'mailing', 17),
(35, '35', 'mailing', 17),
(36, '36', 'mailing', 17),
(37, '37', 'mailing', 7),
(38, '38', 'mailing', 12),
(39, '39', 'mailing', 12),
(4, '4', 'mailing', 4),
(40, '40', 'mailing', 18),
(41, '41', 'mailing', 4),
(42, '42', 'mailing', 19),
(43, '43', 'mailing', 19),
(44, '44', 'mailing', 19),
(45, '45', 'mailing', 19),
(46, '46', 'mailing', 19),
(47, '47', 'mailing', 19),
(48, '48', 'mailing', 19),
(49, '49', 'mailing', 19),
(5, '5', 'mailing', 4),
(50, '50', 'mailing', 14),
(51, '51', 'mailing', 20),
(52, '52', 'mailing', 21),
(53, '53', 'mailing', 21),
(54, '54', 'mailing', 21),
(55, '55', 'mailing', 22),
(56, '56', 'mailing', 22),
(57, '57', 'mailing', 22),
(58, '58', 'mailing', 23),
(59, '59', 'mailing', 4),
(6, '6', 'mailing', 4),
(60, '60', 'mailing', 4),
(61, '61', 'mailing', 4),
(62, '62', 'mailing', 4),
(63, '63', 'mailing', 4),
(64, '64', 'mailing', 4),
(65, '65', 'mailing', 4),
(66, '66', 'mailing', 24),
(67, '67', 'mailing', 25),
(7, '7', 'mailing', 4),
(8, '8', 'mailing', 4),
(9, '9', 'mailing', 4);

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_notificationtargets`
--

CREATE TABLE `glpi_notificationtargets` (
  `id` int(11) NOT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `notifications_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `glpi_notificationtargets`
--

INSERT INTO `glpi_notificationtargets` (`id`, `items_id`, `type`, `notifications_id`) VALUES
(1, 3, 1, 13),
(2, 1, 1, 13),
(3, 3, 2, 2),
(4, 1, 1, 2),
(5, 1, 1, 3),
(6, 1, 1, 5),
(7, 1, 1, 4),
(8, 2, 1, 3),
(9, 4, 1, 3),
(10, 3, 1, 2),
(11, 3, 1, 3),
(12, 3, 1, 5),
(13, 3, 1, 4),
(14, 1, 1, 19),
(15, 14, 1, 12),
(16, 3, 1, 14),
(17, 1, 1, 14),
(18, 3, 1, 15),
(19, 1, 1, 15),
(20, 1, 1, 6),
(21, 3, 1, 6),
(22, 1, 1, 7),
(23, 3, 1, 7),
(24, 1, 1, 8),
(25, 3, 1, 8),
(26, 1, 1, 9),
(27, 3, 1, 9),
(28, 1, 1, 10),
(29, 3, 1, 10),
(30, 1, 1, 11),
(31, 3, 1, 11),
(32, 19, 1, 25),
(33, 3, 1, 26),
(34, 21, 1, 2),
(35, 21, 1, 3),
(36, 21, 1, 5),
(37, 21, 1, 4),
(38, 21, 1, 6),
(39, 21, 1, 7),
(40, 21, 1, 8),
(41, 21, 1, 9),
(42, 21, 1, 10),
(43, 21, 1, 11),
(46, 1, 1, 28),
(47, 3, 1, 29),
(48, 1, 1, 29),
(49, 21, 1, 29),
(50, 2, 1, 30),
(51, 4, 1, 30),
(52, 3, 1, 30),
(53, 1, 1, 30),
(54, 21, 1, 30),
(55, 3, 1, 31),
(56, 1, 1, 31),
(57, 21, 1, 31),
(58, 3, 1, 32),
(59, 1, 1, 32),
(60, 21, 1, 32),
(61, 3, 1, 33),
(62, 1, 1, 33),
(63, 21, 1, 33),
(64, 3, 1, 34),
(65, 1, 1, 34),
(66, 21, 1, 34),
(67, 3, 1, 35),
(68, 1, 1, 35),
(69, 21, 1, 35),
(70, 3, 1, 36),
(71, 1, 1, 36),
(72, 21, 1, 36),
(73, 14, 1, 37),
(74, 3, 1, 40),
(75, 1, 1, 41),
(76, 3, 1, 42),
(77, 1, 1, 42),
(78, 21, 1, 42),
(79, 2, 1, 43),
(80, 4, 1, 43),
(81, 3, 1, 43),
(82, 1, 1, 43),
(83, 21, 1, 43),
(84, 3, 1, 44),
(85, 1, 1, 44),
(86, 21, 1, 44),
(87, 3, 1, 45),
(88, 1, 1, 45),
(89, 21, 1, 45),
(90, 3, 1, 46),
(91, 1, 1, 46),
(92, 21, 1, 46),
(93, 3, 1, 47),
(94, 1, 1, 47),
(95, 21, 1, 47),
(96, 3, 1, 48),
(97, 1, 1, 48),
(98, 21, 1, 48),
(99, 3, 1, 49),
(100, 1, 1, 49),
(101, 21, 1, 49),
(102, 3, 1, 50),
(103, 2, 1, 50),
(104, 1, 1, 51),
(105, 27, 1, 52),
(106, 1, 1, 52),
(107, 28, 1, 52),
(108, 27, 1, 53),
(109, 1, 1, 53),
(110, 28, 1, 53),
(111, 27, 1, 54),
(112, 1, 1, 54),
(113, 28, 1, 54),
(114, 31, 1, 55),
(115, 1, 1, 55),
(116, 32, 1, 55),
(117, 31, 1, 56),
(118, 1, 1, 56),
(119, 32, 1, 56),
(120, 31, 1, 57),
(121, 1, 1, 57),
(122, 32, 1, 57),
(123, 19, 1, 58),
(124, 3, 1, 59),
(125, 13, 1, 60),
(126, 21, 1, 61),
(127, 20, 1, 62),
(128, 2, 1, 63),
(129, 23, 1, 64),
(130, 8, 1, 65),
(131, 19, 1, 66);

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_notificationtemplates`
--

CREATE TABLE `glpi_notificationtemplates` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `date_mod` datetime DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `css` text COLLATE utf8_unicode_ci,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `glpi_notificationtemplates`
--

INSERT INTO `glpi_notificationtemplates` (`id`, `name`, `itemtype`, `date_mod`, `comment`, `css`, `date_creation`) VALUES
(1, 'MySQL Synchronization', 'DBConnection', '2010-02-01 15:51:46', '', NULL, NULL),
(2, 'Reservations', 'Reservation', '2010-02-03 14:03:45', '', NULL, NULL),
(3, 'Alert Reservation', 'Reservation', '2010-02-03 14:03:45', '', NULL, NULL),
(4, 'Tickets', 'Ticket', '2010-02-07 21:39:15', '', NULL, NULL),
(5, 'Tickets (Simple)', 'Ticket', '2010-02-07 21:39:15', '', NULL, NULL),
(6, 'Alert Tickets not closed', 'Ticket', '2010-02-07 21:39:15', '', NULL, NULL),
(7, 'Tickets Validation', 'Ticket', '2010-02-26 21:39:15', '', NULL, NULL),
(8, 'Cartridges', 'CartridgeItem', '2010-02-16 13:17:24', '', NULL, NULL),
(9, 'Consumables', 'ConsumableItem', '2010-02-16 13:17:38', '', NULL, NULL),
(10, 'Infocoms', 'Infocom', '2010-02-16 13:17:55', '', NULL, NULL),
(11, 'Licenses', 'SoftwareLicense', '2010-02-16 13:18:12', '', NULL, NULL),
(12, 'Contracts', 'Contract', '2010-02-16 13:18:12', '', NULL, NULL),
(13, 'Password Forget', 'User', '2011-03-04 11:35:13', NULL, NULL, NULL),
(14, 'Ticket Satisfaction', 'Ticket', '2011-03-04 11:35:15', NULL, NULL, NULL),
(15, 'Item not unique', 'FieldUnicity', '2011-03-04 11:35:16', NULL, NULL, NULL),
(16, 'Crontask', 'Crontask', '2011-03-04 11:35:16', NULL, NULL, NULL),
(17, 'Problems', 'Problem', '2011-12-06 09:48:33', NULL, NULL, NULL),
(18, 'Planning recall', 'PlanningRecall', '2014-01-15 14:35:24', NULL, NULL, NULL),
(19, 'Changes', 'Change', '2014-06-18 08:02:07', NULL, NULL, NULL),
(20, 'Receiver errors', 'MailCollector', '2014-06-18 08:02:08', NULL, NULL, NULL),
(21, 'Projects', 'Project', '2014-06-18 08:02:09', NULL, NULL, NULL),
(22, 'Project Tasks', 'ProjectTask', '2014-06-18 08:02:09', NULL, NULL, NULL),
(23, 'Unlock Item request', 'ObjectLock', '2016-02-08 16:57:46', NULL, NULL, NULL),
(24, 'Saved searches alerts', 'SavedSearch_Alert', '2017-04-05 14:57:34', NULL, NULL, NULL),
(25, 'Certificates', 'Certificate', NULL, '', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_notificationtemplatetranslations`
--

CREATE TABLE `glpi_notificationtemplatetranslations` (
  `id` int(11) NOT NULL,
  `notificationtemplates_id` int(11) NOT NULL DEFAULT '0',
  `language` char(5) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content_text` text COLLATE utf8_unicode_ci,
  `content_html` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `glpi_notificationtemplatetranslations`
--

INSERT INTO `glpi_notificationtemplatetranslations` (`id`, `notificationtemplates_id`, `language`, `subject`, `content_text`, `content_html`) VALUES
(1, 1, '', '##lang.dbconnection.title##', '##lang.dbconnection.delay## : ##dbconnection.delay##\n', '&lt;p&gt;##lang.dbconnection.delay## : ##dbconnection.delay##&lt;/p&gt;'),
(2, 2, '', '##reservation.action##', '======================================================================\n##lang.reservation.user##: ##reservation.user##\n##lang.reservation.item.name##: ##reservation.itemtype## - ##reservation.item.name##\n##IFreservation.tech## ##lang.reservation.tech## ##reservation.tech## ##ENDIFreservation.tech##\n##lang.reservation.begin##: ##reservation.begin##\n##lang.reservation.end##: ##reservation.end##\n##lang.reservation.comment##: ##reservation.comment##\n======================================================================\n', '&lt;!-- description{ color: inherit; background: #ebebeb;border-style: solid;border-color: #8d8d8d; border-width: 0px 1px 1px 0px; } --&gt;\n&lt;p&gt;&lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt;##lang.reservation.user##:&lt;/span&gt;##reservation.user##&lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt;##lang.reservation.item.name##:&lt;/span&gt;##reservation.itemtype## - ##reservation.item.name##&lt;br /&gt;##IFreservation.tech## ##lang.reservation.tech## ##reservation.tech####ENDIFreservation.tech##&lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt;##lang.reservation.begin##:&lt;/span&gt; ##reservation.begin##&lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt;##lang.reservation.end##:&lt;/span&gt;##reservation.end##&lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt;##lang.reservation.comment##:&lt;/span&gt; ##reservation.comment##&lt;/p&gt;'),
(3, 3, '', '##reservation.action##  ##reservation.entity##', '##lang.reservation.entity## : ##reservation.entity##\n\n\n##FOREACHreservations##\n##lang.reservation.itemtype## : ##reservation.itemtype##\n\n ##lang.reservation.item## : ##reservation.item##\n\n ##reservation.url##\n\n ##ENDFOREACHreservations##', '&lt;p&gt;##lang.reservation.entity## : ##reservation.entity## &lt;br /&gt; &lt;br /&gt;\n##FOREACHreservations## &lt;br /&gt;##lang.reservation.itemtype## :  ##reservation.itemtype##&lt;br /&gt;\n ##lang.reservation.item## :  ##reservation.item##&lt;br /&gt; &lt;br /&gt;\n &lt;a href=\"##reservation.url##\"&gt; ##reservation.url##&lt;/a&gt;&lt;br /&gt;\n ##ENDFOREACHreservations##&lt;/p&gt;'),
(4, 4, '', '##ticket.action## ##ticket.title##', ' ##IFticket.storestatus=5##\n ##lang.ticket.url## : ##ticket.urlapprove##\n ##lang.ticket.autoclosewarning##\n ##lang.ticket.solvedate## : ##ticket.solvedate##\n ##lang.ticket.solution.type## : ##ticket.solution.type##\n ##lang.ticket.solution.description## : ##ticket.solution.description## ##ENDIFticket.storestatus##\n ##ELSEticket.storestatus## ##lang.ticket.url## : ##ticket.url## ##ENDELSEticket.storestatus##\n\n ##lang.ticket.description##\n\n ##lang.ticket.title## : ##ticket.title##\n ##lang.ticket.authors## : ##IFticket.authors## ##ticket.authors## ##ENDIFticket.authors## ##ELSEticket.authors##--##ENDELSEticket.authors##\n ##lang.ticket.creationdate## : ##ticket.creationdate##\n ##lang.ticket.closedate## : ##ticket.closedate##\n ##lang.ticket.requesttype## : ##ticket.requesttype##\n##lang.ticket.item.name## :\n\n##FOREACHitems##\n\n ##IFticket.itemtype##\n  ##ticket.itemtype## - ##ticket.item.name##\n  ##IFticket.item.model## ##lang.ticket.item.model## : ##ticket.item.model## ##ENDIFticket.item.model##\n  ##IFticket.item.serial## ##lang.ticket.item.serial## : ##ticket.item.serial## ##ENDIFticket.item.serial##\n  ##IFticket.item.otherserial## ##lang.ticket.item.otherserial## : ##ticket.item.otherserial## ##ENDIFticket.item.otherserial##\n ##ENDIFticket.itemtype##\n\n##ENDFOREACHitems##\n##IFticket.assigntousers## ##lang.ticket.assigntousers## : ##ticket.assigntousers## ##ENDIFticket.assigntousers##\n ##lang.ticket.status## : ##ticket.status##\n##IFticket.assigntogroups## ##lang.ticket.assigntogroups## : ##ticket.assigntogroups## ##ENDIFticket.assigntogroups##\n ##lang.ticket.urgency## : ##ticket.urgency##\n ##lang.ticket.impact## : ##ticket.impact##\n ##lang.ticket.priority## : ##ticket.priority##\n##IFticket.user.email## ##lang.ticket.user.email## : ##ticket.user.email ##ENDIFticket.user.email##\n##IFticket.category## ##lang.ticket.category## : ##ticket.category## ##ENDIFticket.category## ##ELSEticket.category## ##lang.ticket.nocategoryassigned## ##ENDELSEticket.category##\n ##lang.ticket.content## : ##ticket.content##\n ##IFticket.storestatus=6##\n\n ##lang.ticket.solvedate## : ##ticket.solvedate##\n ##lang.ticket.solution.type## : ##ticket.solution.type##\n ##lang.ticket.solution.description## : ##ticket.solution.description##\n ##ENDIFticket.storestatus##\n ##lang.ticket.numberoffollowups## : ##ticket.numberoffollowups##\n\n##FOREACHfollowups##\n\n [##followup.date##] ##lang.followup.isprivate## : ##followup.isprivate##\n ##lang.followup.author## ##followup.author##\n ##lang.followup.description## ##followup.description##\n ##lang.followup.date## ##followup.date##\n ##lang.followup.requesttype## ##followup.requesttype##\n\n##ENDFOREACHfollowups##\n ##lang.ticket.numberoftasks## : ##ticket.numberoftasks##\n\n##FOREACHtasks##\n\n [##task.date##] ##lang.task.isprivate## : ##task.isprivate##\n ##lang.task.author## ##task.author##\n ##lang.task.description## ##task.description##\n ##lang.task.time## ##task.time##\n ##lang.task.category## ##task.category##\n\n##ENDFOREACHtasks##', '<!-- description{ color: inherit; background: #ebebeb; border-style: solid;border-color: #8d8d8d; border-width: 0px 1px 1px 0px; }    -->\n<div>##IFticket.storestatus=5##</div>\n<div>##lang.ticket.url## : <a href=\"##ticket.urlapprove##\">##ticket.urlapprove##</a> <strong>&#160;</strong></div>\n<div><strong>##lang.ticket.autoclosewarning##</strong></div>\n<div><span style=\"color: #888888;\"><strong><span style=\"text-decoration: underline;\">##lang.ticket.solvedate##</span></strong></span> : ##ticket.solvedate##<br /><span style=\"text-decoration: underline; color: #888888;\"><strong>##lang.ticket.solution.type##</strong></span> : ##ticket.solution.type##<br /><span style=\"text-decoration: underline; color: #888888;\"><strong>##lang.ticket.solution.description##</strong></span> : ##ticket.solution.description## ##ENDIFticket.storestatus##</div>\n<div>##ELSEticket.storestatus## ##lang.ticket.url## : <a href=\"##ticket.url##\">##ticket.url##</a> ##ENDELSEticket.storestatus##</div>\n<p class=\"description b\"><strong>##lang.ticket.description##</strong></p>\n<p><span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.ticket.title##</span>&#160;:##ticket.title## <br /> <span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.ticket.authors##</span>&#160;:##IFticket.authors## ##ticket.authors## ##ENDIFticket.authors##    ##ELSEticket.authors##--##ENDELSEticket.authors## <br /> <span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.ticket.creationdate##</span>&#160;:##ticket.creationdate## <br /> <span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.ticket.closedate##</span>&#160;:##ticket.closedate## <br /> <span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.ticket.requesttype##</span>&#160;:##ticket.requesttype##<br />\n<br /><span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.ticket.item.name##</span>&#160;:\n<p>##FOREACHitems##</p>\n<div class=\"description b\">##IFticket.itemtype## ##ticket.itemtype##&#160;- ##ticket.item.name## ##IFticket.item.model## ##lang.ticket.item.model## : ##ticket.item.model## ##ENDIFticket.item.model## ##IFticket.item.serial## ##lang.ticket.item.serial## : ##ticket.item.serial## ##ENDIFticket.item.serial## ##IFticket.item.otherserial## ##lang.ticket.item.otherserial## : ##ticket.item.otherserial## ##ENDIFticket.item.otherserial## ##ENDIFticket.itemtype## </div><br />\n<p>##ENDFOREACHitems##</p>\n##IFticket.assigntousers## <span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.ticket.assigntousers##</span>&#160;: ##ticket.assigntousers## ##ENDIFticket.assigntousers##<br /> <span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\">##lang.ticket.status## </span>&#160;: ##ticket.status##<br /> ##IFticket.assigntogroups## <span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.ticket.assigntogroups##</span>&#160;: ##ticket.assigntogroups## ##ENDIFticket.assigntogroups##<br /> <span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.ticket.urgency##</span>&#160;: ##ticket.urgency##<br /> <span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.ticket.impact##</span>&#160;: ##ticket.impact##<br /> <span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.ticket.priority##</span>&#160;: ##ticket.priority## <br /> ##IFticket.user.email##<span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.ticket.user.email##</span>&#160;: ##ticket.user.email ##ENDIFticket.user.email##    <br /> ##IFticket.category##<span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\">##lang.ticket.category## </span>&#160;:##ticket.category## ##ENDIFticket.category## ##ELSEticket.category## ##lang.ticket.nocategoryassigned## ##ENDELSEticket.category##    <br /> <span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.ticket.content##</span>&#160;: ##ticket.content##</p>\n<br />##IFticket.storestatus=6##<br /><span style=\"text-decoration: underline;\"><strong><span style=\"color: #888888;\">##lang.ticket.solvedate##</span></strong></span> : ##ticket.solvedate##<br /><span style=\"color: #888888;\"><strong><span style=\"text-decoration: underline;\">##lang.ticket.solution.type##</span></strong></span> : ##ticket.solution.type##<br /><span style=\"text-decoration: underline; color: #888888;\"><strong>##lang.ticket.solution.description##</strong></span> : ##ticket.solution.description##<br />##ENDIFticket.storestatus##</p>\n<div class=\"description b\">##lang.ticket.numberoffollowups##&#160;: ##ticket.numberoffollowups##</div>\n<p>##FOREACHfollowups##</p>\n<div class=\"description b\"><br /> <strong> [##followup.date##] <em>##lang.followup.isprivate## : ##followup.isprivate## </em></strong><br /> <span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.followup.author## </span> ##followup.author##<br /> <span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.followup.description## </span> ##followup.description##<br /> <span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.followup.date## </span> ##followup.date##<br /> <span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.followup.requesttype## </span> ##followup.requesttype##</div>\n<p>##ENDFOREACHfollowups##</p>\n<div class=\"description b\">##lang.ticket.numberoftasks##&#160;: ##ticket.numberoftasks##</div>\n<p>##FOREACHtasks##</p>\n<div class=\"description b\"><br /> <strong> [##task.date##] <em>##lang.task.isprivate## : ##task.isprivate## </em></strong><br /> <span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.task.author##</span> ##task.author##<br /> <span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.task.description##</span> ##task.description##<br /> <span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.task.time##</span> ##task.time##<br /> <span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.task.category##</span> ##task.category##</div>\n<p>##ENDFOREACHtasks##</p>'),
(5, 12, '', '##contract.action##  ##contract.entity##', '##lang.contract.entity## : ##contract.entity##\n\n##FOREACHcontracts##\n##lang.contract.name## : ##contract.name##\n##lang.contract.number## : ##contract.number##\n##lang.contract.time## : ##contract.time##\n##IFcontract.type####lang.contract.type## : ##contract.type####ENDIFcontract.type##\n##contract.url##\n##ENDFOREACHcontracts##', '&lt;p&gt;##lang.contract.entity## : ##contract.entity##&lt;br /&gt;\n&lt;br /&gt;##FOREACHcontracts##&lt;br /&gt;##lang.contract.name## :\n##contract.name##&lt;br /&gt;\n##lang.contract.number## : ##contract.number##&lt;br /&gt;\n##lang.contract.time## : ##contract.time##&lt;br /&gt;\n##IFcontract.type####lang.contract.type## : ##contract.type##\n##ENDIFcontract.type##&lt;br /&gt;\n&lt;a href=\"##contract.url##\"&gt;\n##contract.url##&lt;/a&gt;&lt;br /&gt;\n##ENDFOREACHcontracts##&lt;/p&gt;'),
(6, 5, '', '##ticket.action## ##ticket.title##', '##lang.ticket.url## : ##ticket.url##\n\n##lang.ticket.description##\n\n\n##lang.ticket.title##  :##ticket.title##\n\n##lang.ticket.authors##  :##IFticket.authors##\n##ticket.authors## ##ENDIFticket.authors##\n##ELSEticket.authors##--##ENDELSEticket.authors##\n\n##IFticket.category## ##lang.ticket.category##  :##ticket.category##\n##ENDIFticket.category## ##ELSEticket.category##\n##lang.ticket.nocategoryassigned## ##ENDELSEticket.category##\n\n##lang.ticket.content##  : ##ticket.content##\n##IFticket.itemtype##\n##lang.ticket.item.name##  : ##ticket.itemtype## - ##ticket.item.name##\n##ENDIFticket.itemtype##', '&lt;div&gt;##lang.ticket.url## : &lt;a href=\"##ticket.url##\"&gt;\n##ticket.url##&lt;/a&gt;&lt;/div&gt;\n&lt;div class=\"description b\"&gt;\n##lang.ticket.description##&lt;/div&gt;\n&lt;p&gt;&lt;span\nstyle=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt;\n##lang.ticket.title##&lt;/span&gt;&#160;:##ticket.title##\n&lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt;\n##lang.ticket.authors##&lt;/span&gt;\n##IFticket.authors## ##ticket.authors##\n##ENDIFticket.authors##\n##ELSEticket.authors##--##ENDELSEticket.authors##\n&lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt;&#160\n;&lt;/span&gt;&lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; &lt;/span&gt;\n##IFticket.category##&lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt;\n##lang.ticket.category## &lt;/span&gt;&#160;:##ticket.category##\n##ENDIFticket.category## ##ELSEticket.category##\n##lang.ticket.nocategoryassigned## ##ENDELSEticket.category##\n&lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt;\n##lang.ticket.content##&lt;/span&gt;&#160;:\n##ticket.content##&lt;br /&gt;##IFticket.itemtype##\n&lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt;\n##lang.ticket.item.name##&lt;/span&gt;&#160;:\n##ticket.itemtype## - ##ticket.item.name##\n##ENDIFticket.itemtype##&lt;/p&gt;'),
(7, 7, '', '##ticket.action## ##ticket.title##', '##FOREACHvalidations##\n\n##IFvalidation.storestatus=2##\n##validation.submission.title##\n##lang.validation.commentsubmission## : ##validation.commentsubmission##\n##ENDIFvalidation.storestatus##\n##ELSEvalidation.storestatus## ##validation.answer.title## ##ENDELSEvalidation.storestatus##\n\n##lang.ticket.url## : ##ticket.urlvalidation##\n\n##IFvalidation.status## ##lang.validation.status## : ##validation.status## ##ENDIFvalidation.status##\n##IFvalidation.commentvalidation##\n##lang.validation.commentvalidation## : ##validation.commentvalidation##\n##ENDIFvalidation.commentvalidation##\n##ENDFOREACHvalidations##', '&lt;div&gt;##FOREACHvalidations##&lt;/div&gt;\n&lt;p&gt;##IFvalidation.storestatus=2##&lt;/p&gt;\n&lt;div&gt;##validation.submission.title##&lt;/div&gt;\n&lt;div&gt;##lang.validation.commentsubmission## : ##validation.commentsubmission##&lt;/div&gt;\n&lt;div&gt;##ENDIFvalidation.storestatus##&lt;/div&gt;\n&lt;div&gt;##ELSEvalidation.storestatus## ##validation.answer.title## ##ENDELSEvalidation.storestatus##&lt;/div&gt;\n&lt;div&gt;&lt;/div&gt;\n&lt;div&gt;\n&lt;div&gt;##lang.ticket.url## : &lt;a href=\"##ticket.urlvalidation##\"&gt; ##ticket.urlvalidation## &lt;/a&gt;&lt;/div&gt;\n&lt;/div&gt;\n&lt;p&gt;##IFvalidation.status## ##lang.validation.status## : ##validation.status## ##ENDIFvalidation.status##\n&lt;br /&gt; ##IFvalidation.commentvalidation##&lt;br /&gt; ##lang.validation.commentvalidation## :\n&#160; ##validation.commentvalidation##&lt;br /&gt; ##ENDIFvalidation.commentvalidation##\n&lt;br /&gt;##ENDFOREACHvalidations##&lt;/p&gt;'),
(8, 6, '', '##ticket.action## ##ticket.entity##', '##lang.ticket.entity## : ##ticket.entity##\n\n##FOREACHtickets##\n\n##lang.ticket.title## : ##ticket.title##\n ##lang.ticket.status## : ##ticket.status##\n\n ##ticket.url##\n ##ENDFOREACHtickets##', '&lt;table class=\"tab_cadre\" border=\"1\" cellspacing=\"2\" cellpadding=\"3\"&gt;\n&lt;tbody&gt;\n&lt;tr&gt;\n&lt;td style=\"text-align: left;\" width=\"auto\" bgcolor=\"#cccccc\"&gt;&lt;span style=\"font-size: 11px; text-align: left;\"&gt;##lang.ticket.authors##&lt;/span&gt;&lt;/td&gt;\n&lt;td style=\"text-align: left;\" width=\"auto\" bgcolor=\"#cccccc\"&gt;&lt;span style=\"font-size: 11px; text-align: left;\"&gt;##lang.ticket.title##&lt;/span&gt;&lt;/td&gt;\n&lt;td style=\"text-align: left;\" width=\"auto\" bgcolor=\"#cccccc\"&gt;&lt;span style=\"font-size: 11px; text-align: left;\"&gt;##lang.ticket.priority##&lt;/span&gt;&lt;/td&gt;\n&lt;td style=\"text-align: left;\" width=\"auto\" bgcolor=\"#cccccc\"&gt;&lt;span style=\"font-size: 11px; text-align: left;\"&gt;##lang.ticket.status##&lt;/span&gt;&lt;/td&gt;\n&lt;td style=\"text-align: left;\" width=\"auto\" bgcolor=\"#cccccc\"&gt;&lt;span style=\"font-size: 11px; text-align: left;\"&gt;##lang.ticket.attribution##&lt;/span&gt;&lt;/td&gt;\n&lt;td style=\"text-align: left;\" width=\"auto\" bgcolor=\"#cccccc\"&gt;&lt;span style=\"font-size: 11px; text-align: left;\"&gt;##lang.ticket.creationdate##&lt;/span&gt;&lt;/td&gt;\n&lt;td style=\"text-align: left;\" width=\"auto\" bgcolor=\"#cccccc\"&gt;&lt;span style=\"font-size: 11px; text-align: left;\"&gt;##lang.ticket.content##&lt;/span&gt;&lt;/td&gt;\n&lt;/tr&gt;\n##FOREACHtickets##\n&lt;tr&gt;\n&lt;td width=\"auto\"&gt;&lt;span style=\"font-size: 11px; text-align: left;\"&gt;##ticket.authors##&lt;/span&gt;&lt;/td&gt;\n&lt;td width=\"auto\"&gt;&lt;span style=\"font-size: 11px; text-align: left;\"&gt;&lt;a href=\"##ticket.url##\"&gt;##ticket.title##&lt;/a&gt;&lt;/span&gt;&lt;/td&gt;\n&lt;td width=\"auto\"&gt;&lt;span style=\"font-size: 11px; text-align: left;\"&gt;##ticket.priority##&lt;/span&gt;&lt;/td&gt;\n&lt;td width=\"auto\"&gt;&lt;span style=\"font-size: 11px; text-align: left;\"&gt;##ticket.status##&lt;/span&gt;&lt;/td&gt;\n&lt;td width=\"auto\"&gt;&lt;span style=\"font-size: 11px; text-align: left;\"&gt;##IFticket.assigntousers####ticket.assigntousers##&lt;br /&gt;##ENDIFticket.assigntousers####IFticket.assigntogroups##&lt;br /&gt;##ticket.assigntogroups## ##ENDIFticket.assigntogroups####IFticket.assigntosupplier##&lt;br /&gt;##ticket.assigntosupplier## ##ENDIFticket.assigntosupplier##&lt;/span&gt;&lt;/td&gt;\n&lt;td width=\"auto\"&gt;&lt;span style=\"font-size: 11px; text-align: left;\"&gt;##ticket.creationdate##&lt;/span&gt;&lt;/td&gt;\n&lt;td width=\"auto\"&gt;&lt;span style=\"font-size: 11px; text-align: left;\"&gt;##ticket.content##&lt;/span&gt;&lt;/td&gt;\n&lt;/tr&gt;\n##ENDFOREACHtickets##\n&lt;/tbody&gt;\n&lt;/table&gt;'),
(9, 9, '', '##consumable.action##  ##consumable.entity##', '##lang.consumable.entity## : ##consumable.entity##\n\n\n##FOREACHconsumables##\n##lang.consumable.item## : ##consumable.item##\n\n\n##lang.consumable.reference## : ##consumable.reference##\n\n##lang.consumable.remaining## : ##consumable.remaining##\n\n##consumable.url##\n\n##ENDFOREACHconsumables##', '&lt;p&gt;\n##lang.consumable.entity## : ##consumable.entity##\n&lt;br /&gt; &lt;br /&gt;##FOREACHconsumables##\n&lt;br /&gt;##lang.consumable.item## : ##consumable.item##&lt;br /&gt;\n&lt;br /&gt;##lang.consumable.reference## : ##consumable.reference##&lt;br /&gt;\n##lang.consumable.remaining## : ##consumable.remaining##&lt;br /&gt;\n&lt;a href=\"##consumable.url##\"&gt; ##consumable.url##&lt;/a&gt;&lt;br /&gt;\n   ##ENDFOREACHconsumables##&lt;/p&gt;'),
(10, 8, '', '##cartridge.action##  ##cartridge.entity##', '##lang.cartridge.entity## : ##cartridge.entity##\n\n\n##FOREACHcartridges##\n##lang.cartridge.item## : ##cartridge.item##\n\n\n##lang.cartridge.reference## : ##cartridge.reference##\n\n##lang.cartridge.remaining## : ##cartridge.remaining##\n\n##cartridge.url##\n ##ENDFOREACHcartridges##', '&lt;p&gt;##lang.cartridge.entity## : ##cartridge.entity##\n&lt;br /&gt; &lt;br /&gt;##FOREACHcartridges##\n&lt;br /&gt;##lang.cartridge.item## :\n##cartridge.item##&lt;br /&gt; &lt;br /&gt;\n##lang.cartridge.reference## :\n##cartridge.reference##&lt;br /&gt;\n##lang.cartridge.remaining## :\n##cartridge.remaining##&lt;br /&gt;\n&lt;a href=\"##cartridge.url##\"&gt;\n##cartridge.url##&lt;/a&gt;&lt;br /&gt;\n##ENDFOREACHcartridges##&lt;/p&gt;'),
(11, 10, '', '##infocom.action##  ##infocom.entity##', '##lang.infocom.entity## : ##infocom.entity##\n\n\n##FOREACHinfocoms##\n\n##lang.infocom.itemtype## : ##infocom.itemtype##\n\n##lang.infocom.item## : ##infocom.item##\n\n\n##lang.infocom.expirationdate## : ##infocom.expirationdate##\n\n##infocom.url##\n ##ENDFOREACHinfocoms##', '&lt;p&gt;##lang.infocom.entity## : ##infocom.entity##\n&lt;br /&gt; &lt;br /&gt;##FOREACHinfocoms##\n&lt;br /&gt;##lang.infocom.itemtype## : ##infocom.itemtype##&lt;br /&gt;\n##lang.infocom.item## : ##infocom.item##&lt;br /&gt; &lt;br /&gt;\n##lang.infocom.expirationdate## : ##infocom.expirationdate##\n&lt;br /&gt; &lt;a href=\"##infocom.url##\"&gt;\n##infocom.url##&lt;/a&gt;&lt;br /&gt;\n##ENDFOREACHinfocoms##&lt;/p&gt;'),
(12, 11, '', '##license.action##  ##license.entity##', '##lang.license.entity## : ##license.entity##\n\n##FOREACHlicenses##\n\n##lang.license.item## : ##license.item##\n\n##lang.license.serial## : ##license.serial##\n\n##lang.license.expirationdate## : ##license.expirationdate##\n\n##license.url##\n ##ENDFOREACHlicenses##', '&lt;p&gt;\n##lang.license.entity## : ##license.entity##&lt;br /&gt;\n##FOREACHlicenses##\n&lt;br /&gt;##lang.license.item## : ##license.item##&lt;br /&gt;\n##lang.license.serial## : ##license.serial##&lt;br /&gt;\n##lang.license.expirationdate## : ##license.expirationdate##\n&lt;br /&gt; &lt;a href=\"##license.url##\"&gt; ##license.url##\n&lt;/a&gt;&lt;br /&gt; ##ENDFOREACHlicenses##&lt;/p&gt;'),
(13, 13, '', '##user.action##', '##user.realname## ##user.firstname##\n\n##lang.passwordforget.information##\n\n##lang.passwordforget.link## ##user.passwordforgeturl##', '&lt;p&gt;&lt;strong&gt;##user.realname## ##user.firstname##&lt;/strong&gt;&lt;/p&gt;\n&lt;p&gt;##lang.passwordforget.information##&lt;/p&gt;\n&lt;p&gt;##lang.passwordforget.link## &lt;a title=\"##user.passwordforgeturl##\" href=\"##user.passwordforgeturl##\"&gt;##user.passwordforgeturl##&lt;/a&gt;&lt;/p&gt;'),
(14, 14, '', '##ticket.action## ##ticket.title##', '##lang.ticket.title## : ##ticket.title##\n\n##lang.ticket.closedate## : ##ticket.closedate##\n\n##lang.satisfaction.text## ##ticket.urlsatisfaction##', '&lt;p&gt;##lang.ticket.title## : ##ticket.title##&lt;/p&gt;\n&lt;p&gt;##lang.ticket.closedate## : ##ticket.closedate##&lt;/p&gt;\n&lt;p&gt;##lang.satisfaction.text## &lt;a href=\"##ticket.urlsatisfaction##\"&gt;##ticket.urlsatisfaction##&lt;/a&gt;&lt;/p&gt;'),
(15, 15, '', '##lang.unicity.action##', '##lang.unicity.entity## : ##unicity.entity##\n\n##lang.unicity.itemtype## : ##unicity.itemtype##\n\n##lang.unicity.message## : ##unicity.message##\n\n##lang.unicity.action_user## : ##unicity.action_user##\n\n##lang.unicity.action_type## : ##unicity.action_type##\n\n##lang.unicity.date## : ##unicity.date##', '&lt;p&gt;##lang.unicity.entity## : ##unicity.entity##&lt;/p&gt;\n&lt;p&gt;##lang.unicity.itemtype## : ##unicity.itemtype##&lt;/p&gt;\n&lt;p&gt;##lang.unicity.message## : ##unicity.message##&lt;/p&gt;\n&lt;p&gt;##lang.unicity.action_user## : ##unicity.action_user##&lt;/p&gt;\n&lt;p&gt;##lang.unicity.action_type## : ##unicity.action_type##&lt;/p&gt;\n&lt;p&gt;##lang.unicity.date## : ##unicity.date##&lt;/p&gt;'),
(16, 16, '', '##crontask.action##', '##lang.crontask.warning##\n\n##FOREACHcrontasks##\n ##crontask.name## : ##crontask.description##\n\n##ENDFOREACHcrontasks##', '&lt;p&gt;##lang.crontask.warning##&lt;/p&gt;\n&lt;p&gt;##FOREACHcrontasks## &lt;br /&gt;&lt;a href=\"##crontask.url##\"&gt;##crontask.name##&lt;/a&gt; : ##crontask.description##&lt;br /&gt; &lt;br /&gt;##ENDFOREACHcrontasks##&lt;/p&gt;'),
(17, 17, '', '##problem.action## ##problem.title##', '##IFproblem.storestatus=5##\n ##lang.problem.url## : ##problem.urlapprove##\n ##lang.problem.solvedate## : ##problem.solvedate##\n ##lang.problem.solution.type## : ##problem.solution.type##\n ##lang.problem.solution.description## : ##problem.solution.description## ##ENDIFproblem.storestatus##\n ##ELSEproblem.storestatus## ##lang.problem.url## : ##problem.url## ##ENDELSEproblem.storestatus##\n\n ##lang.problem.description##\n\n ##lang.problem.title##  :##problem.title##\n ##lang.problem.authors##  :##IFproblem.authors## ##problem.authors## ##ENDIFproblem.authors## ##ELSEproblem.authors##--##ENDELSEproblem.authors##\n ##lang.problem.creationdate##  :##problem.creationdate##\n ##IFproblem.assigntousers## ##lang.problem.assigntousers##  : ##problem.assigntousers## ##ENDIFproblem.assigntousers##\n ##lang.problem.status##  : ##problem.status##\n ##IFproblem.assigntogroups## ##lang.problem.assigntogroups##  : ##problem.assigntogroups## ##ENDIFproblem.assigntogroups##\n ##lang.problem.urgency##  : ##problem.urgency##\n ##lang.problem.impact##  : ##problem.impact##\n ##lang.problem.priority## : ##problem.priority##\n##IFproblem.category## ##lang.problem.category##  :##problem.category## ##ENDIFproblem.category## ##ELSEproblem.category## ##lang.problem.nocategoryassigned## ##ENDELSEproblem.category##\n ##lang.problem.content##  : ##problem.content##\n\n##IFproblem.storestatus=6##\n ##lang.problem.solvedate## : ##problem.solvedate##\n ##lang.problem.solution.type## : ##problem.solution.type##\n ##lang.problem.solution.description## : ##problem.solution.description##\n##ENDIFproblem.storestatus##\n ##lang.problem.numberoftickets## : ##problem.numberoftickets##\n\n##FOREACHtickets##\n [##ticket.date##] ##lang.problem.title## : ##ticket.title##\n ##lang.problem.content## ##ticket.content##\n\n##ENDFOREACHtickets##\n ##lang.problem.numberoftasks## : ##problem.numberoftasks##\n\n##FOREACHtasks##\n [##task.date##]\n ##lang.task.author## ##task.author##\n ##lang.task.description## ##task.description##\n ##lang.task.time## ##task.time##\n ##lang.task.category## ##task.category##\n\n##ENDFOREACHtasks##\n', '&lt;p&gt;##IFproblem.storestatus=5##&lt;/p&gt;\n&lt;div&gt;##lang.problem.url## : &lt;a href=\"##problem.urlapprove##\"&gt;##problem.urlapprove##&lt;/a&gt;&lt;/div&gt;\n&lt;div&gt;&lt;span style=\"color: #888888;\"&gt;&lt;strong&gt;&lt;span style=\"text-decoration: underline;\"&gt;##lang.problem.solvedate##&lt;/span&gt;&lt;/strong&gt;&lt;/span&gt; : ##problem.solvedate##&lt;br /&gt;&lt;span style=\"text-decoration: underline; color: #888888;\"&gt;&lt;strong&gt;##lang.problem.solution.type##&lt;/strong&gt;&lt;/span&gt; : ##problem.solution.type##&lt;br /&gt;&lt;span style=\"text-decoration: underline; color: #888888;\"&gt;&lt;strong&gt;##lang.problem.solution.description##&lt;/strong&gt;&lt;/span&gt; : ##problem.solution.description## ##ENDIFproblem.storestatus##&lt;/div&gt;\n&lt;div&gt;##ELSEproblem.storestatus## ##lang.problem.url## : &lt;a href=\"##problem.url##\"&gt;##problem.url##&lt;/a&gt; ##ENDELSEproblem.storestatus##&lt;/div&gt;\n&lt;p class=\"description b\"&gt;&lt;strong&gt;##lang.problem.description##&lt;/strong&gt;&lt;/p&gt;\n&lt;p&gt;&lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; ##lang.problem.title##&lt;/span&gt;&#160;:##problem.title## &lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; ##lang.problem.authors##&lt;/span&gt;&#160;:##IFproblem.authors## ##problem.authors## ##ENDIFproblem.authors##    ##ELSEproblem.authors##--##ENDELSEproblem.authors## &lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; ##lang.problem.creationdate##&lt;/span&gt;&#160;:##problem.creationdate## &lt;br /&gt; ##IFproblem.assigntousers## &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; ##lang.problem.assigntousers##&lt;/span&gt;&#160;: ##problem.assigntousers## ##ENDIFproblem.assigntousers##&lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt;##lang.problem.status## &lt;/span&gt;&#160;: ##problem.status##&lt;br /&gt; ##IFproblem.assigntogroups## &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; ##lang.problem.assigntogroups##&lt;/span&gt;&#160;: ##problem.assigntogroups## ##ENDIFproblem.assigntogroups##&lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; ##lang.problem.urgency##&lt;/span&gt;&#160;: ##problem.urgency##&lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; ##lang.problem.impact##&lt;/span&gt;&#160;: ##problem.impact##&lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; ##lang.problem.priority##&lt;/span&gt; : ##problem.priority## &lt;br /&gt;##IFproblem.category##&lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt;##lang.problem.category## &lt;/span&gt;&#160;:##problem.category##  ##ENDIFproblem.category## ##ELSEproblem.category##  ##lang.problem.nocategoryassigned## ##ENDELSEproblem.category##    &lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; ##lang.problem.content##&lt;/span&gt;&#160;: ##problem.content##&lt;/p&gt;\n&lt;p&gt;##IFproblem.storestatus=6##&lt;br /&gt;&lt;span style=\"text-decoration: underline;\"&gt;&lt;strong&gt;&lt;span style=\"color: #888888;\"&gt;##lang.problem.solvedate##&lt;/span&gt;&lt;/strong&gt;&lt;/span&gt; : ##problem.solvedate##&lt;br /&gt;&lt;span style=\"color: #888888;\"&gt;&lt;strong&gt;&lt;span style=\"text-decoration: underline;\"&gt;##lang.problem.solution.type##&lt;/span&gt;&lt;/strong&gt;&lt;/span&gt; : ##problem.solution.type##&lt;br /&gt;&lt;span style=\"text-decoration: underline; color: #888888;\"&gt;&lt;strong&gt;##lang.problem.solution.description##&lt;/strong&gt;&lt;/span&gt; : ##problem.solution.description##&lt;br /&gt;##ENDIFproblem.storestatus##&lt;/p&gt;\n&lt;div class=\"description b\"&gt;##lang.problem.numberoftickets##&#160;: ##problem.numberoftickets##&lt;/div&gt;\n&lt;p&gt;##FOREACHtickets##&lt;/p&gt;\n&lt;div&gt;&lt;strong&gt; [##ticket.date##] &lt;em&gt;##lang.problem.title## : &lt;a href=\"##ticket.url##\"&gt;##ticket.title## &lt;/a&gt;&lt;/em&gt;&lt;/strong&gt;&lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; &lt;/span&gt;&lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt;##lang.problem.content## &lt;/span&gt; ##ticket.content##\n&lt;p&gt;##ENDFOREACHtickets##&lt;/p&gt;\n&lt;div class=\"description b\"&gt;##lang.problem.numberoftasks##&#160;: ##problem.numberoftasks##&lt;/div&gt;\n&lt;p&gt;##FOREACHtasks##&lt;/p&gt;\n&lt;div class=\"description b\"&gt;&lt;strong&gt;[##task.date##] &lt;/strong&gt;&lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; ##lang.task.author##&lt;/span&gt; ##task.author##&lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; ##lang.task.description##&lt;/span&gt; ##task.description##&lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; ##lang.task.time##&lt;/span&gt; ##task.time##&lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; ##lang.task.category##&lt;/span&gt; ##task.category##&lt;/div&gt;\n&lt;p&gt;##ENDFOREACHtasks##&lt;/p&gt;\n&lt;/div&gt;'),
(18, 18, '', '##recall.action##: ##recall.item.name##', '##recall.action##: ##recall.item.name##\n\n##recall.item.content##\n\n##lang.recall.planning.begin##: ##recall.planning.begin##\n##lang.recall.planning.end##: ##recall.planning.end##\n##lang.recall.planning.state##: ##recall.planning.state##\n##lang.recall.item.private##: ##recall.item.private##', '&lt;p&gt;##recall.action##: &lt;a href=\"##recall.item.url##\"&gt;##recall.item.name##&lt;/a&gt;&lt;/p&gt;\n&lt;p&gt;##recall.item.content##&lt;/p&gt;\n&lt;p&gt;##lang.recall.planning.begin##: ##recall.planning.begin##&lt;br /&gt;##lang.recall.planning.end##: ##recall.planning.end##&lt;br /&gt;##lang.recall.planning.state##: ##recall.planning.state##&lt;br /&gt;##lang.recall.item.private##: ##recall.item.private##&lt;br /&gt;&lt;br /&gt;&lt;/p&gt;\n&lt;p&gt;&lt;br /&gt;&lt;br /&gt;&lt;/p&gt;'),
(19, 19, '', '##change.action## ##change.title##', '##IFchange.storestatus=5##\n ##lang.change.url## : ##change.urlapprove##\n ##lang.change.solvedate## : ##change.solvedate##\n ##lang.change.solution.type## : ##change.solution.type##\n ##lang.change.solution.description## : ##change.solution.description## ##ENDIFchange.storestatus##\n ##ELSEchange.storestatus## ##lang.change.url## : ##change.url## ##ENDELSEchange.storestatus##\n\n ##lang.change.description##\n\n ##lang.change.title##  :##change.title##\n ##lang.change.authors##  :##IFchange.authors## ##change.authors## ##ENDIFchange.authors## ##ELSEchange.authors##--##ENDELSEchange.authors##\n ##lang.change.creationdate##  :##change.creationdate##\n ##IFchange.assigntousers## ##lang.change.assigntousers##  : ##change.assigntousers## ##ENDIFchange.assigntousers##\n ##lang.change.status##  : ##change.status##\n ##IFchange.assigntogroups## ##lang.change.assigntogroups##  : ##change.assigntogroups## ##ENDIFchange.assigntogroups##\n ##lang.change.urgency##  : ##change.urgency##\n ##lang.change.impact##  : ##change.impact##\n ##lang.change.priority## : ##change.priority##\n##IFchange.category## ##lang.change.category##  :##change.category## ##ENDIFchange.category## ##ELSEchange.category## ##lang.change.nocategoryassigned## ##ENDELSEchange.category##\n ##lang.change.content##  : ##change.content##\n\n##IFchange.storestatus=6##\n ##lang.change.solvedate## : ##change.solvedate##\n ##lang.change.solution.type## : ##change.solution.type##\n ##lang.change.solution.description## : ##change.solution.description##\n##ENDIFchange.storestatus##\n ##lang.change.numberofproblems## : ##change.numberofproblems##\n\n##FOREACHproblems##\n [##problem.date##] ##lang.change.title## : ##problem.title##\n ##lang.change.content## ##problem.content##\n\n##ENDFOREACHproblems##\n ##lang.change.numberoftasks## : ##change.numberoftasks##\n\n##FOREACHtasks##\n [##task.date##]\n ##lang.task.author## ##task.author##\n ##lang.task.description## ##task.description##\n ##lang.task.time## ##task.time##\n ##lang.task.category## ##task.category##\n\n##ENDFOREACHtasks##\n', '&lt;p&gt;##IFchange.storestatus=5##&lt;/p&gt;\n&lt;div&gt;##lang.change.url## : &lt;a href=\"##change.urlapprove##\"&gt;##change.urlapprove##&lt;/a&gt;&lt;/div&gt;\n&lt;div&gt;&lt;span style=\"color: #888888;\"&gt;&lt;strong&gt;&lt;span style=\"text-decoration: underline;\"&gt;##lang.change.solvedate##&lt;/span&gt;&lt;/strong&gt;&lt;/span&gt; : ##change.solvedate##&lt;br /&gt;&lt;span style=\"text-decoration: underline; color: #888888;\"&gt;&lt;strong&gt;##lang.change.solution.type##&lt;/strong&gt;&lt;/span&gt; : ##change.solution.type##&lt;br /&gt;&lt;span style=\"text-decoration: underline; color: #888888;\"&gt;&lt;strong&gt;##lang.change.solution.description##&lt;/strong&gt;&lt;/span&gt; : ##change.solution.description## ##ENDIFchange.storestatus##&lt;/div&gt;\n&lt;div&gt;##ELSEchange.storestatus## ##lang.change.url## : &lt;a href=\"##change.url##\"&gt;##change.url##&lt;/a&gt; ##ENDELSEchange.storestatus##&lt;/div&gt;\n&lt;p class=\"description b\"&gt;&lt;strong&gt;##lang.change.description##&lt;/strong&gt;&lt;/p&gt;\n&lt;p&gt;&lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; ##lang.change.title##&lt;/span&gt;&#160;:##change.title## &lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; ##lang.change.authors##&lt;/span&gt;&#160;:##IFchange.authors## ##change.authors## ##ENDIFchange.authors##    ##ELSEchange.authors##--##ENDELSEchange.authors## &lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; ##lang.change.creationdate##&lt;/span&gt;&#160;:##change.creationdate## &lt;br /&gt; ##IFchange.assigntousers## &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; ##lang.change.assigntousers##&lt;/span&gt;&#160;: ##change.assigntousers## ##ENDIFchange.assigntousers##&lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt;##lang.change.status## &lt;/span&gt;&#160;: ##change.status##&lt;br /&gt; ##IFchange.assigntogroups## &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; ##lang.change.assigntogroups##&lt;/span&gt;&#160;: ##change.assigntogroups## ##ENDIFchange.assigntogroups##&lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; ##lang.change.urgency##&lt;/span&gt;&#160;: ##change.urgency##&lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; ##lang.change.impact##&lt;/span&gt;&#160;: ##change.impact##&lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; ##lang.change.priority##&lt;/span&gt; : ##change.priority## &lt;br /&gt;##IFchange.category##&lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt;##lang.change.category## &lt;/span&gt;&#160;:##change.category##  ##ENDIFchange.category## ##ELSEchange.category##  ##lang.change.nocategoryassigned## ##ENDELSEchange.category##    &lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; ##lang.change.content##&lt;/span&gt;&#160;: ##change.content##&lt;/p&gt;\n&lt;p&gt;##IFchange.storestatus=6##&lt;br /&gt;&lt;span style=\"text-decoration: underline;\"&gt;&lt;strong&gt;&lt;span style=\"color: #888888;\"&gt;##lang.change.solvedate##&lt;/span&gt;&lt;/strong&gt;&lt;/span&gt; : ##change.solvedate##&lt;br /&gt;&lt;span style=\"color: #888888;\"&gt;&lt;strong&gt;&lt;span style=\"text-decoration: underline;\"&gt;##lang.change.solution.type##&lt;/span&gt;&lt;/strong&gt;&lt;/span&gt; : ##change.solution.type##&lt;br /&gt;&lt;span style=\"text-decoration: underline; color: #888888;\"&gt;&lt;strong&gt;##lang.change.solution.description##&lt;/strong&gt;&lt;/span&gt; : ##change.solution.description##&lt;br /&gt;##ENDIFchange.storestatus##&lt;/p&gt;\n&lt;div class=\"description b\"&gt;##lang.change.numberofproblems##&#160;: ##change.numberofproblems##&lt;/div&gt;\n&lt;p&gt;##FOREACHproblems##&lt;/p&gt;\n&lt;div&gt;&lt;strong&gt; [##problem.date##] &lt;em&gt;##lang.change.title## : &lt;a href=\"##problem.url##\"&gt;##problem.title## &lt;/a&gt;&lt;/em&gt;&lt;/strong&gt;&lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; &lt;/span&gt;&lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt;##lang.change.content## &lt;/span&gt; ##problem.content##\n&lt;p&gt;##ENDFOREACHproblems##&lt;/p&gt;\n&lt;div class=\"description b\"&gt;##lang.change.numberoftasks##&#160;: ##change.numberoftasks##&lt;/div&gt;\n&lt;p&gt;##FOREACHtasks##&lt;/p&gt;\n&lt;div class=\"description b\"&gt;&lt;strong&gt;[##task.date##] &lt;/strong&gt;&lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; ##lang.task.author##&lt;/span&gt; ##task.author##&lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; ##lang.task.description##&lt;/span&gt; ##task.description##&lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; ##lang.task.time##&lt;/span&gt; ##task.time##&lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; ##lang.task.category##&lt;/span&gt; ##task.category##&lt;/div&gt;\n&lt;p&gt;##ENDFOREACHtasks##&lt;/p&gt;\n&lt;/div&gt;'),
(20, 20, '', '##mailcollector.action##', '##FOREACHmailcollectors##\n##lang.mailcollector.name## : ##mailcollector.name##\n##lang.mailcollector.errors## : ##mailcollector.errors##\n##mailcollector.url##\n##ENDFOREACHmailcollectors##', '&lt;p&gt;##FOREACHmailcollectors##&lt;br /&gt;##lang.mailcollector.name## : ##mailcollector.name##&lt;br /&gt; ##lang.mailcollector.errors## : ##mailcollector.errors##&lt;br /&gt;&lt;a href=\"##mailcollector.url##\"&gt;##mailcollector.url##&lt;/a&gt;&lt;br /&gt; ##ENDFOREACHmailcollectors##&lt;/p&gt;\n&lt;p&gt;&lt;/p&gt;'),
(21, 21, '', '##project.action## ##project.name## ##project.code##', '##lang.project.url## : ##project.url##\n\n##lang.project.description##\n\n##lang.project.name## : ##project.name##\n##lang.project.code## : ##project.code##\n##lang.project.manager## : ##project.manager##\n##lang.project.managergroup## : ##project.managergroup##\n##lang.project.creationdate## : ##project.creationdate##\n##lang.project.priority## : ##project.priority##\n##lang.project.state## : ##project.state##\n##lang.project.type## : ##project.type##\n##lang.project.description## : ##project.description##\n\n##lang.project.numberoftasks## : ##project.numberoftasks##\n\n\n\n##FOREACHtasks##\n\n[##task.creationdate##]\n##lang.task.name## : ##task.name##\n##lang.task.state## : ##task.state##\n##lang.task.type## : ##task.type##\n##lang.task.percent## : ##task.percent##\n##lang.task.description## : ##task.description##\n\n##ENDFOREACHtasks##', '&lt;p&gt;##lang.project.url## : &lt;a href=\"##project.url##\"&gt;##project.url##&lt;/a&gt;&lt;/p&gt;\n&lt;p&gt;&lt;strong&gt;##lang.project.description##&lt;/strong&gt;&lt;/p&gt;\n&lt;p&gt;##lang.project.name## : ##project.name##&lt;br /&gt;##lang.project.code## : ##project.code##&lt;br /&gt; ##lang.project.manager## : ##project.manager##&lt;br /&gt;##lang.project.managergroup## : ##project.managergroup##&lt;br /&gt; ##lang.project.creationdate## : ##project.creationdate##&lt;br /&gt;##lang.project.priority## : ##project.priority## &lt;br /&gt;##lang.project.state## : ##project.state##&lt;br /&gt;##lang.project.type## : ##project.type##&lt;br /&gt;##lang.project.description## : ##project.description##&lt;/p&gt;\n&lt;p&gt;##lang.project.numberoftasks## : ##project.numberoftasks##&lt;/p&gt;\n&lt;div&gt;\n&lt;p&gt;##FOREACHtasks##&lt;/p&gt;\n&lt;div&gt;&lt;strong&gt;[##task.creationdate##] &lt;/strong&gt;&lt;br /&gt; ##lang.task.name## : ##task.name##&lt;br /&gt;##lang.task.state## : ##task.state##&lt;br /&gt;##lang.task.type## : ##task.type##&lt;br /&gt;##lang.task.percent## : ##task.percent##&lt;br /&gt;##lang.task.description## : ##task.description##&lt;/div&gt;\n&lt;p&gt;##ENDFOREACHtasks##&lt;/p&gt;\n&lt;/div&gt;'),
(22, 22, '', '##projecttask.action## ##projecttask.name##', '##lang.projecttask.url## : ##projecttask.url##\n\n##lang.projecttask.description##\n\n##lang.projecttask.name## : ##projecttask.name##\n##lang.projecttask.project## : ##projecttask.project##\n##lang.projecttask.creationdate## : ##projecttask.creationdate##\n##lang.projecttask.state## : ##projecttask.state##\n##lang.projecttask.type## : ##projecttask.type##\n##lang.projecttask.description## : ##projecttask.description##\n\n##lang.projecttask.numberoftasks## : ##projecttask.numberoftasks##\n\n\n\n##FOREACHtasks##\n\n[##task.creationdate##]\n##lang.task.name## : ##task.name##\n##lang.task.state## : ##task.state##\n##lang.task.type## : ##task.type##\n##lang.task.percent## : ##task.percent##\n##lang.task.description## : ##task.description##\n\n##ENDFOREACHtasks##', '&lt;p&gt;##lang.projecttask.url## : &lt;a href=\"##projecttask.url##\"&gt;##projecttask.url##&lt;/a&gt;&lt;/p&gt;\n&lt;p&gt;&lt;strong&gt;##lang.projecttask.description##&lt;/strong&gt;&lt;/p&gt;\n&lt;p&gt;##lang.projecttask.name## : ##projecttask.name##&lt;br /&gt;##lang.projecttask.project## : &lt;a href=\"##projecttask.projecturl##\"&gt;##projecttask.project##&lt;/a&gt;&lt;br /&gt;##lang.projecttask.creationdate## : ##projecttask.creationdate##&lt;br /&gt;##lang.projecttask.state## : ##projecttask.state##&lt;br /&gt;##lang.projecttask.type## : ##projecttask.type##&lt;br /&gt;##lang.projecttask.description## : ##projecttask.description##&lt;/p&gt;\n&lt;p&gt;##lang.projecttask.numberoftasks## : ##projecttask.numberoftasks##&lt;/p&gt;\n&lt;div&gt;\n&lt;p&gt;##FOREACHtasks##&lt;/p&gt;\n&lt;div&gt;&lt;strong&gt;[##task.creationdate##] &lt;/strong&gt;&lt;br /&gt;##lang.task.name## : ##task.name##&lt;br /&gt;##lang.task.state## : ##task.state##&lt;br /&gt;##lang.task.type## : ##task.type##&lt;br /&gt;##lang.task.percent## : ##task.percent##&lt;br /&gt;##lang.task.description## : ##task.description##&lt;/div&gt;\n&lt;p&gt;##ENDFOREACHtasks##&lt;/p&gt;\n&lt;/div&gt;'),
(23, 23, '', '##objectlock.action##', '##objectlock.type## ###objectlock.id## - ##objectlock.name##\n\n      ##lang.objectlock.url##\n      ##objectlock.url##\n\n      ##lang.objectlock.date_mod##\n      ##objectlock.date_mod##\n\n      Hello ##objectlock.lockedby.firstname##,\n      Could go to this item and unlock it for me?\n      Thank you,\n      Regards,\n      ##objectlock.requester.firstname##', '&lt;table&gt;\n      &lt;tbody&gt;\n      &lt;tr&gt;&lt;th colspan=\"2\"&gt;&lt;a href=\"##objectlock.url##\"&gt;##objectlock.type## ###objectlock.id## - ##objectlock.name##&lt;/a&gt;&lt;/th&gt;&lt;/tr&gt;\n      &lt;tr&gt;\n      &lt;td&gt;##lang.objectlock.url##&lt;/td&gt;\n      &lt;td&gt;##objectlock.url##&lt;/td&gt;\n      &lt;/tr&gt;\n      &lt;tr&gt;\n      &lt;td&gt;##lang.objectlock.date_mod##&lt;/td&gt;\n      &lt;td&gt;##objectlock.date_mod##&lt;/td&gt;\n      &lt;/tr&gt;\n      &lt;/tbody&gt;\n      &lt;/table&gt;\n      &lt;p&gt;&lt;span style=\"font-size: small;\"&gt;Hello ##objectlock.lockedby.firstname##,&lt;br /&gt;Could go to this item and unlock it for me?&lt;br /&gt;Thank you,&lt;br /&gt;Regards,&lt;br /&gt;##objectlock.requester.firstname## ##objectlock.requester.lastname##&lt;/span&gt;&lt;/p&gt;'),
(24, 24, '', '##savedsearch.action## ##savedsearch.name##', '##savedsearch.type## ###savedsearch.id## - ##savedsearch.name##\n\n      ##savedsearch.message##\n\n      ##lang.savedsearch.url##\n      ##savedsearch.url##\n\n      Regards,', '&lt;table&gt;\n      &lt;tbody&gt;\n      &lt;tr&gt;&lt;th colspan=\"2\"&gt;&lt;a href=\"##savedsearch.url##\"&gt;##savedsearch.type## ###savedsearch.id## - ##savedsearch.name##&lt;/a&gt;&lt;/th&gt;&lt;/tr&gt;\n      &lt;tr&gt;&lt;td colspan=\"2\"&gt;&lt;a href=\"##savedsearch.url##\"&gt;##savedsearch.message##&lt;/a&gt;&lt;/td&gt;&lt;/tr&gt;\n      &lt;tr&gt;\n      &lt;td&gt;##lang.savedsearch.url##&lt;/td&gt;\n      &lt;td&gt;##savedsearch.url##&lt;/td&gt;\n      &lt;/tr&gt;\n      &lt;/tbody&gt;\n      &lt;/table&gt;\n      &lt;p&gt;&lt;span style=\"font-size: small;\"&gt;Hello &lt;br /&gt;Regards,&lt;/span&gt;&lt;/p&gt;'),
(25, 25, '', '##certificate.action##  ##certificate.entity##', '##lang.certificate.entity## : ##certificate.entity##\n\n##FOREACHcertificates##\n\n##lang.certificate.serial## : ##certificate.serial##\n\n##lang.certificate.expirationdate## : ##certificate.expirationdate##\n\n##certificate.url##\n ##ENDFOREACHcertificates##', '&lt;p&gt;\n##lang.certificate.entity## : ##certificate.entity##&lt;br /&gt;\n##FOREACHcertificates##\n&lt;br /&gt;##lang.certificate.name## : ##certificate.name##&lt;br /&gt;\n##lang.certificate.serial## : ##certificate.serial##&lt;br /&gt;\n##lang.certificate.expirationdate## : ##certificate.expirationdate##\n&lt;br /&gt; &lt;a href=\"##certificate.url##\"&gt; ##certificate.url##\n&lt;/a&gt;&lt;br /&gt; ##ENDFOREACHcertificates##&lt;/p&gt;');

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_notimportedemails`
--

CREATE TABLE `glpi_notimportedemails` (
  `id` int(11) NOT NULL,
  `from` varchar(255) NOT NULL,
  `to` varchar(255) NOT NULL,
  `mailcollectors_id` int(11) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL,
  `subject` text,
  `messageid` varchar(255) NOT NULL,
  `reason` int(11) NOT NULL DEFAULT '0',
  `users_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_objectlocks`
--

CREATE TABLE `glpi_objectlocks` (
  `id` int(11) NOT NULL,
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Type of locked object',
  `items_id` int(11) NOT NULL COMMENT 'RELATION to various tables, according to itemtype (ID)',
  `users_id` int(11) NOT NULL COMMENT 'id of the locker',
  `date_mod` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp of the lock'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_olalevelactions`
--

CREATE TABLE `glpi_olalevelactions` (
  `id` int(11) NOT NULL,
  `olalevels_id` int(11) NOT NULL DEFAULT '0',
  `action_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_olalevelcriterias`
--

CREATE TABLE `glpi_olalevelcriterias` (
  `id` int(11) NOT NULL,
  `olalevels_id` int(11) NOT NULL DEFAULT '0',
  `criteria` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `condition` int(11) NOT NULL DEFAULT '0' COMMENT 'see define.php PATTERN_* and REGEX_* constant',
  `pattern` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_olalevels`
--

CREATE TABLE `glpi_olalevels` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `olas_id` int(11) NOT NULL DEFAULT '0',
  `execution_time` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `match` char(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'see define.php *_MATCHING constant',
  `uuid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_olalevels_tickets`
--

CREATE TABLE `glpi_olalevels_tickets` (
  `id` int(11) NOT NULL,
  `tickets_id` int(11) NOT NULL DEFAULT '0',
  `olalevels_id` int(11) NOT NULL DEFAULT '0',
  `date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_olas`
--

CREATE TABLE `glpi_olas` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `number_time` int(11) NOT NULL,
  `calendars_id` int(11) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `definition_time` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `end_of_working_day` tinyint(1) NOT NULL DEFAULT '0',
  `date_creation` datetime DEFAULT NULL,
  `slms_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_operatingsystemarchitectures`
--

CREATE TABLE `glpi_operatingsystemarchitectures` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_operatingsystemeditions`
--

CREATE TABLE `glpi_operatingsystemeditions` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_operatingsystemkernels`
--

CREATE TABLE `glpi_operatingsystemkernels` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_operatingsystemkernelversions`
--

CREATE TABLE `glpi_operatingsystemkernelversions` (
  `id` int(11) NOT NULL,
  `operatingsystemkernels_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_operatingsystems`
--

CREATE TABLE `glpi_operatingsystems` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_operatingsystemservicepacks`
--

CREATE TABLE `glpi_operatingsystemservicepacks` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_operatingsystemversions`
--

CREATE TABLE `glpi_operatingsystemversions` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_pdumodels`
--

CREATE TABLE `glpi_pdumodels` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `product_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `weight` int(11) NOT NULL DEFAULT '0',
  `required_units` int(11) NOT NULL DEFAULT '1',
  `depth` float NOT NULL DEFAULT '1',
  `power_connections` int(11) NOT NULL DEFAULT '0',
  `max_power` int(11) NOT NULL DEFAULT '0',
  `is_half_rack` tinyint(1) NOT NULL DEFAULT '0',
  `picture_front` text COLLATE utf8_unicode_ci,
  `picture_rear` text COLLATE utf8_unicode_ci,
  `is_rackable` tinyint(1) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_pdus`
--

CREATE TABLE `glpi_pdus` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `serial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `otherserial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pdumodels_id` int(11) DEFAULT NULL,
  `users_id_tech` int(11) NOT NULL DEFAULT '0',
  `groups_id_tech` int(11) NOT NULL DEFAULT '0',
  `is_template` tinyint(1) NOT NULL DEFAULT '0',
  `template_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `states_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to states (id)',
  `comment` text COLLATE utf8_unicode_ci,
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `pdutypes_id` int(11) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_pdus_plugs`
--

CREATE TABLE `glpi_pdus_plugs` (
  `id` int(11) NOT NULL,
  `plugs_id` int(11) NOT NULL DEFAULT '0',
  `pdus_id` int(11) NOT NULL DEFAULT '0',
  `number_plugs` int(11) DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_pdus_racks`
--

CREATE TABLE `glpi_pdus_racks` (
  `id` int(11) NOT NULL,
  `racks_id` int(11) NOT NULL DEFAULT '0',
  `pdus_id` int(11) NOT NULL DEFAULT '0',
  `side` int(11) DEFAULT '0',
  `position` int(11) NOT NULL,
  `bgcolor` varchar(7) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_pdutypes`
--

CREATE TABLE `glpi_pdutypes` (
  `id` int(11) NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_creation` datetime DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_peripheralmodels`
--

CREATE TABLE `glpi_peripheralmodels` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `product_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `weight` int(11) NOT NULL DEFAULT '0',
  `required_units` int(11) NOT NULL DEFAULT '1',
  `depth` float NOT NULL DEFAULT '1',
  `power_connections` int(11) NOT NULL DEFAULT '0',
  `power_consumption` int(11) NOT NULL DEFAULT '0',
  `is_half_rack` tinyint(1) NOT NULL DEFAULT '0',
  `picture_front` text COLLATE utf8_unicode_ci,
  `picture_rear` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_peripherals`
--

CREATE TABLE `glpi_peripherals` (
  `id` int(11) NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `contact` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_num` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `users_id_tech` int(11) NOT NULL DEFAULT '0',
  `groups_id_tech` int(11) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `serial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `otherserial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `peripheraltypes_id` int(11) NOT NULL DEFAULT '0',
  `peripheralmodels_id` int(11) NOT NULL DEFAULT '0',
  `brand` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `is_global` tinyint(1) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_template` tinyint(1) NOT NULL DEFAULT '0',
  `template_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `groups_id` int(11) NOT NULL DEFAULT '0',
  `states_id` int(11) NOT NULL DEFAULT '0',
  `ticket_tco` decimal(20,4) DEFAULT '0.0000',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `date_creation` datetime DEFAULT NULL,
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_peripheraltypes`
--

CREATE TABLE `glpi_peripheraltypes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_phonemodels`
--

CREATE TABLE `glpi_phonemodels` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `product_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_phonepowersupplies`
--

CREATE TABLE `glpi_phonepowersupplies` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_phones`
--

CREATE TABLE `glpi_phones` (
  `id` int(11) NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `contact` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_num` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `users_id_tech` int(11) NOT NULL DEFAULT '0',
  `groups_id_tech` int(11) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `serial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `otherserial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `phonetypes_id` int(11) NOT NULL DEFAULT '0',
  `phonemodels_id` int(11) NOT NULL DEFAULT '0',
  `brand` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phonepowersupplies_id` int(11) NOT NULL DEFAULT '0',
  `number_line` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `have_headset` tinyint(1) NOT NULL DEFAULT '0',
  `have_hp` tinyint(1) NOT NULL DEFAULT '0',
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `is_global` tinyint(1) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_template` tinyint(1) NOT NULL DEFAULT '0',
  `template_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `groups_id` int(11) NOT NULL DEFAULT '0',
  `states_id` int(11) NOT NULL DEFAULT '0',
  `ticket_tco` decimal(20,4) DEFAULT '0.0000',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `date_creation` datetime DEFAULT NULL,
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_phonetypes`
--

CREATE TABLE `glpi_phonetypes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_planningrecalls`
--

CREATE TABLE `glpi_planningrecalls` (
  `id` int(11) NOT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `before_time` int(11) NOT NULL DEFAULT '-10',
  `when` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_plugins`
--

CREATE TABLE `glpi_plugins` (
  `id` int(11) NOT NULL,
  `directory` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `state` int(11) NOT NULL DEFAULT '0' COMMENT 'see define.php PLUGIN_* constant',
  `author` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `homepage` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `license` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `glpi_plugins`
--

INSERT INTO `glpi_plugins` (`id`, `directory`, `name`, `version`, `state`, `author`, `homepage`, `license`) VALUES
(1, 'mod', 'GLPI Modifications', '1.2.1', 1, '<a href=\"mailto:stevenesdonato@gmail.com\"> Stevenes Donato </b> </a>', 'https://forge.glpi-project.org/projects/mod', 'GPLv2+'),
(2, 'dashboard', 'Painel', '0.9.3', 1, '<a href=\"mailto:stevenesdonato@gmail.com\"> Stevenes Donato </b> </a>', 'https://forge.glpi-project.org/projects/dashboard', 'GPLv2+');

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_plugin_dashboard_config`
--

CREATE TABLE `glpi_plugin_dashboard_config` (
  `id` int(4) NOT NULL,
  `name` varchar(50) NOT NULL,
  `value` varchar(125) NOT NULL,
  `users_id` varchar(25) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_plugin_dashboard_count`
--

CREATE TABLE `glpi_plugin_dashboard_count` (
  `type` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `quant` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `glpi_plugin_dashboard_count`
--

INSERT INTO `glpi_plugin_dashboard_count` (`type`, `id`, `quant`) VALUES
(1, 0, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_plugin_dashboard_map`
--

CREATE TABLE `glpi_plugin_dashboard_map` (
  `id` int(4) NOT NULL,
  `entities_id` int(4) NOT NULL,
  `location` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `lat` float NOT NULL,
  `lng` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_plugs`
--

CREATE TABLE `glpi_plugs` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_printermodels`
--

CREATE TABLE `glpi_printermodels` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `product_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_printers`
--

CREATE TABLE `glpi_printers` (
  `id` int(11) NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `contact` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_num` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `users_id_tech` int(11) NOT NULL DEFAULT '0',
  `groups_id_tech` int(11) NOT NULL DEFAULT '0',
  `serial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `otherserial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `have_serial` tinyint(1) NOT NULL DEFAULT '0',
  `have_parallel` tinyint(1) NOT NULL DEFAULT '0',
  `have_usb` tinyint(1) NOT NULL DEFAULT '0',
  `have_wifi` tinyint(1) NOT NULL DEFAULT '0',
  `have_ethernet` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `memory_size` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `domains_id` int(11) NOT NULL DEFAULT '0',
  `networks_id` int(11) NOT NULL DEFAULT '0',
  `printertypes_id` int(11) NOT NULL DEFAULT '0',
  `printermodels_id` int(11) NOT NULL DEFAULT '0',
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `is_global` tinyint(1) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_template` tinyint(1) NOT NULL DEFAULT '0',
  `template_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `init_pages_counter` int(11) NOT NULL DEFAULT '0',
  `last_pages_counter` int(11) NOT NULL DEFAULT '0',
  `users_id` int(11) NOT NULL DEFAULT '0',
  `groups_id` int(11) NOT NULL DEFAULT '0',
  `states_id` int(11) NOT NULL DEFAULT '0',
  `ticket_tco` decimal(20,4) DEFAULT '0.0000',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_printertypes`
--

CREATE TABLE `glpi_printertypes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_problemcosts`
--

CREATE TABLE `glpi_problemcosts` (
  `id` int(11) NOT NULL,
  `problems_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `begin_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `actiontime` int(11) NOT NULL DEFAULT '0',
  `cost_time` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `cost_fixed` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `cost_material` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `budgets_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_problems`
--

CREATE TABLE `glpi_problems` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1',
  `content` longtext COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `solvedate` datetime DEFAULT NULL,
  `closedate` datetime DEFAULT NULL,
  `time_to_resolve` datetime DEFAULT NULL,
  `users_id_recipient` int(11) NOT NULL DEFAULT '0',
  `users_id_lastupdater` int(11) NOT NULL DEFAULT '0',
  `urgency` int(11) NOT NULL DEFAULT '1',
  `impact` int(11) NOT NULL DEFAULT '1',
  `priority` int(11) NOT NULL DEFAULT '1',
  `itilcategories_id` int(11) NOT NULL DEFAULT '0',
  `impactcontent` longtext COLLATE utf8_unicode_ci,
  `causecontent` longtext COLLATE utf8_unicode_ci,
  `symptomcontent` longtext COLLATE utf8_unicode_ci,
  `actiontime` int(11) NOT NULL DEFAULT '0',
  `begin_waiting_date` datetime DEFAULT NULL,
  `waiting_duration` int(11) NOT NULL DEFAULT '0',
  `close_delay_stat` int(11) NOT NULL DEFAULT '0',
  `solve_delay_stat` int(11) NOT NULL DEFAULT '0',
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_problems_suppliers`
--

CREATE TABLE `glpi_problems_suppliers` (
  `id` int(11) NOT NULL,
  `problems_id` int(11) NOT NULL DEFAULT '0',
  `suppliers_id` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '1',
  `use_notification` tinyint(1) NOT NULL DEFAULT '0',
  `alternative_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_problems_tickets`
--

CREATE TABLE `glpi_problems_tickets` (
  `id` int(11) NOT NULL,
  `problems_id` int(11) NOT NULL DEFAULT '0',
  `tickets_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_problems_users`
--

CREATE TABLE `glpi_problems_users` (
  `id` int(11) NOT NULL,
  `problems_id` int(11) NOT NULL DEFAULT '0',
  `users_id` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '1',
  `use_notification` tinyint(1) NOT NULL DEFAULT '0',
  `alternative_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_problemtasks`
--

CREATE TABLE `glpi_problemtasks` (
  `id` int(11) NOT NULL,
  `problems_id` int(11) NOT NULL DEFAULT '0',
  `taskcategories_id` int(11) NOT NULL DEFAULT '0',
  `date` datetime DEFAULT NULL,
  `begin` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `users_id_editor` int(11) NOT NULL DEFAULT '0',
  `users_id_tech` int(11) NOT NULL DEFAULT '0',
  `groups_id_tech` int(11) NOT NULL DEFAULT '0',
  `content` longtext COLLATE utf8_unicode_ci,
  `actiontime` int(11) NOT NULL DEFAULT '0',
  `state` int(11) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  `tasktemplates_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_profilerights`
--

CREATE TABLE `glpi_profilerights` (
  `id` int(11) NOT NULL,
  `profiles_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rights` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `glpi_profilerights`
--

INSERT INTO `glpi_profilerights` (`id`, `profiles_id`, `name`, `rights`) VALUES
(1, 1, 'computer', 0),
(2, 1, 'monitor', 0),
(3, 1, 'software', 0),
(4, 1, 'networking', 0),
(5, 1, 'internet', 0),
(6, 1, 'printer', 0),
(7, 1, 'peripheral', 0),
(8, 1, 'cartridge', 0),
(9, 1, 'consumable', 0),
(10, 1, 'phone', 0),
(12, 1, 'contact_enterprise', 0),
(13, 1, 'document', 0),
(14, 1, 'contract', 0),
(15, 1, 'infocom', 0),
(16, 1, 'knowbase', 10240),
(20, 1, 'reservation', 1024),
(21, 1, 'reports', 0),
(22, 1, 'dropdown', 0),
(24, 1, 'device', 0),
(25, 1, 'typedoc', 0),
(26, 1, 'link', 0),
(27, 1, 'config', 0),
(29, 1, 'rule_ticket', 0),
(30, 1, 'rule_import', 0),
(31, 1, 'rule_ldap', 0),
(32, 1, 'rule_softwarecategories', 0),
(33, 1, 'search_config', 0),
(36, 1, 'profile', 0),
(37, 1, 'user', 0),
(39, 1, 'group', 0),
(40, 1, 'entity', 0),
(41, 1, 'transfer', 0),
(42, 1, 'logs', 0),
(43, 1, 'reminder_public', 1),
(44, 1, 'rssfeed_public', 1),
(45, 1, 'bookmark_public', 0),
(46, 1, 'backup', 0),
(47, 1, 'ticket', 131077),
(51, 1, 'followup', 5),
(52, 1, 'task', 1),
(64, 1, 'planning', 0),
(67, 1, 'statistic', 0),
(68, 1, 'password_update', 1),
(70, 1, 'show_group_hardware', 0),
(71, 1, 'rule_dictionnary_software', 0),
(72, 1, 'rule_dictionnary_dropdown', 0),
(73, 1, 'budget', 0),
(75, 1, 'notification', 0),
(76, 1, 'rule_mailcollector', 0),
(79, 1, 'calendar', 0),
(80, 1, 'slm', 0),
(81, 1, 'rule_dictionnary_printer', 0),
(85, 1, 'problem', 0),
(89, 1, 'tickettemplate', 0),
(90, 1, 'ticketrecurrent', 0),
(91, 1, 'ticketcost', 1),
(94, 1, 'ticketvalidation', 0),
(95, 2, 'computer', 33),
(96, 2, 'monitor', 33),
(97, 2, 'software', 33),
(98, 2, 'networking', 33),
(99, 2, 'internet', 1),
(100, 2, 'printer', 33),
(101, 2, 'peripheral', 33),
(102, 2, 'cartridge', 33),
(103, 2, 'consumable', 33),
(104, 2, 'phone', 33),
(106, 2, 'contact_enterprise', 33),
(107, 2, 'document', 33),
(108, 2, 'contract', 33),
(109, 2, 'infocom', 1),
(110, 2, 'knowbase', 10241),
(114, 2, 'reservation', 1025),
(115, 2, 'reports', 1),
(116, 2, 'dropdown', 0),
(118, 2, 'device', 0),
(119, 2, 'typedoc', 1),
(120, 2, 'link', 1),
(121, 2, 'config', 0),
(123, 2, 'rule_ticket', 0),
(124, 2, 'rule_import', 0),
(125, 2, 'rule_ldap', 0),
(126, 2, 'rule_softwarecategories', 0),
(127, 2, 'search_config', 1055),
(130, 2, 'profile', 0),
(131, 2, 'user', 2049),
(133, 2, 'group', 1),
(134, 2, 'entity', 32),
(135, 2, 'transfer', 0),
(136, 2, 'logs', 0),
(137, 2, 'reminder_public', 0),
(138, 2, 'rssfeed_public', 0),
(139, 2, 'bookmark_public', 0),
(140, 2, 'backup', 1024),
(141, 2, 'ticket', 168989),
(145, 2, 'followup', 5),
(146, 2, 'task', 1),
(158, 2, 'planning', 1),
(161, 2, 'statistic', 1),
(162, 2, 'password_update', 1),
(164, 2, 'show_group_hardware', 0),
(165, 2, 'rule_dictionnary_software', 0),
(166, 2, 'rule_dictionnary_dropdown', 0),
(167, 2, 'budget', 33),
(169, 2, 'notification', 0),
(170, 2, 'rule_mailcollector', 0),
(173, 2, 'calendar', 0),
(174, 2, 'slm', 0),
(175, 2, 'rule_dictionnary_printer', 0),
(179, 2, 'problem', 1057),
(183, 2, 'tickettemplate', 0),
(184, 2, 'ticketrecurrent', 0),
(185, 2, 'ticketcost', 1),
(188, 2, 'ticketvalidation', 15384),
(189, 3, 'computer', 127),
(190, 3, 'monitor', 127),
(191, 3, 'software', 127),
(192, 3, 'networking', 127),
(193, 3, 'internet', 31),
(194, 3, 'printer', 127),
(195, 3, 'peripheral', 127),
(196, 3, 'cartridge', 127),
(197, 3, 'consumable', 127),
(198, 3, 'phone', 127),
(200, 3, 'contact_enterprise', 127),
(201, 3, 'document', 127),
(202, 3, 'contract', 127),
(203, 3, 'infocom', 31),
(204, 3, 'knowbase', 14367),
(208, 3, 'reservation', 1055),
(209, 3, 'reports', 1),
(210, 3, 'dropdown', 31),
(212, 3, 'device', 31),
(213, 3, 'typedoc', 31),
(214, 3, 'link', 31),
(215, 3, 'config', 0),
(217, 3, 'rule_ticket', 0),
(218, 3, 'rule_import', 0),
(219, 3, 'rule_ldap', 0),
(220, 3, 'rule_softwarecategories', 0),
(221, 3, 'search_config', 3103),
(224, 3, 'profile', 1),
(225, 3, 'user', 7199),
(227, 3, 'group', 31),
(228, 3, 'entity', 96),
(229, 3, 'transfer', 0),
(230, 3, 'logs', 0),
(231, 3, 'reminder_public', 0),
(232, 3, 'rssfeed_public', 0),
(233, 3, 'bookmark_public', 0),
(234, 3, 'backup', 1024),
(235, 3, 'ticket', 259103),
(239, 3, 'followup', 15383),
(240, 3, 'task', 13329),
(252, 3, 'planning', 3073),
(255, 3, 'statistic', 1),
(256, 3, 'password_update', 1),
(258, 3, 'show_group_hardware', 0),
(259, 3, 'rule_dictionnary_software', 0),
(260, 3, 'rule_dictionnary_dropdown', 0),
(261, 3, 'budget', 127),
(263, 3, 'notification', 0),
(264, 3, 'rule_mailcollector', 0),
(267, 3, 'calendar', 31),
(268, 3, 'slm', 0),
(269, 3, 'rule_dictionnary_printer', 0),
(273, 3, 'problem', 1151),
(277, 3, 'tickettemplate', 0),
(278, 3, 'ticketrecurrent', 0),
(279, 3, 'ticketcost', 31),
(282, 3, 'ticketvalidation', 15384),
(283, 4, 'computer', 255),
(284, 4, 'monitor', 255),
(285, 4, 'software', 255),
(286, 4, 'networking', 255),
(287, 4, 'internet', 159),
(288, 4, 'printer', 255),
(289, 4, 'peripheral', 255),
(290, 4, 'cartridge', 255),
(291, 4, 'consumable', 255),
(292, 4, 'phone', 255),
(294, 4, 'contact_enterprise', 255),
(295, 4, 'document', 255),
(296, 4, 'contract', 255),
(297, 4, 'infocom', 31),
(298, 4, 'knowbase', 15519),
(302, 4, 'reservation', 1055),
(303, 4, 'reports', 1),
(304, 4, 'dropdown', 31),
(306, 4, 'device', 31),
(307, 4, 'typedoc', 31),
(308, 4, 'link', 159),
(309, 4, 'config', 31),
(311, 4, 'rule_ticket', 1055),
(312, 4, 'rule_import', 31),
(313, 4, 'rule_ldap', 31),
(314, 4, 'rule_softwarecategories', 31),
(315, 4, 'search_config', 3103),
(318, 4, 'profile', 159),
(319, 4, 'user', 7327),
(321, 4, 'group', 159),
(322, 4, 'entity', 3327),
(323, 4, 'transfer', 31),
(324, 4, 'logs', 1),
(325, 4, 'reminder_public', 159),
(326, 4, 'rssfeed_public', 159),
(327, 4, 'bookmark_public', 31),
(328, 4, 'backup', 1055),
(329, 4, 'ticket', 259231),
(333, 4, 'followup', 15383),
(334, 4, 'task', 13329),
(346, 4, 'planning', 3073),
(349, 4, 'statistic', 1),
(350, 4, 'password_update', 1),
(352, 4, 'show_group_hardware', 0),
(353, 4, 'rule_dictionnary_software', 31),
(354, 4, 'rule_dictionnary_dropdown', 31),
(355, 4, 'budget', 255),
(357, 4, 'notification', 31),
(358, 4, 'rule_mailcollector', 31),
(361, 4, 'calendar', 31),
(362, 4, 'slm', 31),
(363, 4, 'rule_dictionnary_printer', 31),
(367, 4, 'problem', 1279),
(371, 4, 'tickettemplate', 31),
(372, 4, 'ticketrecurrent', 31),
(373, 4, 'ticketcost', 31),
(376, 4, 'ticketvalidation', 15384),
(377, 5, 'computer', 0),
(378, 5, 'monitor', 0),
(379, 5, 'software', 0),
(380, 5, 'networking', 0),
(381, 5, 'internet', 0),
(382, 5, 'printer', 0),
(383, 5, 'peripheral', 0),
(384, 5, 'cartridge', 0),
(385, 5, 'consumable', 0),
(386, 5, 'phone', 0),
(388, 5, 'contact_enterprise', 0),
(389, 5, 'document', 0),
(390, 5, 'contract', 0),
(391, 5, 'infocom', 0),
(392, 5, 'knowbase', 8192),
(396, 5, 'reservation', 0),
(397, 5, 'reports', 0),
(398, 5, 'dropdown', 0),
(400, 5, 'device', 0),
(401, 5, 'typedoc', 0),
(402, 5, 'link', 0),
(403, 5, 'config', 0),
(405, 5, 'rule_ticket', 0),
(406, 5, 'rule_import', 0),
(407, 5, 'rule_ldap', 0),
(408, 5, 'rule_softwarecategories', 0),
(409, 5, 'search_config', 0),
(412, 5, 'profile', 0),
(413, 5, 'user', 1025),
(415, 5, 'group', 0),
(416, 5, 'entity', 0),
(417, 5, 'transfer', 0),
(418, 5, 'logs', 0),
(419, 5, 'reminder_public', 0),
(420, 5, 'rssfeed_public', 0),
(421, 5, 'bookmark_public', 0),
(422, 5, 'backup', 0),
(423, 5, 'ticket', 140295),
(427, 5, 'followup', 12295),
(428, 5, 'task', 8193),
(440, 5, 'planning', 1),
(443, 5, 'statistic', 1),
(444, 5, 'password_update', 1),
(446, 5, 'show_group_hardware', 0),
(447, 5, 'rule_dictionnary_software', 0),
(448, 5, 'rule_dictionnary_dropdown', 0),
(449, 5, 'budget', 0),
(451, 5, 'notification', 0),
(452, 5, 'rule_mailcollector', 0),
(455, 5, 'calendar', 0),
(456, 5, 'slm', 0),
(457, 5, 'rule_dictionnary_printer', 0),
(461, 5, 'problem', 1024),
(465, 5, 'tickettemplate', 1),
(466, 5, 'ticketrecurrent', 0),
(467, 5, 'ticketcost', 31),
(470, 5, 'ticketvalidation', 3088),
(471, 6, 'computer', 127),
(472, 6, 'monitor', 127),
(473, 6, 'software', 127),
(474, 6, 'networking', 127),
(475, 6, 'internet', 31),
(476, 6, 'printer', 127),
(477, 6, 'peripheral', 127),
(478, 6, 'cartridge', 127),
(479, 6, 'consumable', 127),
(480, 6, 'phone', 127),
(482, 6, 'contact_enterprise', 96),
(483, 6, 'document', 127),
(484, 6, 'contract', 96),
(485, 6, 'infocom', 0),
(486, 6, 'knowbase', 14367),
(490, 6, 'reservation', 1055),
(491, 6, 'reports', 1),
(492, 6, 'dropdown', 0),
(494, 6, 'device', 0),
(495, 6, 'typedoc', 0),
(496, 6, 'link', 0),
(497, 6, 'config', 0),
(499, 6, 'rule_ticket', 0),
(500, 6, 'rule_import', 0),
(501, 6, 'rule_ldap', 0),
(502, 6, 'rule_softwarecategories', 0),
(503, 6, 'search_config', 0),
(506, 6, 'profile', 0),
(507, 6, 'user', 1055),
(509, 6, 'group', 1),
(510, 6, 'entity', 97),
(511, 6, 'transfer', 1),
(512, 6, 'logs', 0),
(513, 6, 'reminder_public', 31),
(514, 6, 'rssfeed_public', 31),
(515, 6, 'bookmark_public', 0),
(516, 6, 'backup', 0),
(517, 6, 'ticket', 168967),
(521, 6, 'followup', 13319),
(522, 6, 'task', 13329),
(534, 6, 'planning', 1),
(537, 6, 'statistic', 1),
(538, 6, 'password_update', 1),
(540, 6, 'show_group_hardware', 0),
(541, 6, 'rule_dictionnary_software', 0),
(542, 6, 'rule_dictionnary_dropdown', 0),
(543, 6, 'budget', 96),
(545, 6, 'notification', 0),
(546, 6, 'rule_mailcollector', 0),
(549, 6, 'calendar', 0),
(550, 6, 'slm', 1),
(551, 6, 'rule_dictionnary_printer', 0),
(555, 6, 'problem', 1121),
(559, 6, 'tickettemplate', 1),
(560, 6, 'ticketrecurrent', 1),
(561, 6, 'ticketcost', 31),
(564, 6, 'ticketvalidation', 3088),
(565, 7, 'computer', 127),
(566, 7, 'monitor', 127),
(567, 7, 'software', 127),
(568, 7, 'networking', 127),
(569, 7, 'internet', 31),
(570, 7, 'printer', 127),
(571, 7, 'peripheral', 127),
(572, 7, 'cartridge', 127),
(573, 7, 'consumable', 127),
(574, 7, 'phone', 127),
(576, 7, 'contact_enterprise', 96),
(577, 7, 'document', 127),
(578, 7, 'contract', 96),
(579, 7, 'infocom', 0),
(580, 7, 'knowbase', 14367),
(584, 7, 'reservation', 1055),
(585, 7, 'reports', 1),
(586, 7, 'dropdown', 0),
(588, 7, 'device', 0),
(589, 7, 'typedoc', 0),
(590, 7, 'link', 0),
(591, 7, 'config', 0),
(593, 7, 'rule_ticket', 1055),
(594, 7, 'rule_import', 0),
(595, 7, 'rule_ldap', 0),
(596, 7, 'rule_softwarecategories', 0),
(597, 7, 'search_config', 0),
(600, 7, 'profile', 0),
(601, 7, 'user', 1055),
(603, 7, 'group', 1),
(604, 7, 'entity', 97),
(605, 7, 'transfer', 1),
(606, 7, 'logs', 1),
(607, 7, 'reminder_public', 31),
(608, 7, 'rssfeed_public', 31),
(609, 7, 'bookmark_public', 0),
(610, 7, 'backup', 0),
(611, 7, 'ticket', 259103),
(615, 7, 'followup', 13335),
(616, 7, 'task', 13329),
(628, 7, 'planning', 2049),
(631, 7, 'statistic', 1),
(632, 7, 'password_update', 1),
(634, 7, 'show_group_hardware', 0),
(635, 7, 'rule_dictionnary_software', 0),
(636, 7, 'rule_dictionnary_dropdown', 0),
(637, 7, 'budget', 96),
(639, 7, 'notification', 0),
(640, 7, 'rule_mailcollector', 31),
(643, 7, 'calendar', 31),
(644, 7, 'slm', 31),
(645, 7, 'rule_dictionnary_printer', 0),
(649, 7, 'problem', 1151),
(653, 7, 'tickettemplate', 31),
(654, 7, 'ticketrecurrent', 31),
(655, 7, 'ticketcost', 31),
(658, 7, 'ticketvalidation', 15384),
(659, 1, 'change', 0),
(660, 2, 'change', 1057),
(661, 3, 'change', 1151),
(662, 4, 'change', 1279),
(663, 5, 'change', 1054),
(664, 6, 'change', 1151),
(665, 7, 'change', 1151),
(666, 1, 'changevalidation', 0),
(667, 2, 'changevalidation', 1044),
(668, 3, 'changevalidation', 1044),
(669, 4, 'changevalidation', 1044),
(670, 5, 'changevalidation', 20),
(671, 6, 'changevalidation', 20),
(672, 7, 'changevalidation', 1044),
(673, 1, 'domain', 0),
(674, 2, 'domain', 0),
(675, 3, 'domain', 31),
(676, 4, 'domain', 31),
(677, 5, 'domain', 0),
(678, 6, 'domain', 0),
(679, 7, 'domain', 31),
(680, 1, 'location', 0),
(681, 2, 'location', 0),
(682, 3, 'location', 31),
(683, 4, 'location', 31),
(684, 5, 'location', 0),
(685, 6, 'location', 0),
(686, 7, 'location', 31),
(687, 1, 'itilcategory', 0),
(688, 2, 'itilcategory', 0),
(689, 3, 'itilcategory', 31),
(690, 4, 'itilcategory', 31),
(691, 5, 'itilcategory', 0),
(692, 6, 'itilcategory', 0),
(693, 7, 'itilcategory', 31),
(694, 1, 'knowbasecategory', 0),
(695, 2, 'knowbasecategory', 0),
(696, 3, 'knowbasecategory', 31),
(697, 4, 'knowbasecategory', 31),
(698, 5, 'knowbasecategory', 0),
(699, 6, 'knowbasecategory', 0),
(700, 7, 'knowbasecategory', 31),
(701, 1, 'netpoint', 0),
(702, 2, 'netpoint', 0),
(703, 3, 'netpoint', 31),
(704, 4, 'netpoint', 31),
(705, 5, 'netpoint', 0),
(706, 6, 'netpoint', 0),
(707, 7, 'netpoint', 31),
(708, 1, 'taskcategory', 0),
(709, 2, 'taskcategory', 0),
(710, 3, 'taskcategory', 31),
(711, 4, 'taskcategory', 31),
(712, 5, 'taskcategory', 0),
(713, 6, 'taskcategory', 0),
(714, 7, 'taskcategory', 31),
(715, 1, 'state', 0),
(716, 2, 'state', 0),
(717, 3, 'state', 31),
(718, 4, 'state', 31),
(719, 5, 'state', 0),
(720, 6, 'state', 0),
(721, 7, 'state', 31),
(722, 1, 'solutiontemplate', 0),
(723, 2, 'solutiontemplate', 0),
(724, 3, 'solutiontemplate', 31),
(725, 4, 'solutiontemplate', 31),
(726, 5, 'solutiontemplate', 0),
(727, 6, 'solutiontemplate', 0),
(728, 7, 'solutiontemplate', 31),
(729, 1, 'queuednotification', 0),
(730, 2, 'queuednotification', 0),
(731, 3, 'queuednotification', 0),
(732, 4, 'queuednotification', 31),
(733, 5, 'queuednotification', 0),
(734, 6, 'queuednotification', 0),
(735, 7, 'queuednotification', 0),
(736, 1, 'project', 0),
(737, 2, 'project', 1025),
(738, 3, 'project', 1151),
(739, 4, 'project', 1279),
(740, 5, 'project', 1150),
(741, 6, 'project', 1151),
(742, 7, 'project', 1151),
(743, 1, 'projecttask', 0),
(744, 2, 'projecttask', 1025),
(745, 3, 'projecttask', 1025),
(746, 4, 'projecttask', 1025),
(747, 5, 'projecttask', 0),
(748, 6, 'projecttask', 1025),
(749, 7, 'projecttask', 1025),
(750, 8, 'backup', 1),
(751, 8, 'bookmark_public', 1),
(752, 8, 'budget', 161),
(753, 8, 'calendar', 1),
(754, 8, 'cartridge', 161),
(755, 8, 'change', 1185),
(756, 8, 'changevalidation', 0),
(757, 8, 'computer', 161),
(758, 8, 'config', 1),
(759, 8, 'consumable', 161),
(760, 8, 'contact_enterprise', 161),
(761, 8, 'contract', 161),
(762, 8, 'device', 0),
(763, 8, 'document', 161),
(764, 8, 'domain', 1),
(765, 8, 'dropdown', 1),
(766, 8, 'entity', 1185),
(767, 8, 'followup', 8193),
(768, 8, 'global_validation', 0),
(769, 8, 'group', 129),
(770, 8, 'infocom', 1),
(771, 8, 'internet', 129),
(772, 8, 'itilcategory', 1),
(773, 8, 'knowbase', 10369),
(774, 8, 'knowbasecategory', 1),
(775, 8, 'link', 129),
(776, 8, 'location', 1),
(777, 8, 'logs', 1),
(778, 8, 'monitor', 161),
(779, 8, 'netpoint', 1),
(780, 8, 'networking', 161),
(781, 8, 'notification', 1),
(782, 8, 'password_update', 0),
(783, 8, 'peripheral', 161),
(784, 8, 'phone', 161),
(785, 8, 'planning', 3073),
(786, 8, 'printer', 161),
(787, 8, 'problem', 1185),
(788, 8, 'profile', 129),
(789, 8, 'project', 1185),
(790, 8, 'projecttask', 1),
(791, 8, 'queuednotification', 1),
(792, 8, 'reminder_public', 129),
(793, 8, 'reports', 1),
(794, 8, 'reservation', 1),
(795, 8, 'rssfeed_public', 129),
(796, 8, 'rule_dictionnary_dropdown', 1),
(797, 8, 'rule_dictionnary_printer', 1),
(798, 8, 'rule_dictionnary_software', 1),
(799, 8, 'rule_import', 1),
(800, 8, 'rule_ldap', 1),
(801, 8, 'rule_mailcollector', 1),
(802, 8, 'rule_softwarecategories', 1),
(803, 8, 'rule_ticket', 1),
(804, 8, 'search_config', 0),
(805, 8, 'show_group_hardware', 1),
(806, 8, 'slm', 1),
(807, 8, 'software', 161),
(808, 8, 'solutiontemplate', 1),
(809, 8, 'state', 1),
(810, 8, 'statistic', 1),
(811, 8, 'task', 8193),
(812, 8, 'taskcategory', 1),
(813, 8, 'ticket', 138369),
(814, 8, 'ticketcost', 1),
(815, 8, 'ticketrecurrent', 1),
(816, 8, 'tickettemplate', 1),
(817, 8, 'ticketvalidation', 0),
(818, 8, 'transfer', 1),
(819, 8, 'typedoc', 1),
(820, 8, 'user', 2177),
(821, 1, 'license', 0),
(822, 2, 'license', 33),
(823, 3, 'license', 127),
(824, 4, 'license', 255),
(825, 5, 'license', 0),
(826, 6, 'license', 127),
(827, 7, 'license', 127),
(828, 8, 'license', 161),
(829, 1, 'line', 0),
(830, 2, 'line', 33),
(831, 3, 'line', 127),
(832, 4, 'line', 255),
(833, 5, 'line', 0),
(834, 6, 'line', 127),
(835, 7, 'line', 127),
(836, 8, 'line', 161),
(837, 1, 'lineoperator', 0),
(838, 2, 'lineoperator', 33),
(839, 3, 'lineoperator', 31),
(840, 4, 'lineoperator', 31),
(841, 5, 'lineoperator', 0),
(842, 6, 'lineoperator', 0),
(843, 7, 'lineoperator', 31),
(844, 8, 'lineoperator', 1),
(845, 1, 'devicesimcard_pinpuk', 0),
(846, 2, 'devicesimcard_pinpuk', 0),
(847, 3, 'devicesimcard_pinpuk', 3),
(848, 4, 'devicesimcard_pinpuk', 3),
(849, 5, 'devicesimcard_pinpuk', 1),
(850, 6, 'devicesimcard_pinpuk', 3),
(851, 7, 'devicesimcard_pinpuk', 0),
(852, 8, 'devicesimcard_pinpuk', 0),
(853, 1, 'certificate', 0),
(854, 2, 'certificate', 33),
(855, 3, 'certificate', 127),
(856, 4, 'certificate', 255),
(857, 5, 'certificate', 0),
(858, 6, 'certificate', 127),
(859, 7, 'certificate', 127),
(860, 8, 'certificate', 161),
(861, 1, 'datacenter', 0),
(862, 2, 'datacenter', 1),
(863, 3, 'datacenter', 255),
(864, 4, 'datacenter', 255),
(865, 5, 'datacenter', 0),
(866, 6, 'datacenter', 255),
(867, 7, 'datacenter', 255),
(868, 8, 'datacenter', 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_profiles`
--

CREATE TABLE `glpi_profiles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `interface` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'helpdesk',
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `helpdesk_hardware` int(11) NOT NULL DEFAULT '0',
  `helpdesk_item_type` text COLLATE utf8_unicode_ci,
  `ticket_status` text COLLATE utf8_unicode_ci COMMENT 'json encoded array of from/dest allowed status change',
  `date_mod` datetime DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `problem_status` text COLLATE utf8_unicode_ci COMMENT 'json encoded array of from/dest allowed status change',
  `create_ticket_on_login` tinyint(1) NOT NULL DEFAULT '0',
  `tickettemplates_id` int(11) NOT NULL DEFAULT '0',
  `change_status` text COLLATE utf8_unicode_ci COMMENT 'json encoded array of from/dest allowed status change',
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `glpi_profiles`
--

INSERT INTO `glpi_profiles` (`id`, `name`, `interface`, `is_default`, `helpdesk_hardware`, `helpdesk_item_type`, `ticket_status`, `date_mod`, `comment`, `problem_status`, `create_ticket_on_login`, `tickettemplates_id`, `change_status`, `date_creation`) VALUES
(1, 'Self-Service', 'helpdesk', 1, 1, '[\"Computer\",\"Monitor\",\"NetworkEquipment\",\"Peripheral\",\"Phone\",\"Printer\",\"Software\", \"DCRoom\", \"Rack\", \"Enclosure\"]', '{\"1\":{\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0},\"2\":{\"1\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0},\"3\":{\"1\":0,\"2\":0,\"4\":0,\"5\":0,\"6\":0},\"4\":{\"1\":0,\"2\":0,\"3\":0,\"5\":0,\"6\":0},\"5\":{\"1\":0,\"2\":0,\"3\":0,\"4\":0},\"6\":{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0}}', NULL, NULL, '[]', 0, 0, NULL, NULL),
(2, 'Observer', 'central', 0, 1, '[\"Computer\",\"Monitor\",\"NetworkEquipment\",\"Peripheral\",\"Phone\",\"Printer\",\"Software\", \"DCRoom\", \"Rack\", \"Enclosure\"]', '[]', NULL, NULL, '[]', 0, 0, NULL, NULL),
(3, 'Admin', 'central', 0, 3, '[\"Computer\",\"Monitor\",\"NetworkEquipment\",\"Peripheral\",\"Phone\",\"Printer\",\"Software\", \"DCRoom\", \"Rack\", \"Enclosure\"]', '[]', NULL, NULL, '[]', 0, 0, NULL, NULL),
(4, 'Super-Admin', 'central', 0, 3, '[\"Computer\",\"Monitor\",\"NetworkEquipment\",\"Peripheral\",\"Phone\",\"Printer\",\"Software\", \"DCRoom\", \"Rack\", \"Enclosure\"]', '[]', NULL, NULL, '[]', 0, 0, NULL, NULL),
(5, 'Hotliner', 'central', 0, 3, '[\"Computer\",\"Monitor\",\"NetworkEquipment\",\"Peripheral\",\"Phone\",\"Printer\",\"Software\", \"DCRoom\", \"Rack\", \"Enclosure\"]', '[]', NULL, NULL, '[]', 1, 0, NULL, NULL),
(6, 'Technician', 'central', 0, 3, '[\"Computer\",\"Monitor\",\"NetworkEquipment\",\"Peripheral\",\"Phone\",\"Printer\",\"Software\", \"DCRoom\", \"Rack\", \"Enclosure\"]', '[]', NULL, NULL, '[]', 0, 0, NULL, NULL),
(7, 'Supervisor', 'central', 0, 3, '[\"Computer\",\"Monitor\",\"NetworkEquipment\",\"Peripheral\",\"Phone\",\"Printer\",\"Software\", \"DCRoom\", \"Rack\", \"Enclosure\"]', '[]', NULL, NULL, '[]', 0, 0, NULL, NULL),
(8, 'Read-Only', 'central', 0, 0, '[]', '{\"1\":{\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0},\n                       \"2\":{\"1\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0},\n                       \"3\":{\"1\":0,\"2\":0,\"4\":0,\"5\":0,\"6\":0},\n                       \"4\":{\"1\":0,\"2\":0,\"3\":0,\"5\":0,\"6\":0},\n                       \"5\":{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"6\":0},\n                       \"6\":{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0}}', NULL, 'This profile defines read-only access. It is used when objects are locked. It can also be used to give to users rights to unlock objects.', '{\"1\":{\"7\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"8\":0,\"6\":0},\n                      \"7\":{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"8\":0,\"6\":0},\n                      \"2\":{\"1\":0,\"7\":0,\"3\":0,\"4\":0,\"5\":0,\"8\":0,\"6\":0},\n                      \"3\":{\"1\":0,\"7\":0,\"2\":0,\"4\":0,\"5\":0,\"8\":0,\"6\":0},\n                      \"4\":{\"1\":0,\"7\":0,\"2\":0,\"3\":0,\"5\":0,\"8\":0,\"6\":0},\n                      \"5\":{\"1\":0,\"7\":0,\"2\":0,\"3\":0,\"4\":0,\"8\":0,\"6\":0},\n                      \"8\":{\"1\":0,\"7\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0},\n                      \"6\":{\"1\":0,\"7\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"8\":0}}', 0, 0, '{\"1\":{\"9\":0,\"10\":0,\"7\":0,\"4\":0,\"11\":0,\"12\":0,\"5\":0,\"8\":0,\"6\":0},\n                       \"9\":{\"1\":0,\"10\":0,\"7\":0,\"4\":0,\"11\":0,\"12\":0,\"5\":0,\"8\":0,\"6\":0},\n                       \"10\":{\"1\":0,\"9\":0,\"7\":0,\"4\":0,\"11\":0,\"12\":0,\"5\":0,\"8\":0,\"6\":0},\n                       \"7\":{\"1\":0,\"9\":0,\"10\":0,\"4\":0,\"11\":0,\"12\":0,\"5\":0,\"8\":0,\"6\":0},\n                       \"4\":{\"1\":0,\"9\":0,\"10\":0,\"7\":0,\"11\":0,\"12\":0,\"5\":0,\"8\":0,\"6\":0},\n                       \"11\":{\"1\":0,\"9\":0,\"10\":0,\"7\":0,\"4\":0,\"12\":0,\"5\":0,\"8\":0,\"6\":0},\n                       \"12\":{\"1\":0,\"9\":0,\"10\":0,\"7\":0,\"4\":0,\"11\":0,\"5\":0,\"8\":0,\"6\":0},\n                       \"5\":{\"1\":0,\"9\":0,\"10\":0,\"7\":0,\"4\":0,\"11\":0,\"12\":0,\"8\":0,\"6\":0},\n                       \"8\":{\"1\":0,\"9\":0,\"10\":0,\"7\":0,\"4\":0,\"11\":0,\"12\":0,\"5\":0,\"6\":0},\n                       \"6\":{\"1\":0,\"9\":0,\"10\":0,\"7\":0,\"4\":0,\"11\":0,\"12\":0,\"5\":0,\"8\":0}}', '2016-02-08 16:57:46');

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_profiles_reminders`
--

CREATE TABLE `glpi_profiles_reminders` (
  `id` int(11) NOT NULL,
  `reminders_id` int(11) NOT NULL DEFAULT '0',
  `profiles_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '-1',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_profiles_rssfeeds`
--

CREATE TABLE `glpi_profiles_rssfeeds` (
  `id` int(11) NOT NULL,
  `rssfeeds_id` int(11) NOT NULL DEFAULT '0',
  `profiles_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '-1',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_profiles_users`
--

CREATE TABLE `glpi_profiles_users` (
  `id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `profiles_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '1',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `glpi_profiles_users`
--

INSERT INTO `glpi_profiles_users` (`id`, `users_id`, `profiles_id`, `entities_id`, `is_recursive`, `is_dynamic`) VALUES
(2, 2, 4, 0, 1, 0),
(3, 3, 1, 0, 1, 0),
(4, 4, 6, 0, 1, 0),
(5, 5, 2, 0, 1, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_projectcosts`
--

CREATE TABLE `glpi_projectcosts` (
  `id` int(11) NOT NULL,
  `projects_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `begin_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `cost` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `budgets_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_projects`
--

CREATE TABLE `glpi_projects` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `priority` int(11) NOT NULL DEFAULT '1',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `projects_id` int(11) NOT NULL DEFAULT '0',
  `projectstates_id` int(11) NOT NULL DEFAULT '0',
  `projecttypes_id` int(11) NOT NULL DEFAULT '0',
  `date` datetime DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `groups_id` int(11) NOT NULL DEFAULT '0',
  `plan_start_date` datetime DEFAULT NULL,
  `plan_end_date` datetime DEFAULT NULL,
  `real_start_date` datetime DEFAULT NULL,
  `real_end_date` datetime DEFAULT NULL,
  `percent_done` int(11) NOT NULL DEFAULT '0',
  `show_on_global_gantt` tinyint(1) NOT NULL DEFAULT '0',
  `content` longtext COLLATE utf8_unicode_ci,
  `comment` longtext COLLATE utf8_unicode_ci,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `date_creation` datetime DEFAULT NULL,
  `projecttemplates_id` int(11) NOT NULL DEFAULT '0',
  `is_template` tinyint(1) NOT NULL DEFAULT '0',
  `template_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_projectstates`
--

CREATE TABLE `glpi_projectstates` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_finished` tinyint(1) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `glpi_projectstates`
--

INSERT INTO `glpi_projectstates` (`id`, `name`, `comment`, `color`, `is_finished`, `date_mod`, `date_creation`) VALUES
(1, 'New', NULL, '#06ff00', 0, NULL, NULL),
(2, 'Processing', NULL, '#ffb800', 0, NULL, NULL),
(3, 'Closed', NULL, '#ff0000', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_projecttasks`
--

CREATE TABLE `glpi_projecttasks` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8_unicode_ci,
  `comment` longtext COLLATE utf8_unicode_ci,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `projects_id` int(11) NOT NULL DEFAULT '0',
  `projecttasks_id` int(11) NOT NULL DEFAULT '0',
  `date` datetime DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `plan_start_date` datetime DEFAULT NULL,
  `plan_end_date` datetime DEFAULT NULL,
  `real_start_date` datetime DEFAULT NULL,
  `real_end_date` datetime DEFAULT NULL,
  `planned_duration` int(11) NOT NULL DEFAULT '0',
  `effective_duration` int(11) NOT NULL DEFAULT '0',
  `projectstates_id` int(11) NOT NULL DEFAULT '0',
  `projecttasktypes_id` int(11) NOT NULL DEFAULT '0',
  `users_id` int(11) NOT NULL DEFAULT '0',
  `percent_done` int(11) NOT NULL DEFAULT '0',
  `is_milestone` tinyint(1) NOT NULL DEFAULT '0',
  `projecttasktemplates_id` int(11) NOT NULL DEFAULT '0',
  `is_template` tinyint(1) NOT NULL DEFAULT '0',
  `template_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_projecttasks_tickets`
--

CREATE TABLE `glpi_projecttasks_tickets` (
  `id` int(11) NOT NULL,
  `tickets_id` int(11) NOT NULL DEFAULT '0',
  `projecttasks_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_projecttaskteams`
--

CREATE TABLE `glpi_projecttaskteams` (
  `id` int(11) NOT NULL,
  `projecttasks_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_projecttasktemplates`
--

CREATE TABLE `glpi_projecttasktemplates` (
  `id` int(11) NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `comment` longtext COLLATE utf8_unicode_ci,
  `projects_id` int(11) NOT NULL DEFAULT '0',
  `projecttasks_id` int(11) NOT NULL DEFAULT '0',
  `plan_start_date` datetime DEFAULT NULL,
  `plan_end_date` datetime DEFAULT NULL,
  `real_start_date` datetime DEFAULT NULL,
  `real_end_date` datetime DEFAULT NULL,
  `planned_duration` int(11) NOT NULL DEFAULT '0',
  `effective_duration` int(11) NOT NULL DEFAULT '0',
  `projectstates_id` int(11) NOT NULL DEFAULT '0',
  `projecttasktypes_id` int(11) NOT NULL DEFAULT '0',
  `users_id` int(11) NOT NULL DEFAULT '0',
  `percent_done` int(11) NOT NULL DEFAULT '0',
  `is_milestone` tinyint(1) NOT NULL DEFAULT '0',
  `comments` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_projecttasktypes`
--

CREATE TABLE `glpi_projecttasktypes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_projectteams`
--

CREATE TABLE `glpi_projectteams` (
  `id` int(11) NOT NULL,
  `projects_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_projecttypes`
--

CREATE TABLE `glpi_projecttypes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_queuednotifications`
--

CREATE TABLE `glpi_queuednotifications` (
  `id` int(11) NOT NULL,
  `itemtype` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `notificationtemplates_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `sent_try` int(11) NOT NULL DEFAULT '0',
  `create_time` datetime DEFAULT NULL,
  `send_time` datetime DEFAULT NULL,
  `sent_time` datetime DEFAULT NULL,
  `name` text COLLATE utf8_unicode_ci,
  `sender` text COLLATE utf8_unicode_ci,
  `sendername` text COLLATE utf8_unicode_ci,
  `recipient` text COLLATE utf8_unicode_ci,
  `recipientname` text COLLATE utf8_unicode_ci,
  `replyto` text COLLATE utf8_unicode_ci,
  `replytoname` text COLLATE utf8_unicode_ci,
  `headers` text COLLATE utf8_unicode_ci,
  `body_html` longtext COLLATE utf8_unicode_ci,
  `body_text` longtext COLLATE utf8_unicode_ci,
  `messageid` text COLLATE utf8_unicode_ci,
  `documents` text COLLATE utf8_unicode_ci,
  `mode` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'See Notification_NotificationTemplate::MODE_* constants'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_rackmodels`
--

CREATE TABLE `glpi_rackmodels` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `product_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_racks`
--

CREATE TABLE `glpi_racks` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `serial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `otherserial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rackmodels_id` int(11) DEFAULT NULL,
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `racktypes_id` int(11) NOT NULL DEFAULT '0',
  `states_id` int(11) NOT NULL DEFAULT '0',
  `users_id_tech` int(11) NOT NULL DEFAULT '0',
  `groups_id_tech` int(11) NOT NULL DEFAULT '0',
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `depth` int(11) DEFAULT NULL,
  `number_units` int(11) DEFAULT '0',
  `is_template` tinyint(1) NOT NULL DEFAULT '0',
  `template_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `dcrooms_id` int(11) NOT NULL DEFAULT '0',
  `room_orientation` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bgcolor` varchar(7) COLLATE utf8_unicode_ci DEFAULT NULL,
  `max_power` int(11) NOT NULL DEFAULT '0',
  `mesured_power` int(11) NOT NULL DEFAULT '0',
  `max_weight` int(11) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_racktypes`
--

CREATE TABLE `glpi_racktypes` (
  `id` int(11) NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_creation` datetime DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_registeredids`
--

CREATE TABLE `glpi_registeredids` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `device_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'USB, PCI ...'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_reminders`
--

CREATE TABLE `glpi_reminders` (
  `id` int(11) NOT NULL,
  `date` datetime DEFAULT NULL,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text` text COLLATE utf8_unicode_ci,
  `begin` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `is_planned` tinyint(1) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT '0',
  `begin_view_date` datetime DEFAULT NULL,
  `end_view_date` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_reminders_users`
--

CREATE TABLE `glpi_reminders_users` (
  `id` int(11) NOT NULL,
  `reminders_id` int(11) NOT NULL DEFAULT '0',
  `users_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_requesttypes`
--

CREATE TABLE `glpi_requesttypes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_helpdesk_default` tinyint(1) NOT NULL DEFAULT '0',
  `is_followup_default` tinyint(1) NOT NULL DEFAULT '0',
  `is_mail_default` tinyint(1) NOT NULL DEFAULT '0',
  `is_mailfollowup_default` tinyint(1) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_ticketheader` tinyint(1) NOT NULL DEFAULT '1',
  `is_ticketfollowup` tinyint(1) NOT NULL DEFAULT '1',
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `glpi_requesttypes`
--

INSERT INTO `glpi_requesttypes` (`id`, `name`, `is_helpdesk_default`, `is_followup_default`, `is_mail_default`, `is_mailfollowup_default`, `is_active`, `is_ticketheader`, `is_ticketfollowup`, `comment`, `date_mod`, `date_creation`) VALUES
(1, 'Helpdesk', 1, 1, 0, 0, 1, 1, 1, NULL, NULL, NULL),
(2, 'E-Mail', 0, 0, 1, 1, 1, 1, 1, NULL, NULL, NULL),
(3, 'Phone', 0, 0, 0, 0, 1, 1, 1, NULL, NULL, NULL),
(4, 'Direct', 0, 0, 0, 0, 1, 1, 1, NULL, NULL, NULL),
(5, 'Written', 0, 0, 0, 0, 1, 1, 1, NULL, NULL, NULL),
(6, 'Other', 0, 0, 0, 0, 1, 1, 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_reservationitems`
--

CREATE TABLE `glpi_reservationitems` (
  `id` int(11) NOT NULL,
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `items_id` int(11) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_reservations`
--

CREATE TABLE `glpi_reservations` (
  `id` int(11) NOT NULL,
  `reservationitems_id` int(11) NOT NULL DEFAULT '0',
  `begin` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `group` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_rssfeeds`
--

CREATE TABLE `glpi_rssfeeds` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `url` text COLLATE utf8_unicode_ci,
  `refresh_rate` int(11) NOT NULL DEFAULT '86400',
  `max_items` int(11) NOT NULL DEFAULT '20',
  `have_error` tinyint(1) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_rssfeeds_users`
--

CREATE TABLE `glpi_rssfeeds_users` (
  `id` int(11) NOT NULL,
  `rssfeeds_id` int(11) NOT NULL DEFAULT '0',
  `users_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_ruleactions`
--

CREATE TABLE `glpi_ruleactions` (
  `id` int(11) NOT NULL,
  `rules_id` int(11) NOT NULL DEFAULT '0',
  `action_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'VALUE IN (assign, regex_result, append_regex_result, affectbyip, affectbyfqdn, affectbymac)',
  `field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `glpi_ruleactions`
--

INSERT INTO `glpi_ruleactions` (`id`, `rules_id`, `action_type`, `field`, `value`) VALUES
(2, 2, 'assign', 'entities_id', '0'),
(3, 3, 'assign', 'entities_id', '0'),
(4, 4, 'assign', '_refuse_email_no_response', '1'),
(5, 5, 'assign', '_refuse_email_no_response', '1'),
(6, 6, 'fromitem', 'locations_id', '1'),
(7, 7, 'fromuser', 'locations_id', '1'),
(8, 8, 'assign', '_import_category', '1');

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_rulecriterias`
--

CREATE TABLE `glpi_rulecriterias` (
  `id` int(11) NOT NULL,
  `rules_id` int(11) NOT NULL DEFAULT '0',
  `criteria` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `condition` int(11) NOT NULL DEFAULT '0' COMMENT 'see define.php PATTERN_* and REGEX_* constant',
  `pattern` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `glpi_rulecriterias`
--

INSERT INTO `glpi_rulecriterias` (`id`, `rules_id`, `criteria`, `condition`, `pattern`) VALUES
(2, 2, 'uid', 0, '*'),
(3, 2, 'samaccountname', 0, '*'),
(4, 2, 'MAIL_EMAIL', 0, '*'),
(5, 3, 'subject', 6, '/.*/'),
(6, 4, 'x-auto-response-suppress', 6, '/\\S+/'),
(7, 5, 'auto-submitted', 6, '/^(?!.*no).+$/i'),
(9, 6, 'locations_id', 9, '1'),
(10, 6, 'items_locations', 8, '1'),
(11, 7, 'locations_id', 9, '1'),
(12, 7, 'users_locations', 8, '1'),
(13, 8, 'name', 0, '*');

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_rulerightparameters`
--

CREATE TABLE `glpi_rulerightparameters` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `glpi_rulerightparameters`
--

INSERT INTO `glpi_rulerightparameters` (`id`, `name`, `value`, `comment`, `date_mod`, `date_creation`) VALUES
(1, '(LDAP)Organization', 'o', '', NULL, NULL),
(2, '(LDAP)Common Name', 'cn', '', NULL, NULL),
(3, '(LDAP)Department Number', 'departmentnumber', '', NULL, NULL),
(4, '(LDAP)Email', 'mail', '', NULL, NULL),
(5, 'Object Class', 'objectclass', '', NULL, NULL),
(6, '(LDAP)User ID', 'uid', '', NULL, NULL),
(7, '(LDAP)Telephone Number', 'phone', '', NULL, NULL),
(8, '(LDAP)Employee Number', 'employeenumber', '', NULL, NULL),
(9, '(LDAP)Manager', 'manager', '', NULL, NULL),
(10, '(LDAP)DistinguishedName', 'dn', '', NULL, NULL),
(12, '(AD)User ID', 'samaccountname', '', NULL, NULL),
(13, '(LDAP) Title', 'title', '', NULL, NULL),
(14, '(LDAP) MemberOf', 'memberof', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_rules`
--

CREATE TABLE `glpi_rules` (
  `id` int(11) NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `sub_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ranking` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `match` char(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'see define.php *_MATCHING constant',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `uuid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `condition` int(11) NOT NULL DEFAULT '0',
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `glpi_rules`
--

INSERT INTO `glpi_rules` (`id`, `entities_id`, `sub_type`, `ranking`, `name`, `description`, `match`, `is_active`, `comment`, `date_mod`, `is_recursive`, `uuid`, `condition`, `date_creation`) VALUES
(2, 0, 'RuleRight', 1, 'Root', '', 'OR', 1, NULL, NULL, 0, '500717c8-2bd6e957-53a12b5fd35745.02608131', 0, NULL),
(3, 0, 'RuleMailCollector', 3, 'Root', '', 'OR', 1, NULL, NULL, 0, '500717c8-2bd6e957-53a12b5fd36404.54713349', 0, NULL),
(4, 0, 'RuleMailCollector', 1, 'X-Auto-Response-Suppress', 'Exclude Auto-Reply emails using X-Auto-Response-Suppress header', 'AND', 0, NULL, '2011-01-18 11:40:42', 1, '500717c8-2bd6e957-53a12b5fd36d97.94503423', 0, NULL),
(5, 0, 'RuleMailCollector', 2, 'Auto-Reply Auto-Submitted', 'Exclude Auto-Reply emails using Auto-Submitted header', 'OR', 1, NULL, '2011-01-18 11:40:42', 1, '500717c8-2bd6e957-53a12b5fd376c2.87642651', 0, NULL),
(6, 0, 'RuleTicket', 1, 'Ticket location from item', '', 'AND', 0, 'Automatically generated by GLPI 0.84', NULL, 1, '500717c8-2bd6e957-53a12b5fd37f94.10365341', 1, NULL),
(7, 0, 'RuleTicket', 2, 'Ticket location from user', '', 'AND', 0, 'Automatically generated by GLPI 0.84', NULL, 1, '500717c8-2bd6e957-53a12b5fd38869.86002585', 1, NULL),
(8, 0, 'RuleSoftwareCategory', 1, 'Import category from inventory tool', '', 'AND', 0, 'Automatically generated by GLPI 9.2', NULL, 1, '500717c8-2bd6e957-53a12b5fd38869.86003425', 1, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_savedsearches`
--

CREATE TABLE `glpi_savedsearches` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` int(11) NOT NULL DEFAULT '0' COMMENT 'see SavedSearch:: constants',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `is_private` tinyint(1) NOT NULL DEFAULT '1',
  `entities_id` int(11) NOT NULL DEFAULT '-1',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `query` text COLLATE utf8_unicode_ci,
  `last_execution_time` int(11) DEFAULT NULL,
  `do_count` tinyint(1) NOT NULL DEFAULT '2' COMMENT 'Do or do not count results on list display see SavedSearch::COUNT_* constants',
  `last_execution_date` datetime DEFAULT NULL,
  `counter` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_savedsearches_alerts`
--

CREATE TABLE `glpi_savedsearches_alerts` (
  `id` int(11) NOT NULL,
  `savedsearches_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `operator` tinyint(1) NOT NULL,
  `value` int(11) NOT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_savedsearches_users`
--

CREATE TABLE `glpi_savedsearches_users` (
  `id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `savedsearches_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_slalevelactions`
--

CREATE TABLE `glpi_slalevelactions` (
  `id` int(11) NOT NULL,
  `slalevels_id` int(11) NOT NULL DEFAULT '0',
  `action_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_slalevelcriterias`
--

CREATE TABLE `glpi_slalevelcriterias` (
  `id` int(11) NOT NULL,
  `slalevels_id` int(11) NOT NULL DEFAULT '0',
  `criteria` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `condition` int(11) NOT NULL DEFAULT '0' COMMENT 'see define.php PATTERN_* and REGEX_* constant',
  `pattern` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_slalevels`
--

CREATE TABLE `glpi_slalevels` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slas_id` int(11) NOT NULL DEFAULT '0',
  `execution_time` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `match` char(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'see define.php *_MATCHING constant',
  `uuid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_slalevels_tickets`
--

CREATE TABLE `glpi_slalevels_tickets` (
  `id` int(11) NOT NULL,
  `tickets_id` int(11) NOT NULL DEFAULT '0',
  `slalevels_id` int(11) NOT NULL DEFAULT '0',
  `date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_slas`
--

CREATE TABLE `glpi_slas` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `number_time` int(11) NOT NULL,
  `calendars_id` int(11) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `definition_time` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `end_of_working_day` tinyint(1) NOT NULL DEFAULT '0',
  `date_creation` datetime DEFAULT NULL,
  `slms_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_slms`
--

CREATE TABLE `glpi_slms` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `calendars_id` int(11) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_softwarecategories`
--

CREATE TABLE `glpi_softwarecategories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `softwarecategories_id` int(11) NOT NULL DEFAULT '0',
  `completename` text COLLATE utf8_unicode_ci,
  `level` int(11) NOT NULL DEFAULT '0',
  `ancestors_cache` longtext COLLATE utf8_unicode_ci,
  `sons_cache` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `glpi_softwarecategories`
--

INSERT INTO `glpi_softwarecategories` (`id`, `name`, `comment`, `softwarecategories_id`, `completename`, `level`, `ancestors_cache`, `sons_cache`) VALUES
(1, 'FUSION', NULL, 0, 'FUSION', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_softwarelicenses`
--

CREATE TABLE `glpi_softwarelicenses` (
  `id` int(11) NOT NULL,
  `softwares_id` int(11) NOT NULL DEFAULT '0',
  `softwarelicenses_id` int(11) NOT NULL DEFAULT '0',
  `completename` text COLLATE utf8_unicode_ci,
  `level` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `number` int(11) NOT NULL DEFAULT '0',
  `softwarelicensetypes_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `serial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `otherserial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `softwareversions_id_buy` int(11) NOT NULL DEFAULT '0',
  `softwareversions_id_use` int(11) NOT NULL DEFAULT '0',
  `expire` date DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `is_valid` tinyint(1) NOT NULL DEFAULT '1',
  `date_creation` datetime DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `users_id_tech` int(11) NOT NULL DEFAULT '0',
  `users_id` int(11) NOT NULL DEFAULT '0',
  `groups_id_tech` int(11) NOT NULL DEFAULT '0',
  `groups_id` int(11) NOT NULL DEFAULT '0',
  `is_helpdesk_visible` tinyint(1) NOT NULL DEFAULT '0',
  `is_template` tinyint(1) NOT NULL DEFAULT '0',
  `template_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `states_id` int(11) NOT NULL DEFAULT '0',
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `contact` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_num` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_softwarelicensetypes`
--

CREATE TABLE `glpi_softwarelicensetypes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  `softwarelicensetypes_id` int(11) NOT NULL DEFAULT '0',
  `level` int(11) NOT NULL DEFAULT '0',
  `ancestors_cache` longtext COLLATE utf8_unicode_ci,
  `sons_cache` longtext COLLATE utf8_unicode_ci,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `completename` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `glpi_softwarelicensetypes`
--

INSERT INTO `glpi_softwarelicensetypes` (`id`, `name`, `comment`, `date_mod`, `date_creation`, `softwarelicensetypes_id`, `level`, `ancestors_cache`, `sons_cache`, `entities_id`, `is_recursive`, `completename`) VALUES
(1, 'OEM', '', NULL, NULL, 0, 0, NULL, NULL, 0, 1, 'OEM');

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_softwares`
--

CREATE TABLE `glpi_softwares` (
  `id` int(11) NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `users_id_tech` int(11) NOT NULL DEFAULT '0',
  `groups_id_tech` int(11) NOT NULL DEFAULT '0',
  `is_update` tinyint(1) NOT NULL DEFAULT '0',
  `softwares_id` int(11) NOT NULL DEFAULT '0',
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_template` tinyint(1) NOT NULL DEFAULT '0',
  `template_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `groups_id` int(11) NOT NULL DEFAULT '0',
  `ticket_tco` decimal(20,4) DEFAULT '0.0000',
  `is_helpdesk_visible` tinyint(1) NOT NULL DEFAULT '1',
  `softwarecategories_id` int(11) NOT NULL DEFAULT '0',
  `is_valid` tinyint(1) NOT NULL DEFAULT '1',
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_softwareversions`
--

CREATE TABLE `glpi_softwareversions` (
  `id` int(11) NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `softwares_id` int(11) NOT NULL DEFAULT '0',
  `states_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `operatingsystems_id` int(11) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_solutiontemplates`
--

CREATE TABLE `glpi_solutiontemplates` (
  `id` int(11) NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `solutiontypes_id` int(11) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_solutiontypes`
--

CREATE TABLE `glpi_solutiontypes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '1',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_ssovariables`
--

CREATE TABLE `glpi_ssovariables` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `glpi_ssovariables`
--

INSERT INTO `glpi_ssovariables` (`id`, `name`, `comment`, `date_mod`, `date_creation`) VALUES
(1, 'HTTP_AUTH_USER', '', NULL, NULL),
(2, 'REMOTE_USER', '', NULL, NULL),
(3, 'PHP_AUTH_USER', '', NULL, NULL),
(4, 'USERNAME', '', NULL, NULL),
(5, 'REDIRECT_REMOTE_USER', '', NULL, NULL),
(6, 'HTTP_REMOTE_USER', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_states`
--

CREATE TABLE `glpi_states` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `states_id` int(11) NOT NULL DEFAULT '0',
  `completename` text COLLATE utf8_unicode_ci,
  `level` int(11) NOT NULL DEFAULT '0',
  `ancestors_cache` longtext COLLATE utf8_unicode_ci,
  `sons_cache` longtext COLLATE utf8_unicode_ci,
  `is_visible_computer` tinyint(1) NOT NULL DEFAULT '1',
  `is_visible_monitor` tinyint(1) NOT NULL DEFAULT '1',
  `is_visible_networkequipment` tinyint(1) NOT NULL DEFAULT '1',
  `is_visible_peripheral` tinyint(1) NOT NULL DEFAULT '1',
  `is_visible_phone` tinyint(1) NOT NULL DEFAULT '1',
  `is_visible_printer` tinyint(1) NOT NULL DEFAULT '1',
  `is_visible_softwareversion` tinyint(1) NOT NULL DEFAULT '1',
  `is_visible_softwarelicense` tinyint(1) NOT NULL DEFAULT '1',
  `is_visible_line` tinyint(1) NOT NULL DEFAULT '1',
  `is_visible_certificate` tinyint(1) NOT NULL DEFAULT '1',
  `is_visible_rack` tinyint(1) NOT NULL DEFAULT '1',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_suppliers`
--

CREATE TABLE `glpi_suppliers` (
  `id` int(11) NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `suppliertypes_id` int(11) NOT NULL DEFAULT '0',
  `address` text COLLATE utf8_unicode_ci,
  `postcode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `town` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phonenumber` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `fax` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_suppliers_tickets`
--

CREATE TABLE `glpi_suppliers_tickets` (
  `id` int(11) NOT NULL,
  `tickets_id` int(11) NOT NULL DEFAULT '0',
  `suppliers_id` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '1',
  `use_notification` tinyint(1) NOT NULL DEFAULT '0',
  `alternative_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_suppliertypes`
--

CREATE TABLE `glpi_suppliertypes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_taskcategories`
--

CREATE TABLE `glpi_taskcategories` (
  `id` int(11) NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `taskcategories_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `completename` text COLLATE utf8_unicode_ci,
  `comment` text COLLATE utf8_unicode_ci,
  `level` int(11) NOT NULL DEFAULT '0',
  `ancestors_cache` longtext COLLATE utf8_unicode_ci,
  `sons_cache` longtext COLLATE utf8_unicode_ci,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_helpdeskvisible` tinyint(1) NOT NULL DEFAULT '1',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  `knowbaseitemcategories_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_tasktemplates`
--

CREATE TABLE `glpi_tasktemplates` (
  `id` int(11) NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `taskcategories_id` int(11) NOT NULL DEFAULT '0',
  `actiontime` int(11) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT '0',
  `is_private` tinyint(1) NOT NULL DEFAULT '0',
  `users_id_tech` int(11) NOT NULL DEFAULT '0',
  `groups_id_tech` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_ticketcosts`
--

CREATE TABLE `glpi_ticketcosts` (
  `id` int(11) NOT NULL,
  `tickets_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `begin_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `actiontime` int(11) NOT NULL DEFAULT '0',
  `cost_time` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `cost_fixed` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `cost_material` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `budgets_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_ticketfollowups`
--

CREATE TABLE `glpi_ticketfollowups` (
  `id` int(11) NOT NULL,
  `tickets_id` int(11) NOT NULL DEFAULT '0',
  `date` datetime DEFAULT NULL,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `users_id_editor` int(11) NOT NULL DEFAULT '0',
  `content` longtext COLLATE utf8_unicode_ci,
  `is_private` tinyint(1) NOT NULL DEFAULT '0',
  `requesttypes_id` int(11) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  `timeline_position` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_ticketrecurrents`
--

CREATE TABLE `glpi_ticketrecurrents` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `tickettemplates_id` int(11) NOT NULL DEFAULT '0',
  `begin_date` datetime DEFAULT NULL,
  `periodicity` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_before` int(11) NOT NULL DEFAULT '0',
  `next_creation_date` datetime DEFAULT NULL,
  `calendars_id` int(11) NOT NULL DEFAULT '0',
  `end_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_tickets`
--

CREATE TABLE `glpi_tickets` (
  `id` int(11) NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `closedate` datetime DEFAULT NULL,
  `solvedate` datetime DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `users_id_lastupdater` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1',
  `users_id_recipient` int(11) NOT NULL DEFAULT '0',
  `requesttypes_id` int(11) NOT NULL DEFAULT '0',
  `content` longtext COLLATE utf8_unicode_ci,
  `urgency` int(11) NOT NULL DEFAULT '1',
  `impact` int(11) NOT NULL DEFAULT '1',
  `priority` int(11) NOT NULL DEFAULT '1',
  `itilcategories_id` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '1',
  `global_validation` int(11) NOT NULL DEFAULT '1',
  `slas_ttr_id` int(11) NOT NULL DEFAULT '0',
  `slas_tto_id` int(11) NOT NULL DEFAULT '0',
  `ttr_slalevels_id` int(11) NOT NULL DEFAULT '0',
  `time_to_resolve` datetime DEFAULT NULL,
  `time_to_own` datetime DEFAULT NULL,
  `begin_waiting_date` datetime DEFAULT NULL,
  `sla_waiting_duration` int(11) NOT NULL DEFAULT '0',
  `ola_waiting_duration` int(11) NOT NULL DEFAULT '0',
  `olas_tto_id` int(11) NOT NULL DEFAULT '0',
  `olas_ttr_id` int(11) NOT NULL DEFAULT '0',
  `ttr_olalevels_id` int(11) NOT NULL DEFAULT '0',
  `internal_time_to_resolve` datetime DEFAULT NULL,
  `internal_time_to_own` datetime DEFAULT NULL,
  `waiting_duration` int(11) NOT NULL DEFAULT '0',
  `close_delay_stat` int(11) NOT NULL DEFAULT '0',
  `solve_delay_stat` int(11) NOT NULL DEFAULT '0',
  `takeintoaccount_delay_stat` int(11) NOT NULL DEFAULT '0',
  `actiontime` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `validation_percent` int(11) NOT NULL DEFAULT '0',
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_ticketsatisfactions`
--

CREATE TABLE `glpi_ticketsatisfactions` (
  `id` int(11) NOT NULL,
  `tickets_id` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '1',
  `date_begin` datetime DEFAULT NULL,
  `date_answered` datetime DEFAULT NULL,
  `satisfaction` int(11) DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_tickets_tickets`
--

CREATE TABLE `glpi_tickets_tickets` (
  `id` int(11) NOT NULL,
  `tickets_id_1` int(11) NOT NULL DEFAULT '0',
  `tickets_id_2` int(11) NOT NULL DEFAULT '0',
  `link` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_tickets_users`
--

CREATE TABLE `glpi_tickets_users` (
  `id` int(11) NOT NULL,
  `tickets_id` int(11) NOT NULL DEFAULT '0',
  `users_id` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '1',
  `use_notification` tinyint(1) NOT NULL DEFAULT '1',
  `alternative_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_tickettasks`
--

CREATE TABLE `glpi_tickettasks` (
  `id` int(11) NOT NULL,
  `tickets_id` int(11) NOT NULL DEFAULT '0',
  `taskcategories_id` int(11) NOT NULL DEFAULT '0',
  `date` datetime DEFAULT NULL,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `users_id_editor` int(11) NOT NULL DEFAULT '0',
  `content` longtext COLLATE utf8_unicode_ci,
  `is_private` tinyint(1) NOT NULL DEFAULT '0',
  `actiontime` int(11) NOT NULL DEFAULT '0',
  `begin` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT '1',
  `users_id_tech` int(11) NOT NULL DEFAULT '0',
  `groups_id_tech` int(11) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  `tasktemplates_id` int(11) NOT NULL DEFAULT '0',
  `timeline_position` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_tickettemplatehiddenfields`
--

CREATE TABLE `glpi_tickettemplatehiddenfields` (
  `id` int(11) NOT NULL,
  `tickettemplates_id` int(11) NOT NULL DEFAULT '0',
  `num` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_tickettemplatemandatoryfields`
--

CREATE TABLE `glpi_tickettemplatemandatoryfields` (
  `id` int(11) NOT NULL,
  `tickettemplates_id` int(11) NOT NULL DEFAULT '0',
  `num` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `glpi_tickettemplatemandatoryfields`
--

INSERT INTO `glpi_tickettemplatemandatoryfields` (`id`, `tickettemplates_id`, `num`) VALUES
(1, 1, 21);

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_tickettemplatepredefinedfields`
--

CREATE TABLE `glpi_tickettemplatepredefinedfields` (
  `id` int(11) NOT NULL,
  `tickettemplates_id` int(11) NOT NULL DEFAULT '0',
  `num` int(11) NOT NULL DEFAULT '0',
  `value` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_tickettemplates`
--

CREATE TABLE `glpi_tickettemplates` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `glpi_tickettemplates`
--

INSERT INTO `glpi_tickettemplates` (`id`, `name`, `entities_id`, `is_recursive`, `comment`) VALUES
(1, 'Default', 0, 1, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_ticketvalidations`
--

CREATE TABLE `glpi_ticketvalidations` (
  `id` int(11) NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `users_id` int(11) NOT NULL DEFAULT '0',
  `tickets_id` int(11) NOT NULL DEFAULT '0',
  `users_id_validate` int(11) NOT NULL DEFAULT '0',
  `comment_submission` text COLLATE utf8_unicode_ci,
  `comment_validation` text COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '2',
  `submission_date` datetime DEFAULT NULL,
  `validation_date` datetime DEFAULT NULL,
  `timeline_position` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_transfers`
--

CREATE TABLE `glpi_transfers` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keep_ticket` int(11) NOT NULL DEFAULT '0',
  `keep_networklink` int(11) NOT NULL DEFAULT '0',
  `keep_reservation` int(11) NOT NULL DEFAULT '0',
  `keep_history` int(11) NOT NULL DEFAULT '0',
  `keep_device` int(11) NOT NULL DEFAULT '0',
  `keep_infocom` int(11) NOT NULL DEFAULT '0',
  `keep_dc_monitor` int(11) NOT NULL DEFAULT '0',
  `clean_dc_monitor` int(11) NOT NULL DEFAULT '0',
  `keep_dc_phone` int(11) NOT NULL DEFAULT '0',
  `clean_dc_phone` int(11) NOT NULL DEFAULT '0',
  `keep_dc_peripheral` int(11) NOT NULL DEFAULT '0',
  `clean_dc_peripheral` int(11) NOT NULL DEFAULT '0',
  `keep_dc_printer` int(11) NOT NULL DEFAULT '0',
  `clean_dc_printer` int(11) NOT NULL DEFAULT '0',
  `keep_supplier` int(11) NOT NULL DEFAULT '0',
  `clean_supplier` int(11) NOT NULL DEFAULT '0',
  `keep_contact` int(11) NOT NULL DEFAULT '0',
  `clean_contact` int(11) NOT NULL DEFAULT '0',
  `keep_contract` int(11) NOT NULL DEFAULT '0',
  `clean_contract` int(11) NOT NULL DEFAULT '0',
  `keep_software` int(11) NOT NULL DEFAULT '0',
  `clean_software` int(11) NOT NULL DEFAULT '0',
  `keep_document` int(11) NOT NULL DEFAULT '0',
  `clean_document` int(11) NOT NULL DEFAULT '0',
  `keep_cartridgeitem` int(11) NOT NULL DEFAULT '0',
  `clean_cartridgeitem` int(11) NOT NULL DEFAULT '0',
  `keep_cartridge` int(11) NOT NULL DEFAULT '0',
  `keep_consumable` int(11) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `keep_disk` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `glpi_transfers`
--

INSERT INTO `glpi_transfers` (`id`, `name`, `keep_ticket`, `keep_networklink`, `keep_reservation`, `keep_history`, `keep_device`, `keep_infocom`, `keep_dc_monitor`, `clean_dc_monitor`, `keep_dc_phone`, `clean_dc_phone`, `keep_dc_peripheral`, `clean_dc_peripheral`, `keep_dc_printer`, `clean_dc_printer`, `keep_supplier`, `clean_supplier`, `keep_contact`, `clean_contact`, `keep_contract`, `clean_contract`, `keep_software`, `clean_software`, `keep_document`, `clean_document`, `keep_cartridgeitem`, `clean_cartridgeitem`, `keep_cartridge`, `keep_consumable`, `date_mod`, `comment`, `keep_disk`) VALUES
(1, 'complete', 2, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_usercategories`
--

CREATE TABLE `glpi_usercategories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_useremails`
--

CREATE TABLE `glpi_useremails` (
  `id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_users`
--

CREATE TABLE `glpi_users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `realname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `firstname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `language` char(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'see define.php CFG_GLPI[language] array',
  `use_mode` int(11) NOT NULL DEFAULT '0',
  `list_limit` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `comment` text COLLATE utf8_unicode_ci,
  `auths_id` int(11) NOT NULL DEFAULT '0',
  `authtype` int(11) NOT NULL DEFAULT '0',
  `last_login` datetime DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_sync` datetime DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `profiles_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `usertitles_id` int(11) NOT NULL DEFAULT '0',
  `usercategories_id` int(11) NOT NULL DEFAULT '0',
  `date_format` int(11) DEFAULT NULL,
  `number_format` int(11) DEFAULT NULL,
  `names_format` int(11) DEFAULT NULL,
  `csv_delimiter` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_ids_visible` tinyint(1) DEFAULT NULL,
  `use_flat_dropdowntree` tinyint(1) DEFAULT NULL,
  `show_jobs_at_login` tinyint(1) DEFAULT NULL,
  `priority_1` char(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `priority_2` char(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `priority_3` char(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `priority_4` char(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `priority_5` char(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `priority_6` char(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `followup_private` tinyint(1) DEFAULT NULL,
  `task_private` tinyint(1) DEFAULT NULL,
  `default_requesttypes_id` int(11) DEFAULT NULL,
  `password_forget_token` char(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_forget_token_date` datetime DEFAULT NULL,
  `user_dn` text COLLATE utf8_unicode_ci,
  `registration_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `show_count_on_tabs` tinyint(1) DEFAULT NULL,
  `refresh_ticket_list` int(11) DEFAULT NULL,
  `set_default_tech` tinyint(1) DEFAULT NULL,
  `personal_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `personal_token_date` datetime DEFAULT NULL,
  `api_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `api_token_date` datetime DEFAULT NULL,
  `display_count_on_home` int(11) DEFAULT NULL,
  `notification_to_myself` tinyint(1) DEFAULT NULL,
  `duedateok_color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `duedatewarning_color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `duedatecritical_color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `duedatewarning_less` int(11) DEFAULT NULL,
  `duedatecritical_less` int(11) DEFAULT NULL,
  `duedatewarning_unit` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `duedatecritical_unit` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `display_options` text COLLATE utf8_unicode_ci,
  `is_deleted_ldap` tinyint(1) NOT NULL DEFAULT '0',
  `pdffont` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `picture` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `begin_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `keep_devices_when_purging_item` tinyint(1) DEFAULT NULL,
  `privatebookmarkorder` longtext COLLATE utf8_unicode_ci,
  `backcreated` tinyint(1) DEFAULT NULL,
  `task_state` int(11) DEFAULT NULL,
  `layout` char(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `palette` char(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ticket_timeline` tinyint(1) DEFAULT NULL,
  `ticket_timeline_keep_replaced_tabs` tinyint(1) DEFAULT NULL,
  `set_default_requester` tinyint(1) DEFAULT NULL,
  `lock_autolock_mode` tinyint(1) DEFAULT NULL,
  `lock_directunlock_notification` tinyint(1) DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  `highcontrast_css` tinyint(1) DEFAULT '0',
  `plannings` text COLLATE utf8_unicode_ci,
  `sync_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `glpi_users`
--

INSERT INTO `glpi_users` (`id`, `name`, `password`, `phone`, `phone2`, `mobile`, `realname`, `firstname`, `locations_id`, `language`, `use_mode`, `list_limit`, `is_active`, `comment`, `auths_id`, `authtype`, `last_login`, `date_mod`, `date_sync`, `is_deleted`, `profiles_id`, `entities_id`, `usertitles_id`, `usercategories_id`, `date_format`, `number_format`, `names_format`, `csv_delimiter`, `is_ids_visible`, `use_flat_dropdowntree`, `show_jobs_at_login`, `priority_1`, `priority_2`, `priority_3`, `priority_4`, `priority_5`, `priority_6`, `followup_private`, `task_private`, `default_requesttypes_id`, `password_forget_token`, `password_forget_token_date`, `user_dn`, `registration_number`, `show_count_on_tabs`, `refresh_ticket_list`, `set_default_tech`, `personal_token`, `personal_token_date`, `api_token`, `api_token_date`, `display_count_on_home`, `notification_to_myself`, `duedateok_color`, `duedatewarning_color`, `duedatecritical_color`, `duedatewarning_less`, `duedatecritical_less`, `duedatewarning_unit`, `duedatecritical_unit`, `display_options`, `is_deleted_ldap`, `pdffont`, `picture`, `begin_date`, `end_date`, `keep_devices_when_purging_item`, `privatebookmarkorder`, `backcreated`, `task_state`, `layout`, `palette`, `ticket_timeline`, `ticket_timeline_keep_replaced_tabs`, `set_default_requester`, `lock_autolock_mode`, `lock_directunlock_notification`, `date_creation`, `highcontrast_css`, `plannings`, `sync_field`) VALUES
(2, 'glpi', '$2y$10$M4lULnEYXuN9bwuH2JsdCu98LUUDnenue6wFM7Lz.9XiTAvbzlJyC', '', '', '', '', NULL, 0, NULL, 0, 20, 1, NULL, 0, 1, '2018-07-30 17:45:54', '2018-07-25 10:59:45', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'VtsbminMv8U6bsYTHYtzWe9cmtiPWATtXPVX66A2', '2018-07-25 10:45:33', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL),
(3, 'post-only', '$2y$10$NKPBZbyN0Hv2yxXk1nU06Ovv5gxcHZ1QbnvGiAFN/oPF5NMR2M78i', '', '', '', '', NULL, 0, 'en_GB', 0, 20, 1, NULL, 0, 1, NULL, '2018-07-25 11:00:33', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', NULL),
(4, 'tech', '$2y$10$7KFn8UjRcIPpcYObnp8WYOBPgLEbe0jH2WWjHoA8mL7wKCuHW9xpe', '', '', '', '', NULL, 0, 'en_GB', 0, 20, 1, NULL, 0, 1, NULL, '2018-07-25 11:00:22', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', NULL),
(5, 'normal', '$2y$10$erByuXYGVxOz8I6XW2s9r.4W0M.LnLKwDc7L7LwJ/BWtMo4zNQdJ2', '', '', '', '', NULL, 0, 'en_GB', 0, 20, 1, NULL, 0, 1, NULL, '2018-07-25 10:47:48', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_usertitles`
--

CREATE TABLE `glpi_usertitles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_virtualmachinestates`
--

CREATE TABLE `glpi_virtualmachinestates` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_virtualmachinesystems`
--

CREATE TABLE `glpi_virtualmachinesystems` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_virtualmachinetypes`
--

CREATE TABLE `glpi_virtualmachinetypes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_vlans`
--

CREATE TABLE `glpi_vlans` (
  `id` int(11) NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `tag` int(11) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `glpi_wifinetworks`
--

CREATE TABLE `glpi_wifinetworks` (
  `id` int(11) NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `essid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'ad-hoc, access_point',
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `glpi_alerts`
--
ALTER TABLE `glpi_alerts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unicity` (`itemtype`,`items_id`,`type`),
  ADD KEY `type` (`type`),
  ADD KEY `date` (`date`);

--
-- Índices de tabela `glpi_apiclients`
--
ALTER TABLE `glpi_apiclients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `is_active` (`is_active`);

--
-- Índices de tabela `glpi_authldapreplicates`
--
ALTER TABLE `glpi_authldapreplicates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `authldaps_id` (`authldaps_id`);

--
-- Índices de tabela `glpi_authldaps`
--
ALTER TABLE `glpi_authldaps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `is_default` (`is_default`),
  ADD KEY `is_active` (`is_active`),
  ADD KEY `date_creation` (`date_creation`),
  ADD KEY `sync_field` (`sync_field`);

--
-- Índices de tabela `glpi_authmails`
--
ALTER TABLE `glpi_authmails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `is_active` (`is_active`);

--
-- Índices de tabela `glpi_autoupdatesystems`
--
ALTER TABLE `glpi_autoupdatesystems`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Índices de tabela `glpi_blacklistedmailcontents`
--
ALTER TABLE `glpi_blacklistedmailcontents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Índices de tabela `glpi_blacklists`
--
ALTER TABLE `glpi_blacklists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type` (`type`),
  ADD KEY `name` (`name`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Índices de tabela `glpi_budgets`
--
ALTER TABLE `glpi_budgets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `is_recursive` (`is_recursive`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `begin_date` (`begin_date`),
  ADD KEY `end_date` (`end_date`),
  ADD KEY `is_template` (`is_template`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `budgettypes_id` (`budgettypes_id`);

--
-- Índices de tabela `glpi_budgettypes`
--
ALTER TABLE `glpi_budgettypes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Índices de tabela `glpi_businesscriticities`
--
ALTER TABLE `glpi_businesscriticities`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unicity` (`businesscriticities_id`,`name`),
  ADD KEY `name` (`name`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Índices de tabela `glpi_calendars`
--
ALTER TABLE `glpi_calendars`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `is_recursive` (`is_recursive`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Índices de tabela `glpi_calendarsegments`
--
ALTER TABLE `glpi_calendarsegments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `calendars_id` (`calendars_id`),
  ADD KEY `day` (`day`);

--
-- Índices de tabela `glpi_calendars_holidays`
--
ALTER TABLE `glpi_calendars_holidays`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unicity` (`calendars_id`,`holidays_id`),
  ADD KEY `holidays_id` (`holidays_id`);

--
-- Índices de tabela `glpi_cartridgeitems`
--
ALTER TABLE `glpi_cartridgeitems`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `users_id_tech` (`users_id_tech`),
  ADD KEY `cartridgeitemtypes_id` (`cartridgeitemtypes_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `alarm_threshold` (`alarm_threshold`),
  ADD KEY `groups_id_tech` (`groups_id_tech`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Índices de tabela `glpi_cartridgeitems_printermodels`
--
ALTER TABLE `glpi_cartridgeitems_printermodels`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unicity` (`printermodels_id`,`cartridgeitems_id`),
  ADD KEY `cartridgeitems_id` (`cartridgeitems_id`);

--
-- Índices de tabela `glpi_cartridgeitemtypes`
--
ALTER TABLE `glpi_cartridgeitemtypes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Índices de tabela `glpi_cartridges`
--
ALTER TABLE `glpi_cartridges`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cartridgeitems_id` (`cartridgeitems_id`),
  ADD KEY `printers_id` (`printers_id`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Índices de tabela `glpi_certificates`
--
ALTER TABLE `glpi_certificates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `is_template` (`is_template`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `certificatetypes_id` (`certificatetypes_id`),
  ADD KEY `users_id_tech` (`users_id_tech`),
  ADD KEY `groups_id_tech` (`groups_id_tech`),
  ADD KEY `groups_id` (`groups_id`),
  ADD KEY `users_id` (`users_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `states_id` (`states_id`),
  ADD KEY `date_creation` (`date_creation`),
  ADD KEY `date_mod` (`date_mod`);

--
-- Índices de tabela `glpi_certificates_items`
--
ALTER TABLE `glpi_certificates_items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unicity` (`certificates_id`,`itemtype`,`items_id`),
  ADD KEY `device` (`items_id`,`itemtype`),
  ADD KEY `item` (`itemtype`,`items_id`),
  ADD KEY `date_creation` (`date_creation`),
  ADD KEY `date_mod` (`date_mod`);

--
-- Índices de tabela `glpi_certificatetypes`
--
ALTER TABLE `glpi_certificatetypes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `is_recursive` (`is_recursive`),
  ADD KEY `name` (`name`),
  ADD KEY `date_creation` (`date_creation`),
  ADD KEY `date_mod` (`date_mod`);

--
-- Índices de tabela `glpi_changecosts`
--
ALTER TABLE `glpi_changecosts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `changes_id` (`changes_id`),
  ADD KEY `begin_date` (`begin_date`),
  ADD KEY `end_date` (`end_date`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `is_recursive` (`is_recursive`),
  ADD KEY `budgets_id` (`budgets_id`);

--
-- Índices de tabela `glpi_changes`
--
ALTER TABLE `glpi_changes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `is_recursive` (`is_recursive`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `date` (`date`),
  ADD KEY `closedate` (`closedate`),
  ADD KEY `status` (`status`),
  ADD KEY `priority` (`priority`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `itilcategories_id` (`itilcategories_id`),
  ADD KEY `users_id_recipient` (`users_id_recipient`),
  ADD KEY `solvedate` (`solvedate`),
  ADD KEY `urgency` (`urgency`),
  ADD KEY `impact` (`impact`),
  ADD KEY `time_to_resolve` (`time_to_resolve`),
  ADD KEY `global_validation` (`global_validation`),
  ADD KEY `users_id_lastupdater` (`users_id_lastupdater`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Índices de tabela `glpi_changes_groups`
--
ALTER TABLE `glpi_changes_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unicity` (`changes_id`,`type`,`groups_id`),
  ADD KEY `group` (`groups_id`,`type`);

--
-- Índices de tabela `glpi_changes_items`
--
ALTER TABLE `glpi_changes_items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unicity` (`changes_id`,`itemtype`,`items_id`),
  ADD KEY `item` (`itemtype`,`items_id`);

--
-- Índices de tabela `glpi_changes_problems`
--
ALTER TABLE `glpi_changes_problems`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unicity` (`changes_id`,`problems_id`),
  ADD KEY `problems_id` (`problems_id`);

--
-- Índices de tabela `glpi_changes_projects`
--
ALTER TABLE `glpi_changes_projects`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unicity` (`changes_id`,`projects_id`),
  ADD KEY `projects_id` (`projects_id`);

--
-- Índices de tabela `glpi_changes_suppliers`
--
ALTER TABLE `glpi_changes_suppliers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unicity` (`changes_id`,`type`,`suppliers_id`),
  ADD KEY `group` (`suppliers_id`,`type`);

--
-- Índices de tabela `glpi_changes_tickets`
--
ALTER TABLE `glpi_changes_tickets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unicity` (`changes_id`,`tickets_id`),
  ADD KEY `tickets_id` (`tickets_id`);

--
-- Índices de tabela `glpi_changes_users`
--
ALTER TABLE `glpi_changes_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unicity` (`changes_id`,`type`,`users_id`,`alternative_email`),
  ADD KEY `user` (`users_id`,`type`);

--
-- Índices de tabela `glpi_changetasks`
--
ALTER TABLE `glpi_changetasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `changes_id` (`changes_id`),
  ADD KEY `state` (`state`),
  ADD KEY `users_id` (`users_id`),
  ADD KEY `users_id_editor` (`users_id_editor`),
  ADD KEY `users_id_tech` (`users_id_tech`),
  ADD KEY `groups_id_tech` (`groups_id_tech`),
  ADD KEY `date` (`date`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`),
  ADD KEY `begin` (`begin`),
  ADD KEY `end` (`end`),
  ADD KEY `taskcategories_id` (`taskcategories_id`),
  ADD KEY `tasktemplates_id` (`tasktemplates_id`);

--
-- Índices de tabela `glpi_changevalidations`
--
ALTER TABLE `glpi_changevalidations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `is_recursive` (`is_recursive`),
  ADD KEY `users_id` (`users_id`),
  ADD KEY `users_id_validate` (`users_id_validate`),
  ADD KEY `changes_id` (`changes_id`),
  ADD KEY `submission_date` (`submission_date`),
  ADD KEY `validation_date` (`validation_date`),
  ADD KEY `status` (`status`);

--
-- Índices de tabela `glpi_computerantiviruses`
--
ALTER TABLE `glpi_computerantiviruses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `antivirus_version` (`antivirus_version`),
  ADD KEY `signature_version` (`signature_version`),
  ADD KEY `is_active` (`is_active`),
  ADD KEY `is_uptodate` (`is_uptodate`),
  ADD KEY `is_dynamic` (`is_dynamic`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `computers_id` (`computers_id`),
  ADD KEY `date_expiration` (`date_expiration`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Índices de tabela `glpi_computermodels`
--
ALTER TABLE `glpi_computermodels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`),
  ADD KEY `product_number` (`product_number`);

--
-- Índices de tabela `glpi_computers`
--
ALTER TABLE `glpi_computers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `name` (`name`),
  ADD KEY `is_template` (`is_template`),
  ADD KEY `autoupdatesystems_id` (`autoupdatesystems_id`),
  ADD KEY `domains_id` (`domains_id`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `groups_id` (`groups_id`),
  ADD KEY `users_id` (`users_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `computermodels_id` (`computermodels_id`),
  ADD KEY `networks_id` (`networks_id`),
  ADD KEY `states_id` (`states_id`),
  ADD KEY `users_id_tech` (`users_id_tech`),
  ADD KEY `computertypes_id` (`computertypes_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `groups_id_tech` (`groups_id_tech`),
  ADD KEY `is_dynamic` (`is_dynamic`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `uuid` (`uuid`),
  ADD KEY `date_creation` (`date_creation`),
  ADD KEY `is_recursive` (`is_recursive`);

--
-- Índices de tabela `glpi_computers_items`
--
ALTER TABLE `glpi_computers_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `computers_id` (`computers_id`),
  ADD KEY `item` (`itemtype`,`items_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `is_dynamic` (`is_dynamic`);

--
-- Índices de tabela `glpi_computers_softwarelicenses`
--
ALTER TABLE `glpi_computers_softwarelicenses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `computers_id` (`computers_id`),
  ADD KEY `softwarelicenses_id` (`softwarelicenses_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `is_dynamic` (`is_dynamic`);

--
-- Índices de tabela `glpi_computers_softwareversions`
--
ALTER TABLE `glpi_computers_softwareversions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unicity` (`computers_id`,`softwareversions_id`),
  ADD KEY `softwareversions_id` (`softwareversions_id`),
  ADD KEY `computers_info` (`entities_id`,`is_template_computer`,`is_deleted_computer`),
  ADD KEY `is_template` (`is_template_computer`),
  ADD KEY `is_deleted` (`is_deleted_computer`),
  ADD KEY `is_dynamic` (`is_dynamic`),
  ADD KEY `date_install` (`date_install`);

--
-- Índices de tabela `glpi_computertypes`
--
ALTER TABLE `glpi_computertypes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Índices de tabela `glpi_computervirtualmachines`
--
ALTER TABLE `glpi_computervirtualmachines`
  ADD PRIMARY KEY (`id`),
  ADD KEY `computers_id` (`computers_id`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `name` (`name`),
  ADD KEY `virtualmachinestates_id` (`virtualmachinestates_id`),
  ADD KEY `virtualmachinesystems_id` (`virtualmachinesystems_id`),
  ADD KEY `vcpu` (`vcpu`),
  ADD KEY `ram` (`ram`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `is_dynamic` (`is_dynamic`),
  ADD KEY `uuid` (`uuid`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Índices de tabela `glpi_configs`
--
ALTER TABLE `glpi_configs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unicity` (`context`,`name`);

--
-- Índices de tabela `glpi_consumableitems`
--
ALTER TABLE `glpi_consumableitems`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `users_id_tech` (`users_id_tech`),
  ADD KEY `consumableitemtypes_id` (`consumableitemtypes_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `alarm_threshold` (`alarm_threshold`),
  ADD KEY `groups_id_tech` (`groups_id_tech`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Índices de tabela `glpi_consumableitemtypes`
--
ALTER TABLE `glpi_consumableitemtypes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Índices de tabela `glpi_consumables`
--
ALTER TABLE `glpi_consumables`
  ADD PRIMARY KEY (`id`),
  ADD KEY `date_in` (`date_in`),
  ADD KEY `date_out` (`date_out`),
  ADD KEY `consumableitems_id` (`consumableitems_id`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `item` (`itemtype`,`items_id`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Índices de tabela `glpi_contacts`
--
ALTER TABLE `glpi_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `contacttypes_id` (`contacttypes_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `usertitles_id` (`usertitles_id`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Índices de tabela `glpi_contacts_suppliers`
--
ALTER TABLE `glpi_contacts_suppliers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unicity` (`suppliers_id`,`contacts_id`),
  ADD KEY `contacts_id` (`contacts_id`);

--
-- Índices de tabela `glpi_contacttypes`
--
ALTER TABLE `glpi_contacttypes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Índices de tabela `glpi_contractcosts`
--
ALTER TABLE `glpi_contractcosts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `contracts_id` (`contracts_id`),
  ADD KEY `begin_date` (`begin_date`),
  ADD KEY `end_date` (`end_date`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `is_recursive` (`is_recursive`),
  ADD KEY `budgets_id` (`budgets_id`);

--
-- Índices de tabela `glpi_contracts`
--
ALTER TABLE `glpi_contracts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `begin_date` (`begin_date`),
  ADD KEY `name` (`name`),
  ADD KEY `contracttypes_id` (`contracttypes_id`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `use_monday` (`use_monday`),
  ADD KEY `use_saturday` (`use_saturday`),
  ADD KEY `alert` (`alert`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Índices de tabela `glpi_contracts_items`
--
ALTER TABLE `glpi_contracts_items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unicity` (`contracts_id`,`itemtype`,`items_id`),
  ADD KEY `FK_device` (`items_id`,`itemtype`),
  ADD KEY `item` (`itemtype`,`items_id`);

--
-- Índices de tabela `glpi_contracts_suppliers`
--
ALTER TABLE `glpi_contracts_suppliers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unicity` (`suppliers_id`,`contracts_id`),
  ADD KEY `contracts_id` (`contracts_id`);

--
-- Índices de tabela `glpi_contracttypes`
--
ALTER TABLE `glpi_contracttypes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Índices de tabela `glpi_crontasklogs`
--
ALTER TABLE `glpi_crontasklogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `date` (`date`),
  ADD KEY `crontasks_id` (`crontasks_id`),
  ADD KEY `crontasklogs_id_state` (`crontasklogs_id`,`state`);

--
-- Índices de tabela `glpi_crontasks`
--
ALTER TABLE `glpi_crontasks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unicity` (`itemtype`,`name`),
  ADD KEY `mode` (`mode`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Índices de tabela `glpi_datacenters`
--
ALTER TABLE `glpi_datacenters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `is_recursive` (`is_recursive`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `is_deleted` (`is_deleted`);

--
-- Índices de tabela `glpi_dcrooms`
--
ALTER TABLE `glpi_dcrooms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `is_recursive` (`is_recursive`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `datacenters_id` (`datacenters_id`),
  ADD KEY `is_deleted` (`is_deleted`);

--
-- Índices de tabela `glpi_devicebatteries`
--
ALTER TABLE `glpi_devicebatteries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `designation` (`designation`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `is_recursive` (`is_recursive`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`),
  ADD KEY `devicebatterymodels_id` (`devicebatterymodels_id`),
  ADD KEY `devicebatterytypes_id` (`devicebatterytypes_id`);

--
-- Índices de tabela `glpi_devicebatterymodels`
--
ALTER TABLE `glpi_devicebatterymodels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `product_number` (`product_number`);

--
-- Índices de tabela `glpi_devicebatterytypes`
--
ALTER TABLE `glpi_devicebatterytypes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Índices de tabela `glpi_devicecasemodels`
--
ALTER TABLE `glpi_devicecasemodels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `product_number` (`product_number`);

--
-- Índices de tabela `glpi_devicecases`
--
ALTER TABLE `glpi_devicecases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `designation` (`designation`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `devicecasetypes_id` (`devicecasetypes_id`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `is_recursive` (`is_recursive`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`),
  ADD KEY `devicecasemodels_id` (`devicecasemodels_id`);

--
-- Índices de tabela `glpi_devicecasetypes`
--
ALTER TABLE `glpi_devicecasetypes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Índices de tabela `glpi_devicecontrolmodels`
--
ALTER TABLE `glpi_devicecontrolmodels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `product_number` (`product_number`);

--
-- Índices de tabela `glpi_devicecontrols`
--
ALTER TABLE `glpi_devicecontrols`
  ADD PRIMARY KEY (`id`),
  ADD KEY `designation` (`designation`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `interfacetypes_id` (`interfacetypes_id`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `is_recursive` (`is_recursive`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`),
  ADD KEY `devicecontrolmodels_id` (`devicecontrolmodels_id`);

--
-- Índices de tabela `glpi_devicedrivemodels`
--
ALTER TABLE `glpi_devicedrivemodels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `product_number` (`product_number`);

--
-- Índices de tabela `glpi_devicedrives`
--
ALTER TABLE `glpi_devicedrives`
  ADD PRIMARY KEY (`id`),
  ADD KEY `designation` (`designation`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `interfacetypes_id` (`interfacetypes_id`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `is_recursive` (`is_recursive`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`),
  ADD KEY `devicedrivemodels_id` (`devicedrivemodels_id`);

--
-- Índices de tabela `glpi_devicefirmwaremodels`
--
ALTER TABLE `glpi_devicefirmwaremodels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `product_number` (`product_number`);

--
-- Índices de tabela `glpi_devicefirmwares`
--
ALTER TABLE `glpi_devicefirmwares`
  ADD PRIMARY KEY (`id`),
  ADD KEY `designation` (`designation`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `is_recursive` (`is_recursive`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`),
  ADD KEY `devicefirmwaremodels_id` (`devicefirmwaremodels_id`),
  ADD KEY `devicefirmwaretypes_id` (`devicefirmwaretypes_id`);

--
-- Índices de tabela `glpi_devicefirmwaretypes`
--
ALTER TABLE `glpi_devicefirmwaretypes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Índices de tabela `glpi_devicegenericmodels`
--
ALTER TABLE `glpi_devicegenericmodels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `product_number` (`product_number`);

--
-- Índices de tabela `glpi_devicegenerics`
--
ALTER TABLE `glpi_devicegenerics`
  ADD PRIMARY KEY (`id`),
  ADD KEY `designation` (`designation`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `devicegenerictypes_id` (`devicegenerictypes_id`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `is_recursive` (`is_recursive`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `states_id` (`states_id`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`),
  ADD KEY `devicegenericmodels_id` (`devicegenericmodels_id`);

--
-- Índices de tabela `glpi_devicegenerictypes`
--
ALTER TABLE `glpi_devicegenerictypes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Índices de tabela `glpi_devicegraphiccardmodels`
--
ALTER TABLE `glpi_devicegraphiccardmodels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `product_number` (`product_number`);

--
-- Índices de tabela `glpi_devicegraphiccards`
--
ALTER TABLE `glpi_devicegraphiccards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `designation` (`designation`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `interfacetypes_id` (`interfacetypes_id`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `is_recursive` (`is_recursive`),
  ADD KEY `chipset` (`chipset`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`),
  ADD KEY `devicegraphiccardmodels_id` (`devicegraphiccardmodels_id`);

--
-- Índices de tabela `glpi_deviceharddrivemodels`
--
ALTER TABLE `glpi_deviceharddrivemodels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `product_number` (`product_number`);

--
-- Índices de tabela `glpi_deviceharddrives`
--
ALTER TABLE `glpi_deviceharddrives`
  ADD PRIMARY KEY (`id`),
  ADD KEY `designation` (`designation`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `interfacetypes_id` (`interfacetypes_id`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `is_recursive` (`is_recursive`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`),
  ADD KEY `deviceharddrivemodels_id` (`deviceharddrivemodels_id`);

--
-- Índices de tabela `glpi_devicememories`
--
ALTER TABLE `glpi_devicememories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `designation` (`designation`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `devicememorytypes_id` (`devicememorytypes_id`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `is_recursive` (`is_recursive`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`),
  ADD KEY `devicememorymodels_id` (`devicememorymodels_id`);

--
-- Índices de tabela `glpi_devicememorymodels`
--
ALTER TABLE `glpi_devicememorymodels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `product_number` (`product_number`);

--
-- Índices de tabela `glpi_devicememorytypes`
--
ALTER TABLE `glpi_devicememorytypes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Índices de tabela `glpi_devicemotherboardmodels`
--
ALTER TABLE `glpi_devicemotherboardmodels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `product_number` (`product_number`);

--
-- Índices de tabela `glpi_devicemotherboards`
--
ALTER TABLE `glpi_devicemotherboards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `designation` (`designation`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `is_recursive` (`is_recursive`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`),
  ADD KEY `devicemotherboardmodels_id` (`devicemotherboardmodels_id`);

--
-- Índices de tabela `glpi_devicenetworkcardmodels`
--
ALTER TABLE `glpi_devicenetworkcardmodels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `product_number` (`product_number`);

--
-- Índices de tabela `glpi_devicenetworkcards`
--
ALTER TABLE `glpi_devicenetworkcards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `designation` (`designation`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `is_recursive` (`is_recursive`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`),
  ADD KEY `devicenetworkcardmodels_id` (`devicenetworkcardmodels_id`);

--
-- Índices de tabela `glpi_devicepcimodels`
--
ALTER TABLE `glpi_devicepcimodels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `product_number` (`product_number`);

--
-- Índices de tabela `glpi_devicepcis`
--
ALTER TABLE `glpi_devicepcis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `designation` (`designation`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `devicenetworkcardmodels_id` (`devicenetworkcardmodels_id`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `is_recursive` (`is_recursive`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`),
  ADD KEY `devicepcimodels_id` (`devicepcimodels_id`);

--
-- Índices de tabela `glpi_devicepowersupplies`
--
ALTER TABLE `glpi_devicepowersupplies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `designation` (`designation`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `is_recursive` (`is_recursive`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`),
  ADD KEY `devicepowersupplymodels_id` (`devicepowersupplymodels_id`);

--
-- Índices de tabela `glpi_devicepowersupplymodels`
--
ALTER TABLE `glpi_devicepowersupplymodels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `product_number` (`product_number`);

--
-- Índices de tabela `glpi_deviceprocessormodels`
--
ALTER TABLE `glpi_deviceprocessormodels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `product_number` (`product_number`);

--
-- Índices de tabela `glpi_deviceprocessors`
--
ALTER TABLE `glpi_deviceprocessors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `designation` (`designation`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `is_recursive` (`is_recursive`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`),
  ADD KEY `deviceprocessormodels_id` (`deviceprocessormodels_id`);

--
-- Índices de tabela `glpi_devicesensormodels`
--
ALTER TABLE `glpi_devicesensormodels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `product_number` (`product_number`);

--
-- Índices de tabela `glpi_devicesensors`
--
ALTER TABLE `glpi_devicesensors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `designation` (`designation`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `devicesensortypes_id` (`devicesensortypes_id`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `is_recursive` (`is_recursive`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `states_id` (`states_id`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Índices de tabela `glpi_devicesensortypes`
--
ALTER TABLE `glpi_devicesensortypes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Índices de tabela `glpi_devicesimcards`
--
ALTER TABLE `glpi_devicesimcards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `designation` (`designation`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `is_recursive` (`is_recursive`),
  ADD KEY `devicesimcardtypes_id` (`devicesimcardtypes_id`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`),
  ADD KEY `manufacturers_id` (`manufacturers_id`);

--
-- Índices de tabela `glpi_devicesimcardtypes`
--
ALTER TABLE `glpi_devicesimcardtypes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Índices de tabela `glpi_devicesoundcardmodels`
--
ALTER TABLE `glpi_devicesoundcardmodels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `product_number` (`product_number`);

--
-- Índices de tabela `glpi_devicesoundcards`
--
ALTER TABLE `glpi_devicesoundcards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `designation` (`designation`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `is_recursive` (`is_recursive`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`),
  ADD KEY `devicesoundcardmodels_id` (`devicesoundcardmodels_id`);

--
-- Índices de tabela `glpi_displaypreferences`
--
ALTER TABLE `glpi_displaypreferences`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unicity` (`users_id`,`itemtype`,`num`),
  ADD KEY `rank` (`rank`),
  ADD KEY `num` (`num`),
  ADD KEY `itemtype` (`itemtype`);

--
-- Índices de tabela `glpi_documentcategories`
--
ALTER TABLE `glpi_documentcategories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unicity` (`documentcategories_id`,`name`),
  ADD KEY `name` (`name`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Índices de tabela `glpi_documents`
--
ALTER TABLE `glpi_documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `name` (`name`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `tickets_id` (`tickets_id`),
  ADD KEY `users_id` (`users_id`),
  ADD KEY `documentcategories_id` (`documentcategories_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `sha1sum` (`sha1sum`),
  ADD KEY `tag` (`tag`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Índices de tabela `glpi_documents_items`
--
ALTER TABLE `glpi_documents_items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unicity` (`documents_id`,`itemtype`,`items_id`),
  ADD KEY `item` (`itemtype`,`items_id`,`entities_id`,`is_recursive`),
  ADD KEY `users_id` (`users_id`);

--
-- Índices de tabela `glpi_documenttypes`
--
ALTER TABLE `glpi_documenttypes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unicity` (`ext`),
  ADD KEY `name` (`name`),
  ADD KEY `is_uploadable` (`is_uploadable`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Índices de tabela `glpi_domains`
--
ALTER TABLE `glpi_domains`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Índices de tabela `glpi_dropdowntranslations`
--
ALTER TABLE `glpi_dropdowntranslations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unicity` (`itemtype`,`items_id`,`language`,`field`),
  ADD KEY `typeid` (`itemtype`,`items_id`),
  ADD KEY `language` (`language`),
  ADD KEY `field` (`field`);

--
-- Índices de tabela `glpi_enclosuremodels`
--
ALTER TABLE `glpi_enclosuremodels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`),
  ADD KEY `product_number` (`product_number`);

--
-- Índices de tabela `glpi_enclosures`
--
ALTER TABLE `glpi_enclosures`
  ADD PRIMARY KEY (`id`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `is_recursive` (`is_recursive`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `enclosuremodels_id` (`enclosuremodels_id`),
  ADD KEY `users_id_tech` (`users_id_tech`),
  ADD KEY `group_id_tech` (`groups_id_tech`),
  ADD KEY `is_template` (`is_template`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `states_id` (`states_id`),
  ADD KEY `manufacturers_id` (`manufacturers_id`);

--
-- Índices de tabela `glpi_entities`
--
ALTER TABLE `glpi_entities`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unicity` (`entities_id`,`name`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Índices de tabela `glpi_entities_knowbaseitems`
--
ALTER TABLE `glpi_entities_knowbaseitems`
  ADD PRIMARY KEY (`id`),
  ADD KEY `knowbaseitems_id` (`knowbaseitems_id`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `is_recursive` (`is_recursive`);

--
-- Índices de tabela `glpi_entities_reminders`
--
ALTER TABLE `glpi_entities_reminders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reminders_id` (`reminders_id`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `is_recursive` (`is_recursive`);

--
-- Índices de tabela `glpi_entities_rssfeeds`
--
ALTER TABLE `glpi_entities_rssfeeds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rssfeeds_id` (`rssfeeds_id`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `is_recursive` (`is_recursive`);

--
-- Índices de tabela `glpi_events`
--
ALTER TABLE `glpi_events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `date` (`date`),
  ADD KEY `level` (`level`),
  ADD KEY `item` (`type`,`items_id`);

--
-- Índices de tabela `glpi_fieldblacklists`
--
ALTER TABLE `glpi_fieldblacklists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Índices de tabela `glpi_fieldunicities`
--
ALTER TABLE `glpi_fieldunicities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Índices de tabela `glpi_filesystems`
--
ALTER TABLE `glpi_filesystems`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Índices de tabela `glpi_fqdns`
--
ALTER TABLE `glpi_fqdns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `name` (`name`),
  ADD KEY `fqdn` (`fqdn`),
  ADD KEY `is_recursive` (`is_recursive`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Índices de tabela `glpi_groups`
--
ALTER TABLE `glpi_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `ldap_field` (`ldap_field`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `ldap_value` (`ldap_value`(200)),
  ADD KEY `ldap_group_dn` (`ldap_group_dn`(200)),
  ADD KEY `groups_id` (`groups_id`),
  ADD KEY `is_requester` (`is_requester`),
  ADD KEY `is_assign` (`is_assign`),
  ADD KEY `is_notify` (`is_notify`),
  ADD KEY `is_itemgroup` (`is_itemgroup`),
  ADD KEY `is_usergroup` (`is_usergroup`),
  ADD KEY `is_manager` (`is_manager`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Índices de tabela `glpi_groups_knowbaseitems`
--
ALTER TABLE `glpi_groups_knowbaseitems`
  ADD PRIMARY KEY (`id`),
  ADD KEY `knowbaseitems_id` (`knowbaseitems_id`),
  ADD KEY `groups_id` (`groups_id`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `is_recursive` (`is_recursive`);

--
-- Índices de tabela `glpi_groups_problems`
--
ALTER TABLE `glpi_groups_problems`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unicity` (`problems_id`,`type`,`groups_id`),
  ADD KEY `group` (`groups_id`,`type`);

--
-- Índices de tabela `glpi_groups_reminders`
--
ALTER TABLE `glpi_groups_reminders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reminders_id` (`reminders_id`),
  ADD KEY `groups_id` (`groups_id`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `is_recursive` (`is_recursive`);

--
-- Índices de tabela `glpi_groups_rssfeeds`
--
ALTER TABLE `glpi_groups_rssfeeds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rssfeeds_id` (`rssfeeds_id`),
  ADD KEY `groups_id` (`groups_id`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `is_recursive` (`is_recursive`);

--
-- Índices de tabela `glpi_groups_tickets`
--
ALTER TABLE `glpi_groups_tickets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unicity` (`tickets_id`,`type`,`groups_id`),
  ADD KEY `group` (`groups_id`,`type`);

--
-- Índices de tabela `glpi_groups_users`
--
ALTER TABLE `glpi_groups_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unicity` (`users_id`,`groups_id`),
  ADD KEY `groups_id` (`groups_id`),
  ADD KEY `is_manager` (`is_manager`),
  ADD KEY `is_userdelegate` (`is_userdelegate`);

--
-- Índices de tabela `glpi_holidays`
--
ALTER TABLE `glpi_holidays`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `begin_date` (`begin_date`),
  ADD KEY `end_date` (`end_date`),
  ADD KEY `is_perpetual` (`is_perpetual`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Índices de tabela `glpi_infocoms`
--
ALTER TABLE `glpi_infocoms`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unicity` (`itemtype`,`items_id`),
  ADD KEY `buy_date` (`buy_date`),
  ADD KEY `alert` (`alert`),
  ADD KEY `budgets_id` (`budgets_id`),
  ADD KEY `suppliers_id` (`suppliers_id`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `is_recursive` (`is_recursive`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`),
  ADD KEY `businesscriticities_id` (`businesscriticities_id`);

--
-- Índices de tabela `glpi_interfacetypes`
--
ALTER TABLE `glpi_interfacetypes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Índices de tabela `glpi_ipaddresses`
--
ALTER TABLE `glpi_ipaddresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `textual` (`name`),
  ADD KEY `binary` (`binary_0`,`binary_1`,`binary_2`,`binary_3`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `is_dynamic` (`is_dynamic`),
  ADD KEY `item` (`itemtype`,`items_id`,`is_deleted`),
  ADD KEY `mainitem` (`mainitemtype`,`mainitems_id`,`is_deleted`);

--
-- Índices de tabela `glpi_ipaddresses_ipnetworks`
--
ALTER TABLE `glpi_ipaddresses_ipnetworks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unicity` (`ipaddresses_id`,`ipnetworks_id`),
  ADD KEY `ipnetworks_id` (`ipnetworks_id`),
  ADD KEY `ipaddresses_id` (`ipaddresses_id`);

--
-- Índices de tabela `glpi_ipnetworks`
--
ALTER TABLE `glpi_ipnetworks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `network_definition` (`entities_id`,`address`,`netmask`),
  ADD KEY `address` (`address_0`,`address_1`,`address_2`,`address_3`),
  ADD KEY `netmask` (`netmask_0`,`netmask_1`,`netmask_2`,`netmask_3`),
  ADD KEY `gateway` (`gateway_0`,`gateway_1`,`gateway_2`,`gateway_3`),
  ADD KEY `name` (`name`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Índices de tabela `glpi_ipnetworks_vlans`
--
ALTER TABLE `glpi_ipnetworks_vlans`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `link` (`ipnetworks_id`,`vlans_id`);

--
-- Índices de tabela `glpi_items_devicebatteries`
--
ALTER TABLE `glpi_items_devicebatteries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `computers_id` (`items_id`),
  ADD KEY `devicebatteries_id` (`devicebatteries_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `is_dynamic` (`is_dynamic`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `is_recursive` (`is_recursive`),
  ADD KEY `serial` (`serial`),
  ADD KEY `item` (`itemtype`,`items_id`),
  ADD KEY `otherserial` (`otherserial`);

--
-- Índices de tabela `glpi_items_devicecases`
--
ALTER TABLE `glpi_items_devicecases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `computers_id` (`items_id`),
  ADD KEY `devicecases_id` (`devicecases_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `is_dynamic` (`is_dynamic`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `is_recursive` (`is_recursive`),
  ADD KEY `serial` (`serial`),
  ADD KEY `item` (`itemtype`,`items_id`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `states_id` (`states_id`);

--
-- Índices de tabela `glpi_items_devicecontrols`
--
ALTER TABLE `glpi_items_devicecontrols`
  ADD PRIMARY KEY (`id`),
  ADD KEY `computers_id` (`items_id`),
  ADD KEY `devicecontrols_id` (`devicecontrols_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `is_dynamic` (`is_dynamic`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `is_recursive` (`is_recursive`),
  ADD KEY `serial` (`serial`),
  ADD KEY `busID` (`busID`),
  ADD KEY `item` (`itemtype`,`items_id`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `states_id` (`states_id`);

--
-- Índices de tabela `glpi_items_devicedrives`
--
ALTER TABLE `glpi_items_devicedrives`
  ADD PRIMARY KEY (`id`),
  ADD KEY `computers_id` (`items_id`),
  ADD KEY `devicedrives_id` (`devicedrives_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `is_dynamic` (`is_dynamic`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `is_recursive` (`is_recursive`),
  ADD KEY `serial` (`serial`),
  ADD KEY `busID` (`busID`),
  ADD KEY `item` (`itemtype`,`items_id`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `states_id` (`states_id`);

--
-- Índices de tabela `glpi_items_devicefirmwares`
--
ALTER TABLE `glpi_items_devicefirmwares`
  ADD PRIMARY KEY (`id`),
  ADD KEY `computers_id` (`items_id`),
  ADD KEY `devicefirmwares_id` (`devicefirmwares_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `is_dynamic` (`is_dynamic`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `is_recursive` (`is_recursive`),
  ADD KEY `serial` (`serial`),
  ADD KEY `item` (`itemtype`,`items_id`),
  ADD KEY `otherserial` (`otherserial`);

--
-- Índices de tabela `glpi_items_devicegenerics`
--
ALTER TABLE `glpi_items_devicegenerics`
  ADD PRIMARY KEY (`id`),
  ADD KEY `computers_id` (`items_id`),
  ADD KEY `devicegenerics_id` (`devicegenerics_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `is_dynamic` (`is_dynamic`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `is_recursive` (`is_recursive`),
  ADD KEY `serial` (`serial`),
  ADD KEY `item` (`itemtype`,`items_id`),
  ADD KEY `otherserial` (`otherserial`);

--
-- Índices de tabela `glpi_items_devicegraphiccards`
--
ALTER TABLE `glpi_items_devicegraphiccards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `computers_id` (`items_id`),
  ADD KEY `devicegraphiccards_id` (`devicegraphiccards_id`),
  ADD KEY `specificity` (`memory`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `is_dynamic` (`is_dynamic`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `is_recursive` (`is_recursive`),
  ADD KEY `serial` (`serial`),
  ADD KEY `busID` (`busID`),
  ADD KEY `item` (`itemtype`,`items_id`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `states_id` (`states_id`);

--
-- Índices de tabela `glpi_items_deviceharddrives`
--
ALTER TABLE `glpi_items_deviceharddrives`
  ADD PRIMARY KEY (`id`),
  ADD KEY `computers_id` (`items_id`),
  ADD KEY `deviceharddrives_id` (`deviceharddrives_id`),
  ADD KEY `specificity` (`capacity`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `is_dynamic` (`is_dynamic`),
  ADD KEY `serial` (`serial`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `is_recursive` (`is_recursive`),
  ADD KEY `busID` (`busID`),
  ADD KEY `item` (`itemtype`,`items_id`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `states_id` (`states_id`);

--
-- Índices de tabela `glpi_items_devicememories`
--
ALTER TABLE `glpi_items_devicememories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `computers_id` (`items_id`),
  ADD KEY `devicememories_id` (`devicememories_id`),
  ADD KEY `specificity` (`size`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `is_dynamic` (`is_dynamic`),
  ADD KEY `serial` (`serial`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `is_recursive` (`is_recursive`),
  ADD KEY `busID` (`busID`),
  ADD KEY `item` (`itemtype`,`items_id`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `states_id` (`states_id`);

--
-- Índices de tabela `glpi_items_devicemotherboards`
--
ALTER TABLE `glpi_items_devicemotherboards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `computers_id` (`items_id`),
  ADD KEY `devicemotherboards_id` (`devicemotherboards_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `is_dynamic` (`is_dynamic`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `is_recursive` (`is_recursive`),
  ADD KEY `serial` (`serial`),
  ADD KEY `item` (`itemtype`,`items_id`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `states_id` (`states_id`);

--
-- Índices de tabela `glpi_items_devicenetworkcards`
--
ALTER TABLE `glpi_items_devicenetworkcards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `computers_id` (`items_id`),
  ADD KEY `devicenetworkcards_id` (`devicenetworkcards_id`),
  ADD KEY `specificity` (`mac`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `is_dynamic` (`is_dynamic`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `is_recursive` (`is_recursive`),
  ADD KEY `serial` (`serial`),
  ADD KEY `busID` (`busID`),
  ADD KEY `item` (`itemtype`,`items_id`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `states_id` (`states_id`);

--
-- Índices de tabela `glpi_items_devicepcis`
--
ALTER TABLE `glpi_items_devicepcis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `computers_id` (`items_id`),
  ADD KEY `devicepcis_id` (`devicepcis_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `is_dynamic` (`is_dynamic`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `is_recursive` (`is_recursive`),
  ADD KEY `serial` (`serial`),
  ADD KEY `busID` (`busID`),
  ADD KEY `item` (`itemtype`,`items_id`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `states_id` (`states_id`);

--
-- Índices de tabela `glpi_items_devicepowersupplies`
--
ALTER TABLE `glpi_items_devicepowersupplies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `computers_id` (`items_id`),
  ADD KEY `devicepowersupplies_id` (`devicepowersupplies_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `is_dynamic` (`is_dynamic`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `is_recursive` (`is_recursive`),
  ADD KEY `serial` (`serial`),
  ADD KEY `item` (`itemtype`,`items_id`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `states_id` (`states_id`);

--
-- Índices de tabela `glpi_items_deviceprocessors`
--
ALTER TABLE `glpi_items_deviceprocessors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `computers_id` (`items_id`),
  ADD KEY `deviceprocessors_id` (`deviceprocessors_id`),
  ADD KEY `specificity` (`frequency`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `is_dynamic` (`is_dynamic`),
  ADD KEY `serial` (`serial`),
  ADD KEY `nbcores` (`nbcores`),
  ADD KEY `nbthreads` (`nbthreads`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `is_recursive` (`is_recursive`),
  ADD KEY `busID` (`busID`),
  ADD KEY `item` (`itemtype`,`items_id`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `states_id` (`states_id`);

--
-- Índices de tabela `glpi_items_devicesensors`
--
ALTER TABLE `glpi_items_devicesensors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `computers_id` (`items_id`),
  ADD KEY `devicesensors_id` (`devicesensors_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `is_dynamic` (`is_dynamic`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `is_recursive` (`is_recursive`),
  ADD KEY `serial` (`serial`),
  ADD KEY `item` (`itemtype`,`items_id`),
  ADD KEY `otherserial` (`otherserial`);

--
-- Índices de tabela `glpi_items_devicesimcards`
--
ALTER TABLE `glpi_items_devicesimcards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item` (`itemtype`,`items_id`),
  ADD KEY `devicesimcards_id` (`devicesimcards_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `is_dynamic` (`is_dynamic`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `is_recursive` (`is_recursive`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `states_id` (`states_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `lines_id` (`lines_id`);

--
-- Índices de tabela `glpi_items_devicesoundcards`
--
ALTER TABLE `glpi_items_devicesoundcards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `computers_id` (`items_id`),
  ADD KEY `devicesoundcards_id` (`devicesoundcards_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `is_dynamic` (`is_dynamic`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `is_recursive` (`is_recursive`),
  ADD KEY `serial` (`serial`),
  ADD KEY `busID` (`busID`),
  ADD KEY `item` (`itemtype`,`items_id`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `states_id` (`states_id`);

--
-- Índices de tabela `glpi_items_disks`
--
ALTER TABLE `glpi_items_disks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `device` (`device`),
  ADD KEY `mountpoint` (`mountpoint`),
  ADD KEY `totalsize` (`totalsize`),
  ADD KEY `freesize` (`freesize`),
  ADD KEY `itemtype` (`itemtype`),
  ADD KEY `items_id` (`items_id`),
  ADD KEY `item` (`itemtype`,`items_id`),
  ADD KEY `filesystems_id` (`filesystems_id`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `is_dynamic` (`is_dynamic`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Índices de tabela `glpi_items_enclosures`
--
ALTER TABLE `glpi_items_enclosures`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `item` (`itemtype`,`items_id`),
  ADD KEY `relation` (`enclosures_id`,`itemtype`,`items_id`);

--
-- Índices de tabela `glpi_items_operatingsystems`
--
ALTER TABLE `glpi_items_operatingsystems`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unicity` (`items_id`,`itemtype`,`operatingsystems_id`,`operatingsystemarchitectures_id`),
  ADD KEY `items_id` (`items_id`),
  ADD KEY `item` (`itemtype`,`items_id`),
  ADD KEY `operatingsystems_id` (`operatingsystems_id`),
  ADD KEY `operatingsystemservicepacks_id` (`operatingsystemservicepacks_id`),
  ADD KEY `operatingsystemversions_id` (`operatingsystemversions_id`),
  ADD KEY `operatingsystemarchitectures_id` (`operatingsystemarchitectures_id`),
  ADD KEY `operatingsystemkernelversions_id` (`operatingsystemkernelversions_id`),
  ADD KEY `operatingsystemeditions_id` (`operatingsystemeditions_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `is_dynamic` (`is_dynamic`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `is_recursive` (`is_recursive`);

--
-- Índices de tabela `glpi_items_problems`
--
ALTER TABLE `glpi_items_problems`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unicity` (`problems_id`,`itemtype`,`items_id`),
  ADD KEY `item` (`itemtype`,`items_id`);

--
-- Índices de tabela `glpi_items_projects`
--
ALTER TABLE `glpi_items_projects`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unicity` (`projects_id`,`itemtype`,`items_id`),
  ADD KEY `item` (`itemtype`,`items_id`);

--
-- Índices de tabela `glpi_items_racks`
--
ALTER TABLE `glpi_items_racks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `item` (`itemtype`,`items_id`,`is_reserved`),
  ADD KEY `relation` (`racks_id`,`itemtype`,`items_id`);

--
-- Índices de tabela `glpi_items_tickets`
--
ALTER TABLE `glpi_items_tickets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unicity` (`itemtype`,`items_id`,`tickets_id`),
  ADD KEY `tickets_id` (`tickets_id`);

--
-- Índices de tabela `glpi_itilcategories`
--
ALTER TABLE `glpi_itilcategories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `is_recursive` (`is_recursive`),
  ADD KEY `knowbaseitemcategories_id` (`knowbaseitemcategories_id`),
  ADD KEY `users_id` (`users_id`),
  ADD KEY `groups_id` (`groups_id`),
  ADD KEY `is_helpdeskvisible` (`is_helpdeskvisible`),
  ADD KEY `itilcategories_id` (`itilcategories_id`),
  ADD KEY `tickettemplates_id_incident` (`tickettemplates_id_incident`),
  ADD KEY `tickettemplates_id_demand` (`tickettemplates_id_demand`),
  ADD KEY `is_incident` (`is_incident`),
  ADD KEY `is_request` (`is_request`),
  ADD KEY `is_problem` (`is_problem`),
  ADD KEY `is_change` (`is_change`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Índices de tabela `glpi_itilsolutions`
--
ALTER TABLE `glpi_itilsolutions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `itemtype` (`itemtype`),
  ADD KEY `item_id` (`items_id`),
  ADD KEY `item` (`itemtype`,`items_id`),
  ADD KEY `solutiontypes_id` (`solutiontypes_id`),
  ADD KEY `users_id` (`users_id`),
  ADD KEY `users_id_editor` (`users_id_editor`),
  ADD KEY `users_id_approval` (`users_id_approval`),
  ADD KEY `status` (`status`),
  ADD KEY `ticketfollowups_id` (`ticketfollowups_id`);

--
-- Índices de tabela `glpi_knowbaseitemcategories`
--
ALTER TABLE `glpi_knowbaseitemcategories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unicity` (`entities_id`,`knowbaseitemcategories_id`,`name`),
  ADD KEY `name` (`name`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `is_recursive` (`is_recursive`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Índices de tabela `glpi_knowbaseitems`
--
ALTER TABLE `glpi_knowbaseitems`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_id` (`users_id`),
  ADD KEY `knowbaseitemcategories_id` (`knowbaseitemcategories_id`),
  ADD KEY `is_faq` (`is_faq`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `begin_date` (`begin_date`),
  ADD KEY `end_date` (`end_date`);
ALTER TABLE `glpi_knowbaseitems` ADD FULLTEXT KEY `fulltext` (`name`,`answer`);
ALTER TABLE `glpi_knowbaseitems` ADD FULLTEXT KEY `name` (`name`);
ALTER TABLE `glpi_knowbaseitems` ADD FULLTEXT KEY `answer` (`answer`);

--
-- Índices de tabela `glpi_knowbaseitems_comments`
--
ALTER TABLE `glpi_knowbaseitems_comments`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `glpi_knowbaseitems_items`
--
ALTER TABLE `glpi_knowbaseitems_items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unicity` (`itemtype`,`items_id`,`knowbaseitems_id`),
  ADD KEY `itemtype` (`itemtype`),
  ADD KEY `item_id` (`items_id`),
  ADD KEY `item` (`itemtype`,`items_id`);

--
-- Índices de tabela `glpi_knowbaseitems_profiles`
--
ALTER TABLE `glpi_knowbaseitems_profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `knowbaseitems_id` (`knowbaseitems_id`),
  ADD KEY `profiles_id` (`profiles_id`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `is_recursive` (`is_recursive`);

--
-- Índices de tabela `glpi_knowbaseitems_revisions`
--
ALTER TABLE `glpi_knowbaseitems_revisions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unicity` (`knowbaseitems_id`,`revision`,`language`),
  ADD KEY `revision` (`revision`);

--
-- Índices de tabela `glpi_knowbaseitems_users`
--
ALTER TABLE `glpi_knowbaseitems_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `knowbaseitems_id` (`knowbaseitems_id`),
  ADD KEY `users_id` (`users_id`);

--
-- Índices de tabela `glpi_knowbaseitemtranslations`
--
ALTER TABLE `glpi_knowbaseitemtranslations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item` (`knowbaseitems_id`,`language`),
  ADD KEY `users_id` (`users_id`);
ALTER TABLE `glpi_knowbaseitemtranslations` ADD FULLTEXT KEY `fulltext` (`name`,`answer`);
ALTER TABLE `glpi_knowbaseitemtranslations` ADD FULLTEXT KEY `name` (`name`);
ALTER TABLE `glpi_knowbaseitemtranslations` ADD FULLTEXT KEY `answer` (`answer`);

--
-- Índices de tabela `glpi_lineoperators`
--
ALTER TABLE `glpi_lineoperators`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unicity` (`mcc`,`mnc`),
  ADD KEY `name` (`name`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `is_recursive` (`is_recursive`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Índices de tabela `glpi_lines`
--
ALTER TABLE `glpi_lines`
  ADD PRIMARY KEY (`id`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `is_recursive` (`is_recursive`),
  ADD KEY `users_id` (`users_id`),
  ADD KEY `lineoperators_id` (`lineoperators_id`);

--
-- Índices de tabela `glpi_linetypes`
--
ALTER TABLE `glpi_linetypes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Índices de tabela `glpi_links`
--
ALTER TABLE `glpi_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Índices de tabela `glpi_links_itemtypes`
--
ALTER TABLE `glpi_links_itemtypes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unicity` (`itemtype`,`links_id`),
  ADD KEY `links_id` (`links_id`);

--
-- Índices de tabela `glpi_locations`
--
ALTER TABLE `glpi_locations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unicity` (`entities_id`,`locations_id`,`name`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `name` (`name`),
  ADD KEY `is_recursive` (`is_recursive`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Índices de tabela `glpi_logs`
--
ALTER TABLE `glpi_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `itemtype_link` (`itemtype_link`),
  ADD KEY `item` (`itemtype`,`items_id`),
  ADD KEY `id_search_option` (`id_search_option`);

--
-- Índices de tabela `glpi_mailcollectors`
--
ALTER TABLE `glpi_mailcollectors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `is_active` (`is_active`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Índices de tabela `glpi_manufacturers`
--
ALTER TABLE `glpi_manufacturers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Índices de tabela `glpi_monitormodels`
--
ALTER TABLE `glpi_monitormodels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`),
  ADD KEY `product_number` (`product_number`);

--
-- Índices de tabela `glpi_monitors`
--
ALTER TABLE `glpi_monitors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `is_template` (`is_template`),
  ADD KEY `is_global` (`is_global`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `groups_id` (`groups_id`),
  ADD KEY `users_id` (`users_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `monitormodels_id` (`monitormodels_id`),
  ADD KEY `states_id` (`states_id`),
  ADD KEY `users_id_tech` (`users_id_tech`),
  ADD KEY `monitortypes_id` (`monitortypes_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `groups_id_tech` (`groups_id_tech`),
  ADD KEY `is_dynamic` (`is_dynamic`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `date_creation` (`date_creation`),
  ADD KEY `is_recursive` (`is_recursive`);

--
-- Índices de tabela `glpi_monitortypes`
--
ALTER TABLE `glpi_monitortypes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Índices de tabela `glpi_netpoints`
--
ALTER TABLE `glpi_netpoints`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `complete` (`entities_id`,`locations_id`,`name`),
  ADD KEY `location_name` (`locations_id`,`name`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Índices de tabela `glpi_networkaliases`
--
ALTER TABLE `glpi_networkaliases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `name` (`name`),
  ADD KEY `networknames_id` (`networknames_id`);

--
-- Índices de tabela `glpi_networkequipmentmodels`
--
ALTER TABLE `glpi_networkequipmentmodels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`),
  ADD KEY `product_number` (`product_number`);

--
-- Índices de tabela `glpi_networkequipments`
--
ALTER TABLE `glpi_networkequipments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `is_template` (`is_template`),
  ADD KEY `domains_id` (`domains_id`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `groups_id` (`groups_id`),
  ADD KEY `users_id` (`users_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `networkequipmentmodels_id` (`networkequipmentmodels_id`),
  ADD KEY `networks_id` (`networks_id`),
  ADD KEY `states_id` (`states_id`),
  ADD KEY `users_id_tech` (`users_id_tech`),
  ADD KEY `networkequipmenttypes_id` (`networkequipmenttypes_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `groups_id_tech` (`groups_id_tech`),
  ADD KEY `is_dynamic` (`is_dynamic`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Índices de tabela `glpi_networkequipmenttypes`
--
ALTER TABLE `glpi_networkequipmenttypes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Índices de tabela `glpi_networkinterfaces`
--
ALTER TABLE `glpi_networkinterfaces`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Índices de tabela `glpi_networknames`
--
ALTER TABLE `glpi_networknames`
  ADD PRIMARY KEY (`id`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `FQDN` (`name`,`fqdns_id`),
  ADD KEY `name` (`name`),
  ADD KEY `fqdns_id` (`fqdns_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `is_dynamic` (`is_dynamic`),
  ADD KEY `item` (`itemtype`,`items_id`,`is_deleted`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Índices de tabela `glpi_networkportaggregates`
--
ALTER TABLE `glpi_networkportaggregates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `networkports_id` (`networkports_id`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Índices de tabela `glpi_networkportaliases`
--
ALTER TABLE `glpi_networkportaliases`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `networkports_id` (`networkports_id`),
  ADD KEY `networkports_id_alias` (`networkports_id_alias`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Índices de tabela `glpi_networkportdialups`
--
ALTER TABLE `glpi_networkportdialups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `networkports_id` (`networkports_id`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Índices de tabela `glpi_networkportethernets`
--
ALTER TABLE `glpi_networkportethernets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `networkports_id` (`networkports_id`),
  ADD KEY `card` (`items_devicenetworkcards_id`),
  ADD KEY `netpoint` (`netpoints_id`),
  ADD KEY `type` (`type`),
  ADD KEY `speed` (`speed`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Índices de tabela `glpi_networkportfiberchannels`
--
ALTER TABLE `glpi_networkportfiberchannels`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `networkports_id` (`networkports_id`),
  ADD KEY `card` (`items_devicenetworkcards_id`),
  ADD KEY `netpoint` (`netpoints_id`),
  ADD KEY `wwn` (`wwn`),
  ADD KEY `speed` (`speed`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Índices de tabela `glpi_networkportlocals`
--
ALTER TABLE `glpi_networkportlocals`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `networkports_id` (`networkports_id`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Índices de tabela `glpi_networkports`
--
ALTER TABLE `glpi_networkports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `on_device` (`items_id`,`itemtype`),
  ADD KEY `item` (`itemtype`,`items_id`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `is_recursive` (`is_recursive`),
  ADD KEY `mac` (`mac`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `is_dynamic` (`is_dynamic`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Índices de tabela `glpi_networkports_networkports`
--
ALTER TABLE `glpi_networkports_networkports`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unicity` (`networkports_id_1`,`networkports_id_2`),
  ADD KEY `networkports_id_2` (`networkports_id_2`);

--
-- Índices de tabela `glpi_networkports_vlans`
--
ALTER TABLE `glpi_networkports_vlans`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unicity` (`networkports_id`,`vlans_id`),
  ADD KEY `vlans_id` (`vlans_id`);

--
-- Índices de tabela `glpi_networkportwifis`
--
ALTER TABLE `glpi_networkportwifis`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `networkports_id` (`networkports_id`),
  ADD KEY `card` (`items_devicenetworkcards_id`),
  ADD KEY `essid` (`wifinetworks_id`),
  ADD KEY `version` (`version`),
  ADD KEY `mode` (`mode`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Índices de tabela `glpi_networks`
--
ALTER TABLE `glpi_networks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Índices de tabela `glpi_notepads`
--
ALTER TABLE `glpi_notepads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item` (`itemtype`,`items_id`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date` (`date`),
  ADD KEY `users_id_lastupdater` (`users_id_lastupdater`),
  ADD KEY `users_id` (`users_id`);

--
-- Índices de tabela `glpi_notifications`
--
ALTER TABLE `glpi_notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `itemtype` (`itemtype`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `is_active` (`is_active`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `is_recursive` (`is_recursive`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Índices de tabela `glpi_notifications_notificationtemplates`
--
ALTER TABLE `glpi_notifications_notificationtemplates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unicity` (`notifications_id`,`mode`,`notificationtemplates_id`),
  ADD KEY `notifications_id` (`notifications_id`),
  ADD KEY `notificationtemplates_id` (`notificationtemplates_id`),
  ADD KEY `mode` (`mode`);

--
-- Índices de tabela `glpi_notificationtargets`
--
ALTER TABLE `glpi_notificationtargets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `items` (`type`,`items_id`),
  ADD KEY `notifications_id` (`notifications_id`);

--
-- Índices de tabela `glpi_notificationtemplates`
--
ALTER TABLE `glpi_notificationtemplates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `itemtype` (`itemtype`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `name` (`name`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Índices de tabela `glpi_notificationtemplatetranslations`
--
ALTER TABLE `glpi_notificationtemplatetranslations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notificationtemplates_id` (`notificationtemplates_id`);

--
-- Índices de tabela `glpi_notimportedemails`
--
ALTER TABLE `glpi_notimportedemails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_id` (`users_id`),
  ADD KEY `mailcollectors_id` (`mailcollectors_id`);

--
-- Índices de tabela `glpi_objectlocks`
--
ALTER TABLE `glpi_objectlocks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `item` (`itemtype`,`items_id`);

--
-- Índices de tabela `glpi_olalevelactions`
--
ALTER TABLE `glpi_olalevelactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `olalevels_id` (`olalevels_id`);

--
-- Índices de tabela `glpi_olalevelcriterias`
--
ALTER TABLE `glpi_olalevelcriterias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `olalevels_id` (`olalevels_id`),
  ADD KEY `condition` (`condition`);

--
-- Índices de tabela `glpi_olalevels`
--
ALTER TABLE `glpi_olalevels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `is_active` (`is_active`),
  ADD KEY `olas_id` (`olas_id`);

--
-- Índices de tabela `glpi_olalevels_tickets`
--
ALTER TABLE `glpi_olalevels_tickets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unicity` (`tickets_id`,`olalevels_id`),
  ADD KEY `tickets_id` (`tickets_id`),
  ADD KEY `olalevels_id` (`olalevels_id`);

--
-- Índices de tabela `glpi_olas`
--
ALTER TABLE `glpi_olas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`),
  ADD KEY `calendars_id` (`calendars_id`),
  ADD KEY `slms_id` (`slms_id`);

--
-- Índices de tabela `glpi_operatingsystemarchitectures`
--
ALTER TABLE `glpi_operatingsystemarchitectures`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Índices de tabela `glpi_operatingsystemeditions`
--
ALTER TABLE `glpi_operatingsystemeditions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Índices de tabela `glpi_operatingsystemkernels`
--
ALTER TABLE `glpi_operatingsystemkernels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Índices de tabela `glpi_operatingsystemkernelversions`
--
ALTER TABLE `glpi_operatingsystemkernelversions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `operatingsystemkernels_id` (`operatingsystemkernels_id`);

--
-- Índices de tabela `glpi_operatingsystems`
--
ALTER TABLE `glpi_operatingsystems`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Índices de tabela `glpi_operatingsystemservicepacks`
--
ALTER TABLE `glpi_operatingsystemservicepacks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Índices de tabela `glpi_operatingsystemversions`
--
ALTER TABLE `glpi_operatingsystemversions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Índices de tabela `glpi_pdumodels`
--
ALTER TABLE `glpi_pdumodels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `is_rackable` (`is_rackable`),
  ADD KEY `product_number` (`product_number`);

--
-- Índices de tabela `glpi_pdus`
--
ALTER TABLE `glpi_pdus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `is_recursive` (`is_recursive`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `pdumodels_id` (`pdumodels_id`),
  ADD KEY `users_id_tech` (`users_id_tech`),
  ADD KEY `group_id_tech` (`groups_id_tech`),
  ADD KEY `is_template` (`is_template`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `states_id` (`states_id`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `pdutypes_id` (`pdutypes_id`);

--
-- Índices de tabela `glpi_pdus_plugs`
--
ALTER TABLE `glpi_pdus_plugs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `plugs_id` (`plugs_id`),
  ADD KEY `pdus_id` (`pdus_id`);

--
-- Índices de tabela `glpi_pdus_racks`
--
ALTER TABLE `glpi_pdus_racks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `racks_id` (`racks_id`),
  ADD KEY `pdus_id` (`pdus_id`);

--
-- Índices de tabela `glpi_pdutypes`
--
ALTER TABLE `glpi_pdutypes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `is_recursive` (`is_recursive`),
  ADD KEY `name` (`name`),
  ADD KEY `date_creation` (`date_creation`),
  ADD KEY `date_mod` (`date_mod`);

--
-- Índices de tabela `glpi_peripheralmodels`
--
ALTER TABLE `glpi_peripheralmodels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`),
  ADD KEY `product_number` (`product_number`);

--
-- Índices de tabela `glpi_peripherals`
--
ALTER TABLE `glpi_peripherals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `is_template` (`is_template`),
  ADD KEY `is_global` (`is_global`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `groups_id` (`groups_id`),
  ADD KEY `users_id` (`users_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `peripheralmodels_id` (`peripheralmodels_id`),
  ADD KEY `states_id` (`states_id`),
  ADD KEY `users_id_tech` (`users_id_tech`),
  ADD KEY `peripheraltypes_id` (`peripheraltypes_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `groups_id_tech` (`groups_id_tech`),
  ADD KEY `is_dynamic` (`is_dynamic`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `date_creation` (`date_creation`),
  ADD KEY `is_recursive` (`is_recursive`);

--
-- Índices de tabela `glpi_peripheraltypes`
--
ALTER TABLE `glpi_peripheraltypes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Índices de tabela `glpi_phonemodels`
--
ALTER TABLE `glpi_phonemodels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`),
  ADD KEY `product_number` (`product_number`);

--
-- Índices de tabela `glpi_phonepowersupplies`
--
ALTER TABLE `glpi_phonepowersupplies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Índices de tabela `glpi_phones`
--
ALTER TABLE `glpi_phones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `is_template` (`is_template`),
  ADD KEY `is_global` (`is_global`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `groups_id` (`groups_id`),
  ADD KEY `users_id` (`users_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `phonemodels_id` (`phonemodels_id`),
  ADD KEY `phonepowersupplies_id` (`phonepowersupplies_id`),
  ADD KEY `states_id` (`states_id`),
  ADD KEY `users_id_tech` (`users_id_tech`),
  ADD KEY `phonetypes_id` (`phonetypes_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `groups_id_tech` (`groups_id_tech`),
  ADD KEY `is_dynamic` (`is_dynamic`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `date_creation` (`date_creation`),
  ADD KEY `is_recursive` (`is_recursive`);

--
-- Índices de tabela `glpi_phonetypes`
--
ALTER TABLE `glpi_phonetypes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Índices de tabela `glpi_planningrecalls`
--
ALTER TABLE `glpi_planningrecalls`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unicity` (`itemtype`,`items_id`,`users_id`),
  ADD KEY `users_id` (`users_id`),
  ADD KEY `before_time` (`before_time`),
  ADD KEY `when` (`when`);

--
-- Índices de tabela `glpi_plugins`
--
ALTER TABLE `glpi_plugins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unicity` (`directory`),
  ADD KEY `state` (`state`);

--
-- Índices de tabela `glpi_plugin_dashboard_config`
--
ALTER TABLE `glpi_plugin_dashboard_config`
  ADD PRIMARY KEY (`id`,`name`,`value`,`users_id`),
  ADD UNIQUE KEY `name` (`name`,`users_id`),
  ADD KEY `name_2` (`name`,`users_id`);

--
-- Índices de tabela `glpi_plugin_dashboard_count`
--
ALTER TABLE `glpi_plugin_dashboard_count`
  ADD PRIMARY KEY (`type`,`id`);

--
-- Índices de tabela `glpi_plugin_dashboard_map`
--
ALTER TABLE `glpi_plugin_dashboard_map`
  ADD PRIMARY KEY (`id`,`entities_id`),
  ADD UNIQUE KEY `location` (`location`);

--
-- Índices de tabela `glpi_plugs`
--
ALTER TABLE `glpi_plugs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Índices de tabela `glpi_printermodels`
--
ALTER TABLE `glpi_printermodels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`),
  ADD KEY `product_number` (`product_number`);

--
-- Índices de tabela `glpi_printers`
--
ALTER TABLE `glpi_printers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `is_template` (`is_template`),
  ADD KEY `is_global` (`is_global`),
  ADD KEY `domains_id` (`domains_id`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `groups_id` (`groups_id`),
  ADD KEY `users_id` (`users_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `printermodels_id` (`printermodels_id`),
  ADD KEY `networks_id` (`networks_id`),
  ADD KEY `states_id` (`states_id`),
  ADD KEY `users_id_tech` (`users_id_tech`),
  ADD KEY `printertypes_id` (`printertypes_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `groups_id_tech` (`groups_id_tech`),
  ADD KEY `last_pages_counter` (`last_pages_counter`),
  ADD KEY `is_dynamic` (`is_dynamic`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Índices de tabela `glpi_printertypes`
--
ALTER TABLE `glpi_printertypes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Índices de tabela `glpi_problemcosts`
--
ALTER TABLE `glpi_problemcosts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `problems_id` (`problems_id`),
  ADD KEY `begin_date` (`begin_date`),
  ADD KEY `end_date` (`end_date`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `budgets_id` (`budgets_id`);

--
-- Índices de tabela `glpi_problems`
--
ALTER TABLE `glpi_problems`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `is_recursive` (`is_recursive`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `date` (`date`),
  ADD KEY `closedate` (`closedate`),
  ADD KEY `status` (`status`),
  ADD KEY `priority` (`priority`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `itilcategories_id` (`itilcategories_id`),
  ADD KEY `users_id_recipient` (`users_id_recipient`),
  ADD KEY `solvedate` (`solvedate`),
  ADD KEY `urgency` (`urgency`),
  ADD KEY `impact` (`impact`),
  ADD KEY `time_to_resolve` (`time_to_resolve`),
  ADD KEY `users_id_lastupdater` (`users_id_lastupdater`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Índices de tabela `glpi_problems_suppliers`
--
ALTER TABLE `glpi_problems_suppliers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unicity` (`problems_id`,`type`,`suppliers_id`),
  ADD KEY `group` (`suppliers_id`,`type`);

--
-- Índices de tabela `glpi_problems_tickets`
--
ALTER TABLE `glpi_problems_tickets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unicity` (`problems_id`,`tickets_id`),
  ADD KEY `tickets_id` (`tickets_id`);

--
-- Índices de tabela `glpi_problems_users`
--
ALTER TABLE `glpi_problems_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unicity` (`problems_id`,`type`,`users_id`,`alternative_email`),
  ADD KEY `user` (`users_id`,`type`);

--
-- Índices de tabela `glpi_problemtasks`
--
ALTER TABLE `glpi_problemtasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `problems_id` (`problems_id`),
  ADD KEY `users_id` (`users_id`),
  ADD KEY `users_id_editor` (`users_id_editor`),
  ADD KEY `users_id_tech` (`users_id_tech`),
  ADD KEY `groups_id_tech` (`groups_id_tech`),
  ADD KEY `date` (`date`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`),
  ADD KEY `begin` (`begin`),
  ADD KEY `end` (`end`),
  ADD KEY `state` (`state`),
  ADD KEY `taskcategories_id` (`taskcategories_id`),
  ADD KEY `tasktemplates_id` (`tasktemplates_id`);

--
-- Índices de tabela `glpi_profilerights`
--
ALTER TABLE `glpi_profilerights`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unicity` (`profiles_id`,`name`);

--
-- Índices de tabela `glpi_profiles`
--
ALTER TABLE `glpi_profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `interface` (`interface`),
  ADD KEY `is_default` (`is_default`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Índices de tabela `glpi_profiles_reminders`
--
ALTER TABLE `glpi_profiles_reminders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reminders_id` (`reminders_id`),
  ADD KEY `profiles_id` (`profiles_id`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `is_recursive` (`is_recursive`);

--
-- Índices de tabela `glpi_profiles_rssfeeds`
--
ALTER TABLE `glpi_profiles_rssfeeds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rssfeeds_id` (`rssfeeds_id`),
  ADD KEY `profiles_id` (`profiles_id`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `is_recursive` (`is_recursive`);

--
-- Índices de tabela `glpi_profiles_users`
--
ALTER TABLE `glpi_profiles_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `profiles_id` (`profiles_id`),
  ADD KEY `users_id` (`users_id`),
  ADD KEY `is_recursive` (`is_recursive`),
  ADD KEY `is_dynamic` (`is_dynamic`);

--
-- Índices de tabela `glpi_projectcosts`
--
ALTER TABLE `glpi_projectcosts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `projects_id` (`projects_id`),
  ADD KEY `begin_date` (`begin_date`),
  ADD KEY `end_date` (`end_date`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `is_recursive` (`is_recursive`),
  ADD KEY `budgets_id` (`budgets_id`);

--
-- Índices de tabela `glpi_projects`
--
ALTER TABLE `glpi_projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `code` (`code`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `is_recursive` (`is_recursive`),
  ADD KEY `projects_id` (`projects_id`),
  ADD KEY `projectstates_id` (`projectstates_id`),
  ADD KEY `projecttypes_id` (`projecttypes_id`),
  ADD KEY `priority` (`priority`),
  ADD KEY `date` (`date`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `users_id` (`users_id`),
  ADD KEY `groups_id` (`groups_id`),
  ADD KEY `plan_start_date` (`plan_start_date`),
  ADD KEY `plan_end_date` (`plan_end_date`),
  ADD KEY `real_start_date` (`real_start_date`),
  ADD KEY `real_end_date` (`real_end_date`),
  ADD KEY `percent_done` (`percent_done`),
  ADD KEY `show_on_global_gantt` (`show_on_global_gantt`),
  ADD KEY `date_creation` (`date_creation`),
  ADD KEY `projecttemplates_id` (`projecttemplates_id`),
  ADD KEY `is_template` (`is_template`);

--
-- Índices de tabela `glpi_projectstates`
--
ALTER TABLE `glpi_projectstates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `is_finished` (`is_finished`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Índices de tabela `glpi_projecttasks`
--
ALTER TABLE `glpi_projecttasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `is_recursive` (`is_recursive`),
  ADD KEY `projects_id` (`projects_id`),
  ADD KEY `projecttasks_id` (`projecttasks_id`),
  ADD KEY `date` (`date`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `users_id` (`users_id`),
  ADD KEY `plan_start_date` (`plan_start_date`),
  ADD KEY `plan_end_date` (`plan_end_date`),
  ADD KEY `real_start_date` (`real_start_date`),
  ADD KEY `real_end_date` (`real_end_date`),
  ADD KEY `percent_done` (`percent_done`),
  ADD KEY `projectstates_id` (`projectstates_id`),
  ADD KEY `projecttasktypes_id` (`projecttasktypes_id`),
  ADD KEY `projecttasktemplates_id` (`projecttasktemplates_id`),
  ADD KEY `is_template` (`is_template`),
  ADD KEY `is_milestone` (`is_milestone`);

--
-- Índices de tabela `glpi_projecttasks_tickets`
--
ALTER TABLE `glpi_projecttasks_tickets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unicity` (`tickets_id`,`projecttasks_id`),
  ADD KEY `projects_id` (`projecttasks_id`);

--
-- Índices de tabela `glpi_projecttaskteams`
--
ALTER TABLE `glpi_projecttaskteams`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unicity` (`projecttasks_id`,`itemtype`,`items_id`),
  ADD KEY `item` (`itemtype`,`items_id`);

--
-- Índices de tabela `glpi_projecttasktemplates`
--
ALTER TABLE `glpi_projecttasktemplates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `is_recursive` (`is_recursive`),
  ADD KEY `projects_id` (`projects_id`),
  ADD KEY `projecttasks_id` (`projecttasks_id`),
  ADD KEY `date_creation` (`date_creation`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `users_id` (`users_id`),
  ADD KEY `plan_start_date` (`plan_start_date`),
  ADD KEY `plan_end_date` (`plan_end_date`),
  ADD KEY `real_start_date` (`real_start_date`),
  ADD KEY `real_end_date` (`real_end_date`),
  ADD KEY `percent_done` (`percent_done`),
  ADD KEY `projectstates_id` (`projectstates_id`),
  ADD KEY `projecttasktypes_id` (`projecttasktypes_id`),
  ADD KEY `is_milestone` (`is_milestone`);

--
-- Índices de tabela `glpi_projecttasktypes`
--
ALTER TABLE `glpi_projecttasktypes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Índices de tabela `glpi_projectteams`
--
ALTER TABLE `glpi_projectteams`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unicity` (`projects_id`,`itemtype`,`items_id`),
  ADD KEY `item` (`itemtype`,`items_id`);

--
-- Índices de tabela `glpi_projecttypes`
--
ALTER TABLE `glpi_projecttypes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Índices de tabela `glpi_queuednotifications`
--
ALTER TABLE `glpi_queuednotifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item` (`itemtype`,`items_id`,`notificationtemplates_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `sent_try` (`sent_try`),
  ADD KEY `create_time` (`create_time`),
  ADD KEY `send_time` (`send_time`),
  ADD KEY `sent_time` (`sent_time`),
  ADD KEY `mode` (`mode`);

--
-- Índices de tabela `glpi_rackmodels`
--
ALTER TABLE `glpi_rackmodels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `product_number` (`product_number`);

--
-- Índices de tabela `glpi_racks`
--
ALTER TABLE `glpi_racks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `is_recursive` (`is_recursive`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `rackmodels_id` (`rackmodels_id`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `racktypes_id` (`racktypes_id`),
  ADD KEY `states_id` (`states_id`),
  ADD KEY `users_id_tech` (`users_id_tech`),
  ADD KEY `group_id_tech` (`groups_id_tech`),
  ADD KEY `is_template` (`is_template`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `dcrooms_id` (`dcrooms_id`);

--
-- Índices de tabela `glpi_racktypes`
--
ALTER TABLE `glpi_racktypes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `is_recursive` (`is_recursive`),
  ADD KEY `name` (`name`),
  ADD KEY `date_creation` (`date_creation`),
  ADD KEY `date_mod` (`date_mod`);

--
-- Índices de tabela `glpi_registeredids`
--
ALTER TABLE `glpi_registeredids`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `item` (`items_id`,`itemtype`),
  ADD KEY `device_type` (`device_type`);

--
-- Índices de tabela `glpi_reminders`
--
ALTER TABLE `glpi_reminders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `date` (`date`),
  ADD KEY `begin` (`begin`),
  ADD KEY `end` (`end`),
  ADD KEY `users_id` (`users_id`),
  ADD KEY `is_planned` (`is_planned`),
  ADD KEY `state` (`state`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Índices de tabela `glpi_reminders_users`
--
ALTER TABLE `glpi_reminders_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reminders_id` (`reminders_id`),
  ADD KEY `users_id` (`users_id`);

--
-- Índices de tabela `glpi_requesttypes`
--
ALTER TABLE `glpi_requesttypes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `is_helpdesk_default` (`is_helpdesk_default`),
  ADD KEY `is_followup_default` (`is_followup_default`),
  ADD KEY `is_mail_default` (`is_mail_default`),
  ADD KEY `is_mailfollowup_default` (`is_mailfollowup_default`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`),
  ADD KEY `is_active` (`is_active`),
  ADD KEY `is_ticketheader` (`is_ticketheader`),
  ADD KEY `is_ticketfollowup` (`is_ticketfollowup`);

--
-- Índices de tabela `glpi_reservationitems`
--
ALTER TABLE `glpi_reservationitems`
  ADD PRIMARY KEY (`id`),
  ADD KEY `is_active` (`is_active`),
  ADD KEY `item` (`itemtype`,`items_id`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `is_recursive` (`is_recursive`),
  ADD KEY `is_deleted` (`is_deleted`);

--
-- Índices de tabela `glpi_reservations`
--
ALTER TABLE `glpi_reservations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `begin` (`begin`),
  ADD KEY `end` (`end`),
  ADD KEY `reservationitems_id` (`reservationitems_id`),
  ADD KEY `users_id` (`users_id`),
  ADD KEY `resagroup` (`reservationitems_id`,`group`);

--
-- Índices de tabela `glpi_rssfeeds`
--
ALTER TABLE `glpi_rssfeeds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `users_id` (`users_id`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `have_error` (`have_error`),
  ADD KEY `is_active` (`is_active`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Índices de tabela `glpi_rssfeeds_users`
--
ALTER TABLE `glpi_rssfeeds_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rssfeeds_id` (`rssfeeds_id`),
  ADD KEY `users_id` (`users_id`);

--
-- Índices de tabela `glpi_ruleactions`
--
ALTER TABLE `glpi_ruleactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rules_id` (`rules_id`),
  ADD KEY `field_value` (`field`(50),`value`(50));

--
-- Índices de tabela `glpi_rulecriterias`
--
ALTER TABLE `glpi_rulecriterias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rules_id` (`rules_id`),
  ADD KEY `condition` (`condition`);

--
-- Índices de tabela `glpi_rulerightparameters`
--
ALTER TABLE `glpi_rulerightparameters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Índices de tabela `glpi_rules`
--
ALTER TABLE `glpi_rules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `is_active` (`is_active`),
  ADD KEY `sub_type` (`sub_type`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `is_recursive` (`is_recursive`),
  ADD KEY `condition` (`condition`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Índices de tabela `glpi_savedsearches`
--
ALTER TABLE `glpi_savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type` (`type`),
  ADD KEY `itemtype` (`itemtype`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `users_id` (`users_id`),
  ADD KEY `is_private` (`is_private`),
  ADD KEY `is_recursive` (`is_recursive`),
  ADD KEY `last_execution_time` (`last_execution_time`),
  ADD KEY `last_execution_date` (`last_execution_date`),
  ADD KEY `do_count` (`do_count`);

--
-- Índices de tabela `glpi_savedsearches_alerts`
--
ALTER TABLE `glpi_savedsearches_alerts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unicity` (`savedsearches_id`,`operator`,`value`),
  ADD KEY `name` (`name`),
  ADD KEY `is_active` (`is_active`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Índices de tabela `glpi_savedsearches_users`
--
ALTER TABLE `glpi_savedsearches_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unicity` (`users_id`,`itemtype`),
  ADD KEY `savedsearches_id` (`savedsearches_id`);

--
-- Índices de tabela `glpi_slalevelactions`
--
ALTER TABLE `glpi_slalevelactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slalevels_id` (`slalevels_id`);

--
-- Índices de tabela `glpi_slalevelcriterias`
--
ALTER TABLE `glpi_slalevelcriterias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slalevels_id` (`slalevels_id`),
  ADD KEY `condition` (`condition`);

--
-- Índices de tabela `glpi_slalevels`
--
ALTER TABLE `glpi_slalevels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `is_active` (`is_active`),
  ADD KEY `slas_id` (`slas_id`);

--
-- Índices de tabela `glpi_slalevels_tickets`
--
ALTER TABLE `glpi_slalevels_tickets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unicity` (`tickets_id`,`slalevels_id`),
  ADD KEY `tickets_id` (`tickets_id`),
  ADD KEY `slalevels_id` (`slalevels_id`);

--
-- Índices de tabela `glpi_slas`
--
ALTER TABLE `glpi_slas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`),
  ADD KEY `calendars_id` (`calendars_id`),
  ADD KEY `slms_id` (`slms_id`);

--
-- Índices de tabela `glpi_slms`
--
ALTER TABLE `glpi_slms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `is_recursive` (`is_recursive`),
  ADD KEY `calendars_id` (`calendars_id`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Índices de tabela `glpi_softwarecategories`
--
ALTER TABLE `glpi_softwarecategories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `softwarecategories_id` (`softwarecategories_id`);

--
-- Índices de tabela `glpi_softwarelicenses`
--
ALTER TABLE `glpi_softwarelicenses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `is_template` (`is_template`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `expire` (`expire`),
  ADD KEY `softwareversions_id_buy` (`softwareversions_id_buy`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `softwarelicensetypes_id` (`softwarelicensetypes_id`),
  ADD KEY `softwareversions_id_use` (`softwareversions_id_use`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `softwares_id_expire` (`softwares_id`,`expire`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `users_id_tech` (`users_id_tech`),
  ADD KEY `users_id` (`users_id`),
  ADD KEY `groups_id_tech` (`groups_id_tech`),
  ADD KEY `groups_id` (`groups_id`),
  ADD KEY `is_helpdesk_visible` (`is_helpdesk_visible`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `date_creation` (`date_creation`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `states_id` (`states_id`);

--
-- Índices de tabela `glpi_softwarelicensetypes`
--
ALTER TABLE `glpi_softwarelicensetypes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`),
  ADD KEY `softwarelicensetypes_id` (`softwarelicensetypes_id`);

--
-- Índices de tabela `glpi_softwares`
--
ALTER TABLE `glpi_softwares`
  ADD PRIMARY KEY (`id`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `name` (`name`),
  ADD KEY `is_template` (`is_template`),
  ADD KEY `is_update` (`is_update`),
  ADD KEY `softwarecategories_id` (`softwarecategories_id`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `groups_id` (`groups_id`),
  ADD KEY `users_id` (`users_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `users_id_tech` (`users_id_tech`),
  ADD KEY `softwares_id` (`softwares_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `is_helpdesk_visible` (`is_helpdesk_visible`),
  ADD KEY `groups_id_tech` (`groups_id_tech`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Índices de tabela `glpi_softwareversions`
--
ALTER TABLE `glpi_softwareversions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `softwares_id` (`softwares_id`),
  ADD KEY `states_id` (`states_id`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `is_recursive` (`is_recursive`),
  ADD KEY `operatingsystems_id` (`operatingsystems_id`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Índices de tabela `glpi_solutiontemplates`
--
ALTER TABLE `glpi_solutiontemplates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `is_recursive` (`is_recursive`),
  ADD KEY `solutiontypes_id` (`solutiontypes_id`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Índices de tabela `glpi_solutiontypes`
--
ALTER TABLE `glpi_solutiontypes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `is_recursive` (`is_recursive`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Índices de tabela `glpi_ssovariables`
--
ALTER TABLE `glpi_ssovariables`
  ADD PRIMARY KEY (`id`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Índices de tabela `glpi_states`
--
ALTER TABLE `glpi_states`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unicity` (`states_id`,`name`),
  ADD KEY `name` (`name`),
  ADD KEY `is_visible_computer` (`is_visible_computer`),
  ADD KEY `is_visible_monitor` (`is_visible_monitor`),
  ADD KEY `is_visible_networkequipment` (`is_visible_networkequipment`),
  ADD KEY `is_visible_peripheral` (`is_visible_peripheral`),
  ADD KEY `is_visible_phone` (`is_visible_phone`),
  ADD KEY `is_visible_printer` (`is_visible_printer`),
  ADD KEY `is_visible_softwareversion` (`is_visible_softwareversion`),
  ADD KEY `is_visible_softwarelicense` (`is_visible_softwarelicense`),
  ADD KEY `is_visible_line` (`is_visible_line`),
  ADD KEY `is_visible_certificate` (`is_visible_certificate`),
  ADD KEY `is_visible_rack` (`is_visible_rack`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Índices de tabela `glpi_suppliers`
--
ALTER TABLE `glpi_suppliers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `suppliertypes_id` (`suppliertypes_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Índices de tabela `glpi_suppliers_tickets`
--
ALTER TABLE `glpi_suppliers_tickets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unicity` (`tickets_id`,`type`,`suppliers_id`),
  ADD KEY `group` (`suppliers_id`,`type`);

--
-- Índices de tabela `glpi_suppliertypes`
--
ALTER TABLE `glpi_suppliertypes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Índices de tabela `glpi_taskcategories`
--
ALTER TABLE `glpi_taskcategories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `taskcategories_id` (`taskcategories_id`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `is_recursive` (`is_recursive`),
  ADD KEY `is_active` (`is_active`),
  ADD KEY `is_helpdeskvisible` (`is_helpdeskvisible`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`),
  ADD KEY `knowbaseitemcategories_id` (`knowbaseitemcategories_id`);

--
-- Índices de tabela `glpi_tasktemplates`
--
ALTER TABLE `glpi_tasktemplates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `is_recursive` (`is_recursive`),
  ADD KEY `taskcategories_id` (`taskcategories_id`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`),
  ADD KEY `is_private` (`is_private`),
  ADD KEY `users_id_tech` (`users_id_tech`),
  ADD KEY `groups_id_tech` (`groups_id_tech`);

--
-- Índices de tabela `glpi_ticketcosts`
--
ALTER TABLE `glpi_ticketcosts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `tickets_id` (`tickets_id`),
  ADD KEY `begin_date` (`begin_date`),
  ADD KEY `end_date` (`end_date`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `budgets_id` (`budgets_id`);

--
-- Índices de tabela `glpi_ticketfollowups`
--
ALTER TABLE `glpi_ticketfollowups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `date` (`date`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`),
  ADD KEY `users_id` (`users_id`),
  ADD KEY `users_id_editor` (`users_id_editor`),
  ADD KEY `tickets_id` (`tickets_id`),
  ADD KEY `is_private` (`is_private`),
  ADD KEY `requesttypes_id` (`requesttypes_id`);

--
-- Índices de tabela `glpi_ticketrecurrents`
--
ALTER TABLE `glpi_ticketrecurrents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `is_recursive` (`is_recursive`),
  ADD KEY `is_active` (`is_active`),
  ADD KEY `tickettemplates_id` (`tickettemplates_id`),
  ADD KEY `next_creation_date` (`next_creation_date`);

--
-- Índices de tabela `glpi_tickets`
--
ALTER TABLE `glpi_tickets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `date` (`date`),
  ADD KEY `closedate` (`closedate`),
  ADD KEY `status` (`status`),
  ADD KEY `priority` (`priority`),
  ADD KEY `request_type` (`requesttypes_id`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `users_id_recipient` (`users_id_recipient`),
  ADD KEY `solvedate` (`solvedate`),
  ADD KEY `urgency` (`urgency`),
  ADD KEY `impact` (`impact`),
  ADD KEY `global_validation` (`global_validation`),
  ADD KEY `slas_tto_id` (`slas_tto_id`),
  ADD KEY `slas_ttr_id` (`slas_ttr_id`),
  ADD KEY `time_to_resolve` (`time_to_resolve`),
  ADD KEY `time_to_own` (`time_to_own`),
  ADD KEY `olas_tto_id` (`olas_tto_id`),
  ADD KEY `olas_ttr_id` (`olas_ttr_id`),
  ADD KEY `ttr_slalevels_id` (`ttr_slalevels_id`),
  ADD KEY `internal_time_to_resolve` (`internal_time_to_resolve`),
  ADD KEY `internal_time_to_own` (`internal_time_to_own`),
  ADD KEY `users_id_lastupdater` (`users_id_lastupdater`),
  ADD KEY `type` (`type`),
  ADD KEY `itilcategories_id` (`itilcategories_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `name` (`name`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `date_creation` (`date_creation`),
  ADD KEY `ola_waiting_duration` (`ola_waiting_duration`);

--
-- Índices de tabela `glpi_ticketsatisfactions`
--
ALTER TABLE `glpi_ticketsatisfactions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tickets_id` (`tickets_id`);

--
-- Índices de tabela `glpi_tickets_tickets`
--
ALTER TABLE `glpi_tickets_tickets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unicity` (`tickets_id_1`,`tickets_id_2`);

--
-- Índices de tabela `glpi_tickets_users`
--
ALTER TABLE `glpi_tickets_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unicity` (`tickets_id`,`type`,`users_id`,`alternative_email`),
  ADD KEY `user` (`users_id`,`type`);

--
-- Índices de tabela `glpi_tickettasks`
--
ALTER TABLE `glpi_tickettasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `date` (`date`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`),
  ADD KEY `users_id` (`users_id`),
  ADD KEY `users_id_editor` (`users_id_editor`),
  ADD KEY `tickets_id` (`tickets_id`),
  ADD KEY `is_private` (`is_private`),
  ADD KEY `taskcategories_id` (`taskcategories_id`),
  ADD KEY `state` (`state`),
  ADD KEY `users_id_tech` (`users_id_tech`),
  ADD KEY `groups_id_tech` (`groups_id_tech`),
  ADD KEY `begin` (`begin`),
  ADD KEY `end` (`end`),
  ADD KEY `tasktemplates_id` (`tasktemplates_id`);

--
-- Índices de tabela `glpi_tickettemplatehiddenfields`
--
ALTER TABLE `glpi_tickettemplatehiddenfields`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unicity` (`tickettemplates_id`,`num`);

--
-- Índices de tabela `glpi_tickettemplatemandatoryfields`
--
ALTER TABLE `glpi_tickettemplatemandatoryfields`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unicity` (`tickettemplates_id`,`num`);

--
-- Índices de tabela `glpi_tickettemplatepredefinedfields`
--
ALTER TABLE `glpi_tickettemplatepredefinedfields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tickettemplates_id_id_num` (`tickettemplates_id`,`num`);

--
-- Índices de tabela `glpi_tickettemplates`
--
ALTER TABLE `glpi_tickettemplates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `is_recursive` (`is_recursive`);

--
-- Índices de tabela `glpi_ticketvalidations`
--
ALTER TABLE `glpi_ticketvalidations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `users_id` (`users_id`),
  ADD KEY `users_id_validate` (`users_id_validate`),
  ADD KEY `tickets_id` (`tickets_id`),
  ADD KEY `submission_date` (`submission_date`),
  ADD KEY `validation_date` (`validation_date`),
  ADD KEY `status` (`status`);

--
-- Índices de tabela `glpi_transfers`
--
ALTER TABLE `glpi_transfers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `date_mod` (`date_mod`);

--
-- Índices de tabela `glpi_usercategories`
--
ALTER TABLE `glpi_usercategories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Índices de tabela `glpi_useremails`
--
ALTER TABLE `glpi_useremails`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unicity` (`users_id`,`email`),
  ADD KEY `email` (`email`),
  ADD KEY `is_default` (`is_default`),
  ADD KEY `is_dynamic` (`is_dynamic`);

--
-- Índices de tabela `glpi_users`
--
ALTER TABLE `glpi_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unicityloginauth` (`name`,`authtype`,`auths_id`),
  ADD KEY `firstname` (`firstname`),
  ADD KEY `realname` (`realname`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `profiles_id` (`profiles_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `usertitles_id` (`usertitles_id`),
  ADD KEY `usercategories_id` (`usercategories_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `is_active` (`is_active`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `authitem` (`authtype`,`auths_id`),
  ADD KEY `is_deleted_ldap` (`is_deleted_ldap`),
  ADD KEY `date_creation` (`date_creation`),
  ADD KEY `begin_date` (`begin_date`),
  ADD KEY `end_date` (`end_date`),
  ADD KEY `sync_field` (`sync_field`);

--
-- Índices de tabela `glpi_usertitles`
--
ALTER TABLE `glpi_usertitles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Índices de tabela `glpi_virtualmachinestates`
--
ALTER TABLE `glpi_virtualmachinestates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Índices de tabela `glpi_virtualmachinesystems`
--
ALTER TABLE `glpi_virtualmachinesystems`
  ADD PRIMARY KEY (`id`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Índices de tabela `glpi_virtualmachinetypes`
--
ALTER TABLE `glpi_virtualmachinetypes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Índices de tabela `glpi_vlans`
--
ALTER TABLE `glpi_vlans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `tag` (`tag`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Índices de tabela `glpi_wifinetworks`
--
ALTER TABLE `glpi_wifinetworks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `essid` (`essid`),
  ADD KEY `name` (`name`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `glpi_alerts`
--
ALTER TABLE `glpi_alerts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_apiclients`
--
ALTER TABLE `glpi_apiclients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de tabela `glpi_authldapreplicates`
--
ALTER TABLE `glpi_authldapreplicates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_authldaps`
--
ALTER TABLE `glpi_authldaps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_authmails`
--
ALTER TABLE `glpi_authmails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_autoupdatesystems`
--
ALTER TABLE `glpi_autoupdatesystems`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_blacklistedmailcontents`
--
ALTER TABLE `glpi_blacklistedmailcontents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_blacklists`
--
ALTER TABLE `glpi_blacklists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de tabela `glpi_budgets`
--
ALTER TABLE `glpi_budgets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_budgettypes`
--
ALTER TABLE `glpi_budgettypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_businesscriticities`
--
ALTER TABLE `glpi_businesscriticities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_calendars`
--
ALTER TABLE `glpi_calendars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de tabela `glpi_calendarsegments`
--
ALTER TABLE `glpi_calendarsegments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de tabela `glpi_calendars_holidays`
--
ALTER TABLE `glpi_calendars_holidays`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_cartridgeitems`
--
ALTER TABLE `glpi_cartridgeitems`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_cartridgeitems_printermodels`
--
ALTER TABLE `glpi_cartridgeitems_printermodels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_cartridgeitemtypes`
--
ALTER TABLE `glpi_cartridgeitemtypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_cartridges`
--
ALTER TABLE `glpi_cartridges`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_certificates`
--
ALTER TABLE `glpi_certificates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_certificates_items`
--
ALTER TABLE `glpi_certificates_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_certificatetypes`
--
ALTER TABLE `glpi_certificatetypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_changecosts`
--
ALTER TABLE `glpi_changecosts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_changes`
--
ALTER TABLE `glpi_changes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_changes_groups`
--
ALTER TABLE `glpi_changes_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_changes_items`
--
ALTER TABLE `glpi_changes_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_changes_problems`
--
ALTER TABLE `glpi_changes_problems`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_changes_projects`
--
ALTER TABLE `glpi_changes_projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_changes_suppliers`
--
ALTER TABLE `glpi_changes_suppliers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_changes_tickets`
--
ALTER TABLE `glpi_changes_tickets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_changes_users`
--
ALTER TABLE `glpi_changes_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_changetasks`
--
ALTER TABLE `glpi_changetasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_changevalidations`
--
ALTER TABLE `glpi_changevalidations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_computerantiviruses`
--
ALTER TABLE `glpi_computerantiviruses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_computermodels`
--
ALTER TABLE `glpi_computermodels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_computers`
--
ALTER TABLE `glpi_computers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_computers_items`
--
ALTER TABLE `glpi_computers_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_computers_softwarelicenses`
--
ALTER TABLE `glpi_computers_softwarelicenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_computers_softwareversions`
--
ALTER TABLE `glpi_computers_softwareversions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_computertypes`
--
ALTER TABLE `glpi_computertypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_computervirtualmachines`
--
ALTER TABLE `glpi_computervirtualmachines`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_configs`
--
ALTER TABLE `glpi_configs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=210;
--
-- AUTO_INCREMENT de tabela `glpi_consumableitems`
--
ALTER TABLE `glpi_consumableitems`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_consumableitemtypes`
--
ALTER TABLE `glpi_consumableitemtypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_consumables`
--
ALTER TABLE `glpi_consumables`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_contacts`
--
ALTER TABLE `glpi_contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_contacts_suppliers`
--
ALTER TABLE `glpi_contacts_suppliers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_contacttypes`
--
ALTER TABLE `glpi_contacttypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_contractcosts`
--
ALTER TABLE `glpi_contractcosts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_contracts`
--
ALTER TABLE `glpi_contracts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_contracts_items`
--
ALTER TABLE `glpi_contracts_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_contracts_suppliers`
--
ALTER TABLE `glpi_contracts_suppliers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_contracttypes`
--
ALTER TABLE `glpi_contracttypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_crontasklogs`
--
ALTER TABLE `glpi_crontasklogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT de tabela `glpi_crontasks`
--
ALTER TABLE `glpi_crontasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT de tabela `glpi_datacenters`
--
ALTER TABLE `glpi_datacenters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_dcrooms`
--
ALTER TABLE `glpi_dcrooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_devicebatteries`
--
ALTER TABLE `glpi_devicebatteries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_devicebatterymodels`
--
ALTER TABLE `glpi_devicebatterymodels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_devicebatterytypes`
--
ALTER TABLE `glpi_devicebatterytypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_devicecasemodels`
--
ALTER TABLE `glpi_devicecasemodels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_devicecases`
--
ALTER TABLE `glpi_devicecases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_devicecasetypes`
--
ALTER TABLE `glpi_devicecasetypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_devicecontrolmodels`
--
ALTER TABLE `glpi_devicecontrolmodels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_devicecontrols`
--
ALTER TABLE `glpi_devicecontrols`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_devicedrivemodels`
--
ALTER TABLE `glpi_devicedrivemodels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_devicedrives`
--
ALTER TABLE `glpi_devicedrives`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_devicefirmwaremodels`
--
ALTER TABLE `glpi_devicefirmwaremodels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_devicefirmwares`
--
ALTER TABLE `glpi_devicefirmwares`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_devicefirmwaretypes`
--
ALTER TABLE `glpi_devicefirmwaretypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de tabela `glpi_devicegenericmodels`
--
ALTER TABLE `glpi_devicegenericmodels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_devicegenerics`
--
ALTER TABLE `glpi_devicegenerics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_devicegenerictypes`
--
ALTER TABLE `glpi_devicegenerictypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_devicegraphiccardmodels`
--
ALTER TABLE `glpi_devicegraphiccardmodels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_devicegraphiccards`
--
ALTER TABLE `glpi_devicegraphiccards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_deviceharddrivemodels`
--
ALTER TABLE `glpi_deviceharddrivemodels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_deviceharddrives`
--
ALTER TABLE `glpi_deviceharddrives`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_devicememories`
--
ALTER TABLE `glpi_devicememories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_devicememorymodels`
--
ALTER TABLE `glpi_devicememorymodels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_devicememorytypes`
--
ALTER TABLE `glpi_devicememorytypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de tabela `glpi_devicemotherboardmodels`
--
ALTER TABLE `glpi_devicemotherboardmodels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_devicemotherboards`
--
ALTER TABLE `glpi_devicemotherboards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_devicenetworkcardmodels`
--
ALTER TABLE `glpi_devicenetworkcardmodels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_devicenetworkcards`
--
ALTER TABLE `glpi_devicenetworkcards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_devicepcimodels`
--
ALTER TABLE `glpi_devicepcimodels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_devicepcis`
--
ALTER TABLE `glpi_devicepcis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_devicepowersupplies`
--
ALTER TABLE `glpi_devicepowersupplies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_devicepowersupplymodels`
--
ALTER TABLE `glpi_devicepowersupplymodels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_deviceprocessormodels`
--
ALTER TABLE `glpi_deviceprocessormodels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_deviceprocessors`
--
ALTER TABLE `glpi_deviceprocessors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_devicesensormodels`
--
ALTER TABLE `glpi_devicesensormodels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_devicesensors`
--
ALTER TABLE `glpi_devicesensors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_devicesensortypes`
--
ALTER TABLE `glpi_devicesensortypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_devicesimcards`
--
ALTER TABLE `glpi_devicesimcards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_devicesimcardtypes`
--
ALTER TABLE `glpi_devicesimcardtypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de tabela `glpi_devicesoundcardmodels`
--
ALTER TABLE `glpi_devicesoundcardmodels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_devicesoundcards`
--
ALTER TABLE `glpi_devicesoundcards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_displaypreferences`
--
ALTER TABLE `glpi_displaypreferences`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=265;
--
-- AUTO_INCREMENT de tabela `glpi_documentcategories`
--
ALTER TABLE `glpi_documentcategories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_documents`
--
ALTER TABLE `glpi_documents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_documents_items`
--
ALTER TABLE `glpi_documents_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_documenttypes`
--
ALTER TABLE `glpi_documenttypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;
--
-- AUTO_INCREMENT de tabela `glpi_domains`
--
ALTER TABLE `glpi_domains`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_dropdowntranslations`
--
ALTER TABLE `glpi_dropdowntranslations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_enclosuremodels`
--
ALTER TABLE `glpi_enclosuremodels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_enclosures`
--
ALTER TABLE `glpi_enclosures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_entities_knowbaseitems`
--
ALTER TABLE `glpi_entities_knowbaseitems`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_entities_reminders`
--
ALTER TABLE `glpi_entities_reminders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_entities_rssfeeds`
--
ALTER TABLE `glpi_entities_rssfeeds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_events`
--
ALTER TABLE `glpi_events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT de tabela `glpi_fieldblacklists`
--
ALTER TABLE `glpi_fieldblacklists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_fieldunicities`
--
ALTER TABLE `glpi_fieldunicities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_filesystems`
--
ALTER TABLE `glpi_filesystems`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT de tabela `glpi_fqdns`
--
ALTER TABLE `glpi_fqdns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_groups`
--
ALTER TABLE `glpi_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_groups_knowbaseitems`
--
ALTER TABLE `glpi_groups_knowbaseitems`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_groups_problems`
--
ALTER TABLE `glpi_groups_problems`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_groups_reminders`
--
ALTER TABLE `glpi_groups_reminders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_groups_rssfeeds`
--
ALTER TABLE `glpi_groups_rssfeeds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_groups_tickets`
--
ALTER TABLE `glpi_groups_tickets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_groups_users`
--
ALTER TABLE `glpi_groups_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_holidays`
--
ALTER TABLE `glpi_holidays`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_infocoms`
--
ALTER TABLE `glpi_infocoms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_interfacetypes`
--
ALTER TABLE `glpi_interfacetypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de tabela `glpi_ipaddresses`
--
ALTER TABLE `glpi_ipaddresses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_ipaddresses_ipnetworks`
--
ALTER TABLE `glpi_ipaddresses_ipnetworks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_ipnetworks`
--
ALTER TABLE `glpi_ipnetworks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_ipnetworks_vlans`
--
ALTER TABLE `glpi_ipnetworks_vlans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_items_devicebatteries`
--
ALTER TABLE `glpi_items_devicebatteries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_items_devicecases`
--
ALTER TABLE `glpi_items_devicecases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_items_devicecontrols`
--
ALTER TABLE `glpi_items_devicecontrols`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_items_devicedrives`
--
ALTER TABLE `glpi_items_devicedrives`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_items_devicefirmwares`
--
ALTER TABLE `glpi_items_devicefirmwares`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_items_devicegenerics`
--
ALTER TABLE `glpi_items_devicegenerics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_items_devicegraphiccards`
--
ALTER TABLE `glpi_items_devicegraphiccards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_items_deviceharddrives`
--
ALTER TABLE `glpi_items_deviceharddrives`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_items_devicememories`
--
ALTER TABLE `glpi_items_devicememories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_items_devicemotherboards`
--
ALTER TABLE `glpi_items_devicemotherboards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_items_devicenetworkcards`
--
ALTER TABLE `glpi_items_devicenetworkcards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_items_devicepcis`
--
ALTER TABLE `glpi_items_devicepcis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_items_devicepowersupplies`
--
ALTER TABLE `glpi_items_devicepowersupplies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_items_deviceprocessors`
--
ALTER TABLE `glpi_items_deviceprocessors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_items_devicesensors`
--
ALTER TABLE `glpi_items_devicesensors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_items_devicesimcards`
--
ALTER TABLE `glpi_items_devicesimcards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_items_devicesoundcards`
--
ALTER TABLE `glpi_items_devicesoundcards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_items_disks`
--
ALTER TABLE `glpi_items_disks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_items_enclosures`
--
ALTER TABLE `glpi_items_enclosures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_items_operatingsystems`
--
ALTER TABLE `glpi_items_operatingsystems`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_items_problems`
--
ALTER TABLE `glpi_items_problems`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_items_projects`
--
ALTER TABLE `glpi_items_projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_items_racks`
--
ALTER TABLE `glpi_items_racks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_items_tickets`
--
ALTER TABLE `glpi_items_tickets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_itilcategories`
--
ALTER TABLE `glpi_itilcategories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_itilsolutions`
--
ALTER TABLE `glpi_itilsolutions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_knowbaseitemcategories`
--
ALTER TABLE `glpi_knowbaseitemcategories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_knowbaseitems`
--
ALTER TABLE `glpi_knowbaseitems`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_knowbaseitems_comments`
--
ALTER TABLE `glpi_knowbaseitems_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_knowbaseitems_items`
--
ALTER TABLE `glpi_knowbaseitems_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_knowbaseitems_profiles`
--
ALTER TABLE `glpi_knowbaseitems_profiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_knowbaseitems_revisions`
--
ALTER TABLE `glpi_knowbaseitems_revisions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_knowbaseitems_users`
--
ALTER TABLE `glpi_knowbaseitems_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_knowbaseitemtranslations`
--
ALTER TABLE `glpi_knowbaseitemtranslations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_lineoperators`
--
ALTER TABLE `glpi_lineoperators`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_lines`
--
ALTER TABLE `glpi_lines`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_linetypes`
--
ALTER TABLE `glpi_linetypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_links`
--
ALTER TABLE `glpi_links`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_links_itemtypes`
--
ALTER TABLE `glpi_links_itemtypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_locations`
--
ALTER TABLE `glpi_locations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_logs`
--
ALTER TABLE `glpi_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_mailcollectors`
--
ALTER TABLE `glpi_mailcollectors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_manufacturers`
--
ALTER TABLE `glpi_manufacturers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_monitormodels`
--
ALTER TABLE `glpi_monitormodels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_monitors`
--
ALTER TABLE `glpi_monitors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_monitortypes`
--
ALTER TABLE `glpi_monitortypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_netpoints`
--
ALTER TABLE `glpi_netpoints`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_networkaliases`
--
ALTER TABLE `glpi_networkaliases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_networkequipmentmodels`
--
ALTER TABLE `glpi_networkequipmentmodels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_networkequipments`
--
ALTER TABLE `glpi_networkequipments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_networkequipmenttypes`
--
ALTER TABLE `glpi_networkequipmenttypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_networkinterfaces`
--
ALTER TABLE `glpi_networkinterfaces`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_networknames`
--
ALTER TABLE `glpi_networknames`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_networkportaggregates`
--
ALTER TABLE `glpi_networkportaggregates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_networkportaliases`
--
ALTER TABLE `glpi_networkportaliases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_networkportdialups`
--
ALTER TABLE `glpi_networkportdialups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_networkportethernets`
--
ALTER TABLE `glpi_networkportethernets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_networkportfiberchannels`
--
ALTER TABLE `glpi_networkportfiberchannels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_networkportlocals`
--
ALTER TABLE `glpi_networkportlocals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_networkports`
--
ALTER TABLE `glpi_networkports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_networkports_networkports`
--
ALTER TABLE `glpi_networkports_networkports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_networkports_vlans`
--
ALTER TABLE `glpi_networkports_vlans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_networkportwifis`
--
ALTER TABLE `glpi_networkportwifis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_networks`
--
ALTER TABLE `glpi_networks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_notepads`
--
ALTER TABLE `glpi_notepads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_notifications`
--
ALTER TABLE `glpi_notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;
--
-- AUTO_INCREMENT de tabela `glpi_notifications_notificationtemplates`
--
ALTER TABLE `glpi_notifications_notificationtemplates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;
--
-- AUTO_INCREMENT de tabela `glpi_notificationtargets`
--
ALTER TABLE `glpi_notificationtargets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;
--
-- AUTO_INCREMENT de tabela `glpi_notificationtemplates`
--
ALTER TABLE `glpi_notificationtemplates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT de tabela `glpi_notificationtemplatetranslations`
--
ALTER TABLE `glpi_notificationtemplatetranslations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT de tabela `glpi_notimportedemails`
--
ALTER TABLE `glpi_notimportedemails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_objectlocks`
--
ALTER TABLE `glpi_objectlocks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_olalevelactions`
--
ALTER TABLE `glpi_olalevelactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_olalevelcriterias`
--
ALTER TABLE `glpi_olalevelcriterias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_olalevels`
--
ALTER TABLE `glpi_olalevels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_olalevels_tickets`
--
ALTER TABLE `glpi_olalevels_tickets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_olas`
--
ALTER TABLE `glpi_olas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_operatingsystemarchitectures`
--
ALTER TABLE `glpi_operatingsystemarchitectures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_operatingsystemeditions`
--
ALTER TABLE `glpi_operatingsystemeditions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_operatingsystemkernels`
--
ALTER TABLE `glpi_operatingsystemkernels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_operatingsystemkernelversions`
--
ALTER TABLE `glpi_operatingsystemkernelversions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_operatingsystems`
--
ALTER TABLE `glpi_operatingsystems`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_operatingsystemservicepacks`
--
ALTER TABLE `glpi_operatingsystemservicepacks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_operatingsystemversions`
--
ALTER TABLE `glpi_operatingsystemversions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_pdumodels`
--
ALTER TABLE `glpi_pdumodels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_pdus`
--
ALTER TABLE `glpi_pdus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_pdus_plugs`
--
ALTER TABLE `glpi_pdus_plugs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_pdus_racks`
--
ALTER TABLE `glpi_pdus_racks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_pdutypes`
--
ALTER TABLE `glpi_pdutypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_peripheralmodels`
--
ALTER TABLE `glpi_peripheralmodels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_peripherals`
--
ALTER TABLE `glpi_peripherals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_peripheraltypes`
--
ALTER TABLE `glpi_peripheraltypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_phonemodels`
--
ALTER TABLE `glpi_phonemodels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_phonepowersupplies`
--
ALTER TABLE `glpi_phonepowersupplies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_phones`
--
ALTER TABLE `glpi_phones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_phonetypes`
--
ALTER TABLE `glpi_phonetypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_planningrecalls`
--
ALTER TABLE `glpi_planningrecalls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_plugins`
--
ALTER TABLE `glpi_plugins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de tabela `glpi_plugin_dashboard_config`
--
ALTER TABLE `glpi_plugin_dashboard_config`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_plugin_dashboard_map`
--
ALTER TABLE `glpi_plugin_dashboard_map`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_plugs`
--
ALTER TABLE `glpi_plugs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_printermodels`
--
ALTER TABLE `glpi_printermodels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_printers`
--
ALTER TABLE `glpi_printers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_printertypes`
--
ALTER TABLE `glpi_printertypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_problemcosts`
--
ALTER TABLE `glpi_problemcosts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_problems`
--
ALTER TABLE `glpi_problems`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_problems_suppliers`
--
ALTER TABLE `glpi_problems_suppliers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_problems_tickets`
--
ALTER TABLE `glpi_problems_tickets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_problems_users`
--
ALTER TABLE `glpi_problems_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_problemtasks`
--
ALTER TABLE `glpi_problemtasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_profilerights`
--
ALTER TABLE `glpi_profilerights`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=869;
--
-- AUTO_INCREMENT de tabela `glpi_profiles`
--
ALTER TABLE `glpi_profiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de tabela `glpi_profiles_reminders`
--
ALTER TABLE `glpi_profiles_reminders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_profiles_rssfeeds`
--
ALTER TABLE `glpi_profiles_rssfeeds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_profiles_users`
--
ALTER TABLE `glpi_profiles_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de tabela `glpi_projectcosts`
--
ALTER TABLE `glpi_projectcosts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_projects`
--
ALTER TABLE `glpi_projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_projectstates`
--
ALTER TABLE `glpi_projectstates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de tabela `glpi_projecttasks`
--
ALTER TABLE `glpi_projecttasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_projecttasks_tickets`
--
ALTER TABLE `glpi_projecttasks_tickets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_projecttaskteams`
--
ALTER TABLE `glpi_projecttaskteams`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_projecttasktemplates`
--
ALTER TABLE `glpi_projecttasktemplates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_projecttasktypes`
--
ALTER TABLE `glpi_projecttasktypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_projectteams`
--
ALTER TABLE `glpi_projectteams`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_projecttypes`
--
ALTER TABLE `glpi_projecttypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_queuednotifications`
--
ALTER TABLE `glpi_queuednotifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_rackmodels`
--
ALTER TABLE `glpi_rackmodels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_racks`
--
ALTER TABLE `glpi_racks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_racktypes`
--
ALTER TABLE `glpi_racktypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_registeredids`
--
ALTER TABLE `glpi_registeredids`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_reminders`
--
ALTER TABLE `glpi_reminders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_reminders_users`
--
ALTER TABLE `glpi_reminders_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_requesttypes`
--
ALTER TABLE `glpi_requesttypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de tabela `glpi_reservationitems`
--
ALTER TABLE `glpi_reservationitems`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_reservations`
--
ALTER TABLE `glpi_reservations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_rssfeeds`
--
ALTER TABLE `glpi_rssfeeds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_rssfeeds_users`
--
ALTER TABLE `glpi_rssfeeds_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_ruleactions`
--
ALTER TABLE `glpi_ruleactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de tabela `glpi_rulecriterias`
--
ALTER TABLE `glpi_rulecriterias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT de tabela `glpi_rulerightparameters`
--
ALTER TABLE `glpi_rulerightparameters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT de tabela `glpi_rules`
--
ALTER TABLE `glpi_rules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de tabela `glpi_savedsearches`
--
ALTER TABLE `glpi_savedsearches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_savedsearches_alerts`
--
ALTER TABLE `glpi_savedsearches_alerts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_savedsearches_users`
--
ALTER TABLE `glpi_savedsearches_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_slalevelactions`
--
ALTER TABLE `glpi_slalevelactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_slalevelcriterias`
--
ALTER TABLE `glpi_slalevelcriterias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_slalevels`
--
ALTER TABLE `glpi_slalevels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_slalevels_tickets`
--
ALTER TABLE `glpi_slalevels_tickets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_slas`
--
ALTER TABLE `glpi_slas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_slms`
--
ALTER TABLE `glpi_slms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_softwarecategories`
--
ALTER TABLE `glpi_softwarecategories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de tabela `glpi_softwarelicenses`
--
ALTER TABLE `glpi_softwarelicenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_softwarelicensetypes`
--
ALTER TABLE `glpi_softwarelicensetypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de tabela `glpi_softwares`
--
ALTER TABLE `glpi_softwares`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_softwareversions`
--
ALTER TABLE `glpi_softwareversions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_solutiontemplates`
--
ALTER TABLE `glpi_solutiontemplates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_solutiontypes`
--
ALTER TABLE `glpi_solutiontypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_ssovariables`
--
ALTER TABLE `glpi_ssovariables`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de tabela `glpi_states`
--
ALTER TABLE `glpi_states`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_suppliers`
--
ALTER TABLE `glpi_suppliers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_suppliers_tickets`
--
ALTER TABLE `glpi_suppliers_tickets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_suppliertypes`
--
ALTER TABLE `glpi_suppliertypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_taskcategories`
--
ALTER TABLE `glpi_taskcategories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_tasktemplates`
--
ALTER TABLE `glpi_tasktemplates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_ticketcosts`
--
ALTER TABLE `glpi_ticketcosts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_ticketfollowups`
--
ALTER TABLE `glpi_ticketfollowups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_ticketrecurrents`
--
ALTER TABLE `glpi_ticketrecurrents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_tickets`
--
ALTER TABLE `glpi_tickets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_ticketsatisfactions`
--
ALTER TABLE `glpi_ticketsatisfactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_tickets_tickets`
--
ALTER TABLE `glpi_tickets_tickets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_tickets_users`
--
ALTER TABLE `glpi_tickets_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_tickettasks`
--
ALTER TABLE `glpi_tickettasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_tickettemplatehiddenfields`
--
ALTER TABLE `glpi_tickettemplatehiddenfields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_tickettemplatemandatoryfields`
--
ALTER TABLE `glpi_tickettemplatemandatoryfields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de tabela `glpi_tickettemplatepredefinedfields`
--
ALTER TABLE `glpi_tickettemplatepredefinedfields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_tickettemplates`
--
ALTER TABLE `glpi_tickettemplates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de tabela `glpi_ticketvalidations`
--
ALTER TABLE `glpi_ticketvalidations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_transfers`
--
ALTER TABLE `glpi_transfers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de tabela `glpi_usercategories`
--
ALTER TABLE `glpi_usercategories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_useremails`
--
ALTER TABLE `glpi_useremails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_users`
--
ALTER TABLE `glpi_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de tabela `glpi_usertitles`
--
ALTER TABLE `glpi_usertitles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_virtualmachinestates`
--
ALTER TABLE `glpi_virtualmachinestates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_virtualmachinesystems`
--
ALTER TABLE `glpi_virtualmachinesystems`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_virtualmachinetypes`
--
ALTER TABLE `glpi_virtualmachinetypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_vlans`
--
ALTER TABLE `glpi_vlans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `glpi_wifinetworks`
--
ALTER TABLE `glpi_wifinetworks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
