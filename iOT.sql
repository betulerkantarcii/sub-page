-- MySQL dump 10.13  Distrib 9.2.0, for macos15.2 (arm64)
--
-- Host: localhost    Database: iOT_page_db
-- ------------------------------------------------------
-- Server version	8.0.37

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `activations`
--

DROP TABLE IF EXISTS `activations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activations` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `used` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `activations_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activations`
--

LOCK TABLES `activations` WRITE;
/*!40000 ALTER TABLE `activations` DISABLE KEYS */;
/*!40000 ALTER TABLE `activations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_activations`
--

DROP TABLE IF EXISTS `admin_activations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_activations` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `used` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `admin_activations_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_activations`
--

LOCK TABLES `admin_activations` WRITE;
/*!40000 ALTER TABLE `admin_activations` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_activations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_password_resets`
--

DROP TABLE IF EXISTS `admin_password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `admin_password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_password_resets`
--

LOCK TABLES `admin_password_resets` WRITE;
/*!40000 ALTER TABLE `admin_password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_users`
--

DROP TABLE IF EXISTS `admin_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activated` tinyint(1) NOT NULL DEFAULT '0',
  `forbidden` tinyint(1) NOT NULL DEFAULT '0',
  `language` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `last_login_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_users_email_deleted_at_unique` (`email`,`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_users`
--

LOCK TABLES `admin_users` WRITE;
/*!40000 ALTER TABLE `admin_users` DISABLE KEYS */;
INSERT INTO `admin_users` VALUES (1,'Administrator','Administrator','cms.admin@agu.edu.tr','$2a$12$GgJA8Ictjv0UBpURTIOxl.YQbMEr2rMf84wmqOmqF19Q4Nd.XN3C.','AxioVgsV4o7W8yQwUiaTHwLJJkVntVgGpb0viE5lovLbtaqlzVx9E2xAO5pF',1,0,'en',NULL,'2022-09-15 05:58:05','2024-06-25 18:04:39','2024-06-25 18:04:39');
/*!40000 ALTER TABLE `admin_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `articles_with_relationships`
--

DROP TABLE IF EXISTS `articles_with_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `articles_with_relationships` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `published_at` date DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '0',
  `author_id` int unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `articles_with_relationships_author_id_foreign` (`author_id`),
  CONSTRAINT `articles_with_relationships_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articles_with_relationships`
--

LOCK TABLES `articles_with_relationships` WRITE;
/*!40000 ALTER TABLE `articles_with_relationships` DISABLE KEYS */;
INSERT INTO `articles_with_relationships` VALUES (1,'ksnfkdsnf','<p>njdfnjnsjnfj</p>',NULL,1,2,'2022-10-17 16:30:48','2022-10-18 03:58:40'),(2,'bsdjfbdbsf','<p>jssjdbfbsdbfad</p>',NULL,1,1,'2022-10-20 08:55:20','2022-10-20 08:55:20');
/*!40000 ALTER TABLE `articles_with_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authors`
--

DROP TABLE IF EXISTS `authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `authors` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authors`
--

LOCK TABLES `authors` WRITE;
/*!40000 ALTER TABLE `authors` DISABLE KEYS */;
INSERT INTO `authors` VALUES (1,'temp1','2022-10-17 10:57:22','2022-10-17 10:57:22'),(2,'temp2','2022-10-17 10:57:28','2022-10-17 10:57:28'),(3,'temp3','2022-10-17 10:58:02','2022-10-17 10:58:02');
/*!40000 ALTER TABLE `authors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `choice_of_template`
--

DROP TABLE IF EXISTS `choice_of_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `choice_of_template` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `template_id` int unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `choice_of_template_template_id_foreign` (`template_id`),
  CONSTRAINT `choice_of_template_template_id_foreign` FOREIGN KEY (`template_id`) REFERENCES `templates` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `choice_of_template`
--

LOCK TABLES `choice_of_template` WRITE;
/*!40000 ALTER TABLE `choice_of_template` DISABLE KEYS */;
INSERT INTO `choice_of_template` VALUES (2,4,'2022-10-26 07:21:09','2023-04-09 17:10:56');
/*!40000 ALTER TABLE `choice_of_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_calendar`
--

DROP TABLE IF EXISTS `event_calendar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_calendar` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` json NOT NULL,
  `link` json DEFAULT NULL,
  `event_time` datetime NOT NULL,
  `event_location` json NOT NULL,
  `published_at` date DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_calendar`
--

LOCK TABLES `event_calendar` WRITE;
/*!40000 ALTER TABLE `event_calendar` DISABLE KEYS */;
INSERT INTO `event_calendar` VALUES (1,'{\"en\": \"Spring Fest\", \"tr\": \"Bahar Festivali\"}','{\"tr\": null}','2022-10-27 12:00:00','{\"en\": \"Sümer Campus\", \"tr\": \"Sümer Kampüsü\"}',NULL,1,'2022-10-27 06:54:42','2022-10-27 06:54:42'),(2,'{\"en\": \"Graduation Ceremony\", \"tr\": \"Mezuniyet Töreni\"}','{\"tr\": null}','2022-10-27 15:00:00','{\"en\": \"Sumer Campus\", \"tr\": \"Sümer Kampüsü\"}',NULL,1,'2022-10-27 06:55:58','2022-10-27 06:55:58');
/*!40000 ALTER TABLE `event_calendar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main`
--

DROP TABLE IF EXISTS `main`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `main` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` json NOT NULL,
  `description` json NOT NULL,
  `link` json DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main`
--

LOCK TABLES `main` WRITE;
/*!40000 ALTER TABLE `main` DISABLE KEYS */;
INSERT INTO `main` VALUES (9,'{\"en\": \"Logo\", \"tr\": \"Logo\"}','{\"en\": \"<p>You can change logo in here.</p>\", \"tr\": \"<p>Logoyu burdan değiştirebilirsiniz.</p>\"}','{\"en\": \"https://cita.agu.edu.tr\", \"tr\": \"https://cita.agu.edu.tr\"}',1,'2024-07-08 07:33:34','2025-03-12 06:53:00'),(10,'{\"en\": \"Slider Background\", \"tr\": \"Slaty Arka plan\"}','{\"en\": \"<p>You can change slider background in here.&nbsp;</p>\", \"tr\": \"<p>Slayt arka planı burdan değiştirebilirsiniz.</p>\"}','{\"tr\": null}',1,'2024-07-08 07:34:43','2024-07-08 07:34:43'),(11,'{\"en\": \"Menu Background\", \"tr\": \"Menü Arka plan\"}','{\"en\": \"<p>You can change menu background from here.</p>\", \"tr\": \"<p>Menü arkaplanı burdan değiştirebilirsiniz.</p>\"}','{\"tr\": null}',1,'2024-07-08 07:35:37','2024-07-08 07:35:37');
/*!40000 ALTER TABLE `main` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media`
--

DROP TABLE IF EXISTS `media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint unsigned NOT NULL,
  `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disk` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `conversions_disk` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` bigint unsigned NOT NULL,
  `manipulations` json NOT NULL,
  `custom_properties` json NOT NULL,
  `generated_conversions` json NOT NULL,
  `responsive_images` json NOT NULL,
  `order_column` int unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `media_uuid_unique` (`uuid`),
  KEY `media_model_type_model_id_index` (`model_type`,`model_id`),
  KEY `media_order_column_index` (`order_column`)
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media`
--

LOCK TABLES `media` WRITE;
/*!40000 ALTER TABLE `media` DISABLE KEYS */;
INSERT INTO `media` VALUES (1,'Brackets\\AdminAuth\\Models\\AdminUser',1,'4e871449-87fe-4310-8b23-87e1a8f87f5f','avatar','avatar','avatar.png','image/png','media','media',23924,'[]','[]','{\"thumb_75\": true, \"thumb_150\": true, \"thumb_200\": true}','[]',1,'2022-09-15 05:58:06','2022-09-15 05:58:06'),(2,'App\\Models\\Main',1,'13984cd7-ee5e-4356-9662-dea0ddac45c2','gallery','iYAFiqttwoqDWpkVrIzyPCrPnfXDCjsOt6SFD23m','iYAFiqttwoqDWpkVrIzyPCrPnfXDCjsOt6SFD23m.png','image/png','media','media',231530,'[]','{\"name\": \"profile1.png\", \"width\": 510, \"height\": 338, \"file_name\": \"profile1.png\"}','[]','[]',2,'2022-09-15 06:01:59','2022-09-15 06:01:59'),(3,'App\\Models\\Main',1,'f00b5320-e00d-486f-b4e3-fe940d90d548','gallery','BbpLo44llTBSAjbL5tCKWgLtwDoswl2Kmrfq7WA1','BbpLo44llTBSAjbL5tCKWgLtwDoswl2Kmrfq7WA1.png','image/png','media','media',691120,'[]','{\"name\": \"profile2.png\", \"width\": 668, \"height\": 630, \"file_name\": \"profile2.png\"}','[]','[]',3,'2022-09-15 06:01:59','2022-09-15 06:01:59'),(4,'App\\Models\\Main',1,'72a54a29-6b79-48bb-b3ab-569a9bff4d79','gallery','XxH4VjYV2MCqAY4Mge5VlRSZUrSnMBtZ759qYrQH','XxH4VjYV2MCqAY4Mge5VlRSZUrSnMBtZ759qYrQH.png','image/png','media','media',774428,'[]','{\"name\": \"profile3.png\", \"width\": 666, \"height\": 586, \"file_name\": \"profile3.png\"}','[]','[]',4,'2022-09-15 06:01:59','2022-09-15 06:01:59'),(5,'App\\Models\\Main',1,'a37792ee-2988-4f0b-a342-130dc1a5aa19','gallery','8wJQhK3oYip5k1EPWDK8tenpNvwWUimBMjAGG49v','8wJQhK3oYip5k1EPWDK8tenpNvwWUimBMjAGG49v.png','image/png','media','media',691120,'[]','{\"name\": \"profile2.png\", \"width\": 668, \"height\": 630, \"file_name\": \"profile2.png\"}','[]','[]',5,'2022-09-15 06:01:59','2022-09-15 06:01:59'),(6,'App\\Models\\Menu',1,'79cce632-8ed5-4541-b86e-f2651e2796ec','gallery','HxT4FFfbQVHswskngrOvmSIL23xI4VgiR9sHgQ83','HxT4FFfbQVHswskngrOvmSIL23xI4VgiR9sHgQ83.png','image/png','media','media',231530,'[]','{\"name\": \"profile1.png\", \"width\": 510, \"height\": 338, \"file_name\": \"profile1.png\"}','[]','[]',6,'2022-09-15 06:03:33','2022-09-15 06:03:33'),(7,'App\\Models\\Menu',1,'05ec9efe-30c6-4654-9993-f7d57a51c266','gallery','E5PvdCPX6jxPKOpCcpPIvZbWcx6vwdDse61JEgUw','E5PvdCPX6jxPKOpCcpPIvZbWcx6vwdDse61JEgUw.png','image/png','media','media',691120,'[]','{\"name\": \"profile2.png\", \"width\": 668, \"height\": 630, \"file_name\": \"profile2.png\"}','[]','[]',7,'2022-09-15 06:03:33','2022-09-15 06:03:33'),(8,'App\\Models\\Menu',1,'608aaf8a-31aa-409a-83f2-487845e8ada4','gallery','TOpyAjOxzojC7xbLpUDlsYBUELfnZn00kXKOaCOg','TOpyAjOxzojC7xbLpUDlsYBUELfnZn00kXKOaCOg.png','image/png','media','media',774428,'[]','{\"name\": \"profile3.png\", \"width\": 666, \"height\": 586, \"file_name\": \"profile3.png\"}','[]','[]',8,'2022-09-15 06:03:33','2022-09-15 06:03:33'),(9,'App\\Models\\Menu',1,'c88a89ca-96e3-44a6-967d-243888a6e6d1','gallery','EvImKaf9PvKlpulXPpkcO7rVfJnbvUm8HgmhTuiq','EvImKaf9PvKlpulXPpkcO7rVfJnbvUm8HgmhTuiq.png','image/png','media','media',231530,'[]','{\"name\": \"profile1.png\", \"width\": 510, \"height\": 338, \"file_name\": \"profile1.png\"}','[]','[]',9,'2022-09-15 06:03:33','2022-09-15 06:03:33'),(10,'App\\Models\\Menu',2,'a4c08298-836c-476c-97f2-5c26dfe3fbbf','gallery','Sj0yaMPwpa349X14S5WKBXwsdTD3WmcTOnwSLimq','Sj0yaMPwpa349X14S5WKBXwsdTD3WmcTOnwSLimq.png','image/png','media','media',231530,'[]','{\"name\": \"profile1.png\", \"width\": 510, \"height\": 338, \"file_name\": \"profile1.png\"}','[]','[]',10,'2022-09-15 06:04:34','2022-09-15 06:04:34'),(11,'App\\Models\\Menu',2,'1084ac9f-6b86-461a-a0c9-ce24df989153','gallery','CeJSwJVKMRU5orpJXqekYAE5D0y7CbsV9UZmForL','CeJSwJVKMRU5orpJXqekYAE5D0y7CbsV9UZmForL.png','image/png','media','media',691120,'[]','{\"name\": \"profile2.png\", \"width\": 668, \"height\": 630, \"file_name\": \"profile2.png\"}','[]','[]',11,'2022-09-15 06:04:34','2022-09-15 06:04:34'),(12,'App\\Models\\Menu',2,'a10844ab-f5e2-4750-8127-6dd8587f026d','gallery','G82GhCATnK3Di4HyrppcSWmVsveZXvII4MKAXTSU','G82GhCATnK3Di4HyrppcSWmVsveZXvII4MKAXTSU.png','image/png','media','media',774428,'[]','{\"name\": \"profile3.png\", \"width\": 666, \"height\": 586, \"file_name\": \"profile3.png\"}','[]','[]',12,'2022-09-15 06:04:34','2022-09-15 06:04:34'),(13,'App\\Models\\Menu',2,'341dee70-6d45-43f5-a8be-e863862e8721','gallery','Z3T2iJGvPC7JpMN5hKKnnPsghv0E5ZXlsH0lr6hG','Z3T2iJGvPC7JpMN5hKKnnPsghv0E5ZXlsH0lr6hG.png','image/png','media','media',774428,'[]','{\"name\": \"profile3.png\", \"width\": 666, \"height\": 586, \"file_name\": \"profile3.png\"}','[]','[]',13,'2022-09-15 06:04:34','2022-09-15 06:04:34'),(14,'App\\Models\\Menu',3,'0a6de91d-8c43-45e2-a7b4-acb230a99b56','gallery','1nswz64yhUkl8mn0FKqTzX5r2C3J28sYYEqpSU1y','1nswz64yhUkl8mn0FKqTzX5r2C3J28sYYEqpSU1y.png','image/png','media','media',231530,'[]','{\"name\": \"profile1.png\", \"width\": 510, \"height\": 338, \"file_name\": \"profile1.png\"}','[]','[]',14,'2022-09-15 06:05:36','2022-09-15 06:05:36'),(15,'App\\Models\\Menu',3,'4714beb5-dcb8-4913-8177-242b54dc139b','gallery','bb2E3Yojqkzj7WONPI486Un7Fw3jjlpl7hZE3pG1','bb2E3Yojqkzj7WONPI486Un7Fw3jjlpl7hZE3pG1.png','image/png','media','media',691120,'[]','{\"name\": \"profile2.png\", \"width\": 668, \"height\": 630, \"file_name\": \"profile2.png\"}','[]','[]',15,'2022-09-15 06:05:36','2022-09-15 06:05:36'),(16,'App\\Models\\Menu',3,'7593a9b2-2ccb-4802-8c3f-f1a2b562b789','gallery','4AuuSyH36RLQerNDMNAtjxL1uVh3cBUEpNbenjqo','4AuuSyH36RLQerNDMNAtjxL1uVh3cBUEpNbenjqo.png','image/png','media','media',774428,'[]','{\"name\": \"profile3.png\", \"width\": 666, \"height\": 586, \"file_name\": \"profile3.png\"}','[]','[]',16,'2022-09-15 06:05:36','2022-09-15 06:05:36'),(17,'App\\Models\\Menu',3,'8c3afe26-f6bd-4cb5-a21d-4dc23ba7a4ed','gallery','bJn3RyLsI0fhDf2vkaIA3sIwrOOrdNVOuMQs8OEr','bJn3RyLsI0fhDf2vkaIA3sIwrOOrdNVOuMQs8OEr.png','image/png','media','media',691120,'[]','{\"name\": \"profile2.png\", \"width\": 668, \"height\": 630, \"file_name\": \"profile2.png\"}','[]','[]',17,'2022-09-15 06:05:36','2022-09-15 06:05:36'),(66,'App\\Models\\Research',4,'bbc3f9c2-3f0f-4405-bbe9-8edb5aed60ec','cover','VwP39vqzCgve80n4D1tZHw92gJEO6NyoBt5jCdzl','VwP39vqzCgve80n4D1tZHw92gJEO6NyoBt5jCdzl.jpg','image/jpeg','media','media',131030,'[]','{\"name\": \"780600.jpg\", \"width\": 1000, \"height\": 563, \"file_name\": \"780600.jpg\"}','[]','[]',46,'2024-07-07 10:08:36','2024-07-07 10:08:36'),(74,'App\\Models\\Main',11,'59095a63-7a41-4aee-a1b3-650a81127de8','cover','30iAkAtycu6vO0YP1Uqj1E8tHaIsGMZAPdv4I4uU','30iAkAtycu6vO0YP1Uqj1E8tHaIsGMZAPdv4I4uU.png','image/png','media','media',887174,'[]','{\"name\": \"4.png\", \"width\": 1080, \"height\": 1080, \"file_name\": \"4.png\"}','[]','[]',54,'2024-07-08 07:35:37','2024-07-08 07:35:37'),(77,'App\\Models\\Main',10,'f5f5bcc8-ddfd-49b1-b072-40ce856d4ad3','cover','1RMqkWejFuF4JyqyrzRJs0i6RhhTSdRUWxYB0a8u','1RMqkWejFuF4JyqyrzRJs0i6RhhTSdRUWxYB0a8u.jpg','image/jpeg','media','media',66561,'[]','{\"name\": \"slider-background-2.jpg\", \"width\": 1366, \"height\": 768, \"file_name\": \"slider-background-2.jpg\"}','[]','[]',55,'2024-07-08 07:51:06','2024-07-08 07:51:06'),(79,'App\\Models\\Slider',4,'00417178-a754-4b3b-832b-7acef6c69e7e','cover','xyclw5iVa3vdg0XwJz8sjF5gBDOcSHU0PllkVfd7','xyclw5iVa3vdg0XwJz8sjF5gBDOcSHU0PllkVfd7.png','image/png','media','media',1976227,'[]','{\"name\": \"AGU become the center of iOT.png\", \"width\": 1920, \"height\": 1080, \"file_name\": \"AGU become the center of iOT.png\"}','[]','[]',57,'2024-07-08 10:54:16','2024-07-08 10:54:16'),(94,'App\\Models\\Main',9,'a5a69d48-49f9-428a-b563-efc139b89b13','cover','aIZ011aDRQqRcmZpUlY3JIc9OviZnHYWjbHCiKcq','aIZ011aDRQqRcmZpUlY3JIc9OviZnHYWjbHCiKcq.png','image/png','media','media',25646,'[]','{\"name\": \"iOT.png\", \"width\": 718, \"height\": 386, \"file_name\": \"iOT.png\"}','[]','[]',65,'2025-03-09 23:54:27','2025-03-09 23:54:27'),(97,'App\\Models\\Research',1,'05829edd-30b5-439e-b116-3ce2b435ed2b','cover','LQ6T0nb2Pbwrhop3i6tgZVaAgVYUEX7Mamitcp1u','LQ6T0nb2Pbwrhop3i6tgZVaAgVYUEX7Mamitcp1u.jpg','image/jpeg','media','media',458321,'[]','{\"name\": \"1_1fb7508859.jpg\", \"width\": 2048, \"height\": 1152, \"file_name\": \"1_1fb7508859.jpg\"}','[]','[]',68,'2025-03-11 15:48:34','2025-03-11 15:48:34'),(100,'App\\Models\\Newsandevent',3,'ccf18afb-66ef-45c6-83bd-48669b4622e9','cover','vavYkNP8ZJAWHWUdfonJlR9fpd2SmFkAKvlzp5JW','vavYkNP8ZJAWHWUdfonJlR9fpd2SmFkAKvlzp5JW.jpg','image/jpeg','media','media',575817,'[]','{\"name\": \"cita_iot_webinar.jpg\", \"width\": 2835, \"height\": 1890, \"file_name\": \"cita_iot_webinar.jpg\"}','[]','[]',71,'2025-03-11 15:54:00','2025-03-11 15:54:00'),(107,'App\\Models\\Newsandevent',1,'576876c7-9e80-458c-b515-4336e44ab378','cover','EE9oGVdWlYmI3VZb6Na2ZMAWkMuFoNzT6pH5KYlE','EE9oGVdWlYmI3VZb6Na2ZMAWkMuFoNzT6pH5KYlE.png','image/png','media','media',2062205,'[]','{\"name\": \"Screenshot 2025-03-12 at 00.43.09.png\", \"width\": 1418, \"height\": 936, \"file_name\": \"Screenshot 2025-03-12 at 00.43.09.png\"}','[]','[]',74,'2025-03-11 18:43:48','2025-03-11 18:43:48'),(108,'App\\Models\\Newsandevent',2,'ac2ef7d5-39c2-404c-b140-bb15685ef4c6','cover','y2TclZKNWyBPM3Yu8p8sUg27BKv2lsWU7XapFD4n','y2TclZKNWyBPM3Yu8p8sUg27BKv2lsWU7XapFD4n.png','image/png','media','media',324382,'[]','{\"name\": \"10-ocak-2025-3.png\", \"width\": 1500, \"height\": 1000, \"file_name\": \"10-ocak-2025-3.png\"}','[]','[]',75,'2025-03-11 18:50:55','2025-03-11 18:50:55'),(109,'App\\Models\\Slider',4,'236fe040-6595-4ab7-b288-20569839ed7c','coverEN','kQsB2fE4IlkKf3GACEkJAahdq1iBwYBAQQmDjPIe','kQsB2fE4IlkKf3GACEkJAahdq1iBwYBAQQmDjPIe.png','image/png','media','media',1492974,'[]','{\"name\": \"Screenshot 2025-03-11 at 21.50.56.png\", \"width\": 1452, \"height\": 822, \"file_name\": \"Screenshot 2025-03-11 at 21.50.56.png\"}','[]','[]',76,'2025-03-11 19:45:28','2025-03-11 19:45:28'),(113,'App\\Models\\Slider',8,'dc5f2fcd-9900-49f9-ae55-8a472bd917d7','coverEN','O4cmjWBL69rEdjMmf9LcFvfx3BD64h18vhpWXvuG','O4cmjWBL69rEdjMmf9LcFvfx3BD64h18vhpWXvuG.png','image/png','media','media',1492974,'[]','{\"name\": \"Screenshot 2025-03-11 at 21.50.56.png\", \"width\": 1452, \"height\": 822, \"file_name\": \"Screenshot 2025-03-11 at 21.50.56.png\"}','[]','[]',77,'2025-03-12 06:05:04','2025-03-12 06:05:04'),(114,'App\\Models\\Slider',8,'943575b8-d531-4b39-8011-fe9cf505e1bf','coverTR','tvMWXeAOAYsY9m6p8qqvRkAqGGobP6nugQUlAmnc','tvMWXeAOAYsY9m6p8qqvRkAqGGobP6nugQUlAmnc.png','image/png','media','media',1492974,'[]','{\"name\": \"Screenshot 2025-03-11 at 21.50.56.png\", \"width\": 1452, \"height\": 822, \"file_name\": \"Screenshot 2025-03-11 at 21.50.56.png\"}','[]','[]',78,'2025-03-12 06:05:04','2025-03-12 06:05:04'),(115,'App\\Models\\Slider',9,'64d7c799-7112-4f61-8d45-8e6491bb3eb8','coverEN','0Fd0RAkIwWSQ1hFIwleIfQ9lGJvuk718UbLsWATK','0Fd0RAkIwWSQ1hFIwleIfQ9lGJvuk718UbLsWATK.png','image/png','media','media',1286877,'[]','{\"name\": \"Screenshot 2025-03-10 at 06.46.09.png\", \"width\": 1440, \"height\": 954, \"file_name\": \"Screenshot 2025-03-10 at 06.46.09.png\"}','[]','[]',79,'2025-03-12 06:06:34','2025-03-12 06:06:34'),(116,'App\\Models\\Slider',9,'ac1d87ca-d821-478c-b3cc-3cb10b073178','coverTR','mrTTiOKSGRDkHX0L1PWHljSb9JQwwJhxyNSITzGt','mrTTiOKSGRDkHX0L1PWHljSb9JQwwJhxyNSITzGt.png','image/png','media','media',1286877,'[]','{\"name\": \"Screenshot 2025-03-10 at 06.46.09.png\", \"width\": 1440, \"height\": 954, \"file_name\": \"Screenshot 2025-03-10 at 06.46.09.png\"}','[]','[]',80,'2025-03-12 06:06:34','2025-03-12 06:06:34'),(117,'App\\Models\\Slider',10,'6282d36f-4b32-4996-9ff5-5e3086f4f51d','coverEN','bw8iy1ApnpKCGKYhUAbh9OGFxQ5gYFjlooMbC5iT','bw8iy1ApnpKCGKYhUAbh9OGFxQ5gYFjlooMbC5iT.png','image/png','media','media',324382,'[]','{\"name\": \"10-ocak-2025-3.png\", \"width\": 1500, \"height\": 1000, \"file_name\": \"10-ocak-2025-3.png\"}','[]','[]',81,'2025-03-12 06:16:40','2025-03-12 06:16:40'),(118,'App\\Models\\Slider',10,'2487c5b6-2d47-422d-bad2-d2118015f1c6','coverTR','vIIwRizpvgESl6g63UUlpODc53qkfc3wg6dRp5jE','vIIwRizpvgESl6g63UUlpODc53qkfc3wg6dRp5jE.png','image/png','media','media',324382,'[]','{\"name\": \"10-ocak-2025-3.png\", \"width\": 1500, \"height\": 1000, \"file_name\": \"10-ocak-2025-3.png\"}','[]','[]',82,'2025-03-12 06:16:40','2025-03-12 06:16:40');
/*!40000 ALTER TABLE `media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_content`
--

DROP TABLE IF EXISTS `menu_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_content` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` json NOT NULL,
  `description` json NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '0',
  `menu_id` int unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_content_menu_id_foreign` (`menu_id`),
  CONSTRAINT `menu_content_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_content`
--

LOCK TABLES `menu_content` WRITE;
/*!40000 ALTER TABLE `menu_content` DISABLE KEYS */;
INSERT INTO `menu_content` VALUES (7,'{\"en\": \"About Us\", \"tr\": \"Hakkımızda\"}','{\"en\": \"<meta charset=\\\"UTF-8\\\">\\n  <meta name=\\\"viewport\\\" content=\\\"width=device-width, initial-scale=1.0\\\">\\n  <title>CITA Center - AGU</title>\\n  <style>\\n    * {\\n      box-sizing: border-box;\\n      margin: 0;\\n      padding: 0;\\n    }\\n    body {\\n      font-family: Arial, sans-serif;\\n      background-color: #f9f9f9;\\n      color: #333;\\n      line-height: 1.6;\\n    }\\n    header {\\n      background-color: #004080;\\n      color: white;\\n      padding: 1em;\\n      width: 80%;\\n      margin: 1em auto;\\n      border-radius: 8px;\\n      text-align: center;\\n\\n      margin-bottom: 2em;     /* ✅ Fixed spacing */\\n      overflow: hidden;       /* ✅ Prevents margin collapse */\\n    }\\n    header h1 {\\n      font-size: 1.8em;\\n      margin-bottom: 0.3em;\\n    }\\n    header p {\\n      font-size: 1em;\\n    }\\n    .container-ab {\\n      padding: 7em 1em;        /* ✅ Top padding added */\\n      max-width: 1000px;\\n      margin: auto;\\n    }\\n    h2 {\\n      color: #004080;\\n      margin-top: 1.5em;\\n      font-size: 1.5em;\\n    }\\n    ul {\\n      margin-left: 1.5em;\\n    }\\n    .highlight {\\n      background-color: #e0f2ff;\\n      padding: 1em;\\n      border-left: 5px solid #004080;\\n      margin-top: 1em;\\n      border-radius: 4px;\\n    }\\n\\n    @media (max-width: 768px) {\\n      header {\\n        width: 90%;\\n      }\\n      header h1 {\\n        font-size: 1.5em;\\n      }\\n      header p {\\n        font-size: 0.95em;\\n      }\\n    }\\n    @media (max-width: 480px) {\\n      header {\\n        width: 95%;\\n      }\\n      header h1 {\\n        font-size: 1.3em;\\n      }\\n      header p {\\n        font-size: 0.9em;\\n      }\\n    }\\n  </style>\\n\\n\\n\\n<header>\\n  <h1>Welcome to the CITA Center</h1>\\n  <p>Leading Interdisciplinary IoT Innovation for a Smart and Sustainable Connected Future</p>\\n</header>\\n\\n<p class=\\\"container-ab\\\">\\n  <p>The <strong>Center for IoT Technologies and Applications (CITA)</strong> at Abdullah Gül University (AGU) brings together the university’s core expertise in Internet of Things (IoT) with its domain strengths across engineering and physical sciences, data science and AI, social sciences and economics, sustainability and environmental studies.</p>\\n\\n  <p>The Center for IoT Technologies and Applications (CITA) at AGU has been established with a mission to become a pioneering hub of innovation in the field of interdisciplinary research on Internet of Things (IoT). This initiative stems from the recognition by The Higher Education Council of Türkiye (YÖK) under the “Universities Specializing in Priority Areas Project”, granting the “Priority Area Mission” in IoT.</p>\\n\\n  <h2>Our Vision</h2>\\n  <p>Our vision is for Abdullah Gül University to become the national center of excellence in interdisciplinary IoT research, training, and innovation, with applications that benefit society and the environment.</p>\\n  <div class=\\\"highlight\\\">\\n    <ul>\\n      <li><strong>Interdisciplinary Excellence:</strong> Co-creating innovative solutions through holistic approaches to real-world problems with social, economic, and environmental impact.</li>\\n      <li><strong>Society-Centered Innovation:</strong> Ensuring that IoT technologies serve communities and the planet while addressing societal needs.</li>\\n      <li><strong>Sustainability at its Core:</strong> Embedding eco-friendly and resilient solutions into every project.</li>\\n    </ul>\\n  </div>\\n\\n  <h2>Our Mission</h2>\\n  <p>Our mission is to leverage IoT and cutting-edge technologies to address global challenges and foster a smarter, more sustainable, and connected future. By integrating IoT technologies with diverse disciplines, CITA advances transformative solutions for challenges such as climate change, urbanization, resource management, and digital transformation. CITA aims to:</p>\\n  <ul>\\n    <li>Lead transformative IoT-driven research and development.</li>\\n    <li>Establish robust national and international collaborations.</li>\\n    <li>Foster strong university-industry partnerships to translate research into impactful applications.</li>\\n    <li>Serve as a hub for living labs, where innovative solutions are tested and implemented in real-world environments.</li>\\n    <li>Build know-how and R&amp;D capacity in emerging technologies like IoT, AI, and digital twins.</li>\\n    <li>Provide specialized training programs to develop skilled talent for the workforce of the future.</li>\\n    <li>Support and lead digital transformation initiatives across industries and communities.</li>\\n    <li>Promote sustainability by embedding environmental, social, and economic responsibility into all projects.</li>\\n    <li>Empower communities with inclusive, scalable, and impactful solutions that enhance quality of life.</li>\\n    <li>Drive innovation and resilience while contributing to local, national and global net-zero carbon goals.</li>\\n  </ul>\\n\\n  <h2>Join Us in Shaping the Future</h2>\\n  <p>The CITA Center invites <strong>students, researchers, industry partners, and policymakers</strong> to collaborate in building a sustainable and connected future. Together, we can create a global model for IoT-driven innovation, ensuring that technology serves humanity and the planet.</p>\\n</p>\", \"tr\": \"<meta charset=\\\"UTF-8\\\">\\n  <meta name=\\\"viewport\\\" content=\\\"width=device-width, initial-scale=1.0\\\">\\n  <title>CITA Merkezi - AGÜ</title>\\n  <style>\\n    * {\\n      box-sizing: border-box;\\n      margin: 0;\\n      padding: 0;\\n    }\\n    body {\\n      font-family: Arial, sans-serif;\\n      background-color: #f9f9f9;\\n      color: #333;\\n      line-height: 1.6;\\n    }\\n    header {\\n      background-color: #004080;\\n      color: white;\\n      padding: 1em;\\n      width: 80%;\\n      margin: 1em auto;\\n      margin-bottom: 2em;     /* ✅ Alt boşluk eklendi */\\n      border-radius: 8px;\\n      text-align: center;\\n      overflow: hidden;       /* ✅ Margin çakışmalarını engeller */\\n    }\\n    header h1 {\\n      font-size: 1.8em;\\n      margin-bottom: 0.3em;\\n    }\\n    header p {\\n      font-size: 1em;\\n    }\\n    .container-ab {\\n      padding: 8em 1em;        /* ✅ Üst padding eklendi */\\n      max-width: 1000px;\\n      margin: auto;\\n    }\\n    h2 {\\n      color: #004080;\\n      margin-top: 1.5em;\\n      font-size: 1.5em;\\n    }\\n    ul {\\n      margin-left: 1.5em;\\n    }\\n    .highlight {\\n      background-color: #e0f2ff;\\n      padding: 1em;\\n      border-left: 5px solid #004080;\\n      margin-top: 1em;\\n      border-radius: 4px;\\n    }\\n\\n    @media (max-width: 768px) {\\n      header {\\n        width: 90%;\\n      }\\n      header h1 {\\n        font-size: 1.5em;\\n      }\\n      header p {\\n        font-size: 0.95em;\\n      }\\n    }\\n    @media (max-width: 480px) {\\n      header {\\n        width: 95%;\\n      }\\n      header h1 {\\n        font-size: 1.3em;\\n      }\\n      header p {\\n        font-size: 0.9em;\\n      }\\n    }\\n  </style>\\n\\n\\n\\n<header>\\n  <h1>CITA Merkezine Hoş Geldiniz</h1>\\n  <p>Akıllı ve Sürdürülebilir Bağlantılı Bir Gelecek İçin Disiplinlerarası IoT İnovasyonuna Liderlik</p>\\n</header>\\n\\n<p class=\\\"container-ab\\\">\\n  <p><strong>Nesnelerin İnterneti Teknolojileri ve Uygulamaları Merkezi (CITA)</strong>, Abdullah Gül Üniversitesi (AGÜ) bünyesinde; Nesnelerin İnterneti (IoT) alanındaki temel uzmanlığı, mühendislik ve temel bilimler, veri bilimi ve yapay zekâ, sosyal bilimler ve ekonomi, sürdürülebilirlik ve çevre çalışmaları gibi alanlardaki yetkinliklerle bütünleştirmektedir.</p>\\n\\n  <p>CITA, disiplinlerarası IoT araştırmaları alanında öncü bir yenilik merkezi olma misyonuyla kurulmuştur. Bu girişim, Türkiye Yükseköğretim Kurulu (YÖK) tarafından yürütülen “Öncelikli Alanlarda Uzmanlaşan Üniversiteler Projesi” kapsamında, AGÜ’ye verilen “IoT Öncelikli Alan Misyonu” tanınmasına dayanmaktadır.</p>\\n\\n  <h2>Vizyonumuz</h2>\\n  <p>Abdullah Gül Üniversitesi\'nin, disiplinlerarası IoT araştırmaları, eğitimi ve inovasyonu alanlarında ulusal düzeyde bir mükemmeliyet merkezi hâline gelmesi; bu faaliyetlerin toplum ve çevre yararına uygulanması hedeflenmektedir.</p>\\n  <div class=\\\"highlight\\\">\\n    <ul>\\n      <li><strong>Disiplinlerarası Mükemmeliyet:</strong> Sosyal, ekonomik ve çevresel etkileri olan gerçek dünya problemlerine yönelik, bütüncül yaklaşımlar geliştirerek yenilikçi çözümler üretmek.</li>\\n      <li><strong>Toplum Merkezli İnovasyon:</strong> IoT teknolojilerinin, toplumların ve gezegenin ihtiyaçlarına hizmet edecek şekilde tasarlanmasını sağlamak.</li>\\n      <li><strong>Sürdürülebilirlik Odaklılık:</strong> Tüm projelere çevre dostu ve dayanıklı çözümler entegre etmek.</li>\\n    </ul>\\n  </div>\\n\\n  <h2>Misyonumuz</h2>\\n  <p>Misyonumuz; IoT ve ileri düzey teknolojilerden faydalanarak küresel sorunlara çözüm üretmek ve daha akıllı, sürdürülebilir, bağlantılı bir gelecek inşa etmektir. IoT teknolojilerini farklı disiplinlerle bütünleştirerek; iklim değişikliği, kentleşme, kaynak yönetimi ve dijital dönüşüm gibi alanlarda dönüştürücü çözümler geliştirmekteyiz. CITA’nın amaçları şunlardır:</p>\\n  <ul>\\n    <li>IoT odaklı dönüşüm sağlayan araştırma ve geliştirme faaliyetlerine öncülük etmek.</li>\\n    <li>Güçlü ulusal ve uluslararası iş birlikleri tesis etmek.</li>\\n    <li>Üniversite-sanayi iş birlikleri ile araştırmaları somut ve etkili uygulamalara dönüştürmek.</li>\\n    <li>Gerçek ortamda test ve uygulama için yaşam laboratuvarları oluşturmak.</li>\\n    <li>IoT, yapay zekâ ve dijital ikizler gibi yeni teknolojilerde bilgi birikimi ve AR-GE kapasitesi oluşturmak.</li>\\n    <li>Geleceğin iş gücüne yönelik uzmanlık eğitimleri sunmak.</li>\\n    <li>Sanayi ve topluluklarda dijital dönüşüm projelerini desteklemek ve yönlendirmek.</li>\\n    <li>Çevresel, sosyal ve ekonomik sorumluluğu tüm projelere entegre etmek.</li>\\n    <li>Yaşam kalitesini artıracak kapsayıcı, ölçeklenebilir ve etkili çözümler sunmak.</li>\\n    <li>Yenilikçi ve dirençli çözümlerle yerel, ulusal ve küresel net sıfır karbon hedeflerine katkı sağlamak.</li>\\n  </ul>\\n\\n  <h2>Geleceği Birlikte Şekillendirelim</h2>\\n  <p>CITA Merkezi, <strong>öğrenciler, araştırmacılar, sanayi ortakları ve politika yapıcıları</strong> sürdürülebilir ve bağlantılı bir gelecek inşa etmeye davet etmektedir. Birlikte, IoT temelli inovasyon için küresel bir model oluşturarak teknolojinin insanlığa ve gezegene hizmet etmesini sağlayabiliriz.</p>\\n</p>\"}',1,6,'2024-06-30 06:47:37','2025-03-17 05:40:42'),(8,'{\"en\": \"Enabling Technologies\", \"tr\": \"Enabling Technologies\"}','{\"en\": \"<p style=\\\"text-align: center;\\\"><img src=\\\"https://www.includehelp.com/iot/images/iot-enabling-technologies-1.jpg\\\" alt=\\\"\\\" width=\\\"50%\\\"><br></p><h4><br></h4><h4>• <strong>Sensor Design and Development:</strong>&nbsp;</h4><h4>Exploration of novel sensor designs applicable to various applications and use cases. Integration of advanced materials and technologies to create sensors with improved sensitivity, accuracy, and energy efficiency.</h4><h4><br><strong>• Embedded and Control Systems:</strong>&nbsp;</h4><h4>Development of efficient embedded systems for IoT devices with low power consumption. Integration of real-time control systems for autonomous decision-making in IoT applications.</h4><h4><br><strong>• Communication and Networking:</strong>&nbsp;</h4><h4>Research into low-power communication protocols for efficient IoT device communication. Investigation of various communication technologies(Cellular (5G,6G), LPWAN, BLE) for high-speed, low-latency and short/long range connectivity in IoT networks. Advancements in antenna and RF technologies for enhancing wireless connectivity and range in IoT networks.</h4><h4><br><strong>• Computing and Data Processing:&nbsp;</strong></h4><h4>Utilization of edge computing for processing data closer to the source to reduce latency. Development of lightweight algorithms for resource-constrained IoT devices. Exploration of cloud computing and data analytics platforms for handling large-scale IoT data.</h4>\", \"tr\": \"<p><span style=\\\"font-size: 0.875rem;\\\">• Sensor Design and Development:&nbsp;Exploration of novel sensor designs applicable to various</span></p><p>applications and use cases. Integration of advanced materials and technologies to create</p><p>sensors with improved sensitivity, accuracy, and energy efficiency.</p><p>• Embedded and Control Systems:&nbsp;Development of efficient embedded systems for IoT devices</p><p>with low power consumption. Integration of real-time control systems for autonomous</p><p>decision-making in IoT applications.</p><p>• Communication and Networking:&nbsp;Research into low-power communication protocols for</p><p>efficient IoT device communication. Investigation of various communication technologies</p><p>(Cellular (5G,6G), LPWAN, BLE) for high-speed, low-latency and short/long range connectivity</p><p>in IoT networks. Advancements in antenna and RF technologies for enhancing wireless</p><p>connectivity and range in IoT networks.</p><p>• Computing and Data Processing:&nbsp;Utilization of edge computing for processing data closer to</p><p>the source to reduce latency. Development of lightweight algorithms for resource-constrained</p><p>IoT devices. Exploration of cloud computing and data analytics platforms for handling large-</p><p>scale IoT data.</p><p><br></p>\"}',1,7,'2024-06-30 06:48:01','2024-06-30 12:39:40'),(10,'{\"en\": \"Publications\", \"tr\": \"Publications\"}','{\"en\": \"<p>This is Publications page.</p>\", \"tr\": \"<p>This is Publications page.<br></p>\"}',1,9,'2024-06-30 06:49:00','2024-06-30 06:49:00'),(11,'{\"en\": \"News & Events\", \"tr\": \"News & Events\"}','{\"en\": \"<p>This is&nbsp;News &amp; Events page.</p>\", \"tr\": \"<p>This is&nbsp;News &amp; Events page.</p>\"}',1,10,'2024-06-30 06:49:23','2024-06-30 06:49:23'),(12,'{\"en\": \"Contact\", \"tr\": \"Contact\"}','{\"en\": \"<p>This is Contact page.</p>\", \"tr\": \"<p>This is Contact page.<br></p>\"}',1,11,'2024-06-30 06:49:45','2024-06-30 06:49:45'),(13,'{\"en\": \"Smart Cities and Urban Planning\", \"tr\": \"Smart Cities and Urban Planning\"}','{\"en\": \"<div class=\\\"row row-cols-1 row-cols-md-3 g-4\\\">\\n  <div class=\\\"col\\\">\\n    <div class=\\\"card\\\">\\n      <img src=\\\"https://www.firstpoint-mg.com/wp-content/uploads/2023/07/Picture2.png\\\" class=\\\"card-img-top\\\" alt=\\\"...\\\">\\n      <div class=\\\"card-body\\\">\\n        <h5 class=\\\"card-title\\\">Smart architecture and construction</h5>\\n        <p class=\\\"card-text\\\">Incorporates advanced technologies in architectural design and construction processes with a focus on creating intelligent, eco-friendly structures and leveraging innovative construction methods to contribute to the overall sustainability and efficiency of urban areas and buildings.</p>\\n      </div>\\n    </div>\\n  </div>\\n  <div class=\\\"col\\\">\\n    <div class=\\\"card\\\">\\n      <img src=\\\"https://www.digi.com/getattachment/blog/post/introduction-to-smart-transportation-benefits/an-introduction-to-smart-transportation.jpg\\\" class=\\\"card-img-top\\\" alt=\\\"...\\\">\\n      <div class=\\\"card-body\\\">\\n        <h5 class=\\\"card-title\\\">Intelligent transportation systems</h5>\\n        <p class=\\\"card-text\\\">Enhances public transportation through connected traffic infrastructure and autonomous vehicles.</p>\\n      </div>\\n    </div>\\n  </div>\\n  <div class=\\\"col\\\">\\n    <div class=\\\"card\\\">\\n      <img src=\\\"https://www.lingayasvidyapeeth.edu.in/sanmax/wp-content/uploads/2024/02/Solid-Waste-Management-in-Smart-Cities.webp\\\" class=\\\"card-img-top\\\" alt=\\\"...\\\">\\n      <div class=\\\"card-body\\\">\\n        <h5 class=\\\"card-title\\\">Waste management and environmental monitoring</h5>\\n        <p class=\\\"card-text\\\">Utilizes smart systems for waste management and environmental monitoring.</p>\\n      </div>\\n    </div>\\n  </div>\\n</div>\", \"tr\": \"<p>• Smart architecture and construction: Incorporates advanced technologies in architectural design and construction processes with a focus on creating intelligent, eco-friendly structures and leveraging innovative construction methods to contribute to the overall sustainability and efficiency of urban areas and buildings.</p><p>• Intelligent transportation systems: Enhances public transportation through connected traffic infrastructure and autonomous vehicles.</p><p>• Public safety and emergency response systems: Integrates smart systems for improved public safety and emergency response.</p><p>• Waste management and environmental monitoring: Utilizes smart systems for waste management and environmental monitoring.</p>\"}',1,7,'2024-06-30 11:56:15','2025-03-14 05:04:38'),(14,'{\"en\": \"Agriculture and Farming\", \"tr\": \"Agriculture and Farming\"}','{\"en\": \"<div class=\\\"row row-cols-1 row-cols-md-3 g-4\\\">\\n  <div class=\\\"col\\\">\\n    <div class=\\\"card\\\">\\n      <img src=\\\"https://agfundernews.com/wp-content/uploads/2019/05/iStock-898449496-e1595484927319.jpg\\\" class=\\\"card-img-top\\\" alt=\\\"...\\\">\\n      <div class=\\\"card-body\\\">\\n        <h5 class=\\\"card-title\\\">Precision Agriculture</h5>\\n        <p class=\\\"card-text\\\">Involves monitoring soil and crops to optimize farming practices.</p>\\n      </div>\\n    </div>\\n  </div>\\n  <div class=\\\"col\\\">\\n    <div class=\\\"card\\\">\\n      <img src=\\\"https://delcomgroup-tech.com/wp-content/uploads/2023/08/IoTBetail.jpeg\\\" class=\\\"card-img-top\\\" alt=\\\"...\\\">\\n      <div class=\\\"card-body\\\">\\n        <h5 class=\\\"card-title\\\">Livestock Monitoring and Management</h5>\\n        <p class=\\\"card-text\\\">Utilizes technology to monitor and manage livestock. \\n</p>\\n      </div>\\n    </div>\\n  </div>\\n  <div class=\\\"col\\\">\\n    <div class=\\\"card\\\">\\n      <img src=\\\"https://farmmanagementsystem.com.au/wp-content/uploads/2019/07/fms-slide1.jpg\\\" class=\\\"card-img-top\\\" alt=\\\"...\\\">\\n      <div class=\\\"card-body\\\">\\n        <h5 class=\\\"card-title\\\">Automated Irrigation System</h5>\\n        <p class=\\\"card-text\\\"> Implements technology for efficient and automated irrigation.</p>\\n      </div>\\n    </div>\\n  </div>\\n</div>\", \"tr\": \"<p>This is the page for&nbsp;Agriculture and Farming.<br></p>\"}',1,7,'2024-06-30 12:50:15','2025-03-14 05:02:10'),(15,'{\"en\": \"Healthcare and Medical\", \"tr\": \"Healthcare and Medical\"}','{\"en\": \"<div class=\\\"row row-cols-1 row-cols-md-3 g-4\\\">\\n  <div class=\\\"col\\\">\\n    <div class=\\\"card\\\">\\n      <img src=\\\"https://www.logisticare.com/hubfs/LGTC%20Assets/Blog%20Images/BIOMETRIC_MONITORING.jpg\\\" class=\\\"card-img-top\\\" alt=\\\"...\\\">\\n      <div class=\\\"card-body\\\">\\n        <h5 class=\\\"card-title\\\">Biometric Patient Monitoring</h5>\\n        <p class=\\\"card-text\\\">Utilizes wearable health monitors with biological sensors for continuous tracking, providing real-time data on vital signs and biomarkers.\\n</p>\\n      </div>\\n    </div>\\n  </div>\\n  <div class=\\\"col\\\">\\n    <div class=\\\"card\\\">\\n      <img src=\\\"https://www.tuv.com/content-media-files/master-content/global-landingpages/images/wireless/tuv_rheinland_de20_p00_wireless_-iot_medical_health.jpg\\\" class=\\\"card-img-top\\\" alt=\\\"...\\\">\\n      <div class=\\\"card-body\\\">\\n        <h5 class=\\\"card-title\\\">Smart Medical Devices</h5>\\n        <p class=\\\"card-text\\\">Integrates biological science in advanced medical devices, offering personalized diagnostics and treatment tailored to individual biological characteristics.\\n</p>\\n      </div>\\n    </div>\\n  </div>\\n  <div class=\\\"col\\\">\\n    <div class=\\\"card\\\">\\n      <img src=\\\"https://wp.healthdatamanagement.com/wp-content/uploads/2021/08/telehealth-pic.jpg\\\" class=\\\"card-img-top\\\" alt=\\\"...\\\">\\n      <div class=\\\"card-body\\\">\\n        <h5 class=\\\"card-title\\\">Remote Healthcare Tech</h5>\\n        <p class=\\\"card-text\\\">Leverages technology for remote patient care and telemedicine, integrating biological sciences for accurate diagnostics and treatment monitoring.</p>\\n      </div>\\n    </div>\\n  </div>\\n</div>\", \"tr\": \"<p>This is the page for&nbsp;<span style=\\\"font-family: &quot;Helvetica Neue&quot;; font-size: 13px;\\\">Healthcare and Medical.</span><br></p>\"}',1,7,'2024-06-30 12:50:36','2025-03-14 05:41:27'),(16,'{\"en\": \"Smart Society and Communities\", \"tr\": \"Smart Society and Communities\"}','{\"en\": \"<div class=\\\"row row-cols-1 row-cols-md-3 g-4\\\">\\n  <div class=\\\"col\\\">\\n    <div class=\\\"card\\\">\\n      <img src=\\\"https://blog.primr.org/wp-content/uploads/2023/10/GettyImages-1496167879-scaled-e1698331292691.jpg\\\" class=\\\"card-img-top\\\" alt=\\\"...\\\">\\n      <div class=\\\"card-body\\\">\\n        <h5 class=\\\"card-title\\\">Ethical Community Engagement and Participation</h5>\\n        <p class=\\\"card-text\\\"> Prioritizes ethical considerations in implementing digital platforms and smart technologies for community engagement. Emphasizes inclusivity, transparency, and fairness to ensure diverse voices are heard. Integrates social science insights for a shared responsibility, fostering ethical decision-making in community governance. </p>\\n      </div>\\n    </div>\\n  </div>\\n  <div class=\\\"col\\\">\\n    <div class=\\\"card\\\">\\n      <img src=\\\"https://stride.com.au/wp-content/uploads/2023/11/social-wellness.jpg\\\" class=\\\"card-img-top\\\" alt=\\\"...\\\">\\n      <div class=\\\"card-body\\\">\\n        <h5 class=\\\"card-title\\\">Social Well-being and Accessibility</h5>\\n        <p class=\\\"card-text\\\"> Integrates smart solutions focusing on social justice and ethical accessibility. Utilizes technology to address disparities within communities, considering social, economic, and cultural factors. Ethical considerations guide technology implementation, emphasizing privacy, data security, and informed consent to build trust and ensure fair access to resources. </p>\\n      </div>\\n    </div>\\n  </div>\\n</div>\", \"tr\": \"<p>This is the page for&nbsp;<span style=\\\"font-family: &quot;Helvetica Neue&quot;; font-size: 13px;\\\">Smart Society and Communities.</span><br></p>\"}',1,7,'2024-06-30 12:50:56','2025-03-14 05:46:33'),(17,'{\"en\": \"Industrial and Manufacturing\", \"tr\": \"Industrial and Manufacturing\"}','{\"en\": \"<p>This is the page for&nbsp;Industrial and Manufacturing.</p>\", \"tr\": \"<p>This is the page for&nbsp;Industrial and Manufacturing.<br></p>\"}',1,7,'2024-06-30 12:51:14','2024-06-30 12:51:14'),(18,'{\"en\": \"Energy Management\", \"tr\": \"Energy Management\"}','{\"en\": \"<p>This is the page for&nbsp;<span style=\\\"font-family: &quot;Helvetica Neue&quot;; font-size: 13px;\\\">Energy Management.</span></p>\", \"tr\": \"<p>This is the page for&nbsp;<span style=\\\"font-family: &quot;Helvetica Neue&quot;; font-size: 13px;\\\">Energy Management.</span></p>\"}',1,7,'2024-06-30 12:51:40','2024-06-30 12:51:40'),(19,'{\"en\": \"Education and Learning\", \"tr\": \"Education and Learning\"}','{\"en\": \"<p>This is the page for&nbsp;<span style=\\\"font-family: &quot;Helvetica Neue&quot;; font-size: 13px;\\\">Education and Learning.</span><br></p>\", \"tr\": \"<p>This is the page for&nbsp;<span style=\\\"font-family: &quot;Helvetica Neue&quot;; font-size: 13px;\\\">Education and Learning.</span><br></p>\"}',1,7,'2024-06-30 12:52:32','2024-06-30 12:52:32'),(22,'{\"en\": \"Executive Board\", \"tr\": \"Yönetim Kurulu\"}','{\"en\": \"<p>This is executive board page.</p>\", \"tr\": \"<p>Bu sayfa yönetim kurulu sayfasıdır.</p>\"}',1,8,'2025-03-11 17:46:10','2025-03-11 17:46:10'),(23,'{\"en\": \"Members\", \"tr\": \"Üyeler\"}','{\"en\": \"<p>This is members page.</p>\", \"tr\": \"<p>Bu sayfa üyeler sayfasıdır.</p>\"}',1,8,'2025-03-11 17:46:47','2025-03-11 17:46:47'),(24,'{\"en\": \"Advisory Board\", \"tr\": \"Danışma Kurulu\"}','{\"en\": \"<p><span style=\\\"font-size: 14.000001px;\\\">This is advisory board page.</span><br></p>\", \"tr\": \"<p>Bu sayfa danışma kurulu sayfasıdır.&nbsp;</p>\"}',1,8,'2025-03-11 17:47:52','2025-03-11 17:47:52'),(25,'{\"en\": \"Interdisciplinary\", \"tr\": \"Interdisipliner\"}','{\"en\": \"<p>Architecture&nbsp;</p><p>Bioengineering&nbsp;</p><p>Business Administration&nbsp;</p><p>Civil Engineering&nbsp;</p><p>Common Courses&nbsp;</p><p>Computer Engineering&nbsp;</p><p>Economy&nbsp;</p><p>Electrical &amp; Electronics Engineering&nbsp;</p><p>Engineering Sciences&nbsp;</p><p>Graduate School of Science and Engineering&nbsp;</p><p>Graduate School of Social Sciences&nbsp;</p><p>Industrial Design&nbsp;</p><p>Industrial Engineering&nbsp;</p><p>Mechanical Engineering&nbsp;</p><p>Molecular Biology and Genetics&nbsp;</p><p>Nanotechnology Engineering&nbsp;</p><p>Political Science and International Relations&nbsp;</p><p>Psychology&nbsp;</p><p>Sociology&nbsp;</p><p>The School of Languages</p>\", \"tr\": \"<p>- Mimarlık &nbsp;</p><p>- Biyomühendislik &nbsp;</p><p>- İşletme &nbsp;</p><p>- İnşaat Mühendisliği &nbsp;</p><p>- Ortak Dersler &nbsp;</p><p>- Bilgisayar Mühendisliği &nbsp;</p><p>- Ekonomi &nbsp;</p><p>- Elektrik ve Elektronik Mühendisliği &nbsp;</p><p>- Mühendislik Bilimleri &nbsp;</p><p>- Fen ve Mühendislik Bilimleri Enstitüsü &nbsp;</p><p>- Sosyal Bilimler Enstitüsü &nbsp;</p><p>- Endüstriyel Tasarım &nbsp;</p><p>- Endüstri Mühendisliği &nbsp;</p><p>- Makine Mühendisliği &nbsp;</p><p>- Moleküler Biyoloji ve Genetik &nbsp;</p><p>- Nanoteknoloji Mühendisliği &nbsp;</p><p>- Siyaset Bilimi ve Uluslararası İlişkiler &nbsp;</p><p>- Psikoloji &nbsp;</p><p>- Sosyoloji &nbsp;</p><p>- Yabancı Diller Yüksekokulu</p>\"}',1,7,'2025-03-11 17:51:24','2025-03-11 17:51:24');
/*!40000 ALTER TABLE `menu_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menus` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (6,'{\"en\":\"About Us\",\"tr\":\"Hakk\\u0131m\\u0131zda\"}','2024-06-30 06:44:34','2025-03-11 17:41:29'),(7,'{\"en\":\"Ecosystem\",\"tr\":\"Ekosistem\"}','2024-06-30 06:44:51','2025-03-11 17:41:36'),(8,'{\"en\":\"People\",\"tr\":\"Ki\\u015filer\"}','2024-06-30 06:45:04','2025-03-11 17:44:29'),(9,'{\"en\":\"Publications\",\"tr\":\"Yay\\u0131nlar\"}','2024-06-30 06:45:18','2025-03-11 17:44:36'),(10,'{\"en\":\"News & Events\",\"tr\":\"Haberler & Etkinlikler\"}','2024-06-30 06:46:08','2025-03-11 17:44:52'),(11,'{\"en\":\"Contact\",\"tr\":\"\\u0130leti\\u015fim\"}','2024-06-30 06:46:33','2025-03-11 17:45:01');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2017_08_24_000000_create_activations_table',1),(4,'2017_08_24_000000_create_admin_activations_table',1),(5,'2017_08_24_000000_create_admin_password_resets_table',1),(6,'2017_08_24_000000_create_admin_users_table',1),(7,'2018_07_18_000000_create_wysiwyg_media_table',1),(8,'2019_08_19_000000_create_failed_jobs_table',1),(9,'2019_12_14_000001_create_personal_access_tokens_table',1),(10,'2020_10_21_000000_add_last_login_at_timestamp_to_admin_users_table',1),(11,'2022_08_26_120832_create_media_table',1),(12,'2022_08_26_120832_create_permission_tables',1),(13,'2022_08_26_120837_fill_default_admin_user_and_permissions',1),(14,'2022_08_26_120918_create_translations_table',1),(15,'2022_08_26_151510_create_menu_table',1),(16,'2022_08_26_151740_fill_permissions_for_menu',1),(17,'2022_08_28_195621_create_main_table',1),(18,'2022_08_28_200002_fill_permissions_for_main',1),(19,'2022_10_17_124711_create_templates_table',2),(20,'2022_10_17_124919_fill_permissions_for_template',3),(21,'2022_10_17_131530_create_authors_table',4),(22,'2022_10_17_131628_fill_permissions_for_author',5),(23,'2022_10_17_131721_create_articles_with_relationships_table',6),(24,'2022_10_17_131843_fill_permissions_for_articles-with-relationship',7),(25,'2022_10_21_084342_create_model_table',8),(26,'2022_10_21_090600_create_home_table',9),(27,'2022_10_21_090847_fill_permissions_for_model',10),(28,'2022_10_21_090907_fill_permissions_for_home',11),(29,'2022_10_21_124729_create_deneme_table',12),(30,'2022_10_21_124829_fill_permissions_for_deneme',13),(31,'2022_10_22_060154_create_templates_table',14),(32,'2022_10_22_060351_fill_permissions_for_template',15),(33,'2022_10_22_060755_create_choice_of_template_table',16),(34,'2022_10_22_061146_fill_permissions_for_choice-of-template',17),(35,'2022_10_22_065049_create_main_table',18),(36,'2022_10_22_065440_fill_permissions_for_main',19),(37,'2022_10_22_072654_create_menus_table',20),(38,'2022_10_22_073058_fill_permissions_for_menu',21),(39,'2022_10_22_073353_create_menu_content_table',22),(40,'2022_10_22_074141_fill_permissions_for_menu-content',23),(41,'2022_10_24_121923_create_menuicerik_table',24),(42,'2022_10_24_122017_fill_permissions_for_menuicerik',25),(43,'2022_10_24_155925_create_menu_table',26),(44,'2022_10_25_084846_create_menus_table',27),(45,'2022_10_25_084942_fill_permissions_for_menu',28),(46,'2022_10_25_111857_create_event_calendar_table',29),(47,'2022_10_25_112036_fill_permissions_for_event-calendar',30),(48,'2022_10_27_091849_create_event_calendar_table',31),(49,'2022_10_27_092133_fill_permissions_for_event-calendar',32),(50,'2022_10_27_094921_create_event_calendar_table',33),(51,'2022_10_27_095312_fill_permissions_for_event-calendar',34),(52,'2024_07_06_161903_create_i_o_tmain_table',35),(53,'2024_07_06_165939_fill_permissions_for_post',36),(54,'2024_07_06_161903_create_slider_table',37),(55,'2024_07_06_172738_fill_permissions_for_slider',37),(56,'2024_07_06_195420_create_research_table',38),(57,'2024_07_06_201121_fill_permissions_for_research',39),(58,'2024_07_07_081744_create_slider_table',40),(59,'2024_07_07_082714_fill_permissions_for_slider',41),(60,'2024_07_07_092900_create_newsandevents_table',42),(61,'2024_07_07_094003_fill_permissions_for_newsandevent',43),(62,'2024_07_07_100925_create_videolink_table',44),(63,'2024_07_07_105000_fill_permissions_for_videolink',45),(64,'2025_03_11_123555_fill_permissions_for_videolink',46);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_has_permissions`
--

DROP TABLE IF EXISTS `model_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `model_has_permissions` (
  `permission_id` bigint unsigned NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_has_permissions`
--

LOCK TABLES `model_has_permissions` WRITE;
/*!40000 ALTER TABLE `model_has_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `model_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_has_roles`
--

DROP TABLE IF EXISTS `model_has_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `model_has_roles` (
  `role_id` bigint unsigned NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_has_roles`
--

LOCK TABLES `model_has_roles` WRITE;
/*!40000 ALTER TABLE `model_has_roles` DISABLE KEYS */;
INSERT INTO `model_has_roles` VALUES (1,'Brackets\\AdminAuth\\Models\\AdminUser',1);
/*!40000 ALTER TABLE `model_has_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsandevents`
--

DROP TABLE IF EXISTS `newsandevents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `newsandevents` (
  `id` int NOT NULL AUTO_INCREMENT,
  `heading` json NOT NULL,
  `info` json DEFAULT NULL,
  `link` json DEFAULT NULL,
  `published` date DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsandevents`
--

LOCK TABLES `newsandevents` WRITE;
/*!40000 ALTER TABLE `newsandevents` DISABLE KEYS */;
INSERT INTO `newsandevents` VALUES (1,'{\"en\": \"\\\"Smart Urbanism and Internet of Things” Meeting Held at AGU\", \"tr\": \"Akıllı Şehircilik ve Nesnelerin İnterneti Toplantısı\"}','{\"tr\": null}','{\"en\": \"https://agunews.agu.edu.tr/february-2025/issue-89/smart-urbanism-and-internet-of-things-meeting-held-at-agu-572\", \"tr\": \"https://agunews.agu.edu.tr/february-2025/issue-89/smart-urbanism-and-internet-of-things-meeting-held-at-agu-572\"}','2025-02-14',1),(2,'{\"en\": \"IoT for Smart Sustainable Cities\", \"tr\": \"Akıllı Sürdürülebilir Şehirler için IoT\"}','{\"tr\": null}','{\"en\": \"https://www.instagram.com/p/DEr_VG-gdLw/?img_index=1\", \"tr\": \"https://www.instagram.com/p/DEr_VG-gdLw/?img_index=1\"}','2025-01-11',1),(3,'{\"en\": \"IoT Webinar Series\", \"tr\": \"Nesnelerin İnterneti Webinar Serisi\"}','{\"tr\": null}','{\"en\": \"https://www.linkedin.com/feed/update/urn:li:activity:7162016451158126592/\", \"tr\": \"https://www.linkedin.com/feed/update/urn:li:activity:7162016451158126592/\"}','2024-02-15',1);
/*!40000 ALTER TABLE `newsandevents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permissions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=130 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,'admin','admin','2022-09-15 05:58:05','2022-09-15 05:58:05'),(2,'admin.translation.index','admin','2022-09-15 05:58:05','2022-09-15 05:58:05'),(3,'admin.translation.edit','admin','2022-09-15 05:58:05','2022-09-15 05:58:05'),(4,'admin.translation.rescan','admin','2022-09-15 05:58:05','2022-09-15 05:58:05'),(5,'admin.admin-user.index','admin','2022-09-15 05:58:05','2022-09-15 05:58:05'),(6,'admin.admin-user.create','admin','2022-09-15 05:58:05','2022-09-15 05:58:05'),(7,'admin.admin-user.edit','admin','2022-09-15 05:58:05','2022-09-15 05:58:05'),(8,'admin.admin-user.delete','admin','2022-09-15 05:58:05','2022-09-15 05:58:05'),(9,'admin.upload','admin','2022-09-15 05:58:05','2022-09-15 05:58:05'),(10,'admin.admin-user.impersonal-login','admin','2022-09-15 05:58:05','2022-09-15 05:58:05'),(11,'admin.menu','admin','2022-09-15 05:58:06','2022-09-15 05:58:06'),(12,'admin.menu.index','admin','2022-09-15 05:58:06','2022-09-15 05:58:06'),(13,'admin.menu.create','admin','2022-09-15 05:58:06','2022-09-15 05:58:06'),(14,'admin.menu.show','admin','2022-09-15 05:58:06','2022-09-15 05:58:06'),(15,'admin.menu.edit','admin','2022-09-15 05:58:06','2022-09-15 05:58:06'),(16,'admin.menu.delete','admin','2022-09-15 05:58:06','2022-09-15 05:58:06'),(17,'admin.menu.bulk-delete','admin','2022-09-15 05:58:06','2022-09-15 05:58:06'),(18,'admin.main','admin','2022-09-15 05:58:06','2022-09-15 05:58:06'),(19,'admin.main.index','admin','2022-09-15 05:58:06','2022-09-15 05:58:06'),(20,'admin.main.create','admin','2022-09-15 05:58:06','2022-09-15 05:58:06'),(21,'admin.main.show','admin','2022-09-15 05:58:06','2022-09-15 05:58:06'),(22,'admin.main.edit','admin','2022-09-15 05:58:06','2022-09-15 05:58:06'),(23,'admin.main.delete','admin','2022-09-15 05:58:06','2022-09-15 05:58:06'),(24,'admin.main.bulk-delete','admin','2022-09-15 05:58:06','2022-09-15 05:58:06'),(25,'admin.template','admin','2022-10-17 09:49:21','2022-10-17 09:49:21'),(26,'admin.template.index','admin','2022-10-17 09:49:21','2022-10-17 09:49:21'),(27,'admin.template.create','admin','2022-10-17 09:49:21','2022-10-17 09:49:21'),(28,'admin.template.show','admin','2022-10-17 09:49:21','2022-10-17 09:49:21'),(29,'admin.template.edit','admin','2022-10-17 09:49:21','2022-10-17 09:49:21'),(30,'admin.template.delete','admin','2022-10-17 09:49:21','2022-10-17 09:49:21'),(31,'admin.template.bulk-delete','admin','2022-10-17 09:49:21','2022-10-17 09:49:21'),(32,'admin.author','admin','2022-10-17 10:16:29','2022-10-17 10:16:29'),(33,'admin.author.index','admin','2022-10-17 10:16:29','2022-10-17 10:16:29'),(34,'admin.author.create','admin','2022-10-17 10:16:29','2022-10-17 10:16:29'),(35,'admin.author.show','admin','2022-10-17 10:16:29','2022-10-17 10:16:29'),(36,'admin.author.edit','admin','2022-10-17 10:16:29','2022-10-17 10:16:29'),(37,'admin.author.delete','admin','2022-10-17 10:16:29','2022-10-17 10:16:29'),(38,'admin.author.bulk-delete','admin','2022-10-17 10:16:29','2022-10-17 10:16:29'),(39,'admin.articles-with-relationship','admin','2022-10-17 10:18:44','2022-10-17 10:18:44'),(40,'admin.articles-with-relationship.index','admin','2022-10-17 10:18:44','2022-10-17 10:18:44'),(41,'admin.articles-with-relationship.create','admin','2022-10-17 10:18:44','2022-10-17 10:18:44'),(42,'admin.articles-with-relationship.show','admin','2022-10-17 10:18:44','2022-10-17 10:18:44'),(43,'admin.articles-with-relationship.edit','admin','2022-10-17 10:18:44','2022-10-17 10:18:44'),(44,'admin.articles-with-relationship.delete','admin','2022-10-17 10:18:44','2022-10-17 10:18:44'),(45,'admin.articles-with-relationship.bulk-delete','admin','2022-10-17 10:18:44','2022-10-17 10:18:44'),(46,'admin.model','admin','2022-10-21 06:08:48','2022-10-21 06:08:48'),(47,'admin.model.index','admin','2022-10-21 06:08:48','2022-10-21 06:08:48'),(48,'admin.model.create','admin','2022-10-21 06:08:48','2022-10-21 06:08:48'),(49,'admin.model.show','admin','2022-10-21 06:08:48','2022-10-21 06:08:48'),(50,'admin.model.edit','admin','2022-10-21 06:08:48','2022-10-21 06:08:48'),(51,'admin.model.delete','admin','2022-10-21 06:08:48','2022-10-21 06:08:48'),(52,'admin.model.bulk-delete','admin','2022-10-21 06:08:48','2022-10-21 06:08:48'),(53,'admin.home','admin','2022-10-21 06:09:09','2022-10-21 06:09:09'),(54,'admin.home.index','admin','2022-10-21 06:09:09','2022-10-21 06:09:09'),(55,'admin.home.create','admin','2022-10-21 06:09:09','2022-10-21 06:09:09'),(56,'admin.home.show','admin','2022-10-21 06:09:09','2022-10-21 06:09:09'),(57,'admin.home.edit','admin','2022-10-21 06:09:09','2022-10-21 06:09:09'),(58,'admin.home.delete','admin','2022-10-21 06:09:09','2022-10-21 06:09:09'),(59,'admin.home.bulk-delete','admin','2022-10-21 06:09:09','2022-10-21 06:09:09'),(60,'admin.deneme','admin','2022-10-21 09:48:30','2022-10-21 09:48:30'),(61,'admin.deneme.index','admin','2022-10-21 09:48:30','2022-10-21 09:48:30'),(62,'admin.deneme.create','admin','2022-10-21 09:48:30','2022-10-21 09:48:30'),(63,'admin.deneme.show','admin','2022-10-21 09:48:30','2022-10-21 09:48:30'),(64,'admin.deneme.edit','admin','2022-10-21 09:48:30','2022-10-21 09:48:30'),(65,'admin.deneme.delete','admin','2022-10-21 09:48:30','2022-10-21 09:48:30'),(66,'admin.deneme.bulk-delete','admin','2022-10-21 09:48:30','2022-10-21 09:48:30'),(67,'admin.choice-of-template','admin','2022-10-22 03:11:47','2022-10-22 03:11:47'),(68,'admin.choice-of-template.index','admin','2022-10-22 03:11:47','2022-10-22 03:11:47'),(69,'admin.choice-of-template.create','admin','2022-10-22 03:11:47','2022-10-22 03:11:47'),(70,'admin.choice-of-template.show','admin','2022-10-22 03:11:47','2022-10-22 03:11:47'),(71,'admin.choice-of-template.edit','admin','2022-10-22 03:11:47','2022-10-22 03:11:47'),(72,'admin.choice-of-template.delete','admin','2022-10-22 03:11:47','2022-10-22 03:11:47'),(73,'admin.choice-of-template.bulk-delete','admin','2022-10-22 03:11:47','2022-10-22 03:11:47'),(74,'admin.menu-content','admin','2022-10-22 04:41:43','2022-10-22 04:41:43'),(75,'admin.menu-content.index','admin','2022-10-22 04:41:43','2022-10-22 04:41:43'),(76,'admin.menu-content.create','admin','2022-10-22 04:41:43','2022-10-22 04:41:43'),(77,'admin.menu-content.show','admin','2022-10-22 04:41:43','2022-10-22 04:41:43'),(78,'admin.menu-content.edit','admin','2022-10-22 04:41:43','2022-10-22 04:41:43'),(79,'admin.menu-content.delete','admin','2022-10-22 04:41:43','2022-10-22 04:41:43'),(80,'admin.menu-content.bulk-delete','admin','2022-10-22 04:41:43','2022-10-22 04:41:43'),(81,'admin.menuicerik','admin','2022-10-24 09:20:20','2022-10-24 09:20:20'),(82,'admin.menuicerik.index','admin','2022-10-24 09:20:20','2022-10-24 09:20:20'),(83,'admin.menuicerik.create','admin','2022-10-24 09:20:20','2022-10-24 09:20:20'),(84,'admin.menuicerik.show','admin','2022-10-24 09:20:20','2022-10-24 09:20:20'),(85,'admin.menuicerik.edit','admin','2022-10-24 09:20:20','2022-10-24 09:20:20'),(86,'admin.menuicerik.delete','admin','2022-10-24 09:20:20','2022-10-24 09:20:20'),(87,'admin.menuicerik.bulk-delete','admin','2022-10-24 09:20:20','2022-10-24 09:20:20'),(88,'admin.event-calendar','admin','2022-10-25 08:20:38','2022-10-25 08:20:38'),(89,'admin.event-calendar.index','admin','2022-10-25 08:20:38','2022-10-25 08:20:38'),(90,'admin.event-calendar.create','admin','2022-10-25 08:20:38','2022-10-25 08:20:38'),(91,'admin.event-calendar.show','admin','2022-10-25 08:20:38','2022-10-25 08:20:38'),(92,'admin.event-calendar.edit','admin','2022-10-25 08:20:38','2022-10-25 08:20:38'),(93,'admin.event-calendar.delete','admin','2022-10-25 08:20:38','2022-10-25 08:20:38'),(94,'admin.event-calendar.bulk-delete','admin','2022-10-25 08:20:38','2022-10-25 08:20:38'),(95,'admin.post','admin','2024-07-06 13:59:43','2024-07-06 13:59:43'),(96,'admin.post.index','admin','2024-07-06 13:59:43','2024-07-06 13:59:43'),(97,'admin.post.create','admin','2024-07-06 13:59:43','2024-07-06 13:59:43'),(98,'admin.post.show','admin','2024-07-06 13:59:43','2024-07-06 13:59:43'),(99,'admin.post.edit','admin','2024-07-06 13:59:43','2024-07-06 13:59:43'),(100,'admin.post.delete','admin','2024-07-06 13:59:43','2024-07-06 13:59:43'),(101,'admin.post.bulk-delete','admin','2024-07-06 13:59:43','2024-07-06 13:59:43'),(102,'admin.slider','admin','2024-07-06 14:27:40','2024-07-06 14:27:40'),(103,'admin.slider.index','admin','2024-07-06 14:27:40','2024-07-06 14:27:40'),(104,'admin.slider.create','admin','2024-07-06 14:27:40','2024-07-06 14:27:40'),(105,'admin.slider.show','admin','2024-07-06 14:27:40','2024-07-06 14:27:40'),(106,'admin.slider.edit','admin','2024-07-06 14:27:40','2024-07-06 14:27:40'),(107,'admin.slider.delete','admin','2024-07-06 14:27:40','2024-07-06 14:27:40'),(108,'admin.slider.bulk-delete','admin','2024-07-06 14:27:40','2024-07-06 14:27:40'),(109,'admin.research','admin','2024-07-06 17:11:23','2024-07-06 17:11:23'),(110,'admin.research.index','admin','2024-07-06 17:11:23','2024-07-06 17:11:23'),(111,'admin.research.create','admin','2024-07-06 17:11:23','2024-07-06 17:11:23'),(112,'admin.research.show','admin','2024-07-06 17:11:23','2024-07-06 17:11:23'),(113,'admin.research.edit','admin','2024-07-06 17:11:23','2024-07-06 17:11:23'),(114,'admin.research.delete','admin','2024-07-06 17:11:23','2024-07-06 17:11:23'),(115,'admin.research.bulk-delete','admin','2024-07-06 17:11:23','2024-07-06 17:11:23'),(116,'admin.newsandevent','admin','2024-07-07 06:40:05','2024-07-07 06:40:05'),(117,'admin.newsandevent.index','admin','2024-07-07 06:40:05','2024-07-07 06:40:05'),(118,'admin.newsandevent.create','admin','2024-07-07 06:40:05','2024-07-07 06:40:05'),(119,'admin.newsandevent.show','admin','2024-07-07 06:40:05','2024-07-07 06:40:05'),(120,'admin.newsandevent.edit','admin','2024-07-07 06:40:05','2024-07-07 06:40:05'),(121,'admin.newsandevent.delete','admin','2024-07-07 06:40:05','2024-07-07 06:40:05'),(122,'admin.newsandevent.bulk-delete','admin','2024-07-07 06:40:05','2024-07-07 06:40:05'),(123,'admin.videolink','admin','2024-07-07 07:50:02','2024-07-07 07:50:02'),(124,'admin.videolink.index','admin','2024-07-07 07:50:02','2024-07-07 07:50:02'),(125,'admin.videolink.create','admin','2024-07-07 07:50:02','2024-07-07 07:50:02'),(126,'admin.videolink.show','admin','2024-07-07 07:50:02','2024-07-07 07:50:02'),(127,'admin.videolink.edit','admin','2024-07-07 07:50:02','2024-07-07 07:50:02'),(128,'admin.videolink.delete','admin','2024-07-07 07:50:02','2024-07-07 07:50:02'),(129,'admin.videolink.bulk-delete','admin','2024-07-07 07:50:02','2024-07-07 07:50:02');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `research`
--

DROP TABLE IF EXISTS `research`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `research` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` json NOT NULL,
  `description` json NOT NULL,
  `link` json DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `research`
--

LOCK TABLES `research` WRITE;
/*!40000 ALTER TABLE `research` DISABLE KEYS */;
INSERT INTO `research` VALUES (1,'{\"en\": \"Our Research\", \"tr\": \"Araştırma Alanımız\"}','{\"en\": \"<p style=\\\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-style: normal; font-variant-caps: normal; font-stretch: normal; font-size: 13px; line-height: normal; font-family: &quot;Helvetica Neue&quot;; font-size-adjust: none; font-kerning: auto; font-variant-alternates: normal; font-variant-ligatures: normal; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-position: normal; font-variant-emoji: normal; font-feature-settings: normal; font-optical-sizing: auto; font-variation-settings: normal;\\\"><span style=\\\"font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 14.000001px;\\\">At the Center of IoTs at AGU, we are dedicated to advancing the field of IoT through cutting-edge research. Our team of experts is committed to developing new technologies and applications that will transform the way we interact with the world around us. From smart homes to autonomous vehicles, we are exploring the full potential of the Internet of Things.</span><br></p>\", \"tr\": \"<p><span style=\\\"font-family: &quot;Helvetica Neue&quot;; font-size: 13px;\\\">&nbsp;</span><span style=\\\"font-size: 14.000001px;\\\">AGÜ\'deki IoT Merkezi\'nde, nesnelerin interneti (IoT) alanını ileri düzey araştırmalarla geliştirmeye adanmış durumdayız. Uzman ekibimiz, çevremizdeki dünya ile etkileşim şeklimizi dönüştürecek yeni teknolojiler ve uygulamalar geliştirmeye kararlıdır. Akıllı evlerden otonom araçlara kadar, Nesnelerin İnterneti\'nin tüm potansiyelini keşfediy</span><span style=\\\"font-size: 14.000001px;\\\">oruz.</span></p>\"}','{\"en\": \"https://cita.agu.edu.tr/category/about-us-7\", \"tr\": \"https://cita.agu.edu.tr/category/about-us-7\"}');
/*!40000 ALTER TABLE `research` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_has_permissions`
--

DROP TABLE IF EXISTS `role_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_has_permissions` (
  `permission_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`),
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_has_permissions`
--

LOCK TABLES `role_has_permissions` WRITE;
/*!40000 ALTER TABLE `role_has_permissions` DISABLE KEYS */;
INSERT INTO `role_has_permissions` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1),(11,1),(12,1),(13,1),(14,1),(15,1),(16,1),(17,1),(18,1),(19,1),(20,1),(21,1),(22,1),(23,1),(24,1),(25,1),(26,1),(27,1),(28,1),(29,1),(30,1),(31,1),(32,1),(33,1),(34,1),(35,1),(36,1),(37,1),(38,1),(39,1),(40,1),(41,1),(42,1),(43,1),(44,1),(45,1),(46,1),(47,1),(48,1),(49,1),(50,1),(51,1),(52,1),(53,1),(54,1),(55,1),(56,1),(57,1),(58,1),(59,1),(60,1),(61,1),(62,1),(63,1),(64,1),(65,1),(66,1),(67,1),(68,1),(69,1),(70,1),(71,1),(72,1),(73,1),(74,1),(75,1),(76,1),(77,1),(78,1),(79,1),(80,1),(81,1),(82,1),(83,1),(84,1),(85,1),(86,1),(87,1),(88,1),(89,1),(90,1),(91,1),(92,1),(93,1),(94,1),(95,1),(96,1),(97,1),(98,1),(99,1),(100,1),(101,1),(102,1),(103,1),(104,1),(105,1),(106,1),(107,1),(108,1),(109,1),(110,1),(111,1),(112,1),(113,1),(114,1),(115,1),(116,1),(117,1),(118,1),(119,1),(120,1),(121,1),(122,1),(123,1),(124,1),(125,1),(126,1),(127,1),(128,1),(129,1);
/*!40000 ALTER TABLE `role_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Administrator','admin','2022-09-15 05:58:05','2022-09-15 05:58:05');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slider`
--

DROP TABLE IF EXISTS `slider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slider` (
  `id` int NOT NULL AUTO_INCREMENT,
  `link` json DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slider`
--

LOCK TABLES `slider` WRITE;
/*!40000 ALTER TABLE `slider` DISABLE KEYS */;
INSERT INTO `slider` VALUES (8,'{\"tr\": null}',1),(9,'{\"en\": \"https://www.linkedin.com/feed/update/urn:li:activity:7162016451158126592/\", \"tr\": \"https://www.linkedin.com/feed/update/urn:li:activity:7162016451158126592/\"}',1),(10,'{\"en\": \"https://www.instagram.com/p/DEr_VG-gdLw/?img_index=1\", \"tr\": \"https://www.instagram.com/p/DEr_VG-gdLw/?img_index=1\"}',1);
/*!40000 ALTER TABLE `slider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `templates`
--

DROP TABLE IF EXISTS `templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `templates` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `templates`
--

LOCK TABLES `templates` WRITE;
/*!40000 ALTER TABLE `templates` DISABLE KEYS */;
INSERT INTO `templates` VALUES (1,'Carousel','2022-10-22 03:42:21','2022-10-26 11:39:30'),(2,'Card View','2022-10-22 03:42:26','2022-10-26 11:39:37'),(3,'List Group','2022-10-22 03:42:30','2022-10-26 11:39:52'),(4,'Carousel + Event','2022-10-26 07:43:39','2022-10-26 11:40:11'),(5,'Card View + Event','2022-10-26 07:43:43','2022-10-26 11:40:20');
/*!40000 ALTER TABLE `templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `translations`
--

DROP TABLE IF EXISTS `translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `translations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `namespace` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '*',
  `group` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` json NOT NULL,
  `metadata` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `translations_namespace_index` (`namespace`),
  KEY `translations_group_index` (`group`)
) ENGINE=InnoDB AUTO_INCREMENT=270 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `translations`
--

LOCK TABLES `translations` WRITE;
/*!40000 ALTER TABLE `translations` DISABLE KEYS */;
INSERT INTO `translations` VALUES (1,'brackets/admin-ui','admin','operation.succeeded','[]',NULL,'2022-10-17 16:26:10','2025-03-17 05:45:21',NULL),(2,'brackets/admin-ui','admin','operation.failed','[]',NULL,'2022-10-17 16:26:10','2025-03-17 05:45:21',NULL),(3,'brackets/admin-ui','admin','operation.not_allowed','[]',NULL,'2022-10-17 16:26:10','2025-03-17 05:45:21',NULL),(4,'*','admin','admin-user.columns.activated','[]',NULL,'2022-10-17 16:26:10','2025-03-17 05:45:21',NULL),(5,'*','admin','admin-user.columns.email','[]',NULL,'2022-10-17 16:26:10','2025-03-17 05:45:21',NULL),(6,'*','admin','admin-user.columns.first_name','[]',NULL,'2022-10-17 16:26:10','2025-03-17 05:45:21',NULL),(7,'*','admin','admin-user.columns.forbidden','[]',NULL,'2022-10-17 16:26:10','2025-03-17 05:45:21',NULL),(8,'*','admin','admin-user.columns.language','[]',NULL,'2022-10-17 16:26:10','2025-03-17 05:45:21',NULL),(9,'brackets/admin-ui','admin','forms.select_an_option','[]',NULL,'2022-10-17 16:26:10','2025-03-17 05:45:21',NULL),(10,'*','admin','admin-user.columns.last_name','[]',NULL,'2022-10-17 16:26:10','2025-03-17 05:45:21',NULL),(11,'*','admin','admin-user.columns.password','[]',NULL,'2022-10-17 16:26:10','2025-03-17 05:45:21',NULL),(12,'*','admin','admin-user.columns.password_repeat','[]',NULL,'2022-10-17 16:26:10','2025-03-17 05:45:21',NULL),(13,'*','admin','admin-user.columns.roles','[]',NULL,'2022-10-17 16:26:10','2025-03-17 05:45:21',NULL),(14,'brackets/admin-ui','admin','forms.select_options','[]',NULL,'2022-10-17 16:26:10','2025-03-17 05:45:21',NULL),(15,'*','admin','admin-user.actions.create','[]',NULL,'2022-10-17 16:26:10','2025-03-17 05:45:21',NULL),(16,'brackets/admin-ui','admin','btn.save','[]',NULL,'2022-10-17 16:26:10','2025-03-17 05:45:21',NULL),(17,'*','admin','admin-user.actions.edit','[]',NULL,'2022-10-17 16:26:10','2025-03-17 05:45:21',NULL),(18,'*','admin','admin-user.actions.index','[]',NULL,'2022-10-17 16:26:10','2025-03-17 05:45:21',NULL),(19,'brackets/admin-ui','admin','placeholder.search','[]',NULL,'2022-10-17 16:26:10','2025-03-17 05:45:21',NULL),(20,'brackets/admin-ui','admin','btn.search','[]',NULL,'2022-10-17 16:26:10','2025-03-17 05:45:21',NULL),(21,'*','admin','admin-user.columns.id','[]',NULL,'2022-10-17 16:26:10','2025-03-17 05:45:21',NULL),(22,'*','admin','admin-user.columns.last_login_at','[]',NULL,'2022-10-17 16:26:10','2025-03-17 05:45:21',NULL),(23,'brackets/admin-ui','admin','btn.edit','[]',NULL,'2022-10-17 16:26:10','2025-03-17 05:45:21',NULL),(24,'brackets/admin-ui','admin','btn.delete','[]',NULL,'2022-10-17 16:26:10','2025-03-17 05:45:21',NULL),(25,'brackets/admin-ui','admin','pagination.overview','[]',NULL,'2022-10-17 16:26:10','2025-03-17 05:45:21',NULL),(26,'brackets/admin-ui','admin','index.no_items','[]',NULL,'2022-10-17 16:26:10','2025-03-17 05:45:21',NULL),(27,'brackets/admin-ui','admin','index.try_changing_items','[]',NULL,'2022-10-17 16:26:10','2025-03-17 05:45:21',NULL),(28,'brackets/admin-ui','admin','btn.new','[]',NULL,'2022-10-17 16:26:10','2025-03-17 05:45:21',NULL),(29,'brackets/admin-ui','admin','forms.publish','[]',NULL,'2022-10-17 16:26:10','2025-03-17 05:45:21',NULL),(30,'*','admin','articles-with-relationship.columns.published_at','[]',NULL,'2022-10-17 16:26:10','2022-10-23 15:32:08','2022-10-23 15:32:08'),(31,'*','admin','post.columns.author_id','{\"en\": \"Author\", \"tr\": \"Author\"}',NULL,'2022-10-17 16:26:10','2022-10-23 15:32:08','2022-10-23 15:32:08'),(32,'*','admin','articles-with-relationship.columns.title','[]',NULL,'2022-10-17 16:26:10','2022-10-23 15:32:08','2022-10-23 15:32:08'),(33,'*','admin','articles-with-relationship.columns.description','[]',NULL,'2022-10-17 16:26:10','2022-10-23 15:32:08','2022-10-23 15:32:08'),(34,'*','admin','articles-with-relationship.columns.enabled','[]',NULL,'2022-10-17 16:26:10','2022-10-23 15:32:08','2022-10-23 15:32:08'),(35,'*','admin','articles-with-relationship.actions.create','[]',NULL,'2022-10-17 16:26:10','2022-10-23 15:32:08','2022-10-23 15:32:08'),(36,'brackets/admin-ui','admin','btn.saved','[]',NULL,'2022-10-17 16:26:10','2025-03-17 05:45:21',NULL),(37,'*','admin','articles-with-relationship.actions.edit','[]',NULL,'2022-10-17 16:26:10','2022-10-23 15:32:08','2022-10-23 15:32:08'),(38,'*','admin','articles-with-relationship.actions.index','[]',NULL,'2022-10-17 16:26:10','2022-10-23 15:32:08','2022-10-23 15:32:08'),(39,'*','admin','articles-with-relationship.columns.id','[]',NULL,'2022-10-17 16:26:10','2022-10-23 15:32:08','2022-10-23 15:32:08'),(40,'*','admin','articles-with-relationship.columns.author_id','[]',NULL,'2022-10-17 16:26:10','2022-10-23 15:32:08','2022-10-23 15:32:08'),(41,'brackets/admin-ui','admin','listing.selected_items','[]',NULL,'2022-10-17 16:26:10','2025-03-17 05:45:21',NULL),(42,'brackets/admin-ui','admin','listing.check_all_items','[]',NULL,'2022-10-17 16:26:10','2025-03-17 05:45:21',NULL),(43,'brackets/admin-ui','admin','listing.uncheck_all_items','[]',NULL,'2022-10-17 16:26:10','2025-03-17 05:45:21',NULL),(44,'*','admin','articles-with-relationship.actions.will_be_published','[]',NULL,'2022-10-17 16:26:10','2022-10-23 15:32:08','2022-10-23 15:32:08'),(45,'brackets/admin-ui','admin','operation.publish_later','[]',NULL,'2022-10-17 16:26:10','2025-03-17 05:45:21',NULL),(46,'brackets/admin-ui','admin','operation.publish_now','[]',NULL,'2022-10-17 16:26:10','2025-03-17 05:45:21',NULL),(47,'brackets/admin-ui','admin','operation.unpublish_now','[]',NULL,'2022-10-17 16:26:10','2025-03-17 05:45:21',NULL),(48,'*','admin','author.columns.title','[]',NULL,'2022-10-17 16:26:10','2022-10-23 15:32:08','2022-10-23 15:32:08'),(49,'*','admin','author.actions.create','[]',NULL,'2022-10-17 16:26:10','2022-10-23 15:32:08','2022-10-23 15:32:08'),(50,'*','admin','author.actions.edit','[]',NULL,'2022-10-17 16:26:10','2022-10-23 15:32:08','2022-10-23 15:32:08'),(51,'*','admin','author.actions.index','[]',NULL,'2022-10-17 16:26:10','2022-10-23 15:32:08','2022-10-23 15:32:08'),(52,'*','admin','author.columns.id','[]',NULL,'2022-10-17 16:26:10','2022-10-23 15:32:08','2022-10-23 15:32:08'),(53,'brackets/admin-ui','admin','profile_dropdown.account','[]',NULL,'2022-10-17 16:26:10','2025-03-17 05:45:21',NULL),(54,'brackets/admin-auth','admin','profile_dropdown.profile','[]',NULL,'2022-10-17 16:26:10','2025-03-17 05:45:21',NULL),(55,'brackets/admin-auth','admin','profile_dropdown.password','[]',NULL,'2022-10-17 16:26:10','2025-03-17 05:45:21',NULL),(56,'brackets/admin-auth','admin','profile_dropdown.logout','[]',NULL,'2022-10-17 16:26:10','2025-03-17 05:45:21',NULL),(57,'brackets/admin-ui','admin','sidebar.content','[]',NULL,'2022-10-17 16:26:10','2025-03-17 05:45:21',NULL),(58,'*','admin','menu.title','[]',NULL,'2022-10-17 16:26:10','2025-03-17 05:45:21',NULL),(59,'*','admin','main.title','[]',NULL,'2022-10-17 16:26:10','2025-03-17 05:45:21',NULL),(60,'*','admin','template.title','[]',NULL,'2022-10-17 16:26:10','2022-10-27 03:04:51','2022-10-27 03:04:51'),(61,'*','admin','author.title','[]',NULL,'2022-10-17 16:26:10','2022-10-23 15:32:08','2022-10-23 15:32:08'),(62,'*','admin','articles-with-relationship.title','[]',NULL,'2022-10-17 16:26:10','2022-10-23 15:32:08','2022-10-23 15:32:08'),(63,'brackets/admin-ui','admin','sidebar.settings','[]',NULL,'2022-10-17 16:26:10','2025-03-17 05:45:21',NULL),(64,'brackets/admin-ui','admin','forms.currently_editing_translation','[]',NULL,'2022-10-17 16:26:10','2025-03-17 05:45:21',NULL),(65,'brackets/admin-ui','admin','forms.more_can_be_managed','[]',NULL,'2022-10-17 16:26:10','2025-03-17 05:45:21',NULL),(66,'brackets/admin-ui','admin','forms.manage_translations','[]',NULL,'2022-10-17 16:26:10','2025-03-17 05:45:21',NULL),(67,'brackets/admin-ui','admin','forms.choose_translation_to_edit','[]',NULL,'2022-10-17 16:26:10','2025-03-17 05:45:21',NULL),(68,'brackets/admin-ui','admin','forms.hide','[]',NULL,'2022-10-17 16:26:10','2025-03-17 05:45:21',NULL),(69,'*','admin','main.columns.title','[]',NULL,'2022-10-17 16:26:10','2025-03-17 05:45:21',NULL),(70,'*','admin','main.columns.description1','[]',NULL,'2022-10-17 16:26:10','2022-10-22 03:45:11','2022-10-22 03:45:11'),(71,'*','admin','main.columns.description2','[]',NULL,'2022-10-17 16:26:10','2022-10-22 03:45:11','2022-10-22 03:45:11'),(72,'*','admin','main.columns.description3','[]',NULL,'2022-10-17 16:26:10','2022-10-22 03:45:11','2022-10-22 03:45:11'),(73,'*','admin','main.columns.description4','[]',NULL,'2022-10-17 16:26:10','2022-10-22 03:45:11','2022-10-22 03:45:11'),(74,'*','admin','main.columns.enabled','[]',NULL,'2022-10-17 16:26:10','2025-03-17 05:45:21',NULL),(75,'*','admin','main.actions.create','[]',NULL,'2022-10-17 16:26:10','2025-03-17 05:45:21',NULL),(76,'*','admin','main.actions.edit','[]',NULL,'2022-10-17 16:26:10','2025-03-17 05:45:21',NULL),(77,'*','admin','main.actions.index','[]',NULL,'2022-10-17 16:26:10','2025-03-17 05:45:21',NULL),(78,'*','admin','main.columns.id','[]',NULL,'2022-10-17 16:26:10','2025-03-17 05:45:21',NULL),(79,'*','admin','menu.columns.name','[]',NULL,'2022-10-17 16:26:10','2025-03-17 05:45:21',NULL),(80,'*','admin','menu.columns.menu_id','[]',NULL,'2022-10-17 16:26:10','2022-10-22 03:45:11','2022-10-22 03:45:11'),(81,'*','admin','menu.columns.menu_title','[]',NULL,'2022-10-17 16:26:10','2022-10-22 03:45:11','2022-10-22 03:45:11'),(82,'*','admin','menu.columns.description1','[]',NULL,'2022-10-17 16:26:10','2022-10-22 03:45:11','2022-10-22 03:45:11'),(83,'*','admin','menu.columns.description2','[]',NULL,'2022-10-17 16:26:10','2022-10-22 03:45:11','2022-10-22 03:45:11'),(84,'*','admin','menu.columns.description3','[]',NULL,'2022-10-17 16:26:10','2022-10-22 03:45:11','2022-10-22 03:45:11'),(85,'*','admin','menu.columns.description4','[]',NULL,'2022-10-17 16:26:10','2022-10-22 03:45:11','2022-10-22 03:45:11'),(86,'*','admin','menu.columns.enabled','[]',NULL,'2022-10-17 16:26:10','2022-10-22 03:45:11','2022-10-22 03:45:11'),(87,'*','admin','menu.actions.create','[]',NULL,'2022-10-17 16:26:10','2025-03-17 05:45:21',NULL),(88,'*','admin','menu.actions.edit','[]',NULL,'2022-10-17 16:26:10','2025-03-17 05:45:21',NULL),(89,'*','admin','menu.actions.index','[]',NULL,'2022-10-17 16:26:10','2025-03-17 05:45:21',NULL),(90,'*','admin','menu.columns.id','[]',NULL,'2022-10-17 16:26:10','2025-03-17 05:45:21',NULL),(91,'*','admin','admin-user.actions.edit_password','[]',NULL,'2022-10-17 16:26:10','2025-03-17 05:45:21',NULL),(92,'*','admin','admin-user.actions.edit_profile','[]',NULL,'2022-10-17 16:26:10','2025-03-17 05:45:21',NULL),(93,'*','admin','template.columns.template','[]',NULL,'2022-10-17 16:26:10','2022-10-22 03:45:11','2022-10-22 03:45:11'),(94,'*','admin','template.columns.enabled','[]',NULL,'2022-10-17 16:26:10','2022-10-22 03:45:11','2022-10-22 03:45:11'),(95,'*','admin','template.actions.create','[]',NULL,'2022-10-17 16:26:10','2025-03-17 05:45:21',NULL),(96,'*','admin','template.actions.edit','[]',NULL,'2022-10-17 16:26:10','2025-03-17 05:45:21',NULL),(97,'*','admin','template.actions.index','[]',NULL,'2022-10-17 16:26:10','2025-03-17 05:45:21',NULL),(98,'*','admin','template.columns.id','[]',NULL,'2022-10-17 16:26:10','2025-03-17 05:45:21',NULL),(99,'*','admin','category.actions.index','[]',NULL,'2022-10-17 16:26:10','2025-03-12 06:36:03','2025-03-12 06:36:03'),(100,'*','public','home.category','{\"en\": \"category\", \"tr\": \"kategori\"}',NULL,'2022-10-17 16:26:10','2025-03-17 05:45:21',NULL),(101,'*','public','home.category_others','[]',NULL,'2022-10-17 16:26:10','2022-10-23 15:32:08','2022-10-23 15:32:08'),(102,'brackets/admin-auth','admin','activation_form.title','[]',NULL,'2022-10-17 16:26:10','2025-03-17 05:45:21',NULL),(103,'brackets/admin-auth','admin','activation_form.note','[]',NULL,'2022-10-17 16:26:10','2025-03-17 05:45:21',NULL),(104,'brackets/admin-auth','admin','auth_global.email','[]',NULL,'2022-10-17 16:26:10','2025-03-17 05:45:21',NULL),(105,'brackets/admin-auth','admin','activation_form.button','[]',NULL,'2022-10-17 16:26:10','2025-03-17 05:45:21',NULL),(106,'brackets/admin-auth','admin','login.title','[]',NULL,'2022-10-17 16:26:10','2025-03-17 05:45:21',NULL),(107,'brackets/admin-auth','admin','login.sign_in_text','[]',NULL,'2022-10-17 16:26:10','2025-03-17 05:45:21',NULL),(108,'brackets/admin-auth','admin','auth_global.password','[]',NULL,'2022-10-17 16:26:10','2025-03-17 05:45:21',NULL),(109,'brackets/admin-auth','admin','login.button','[]',NULL,'2022-10-17 16:26:10','2025-03-17 05:45:21',NULL),(110,'brackets/admin-auth','admin','login.forgot_password','[]',NULL,'2022-10-17 16:26:10','2025-03-17 05:45:21',NULL),(111,'brackets/admin-auth','admin','forgot_password.title','[]',NULL,'2022-10-17 16:26:10','2025-03-17 05:45:21',NULL),(112,'brackets/admin-auth','admin','forgot_password.note','[]',NULL,'2022-10-17 16:26:10','2025-03-17 05:45:21',NULL),(113,'brackets/admin-auth','admin','forgot_password.button','[]',NULL,'2022-10-17 16:26:10','2025-03-17 05:45:21',NULL),(114,'brackets/admin-auth','admin','password_reset.title','[]',NULL,'2022-10-17 16:26:10','2025-03-17 05:45:21',NULL),(115,'brackets/admin-auth','admin','password_reset.note','[]',NULL,'2022-10-17 16:26:10','2025-03-17 05:45:21',NULL),(116,'brackets/admin-auth','admin','auth_global.password_confirm','[]',NULL,'2022-10-17 16:26:10','2025-03-17 05:45:21',NULL),(117,'brackets/admin-auth','admin','password_reset.button','[]',NULL,'2022-10-17 16:26:10','2025-03-17 05:45:21',NULL),(118,'brackets/admin-auth','activations','email.line','[]',NULL,'2022-10-17 16:26:10','2025-03-17 05:45:21',NULL),(119,'brackets/admin-auth','activations','email.action','[]',NULL,'2022-10-17 16:26:10','2025-03-17 05:45:21',NULL),(120,'brackets/admin-auth','activations','email.notRequested','[]',NULL,'2022-10-17 16:26:10','2025-03-17 05:45:21',NULL),(121,'brackets/admin-auth','admin','activations.activated','[]',NULL,'2022-10-17 16:26:11','2025-03-17 05:45:21',NULL),(122,'brackets/admin-auth','admin','activations.invalid_request','[]',NULL,'2022-10-17 16:26:11','2025-03-17 05:45:21',NULL),(123,'brackets/admin-auth','admin','activations.disabled','[]',NULL,'2022-10-17 16:26:11','2025-03-17 05:45:21',NULL),(124,'brackets/admin-auth','admin','activations.sent','[]',NULL,'2022-10-17 16:26:11','2025-03-17 05:45:21',NULL),(125,'brackets/admin-auth','admin','passwords.sent','[]',NULL,'2022-10-17 16:26:11','2025-03-17 05:45:21',NULL),(126,'brackets/admin-auth','admin','passwords.reset','[]',NULL,'2022-10-17 16:26:11','2025-03-17 05:45:21',NULL),(127,'brackets/admin-auth','admin','passwords.invalid_token','[]',NULL,'2022-10-17 16:26:11','2025-03-17 05:45:21',NULL),(128,'brackets/admin-auth','admin','passwords.invalid_user','[]',NULL,'2022-10-17 16:26:11','2025-03-17 05:45:21',NULL),(129,'brackets/admin-auth','admin','passwords.invalid_password','[]',NULL,'2022-10-17 16:26:11','2025-03-17 05:45:21',NULL),(130,'brackets/admin-auth','resets','email.line','[]',NULL,'2022-10-17 16:26:11','2025-03-17 05:45:21',NULL),(131,'brackets/admin-auth','resets','email.action','[]',NULL,'2022-10-17 16:26:11','2025-03-17 05:45:21',NULL),(132,'brackets/admin-auth','resets','email.notRequested','[]',NULL,'2022-10-17 16:26:11','2025-03-17 05:45:21',NULL),(133,'*','auth','failed','[]',NULL,'2022-10-17 16:26:11','2025-03-17 05:45:21',NULL),(134,'*','auth','throttle','[]',NULL,'2022-10-17 16:26:11','2025-03-17 05:45:21',NULL),(135,'brackets/admin-translations','admin','title','[]',NULL,'2022-10-17 16:26:11','2025-03-17 05:45:21',NULL),(136,'brackets/admin-translations','admin','index.all_groups','[]',NULL,'2022-10-17 16:26:11','2025-03-17 05:45:21',NULL),(137,'brackets/admin-translations','admin','index.edit','[]',NULL,'2022-10-17 16:26:11','2025-03-17 05:45:21',NULL),(138,'brackets/admin-translations','admin','index.default_text','[]',NULL,'2022-10-17 16:26:11','2025-03-17 05:45:21',NULL),(139,'brackets/admin-translations','admin','index.translation','[]',NULL,'2022-10-17 16:26:11','2025-03-17 05:45:21',NULL),(140,'brackets/admin-translations','admin','index.translation_for_language','[]',NULL,'2022-10-17 16:26:11','2025-03-17 05:45:21',NULL),(141,'brackets/admin-translations','admin','import.title','[]',NULL,'2022-10-17 16:26:11','2025-03-17 05:45:21',NULL),(142,'brackets/admin-translations','admin','import.notice','[]',NULL,'2022-10-17 16:26:11','2025-03-17 05:45:21',NULL),(143,'brackets/admin-translations','admin','import.upload_file','[]',NULL,'2022-10-17 16:26:11','2025-03-17 05:45:21',NULL),(144,'brackets/admin-translations','admin','import.choose_file','[]',NULL,'2022-10-17 16:26:11','2025-03-17 05:45:21',NULL),(145,'brackets/admin-translations','admin','import.language_to_import','[]',NULL,'2022-10-17 16:26:11','2025-03-17 05:45:21',NULL),(146,'brackets/admin-translations','admin','fields.select_language','[]',NULL,'2022-10-17 16:26:11','2025-03-17 05:45:21',NULL),(147,'brackets/admin-translations','admin','import.do_not_override','[]',NULL,'2022-10-17 16:26:11','2025-03-17 05:45:21',NULL),(148,'brackets/admin-translations','admin','import.conflict_notice_we_have_found','[]',NULL,'2022-10-17 16:26:11','2025-03-17 05:45:21',NULL),(149,'brackets/admin-translations','admin','import.conflict_notice_translations_to_be_imported','[]',NULL,'2022-10-17 16:26:11','2025-03-17 05:45:21',NULL),(150,'brackets/admin-translations','admin','import.conflict_notice_differ','[]',NULL,'2022-10-17 16:26:11','2025-03-17 05:45:21',NULL),(151,'brackets/admin-translations','admin','fields.group','[]',NULL,'2022-10-17 16:26:11','2025-03-17 05:45:21',NULL),(152,'brackets/admin-translations','admin','fields.default','[]',NULL,'2022-10-17 16:26:11','2025-03-17 05:45:21',NULL),(153,'brackets/admin-translations','admin','fields.current_value','[]',NULL,'2022-10-17 16:26:11','2025-03-17 05:45:21',NULL),(154,'brackets/admin-translations','admin','fields.imported_value','[]',NULL,'2022-10-17 16:26:11','2025-03-17 05:45:21',NULL),(155,'brackets/admin-translations','admin','import.sucesfully_notice','[]',NULL,'2022-10-17 16:26:11','2025-03-17 05:45:21',NULL),(156,'brackets/admin-translations','admin','import.sucesfully_notice_update','[]',NULL,'2022-10-17 16:26:11','2025-03-17 05:45:21',NULL),(157,'brackets/admin-translations','admin','index.export','[]',NULL,'2022-10-17 16:26:11','2025-03-17 05:45:21',NULL),(158,'brackets/admin-translations','admin','export.notice','[]',NULL,'2022-10-17 16:26:11','2025-03-17 05:45:21',NULL),(159,'brackets/admin-translations','admin','export.language_to_export','[]',NULL,'2022-10-17 16:26:11','2025-03-17 05:45:21',NULL),(160,'brackets/admin-translations','admin','btn.export','[]',NULL,'2022-10-17 16:26:11','2025-03-17 05:45:21',NULL),(161,'brackets/admin-translations','admin','index.title','[]',NULL,'2022-10-17 16:26:11','2025-03-17 05:45:21',NULL),(162,'brackets/admin-translations','admin','btn.import','[]',NULL,'2022-10-17 16:26:11','2025-03-17 05:45:21',NULL),(163,'brackets/admin-translations','admin','btn.re_scan','[]',NULL,'2022-10-17 16:26:11','2025-03-17 05:45:21',NULL),(164,'brackets/admin-translations','admin','fields.created_at','[]',NULL,'2022-10-17 16:26:11','2025-03-17 05:45:21',NULL),(165,'brackets/admin-translations','admin','index.no_items','[]',NULL,'2022-10-17 16:26:11','2025-03-17 05:45:21',NULL),(166,'brackets/admin-translations','admin','index.try_changing_items','[]',NULL,'2022-10-17 16:26:11','2025-03-17 05:45:21',NULL),(167,'brackets/admin-ui','admin','media_uploader.max_number_of_files','[]',NULL,'2022-10-17 16:26:11','2025-03-17 05:45:21',NULL),(168,'brackets/admin-ui','admin','media_uploader.max_size_pre_file','[]',NULL,'2022-10-17 16:26:11','2025-03-17 05:45:21',NULL),(169,'brackets/admin-ui','admin','media_uploader.private_title','[]',NULL,'2022-10-17 16:26:11','2025-03-17 05:45:21',NULL),(170,'brackets/admin-ui','admin','page_title_suffix','[]',NULL,'2022-10-17 16:26:11','2025-03-17 05:45:21',NULL),(171,'brackets/admin-ui','admin','footer.powered_by','[]',NULL,'2022-10-17 16:26:11','2025-03-17 05:45:21',NULL),(172,'*','*','Select Author','[]',NULL,'2022-10-17 16:26:11','2022-10-23 15:32:08','2022-10-23 15:32:08'),(173,'*','*','Author','[]',NULL,'2022-10-17 16:26:11','2022-10-23 15:32:08','2022-10-23 15:32:08'),(174,'*','*','Select author/s','[]',NULL,'2022-10-17 16:26:11','2022-10-23 15:32:08','2022-10-23 15:32:08'),(175,'*','*','Type to search a author/s','[]',NULL,'2022-10-17 16:26:11','2025-03-17 05:45:21',NULL),(176,'*','*','Manage access','[]',NULL,'2022-10-17 16:26:11','2025-03-17 05:45:21',NULL),(177,'*','*','Translations','[]',NULL,'2022-10-17 16:26:11','2025-03-17 05:45:21',NULL),(178,'*','*','Configuration','[]',NULL,'2022-10-17 16:26:11','2025-03-17 05:45:21',NULL),(179,'*','*','Close','[]',NULL,'2022-10-17 16:26:11','2025-03-17 05:45:21',NULL),(180,'*','admin','post.columns.template_id','[]',NULL,'2022-10-22 03:45:11','2022-10-22 06:38:28','2022-10-22 06:38:28'),(181,'*','admin','choice-of-template.actions.create','[]',NULL,'2022-10-22 03:45:11','2025-03-17 05:45:21',NULL),(182,'*','admin','choice-of-template.actions.edit','[]',NULL,'2022-10-22 03:45:11','2025-03-17 05:45:21',NULL),(183,'*','admin','choice-of-template.actions.index','[]',NULL,'2022-10-22 03:45:11','2025-03-17 05:45:21',NULL),(184,'*','admin','choice-of-template.columns.id','[]',NULL,'2022-10-22 03:45:11','2025-03-17 05:45:21',NULL),(185,'*','admin','choice-of-template.columns.template_id','[]',NULL,'2022-10-22 03:45:11','2025-03-17 05:45:21',NULL),(186,'*','admin','choice-of-template.title','[]',NULL,'2022-10-22 03:45:11','2025-03-17 05:45:21',NULL),(187,'*','admin','template.columns.name','[]',NULL,'2022-10-22 03:45:11','2025-03-17 05:45:21',NULL),(188,'*','*','Select Template','[]',NULL,'2022-10-22 03:45:11','2025-03-17 05:45:21',NULL),(189,'*','*','Template','[]',NULL,'2022-10-22 03:45:11','2025-03-17 05:45:21',NULL),(190,'*','*','Select template/s','[]',NULL,'2022-10-22 03:45:11','2025-03-17 05:45:21',NULL),(191,'*','admin','menu-content.title','[]',NULL,'2022-10-22 06:38:29','2025-03-17 05:45:21',NULL),(192,'*','admin','main.columns.description','[]',NULL,'2022-10-22 06:38:29','2025-03-17 05:45:21',NULL),(193,'*','admin','main.columns.link','[]',NULL,'2022-10-22 06:38:29','2025-03-17 05:45:21',NULL),(194,'*','admin','menu-content.columns.title','[]',NULL,'2022-10-22 06:38:29','2025-03-17 05:45:21',NULL),(195,'*','admin','menu-content.columns.description','[]',NULL,'2022-10-22 06:38:29','2025-03-17 05:45:21',NULL),(196,'*','admin','menu-content.columns.enabled','[]',NULL,'2022-10-22 06:38:29','2025-03-17 05:45:21',NULL),(197,'*','admin','choice-of-menu.columns.menu_id','[]',NULL,'2022-10-22 06:38:29','2022-10-22 06:39:06','2022-10-22 06:39:06'),(198,'*','admin','menu-content.actions.create','[]',NULL,'2022-10-22 06:38:29','2025-03-17 05:45:21',NULL),(199,'*','admin','menu-content.actions.edit','[]',NULL,'2022-10-22 06:38:29','2025-03-17 05:45:21',NULL),(200,'*','admin','menu-content.actions.index','[]',NULL,'2022-10-22 06:38:29','2025-03-17 05:45:21',NULL),(201,'*','admin','menu-content.columns.id','[]',NULL,'2022-10-22 06:38:29','2025-03-17 05:45:21',NULL),(202,'*','admin','menu-content.columns.menu_id','[]',NULL,'2022-10-22 06:38:29','2025-03-17 05:45:21',NULL),(203,'*','*','Select Menu','[]',NULL,'2022-10-22 06:38:29','2025-03-17 05:45:21',NULL),(204,'*','*','Menu','[]',NULL,'2022-10-22 06:38:29','2025-03-17 05:45:21',NULL),(205,'*','*','Select menu/s','[]',NULL,'2022-10-22 06:38:29','2025-03-17 05:45:21',NULL),(206,'*','*','Type to search a menu/s','[]',NULL,'2022-10-22 06:38:29','2025-03-17 05:45:21',NULL),(207,'*','admin','mainpage.title','[]',NULL,'2022-10-23 15:32:08','2022-10-23 15:32:23','2022-10-23 15:32:23'),(208,'*','public','mainpage.title','{\"en\": \"Sub Page\", \"tr\": \"Alt Sayfalar\"}',NULL,'2022-10-23 15:32:23','2025-03-12 06:36:03','2025-03-12 06:36:03'),(209,'*','admin','event-calendar.columns.published_at','[]',NULL,'2022-10-27 03:04:51','2025-03-17 05:45:21',NULL),(210,'*','admin','event-calendar.columns.title','[]',NULL,'2022-10-27 03:04:51','2025-03-17 05:45:21',NULL),(211,'*','admin','event-calendar.columns.event_location','[]',NULL,'2022-10-27 03:04:51','2025-03-17 05:45:21',NULL),(212,'*','admin','event-calendar.columns.event_time','[]',NULL,'2022-10-27 03:04:51','2025-03-17 05:45:21',NULL),(213,'brackets/admin-ui','admin','forms.select_date_and_time','[]',NULL,'2022-10-27 03:04:51','2025-03-17 05:45:21',NULL),(214,'*','admin','event-calendar.columns.enabled','[]',NULL,'2022-10-27 03:04:51','2025-03-17 05:45:21',NULL),(215,'*','admin','event-calendar.actions.create','[]',NULL,'2022-10-27 03:04:51','2025-03-17 05:45:21',NULL),(216,'*','admin','event-calendar.actions.edit','[]',NULL,'2022-10-27 03:04:51','2025-03-17 05:45:21',NULL),(217,'*','admin','event-calendar.actions.index','[]',NULL,'2022-10-27 03:04:51','2025-03-17 05:45:21',NULL),(218,'*','admin','event-calendar.columns.id','[]',NULL,'2022-10-27 03:04:51','2025-03-17 05:45:21',NULL),(219,'*','admin','event-calendar.actions.will_be_published','[]',NULL,'2022-10-27 03:04:51','2025-03-17 05:45:21',NULL),(220,'*','admin','event-calendar.title','[]',NULL,'2022-10-27 03:04:52','2025-03-17 05:45:21',NULL),(221,'*','public','home.abdullahguluniversitesi','{\"en\": \"Abdullah Gul University\", \"tr\": \"Abdullah Gül Üniversitesi\"}',NULL,'2022-10-27 03:04:52','2025-03-17 05:45:21',NULL),(222,'*','public','home.sumerkampusu','{\"en\": \"Sumer Campus\", \"tr\": \"Sümer Kampüsü\"}',NULL,'2022-10-27 03:04:52','2025-03-17 05:45:21',NULL),(223,'*','public','home.santral','{\"en\": \"Central\", \"tr\": \"Santral\"}',NULL,'2022-10-27 03:04:52','2025-03-17 05:45:21',NULL),(224,'*','public','home.faks','{\"en\": \"Fax\", \"tr\": \"Faks\"}',NULL,'2022-10-27 03:04:52','2025-03-17 05:45:21',NULL),(225,'*','public','home.aloagu','{\"en\": \"Alo AGU\", \"tr\": \"Alo AGÜ\"}',NULL,'2022-10-27 03:04:52','2025-03-17 05:45:21',NULL),(226,'*','public','home.epostagirin','{\"en\": \"Enter your e-mail address to follow our university closely\", \"tr\": \"Üniversitemizi yakından takip etmek için e-posta adresinizi girin\"}',NULL,'2022-10-27 03:04:52','2025-03-17 05:45:21',NULL),(227,'*','public','home.kayitol','{\"en\": \"Register\", \"tr\": \"Kayıt Ol\"}',NULL,'2022-10-27 03:04:52','2025-03-17 05:45:21',NULL),(228,'*','public','home.bilgiedinmekanunu','{\"en\": \"Information Law\", \"tr\": \"Bilgi Edinme Kanunu\"}',NULL,'2022-10-27 03:04:52','2025-03-17 05:45:21',NULL),(229,'*','public','home.numbers','{\"en\": \"Numbers\", \"tr\": \"Sayi\"}',NULL,'2022-10-27 00:04:52','2025-03-12 06:36:03','2025-03-12 06:36:03'),(230,'*','public','home.more','{\"en\": \"More\", \"tr\": \"Devamı\"}',NULL,'2022-10-27 00:04:52','2025-03-17 05:45:21',NULL),(231,'*','public','home.learnmore','{\"en\": \"Learn More\", \"tr\": \"Bilgi Edinin\"}',NULL,'2022-10-27 00:04:52','2025-03-17 05:45:21',NULL),(232,'*','public','home.newsand','{\"en\": \"News and Events\", \"tr\": \"Haberler ve Etkinlikler\"}',NULL,'2022-10-27 00:04:52','2025-03-17 05:45:21',NULL),(234,'*','admin','event-calendar.columns.link','[]',NULL,'2025-03-12 06:36:03','2025-03-17 05:45:21',NULL),(235,'*','admin','research.title','[]',NULL,'2025-03-12 06:36:03','2025-03-17 05:45:21',NULL),(236,'*','admin','slider.title','[]',NULL,'2025-03-12 06:36:03','2025-03-17 05:45:21',NULL),(237,'*','admin','newsandevent.title','[]',NULL,'2025-03-12 06:36:03','2025-03-17 05:45:21',NULL),(238,'*','admin','videolink.title','[]',NULL,'2025-03-12 06:36:03','2025-03-17 05:45:21',NULL),(239,'*','admin','newsandevent.columns.heading','[]',NULL,'2025-03-12 06:36:03','2025-03-17 05:45:21',NULL),(240,'*','admin','newsandevent.columns.info','[]',NULL,'2025-03-12 06:36:03','2025-03-17 05:45:21',NULL),(241,'*','admin','newsandevent.columns.link','[]',NULL,'2025-03-12 06:36:03','2025-03-17 05:45:21',NULL),(242,'*','admin','newsandevent.columns.published','[]',NULL,'2025-03-12 06:36:03','2025-03-17 05:45:21',NULL),(243,'brackets/admin-ui','admin','forms.select_a_date','[]',NULL,'2025-03-12 06:36:03','2025-03-17 05:45:21',NULL),(244,'*','admin','newsandevent.columns.enabled','[]',NULL,'2025-03-12 06:36:03','2025-03-17 05:45:21',NULL),(245,'*','admin','newsandevent.actions.create','[]',NULL,'2025-03-12 06:36:03','2025-03-17 05:45:21',NULL),(246,'*','admin','newsandevent.actions.edit','[]',NULL,'2025-03-12 06:36:03','2025-03-17 05:45:21',NULL),(247,'*','admin','newsandevent.actions.index','[]',NULL,'2025-03-12 06:36:03','2025-03-17 05:45:21',NULL),(248,'*','admin','newsandevent.columns.id','[]',NULL,'2025-03-12 06:36:03','2025-03-17 05:45:21',NULL),(249,'*','admin','research.columns.title','[]',NULL,'2025-03-12 06:36:03','2025-03-17 05:45:21',NULL),(250,'*','admin','research.columns.description','[]',NULL,'2025-03-12 06:36:03','2025-03-17 05:45:21',NULL),(251,'*','admin','research.columns.link','[]',NULL,'2025-03-12 06:36:03','2025-03-17 05:45:21',NULL),(252,'*','admin','research.actions.create','[]',NULL,'2025-03-12 06:36:03','2025-03-17 05:45:21',NULL),(253,'*','admin','research.actions.edit','[]',NULL,'2025-03-12 06:36:03','2025-03-17 05:45:21',NULL),(254,'*','admin','research.actions.index','[]',NULL,'2025-03-12 06:36:03','2025-03-17 05:45:21',NULL),(255,'*','admin','research.columns.id','[]',NULL,'2025-03-12 06:36:03','2025-03-17 05:45:21',NULL),(256,'*','admin','slider.columns.link','[]',NULL,'2025-03-12 06:36:03','2025-03-17 05:45:21',NULL),(257,'*','admin','slider.actions.create','[]',NULL,'2025-03-12 06:36:03','2025-03-17 05:45:21',NULL),(258,'*','admin','slider.actions.edit','[]',NULL,'2025-03-12 06:36:03','2025-03-17 05:45:21',NULL),(259,'*','admin','slider.actions.index','[]',NULL,'2025-03-12 06:36:03','2025-03-17 05:45:21',NULL),(260,'*','admin','slider.columns.id','[]',NULL,'2025-03-12 06:36:03','2025-03-17 05:45:21',NULL),(261,'*','admin','videolink.columns.link','[]',NULL,'2025-03-12 06:36:03','2025-03-17 05:45:21',NULL),(262,'*','admin','videolink.actions.create','[]',NULL,'2025-03-12 06:36:03','2025-03-17 05:45:21',NULL),(263,'*','admin','videolink.actions.edit','[]',NULL,'2025-03-12 06:36:03','2025-03-17 05:45:21',NULL),(264,'*','admin','videolink.actions.index','[]',NULL,'2025-03-12 06:36:03','2025-03-17 05:45:21',NULL),(265,'*','admin','videolink.columns.id','[]',NULL,'2025-03-12 06:36:03','2025-03-17 05:45:21',NULL),(266,'*','admin','slider.columns.enabled','{\"en\": \"Enabled\", \"tr\": \"Enabled\"}',NULL,'2025-03-12 06:36:43','2025-03-17 05:45:21',NULL),(267,'*','public','admin.slider.columns.enabled','{\"en\": \"Enabled\", \"tr\": \"Enabled\"}',NULL,'2025-03-11 20:35:00','2025-03-12 06:46:48','2025-03-12 06:46:48'),(268,'*','admin','slider.columns.enabled','{\"en\": \"Enabled\", \"tr\": \"Enabled\"}',NULL,'2025-03-11 20:35:00','2025-03-12 06:47:34','2025-03-12 06:47:34'),(269,'*','public','home.published','{\"en\": \"Published\", \"tr\": \"Yayınlandı\"}',NULL,'2025-03-17 05:45:21','2025-03-17 05:45:45',NULL);
/*!40000 ALTER TABLE `translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `videolink`
--

DROP TABLE IF EXISTS `videolink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `videolink` (
  `id` int NOT NULL AUTO_INCREMENT,
  `link` json DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `videolink`
--

LOCK TABLES `videolink` WRITE;
/*!40000 ALTER TABLE `videolink` DISABLE KEYS */;
INSERT INTO `videolink` VALUES (1,'{\"en\": \"https://w3.agu.edu.tr\", \"tr\": \"https://w3.agu.edu.tr\"}');
/*!40000 ALTER TABLE `videolink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wysiwyg_media`
--

DROP TABLE IF EXISTS `wysiwyg_media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wysiwyg_media` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `file_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `wysiwygable_id` int unsigned DEFAULT NULL,
  `wysiwygable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `wysiwyg_media_wysiwygable_id_index` (`wysiwygable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wysiwyg_media`
--

LOCK TABLES `wysiwyg_media` WRITE;
/*!40000 ALTER TABLE `wysiwyg_media` DISABLE KEYS */;
INSERT INTO `wysiwyg_media` VALUES (1,'uploads/16665507037O60JXLJW078DpovhigcXCNkgzu3Rq5uNbznZB1o.jpg',NULL,NULL,'2022-10-23 15:45:03','2022-10-23 15:45:03'),(2,'uploads/1666550782f5Yd5a1Dm21NMSONUdxAjFBB4HYMkYGM9ImG146s.jpg',NULL,NULL,'2022-10-23 15:46:22','2022-10-23 15:46:22'),(3,'uploads/1666868052Screen Shot 2022-10-26 at 16.11.01.png',NULL,NULL,'2022-10-27 07:54:13','2022-10-27 07:54:13'),(4,'uploads/1666868082Screen Shot 2022-10-26 at 16.11.01.png',NULL,NULL,'2022-10-27 07:54:42','2022-10-27 07:54:42'),(5,'uploads/1666868193profile2.png',NULL,NULL,'2022-10-27 07:56:33','2022-10-27 07:56:33'),(6,'uploads/1666868220profile2.png',NULL,NULL,'2022-10-27 07:57:00','2022-10-27 07:57:00'),(7,'uploads/1666868384profile1.png',NULL,NULL,'2022-10-27 07:59:44','2022-10-27 07:59:44'),(8,'uploads/1666868396profile3.png',NULL,NULL,'2022-10-27 07:59:56','2022-10-27 07:59:56'),(9,'uploads/1666868439etkinlik-arka.jpg',NULL,NULL,'2022-10-27 08:00:39','2022-10-27 08:00:39'),(10,'uploads/1666868581profile1.png',NULL,NULL,'2022-10-27 08:03:01','2022-10-27 08:03:01'),(11,'uploads/1666868591profile3.png',NULL,NULL,'2022-10-27 08:03:11','2022-10-27 08:03:11'),(12,'uploads/1666868602etkinlik-arka.jpg',NULL,NULL,'2022-10-27 08:03:23','2022-10-27 08:03:23'),(13,'uploads/1666873976Screen Shot 2022-10-26 at 16.11.37.png',NULL,NULL,'2022-10-27 09:32:56','2022-10-27 09:32:56'),(14,'uploads/1666874053Screen Shot 2022-10-26 at 16.11.37.png',NULL,NULL,'2022-10-27 09:34:13','2022-10-27 09:34:13'),(15,'uploads/1666874136profile2.png',NULL,NULL,'2022-10-27 09:35:36','2022-10-27 09:35:36'),(16,'uploads/1666874164profile3.png',NULL,NULL,'2022-10-27 09:36:05','2022-10-27 09:36:05'),(17,'uploads/1666874272profile2.png',NULL,NULL,'2022-10-27 09:37:52','2022-10-27 09:37:52'),(18,'uploads/1666874284profile3.png',NULL,NULL,'2022-10-27 09:38:05','2022-10-27 09:38:05'),(19,'uploads/17197586825.png',NULL,NULL,'2024-06-30 11:44:42','2024-06-30 11:44:42'),(20,'uploads/1719758968Screenshot 2024-06-30 at 17.49.08.png',NULL,NULL,'2024-06-30 11:49:28','2024-06-30 11:49:28'),(21,'uploads/1719759171Screenshot 2024-06-30 at 17.52.39.png',NULL,NULL,'2024-06-30 11:52:51','2024-06-30 11:52:51'),(22,'uploads/17417834291.png',NULL,NULL,'2025-03-12 09:43:49','2025-03-12 09:43:49'),(23,'uploads/17417834921.png',NULL,NULL,'2025-03-12 09:44:53','2025-03-12 09:44:53'),(24,'uploads/17417835771.png',NULL,NULL,'2025-03-12 09:46:17','2025-03-12 09:46:17'),(25,'uploads/17417835931.png',NULL,NULL,'2025-03-12 09:46:33','2025-03-12 09:46:33');
/*!40000 ALTER TABLE `wysiwyg_media` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-18 13:54:07
