-- MySQL dump 10.13  Distrib 5.6.33, for debian-linux-gnu (x86_64)
--
-- Host: mypickup.cgamldeuxrsl.us-east-2.rds.amazonaws.com    Database: mypickup_db
-- ------------------------------------------------------
-- Server version	5.5.5-10.0.31-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `account_password_resets`
--

DROP TABLE IF EXISTS `account_password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account_password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `account_password_resets_email_index` (`email`),
  KEY `account_password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_password_resets`
--

LOCK TABLES `account_password_resets` WRITE;
/*!40000 ALTER TABLE `account_password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `account_password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `accounts_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts`
--

LOCK TABLES `accounts` WRITE;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
INSERT INTO `accounts` VALUES (2,'Michael Smith','Mrsmith@mypyckup.com','18667771791','$2y$10$pPxcyISBbPJVewBo4TRpb.aPLXtlfsir4w1Y.rFFVad4tKHcVCnVC',NULL,'2017-07-23 07:11:22','2017-07-23 07:11:22');
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admins` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `picture` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admins_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES (1,'Tranxit','admin@mypyckup.com','$2y$10$J4quVWpuabYBfXpllepuneHrZWB8wX8ZS.KBDtigIsdQRnRKmaH2q',NULL,'JyY6cOOuRCPNSomUJnxrmiN2jKnsG400xMxvAx4UhtyijHicDwFnKXVRjkd8',NULL,'2017-07-25 16:45:09');
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cards`
--

DROP TABLE IF EXISTS `cards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cards` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `last_four` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `card_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `brand` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_default` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cards`
--

LOCK TABLES `cards` WRITE;
/*!40000 ALTER TABLE `cards` DISABLE KEYS */;
INSERT INTO `cards` VALUES (1,71,'6868','card_1AjZBgA0i5WE0ELHNEnxfSMg','Visa',0,'2017-07-25 19:59:26','2017-07-25 19:59:26'),(2,71,'6868','card_1AjZFiA0i5WE0ELHW2i6ZtEL','Visa',0,'2017-07-25 20:03:36','2017-07-25 20:03:36'),(3,71,'6868','card_1AjZOXA0i5WE0ELHCQQB0aQX','Visa',0,'2017-07-25 20:12:43','2017-07-25 20:12:43'),(7,75,'4670','card_1AjsmHA0i5WE0ELHf6UCDBsP','MasterCard',1,'2017-07-26 16:54:31','2017-07-26 18:12:36'),(8,75,'6932','card_1Aju3FA0i5WE0ELHysA5eGsA','Visa',0,'2017-07-26 18:16:08','2017-07-26 18:16:08');
/*!40000 ALTER TABLE `cards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chats`
--

DROP TABLE IF EXISTS `chats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chats` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `request_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `provider_id` int(11) NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `type` enum('up','pu') COLLATE utf8_unicode_ci NOT NULL,
  `delivered` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chats`
--

LOCK TABLES `chats` WRITE;
/*!40000 ALTER TABLE `chats` DISABLE KEYS */;
/*!40000 ALTER TABLE `chats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dispatcher_password_resets`
--

DROP TABLE IF EXISTS `dispatcher_password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dispatcher_password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `dispatcher_password_resets_email_index` (`email`),
  KEY `dispatcher_password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dispatcher_password_resets`
--

LOCK TABLES `dispatcher_password_resets` WRITE;
/*!40000 ALTER TABLE `dispatcher_password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `dispatcher_password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dispatchers`
--

DROP TABLE IF EXISTS `dispatchers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dispatchers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `dispatchers_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dispatchers`
--

LOCK TABLES `dispatchers` WRITE;
/*!40000 ALTER TABLE `dispatchers` DISABLE KEYS */;
INSERT INTO `dispatchers` VALUES (1,'Demo','demo@appoets.com',NULL,'$2y$10$eYoh4jmsNfeuWJCKlzzguuaJxhw1OSrzKrlYnlkSLurxx/qVILPSy',NULL,NULL,NULL);
/*!40000 ALTER TABLE `dispatchers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents`
--

DROP TABLE IF EXISTS `documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documents` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` enum('DRIVER','VEHICLE') COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents`
--

LOCK TABLES `documents` WRITE;
/*!40000 ALTER TABLE `documents` DISABLE KEYS */;
INSERT INTO `documents` VALUES (1,'Driving Licence','DRIVER',NULL,NULL),(2,'Bank Passbook','DRIVER',NULL,NULL),(3,'Joining Form','DRIVER',NULL,NULL),(4,'Work Permit','DRIVER',NULL,NULL),(5,'Registration Certificate','VEHICLE',NULL,NULL),(6,'Insurance Certificate','VEHICLE',NULL,NULL),(7,'Fitness Certificate','VEHICLE',NULL,NULL);
/*!40000 ALTER TABLE `documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fleet_password_resets`
--

DROP TABLE IF EXISTS `fleet_password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fleet_password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `fleet_password_resets_email_index` (`email`),
  KEY `fleet_password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fleet_password_resets`
--

LOCK TABLES `fleet_password_resets` WRITE;
/*!40000 ALTER TABLE `fleet_password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `fleet_password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fleets`
--

DROP TABLE IF EXISTS `fleets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fleets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `company` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `fleets_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fleets`
--

LOCK TABLES `fleets` WRITE;
/*!40000 ALTER TABLE `fleets` DISABLE KEYS */;
/*!40000 ALTER TABLE `fleets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ltm_translations`
--

DROP TABLE IF EXISTS `ltm_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ltm_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `status` int(11) NOT NULL DEFAULT '0',
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `group` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ltm_translations`
--

LOCK TABLES `ltm_translations` WRITE;
/*!40000 ALTER TABLE `ltm_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ltm_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_04_02_193005_create_translations_table',1),(2,'2014_10_12_000000_create_users_table',1),(3,'2014_10_12_100000_create_password_resets_table',1),(4,'2015_08_25_172600_create_settings_table',1),(5,'2016_06_01_000001_create_oauth_auth_codes_table',1),(6,'2016_06_01_000002_create_oauth_access_tokens_table',1),(7,'2016_06_01_000003_create_oauth_refresh_tokens_table',1),(8,'2016_06_01_000004_create_oauth_clients_table',1),(9,'2016_06_01_000005_create_oauth_personal_access_clients_table',1),(10,'2017_01_11_180503_create_admins_table',1),(11,'2017_01_11_180511_create_providers_table',1),(12,'2017_01_11_181312_create_cards_table',1),(13,'2017_01_11_181357_create_chats_table',1),(14,'2017_01_11_181558_create_promocodes_table',1),(15,'2017_01_11_182454_create_provider_documents_table',1),(16,'2017_01_11_182536_create_provider_services_table',1),(17,'2017_01_11_182649_create_user_requests_table',1),(18,'2017_01_11_182717_create_request_filters_table',1),(19,'2017_01_11_182738_create_service_types_table',1),(20,'2017_01_25_172422_create_documents_table',1),(21,'2017_01_31_122021_create_provider_devices_table',1),(22,'2017_02_02_192703_create_user_request_ratings_table',1),(23,'2017_02_06_080124_create_user_request_payments_table',1),(24,'2017_02_14_135859_create_provider_profiles_table',1),(25,'2017_02_21_131429_create_promocode_usages_table',1),(26,'2017_06_07_045207_add_social_login_to_providers_tables',1),(27,'2017_06_17_151030_create_dispatchers_table',1),(28,'2017_06_17_151031_create_dispatcher_password_resets_table',1),(29,'2017_06_17_151145_create_fleets_table',1),(30,'2017_06_17_151146_create_fleet_password_resets_table',1),(31,'2017_06_17_151150_add_fleet_to_providers_table',1),(32,'2017_06_19_130022_add_booking_id_to_user_request',1),(33,'2017_06_19_155736_add_cancel_reason_to_user_request',1),(34,'2017_06_20_154148_create_accounts_table',1),(35,'2017_06_20_154149_create_account_password_resets_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`),
  KEY `oauth_access_tokens_client_id_index` (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_access_tokens`
--

LOCK TABLES `oauth_access_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;
INSERT INTO `oauth_access_tokens` VALUES ('020ecbf5a8ca8de45fa27c59f273a4290ecf78c0b59a5dd1bd23f5b27e4418f8935aa5543b7937c4',73,2,NULL,'[]',0,'2017-07-26 15:35:11','2017-07-26 15:35:11','2017-08-10 15:35:11'),('1ae994585ae39ec7dae55e3cb39470f6e93a1793681acc135be12fbaf0cef34042a8baee11e65409',68,2,NULL,'[]',0,'2017-07-25 01:19:42','2017-07-25 01:19:42','2017-08-09 01:19:42'),('1d60a28bd998cdbaa6724802d407cb5089a2035c80b2eb5308eedb4d45b253cb3c2e216c4711a5f7',68,2,NULL,'[]',0,'2017-07-25 03:15:55','2017-07-25 03:15:55','2017-08-09 03:15:55'),('1d9324d5e94d4100f81f985b79f62146b6389da534b261eddd91968aa0ccb98936fdbf8a61d2c06d',68,2,NULL,'[]',0,'2017-07-24 23:26:14','2017-07-24 23:26:14','2017-08-08 23:26:14'),('23f02d52e35b6564391a929b0b9e4a8772e450b6421f48210e9fa81c960dbf066940cfd549cb3ac8',68,2,NULL,'[]',0,'2017-07-24 23:07:32','2017-07-24 23:07:32','2017-08-08 23:07:32'),('2643113e5cd732537be4a2582c0a2444b4ed43c484e3b5980172264b57f5f531812b5285c412af2f',68,4,NULL,'[]',0,'2017-07-26 13:53:34','2017-07-26 13:53:34','2017-08-10 13:53:34'),('2fa57477dcdbeff7eb5a35156051727ed5353d31b22c46ac1be4870e43c8c806c3485854f173e176',68,4,NULL,'[]',0,'2017-07-26 16:59:48','2017-07-26 16:59:48','2017-08-10 16:59:48'),('3137ea936e9a0d25c978d0d7cb09793ac9487806340e5c2f535463737010bd129a73d64dc9427e88',68,2,NULL,'[]',0,'2017-07-25 09:34:04','2017-07-25 09:34:04','2017-08-09 09:34:04'),('32d89e01239cdf05f32f9c755a578f35ce3baa865bcedd92e0be60907131518d3a22b4b62c01712a',68,2,NULL,'[]',0,'2017-07-24 23:02:36','2017-07-24 23:02:36','2017-08-08 23:02:36'),('351cf76c6798a8fde3455c96b5126c9d5d704fa3dbbf0e22a5d9343b37b98221eafeb85963a61375',71,2,NULL,'[]',0,'2017-07-25 14:06:47','2017-07-25 14:06:47','2017-08-09 14:06:47'),('4922ad86f036aea86740171f192487f87b9cc2cfc62ff19bbe903e65f55affce555bdb256cf8412f',68,2,NULL,'[]',0,'2017-07-24 23:18:10','2017-07-24 23:18:10','2017-08-08 23:18:10'),('4ddf1261909f22bd352406f4bb8ece2caa32ce17533e726e3cbea5df0eddb6cab480283b4fa474f9',68,2,NULL,'[]',0,'2017-07-25 00:16:45','2017-07-25 00:16:45','2017-08-09 00:16:45'),('50a4e17352e6591dfebf49666d53dfca9b9357d288afa7cc7c2253b558dfa8afbcbc59e13f9c86b1',68,2,NULL,'[]',0,'2017-07-25 17:59:15','2017-07-25 17:59:15','2017-08-09 17:59:15'),('6d9b87e7f0ebd31f19eae709f6ed2691a2442af20806509c3f36f5275fcb4504053dba2549593f9d',71,2,NULL,'[]',0,'2017-07-25 20:35:07','2017-07-25 20:35:07','2017-08-09 20:35:07'),('6efe92dc0f62dc04882689c17cfab8285073161a524dab6b7ef6e123979a528cf0d05c0b1b51450b',71,2,NULL,'[]',0,'2017-07-25 22:23:52','2017-07-25 22:23:52','2017-08-09 22:23:52'),('731b3227a6ca4c540bdb6df733bd0a6178eb216666e0a5006eae79408b099905daa404671c2ad186',68,2,NULL,'[]',0,'2017-07-25 20:30:21','2017-07-25 20:30:21','2017-08-09 20:30:21'),('7571751b62e193986ce8630525b9e8899f5492639b20472ad31efbc45671dc81b3d001fe22a50a14',68,2,NULL,'[]',0,'2017-07-25 16:04:15','2017-07-25 16:04:15','2017-08-09 16:04:15'),('7633ffd11435753040d14fc01debf163dd5182bbb5aef4dd8938be989119e419b674f11b6b78c73c',71,2,NULL,'[]',0,'2017-07-26 07:10:54','2017-07-26 07:10:54','2017-08-10 07:10:54'),('8dc6d0f6654db12b53dc1a6355d1d081a5c74a119ab475ee3423496b664dc5b57a9b32d712b90d5b',75,4,NULL,'[]',0,'2017-07-26 16:48:21','2017-07-26 16:48:21','2017-08-10 16:48:21'),('95816f3b61ba5535209f50c26ad49ceb02331d67dd87f1807e0347c42fc69fdb642d015150098c18',71,2,NULL,'[]',0,'2017-07-25 13:46:50','2017-07-25 13:46:50','2017-08-09 13:46:50'),('9c8349b7ca09626514c92efa98f80c5d7af37e793f591dfa358d6101be3e199013836fc54217cb20',68,2,NULL,'[]',0,'2017-07-24 23:12:56','2017-07-24 23:12:56','2017-08-08 23:12:56'),('a39abc37c5c703a98c4edd26ec96c7656c7a995ef274e6aca460cf6737fea43f3a501c7ebc847720',74,2,NULL,'[]',0,'2017-07-26 15:36:57','2017-07-26 15:36:57','2017-08-10 15:36:57'),('a9deeb330b1da2a4f1572cb86f74a91e191cbe2c82a66418ddd5e965dd8a5f7d73a6e67673c90c0d',69,2,NULL,'[]',0,'2017-07-24 17:58:07','2017-07-24 17:58:07','2017-08-08 17:58:07'),('aeafcacb8c4791b1237d2328448463bc5abb04e7504e2408c87c94dbd1d05d9b86e58ff2cef35b6b',68,2,NULL,'[]',0,'2017-07-25 03:19:32','2017-07-25 03:19:32','2017-08-09 03:19:32'),('b296bca4799e514d8e7c85a3ccf177cedf87bdd28ea786588882ce2b17f4316a1a1c490b2d99ef58',71,2,NULL,'[]',0,'2017-07-25 14:48:09','2017-07-25 14:48:09','2017-08-09 14:48:09'),('b83fe36a48a6c4e1748efc7fa85e513c5a94e3f8500814fc582d500f8b54510a5b18b61feef90c07',65,2,NULL,'[]',0,'2017-07-24 22:51:17','2017-07-24 22:51:17','2017-08-08 22:51:17'),('ba0ec4245b4d9c0f16ecb383eb98047b91d320e6293f1a2e8170ff8f93fbe37401535f8c78fa2668',65,2,NULL,'[]',0,'2017-07-24 22:33:08','2017-07-24 22:33:08','2017-08-08 22:33:08'),('ba521600ac885c2fcd03e9e71ec7142eb8ccb07f9aab0ef3512875c89207b5f24e079c2091cf8e3c',65,2,NULL,'[]',0,'2017-07-25 09:18:27','2017-07-25 09:18:27','2017-08-09 09:18:27'),('bb40e608f9f2acd828368bfc7937bbd7cde9d7f0b16f7ce45ab2c42636ae774c0f5678629d971846',68,2,NULL,'[]',0,'2017-07-24 17:49:35','2017-07-24 17:49:35','2017-08-08 17:49:35'),('cb56a8c5b8b61f613ee485bb26abd1bd3575a5d49f339d9f47bb851d7a28069cef00ad67fdc0d0c8',71,2,NULL,'[]',0,'2017-07-25 22:13:57','2017-07-25 22:13:57','2017-08-09 22:13:57'),('cb888fdb1629143236eb7552cb511c9000d366e4e0ce590e819229e3be920055802667faeae76050',71,2,NULL,'[]',0,'2017-07-25 19:56:39','2017-07-25 19:56:39','2017-08-09 19:56:39'),('cd4385464e25802f8742ee2f9730696a9793cc3cc8383c9851eecaf758211bb1542f7f941196a2f8',68,4,NULL,'[]',0,'2017-07-26 16:00:03','2017-07-26 16:00:03','2017-08-10 16:00:03'),('cfe4fbe293d7cefe6ddf5783d447ad54b82bfe9cb682ef35a4dee825fc5022528034e0eaa2ed4337',46,2,NULL,'[]',0,'2017-07-25 20:20:18','2017-07-25 20:20:18','2017-08-09 20:20:18'),('d5740c6684dd98310fbfb59aa3077b9f9a4c6aaf758a688904aedcbb492612812f5aa7be0a1cd4c7',70,2,NULL,'[]',0,'2017-07-24 21:39:41','2017-07-24 21:39:41','2017-08-08 21:39:41'),('de0870831698a6fdb102b2ac424df20b2966937fce8473b8220644b2dd470a29e35d5fe0f86a8587',68,2,NULL,'[]',0,'2017-07-24 16:56:32','2017-07-24 16:56:32','2017-08-08 16:56:32'),('dfc6ab6433c2ec100f773bc7fec82882dd3409b4170b44482687384213d3d4ecd17c103ae799ee03',68,4,NULL,'[]',0,'2017-07-26 14:59:50','2017-07-26 14:59:50','2017-08-10 14:59:50'),('e636038f64d5798e92fb03c790b9ee81193639d1f07695e34705026b789be6e75da788b994308bba',68,4,NULL,'[]',0,'2017-07-26 13:53:40','2017-07-26 13:53:40','2017-08-10 13:53:40'),('f2dc5b45c316a05ebe7433e9231643ea79ca913fcabc7a09bacd01a92e2407792682417a25c60d59',71,4,NULL,'[]',0,'2017-07-26 20:01:22','2017-07-26 20:01:22','2017-08-10 20:01:22'),('f8c03d505b8b487946ddb16868101f42be9815e20ca1f3a9252c80d448794e400acd42e8718ba01d',72,4,NULL,'[]',0,'2017-07-26 15:12:12','2017-07-26 15:12:12','2017-08-10 15:12:12');
/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_auth_codes`
--

DROP TABLE IF EXISTS `oauth_auth_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text COLLATE utf8_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_auth_codes`
--

LOCK TABLES `oauth_auth_codes` WRITE;
/*!40000 ALTER TABLE `oauth_auth_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_auth_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_clients`
--

DROP TABLE IF EXISTS `oauth_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_clients`
--

LOCK TABLES `oauth_clients` WRITE;
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;
INSERT INTO `oauth_clients` VALUES (1,NULL,'Tranxit Personal Access Client','w0XQC19yeuAMV1zWCVYUVo5DJMNsF7bzCbt1TELZ','http://localhost',1,0,0,'2017-07-24 16:53:02','2017-07-24 16:53:02'),(2,NULL,'Tranxit Password Grant Client','8yLlweVqI5LfYiUMQFnffRnQPQyn0EODrb3r88BB','http://localhost',0,1,0,'2017-07-24 16:53:02','2017-07-24 16:53:02'),(3,NULL,'Tranxit Personal Access Client','wVwGfyQOdiOi0NrUytYio78zBRBVvjTteokHCtwH','http://localhost',1,0,0,'2017-07-26 13:09:28','2017-07-26 13:09:28'),(4,NULL,'Tranxit Password Grant Client','SaHKy4gmOvKbkaHhkAhUCHbQeiPBqDFE8JcYabFQ','http://localhost',0,1,0,'2017-07-26 13:09:28','2017-07-26 13:09:28');
/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_personal_access_clients`
--

DROP TABLE IF EXISTS `oauth_personal_access_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_personal_access_clients_client_id_index` (`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_personal_access_clients`
--

LOCK TABLES `oauth_personal_access_clients` WRITE;
/*!40000 ALTER TABLE `oauth_personal_access_clients` DISABLE KEYS */;
INSERT INTO `oauth_personal_access_clients` VALUES (1,1,'2017-07-24 16:53:02','2017-07-24 16:53:02'),(2,3,'2017-07-26 13:09:28','2017-07-26 13:09:28');
/*!40000 ALTER TABLE `oauth_personal_access_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_refresh_tokens`
--

LOCK TABLES `oauth_refresh_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_refresh_tokens` DISABLE KEYS */;
INSERT INTO `oauth_refresh_tokens` VALUES ('0479e80e3c6d0bc4c867108568cf1ab23e9f168b504662243bcdd81ab1c17380d5912d964d3f9d47','4ddf1261909f22bd352406f4bb8ece2caa32ce17533e726e3cbea5df0eddb6cab480283b4fa474f9',0,'2017-10-23 00:16:45'),('108903a63873f3c44f9b19cd4bd72b147fd6c2ea1aa32380aa2d82c572093c31db02e8e5c6c1af6b','6d9b87e7f0ebd31f19eae709f6ed2691a2442af20806509c3f36f5275fcb4504053dba2549593f9d',0,'2017-10-23 20:35:07'),('16452f9ee263a09ebabc05ae8466d5a191eb6c90b6f2694d10b304930a7524b77b6e07312c627eb4','b296bca4799e514d8e7c85a3ccf177cedf87bdd28ea786588882ce2b17f4316a1a1c490b2d99ef58',0,'2017-10-23 14:48:09'),('17ae57ce265b7cb4b09b850ed299b884017bff8dd2c60c7f5d5f1678843b6a35e165d25a37129639','50a4e17352e6591dfebf49666d53dfca9b9357d288afa7cc7c2253b558dfa8afbcbc59e13f9c86b1',0,'2017-10-23 17:59:15'),('234df9e034f4f18fe61a2a2dcd8841072b7a2834c581c8bee377c833aa92a2373711a6a0d69a54e3','351cf76c6798a8fde3455c96b5126c9d5d704fa3dbbf0e22a5d9343b37b98221eafeb85963a61375',0,'2017-10-23 14:06:47'),('2adef4acd9cfb55f53529b1a72dae752843254af7d768c565d17d165290a8faf0cb657367be4ebfd','f2dc5b45c316a05ebe7433e9231643ea79ca913fcabc7a09bacd01a92e2407792682417a25c60d59',0,'2017-10-24 20:01:22'),('2fb310b426e872ce61358e05073c58e1909388770f71384f63062ec08db7ac13e3ba69a10245535a','2643113e5cd732537be4a2582c0a2444b4ed43c484e3b5980172264b57f5f531812b5285c412af2f',0,'2017-10-24 13:53:34'),('328221eec692184cd0d97766883a76010f1a36396a10a617e4d0c1970f648db7143a8dffa00b28e9','020ecbf5a8ca8de45fa27c59f273a4290ecf78c0b59a5dd1bd23f5b27e4418f8935aa5543b7937c4',0,'2017-10-24 15:35:11'),('351ba542a111e4b49da4c9f2e55a07735f14031b0c1e8432ddc09e8489baaf306b1da412398a5865','e636038f64d5798e92fb03c790b9ee81193639d1f07695e34705026b789be6e75da788b994308bba',0,'2017-10-24 13:53:40'),('3951fb94443cf71599e016a24af27121a3d47294cd5cb556e663be5d75252f264c9c35437322384f','1ae994585ae39ec7dae55e3cb39470f6e93a1793681acc135be12fbaf0cef34042a8baee11e65409',0,'2017-10-23 01:19:42'),('399dd3b9c157ee8587afa8a879e2c4c1e9a6c2b70aaa9091db002f9a64e119643810d2bc81a19005','731b3227a6ca4c540bdb6df733bd0a6178eb216666e0a5006eae79408b099905daa404671c2ad186',0,'2017-10-23 20:30:21'),('3ab1d588c7db7413315010c3054fb7c459e22bf2515feb21f678cb86e4c18f5990374caee196f17a','9c8349b7ca09626514c92efa98f80c5d7af37e793f591dfa358d6101be3e199013836fc54217cb20',0,'2017-10-22 23:12:56'),('4e1f76e66d7cd37dd24cfbf40f1b92b362ee38bf41cfb28b51b15583c391a614db96c2d9d9c584cc','cb56a8c5b8b61f613ee485bb26abd1bd3575a5d49f339d9f47bb851d7a28069cef00ad67fdc0d0c8',0,'2017-10-23 22:13:57'),('522fbbdfbb2349f15461c5c20c59989b67e810e4c249d230a0ee12dae79aaeb7c4a2fbdd5ff55084','ba0ec4245b4d9c0f16ecb383eb98047b91d320e6293f1a2e8170ff8f93fbe37401535f8c78fa2668',0,'2017-10-22 22:33:08'),('543d5e3944c49c0bd87174ab26c480761c79794a5070233b54950c9a7ed95cbab939564551aa8b8d','95816f3b61ba5535209f50c26ad49ceb02331d67dd87f1807e0347c42fc69fdb642d015150098c18',0,'2017-10-23 13:46:50'),('604639e2c3ca4833277ef7414c881de8c2028057caa5640b989da2dd29454a4319b84fc2c9452fb6','ba521600ac885c2fcd03e9e71ec7142eb8ccb07f9aab0ef3512875c89207b5f24e079c2091cf8e3c',0,'2017-10-23 09:18:27'),('6f9bebd1d7e0727257d3fa0d6e167c653fbe01f37948e6011a5ec3fd94e110d465ecf8173569c771','32d89e01239cdf05f32f9c755a578f35ce3baa865bcedd92e0be60907131518d3a22b4b62c01712a',0,'2017-10-22 23:02:36'),('7b530e980da29a0f0d2a7c9bafb24761f35922ed2299260e6f57ee02c38a4d1096b112eecdd7e174','1d9324d5e94d4100f81f985b79f62146b6389da534b261eddd91968aa0ccb98936fdbf8a61d2c06d',0,'2017-10-22 23:26:14'),('7e7c6a513e09ad968f511c1883175c85b9c0540a2e47a64a903167c15ae86f60f30860a0e9a51d53','7571751b62e193986ce8630525b9e8899f5492639b20472ad31efbc45671dc81b3d001fe22a50a14',0,'2017-10-23 16:04:15'),('8684ee3b50b9b1eb61b274dc49579b997c1ac9e2c9119c27bb331ab03c6631c3c160b4df6b2e2e8c','cb888fdb1629143236eb7552cb511c9000d366e4e0ce590e819229e3be920055802667faeae76050',0,'2017-10-23 19:56:39'),('933a67e4f53699c384971fe516c8fa308b0f9d701627187a215132c227ababfe9adda8562e8b6d16','b83fe36a48a6c4e1748efc7fa85e513c5a94e3f8500814fc582d500f8b54510a5b18b61feef90c07',0,'2017-10-22 22:51:17'),('9467fd1abd532b1d4de289fa04104675d853fdc72251012a65f1b429ccf365419730c7561efe3dfc','cfe4fbe293d7cefe6ddf5783d447ad54b82bfe9cb682ef35a4dee825fc5022528034e0eaa2ed4337',0,'2017-10-23 20:20:18'),('9771bb2770b2acfbe010f6813c54288560e9c3b73e980063bd5583ace5a31e4ae3be9b5eca4aa580','cd4385464e25802f8742ee2f9730696a9793cc3cc8383c9851eecaf758211bb1542f7f941196a2f8',0,'2017-10-24 16:00:03'),('981b9743d0b077e399e031ca851ecfe06039f65db152a96843a5ad146534dd8ec48824082dcb3054','dfc6ab6433c2ec100f773bc7fec82882dd3409b4170b44482687384213d3d4ecd17c103ae799ee03',0,'2017-10-24 14:59:50'),('98eb1e7b12f14ab372e8971645db3852e71b4262bc64528fa914caed6c7b41c34d8737907a99d905','23f02d52e35b6564391a929b0b9e4a8772e450b6421f48210e9fa81c960dbf066940cfd549cb3ac8',0,'2017-10-22 23:07:32'),('a8ecb8c5528431af8db2491f4f5a53c57880cc2b215baffbee214c40dec01e91bb89361d1189a5f0','7633ffd11435753040d14fc01debf163dd5182bbb5aef4dd8938be989119e419b674f11b6b78c73c',0,'2017-10-24 07:10:54'),('b0de3d0f9e39b5c6ce278c1a193f963d5648fa8ae233e849c45c0037f34ed64540f986e4b28147fe','a9deeb330b1da2a4f1572cb86f74a91e191cbe2c82a66418ddd5e965dd8a5f7d73a6e67673c90c0d',0,'2017-10-22 17:58:07'),('b11d0902f0b15a7743187aec3c1c1a79b47f5fa847c4bf2f1f7550df03d624fb612b3c42ef4acbaf','f8c03d505b8b487946ddb16868101f42be9815e20ca1f3a9252c80d448794e400acd42e8718ba01d',0,'2017-10-24 15:12:12'),('baab5836f9fc53894c77cd1d9778f263c5c8816e0863e7d64b68205bb6fd677d26c77ec2a5024e00','8dc6d0f6654db12b53dc1a6355d1d081a5c74a119ab475ee3423496b664dc5b57a9b32d712b90d5b',0,'2017-10-24 16:48:21'),('c3208d9e4a771611b9953d93e93d7dcdf7a8df9b0caf3d3a721e8088d29500b4f2390e9c0f2edece','de0870831698a6fdb102b2ac424df20b2966937fce8473b8220644b2dd470a29e35d5fe0f86a8587',0,'2017-10-22 16:56:32'),('c5be86493951ce4250d829123e00c3788c41cdd5c1208a58920f32d08ef0c5fa74eb4dad407cc975','bb40e608f9f2acd828368bfc7937bbd7cde9d7f0b16f7ce45ab2c42636ae774c0f5678629d971846',0,'2017-10-22 17:49:35'),('d6cd85553b655665bded9e4bd9ad0577de4fecf2d7389a07b11a46c517eb7a1cb3b0f2a1d97b8472','1d60a28bd998cdbaa6724802d407cb5089a2035c80b2eb5308eedb4d45b253cb3c2e216c4711a5f7',0,'2017-10-23 03:15:55'),('d953a8f81ad41f0ad201b851a5c918eba7b4927207fd82557c0381f13d827732e7383a42b192f5e9','aeafcacb8c4791b1237d2328448463bc5abb04e7504e2408c87c94dbd1d05d9b86e58ff2cef35b6b',0,'2017-10-23 03:19:32'),('df37c569535ae8ffe563613309cbe958c286666bbe8c80df4c4a9ba56a8cc7103a1a49341778d217','3137ea936e9a0d25c978d0d7cb09793ac9487806340e5c2f535463737010bd129a73d64dc9427e88',0,'2017-10-23 09:34:04'),('e4ceb8e4a9c4c86265212e0dcaafca14a273b9be6de0c62b17be990457d409a2761ab341542f4a48','2fa57477dcdbeff7eb5a35156051727ed5353d31b22c46ac1be4870e43c8c806c3485854f173e176',0,'2017-10-24 16:59:48'),('ea95b7ee5ded5034495355c7cf8ce2e493123936490455dc1230bbc6e79154d688c8da305b2f052b','4922ad86f036aea86740171f192487f87b9cc2cfc62ff19bbe903e65f55affce555bdb256cf8412f',0,'2017-10-22 23:18:10'),('eceee2895b27836b31896ec18df13cdff69fa5af0c30839ef9f4303b3ab2049e3775beb97e81d0d3','a39abc37c5c703a98c4edd26ec96c7656c7a995ef274e6aca460cf6737fea43f3a501c7ebc847720',0,'2017-10-24 15:36:57'),('ee2a7272d8c0cd04f049b75e5294788d54731ce35dd2afa3ccb2552b229d8053f8f05d713fa0170a','d5740c6684dd98310fbfb59aa3077b9f9a4c6aaf758a688904aedcbb492612812f5aa7be0a1cd4c7',0,'2017-10-22 21:39:41'),('f55669869feef88fb275fdcf0d2870543f83c21c2ca38819560fbeea98ac9e79ec3350639e790f33','6efe92dc0f62dc04882689c17cfab8285073161a524dab6b7ef6e123979a528cf0d05c0b1b51450b',0,'2017-10-23 22:23:52');
/*!40000 ALTER TABLE `oauth_refresh_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promocode_usages`
--

DROP TABLE IF EXISTS `promocode_usages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `promocode_usages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `promocode_id` int(11) NOT NULL,
  `status` enum('ADDED','USED','EXPIRED') COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promocode_usages`
--

LOCK TABLES `promocode_usages` WRITE;
/*!40000 ALTER TABLE `promocode_usages` DISABLE KEYS */;
/*!40000 ALTER TABLE `promocode_usages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promocodes`
--

DROP TABLE IF EXISTS `promocodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `promocodes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `promo_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `discount` double(10,2) NOT NULL DEFAULT '0.00',
  `expiration` datetime NOT NULL,
  `status` enum('ADDED','EXPIRED') COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promocodes`
--

LOCK TABLES `promocodes` WRITE;
/*!40000 ALTER TABLE `promocodes` DISABLE KEYS */;
/*!40000 ALTER TABLE `promocodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `provider_devices`
--

DROP TABLE IF EXISTS `provider_devices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `provider_devices` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `provider_id` int(11) NOT NULL,
  `udid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sns_arn` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` enum('android','ios') COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `provider_devices`
--

LOCK TABLES `provider_devices` WRITE;
/*!40000 ALTER TABLE `provider_devices` DISABLE KEYS */;
INSERT INTO `provider_devices` VALUES (1,51,'ecebfd8c966ad842','emHBPF2_SMQ:APA91bH_MiEV8O2weVmIkZfdQBlUR-lZ7F2KAYk9hFdMNymrkTYupf4YqQf_A8TVa09YHN3Vw9TqFD-B-c2RlYlUTc0rTq955nX2ZaNBu-zSry33iiuzVJa9-1z3h1qlAV5-nr-PNC37',NULL,'android','2017-07-23 11:32:29','2017-07-24 22:45:37'),(2,52,'','',NULL,'android','2017-07-23 14:47:29','2017-07-23 15:07:15'),(3,53,'ecebfd8c966ad842','enAkumdgxVI:APA91bHKceGfyoIuh7KXwyzg3tjYy4FOcfbMlh3lKNnigIjp768QWWJXtZzYCkgAs8VhJy1j0HOnUi3KYGw0taYhU_tLglmCJ7JfMXsKg3uKpsHoRW5vSiyX403-DU1ivLvCD0SSGnwy',NULL,'android','2017-07-23 17:30:49','2017-07-23 17:30:50'),(4,54,'534b641d60a182cb','clUPvidAqIs:APA91bF8bMocIsytz2MQhIjBpRTVBMy5ujNJdTUYUsMGOl7zk-16llwP5boH_yDFJiqsL8Ja-lXX8beGJYLbKuRwtd9VIWUM4XV-pka33c54Dv7ye3aVcgX9PXcHqBSNnPZibApBU_r0',NULL,'android','2017-07-23 17:33:30','2017-07-23 18:40:18'),(5,55,'','',NULL,'ios','2017-07-23 18:35:36','2017-07-26 13:55:10'),(6,56,'','',NULL,'ios','2017-07-25 08:59:52','2017-07-26 17:25:36'),(7,57,'','',NULL,'ios','2017-07-26 18:04:56','2017-07-26 18:32:25');
/*!40000 ALTER TABLE `provider_devices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `provider_documents`
--

DROP TABLE IF EXISTS `provider_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `provider_documents` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `provider_id` int(11) NOT NULL,
  `document_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `unique_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` enum('ASSESSING','ACTIVE') COLLATE utf8_unicode_ci NOT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `provider_documents`
--

LOCK TABLES `provider_documents` WRITE;
/*!40000 ALTER TABLE `provider_documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `provider_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `provider_profiles`
--

DROP TABLE IF EXISTS `provider_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `provider_profiles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `provider_id` int(11) NOT NULL,
  `language` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_secondary` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postal_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `provider_profiles`
--

LOCK TABLES `provider_profiles` WRITE;
/*!40000 ALTER TABLE `provider_profiles` DISABLE KEYS */;
INSERT INTO `provider_profiles` VALUES (1,51,NULL,NULL,NULL,NULL,NULL,NULL,'2017-07-23 11:40:14','2017-07-23 11:40:14'),(2,56,NULL,NULL,NULL,NULL,NULL,NULL,'2017-07-25 09:22:31','2017-07-25 09:22:31');
/*!40000 ALTER TABLE `provider_profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `provider_services`
--

DROP TABLE IF EXISTS `provider_services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `provider_services` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `provider_id` int(11) NOT NULL,
  `service_type_id` int(11) NOT NULL,
  `status` enum('active','offline','riding') COLLATE utf8_unicode_ci NOT NULL,
  `service_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_model` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `provider_services`
--

LOCK TABLES `provider_services` WRITE;
/*!40000 ALTER TABLE `provider_services` DISABLE KEYS */;
INSERT INTO `provider_services` VALUES (1,1,1,'active','4ppo3ts','Audi R8','2017-07-22 19:00:37','2017-07-22 19:00:37'),(2,2,1,'active','4ppo3ts','Audi R8','2017-07-22 19:00:37','2017-07-22 19:00:37'),(3,3,1,'active','4ppo3ts','Audi R8','2017-07-22 19:00:37','2017-07-22 19:00:37'),(4,4,1,'active','4ppo3ts','Audi R8','2017-07-22 19:00:37','2017-07-22 19:00:37'),(5,5,1,'active','4ppo3ts','Audi R8','2017-07-22 19:00:37','2017-07-22 19:00:37'),(6,6,1,'active','4ppo3ts','Audi R8','2017-07-22 19:00:37','2017-07-22 19:00:37'),(7,7,1,'active','4ppo3ts','Audi R8','2017-07-22 19:00:37','2017-07-22 19:00:37'),(8,8,1,'active','4ppo3ts','Audi R8','2017-07-22 19:00:37','2017-07-22 19:00:37'),(9,9,1,'active','4ppo3ts','Audi R8','2017-07-22 19:00:37','2017-07-22 19:00:37'),(10,10,1,'active','4ppo3ts','Audi R8','2017-07-22 19:00:37','2017-07-22 19:00:37'),(11,11,1,'active','4ppo3ts','Audi R8','2017-07-22 19:00:37','2017-07-22 19:00:37'),(12,12,1,'active','4ppo3ts','Audi R8','2017-07-22 19:00:37','2017-07-22 19:00:37'),(13,13,1,'active','4ppo3ts','Audi R8','2017-07-22 19:00:37','2017-07-22 19:00:37'),(14,14,1,'active','4ppo3ts','Audi R8','2017-07-22 19:00:37','2017-07-22 19:00:37'),(15,15,1,'active','4ppo3ts','Audi R8','2017-07-22 19:00:37','2017-07-22 19:00:37'),(16,16,1,'active','4ppo3ts','Audi R8','2017-07-22 19:00:37','2017-07-22 19:00:37'),(17,17,1,'active','4ppo3ts','Audi R8','2017-07-22 19:00:37','2017-07-22 19:00:37'),(18,18,1,'active','4ppo3ts','Audi R8','2017-07-22 19:00:37','2017-07-22 19:00:37'),(19,19,1,'active','4ppo3ts','Audi R8','2017-07-22 19:00:37','2017-07-22 19:00:37'),(20,20,1,'active','4ppo3ts','Audi R8','2017-07-22 19:00:37','2017-07-22 19:00:37'),(21,21,1,'active','4ppo3ts','Audi R8','2017-07-22 19:00:37','2017-07-22 19:00:37'),(22,22,1,'active','4ppo3ts','Audi R8','2017-07-22 19:00:37','2017-07-22 19:00:37'),(23,23,1,'active','4ppo3ts','Audi R8','2017-07-22 19:00:37','2017-07-22 19:00:37'),(24,24,1,'active','4ppo3ts','Audi R8','2017-07-22 19:00:37','2017-07-22 19:00:37'),(25,25,1,'active','4ppo3ts','Audi R8','2017-07-22 19:00:37','2017-07-22 19:00:37'),(26,26,1,'active','4ppo3ts','Audi R8','2017-07-22 19:00:37','2017-07-22 19:00:37'),(27,27,1,'active','4ppo3ts','Audi R8','2017-07-22 19:00:37','2017-07-22 19:00:37'),(28,28,1,'active','4ppo3ts','Audi R8','2017-07-22 19:00:37','2017-07-22 19:00:37'),(29,29,1,'active','4ppo3ts','Audi R8','2017-07-22 19:00:37','2017-07-22 19:00:37'),(30,30,1,'active','4ppo3ts','Audi R8','2017-07-22 19:00:37','2017-07-22 19:00:37'),(31,31,1,'active','4ppo3ts','Audi R8','2017-07-22 19:00:37','2017-07-22 19:00:37'),(32,32,1,'active','4ppo3ts','Audi R8','2017-07-22 19:00:37','2017-07-22 19:00:37'),(33,33,1,'active','4ppo3ts','Audi R8','2017-07-22 19:00:37','2017-07-22 19:00:37'),(34,34,1,'active','4ppo3ts','Audi R8','2017-07-22 19:00:37','2017-07-22 19:00:37'),(35,35,1,'active','4ppo3ts','Audi R8','2017-07-22 19:00:37','2017-07-22 19:00:37'),(36,36,1,'active','4ppo3ts','Audi R8','2017-07-22 19:00:37','2017-07-22 19:00:37'),(37,37,1,'active','4ppo3ts','Audi R8','2017-07-22 19:00:37','2017-07-22 19:00:37'),(38,38,1,'active','4ppo3ts','Audi R8','2017-07-22 19:00:37','2017-07-22 19:00:37'),(39,39,1,'active','4ppo3ts','Audi R8','2017-07-22 19:00:37','2017-07-22 19:00:37'),(40,40,1,'active','4ppo3ts','Audi R8','2017-07-22 19:00:37','2017-07-22 19:00:37'),(41,41,1,'active','4ppo3ts','Audi R8','2017-07-22 19:00:37','2017-07-22 19:00:37'),(42,42,1,'active','4ppo3ts','Audi R8','2017-07-22 19:00:37','2017-07-22 19:00:37'),(43,43,1,'active','4ppo3ts','Audi R8','2017-07-22 19:00:37','2017-07-22 19:00:37'),(44,44,1,'active','4ppo3ts','Audi R8','2017-07-22 19:00:37','2017-07-22 19:00:37'),(45,45,1,'active','4ppo3ts','Audi R8','2017-07-22 19:00:37','2017-07-22 19:00:37'),(46,46,1,'active','4ppo3ts','Audi R8','2017-07-22 19:00:37','2017-07-22 19:00:37'),(47,47,1,'active','4ppo3ts','Audi R8','2017-07-22 19:00:37','2017-07-22 19:00:37'),(48,48,1,'active','4ppo3ts','Audi R8','2017-07-22 19:00:37','2017-07-22 19:00:37'),(49,49,1,'active','4ppo3ts','Audi R8','2017-07-22 19:00:37','2017-07-22 19:00:37'),(50,50,1,'active','4ppo3ts','Audi R8','2017-07-22 19:00:37','2017-07-22 19:00:37'),(51,51,1,'active','798','57776','2017-07-23 11:35:05','2017-07-23 19:41:12'),(52,54,1,'riding','4843015571','Test 123','2017-07-23 18:39:43','2017-07-23 21:42:12'),(53,55,4,'active','278611','toyota x corolla','2017-07-23 18:43:11','2017-07-25 20:07:09'),(54,57,1,'active','2','we','2017-07-26 18:08:37','2017-07-26 18:14:10');
/*!40000 ALTER TABLE `provider_services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `providers`
--

DROP TABLE IF EXISTS `providers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `providers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rating` decimal(4,2) NOT NULL DEFAULT '5.00',
  `status` enum('onboarding','approved','banned') COLLATE utf8_unicode_ci NOT NULL,
  `fleet` int(11) NOT NULL DEFAULT '0',
  `latitude` double(15,8) DEFAULT NULL,
  `longitude` double(15,8) DEFAULT NULL,
  `otp` mediumint(9) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `login_by` enum('manual','facebook','google') COLLATE utf8_unicode_ci NOT NULL,
  `social_unique_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `providers_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `providers`
--

LOCK TABLES `providers` WRITE;
/*!40000 ALTER TABLE `providers` DISABLE KEYS */;
INSERT INTO `providers` VALUES (1,'Appoets','Demo','demo@appoets.com',NULL,'$2y$10$ivIftE8lU0pDz3bN22c/RObXtD5V6G.YabV.UOgaxCycMHFcy.UVW','http://lorempixel.com/512/512/business/Tranxit',5.00,'approved',0,13.00000000,80.00000000,0,NULL,'2017-07-22 19:00:33','2017-07-22 19:00:33','manual',NULL),(2,'Thomas','Jenkins','thomas@appoets.com',NULL,'$2y$10$Y3Vc7g62MWvgaQORmWuZtOHTtURLjMPQXLw766G7Gsh3/tb4J9lx6','http://lorempixel.com/512/512/business/Tranxit',5.00,'approved',0,13.00000000,80.00000000,0,NULL,'2017-07-22 19:00:33','2017-07-22 19:00:33','manual',NULL),(3,'Rachel','Burns','rachel@appoets.com',NULL,'$2y$10$JMKyzUIXzi9WqYb16iSG4.rWmZGewUoKQt9MrtwEFb1VGWtf2JEqC','http://lorempixel.com/512/512/business/Tranxit',5.00,'approved',0,13.00000000,80.00000000,0,NULL,'2017-07-22 19:00:33','2017-07-22 19:00:33','manual',NULL),(4,'Lorraine','Harris','lorraine@appoets.com',NULL,'$2y$10$HwYj.TqvRndokjvnczq13.VPFDw2XsvYRucMyrvrMGlsZ8mkZOg8O','http://lorempixel.com/512/512/business/Tranxit',5.00,'approved',0,13.00000000,80.00000000,0,NULL,'2017-07-22 19:00:33','2017-07-22 19:00:33','manual',NULL),(5,'Adam','Wagner','adam@appoets.com',NULL,'$2y$10$Zs79XZdgwWvrCmAgdoqbNe4nW0NUEwuq0mvB/Em.L.xLDLM55qsuS','http://lorempixel.com/512/512/business/Tranxit',5.00,'approved',0,13.00000000,80.00000000,0,NULL,'2017-07-22 19:00:33','2017-07-22 19:00:33','manual',NULL),(6,'Christine','Forshee','christine@appoets.com',NULL,'$2y$10$skkS5B32vqiI7hmWN.haruqL0EdP4uO9A./pSzDYzp7jAwa5DnAyy','http://lorempixel.com/512/512/business/Tranxit',5.00,'approved',0,13.00000000,80.00000000,0,NULL,'2017-07-22 19:00:33','2017-07-22 19:00:33','manual',NULL),(7,'Logan','Arce','logan@appoets.com',NULL,'$2y$10$57gGY6Ftb7hOJ.5CXvZ5cehm2dvuNNksmyAwdobT1F2o33f9diX7y','http://lorempixel.com/512/512/business/Tranxit',5.00,'approved',0,13.00000000,80.00000000,0,NULL,'2017-07-22 19:00:34','2017-07-22 19:00:34','manual',NULL),(8,'Joe','Demo','joe@appoets.com',NULL,'$2y$10$zZ85ML9i3bibpbdAhYx0ROg.FdTI.6FAyOib/tXUvVnpq5.WUi0lm','http://lorempixel.com/512/512/business/Tranxit',5.00,'approved',0,13.00000000,80.00000000,0,NULL,'2017-07-22 19:00:34','2017-07-22 19:00:34','manual',NULL),(9,'Price','Jett','price@appoets.com',NULL,'$2y$10$FMwzUigOuyCS9NumN0XLZu0G5YCCuiBwEpVcT8Chv/eFf3QcRjymS','http://lorempixel.com/512/512/business/Tranxit',5.00,'approved',0,13.00000000,80.00000000,0,NULL,'2017-07-22 19:00:34','2017-07-22 19:00:34','manual',NULL),(10,'Lloyd','Bradley','lloyd@appoets.com',NULL,'$2y$10$Bmx29Qwlq/8X5G5/WTAnTOD3BJ9yoF.RIebLb8wI3Cx8tDt6kr7Ve','http://lorempixel.com/512/512/business/Tranxit',5.00,'approved',0,13.00000000,80.00000000,0,NULL,'2017-07-22 19:00:34','2017-07-22 19:00:34','manual',NULL),(11,'Evans','Thompson','evans@appoets.com',NULL,'$2y$10$YXZsEF27HKA3NSEQjAeFPOE4qV2Q7.s0XfwewOcowFDbzh6958fv6','http://lorempixel.com/512/512/business/Tranxit',5.00,'approved',0,13.00000000,80.00000000,0,NULL,'2017-07-22 19:00:34','2017-07-22 19:00:34','manual',NULL),(12,'Jerry','Neely','jerry@appoets.com',NULL,'$2y$10$.wQeXoiYYB5ekw6eIHP.L.csUnvTJd20ZBFP3uQ5R6zlxz36a4wBO','http://lorempixel.com/512/512/business/Tranxit',5.00,'approved',0,13.00000000,80.00000000,0,NULL,'2017-07-22 19:00:34','2017-07-22 19:00:34','manual',NULL),(13,'Teresa','Vaughn','teresa@appoets.com',NULL,'$2y$10$JTc0FD78fyI6TJNNYqUztukrVoFntjuLPcon1qm6di0UbID4XtfBm','http://lorempixel.com/512/512/business/Tranxit',5.00,'approved',0,13.00000000,80.00000000,0,NULL,'2017-07-22 19:00:34','2017-07-22 19:00:34','manual',NULL),(14,'Sarah','Gibson','sarah@appoets.com',NULL,'$2y$10$HYlxea0OD0E3IyZ7AmqaL.BUUQwZM4s/dxWpMOqiTsOtbPKl6F3aq','http://lorempixel.com/512/512/business/Tranxit',5.00,'approved',0,13.00000000,80.00000000,0,NULL,'2017-07-22 19:00:34','2017-07-22 19:00:34','manual',NULL),(15,'Regina','Delacruz','regina@appoets.com',NULL,'$2y$10$Pte4HdGB38s74Q7jAyCnU.kGIIqysT0ai1qSWPH/GW57y3YMzAAnS','http://lorempixel.com/512/512/business/Tranxit',5.00,'approved',0,13.00000000,80.00000000,0,NULL,'2017-07-22 19:00:34','2017-07-22 19:00:34','manual',NULL),(16,'Anthony','Ferguson','anthony@appoets.com',NULL,'$2y$10$9ftY5lKib0/hYxKk2hwxqu0XH/aHDk8rVu2fGuC339KRQMVEi2.Vy','http://lorempixel.com/512/512/business/Tranxit',5.00,'approved',0,13.00000000,80.00000000,0,NULL,'2017-07-22 19:00:34','2017-07-22 19:00:34','manual',NULL),(17,'Gary','Maple','rasheed@appoets.com',NULL,'$2y$10$L8fyi6CzwKPx07T.zN7YUeViMR1VFVz1FTTN6799rnlgTs00motjO','http://lorempixel.com/512/512/business/Tranxit',5.00,'approved',0,13.00000000,80.00000000,0,NULL,'2017-07-22 19:00:34','2017-07-22 19:00:34','manual',NULL),(18,'Robert','Ferguson','jack@appoets.com',NULL,'$2y$10$Wdnwmm0mRkUezHVnz.CG/OMYHyqqtCCbVSAUuNbCE7/UC8jh5ppei','http://lorempixel.com/512/512/business/Tranxit',5.00,'approved',0,13.00000000,80.00000000,0,NULL,'2017-07-22 19:00:34','2017-07-22 19:00:34','manual',NULL),(19,'Charles','Ferguson','bobby@appoets.com',NULL,'$2y$10$rvTNj9YwNxz9/kLg4yYyUuVXndHQq.RlSeK79nPCHhLjJnXvu/LWi','http://lorempixel.com/512/512/business/Tranxit',5.00,'approved',0,13.00000000,80.00000000,0,NULL,'2017-07-22 19:00:34','2017-07-22 19:00:34','manual',NULL),(20,'Michael','Ferguson','chunky@appoets.com',NULL,'$2y$10$cg1gw0vwhjK3SQnx0ULqPOi9o3rembrI.4tpehhJ7l3IapBfSuTIm','http://lorempixel.com/512/512/business/Tranxit',5.00,'approved',0,13.00000000,80.00000000,0,NULL,'2017-07-22 19:00:35','2017-07-22 19:00:35','manual',NULL),(21,'Patrick','Ferguson','silk@appoets.com',NULL,'$2y$10$jI/iX8tuXjZ2bAx4T4qNfOQlI8tKKwMUMUan3FwABtHCikhjQISYO','http://lorempixel.com/512/512/business/Tranxit',5.00,'approved',0,13.00000000,80.00000000,0,NULL,'2017-07-22 19:00:35','2017-07-22 19:00:35','manual',NULL),(22,'Arturo','Arturo','gil@appoets.com',NULL,'$2y$10$uzLH8ZRncFmgOS5L2idGa.EhRCluSfaHl5g.B3pu1AdjjwosB5yOu','http://lorempixel.com/512/512/business/Tranxit',5.00,'approved',0,13.00000000,80.00000000,0,NULL,'2017-07-22 19:00:35','2017-07-22 19:00:35','manual',NULL),(23,'Anthony','Ken','stego@appoets.com',NULL,'$2y$10$ZIl5l7uFyMoOn0edvkEuoOobgBM/DsPlV24NMDVO8I8Hz5Pp1APFK','http://lorempixel.com/512/512/business/Tranxit',5.00,'approved',0,13.00000000,80.00000000,0,NULL,'2017-07-22 19:00:35','2017-07-22 19:00:35','manual',NULL),(24,'Anthony','Clinton','rodney@appoets.com',NULL,'$2y$10$McOTKYCCz8CidG7U2s5pTOqq3C10DRGB/SZjUaAuFEVN/rrrsx8oi','http://lorempixel.com/512/512/business/Tranxit',5.00,'approved',0,13.00000000,80.00000000,0,NULL,'2017-07-22 19:00:35','2017-07-22 19:00:35','manual',NULL),(25,'Gabriel','Ferguson','spork@appoets.com',NULL,'$2y$10$lO8OkKmXGYL.m58FiGAcBu9WFAaNX3fz/i83McUwqDwkK8m.F9HHy','http://lorempixel.com/512/512/business/Tranxit',5.00,'approved',0,13.00000000,80.00000000,0,NULL,'2017-07-22 19:00:35','2017-07-22 19:00:35','manual',NULL),(26,'Paul','Ferguson','paul@appoets.com',NULL,'$2y$10$0CsAOkHX396srcflWdcM.etzjGSz1eLO9M6s19ifoSzkVGjZO4YwC','http://lorempixel.com/512/512/business/Tranxit',5.00,'approved',0,13.00000000,80.00000000,0,NULL,'2017-07-22 19:00:35','2017-07-22 19:00:35','manual',NULL),(27,'Gabriel','Giuseppe','giuseppe@appoets.com',NULL,'$2y$10$XBYAaA6bBbhydIPe.9L.vOZhYcjXeBmgTm3LlTaIa1TSuG.zo0bOC','http://lorempixel.com/512/512/business/Tranxit',5.00,'approved',0,13.00000000,80.00000000,0,NULL,'2017-07-22 19:00:35','2017-07-22 19:00:35','manual',NULL),(28,'Pog','Ferguson','pog@appoets.com',NULL,'$2y$10$Xw1dGTtWcbqi5bb51D0eVOWmM2TinIp4GsGqP2mlf4BKU.BJzdq0S','http://lorempixel.com/512/512/business/Tranxit',5.00,'approved',0,13.00000000,80.00000000,0,NULL,'2017-07-22 19:00:35','2017-07-22 19:00:35','manual',NULL),(29,'Steve','Ferguson','steve@appoets.com ',NULL,'$2y$10$6/JxlMXvi9DSqwb5sWSkaeuGSD4svnByNiG09YMUJamKGa7kdPlOe','http://lorempixel.com/512/512/business/Tranxit',5.00,'approved',0,13.00000000,80.00000000,0,NULL,'2017-07-22 19:00:35','2017-07-22 19:00:35','manual',NULL),(30,'Beauregard','Asscan','beauregard@appoets.com',NULL,'$2y$10$5A.Y2fSX34s/gAd0U.KbUebjuAs3m0eTVuyb56OHE8fILnyVXKKr.','http://lorempixel.com/512/512/business/Tranxit',5.00,'approved',0,13.00000000,80.00000000,0,NULL,'2017-07-22 19:00:35','2017-07-22 19:00:35','manual',NULL),(31,'Tex','Montreal','tex@appoets.com',NULL,'$2y$10$ebxCtl97Plye7ZO6jrxvnOgdeJMbqjgSrmMAvs5viFL90G1nqV4WS','http://lorempixel.com/512/512/business/Tranxit',5.00,'approved',0,13.00000000,80.00000000,0,NULL,'2017-07-22 19:00:35','2017-07-22 19:00:35','manual',NULL),(32,'Ambassador','Nikolai','ambassador@appoets.com',NULL,'$2y$10$aJ0PHiu6AV33R2VkA6fRQu1GPDbem3xgJuk92uMn9eUJgFovVrKti','http://lorempixel.com/512/512/business/Tranxit',5.00,'approved',0,13.00000000,80.00000000,0,NULL,'2017-07-22 19:00:35','2017-07-22 19:00:35','manual',NULL),(33,'Yolo','Pepperoni','yolo@appoets.com',NULL,'$2y$10$LhAeHjAP8ze34cFcX5xWJ.ZGGH15gAHIBefaFMq4KQrke4b1u9GFq','http://lorempixel.com/512/512/business/Tranxit',5.00,'approved',0,13.00000000,80.00000000,0,NULL,'2017-07-22 19:00:36','2017-07-22 19:00:36','manual',NULL),(35,'Magellan','Lasagna','lasagna@appoets.com',NULL,'$2y$10$w0hwfvQB4VGleDW/Wo2vWuBeVG1YvjIZRvbXxm94BnORHqXqIZjbO','http://lorempixel.com/512/512/business/Tranxit',5.00,'approved',0,13.00000000,80.00000000,0,NULL,'2017-07-22 19:00:36','2017-07-22 19:00:36','manual',NULL),(36,'Bonezone','VanLandingham','vanlandingham@appoets.com',NULL,'$2y$10$LUFLhBWhPOS.U5gtMueyiexeauNC1TLh8mLDKl768thBp91XMdEJ2','http://lorempixel.com/512/512/business/Tranxit',5.00,'approved',0,13.00000000,80.00000000,0,NULL,'2017-07-22 19:00:36','2017-07-22 19:00:36','manual',NULL),(37,'Carl','Discotheque','discotheque@appoets.com',NULL,'$2y$10$Is5FisKhroHMOGz4Oh8aM.2HPwRjtRFPsAaG.IaZNRa.7v8DEGb6G','http://lorempixel.com/512/512/business/Tranxit',5.00,'approved',0,13.00000000,80.00000000,0,NULL,'2017-07-22 19:00:36','2017-07-22 19:00:36','manual',NULL),(38,'Teddy','Nuggets','nuggets@appoets.com',NULL,'$2y$10$5p5ZO47x/0rnLrYU0jNJ/ejuitKL9gRB1aHoSF/SOPCDIeuSkJHu.','http://lorempixel.com/512/512/business/Tranxit',5.00,'approved',0,13.00000000,80.00000000,0,NULL,'2017-07-22 19:00:36','2017-07-22 19:00:36','manual',NULL),(39,'Kid','Lupus','lupus@appoets.com',NULL,'$2y$10$64LbbDTLGE8OWiHxqftGB.RiKKKO.TXz5iOJ45rHb0nPZxpQgEsd2','http://lorempixel.com/512/512/business/Tranxit',5.00,'approved',0,13.00000000,80.00000000,0,NULL,'2017-07-22 19:00:36','2017-07-22 19:00:36','manual',NULL),(40,'Kale','Arugula','arugula@appoets.com',NULL,'$2y$10$/8JggFDbp6YE0e2hv2kt5eCT.yVHgZvIHqU7PWIwPEtKrh9bwcUbO','http://lorempixel.com/512/512/business/Tranxit',5.00,'approved',0,13.00000000,80.00000000,0,NULL,'2017-07-22 19:00:36','2017-07-22 19:00:36','manual',NULL),(41,'Luke','Sexgator','sexgato@appoets.com',NULL,'$2y$10$9BOkyZ0vZdCCrYTRpiuAMOt1sQESMaw.3hAX65yMfa1btfMaq0QIS','http://lorempixel.com/512/512/business/Tranxit',5.00,'banned',0,13.00000000,80.00000000,0,NULL,'2017-07-22 19:00:36','2017-07-22 20:13:45','manual',NULL),(42,'Ludwig','Instagram','instagram@appoets.com',NULL,'$2y$10$eqEVxY8XYXv.cM5mKFugyO3OQduwu084ytVs1pY8q7pY.YBaRhqwa','http://lorempixel.com/512/512/business/Tranxit',5.00,'approved',0,13.00000000,80.00000000,0,NULL,'2017-07-22 19:00:36','2017-07-22 19:00:36','manual',NULL),(51,'Vick','Rotich','vyrosoft@gmail.com','+254725202227','$2y$10$MNlBrBcRSQo3ywyocR2gluIkwQ.zy0McJfQCgBX11tgpd54wYDzl.',NULL,5.00,'approved',0,-1.19968700,36.92420940,0,NULL,'2017-07-23 11:32:29','2017-07-24 22:47:05','manual',NULL),(52,'Vin','K','vinukoech@gmail.com','+254702244756','$2y$10$zev0zvy6QfOw1h6xR8zRaeBEsnFeETgUZrQv/fhkqzMOgBq7mtDEu',NULL,5.00,'onboarding',0,-1.19912840,36.92337030,0,NULL,'2017-07-23 14:47:29','2017-07-23 15:07:15','manual',NULL),(53,'Rotich','Victor','rotichvictor0@gmail.com','+254702244756','$2y$10$cybJIe4VaAAV01r8ZVkamuU9yKYJm2NKAOnHugDgf5ClFcsVa3uCi',NULL,5.00,'onboarding',0,-1.19964460,36.92418930,0,NULL,'2017-07-23 17:30:49','2017-07-23 19:40:17','manual',NULL),(54,'Tesr','Driver','abc@spitworld.com','+8801818834309','$2y$10$3mbVSFhlVG6Rxt/HkzDXL.gADmIuG5xWIdBKl12VuenY0EC5Lx4vC',NULL,5.00,'approved',0,23.75521780,90.39303420,0,NULL,'2017-07-23 17:33:30','2017-07-23 21:52:20','manual',NULL),(55,'priti','lata','pritilata@gmail.com','+8801521432229','$2y$10$PO1nXrTXPXkT5.9juZPYWePy5.sukOgxn3KD3CCRz8vxsmeuP5coq',NULL,3.00,'approved',0,23.75542899,90.39311532,0,'sZxACvA9tvxjV1JXIg4FiPMGpWwhy5OdrCPOQrgFolwubttooLh15ddpHuoc','2017-07-23 18:35:36','2017-07-26 15:33:41','manual',NULL),(56,'Toshio','Azuma','toshioazuma101@yahoo.com','11111111','$2y$10$8ONcOJm4RtNItC5Md2PfN.xlPFBZGa9fWCw69g6DuXrv9DzpcwlX.','provider/profile/db3930525499ad749b4aac3b91a529f5.jpeg',5.00,'onboarding',0,0.00000000,0.00000000,0,NULL,'2017-07-25 08:59:52','2017-07-26 17:38:28','manual',NULL),(57,'Dty','Ggh','fgg@gmail.com','+8801781474903','$2y$10$XtdwrAciFdL3MK.9XT5EqOH0rU17/0/H519jFXoe1MSFoHgkU0PC6',NULL,5.00,'approved',0,23.75513269,90.38991975,0,NULL,'2017-07-26 18:04:56','2017-07-26 18:32:25','manual',NULL);
/*!40000 ALTER TABLE `providers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `request_filters`
--

DROP TABLE IF EXISTS `request_filters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `request_filters` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `request_id` int(11) NOT NULL,
  `provider_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `request_filters`
--

LOCK TABLES `request_filters` WRITE;
/*!40000 ALTER TABLE `request_filters` DISABLE KEYS */;
INSERT INTO `request_filters` VALUES (4,12,54,2,'2017-07-23 21:42:12','2017-07-23 21:42:25');
/*!40000 ALTER TABLE `request_filters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service_types`
--

DROP TABLE IF EXISTS `service_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `service_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `provider_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `capacity` int(11) NOT NULL DEFAULT '0',
  `fixed` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `minute` int(11) NOT NULL,
  `distance` int(11) NOT NULL,
  `calculator` enum('MIN','HOUR','DISTANCE','DISTANCEMIN','DISTANCEHOUR') COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_types`
--

LOCK TABLES `service_types` WRITE;
/*!40000 ALTER TABLE `service_types` DISABLE KEYS */;
INSERT INTO `service_types` VALUES (1,'Groceries','Driver','https://app.mypyckup.com/uploads/88f396f74a4d7f3e55d559b7c484829f4c68331d.png',0,2,10,0,1,'DISTANCE',NULL,1,'2017-07-22 19:00:29','2017-07-23 10:34:10'),(2,'Furniture','Driver','https://app.mypyckup.com/uploads/0e594afd3944063b6b804a152af7b603b1a696c5.png',0,2,10,0,1,'DISTANCE',NULL,1,'2017-07-22 19:00:29','2017-07-23 10:34:41'),(3,'Goods','Driver','https://app.mypyckup.com/uploads/6828794ea37b22905968b0a7973e245d69507100.png',0,2,10,0,1,'DISTANCE',NULL,1,'2017-07-22 19:00:29','2017-07-23 10:35:18'),(4,'Electronics ','Driver','https://app.mypyckup.com/uploads/4e51ebcff84a9a589d0360044dbeb6e091db0010.png',0,2,10,0,1,'DISTANCE',NULL,1,'2017-07-22 19:00:29','2017-07-23 10:39:35'),(5,'Hardware','Driver','https://app.mypyckup.com/uploads/dd821b67c0017953d65c120dfc4f3e22e831d4a5.png',0,2,0,0,0,'DISTANCE','.',1,'2017-07-23 10:41:21','2017-07-23 10:41:21');
/*!40000 ALTER TABLE `service_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `settings_key_index` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'site_title','MyPyckUp '),(2,'site_logo','https://app.mypyckup.com/uploads/ce125c5acdb938d1199c611ed1a45dcb90770db3.jpg'),(3,'site_email_logo','http://app.mypyckup.com/logo-white.png'),(4,'site_icon','https://app.mypyckup.com/uploads/47d2b4978c72fc1661a93bbf5b7adb06a2fef6e4.png'),(5,'site_copyright','&copy; 2017 MyPyckUP'),(6,'provider_select_timeout','120'),(7,'provider_search_radius','500'),(8,'base_price','50'),(9,'price_per_minute','50'),(10,'tax_percentage','0'),(11,'stripe_secret_key','sk_live_M3zb8lmOOUkToidVQhRHocMQ'),(12,'stripe_publishable_key','pk_live_R2Rz0EHEhxz8QRu9G74gksvJ'),(13,'CASH','0'),(14,'CARD','1'),(15,'PAYPAL','0'),(16,'manual_request','0'),(17,'default_lang','en'),(18,'currency','$'),(19,'distance','Km'),(20,'scheduled_cancel_time_exceed','10'),(21,'price_per_kilometer','10'),(22,'commission_percentage','0'),(23,'store_link_android','#'),(24,'store_link_ios','#'),(25,'daily_target','0'),(26,'surge_percentage','0'),(27,'surge_trigger','0'),(28,'demo_mode','0'),(29,'booking_prefix','TRNX'),(30,'sos_number','8667771791'),(31,'contact_number','8667771791'),(32,'contact_email','support@mypyckup.com');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_request_payments`
--

DROP TABLE IF EXISTS `user_request_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_request_payments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `request_id` int(11) NOT NULL,
  `promocode_id` int(11) DEFAULT NULL,
  `payment_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_mode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fixed` double(10,2) NOT NULL DEFAULT '0.00',
  `distance` double(10,2) NOT NULL DEFAULT '0.00',
  `commision` double(10,2) NOT NULL DEFAULT '0.00',
  `discount` double(10,2) NOT NULL DEFAULT '0.00',
  `tax` double(10,2) NOT NULL DEFAULT '0.00',
  `wallet` double(10,2) NOT NULL DEFAULT '0.00',
  `surge` double(10,2) NOT NULL DEFAULT '0.00',
  `total` double(10,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_request_payments`
--

LOCK TABLES `user_request_payments` WRITE;
/*!40000 ALTER TABLE `user_request_payments` DISABLE KEYS */;
INSERT INTO `user_request_payments` VALUES (1,15,NULL,NULL,NULL,6.00,0.00,0.00,0.00,0.00,0.00,0.00,6.00,'2017-07-25 14:34:46','2017-07-25 14:34:46'),(2,15,NULL,NULL,NULL,6.00,0.00,0.00,0.00,0.00,0.00,0.00,6.00,'2017-07-25 14:34:47','2017-07-25 14:34:47'),(3,15,NULL,NULL,NULL,6.00,0.00,0.00,0.00,0.00,0.00,0.00,6.00,'2017-07-25 14:34:47','2017-07-25 14:34:47'),(4,16,NULL,NULL,NULL,2.00,0.00,0.00,0.00,0.00,0.00,0.00,2.00,'2017-07-25 20:06:21','2017-07-25 20:06:21'),(5,17,NULL,NULL,NULL,2.00,0.00,0.00,0.00,0.00,0.00,0.00,2.00,'2017-07-26 18:13:50','2017-07-26 18:13:50');
/*!40000 ALTER TABLE `user_request_payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_request_ratings`
--

DROP TABLE IF EXISTS `user_request_ratings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_request_ratings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `request_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `provider_id` int(11) NOT NULL,
  `user_rating` int(11) NOT NULL DEFAULT '0',
  `provider_rating` int(11) NOT NULL DEFAULT '0',
  `user_comment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `provider_comment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_request_ratings`
--

LOCK TABLES `user_request_ratings` WRITE;
/*!40000 ALTER TABLE `user_request_ratings` DISABLE KEYS */;
INSERT INTO `user_request_ratings` VALUES (1,15,71,55,4,3,'','','2017-07-25 14:36:44','2017-07-25 14:41:14'),(2,16,71,55,2,3,'','good','2017-07-25 20:07:09','2017-07-25 20:07:35'),(3,17,75,57,0,4,NULL,'','2017-07-26 18:14:10','2017-07-26 18:14:10');
/*!40000 ALTER TABLE `user_request_ratings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_requests`
--

DROP TABLE IF EXISTS `user_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_requests` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `booking_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `provider_id` int(11) NOT NULL DEFAULT '0',
  `current_provider_id` int(11) NOT NULL,
  `service_type_id` int(11) NOT NULL,
  `status` enum('SEARCHING','CANCELLED','ACCEPTED','STARTED','ARRIVED','PICKEDUP','DROPPED','COMPLETED','SCHEDULED') COLLATE utf8_unicode_ci NOT NULL,
  `cancelled_by` enum('NONE','USER','PROVIDER') COLLATE utf8_unicode_ci NOT NULL,
  `cancel_reason` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_mode` enum('CASH','CARD','PAYPAL') COLLATE utf8_unicode_ci NOT NULL,
  `paid` tinyint(1) NOT NULL DEFAULT '0',
  `distance` double(15,8) NOT NULL,
  `s_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `s_latitude` double(15,8) NOT NULL,
  `s_longitude` double(15,8) NOT NULL,
  `d_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `weight` double(8,2) NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `comments` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `d_latitude` double(15,8) NOT NULL,
  `d_longitude` double(15,8) NOT NULL,
  `assigned_at` timestamp NULL DEFAULT NULL,
  `schedule_at` timestamp NULL DEFAULT NULL,
  `started_at` timestamp NULL DEFAULT NULL,
  `finished_at` timestamp NULL DEFAULT NULL,
  `user_rated` tinyint(1) NOT NULL DEFAULT '0',
  `provider_rated` tinyint(1) NOT NULL DEFAULT '0',
  `use_wallet` tinyint(1) NOT NULL DEFAULT '0',
  `surge` tinyint(1) NOT NULL DEFAULT '0',
  `route_key` longtext COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_requests`
--

LOCK TABLES `user_requests` WRITE;
/*!40000 ALTER TABLE `user_requests` DISABLE KEYS */;
INSERT INTO `user_requests` VALUES (1,'TRNX119214',51,0,0,1,'SEARCHING','NONE',NULL,'CASH',0,0.43500000,'401 Massachusetts Avenue, Boston, MA, United States',42.34118240,-71.08304320,'502 Massachusetts Avenue, Boston, MA, United States',2,1.00,'',NULL,42.33927700,-71.08009700,'2017-07-22 20:28:55','2017-07-22 15:00:00',NULL,NULL,0,0,0,0,'svlaG~lzpLjB}Cb@s@z@jAV]`@g@dDiELSEKGI_AuBSk@',NULL,'2017-07-22 20:28:55','2017-07-22 20:28:55'),(2,'TRNX552165',57,0,0,4,'SEARCHING','NONE',NULL,'CASH',0,235.98200000,'Khulna Medical College Hospital, Khulna, Bangladesh',22.82816620,89.53714090,'Dhaka Division, Bangladesh',1,1.50,'',NULL,23.95357420,90.14949880,'2017-07-23 17:59:24','2017-07-25 04:00:00',NULL,NULL,0,0,0,0,'}qijCcvnaP_MeDl@_HfSmb@`BoVhOsG~D_AdAkLd@kAnVw@vWmK`HoIJOdPu[WsC`Uef@h]c|@pSoeB|Kgj@`|@{s@dk@uc@|e@kFft@qJxb@g_@h`@c]tq@{Xn]qL`UswAmWme@mc@aoCmp@mrAoQyd@wZ}Pgc@yOgKoRmR{kAiT_S{[gLuh@kHcq@ye@yr@o`@sXqByW_D_}@qi@c_Acl@mnAyE}nAmJ_~Aik@mgBeeAufAg_Akl@_iAy]yf@}qDqu@ao@ux@oLwFunAuE}cCqT{w@st@yoBqw@qUvDss@xb@mJr_@}@~f@eBx`@wY`]sMxo@oSp_Amb@xs@ui@x}@_g@lv@uz@dS_vAzJwt@cHyUfDw_@bZ{YnKoh@vDk`AiKqlAeOahAcNsp@mYyj@uVghAcXe_@mBov@j]ak@zoAiEpp@cKxaBqt@tdAoUtd@se@jj@oErLo@\\}Li\\w`@opAor@i_Aw_A{iAcb@c^e}Be`BcVyQsKyTam@iaBa`Ag`Cyk@mm@wNg|@_\\}h@ac@ozBcKcZeJcKiYaHu[kEcIgIgR}Tqr@ke@c\\s]{PcUyy@kMew@i`@w}AgdAayAwiByfAsiA{CwVnA{k@V_NsKc@yALmGDiG]sCw@}[qC_l@yK_RmToCuQtDsXmZdE_o@jQgF~F_h@`Mm[f]ejAffBiwAnxBs[ba@wl@p\\oa@`QsS~SqVvd@{\\hYoMlNuUpMyPvO{P~d@_e@z_@a_@hI{|@qMsq@tl@i[ta@}oAvHsZ`F_QxGuCht@zAr|@obAfvAig@dl@eTbH|A|CQb@qm@`hBo[pq@sYpUqmA`p@ktAlx@smAvyBoiBvhC{f@fe@eq@fy@}_@t\\_WpMeAaB{s@uw@wA{o@yl@wu@aQqp@s^{RifBytAes@qqAcvAod@yu@id@cv@ga@mNuBgDgSkAwIuFd@MCo@y@u\\eRab@g{Ak[eh@~@iJt@qGkDBgVxS{JsGk\\dGo_B_A{cA_]adChW{Iib@yBelAdAmy@oGgt@aW{mB}Aov@vK}p@v@ej@qQskByPsbAPcs@|V_sAnGob@s@}o@g~ByrAoF_QsFm}@zBeYjIunAcReiBu^mf@mP_}@sPeQsx@iXem@iTc[yXmHyp@e]sxByXcpAuBgw@S{UkQwA_`@kCsRqNeXw@iNca@uLeGaFaHo^_KqZeMmRzDoTsEcHmEoNNcLi@[yHsBiSsIqF{@iMoBq^sGm\\`@eVlF{Ef[aVdHyELfDdAmMzBsf@pAfE~EcC?sA',NULL,'2017-07-23 17:59:24','2017-07-23 17:59:24'),(3,'TRNX256442',59,55,55,4,'CANCELLED','PROVIDER',NULL,'CASH',0,259.24700000,'City Inn Ltd., Majid Sarani, Khulna, Khulna Division, BD',22.82088400,89.55121600,'Tejturi Bazar, Dhaka, Dhaka Division, Bangladesh',2,1.00,'',NULL,23.75609480,90.39190590,'2017-07-23 18:50:52','2017-08-03 00:50:00',NULL,NULL,0,0,0,0,'qfhjCaoqaPtAjGiIkOSw@vOa@|h@qWzOw_@lVal@|P_b@zMgw@tYaiBpdBazAhzA}Qzz@uq@jz@{c@|WiIxLaDVaHhOcbA`B}OeR{WiMcaAwU{qAo\\}i@ee@cnA}QwQui@yOwNkQ}Jis@iVak@o[cPmk@kHq}AsbA}y@wLcxB}tAs{CyPg}Ayf@yv@ae@wmAiv@_eAycAap@arAuXwPkvAsZmuAa\\ck@st@onDqVsg@mEkXgQw_@ma@}b@cQa_Aqc@uVcCaZ`Kcd@hWeGzNkJni@zBlc@cHdWc^df@}UbxAqv@htA}k@~`AsP~Ww]rLshApPc{@m@qx@u@{u@lg@y|@dEssAuPynBgVq{A{n@akB}`@cv@zW}n@dpA_Hdn@wAvz@wFfi@oNfWwv@rmAes@z`A}@bAgUer@y`@oiAciAqtAs~AazAyuBqzAygAkqC}h@{tAeYq`@}a@em@iRa`AoQaTkUidA_XemAcYyWkq@}Nam@ek@yt@wk@oOqWa|A{^c~AcdAe\\sT_\\ea@}Xkd@}~@i`Aic@qd@}GkTnBabAiT}@wKIsBKaq@yGmCsB}O}EaWk[bBi^j@gF{RfEmt@rR_G~Gw[|Cqh@bf@wyAfwBqxAbbCunAho@_Z|S_Xnf@ak@xl@{i@p[mMf^}e@tg@}Z`Le\\yBsd@}J}RzMyn@xk@gMrTw^tAw}AjPcGfj@lDfp@f@|VeFpJw}AlvByUfKqBtFJT[ZagApvCoz@vl@skAbn@cu@tc@wYzg@gbBhmCi{AfmBioAzyAqd@lSmVqWe]kj@eAc_@gI_Ugb@se@gQ_q@mcBugAkp@}v@_a@qx@_^gOsmAg`@_`BuaAqLuI_AkIaIqHq@q@{HwBeSyNgQqp@yOui@iX}`@{AgL|BwLkK|EkQbMwOmFyk@lEqeAm@yYkIcj@_Smr@xFytAvNmJ{p@AemBoPqzAcRsjBtJseAbDyh@eE_j@sUynBoIo`Ad\\}yBlH_q@mb@_e@uaBq}@mKmf@~IcjBzBg[gCcXvP_GjZkEvKPpJaBru@gCvOs@dBkJhDwJ`A_TfB{WrLkAvMgBbQmCfNyRpg@cpArQsz@hf@aPxPgLnAmNn[qn@jAkb@dIg`@eC{_@iCeJVoQoa@_^`MeoAh[svDpLo`B_No`Dt@uw@dTin@nHqh@aBsd@TyqB~E_uAxa@iw@zBaoAiAid@rf@qMcD_eBkKwfBfScyApNydCbWef@`Ok|@tAmp@|S_l@`F}\\jUi_@zc@gRd[{I_Ci`AnBoo@vm@_IpC{G',NULL,'2017-07-23 18:50:52','2017-07-25 14:49:37'),(4,'TRNX496803',60,0,0,4,'SEARCHING','NONE',NULL,'CASH',0,258.78900000,'City Inn Ltd., Majid Sarani, Khulna, Khulna Division, BD',22.82088400,89.55121600,'Tejgaon, Dhaka, Dhaka Division, Bangladesh',1,2.00,'',NULL,23.75981500,90.39131720,'2017-07-23 18:55:33','2017-07-24 01:00:00',NULL,NULL,0,0,0,0,'qfhjCaoqaPtAjGiIkOSw@vOa@|h@qWzOw_@lVal@|P_b@zMgw@tYaiBpdBazAhzA}Qzz@uq@jz@{c@|WiIxLaDVaHhOcbA`B}OeR{WiMcaAwU{qAo\\}i@ee@cnA}QwQui@yOwNkQ}Jis@iVak@o[cPmk@kHq}AsbA}y@wLcxB}tAs{CyPg}Ayf@yv@ae@wmAiv@_eAycAap@arAuXwPkvAsZmuAa\\ck@st@onDqVsg@mEkXgQw_@ma@}b@cQa_Aqc@uVcCaZ`Kcd@hWeGzNkJni@zBlc@cHdWc^df@}UbxAqv@htA}k@~`AsP~Ww]rLshApPc{@m@qx@u@{u@lg@y|@dEssAuPynBgVq{A{n@akB}`@cv@zW}n@dpA_Hdn@wAvz@wFfi@oNfWwv@rmAes@z`A}@bAgUer@y`@oiAciAqtAs~AazAyuBqzAygAkqC}h@{tAeYq`@}a@em@iRa`AoQaTkUidA_XemAcYyWkq@}Nam@ek@yt@wk@oOqWa|A{^c~AcdAe\\sT_\\ea@}Xkd@}~@i`Aic@qd@}GkTnBabAiT}@wKIsBKaq@yGmCsB}O}EaWk[bBi^j@gF{RfEmt@rR_G~Gw[|Cqh@bf@wyAfwBqxAbbCunAho@_Z|S_Xnf@ak@xl@{i@p[mMf^}e@tg@}Z`Le\\yBsd@}J}RzMyn@xk@gMrTw^tAw}AjPcGfj@lDfp@f@|VeFpJw}AlvByUfKqBtFJT[ZagApvCoz@vl@skAbn@cu@tc@wYzg@gbBhmCi{AfmBioAzyAqd@lSmVqWe]kj@eAc_@gI_Ugb@se@gQ_q@mcBugAkp@}v@_a@qx@_^gOsmAg`@_`BuaAqLuI_AkIaIqHq@q@{HwBeSyNgQqp@yOui@iX}`@{AgL|BwLkK|EkQbMwOmFyk@lEqeAm@yYkIcj@_Smr@xFytAvNmJ{p@AemBoPqzAcRsjBtJseAbDyh@eE_j@sUynBoIo`Ad\\}yBlH_q@mb@_e@uaBq}@mKmf@~IcjBzBg[gCcXvP_GjZkEvKPpJaBru@gCvOs@dBkJhDwJ`A_TfB{WrLkAvMgBbQmCfNyRpg@cpArQsz@hf@aPxPgLnAmNn[qn@jAkb@dIg`@oGak@VoQoa@_^`MeoAh[svDpLo`B_No`Dt@uw@dTin@lEenAtFygExa@iw@zBaoAiAid@rf@qMcD_eBkKwfBfScyApNydCbWef@`Ok|@tAmp@|S_l@`F}\\jUi_@zc@gRd[{I_Ci`AnBoo@jEQlHyHtHeAzA_@',NULL,'2017-07-23 18:55:33','2017-07-23 18:55:33'),(5,'TRNX276305',60,0,0,4,'SEARCHING','NONE',NULL,'CASH',0,6.75600000,'CITY INN, Dhaka, Bangladesh',23.86083730,90.39941500,'Tejgaon Circle, Dhaka Division, Bangladesh',2,1.00,'',NULL,23.81033200,90.41251810,'2017-07-23 18:57:46','2017-07-24 01:00:00',NULL,NULL,0,0,0,0,'cispCicwfPNcBM}@Gc@^KjAe@~@g@^SzAiAzLqJfNoK|OcMlDoCfBkABENOJGnBqAhGwEhPiMhKgIlPiMdBkAdCyAlDgB`Bo@zBo@bGqAxB]|HiA|RgB|NuAfNoAbCMpAC`BDlCXrCr@lBz@nBjAj@^p@n@bAnA|AfChIzNl@hAXd@^WDGf@[n@lAdI~KhMWzJS~JSDlB',NULL,'2017-07-23 18:57:46','2017-07-23 18:57:46'),(6,'TRNX819060',59,54,54,1,'CANCELLED','PROVIDER',NULL,'CASH',0,251.69100000,'Tejturi Bazar Road, Dhaka, Bangladesh',23.75577100,90.39250780,'Khulna Division, Bangladesh',3,1.00,'',NULL,22.80878160,89.24671910,'2017-07-23 19:02:57','2017-07-23 13:00:00',NULL,NULL,0,0,0,0,'qx~oCexufPcBmHyQe@}VuALxNyInh@fAv`AkBb[ib@xLaXlMkKxOiNjg@qQld@}Etx@yObbAsVbe@_@jt@a]tlCwBvy@fLfoAxA`~Aof@bN~Ajd@oChnA_d@l_A{CfuANbqB}F|gAyUts@~@n`AtLdwC{QdxBuVb~C{J|jAz`@b^{@tPnHxO[hYkIja@kAvb@m[xm@}ApNsTxMgb@xMmR~|@wh@zpAsM`RqRpAgMdAgJvEiBdVm@bKQbFuDtKaBlIaP^_u@zCyJjAgl@fFgLdBvAjL~AlPiEbc@yGrbBdLfd@z|BbrA|Crk@uFbZq[duBb`@hpDdE~i@cDxh@uJreApRjjB`PxzA@dmBlJzp@xtAwNlr@yFbj@~RzYzHneA|@|f@{CjTvDjQwLjKiFoBvJMzIlf@nx@rLpo@vT~b@pQ~Fn@t@|Fc@|HqGhBF|CxBlAr]vOzNnp@n`@laA`f@|_A`[bSbZjr@jjA|sBduAjZx|@lc@tg@bCpb@jCzVpq@xp@jVuK|_@u\\dq@gy@zf@ge@niBwhCrmAwyB|bDoiBrYqUn[qq@tl@}hB^WpR|\\d]p_AvOrHxj@q@tm@lJ``Ad`AxR|S~c@lGvRnTjJp^vGht@pMhl@wFpP{Zdl@bW||@lVpt@}Tns@rAfa@tSlp@UfhBcGjkAe\\dsCZni@eTb~@i@hj@`OjUh_A|p@rAd`@~Qnp@y`@fuGcM~dAwU~Lge@lo@kRvkAdAnIf]nOxVxK`Uxg@`t@~`BfGja@vO~pAl]fm@ji@niA|u@dqBbg@~Zht@n[jCzr@lZzAjgAp\\ffAdKhO~H~vBjSnnCzq@j`A|r@pkBdyA~m@pPrYrJzRdTnwB`hDlbCd{BxlAfaAfeAvwAh_CprChs@rfArQzr@gA|WvRp`@dTlJ|_@pPnShDbo@dVhe@bVf{@gGziB~Qpx@ro@n^dKrp@vMfg@jN`w@fBdYg@nCaX`c@eL`^aJtb@wBfPuH~f@sc@jj@{b@xFyO|Bqa@rHqRxIcNjO`Azj@dKlb@fC`q@yEtd@rInHpJlCbK~QnA~t@lIhy@j_@~\\nDll@gB~qBbUzaAnIjpAyMxf@eCzO{Ax_BwMph@j@p[fI~n@zCvh@vJrt@jPt^wCdl@kDzg@v@r{@dJz{@`a@j~@`Rr~@`AnRaEjTn@`WqA`WeM|tBioClmAw{@ne@oN|KXbV{f@bT{k@dZs^t_@_c@rDiq@lImSlGeOpNxM|KzKhM|KnHvIvTjVfWhm@hc@dzAbNlXhE`n@vXn`@fOsM',NULL,'2017-07-23 19:02:57','2017-07-23 19:07:42'),(7,'TRNX376105',59,0,0,1,'SEARCHING','NONE',NULL,'CASH',0,268.66000000,'Tejturi Bazar Road, Dhaka, Bangladesh',23.75577100,90.39250780,'Khulna, Khulna Division, Bangladesh',2,11.00,'',NULL,22.84564100,89.54032790,'2017-07-23 19:07:05','2017-07-23 12:08:00',NULL,NULL,0,0,0,0,'qx~oCexufPcBmHyQe@}VuALxNyInh@fAv`AkBb[ib@xLmd@f^{`@xlA}Etx@yObbAsVbe@_@jt@a]tlCwBvy@fLfoAxA`~Aof@bN~Ajd@oChnA_d@l_AkCjgE}F|gAyUts@~@n`AtLdwC{QdxBuVb~C{J|jAz`@b^{@tPrGbj@kIja@kAvb@m[xm@}ApNsTxMgb@xMmR~|@wh@zpAsM`RqRpAgMdAgJvEiBdVm@bKQbFuDtKcSlJy`AfFgl@fFgLdBvAjL~AlPiEbc@yGrbBdLfd@z|BbrA|Crk@uFbZq[duBb`@hpD`@xsAuJreArc@dfE@dmBlJzp@xtAwNlr@yFbj@~Rj`BxJ|f@{CjTvDjQwLjKiFoBvJMzIlf@nx@rLpo@vT~b@pQ~Fn@t@|Fc@|HqGhBF|CxBlAr]vOzNnp@n`@laA`f@|_A`[bSbZjr@jjA|sBduAjZx|@lc@tg@bCpb@jCzVpq@xp@jVuK|_@u\\`yAo_BniBwhCrmAwyB|bDoiBrYqUn[qq@tl@}hBeBqFrTsDba@mc@fiA{~Am@ku@|@gt@hKgO|XmDjg@iHdp@yAzVc^pu@}o@h{@nLz^}G`e@g]lPkd@|QyRtc@yXxs@g}@rS{Xxd@iSni@oZj^gb@rtAcvBl~Ai}B`q@kW~GcF~jAyYsDlWtTbh@tTrFpSnEj`@tCbV|@nLfFgAfj@vAt^p_AzbAt`BhrBlpCzdBr}@bMdQlR`qAhgAfb@rb@bx@lR|LdZbc@`|Bp]zi@`N`|@zk@ho@r~@r{B|l@~`Bn`@xi@bbCfdB|_BreBht@h_Aja@lrAtLrZnPaXtz@mnApo@k~@nI_eB~Gen@|n@epAbv@{Wdg@zHdkBrn@fs@hWljAvNxnApO|v@pH`n@cF|_@{V|TqOv\\cBzn@zHfsAaLd{@wTlvAs~Bt]uo@tQk_AjPul@|Vu[Reg@zFin@jIaTbd@iW`ZaKtVbC`_Apc@|b@bQv_@la@jXfQrg@lEj}CbQxp@dc@lJzUluA`\\jvArZtXvP`p@`rA~dAxcAvmAhv@xv@`e@f}Axf@r{CxPbxB|tA|y@vLp}ArbA|gAnYhV`k@|Jhs@vNjQti@xO|QvQde@bnAn\\|i@vUzqAhMbaAnRvWdAdB_VvuAmZtLqsAzu@ib@r_@qg@|IyTpB`@``@W~KoD~T{Ihu@v@xi@oKhsBuR``CoY`zAoQtTsw@t]e@CuaBzm@uiAf`@s[|EgDkDgNsLyIiGJmZOsaAsHq`@{SMcHkImBqIoRhL',NULL,'2017-07-23 19:07:05','2017-07-23 19:07:05'),(8,'TRNX225755',61,54,54,1,'CANCELLED','PROVIDER',NULL,'CASH',0,251.72400000,'Tejturi Bazar, Dhaka, Dhaka Division, Bangladesh',23.75609480,90.39190590,'Khulna Division, Bangladesh',2,11.00,'',NULL,22.80878160,89.24671910,'2017-07-23 19:10:34','2017-07-23 12:11:00',NULL,NULL,0,0,0,0,'yz~oCuuufPiCu@NsGiS{B{RiChBrHkBlJ{Irk@fBl{@t@rXeMvDqf@fNyYb]e`@lmAcCd_AsRt|@_Vhc@?xv@s^poCo@fv@fL~jAxAtnAd@xK_KtCi\\hKzAdl@qCrfAqYvc@{Ix_@sC`bBzAhnBwL~cAiSdo@bFl{AbIx|BaRlqBiWtcDiIldAzY`V~EtIsA`PdItOcBr]gHn]cB`e@uZxl@yDjNkT|Ks_@lLyV~gAue@pgAgNxRoVl@yQGaCpa@yA`PoDvLmExFiQ^io@fDoNj@yu@vI~Dj`@wHnp@_DxuAvLlb@d}BhrA~Aho@kGv\\eWhyAoBb\\rc@pvDhB`c@gIzq@oD|}@jRtdBdMhv@[ty@zAjvApJ|m@n_BkQti@eDnt@fXxaBdEz`@sFzLtGpQgN`KyDeCdOtMp\\nW`a@rLpo@vT~b@bNvDpCvBhG]zJuGzE~C~@d_@xYdRfo@fb@bsAbj@dg@tPhYzg@tn@l_AbpB|qA`Qpp@pUdYfVp[nBfe@WrIpUxYza@x]da@kQ`_@kg@``BugBh~AoyBdiAwsBliDclBxRmSdk@ixAfZg~@`@QpVxc@xYzy@pb@xHj]}Av^fDt]lYdr@`v@xQjLd_@vE~Th]|Gni@rSlgAyLd`@iTxg@hXxx@dVti@uBl[gShd@bX`~Ag@h}AqIhwAgZljCT~h@yTx{@n@|l@~r@th@lUvNlDzMfAzZlPv^SnW}PdoCwQj_DwJjd@{VnLmc@|o@aQhlAxg@rZlPbJtXdp@np@tzAfHvk@tOvmAza@jj@n{AdxDzo@`\\pi@|W|Bpp@xc@jFd}Af]n}@vQ|vBjStlBha@du@za@lj@pb@|nBxyAdm@hOzVhJt[ze@|tBb`DjtClhCt}@jz@rz@bhAzcCpwCbs@`iAfIxk@iBtN`LbXfM~OhXjKrWbMlUvEn]hR~PlAtd@pWj|@iIrhBxS~w@~n@la@pKfq@dNpj@xLbr@~AfYk@~@qYxf@aM|d@_Gla@kHzMaN`f@e\\zc@ga@`EiVxDa]nJkSzIoM`PnEhy@~MdpAoDvYnKjFpJxCtJhWRpr@`Lt{@p`@fjA}@`{@rPfjArIjx@@jqAcMjUWbWwBv{AqM`f@jA|\\pIt~@vKr^hDln@hO|t@uI`eAzCbaAfK|p@f^dfAhPly@KxM_CrXhAzYwCbSePjaC}xCzkA}v@f[wCvIu@v\\my@zm@i_AhYu_@|Cko@vH{PlGeOpNxM|KzKxJxIlGlFpCdFj[|\\vTdt@fk@vzAbIv_AtUrXpPwM',NULL,'2017-07-23 19:10:34','2017-07-23 21:40:35'),(9,'TRNX838924',62,0,0,1,'SEARCHING','NONE',NULL,'CASH',0,251.72400000,'Tejturi Bazar, Dhaka, Dhaka Division, Bangladesh',23.75609480,90.39190590,'Khulna Division, Bangladesh',2,12.00,'',NULL,22.80878160,89.24671910,'2017-07-23 19:22:36','2017-07-24 01:24:00',NULL,NULL,0,0,0,0,'yz~oCuuufPiCu@NsGiS{B{RiChBrHkBlJ{Irk@fBl{@t@rXeMvDqf@fNyYb]e`@lmAcCd_AsRt|@_Vhc@?xv@s^poCo@fv@fL~jAxAtnAd@xK_KtCi\\hKzAdl@qCrfAqYvc@{Ix_@sC`bBzAhnBwL~cAiSdo@bFl{AbIx|BaRlqBiWtcDiIldAzY`V~EtIsA`PdItOcBr]gHn]cB`e@uZxl@yDjNkT|Ks_@lLyV~gAue@pgAgNxRoVl@yQGaCpa@yA`PoDvLmExFiQ^io@fDoNj@yu@vI~Dj`@wHnp@_DxuAvLlb@d}BhrA~Aho@kGv\\eWhyAoBb\\rc@pvDhB`c@gIzq@oD|}@jRtdBdMhv@[ty@zAjvApJ|m@n_BkQti@eDnt@fXxaBdEz`@sFzLtGpQgN`KyDeCdOtMp\\nW`a@rLpo@vT~b@bNvDpCvBhG]zJuGzE~C~@d_@xYdRfo@fb@bsAbj@dg@tPhYzg@tn@l_AbpB|qA`Qpp@pUdYfVp[nBfe@WrIpUxYza@x]da@kQ`_@kg@``BugBh~AoyBdiAwsBliDclBxRmSdk@ixAfZg~@`@QpVxc@xYzy@pb@xHj]}Av^fDt]lYdr@`v@xQjLd_@vE~Th]|Gni@rSlgAyLd`@iTxg@hXxx@dVti@uBl[gShd@bX`~Ag@h}AqIhwAgZljCT~h@yTx{@n@|l@~r@th@lUvNlDzMfAzZlPv^SnW}PdoCwQj_DwJjd@{VnLmc@|o@aQhlAxg@rZlPbJtXdp@np@tzAfHvk@tOvmAza@jj@n{AdxDzo@`\\pi@|W|Bpp@xc@jFd}Af]n}@vQ|vBjStlBha@du@za@lj@pb@|nBxyAdm@hOzVhJt[ze@|tBb`DjtClhCt}@jz@rz@bhAzcCpwCbs@`iAfIxk@iBtN`LbXfM~OhXjKrWbMlUvEn]hR~PlAtd@pWj|@iIrhBxS~w@~n@la@pKfq@dNpj@xLbr@~AfYk@~@qYxf@aM|d@_Gla@kHzMaN`f@e\\zc@ga@`EiVxDa]nJkSzIoM`PnEhy@~MdpAoDvYnKjFpJxCtJhWRpr@`Lt{@p`@fjA}@`{@rPfjArIjx@@jqAcMjUWbWwBv{AqM`f@jA|\\pIt~@vKr^hDln@hO|t@uI`eAzCbaAfK|p@f^dfAhPly@KxM_CrXhAzYwCbSePjaC}xCzkA}v@f[wCvIu@v\\my@zm@i_AhYu_@|Cko@vH{PlGeOpNxM|KzKxJxIlGlFpCdFj[|\\vTdt@fk@vzAbIv_AtUrXpPwM',NULL,'2017-07-23 19:22:36','2017-07-23 19:22:36'),(10,'TRNX406080',63,0,0,1,'SEARCHING','NONE',NULL,'CASH',0,251.72400000,'Tejturi Bazar, Dhaka, Dhaka Division, Bangladesh',23.75609480,90.39190590,'Khulna Division, Bangladesh',2,3.00,'',NULL,22.80878160,89.24671910,'2017-07-23 19:26:40','2017-07-24 01:28:00',NULL,NULL,0,0,0,0,'yz~oCuuufPiCu@NsGiS{B{RiChBrHkBlJ{Irk@fBl{@t@rXeMvDqf@fNyYb]e`@lmAcCd_AsRt|@_Vhc@?xv@s^poCo@fv@fL~jAxAtnAd@xK_KtCi\\hKzAdl@qCrfAqYvc@{Ix_@sC`bBzAhnBwL~cAiSdo@bFl{AbIx|BaRlqBiWtcDiIldAzY`V~EtIsA`PdItOcBr]gHn]cB`e@uZxl@yDjNkT|Ks_@lLyV~gAue@pgAgNxRoVl@yQGaCpa@yA`PoDvLmExFiQ^io@fDoNj@yu@vI~Dj`@wHnp@_DxuAvLlb@d}BhrA~Aho@kGv\\eWhyAoBb\\rc@pvDhB`c@gIzq@oD|}@jRtdBdMhv@[ty@zAjvApJ|m@n_BkQti@eDnt@fXxaBdEz`@sFzLtGpQgN`KyDeCdOtMp\\nW`a@rLpo@vT~b@bNvDpCvBhG]zJuGzE~C~@d_@xYdRfo@fb@bsAbj@dg@tPhYzg@tn@l_AbpB|qA`Qpp@pUdYfVp[nBfe@WrIpUxYza@x]da@kQ`_@kg@``BugBh~AoyBdiAwsBliDclBxRmSdk@ixAfZg~@`@QpVxc@xYzy@pb@xHj]}Av^fDt]lYdr@`v@xQjLd_@vE~Th]|Gni@rSlgAyLd`@iTxg@hXxx@dVti@uBl[gShd@bX`~Ag@h}AqIhwAgZljCT~h@yTx{@n@|l@~r@th@lUvNlDzMfAzZlPv^SnW}PdoCwQj_DwJjd@{VnLmc@|o@aQhlAxg@rZlPbJtXdp@np@tzAfHvk@tOvmAza@jj@n{AdxDzo@`\\pi@|W|Bpp@xc@jFd}Af]n}@vQ|vBjStlBha@du@za@lj@pb@|nBxyAdm@hOzVhJt[ze@|tBb`DjtClhCt}@jz@rz@bhAzcCpwCbs@`iAfIxk@iBtN`LbXfM~OhXjKrWbMlUvEn]hR~PlAtd@pWj|@iIrhBxS~w@~n@la@pKfq@dNpj@xLbr@~AfYk@~@qYxf@aM|d@_Gla@kHzMaN`f@e\\zc@ga@`EiVxDa]nJkSzIoM`PnEhy@~MdpAoDvYnKjFpJxCtJhWRpr@`Lt{@p`@fjA}@`{@rPfjArIjx@@jqAcMjUWbWwBv{AqM`f@jA|\\pIt~@vKr^hDln@hO|t@uI`eAzCbaAfK|p@f^dfAhPly@KxM_CrXhAzYwCbSePjaC}xCzkA}v@f[wCvIu@v\\my@zm@i_AhYu_@|Cko@vH{PlGeOpNxM|KzKxJxIlGlFpCdFj[|\\vTdt@fk@vzAbIv_AtUrXpPwM',NULL,'2017-07-23 19:26:40','2017-07-23 19:26:40'),(11,'TRNX686629',64,0,0,1,'SEARCHING','NONE',NULL,'CASH',0,4.70100000,'Tejturi Bazar, Dhaka, Dhaka Division, Bangladesh',23.75609480,90.39190590,'Jhigatola Road, Dhaka, Bangladesh',1,1.00,'',NULL,23.74100130,90.37058840,'2017-07-23 19:28:17','2017-07-24 01:30:00',NULL,NULL,0,0,0,0,'yz~oCuuufPn@MPGCt@BhAN|@DZ~H}BbKaCtJqCl@YBELOLCL?NFHHFVAPGNGFIBC@Qr@u@tG_@zCsAzLs@fFk@~B[bA}@xAMT}A|Ae@l@[t@[xAM~BAvADlBDn@LnBZ|A^dBtB`IXf@Xh@PZ\\RVHRB~@i@xFwCnBy@pBy@jCqANVFdBPjA\\hAp@bAr@h@xAj@f@JObCIRTBb@NPRzA|Cd@YdA|B|@jB^TRb@hExINHa@XrBdEDA|@UpBKdAN`B`@zAP?@?RbAKjCKANJvCGJMNcALyADSDm@^w@f@',NULL,'2017-07-23 19:28:17','2017-07-23 19:28:17'),(12,'TRNX524834',66,54,54,1,'SCHEDULED','NONE',NULL,'CASH',0,5.60900000,'82/6 Tejturi Bazar Road, Dhaka, Bangladesh',23.75577100,90.39250780,'Banani Super Market, Kemal Ataturk Avenue, Dhaka, Dhaka Division, Bangladesh',1,1.00,'',NULL,23.79333680,90.40625970,'2017-07-23 21:42:12','2017-07-24 03:45:00',NULL,NULL,0,0,0,0,'qx~oCexufPR}AXcAFi@HmAwCYKDg@Pu@`@w@KoGm@sD_@eAKgAU[OsASkOeBuAMqAAkCUCMPe@cFk@mAKsCY}Hk@qBSmR}Aa@IgAG_BM[FuAO_@@cAOu@I_@KiHo@}H_AcAK@LBZPv@pAfDVj@g@RkBeFESAu@@y@GUKKq@OuB[uBOiGq@wMkA_Em@kUgC}DUsI{@oD[eNqAwAGKg@j@gHn@}JXiFJu@HqCPDt@F',NULL,'2017-07-23 21:42:12','2017-07-23 21:42:25'),(13,'TRNX201181',71,0,55,4,'CANCELLED','NONE',NULL,'CASH',0,0.00000000,'Dhaka,(null),(null)',23.75505290,90.39291341,'Kemal Ataturk Avenue, Dhaka 1213, Bangladesh',3,2.00,'https://app.mypyckup.com/uploads/06eee66d0ae7853725415a95a69da132bf7e5ebe.','Testy ',23.79333700,90.40626000,'2017-07-25 14:24:13',NULL,NULL,NULL,0,0,0,0,'es~oCoyufPlB@j@IG[_AoDeAEoGo@s@Vu@`@[CgD]oFi@mCYgAU[O}JoA{Gs@mBEkCUCMPe@mBSuBWiAIwC[iJs@oK_AcHi@a@IgDU[FoAMe@?yBY_@KiHo@aKkA@ZLr@FPhBrEg@RyAwDUw@Cw@@q@C[IQMGe@ImB[_AGaGm@oHo@qFi@uB[uWyC}DUsHw@iD[aMkAaDQKg@RcC`@iG~@aOJu@HqCfAL',NULL,'2017-07-25 14:24:13','2017-07-25 14:25:17'),(14,'TRNX685237',71,0,55,4,'CANCELLED','NONE',NULL,'CASH',0,0.00000000,'Dhaka,(null),(null)',23.75519214,90.39303180,'House 47 Rd No 27, Dhaka 1213, Bangladesh',2,3.00,'https://app.mypyckup.com/uploads/4116f7e93f1eceb2958db4b219b88651b7b798fd.','Test',23.79957100,90.40397700,'2017-07-25 14:26:51',NULL,NULL,NULL,0,0,0,0,'kw~oCo|ufPNaAHmAwCYKDg@Pu@`@w@KoGm@sD_@eAKgAU[OsASkOeBuAMqAAkCUCMPe@cFk@mAKsCY}Hk@qBScBQiOkAa@IgAG_BM[FuAO_@@cAOu@I_@KiHo@}H_AcAK@LBZBR~AjEVj@g@RkBeFGq@@{@?UGUKKWG_AOoAS]CaJ}@wMkA_Em@kUgC}DUsI{@oD[eNqAwAGcAM_BK{J_AaCQsGs@PqDZ_G',NULL,'2017-07-25 14:26:51','2017-07-25 14:27:53'),(15,'TRNX787546',71,55,55,4,'COMPLETED','NONE',NULL,'CASH',1,0.00000000,'Dhaka,(null),(null)',23.75515681,90.39301721,'Kemal Ataturk Avenue, Dhaka 1213, Bangladesh',3,1.00,'https://app.mypyckup.com/uploads/4af3a16abc8b9d084704eac7e9afd1575a6e30cc.','Test',23.79333700,90.40626000,'2017-07-25 14:30:37',NULL,'2017-07-25 14:32:52','2017-07-25 14:34:47',1,1,0,0,'es~oCoyufPlB@j@IG[_AoDeAEoGo@s@Vu@`@[CgD]oFi@mCYgAU[O}JoA{Gs@mBEkCUCMPe@mBSuBWiAIwC[iJs@oK_AcHi@a@IgDU[FoAMe@?yBY_@KiHo@aKkA@ZLr@FPhBrEg@RyAwDUw@Cw@@q@C[IQMGe@ImB[_AGaGm@oHo@qFi@uB[uWyC}DUsHw@iD[aMkAaDQKg@RcC`@iG~@aOJu@HqCfAL',NULL,'2017-07-25 14:30:37','2017-07-25 14:41:14'),(16,'TRNX956250',71,55,55,4,'COMPLETED','NONE',NULL,'CASH',1,0.00000000,'To Satrasta,(null),(null)',23.75450677,90.39327000,'Kemal Ataturk Avenue, Dhaka 1213, Bangladesh',1,1.00,'https://app.mypyckup.com/uploads/659c976bea6b7932aaed322342e0b6f84088ac28.','Yrfg',23.79333700,90.40626000,'2017-07-25 20:04:16',NULL,'2017-07-25 20:06:09','2017-07-25 20:06:21',1,1,0,0,'so~oCk}ufP_@wAeAEoGo@s@Vu@`@[CgD]oFi@mCYgAU[O}JoA{Gs@mBEkCUCMPe@mBSuBWiAIwC[iJs@oK_AcHi@a@IgDU[FoAMe@?yBY_@KiHo@aKkA@ZLr@FPhBrEg@RyAwDUw@Cw@@q@C[IQMGe@ImB[_AGaGm@oHo@qFi@uB[uWyC}DUsHw@iD[aMkAaDQKg@RcC`@iG~@aOJu@HqCfAL',NULL,'2017-07-25 20:04:16','2017-07-25 20:07:35'),(17,'TRNX530300',75,57,57,1,'COMPLETED','NONE',NULL,'CARD',0,0.00000000,'To Satrasta,(null),(null)',23.75541494,90.39310575,'Uttara Centre, 102 শহীদ তাজউদ্দিন আহমেদ সরনী, ঢাকা 1208, Bangladesh',1,1.00,'https://app.mypyckup.com/uploads/041022a92c6bb2682c19f14757b69f4a9cdb8671.','Test',23.75420700,90.40057800,'2017-07-26 18:12:36',NULL,'2017-07-26 18:13:41','2017-07-26 18:13:50',0,1,0,0,'mw~oCk|ufPH[Fi@HmAwCYKDDm@Fm@e@A_AQEsCUyNGsCGi@MGGI?IDQPKJ?FDjI_Dd@MfD_B',NULL,'2017-07-26 18:12:36','2017-07-26 18:14:10');
/*!40000 ALTER TABLE `user_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payment_mode` enum('CASH','CARD','PAYPAL') COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `picture` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `device_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `device_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `device_type` enum('android','ios') COLLATE utf8_unicode_ci NOT NULL,
  `login_by` enum('manual','facebook','google') COLLATE utf8_unicode_ci NOT NULL,
  `social_unique_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `latitude` double(15,8) DEFAULT NULL,
  `longitude` double(15,8) DEFAULT NULL,
  `stripe_cust_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `wallet_balance` double(8,2) NOT NULL DEFAULT '0.00',
  `rating` decimal(4,2) NOT NULL DEFAULT '5.00',
  `otp` mediumint(9) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (2,'Emilia','Epps','CASH','emilia@appoets.com',NULL,'$2y$10$p5W0PmPIyhhc81e2s1fve.Tgpncqby/Tdfl5FDyEjQC0l/w4B0/bu','http://lorempixel.com/512/512/business/Tranxit',NULL,NULL,'android','manual',NULL,NULL,NULL,NULL,0.00,5.00,0,NULL,'2017-07-22 19:00:29','2017-07-22 19:00:29'),(3,'Perry','Kingsley','CASH','perry@appoets.com',NULL,'$2y$10$WfhSkD1a3HbYO9glC8YQau3PzzxanFr2KaSL1MJRWW1fGBKZ1YJ5u','http://lorempixel.com/512/512/business/Tranxit',NULL,NULL,'android','manual',NULL,NULL,NULL,NULL,0.00,5.00,0,NULL,'2017-07-22 19:00:29','2017-07-22 19:00:29'),(4,'Joseph','Garrison','CASH','joseph@appoets.com',NULL,'$2y$10$whf5qQYamchwnhKH82D9RuTvmeDDU4ceCx2X5geT44dyO13ZzicDu','http://lorempixel.com/512/512/business/Tranxit',NULL,NULL,'android','manual',NULL,NULL,NULL,NULL,0.00,5.00,0,NULL,'2017-07-22 19:00:30','2017-07-22 19:00:30'),(5,'Ella','Morrissey','CASH','morrissey@appoets.com',NULL,'$2y$10$x5XwFi54CJQspAxXxQwXruI9ixzo1zZ6b/UEVlSfuqi4gn986V8ZC','http://lorempixel.com/512/512/business/Tranxit',NULL,NULL,'android','manual',NULL,NULL,NULL,NULL,0.00,5.00,0,NULL,'2017-07-22 19:00:30','2017-07-22 19:00:30'),(6,'Elizabeth','Forshee','CASH','elizabeth@appoets.com',NULL,'$2y$10$G4GoMcdpk7TWe4ohltd2n.rPNWsvWSTw6jU9LF7LfPZa1ZKFb/Pcq','http://lorempixel.com/512/512/business/Tranxit',NULL,NULL,'android','manual',NULL,NULL,NULL,NULL,0.00,5.00,0,NULL,'2017-07-22 19:00:30','2017-07-22 19:00:30'),(7,'Douglas','Arce','CASH','douglas@appoets.com',NULL,'$2y$10$s5.9GdCPq31CvXYdDUo2puQuRY6spwmc3wB1zdyqdzkf3Asa22RiS','http://lorempixel.com/512/512/business/Tranxit',NULL,NULL,'android','manual',NULL,NULL,NULL,NULL,0.00,5.00,0,NULL,'2017-07-22 19:00:30','2017-07-22 19:00:30'),(8,'Sara','Nixon','CASH','sara@appoets.com',NULL,'$2y$10$MfkEipQb6Pro4G5BV.3AjujklL1GvTxIU5toVWmTYvO5L3HcH4Oxa','http://lorempixel.com/512/512/business/Tranxit',NULL,NULL,'android','manual',NULL,NULL,NULL,NULL,0.00,5.00,0,NULL,'2017-07-22 19:00:30','2017-07-22 19:00:30'),(9,'Edward','Jett','CASH','edward@appoets.com',NULL,'$2y$10$ko/mgqaWDh9REQhOcCg3.Oabuvi/.Y4npUxY8UjhnTktfiLTCyp/y','http://lorempixel.com/512/512/business/Tranxit',NULL,NULL,'android','manual',NULL,NULL,NULL,NULL,0.00,5.00,0,NULL,'2017-07-22 19:00:30','2017-07-22 19:00:30'),(10,'Marilyn','Bradley','CASH','marilyn@appoets.com',NULL,'$2y$10$xPgGZXyKDkzIoGYQI0Q0WOX8w.OlGrHaRi9GiZGOXl0SXK7pX7tNy','http://lorempixel.com/512/512/business/Tranxit',NULL,NULL,'android','manual',NULL,NULL,NULL,NULL,0.00,5.00,0,NULL,'2017-07-22 19:00:30','2017-07-22 19:00:30'),(11,'Herman','Thompson','CASH','herman@appoets.com',NULL,'$2y$10$g92GdIi3J.srBK8tWjLeMeMTeggJ6qGaaiSDbA1Zol/CrlpQriwAi','http://lorempixel.com/512/512/business/Tranxit',NULL,NULL,'android','manual',NULL,NULL,NULL,NULL,0.00,5.00,0,NULL,'2017-07-22 19:00:30','2017-07-22 19:00:30'),(12,'Darrin','Neely','CASH','darrin@appoets.com',NULL,'$2y$10$vb.4Tjv5i5WzjESYE62w/uUUc/Vm.aq86NI759dU6odJa03lrqbla','http://lorempixel.com/512/512/business/Tranxit',NULL,NULL,'android','manual',NULL,NULL,NULL,NULL,0.00,5.00,0,NULL,'2017-07-22 19:00:30','2017-07-22 19:00:30'),(13,'Ralph','Vaughn','CASH','ralph@appoets.com',NULL,'$2y$10$SvDDN4/2m9rUb9jcdNLgY.LNU4yiiUdlJS6QxidtMWKMpxS3x5GNq','http://lorempixel.com/512/512/business/Tranxit',NULL,NULL,'android','manual',NULL,NULL,NULL,NULL,0.00,5.00,0,NULL,'2017-07-22 19:00:30','2017-07-22 19:00:30'),(14,'Arturo','Gibson','CASH','arturo@appoets.com',NULL,'$2y$10$RrVrcDJExBNIw6KvAGGYpOiOYUzpcpnD6v2w10rTKG/JlROEhJ/pC','http://lorempixel.com/512/512/business/Tranxit',NULL,NULL,'android','manual',NULL,NULL,NULL,NULL,0.00,5.00,0,NULL,'2017-07-22 19:00:30','2017-07-22 19:00:30'),(15,'Kevin','Delacruz','CASH','kevin@appoets.com',NULL,'$2y$10$GSFr/pe/DyswJZhSuOXLPeH2Wo3lPGX5Fqt6d0EOniug5JeFSKxY.','http://lorempixel.com/512/512/business/Tranxit',NULL,NULL,'android','manual',NULL,NULL,NULL,NULL,0.00,5.00,0,NULL,'2017-07-22 19:00:30','2017-07-22 19:00:30'),(16,'Catherine','Ferguson','CASH','catherine@appoets.com',NULL,'$2y$10$yrZYjQM3ArM175g1Iwmti.G7.NQRRYXm/3LHLH5M41kV4LTFNchw2','http://lorempixel.com/512/512/business/Tranxit',NULL,NULL,'android','manual',NULL,NULL,NULL,NULL,0.00,5.00,0,NULL,'2017-07-22 19:00:30','2017-07-22 19:00:30'),(17,'Gary','Maple','CASH','gary@appoets.com',NULL,'$2y$10$DmeoBVOUx/A2.SK42Tk72OV.Xh7/zFdB7sh06JePGsXm8Q1uY8DLK','http://lorempixel.com/512/512/business/Tranxit',NULL,NULL,'android','manual',NULL,NULL,NULL,NULL,0.00,5.00,0,NULL,'2017-07-22 19:00:31','2017-07-22 19:00:31'),(18,'Robert','Ferguson','CASH','robert@appoets.com',NULL,'$2y$10$cp2T9h7EkoQC8Vjv7NAxyOkdy7R3lj4h1ZstTGzRv3oLJukXBslI2','http://lorempixel.com/512/512/business/Tranxit',NULL,NULL,'android','manual',NULL,NULL,NULL,NULL,0.00,5.00,0,NULL,'2017-07-22 19:00:31','2017-07-22 19:00:31'),(19,'Charles','Ferguson','CASH','charles@appoets.com',NULL,'$2y$10$1.zt04uB96rkPUQU7pnU2.DIqYM/rhb2pla9R0.qjV6hGVhWsnr3S','http://lorempixel.com/512/512/business/Tranxit',NULL,NULL,'android','manual',NULL,NULL,NULL,NULL,0.00,5.00,0,NULL,'2017-07-22 19:00:31','2017-07-22 19:00:31'),(20,'Michael','Ferguson','CASH','michael@appoets.com',NULL,'$2y$10$o9B/7X3UhOzFLSQ/g7RGVu74wOqR8g5Rq2/J/FmfxitBDOgLtTVsS','http://lorempixel.com/512/512/business/Tranxit',NULL,NULL,'android','manual',NULL,NULL,NULL,NULL,0.00,5.00,0,NULL,'2017-07-22 19:00:31','2017-07-22 19:00:31'),(21,'Patrick','Ferguson','CASH','patrick@appoets.com',NULL,'$2y$10$C7bR8jo6sSlmuuOyXR7Qrexhr4ejzF.I4KAJFFljiQKqVCU722pQe','http://lorempixel.com/512/512/business/Tranxit',NULL,NULL,'android','manual',NULL,NULL,NULL,NULL,0.00,5.00,0,NULL,'2017-07-22 19:00:31','2017-07-22 19:00:31'),(22,'Arturo','Arturo','CASH','arturon@appoets.com',NULL,'$2y$10$ajzyxa7TTm7ddYFTeWIu5uQO/77zH0xgU8GSFaYz.X9qE9hS1VIFa','http://lorempixel.com/512/512/business/Tranxit',NULL,NULL,'android','manual',NULL,NULL,NULL,NULL,0.00,5.00,0,NULL,'2017-07-22 19:00:31','2017-07-22 19:00:31'),(23,'Anthony','Ken','CASH','ken@appoets.com',NULL,'$2y$10$8Q9HYUL13nZpa0.RbPRbkuYz.yOvo.96fQVYqOgRgv5T5.HBH8zpe','http://lorempixel.com/512/512/business/Tranxit',NULL,NULL,'android','manual',NULL,NULL,NULL,NULL,0.00,5.00,0,NULL,'2017-07-22 19:00:31','2017-07-22 19:00:31'),(24,'Anthony','Clinton','CASH','clinton@appoets.com',NULL,'$2y$10$eLlt40Twt9Pr/6IY814wPe6/M7oVJS9NkA.i3ZjcKBbIOSW7kSte2','http://lorempixel.com/512/512/business/Tranxit',NULL,NULL,'android','manual',NULL,NULL,NULL,NULL,0.00,5.00,0,NULL,'2017-07-22 19:00:31','2017-07-22 19:00:31'),(25,'Gabriel','Ferguson','CASH','gabriel@appoets.com',NULL,'$2y$10$VZTsfG8lam3taWE7u.Bd8ObYcUfEI9vKjh8DnxkgGMsu3OJqi4c02','http://lorempixel.com/512/512/business/Tranxit',NULL,NULL,'android','manual',NULL,NULL,NULL,NULL,0.00,5.00,0,NULL,'2017-07-22 19:00:31','2017-07-22 19:00:31'),(26,'Gabriel','Scott','CASH','scott@appoets.com',NULL,'$2y$10$rkppOBYrxjYLrRF43cRh.OGS7WqtgQpkg9woGgX1M/sw0B2R8tYPq','http://lorempixel.com/512/512/business/Tranxit',NULL,NULL,'android','manual',NULL,NULL,NULL,NULL,0.00,5.00,0,NULL,'2017-07-22 19:00:31','2017-07-22 19:00:31'),(27,'Raymon','Ferguson','CASH','raymon@appoets.com',NULL,'$2y$10$HSO/Txj8sxqBEY5fv/ZuK.OhUvsBN.L8Xf1iBJXCZNgr.k48qHERa','http://lorempixel.com/512/512/business/Tranxit',NULL,NULL,'android','manual',NULL,NULL,NULL,NULL,0.00,5.00,0,NULL,'2017-07-22 19:00:31','2017-07-22 19:00:31'),(28,'Shon','Ferguson','CASH','shon@appoets.com',NULL,'$2y$10$DkI7Pbdydkcb0ZPakCU4pO6BbowVaLsKgTNQAEmyPh7Eu3tpVWw1y','http://lorempixel.com/512/512/business/Tranxit',NULL,NULL,'android','manual',NULL,NULL,NULL,NULL,0.00,5.00,0,NULL,'2017-07-22 19:00:31','2017-07-22 19:00:31'),(29,'Dennis','Ferguson','CASH','dennis@appoets.com',NULL,'$2y$10$1Q.VHcwUmTCiei.3ZhcbaeOKDPRqBq7emFecSquDkcbQOfXcZQZZi','http://lorempixel.com/512/512/business/Tranxit',NULL,NULL,'android','manual',NULL,NULL,NULL,NULL,0.00,5.00,0,NULL,'2017-07-22 19:00:31','2017-07-22 19:00:31'),(30,'Wayne','Ferguson','CASH','wayne@appoets.com',NULL,'$2y$10$EPAGc5IQlrFhigsaiXIkO.N5DXeUS1xO2eUifqboft687Znl8uniG','http://lorempixel.com/512/512/business/Tranxit',NULL,NULL,'android','manual',NULL,NULL,NULL,NULL,0.00,5.00,0,NULL,'2017-07-22 19:00:32','2017-07-22 19:00:32'),(31,'Daniel','Fuller','CASH','daniel@appoets.com',NULL,'$2y$10$5eqoWojAhUC8sgOR.PJfuu7Agax9WjQsCacealUwYknFtEfopPYNS','http://lorempixel.com/512/512/business/Tranxit',NULL,NULL,'android','manual',NULL,NULL,NULL,NULL,0.00,5.00,0,NULL,'2017-07-22 19:00:32','2017-07-22 19:00:32'),(32,'Buster','White','CASH','buster@appoets.com',NULL,'$2y$10$W9hJede83rRo88OlOAZpNu2AVoBeyfmcgROwRjA2LeI5ApU2hJqda','http://lorempixel.com/512/512/business/Tranxit',NULL,NULL,'android','manual',NULL,NULL,NULL,NULL,0.00,5.00,0,NULL,'2017-07-22 19:00:32','2017-07-22 19:00:32'),(33,'Scott','Markham','CASH','scot@appoets.com',NULL,'$2y$10$lyLkIofJt3yzE5Je/gIBJeCPjp.aV/APXoY4bGriGzyqRrVL6vxmq','http://lorempixel.com/512/512/business/Tranxit',NULL,NULL,'android','manual',NULL,NULL,NULL,NULL,0.00,5.00,0,NULL,'2017-07-22 19:00:32','2017-07-22 19:00:32'),(34,'Millard ','Brooks','CASH','millard@appoets.com',NULL,'$2y$10$dMmMhW6iEA8I31hoJF9.T.NiDkdC/EXhMiueW5xTr3t/oS7.Sigze','http://lorempixel.com/512/512/business/Tranxit',NULL,NULL,'android','manual',NULL,NULL,NULL,NULL,0.00,5.00,0,NULL,'2017-07-22 19:00:32','2017-07-22 19:00:32'),(35,'Terry','Burress','CASH','terry@appoets.com',NULL,'$2y$10$.I5oMaJXCxBKz7H13WcWz.Us6evTmPx1hJdg/rH0BzQnuJiw2vAPC','http://lorempixel.com/512/512/business/Tranxit',NULL,NULL,'android','manual',NULL,NULL,NULL,NULL,0.00,5.00,0,NULL,'2017-07-22 19:00:32','2017-07-22 19:00:32'),(36,'John','Edwards','CASH','john@appoets.com',NULL,'$2y$10$FoWzBzM.QG2ai8bTT7EdgODIg/SPjxs4fgI1ompoWIsUHwsyXSJLO','http://lorempixel.com/512/512/business/Tranxit',NULL,NULL,'android','manual',NULL,NULL,NULL,NULL,0.00,5.00,0,NULL,'2017-07-22 19:00:32','2017-07-22 19:00:32'),(37,'Edwar','Warner','CASH','edwar@appoets.com',NULL,'$2y$10$6g8Ik6P7OKN1C9VWGRimNOTXHHb8tq3066LTmGiBXibQqClojoupu','http://lorempixel.com/512/512/business/Tranxit',NULL,NULL,'android','manual',NULL,NULL,NULL,NULL,0.00,5.00,0,NULL,'2017-07-22 19:00:32','2017-07-22 19:00:32'),(38,'Thomas','Joseph','CASH','thomas@appoets.com',NULL,'$2y$10$JMfiWtDlMM6UGmS3s.SS4.RBfpcpT5il.oU2vdUod/7oUuC/nglee','http://lorempixel.com/512/512/business/Tranxit',NULL,NULL,'android','manual',NULL,NULL,NULL,NULL,0.00,5.00,0,NULL,'2017-07-22 19:00:32','2017-07-22 19:00:32'),(39,'Sally','Skateboard','CASH','sally@appoets.com',NULL,'$2y$10$GTAhg3wk.uWQ0XlfBRfFrOAdUANJEx7gG5QAIncz8jteUux3Ktay.','http://lorempixel.com/512/512/business/Tranxit',NULL,NULL,'android','manual',NULL,NULL,NULL,NULL,0.00,5.00,0,NULL,'2017-07-22 19:00:32','2017-07-22 19:00:32'),(40,'Dolly','Unicycle','CASH','dolly@appoets.com',NULL,'$2y$10$IkLqmMJm5H48CW9gX45wb.9aReVMlrMy6Dz/cFWyZX8c7VP19i5Vu','http://lorempixel.com/512/512/business/Tranxit',NULL,NULL,'android','manual',NULL,NULL,NULL,NULL,0.00,5.00,0,NULL,'2017-07-22 19:00:32','2017-07-22 19:00:32'),(41,'Peggy','Hoverboard','CASH','peggy@appoets.com',NULL,'$2y$10$OHfya4WRMqhYAtCSeTxIpeRgem8xQcT3BSJCsHtlM9gJGH8WEB7ZK','http://lorempixel.com/512/512/business/Tranxit',NULL,NULL,'android','manual',NULL,NULL,NULL,NULL,0.00,5.00,0,NULL,'2017-07-22 19:00:32','2017-07-22 19:00:32'),(42,'Louise','Dazzle','CASH','louise@appoets.com',NULL,'$2y$10$4fxBYWpCXSAVGuwpd4kNHOhNA3x07soZpdC92mVORXPToJJ.9vTVa','http://lorempixel.com/512/512/business/Tranxit',NULL,NULL,'android','manual',NULL,NULL,NULL,NULL,0.00,5.00,0,NULL,'2017-07-22 19:00:32','2017-07-22 19:00:32'),(43,'Carmella','Pizzazz','CASH','carmella@appoets.com',NULL,'$2y$10$cKr3LUqS21vcQ9C90SYCa.t0A7MhQ5mN7x2Ds6IGLMS/jpJA9hIUW','http://lorempixel.com/512/512/business/Tranxit',NULL,NULL,'android','manual',NULL,NULL,NULL,NULL,0.00,5.00,0,NULL,'2017-07-22 19:00:32','2017-07-22 19:00:32'),(45,'Becky','Nitrogen','CASH','becky@appoets.com',NULL,'$2y$10$GfnHDlrtPFlZkayortpSHeUKOHlOcrxDE79hmNPn2sraIcOjKAHeS','http://lorempixel.com/512/512/business/Tranxit',NULL,NULL,'android','manual',NULL,NULL,NULL,NULL,0.00,5.00,0,NULL,'2017-07-22 19:00:33','2017-07-22 19:00:33'),(46,'Allie','Starfeet','CASH','allie@appoets.com',NULL,'$2y$10$1Yfcy3VAWN57TevJmZEmJuxUpeTnzHsWWtJl2tag3roif9bgVU2l2','http://lorempixel.com/512/512/business/Tranxit','','','ios','manual',NULL,23.75491000,90.39308361,NULL,0.00,5.00,0,NULL,'2017-07-22 19:00:33','2017-07-25 20:34:17'),(47,'Lindsay','Marti','CASH','lindsay@appoets.com',NULL,'$2y$10$rzTI/CaceU7OpefETPGEbOvJZalWeZ.Pj.HZUJhR9yETECSj.loo2','http://lorempixel.com/512/512/business/Tranxit',NULL,NULL,'android','manual',NULL,NULL,NULL,NULL,0.00,5.00,0,NULL,'2017-07-22 19:00:33','2017-07-22 19:00:33'),(48,'Mirandella','Houndstooth','CASH','mirandella@appoets.com',NULL,'$2y$10$HIjtB3ohQCFHH7agij5oCe4SilTnz3XmqoHRzgiP15rKJXlx9RRHK','http://lorempixel.com/512/512/business/Tranxit',NULL,NULL,'android','manual',NULL,NULL,NULL,NULL,0.00,5.00,0,NULL,'2017-07-22 19:00:33','2017-07-22 19:00:33'),(49,'Zooey','Camembert','CASH','zooey@appoets.com',NULL,'$2y$10$5t4CzoPDoyKqbJv9tdLd6..fRDRVQ2scLAGCuQ0U2uR57T5BRzr0m','http://lorempixel.com/512/512/business/Tranxit',NULL,NULL,'android','manual',NULL,NULL,NULL,NULL,0.00,5.00,0,NULL,'2017-07-22 19:00:33','2017-07-22 19:00:33'),(50,'Shirley','Hurley','CASH','shirley@appoets.com',NULL,'$2y$10$Icdk8mafDY0pBCp.ahBs..b.cI/Zo/qzDAclxWgEe2MOH9CIVwBaW','http://lorempixel.com/512/512/business/Tranxit',NULL,NULL,'android','manual',NULL,NULL,NULL,NULL,0.00,5.00,0,NULL,'2017-07-22 19:00:33','2017-07-22 19:00:33'),(52,'Demo','Test','CASH','sasassd@gnail.com','5616516','$2y$10$oHZiukV2WWpWljVFQMsNT.vdxY1tRPdUvBhOHEW5LyqOim5SUKqA.',NULL,NULL,NULL,'android','manual',NULL,NULL,NULL,NULL,0.00,5.00,0,'cPlIj6HFXQo7QGDmlStMbpLqk6iF4qJ5VmlSfrYj6cDfAhgEWUDg94sah3L5','2017-07-22 20:16:29','2017-07-22 23:03:07'),(56,'Hasibil','Haaan','CASH','spitworldbd@gmail.com','+8801618834309','$2y$10$vkfhfDWsXOwRy8kaOwyP9.Gna6GdT8g/9h3eoiBesmbcMO5OSOeU2','','dVzUUusrYBQ:APA91bEahP-1PuGpLZ1K3eGx__KWrB_YuDyMPexa1_Bk-RuzSBNbPxgVrRIQ61Go4YHJJV7b4xGqpvUpf4WkgDbHxwnGLXv7_SJaepE7nKjI7f_gPEDt03_46V_lPLpLdAalBysRuUFO','534b641d60a182cb','android','manual','',NULL,NULL,NULL,0.00,5.00,0,NULL,'2017-07-23 17:30:44','2017-07-23 17:30:44'),(58,'V','K','CASH','vinukoech@gmail.com','+254702244756','$2y$10$TmKVwSkhI8RrW9DUVXIJSuBzpN3vXoRBNK6B2PS/3YWb5cLIvhaq.','','eaT9VmrCGIg:APA91bHfNU1M_6nApAy5Ie4TPJS6stk_RDKl_W_AbJLmHlZAlU6Brq6-4TH63kSdyL-dzvihia6tInCheE0P58Ccz5ZmzjKgZ0LQM9e3PyfE-AB9pPextDlHBch9gmy_QLkoIyTHveFz','ecebfd8c966ad842','android','manual','',NULL,NULL,NULL,0.00,5.00,0,NULL,'2017-07-23 18:50:40','2017-07-23 18:50:40'),(59,'Prapty','Khondoker','CASH','pp@pp.com','123456789','$2y$10$cEJMVGzOxV1T/0V82b3Lluue3OklnOhnMMaLL2DbhI1u0MySptCoy',NULL,NULL,NULL,'android','manual',NULL,NULL,NULL,NULL,0.00,5.00,0,NULL,'2017-07-23 18:50:52','2017-07-23 18:50:52'),(60,'Md. Hasibul','Hasan','CASH','spitworlsdbd@gmail.com','9053168945','$2y$10$zLOkUoqHjmzlIvuopX3PAuKUH6APJ.2RmTYoY1ct6nW9wTeKthXVq',NULL,NULL,NULL,'android','manual',NULL,NULL,NULL,NULL,0.00,5.00,0,NULL,'2017-07-23 18:55:33','2017-07-23 18:55:33'),(61,'Hasibul','Hasan','CASH','admin@mypyckup.com','12345678987','$2y$10$k2vI1CaDedHLXmAzH5jHNO8CXTRSM5C0Op3IPc/qEMI//W8Fwrxi2',NULL,NULL,NULL,'android','manual',NULL,NULL,NULL,NULL,0.00,5.00,0,NULL,'2017-07-23 19:10:34','2017-07-23 19:10:34'),(62,'Md hIasui','Hasan','CASH','admiN@sfsdf.com','232323','$2y$10$IvT1kYpug/mB7IwfTedMjO6QAyIJGP718KHbAsPvlYCgi/meZ6bx.',NULL,NULL,NULL,'android','manual',NULL,NULL,NULL,NULL,0.00,5.00,0,NULL,'2017-07-23 19:22:36','2017-07-23 19:22:36'),(63,'jkhjk','hj','CASH','hjgj@gmail.com','54465','$2y$10$HdsHzINp9aew3SdGJnTDOuoXmusIb75JSulSjetTSui5XlF1kAZUS',NULL,NULL,NULL,'android','manual',NULL,NULL,NULL,NULL,0.00,5.00,0,NULL,'2017-07-23 19:26:40','2017-07-23 19:26:40'),(64,'jhj','kjkl','CASH','hk@gm.com','66878','$2y$10$2DrTHJxrBCWBl8R9BKT0l.SkVYZv/yno82LSq8lDqsafSz.jGSiCi',NULL,NULL,NULL,'android','manual',NULL,NULL,NULL,NULL,0.00,5.00,0,NULL,'2017-07-23 19:28:17','2017-07-23 19:28:17'),(65,'Rotich','Victor','CASH','vyrosoft@gmail.com','+254725202227','$2y$10$zD7R7oJZMjajLMq3lgj74.VTWfzkW7tnztAYcpC8x5/7Kp3UOMfYG','','c0By4TqgL5I:APA91bF_GKVtsutZyXl4zO5Oa9nC9wZEbtY-7GGw69P3nU1c_YOfRiQQhoBWNPgBNMqcfe1fd6f4_Nvqa-dMxg_dyutvfP3xepuETBWazIlKuZ01RiplG6E0_Y3-3rKhW0i8AIrUfeCI','ecebfd8c966ad842','android','manual','',NULL,NULL,NULL,0.00,5.00,0,NULL,'2017-07-23 20:06:25','2017-07-25 09:30:03'),(66,'John','Abrahm','CASH','asbc@gmail.com','1234567','$2y$10$E.l5sx5aBbofdYZd6MemdulNz8l5Y9Mv8FtjfBUanvvQ2J12ftQC2',NULL,NULL,NULL,'android','manual',NULL,NULL,NULL,NULL,0.00,5.00,0,NULL,'2017-07-23 21:42:11','2017-07-23 21:42:11'),(67,'Ankit','Patel','CASH','ankit@elitechsystems.com','+918160529619','$2y$10$8Xjn63OPtWbM2eyWStf3xO0QHQvxYhUg.TV8SByzBwVvbfKG9ClDu','','fszcY0F8gy8:APA91bFSFh-EssIcAyMHDkFlA4bfnZjkwCDt1EzTitKhN9dCc-cJvAh0MvApyllgQ5Tm0YNxGbxPx0PN1d59PYSQQyoXxhRYVFN_LnvTG3Bke3fvyhWeAAohXSLyph-rxX0fynCb0Wyy','444eb7f31dc4ff08','android','manual','',23.01439490,72.50272350,NULL,0.00,5.00,0,'mGoZw96PXacAu5ekspDbk6kaHz035GnvDf2FH6FDLojqrFhO5qcioJXm8zHc','2017-07-24 10:20:15','2017-07-24 14:39:53'),(68,'Test','123','CASH','toshioazuma101@yahoo.com','111','$2y$10$e8x9V/zOc20incaM9Za9QuutRcsT83BZbNFUpjJWCsrR9XX3yZZeS',NULL,'no device','4360900B-EF6C-4646-9FD5-7F2758097D0F','ios','manual',NULL,41.66962160,123.51054445,'cus_B5h3R9brpUTEFM',0.00,5.00,0,NULL,'2017-07-24 16:15:47','2017-07-26 16:59:51'),(69,'Toshio','Azuma','CASH','t_azuma@aol.com','+15155511551515','$2y$10$WMPtRfRapmsu5nvKo0S.4OkMRUdeKN4fHh4wWcF1XgNGs8o1nPo7q','user/profile/3ee5ecc452f6c26c41c315408dabb1b9.jpeg','no device','49499913-5B76-4A66-AF2D-80A702F4EDFB','ios','manual',NULL,NULL,NULL,NULL,0.00,5.00,0,NULL,'2017-07-24 17:58:03','2017-07-24 17:59:12'),(70,'Vick','Vicky','CASH','rotichvictor@rocketmail.com','+254725202227','$2y$10$vAK6TcCXUZOiQ3TUWR6EEeGLMI2RuBB6AICEI99ipm3782Ol4V1sS','','fQVG_Rilkhg:APA91bEBc4MTaa6hKEylKt_WCvn1v-4SHhtfytvTMf0QIA8-9oOre24pyMo4_2oSgslx149QAAY2ifrguZXoX2qrWOId2Wc-DFA-1fzGZzq4mgwDy253_DG9K3P2ZcAagMsIUhDuRPfU','ecebfd8c966ad842','android','manual','',NULL,NULL,NULL,0.00,5.00,0,NULL,'2017-07-24 21:39:40','2017-07-24 21:39:40'),(71,'Demo','Account','CASH','qwer@gmail.com','+9177044022','$2y$10$r2c9kpQrq3vqAci0zhzlye3ccC5gnwf0aU4x1homM/6uiqk.G5JVO','user/profile/6da440c06c4a3d8ea45df4ad420e351d.jpeg','992b9103db7ff43a763fe509ef2d7fbc5bb00b66865663097ad82473fa840228','2ECAEBD7-7B2C-4C5B-9EC5-E9CCFD1E2F7A','ios','manual',NULL,23.75554702,90.39319049,'cus_B5ftFMrPVTi0aM',0.00,5.00,0,'37nQ53zMh0xenxXQndRUfkmzZOytz0CiVcY7aQ9bDUSrEg1qH2Zz0Z5p3572','2017-07-25 13:46:48','2017-07-26 20:03:27'),(72,'Aaa','Ffff','CASH','aaa@bbb.com','+8613080791097','$2y$10$SwJl6FXvmGBByJwvnYkExuxSYzqi1NWOm1eUPkj16bMbB.W0hkXSC',NULL,'','','ios','manual',NULL,NULL,NULL,NULL,0.00,5.00,0,NULL,'2017-07-26 15:12:08','2017-07-26 15:34:31'),(74,'Rygf','Fhj','CASH','asd@gmail.com','+8801781474903','$2y$10$g52M7wxQBaJElXQrQ8HAfuWwLBH.2gvKAFEyf/noATWUJCdtDBnne',NULL,'0ab864460283cdb2faf48676e90aeeff06077d4ab811b12c10a2662203e0a5b4','2ECAEBD7-7B2C-4C5B-9EC5-E9CCFD1E2F7A','ios','manual',NULL,NULL,NULL,NULL,0.00,5.00,0,NULL,'2017-07-26 15:36:55','2017-07-26 15:36:55'),(75,'Ahab','Hwhh','CARD','geviwh@gmail.com','+8801618834309','$2y$10$mKziyMbT2kLRrJYE6i8rdO3BbkmVFN7HLN3zVYjWghti77m7AGA4y',NULL,'','','ios','manual',NULL,23.75513269,90.38991975,'cus_B64uSp24BFY8Nu',0.00,5.00,0,NULL,'2017-07-26 16:48:19','2017-07-26 18:31:53');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-07-26 21:48:11
