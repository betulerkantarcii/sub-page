CREATE DATABASE  IF NOT EXISTS `sub_page_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `sub_page_db`;
-- MySQL dump 10.13  Distrib 8.0.29, for macos12 (x86_64)
--
-- Host: 127.0.0.1    Database: sub_page_db
-- ------------------------------------------------------
-- Server version	8.0.30

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
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
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activated` tinyint(1) NOT NULL DEFAULT '0',
  `forbidden` tinyint(1) NOT NULL DEFAULT '0',
  `language` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
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
INSERT INTO `admin_users` VALUES (1,'Administrator','Administrator','cms.admin@agu.edu.tr','$2a$12$GgJA8Ictjv0UBpURTIOxl.YQbMEr2rMf84wmqOmqF19Q4Nd.XN3C.','AxioVgsV4o7W8yQwUiaTHwLJJkVntVgGpb0viE5lovLbtaqlzVx9E2xAO5pF',1,0,'en',NULL,'2022-09-15 05:58:05','2023-06-13 11:20:47','2023-06-13 11:20:47');
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
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
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
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main`
--

LOCK TABLES `main` WRITE;
/*!40000 ALTER TABLE `main` DISABLE KEYS */;
INSERT INTO `main` VALUES (2,'{\"en\": \"Title\", \"tr\": \"Başlık\"}','{\"en\": \"<p>The lorem text the section that contains header with having open functionality. Lorem dolor sit amet consectetur adipisicing elit.</p>\", \"tr\": \"<p>Lorem, açık işlevselliğe sahip üstbilgi içeren bölümün metnidir. Lorem dolor sit amet conectetur adipisicing elit.</p>\"}','{\"en\": \"http://www.agu.edu.tr\", \"tr\": \"https://agu.edu.tr\"}',1,'2022-10-26 07:25:04','2022-10-26 11:05:13'),(3,'{\"en\": \"Title\", \"tr\": \"Başlık\"}','{\"en\": \"<p>&nbsp;The lorem text the section that contains header with having open functionality. Lorem dolor sit amet consectetur adipisicing elit.</p>\", \"tr\": \"<p>Lorem, açık işlevselliğe sahip üstbilgi içeren bölümün metnidir. Lorem dolor sit amet conectetur adipisicing elit.</p>\"}','{\"tr\": null}',1,'2022-10-26 07:25:28','2022-10-26 10:14:07'),(4,'{\"en\": \"Title\", \"tr\": \"Başlık\"}','{\"en\": \"<p>The lorem text the section that contains header with having open functionality. Lorem dolor sit amet consectetur adipisicing elit.<br></p>\", \"tr\": \"<p>Lorem, açık işlevselliğe sahip üstbilgi içeren bölümün metnidir. Lorem dolor sit amet conectetur adipisicing elit.</p>\"}','{\"tr\": null}',1,'2022-10-26 07:39:48','2022-10-26 10:14:31'),(5,'{\"en\": \"Title\", \"tr\": \"Başlık\"}','{\"en\": \"<p>The lorem text the section that contains header with having open functionality. Lorem dolor sit amet consectetur adipisicing elit.</p>\", \"tr\": \"<p>Lorem, açık işlevselliğe sahip üstbilgi içeren bölümün metnidir. Lorem dolor sit amet conectetur adipisicing elit.</p>\"}','{\"tr\": null}',1,'2022-10-26 07:40:11','2022-10-26 10:13:57');
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
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint unsigned NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `conversions_disk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media`
--

LOCK TABLES `media` WRITE;
/*!40000 ALTER TABLE `media` DISABLE KEYS */;
INSERT INTO `media` VALUES (1,'Brackets\\AdminAuth\\Models\\AdminUser',1,'4e871449-87fe-4310-8b23-87e1a8f87f5f','avatar','avatar','avatar.png','image/png','media','media',23924,'[]','[]','{\"thumb_75\": true, \"thumb_150\": true, \"thumb_200\": true}','[]',1,'2022-09-15 05:58:06','2022-09-15 05:58:06'),(2,'App\\Models\\Main',1,'13984cd7-ee5e-4356-9662-dea0ddac45c2','gallery','iYAFiqttwoqDWpkVrIzyPCrPnfXDCjsOt6SFD23m','iYAFiqttwoqDWpkVrIzyPCrPnfXDCjsOt6SFD23m.png','image/png','media','media',231530,'[]','{\"name\": \"profile1.png\", \"width\": 510, \"height\": 338, \"file_name\": \"profile1.png\"}','[]','[]',2,'2022-09-15 06:01:59','2022-09-15 06:01:59'),(3,'App\\Models\\Main',1,'f00b5320-e00d-486f-b4e3-fe940d90d548','gallery','BbpLo44llTBSAjbL5tCKWgLtwDoswl2Kmrfq7WA1','BbpLo44llTBSAjbL5tCKWgLtwDoswl2Kmrfq7WA1.png','image/png','media','media',691120,'[]','{\"name\": \"profile2.png\", \"width\": 668, \"height\": 630, \"file_name\": \"profile2.png\"}','[]','[]',3,'2022-09-15 06:01:59','2022-09-15 06:01:59'),(4,'App\\Models\\Main',1,'72a54a29-6b79-48bb-b3ab-569a9bff4d79','gallery','XxH4VjYV2MCqAY4Mge5VlRSZUrSnMBtZ759qYrQH','XxH4VjYV2MCqAY4Mge5VlRSZUrSnMBtZ759qYrQH.png','image/png','media','media',774428,'[]','{\"name\": \"profile3.png\", \"width\": 666, \"height\": 586, \"file_name\": \"profile3.png\"}','[]','[]',4,'2022-09-15 06:01:59','2022-09-15 06:01:59'),(5,'App\\Models\\Main',1,'a37792ee-2988-4f0b-a342-130dc1a5aa19','gallery','8wJQhK3oYip5k1EPWDK8tenpNvwWUimBMjAGG49v','8wJQhK3oYip5k1EPWDK8tenpNvwWUimBMjAGG49v.png','image/png','media','media',691120,'[]','{\"name\": \"profile2.png\", \"width\": 668, \"height\": 630, \"file_name\": \"profile2.png\"}','[]','[]',5,'2022-09-15 06:01:59','2022-09-15 06:01:59'),(6,'App\\Models\\Menu',1,'79cce632-8ed5-4541-b86e-f2651e2796ec','gallery','HxT4FFfbQVHswskngrOvmSIL23xI4VgiR9sHgQ83','HxT4FFfbQVHswskngrOvmSIL23xI4VgiR9sHgQ83.png','image/png','media','media',231530,'[]','{\"name\": \"profile1.png\", \"width\": 510, \"height\": 338, \"file_name\": \"profile1.png\"}','[]','[]',6,'2022-09-15 06:03:33','2022-09-15 06:03:33'),(7,'App\\Models\\Menu',1,'05ec9efe-30c6-4654-9993-f7d57a51c266','gallery','E5PvdCPX6jxPKOpCcpPIvZbWcx6vwdDse61JEgUw','E5PvdCPX6jxPKOpCcpPIvZbWcx6vwdDse61JEgUw.png','image/png','media','media',691120,'[]','{\"name\": \"profile2.png\", \"width\": 668, \"height\": 630, \"file_name\": \"profile2.png\"}','[]','[]',7,'2022-09-15 06:03:33','2022-09-15 06:03:33'),(8,'App\\Models\\Menu',1,'608aaf8a-31aa-409a-83f2-487845e8ada4','gallery','TOpyAjOxzojC7xbLpUDlsYBUELfnZn00kXKOaCOg','TOpyAjOxzojC7xbLpUDlsYBUELfnZn00kXKOaCOg.png','image/png','media','media',774428,'[]','{\"name\": \"profile3.png\", \"width\": 666, \"height\": 586, \"file_name\": \"profile3.png\"}','[]','[]',8,'2022-09-15 06:03:33','2022-09-15 06:03:33'),(9,'App\\Models\\Menu',1,'c88a89ca-96e3-44a6-967d-243888a6e6d1','gallery','EvImKaf9PvKlpulXPpkcO7rVfJnbvUm8HgmhTuiq','EvImKaf9PvKlpulXPpkcO7rVfJnbvUm8HgmhTuiq.png','image/png','media','media',231530,'[]','{\"name\": \"profile1.png\", \"width\": 510, \"height\": 338, \"file_name\": \"profile1.png\"}','[]','[]',9,'2022-09-15 06:03:33','2022-09-15 06:03:33'),(10,'App\\Models\\Menu',2,'a4c08298-836c-476c-97f2-5c26dfe3fbbf','gallery','Sj0yaMPwpa349X14S5WKBXwsdTD3WmcTOnwSLimq','Sj0yaMPwpa349X14S5WKBXwsdTD3WmcTOnwSLimq.png','image/png','media','media',231530,'[]','{\"name\": \"profile1.png\", \"width\": 510, \"height\": 338, \"file_name\": \"profile1.png\"}','[]','[]',10,'2022-09-15 06:04:34','2022-09-15 06:04:34'),(11,'App\\Models\\Menu',2,'1084ac9f-6b86-461a-a0c9-ce24df989153','gallery','CeJSwJVKMRU5orpJXqekYAE5D0y7CbsV9UZmForL','CeJSwJVKMRU5orpJXqekYAE5D0y7CbsV9UZmForL.png','image/png','media','media',691120,'[]','{\"name\": \"profile2.png\", \"width\": 668, \"height\": 630, \"file_name\": \"profile2.png\"}','[]','[]',11,'2022-09-15 06:04:34','2022-09-15 06:04:34'),(12,'App\\Models\\Menu',2,'a10844ab-f5e2-4750-8127-6dd8587f026d','gallery','G82GhCATnK3Di4HyrppcSWmVsveZXvII4MKAXTSU','G82GhCATnK3Di4HyrppcSWmVsveZXvII4MKAXTSU.png','image/png','media','media',774428,'[]','{\"name\": \"profile3.png\", \"width\": 666, \"height\": 586, \"file_name\": \"profile3.png\"}','[]','[]',12,'2022-09-15 06:04:34','2022-09-15 06:04:34'),(13,'App\\Models\\Menu',2,'341dee70-6d45-43f5-a8be-e863862e8721','gallery','Z3T2iJGvPC7JpMN5hKKnnPsghv0E5ZXlsH0lr6hG','Z3T2iJGvPC7JpMN5hKKnnPsghv0E5ZXlsH0lr6hG.png','image/png','media','media',774428,'[]','{\"name\": \"profile3.png\", \"width\": 666, \"height\": 586, \"file_name\": \"profile3.png\"}','[]','[]',13,'2022-09-15 06:04:34','2022-09-15 06:04:34'),(14,'App\\Models\\Menu',3,'0a6de91d-8c43-45e2-a7b4-acb230a99b56','gallery','1nswz64yhUkl8mn0FKqTzX5r2C3J28sYYEqpSU1y','1nswz64yhUkl8mn0FKqTzX5r2C3J28sYYEqpSU1y.png','image/png','media','media',231530,'[]','{\"name\": \"profile1.png\", \"width\": 510, \"height\": 338, \"file_name\": \"profile1.png\"}','[]','[]',14,'2022-09-15 06:05:36','2022-09-15 06:05:36'),(15,'App\\Models\\Menu',3,'4714beb5-dcb8-4913-8177-242b54dc139b','gallery','bb2E3Yojqkzj7WONPI486Un7Fw3jjlpl7hZE3pG1','bb2E3Yojqkzj7WONPI486Un7Fw3jjlpl7hZE3pG1.png','image/png','media','media',691120,'[]','{\"name\": \"profile2.png\", \"width\": 668, \"height\": 630, \"file_name\": \"profile2.png\"}','[]','[]',15,'2022-09-15 06:05:36','2022-09-15 06:05:36'),(16,'App\\Models\\Menu',3,'7593a9b2-2ccb-4802-8c3f-f1a2b562b789','gallery','4AuuSyH36RLQerNDMNAtjxL1uVh3cBUEpNbenjqo','4AuuSyH36RLQerNDMNAtjxL1uVh3cBUEpNbenjqo.png','image/png','media','media',774428,'[]','{\"name\": \"profile3.png\", \"width\": 666, \"height\": 586, \"file_name\": \"profile3.png\"}','[]','[]',16,'2022-09-15 06:05:36','2022-09-15 06:05:36'),(17,'App\\Models\\Menu',3,'8c3afe26-f6bd-4cb5-a21d-4dc23ba7a4ed','gallery','bJn3RyLsI0fhDf2vkaIA3sIwrOOrdNVOuMQs8OEr','bJn3RyLsI0fhDf2vkaIA3sIwrOOrdNVOuMQs8OEr.png','image/png','media','media',691120,'[]','{\"name\": \"profile2.png\", \"width\": 668, \"height\": 630, \"file_name\": \"profile2.png\"}','[]','[]',17,'2022-09-15 06:05:36','2022-09-15 06:05:36'),(23,'App\\Models\\Main',2,'0421562c-02e2-48eb-bad2-ab06a3ed83dc','cover','HXYj6x5Z13Js2NIlxXGaHTSoPwGmwRwahIRfskc0','HXYj6x5Z13Js2NIlxXGaHTSoPwGmwRwahIRfskc0.png','image/png','media','media',374374,'[]','{\"name\": \"Screen Shot 2022-10-26 at 16.11.01.png\", \"width\": 980, \"height\": 606, \"file_name\": \"Screen Shot 2022-10-26 at 16.11.01.png\"}','[]','[]',22,'2022-10-26 10:12:12','2022-10-26 10:12:12'),(24,'App\\Models\\Main',3,'eb393e18-407b-49b8-b046-f55cac818c45','cover','qYGJDiIvGRuOtYOYUWWhZs8opceh4GHs3G15HLSV','qYGJDiIvGRuOtYOYUWWhZs8opceh4GHs3G15HLSV.png','image/png','media','media',371549,'[]','{\"name\": \"Screen Shot 2022-10-26 at 16.11.21.png\", \"width\": 992, \"height\": 698, \"file_name\": \"Screen Shot 2022-10-26 at 16.11.21.png\"}','[]','[]',23,'2022-10-26 10:13:02','2022-10-26 10:13:02'),(25,'App\\Models\\Main',4,'3235271a-926d-4301-9354-31ebfa54f4c0','cover','xTMxPZGJOcJR0ToTEH2MrVoA9YlSy63TOrcSGFPH','xTMxPZGJOcJR0ToTEH2MrVoA9YlSy63TOrcSGFPH.png','image/png','media','media',269290,'[]','{\"name\": \"Screen Shot 2022-10-26 at 16.11.37.png\", \"width\": 988, \"height\": 656, \"file_name\": \"Screen Shot 2022-10-26 at 16.11.37.png\"}','[]','[]',24,'2022-10-26 10:13:30','2022-10-26 10:13:30'),(26,'App\\Models\\Main',5,'eb251dc9-c523-4c7d-af51-0ae630e41cf5','cover','HU2lMyU7YmARyZLQtDCEIDeAY6TeuRxZHBJCc36n','HU2lMyU7YmARyZLQtDCEIDeAY6TeuRxZHBJCc36n.png','image/png','media','media',290509,'[]','{\"name\": \"Screen Shot 2022-10-26 at 16.11.50.png\", \"width\": 990, \"height\": 714, \"file_name\": \"Screen Shot 2022-10-26 at 16.11.50.png\"}','[]','[]',25,'2022-10-26 10:13:57','2022-10-26 10:13:57');
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_content`
--

LOCK TABLES `menu_content` WRITE;
/*!40000 ALTER TABLE `menu_content` DISABLE KEYS */;
INSERT INTO `menu_content` VALUES (4,'{\"en\": \"Academic Information Page\", \"tr\": \"Academic Bilgi Sayfası\"}','{\"en\": \"<p style=\\\"text-align: center;\\\"><strong style=\\\"margin: 0px; padding: 0px; caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\\\"><img src=\\\"http://localhost:8000/uploads/1666874053Screen Shot 2022-10-26 at 16.11.37.png\\\" alt=\\\"\\\" width=\\\"50%\\\"><br></strong></p><p><strong style=\\\"margin: 0px; padding: 0px; caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\\\">Lorem Ipsum</strong><span style=\\\"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\\\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span><br></p>\", \"tr\": \"<p style=\\\"text-align: center;\\\"><strong style=\\\"font-size: 0.875rem; margin: 0px; padding: 0px; caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\\\"><img src=\\\"http://localhost:8000/uploads/1666873976Screen Shot 2022-10-26 at 16.11.37.png\\\" alt=\\\"\\\" width=\\\"50%\\\"></strong><br></p><p><strong style=\\\"font-size: 0.875rem; margin: 0px; padding: 0px; caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\\\">Lorem Ipsum</strong><span style=\\\"font-size: 0.875rem; caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\\\">, dizgi ve baskı endüstrisinde kullanılan mıgır metinlerdir. Lorem Ipsum, adı bilinmeyen bir matbaacının bir hurufat numune kitabı oluşturmak üzere bir yazı galerisini alarak karıştırdığı 1500\'lerden beri endüstri standardı sahte metinler olarak kullanılmıştır. Beşyüz yıl boyunca varlığını sürdürmekle kalmamış, aynı zamanda pek değişmeden elektronik dizgiye de sıçramıştır. 1960\'larda Lorem Ipsum pasajları da içeren Letraset yapraklarının yayınlanması ile ve yakın zamanda Aldus PageMaker gibi Lorem Ipsum sürümleri içeren masaüstü yayıncılık yazılımları ile popüler olmuştur.</span></p>\"}',1,3,'2022-10-27 07:54:47','2022-10-27 09:34:23'),(5,'{\"en\": \"Alumni\", \"tr\": \"Mezunlar\"}','{\"en\": \"<h2><strong>Alumni</strong></h2><p><img src=\\\"http://localhost:8000/uploads/1666874136profile2.png\\\" alt=\\\"\\\" width=\\\"30%\\\" style=\\\"font-size: 0.875rem;\\\">&nbsp; &nbsp; &nbsp;<img src=\\\"http://localhost:8000/uploads/1666874164profile3.png\\\" style=\\\"font-size: 0.875rem;\\\" alt=\\\"\\\" width=\\\"30%\\\">&nbsp; &nbsp;</p><p>The list of <a href=\\\"https://aday.agu.edu.tr/mezunlarimiz.html\\\">alumni</a></p>\", \"tr\": \"<h2>Mezunlar</h2><p><img src=\\\"http://localhost:8000/uploads/1666874272profile2.png\\\" alt=\\\"\\\" width=\\\"30%\\\">&nbsp; &nbsp;&nbsp;<img src=\\\"http://localhost:8000/uploads/1666874284profile3.png\\\" style=\\\"font-size: 0.875rem;\\\" alt=\\\"\\\" width=\\\"30%\\\"><br></p><p><a href=\\\"https://aday.agu.edu.tr/mezunlarimiz.html\\\">Mezunlar</a> listesi</p>\"}',1,4,'2022-10-27 07:57:23','2022-10-27 09:38:37'),(6,'{\"en\": \"Prospective Student\", \"tr\": \"Aday Öğrenci\"}','{\"en\": \"<h4><img src=\\\"http://localhost:8000/uploads/1666868384profile1.png\\\" alt=\\\"\\\" width=\\\"30%\\\">&nbsp; &nbsp;&nbsp;</h4><h4>Academic Staff<br><p>&nbsp;<span style=\\\"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify; font-size: 0.875rem;\\\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</span></p></h4><p><img src=\\\"http://localhost:8000/uploads/1666868396profile3.png\\\" alt=\\\"\\\" width=\\\"30%\\\" style=\\\"font-size: 0.875rem;\\\">&nbsp;</p><h4>Research</h4><p>&nbsp;<span style=\\\"font-size: 0.875rem; caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\\\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</span><br></p><p><img src=\\\"http://localhost:8000/uploads/1666868439etkinlik-arka.jpg\\\" alt=\\\"\\\" width=\\\"30%\\\" style=\\\"font-size: 0.875rem;\\\">&nbsp;<br></p><h4>Faculty</h4><p>&nbsp;<span style=\\\"font-size: 0.875rem; caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\\\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</span><br></p>\", \"tr\": \"<p><img src=\\\"http://localhost:8000/uploads/1666868581profile1.png\\\" alt=\\\"\\\" width=\\\"30%\\\">&nbsp;<br></p><h4>Academic Kadro<br><p><span style=\\\"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\\\">&nbsp;Yinelenen bir sayfa içeriğinin okuyucunun dikkatini dağıttığı bilinen bir gerçektir. Lorem Ipsum kullanmanın amacı, sürekli \'buraya metin gelecek, buraya metin gelecek\' yazmaya kıyasla daha dengeli bir harf dağılımı sağlayarak okunurluğu artırmasıdır. Şu anda birçok masaüstü yayıncılık paketi ve web sayfa düzenleyicisi, varsayılan mıgır metinler olarak Lorem Ipsum kullanmaktadır. Ayrıca arama motorlarında \'lorem ipsum\' anahtar sözcükleri ile arama yapıldığında henüz tasarım aşamasında olan çok sayıda site listelenir. Yıllar içinde, bazen kazara, bazen bilinçli olarak (örneğin mizah katılarak), çeşitli sürümleri geliştirilmiştir.</span><br></p><p><span style=\\\"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify; font-size: 0.875rem;\\\"><br></span></p></h4><p><img src=\\\"http://localhost:8000/uploads/1666868591profile3.png\\\" alt=\\\"\\\" width=\\\"30%\\\">&nbsp;<br></p><h4>Araştırma</h4><p><span style=\\\"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\\\">&nbsp;Yinelenen bir sayfa içeriğinin okuyucunun dikkatini dağıttığı bilinen bir gerçektir. Lorem Ipsum kullanmanın amacı, sürekli \'buraya metin gelecek, buraya metin gelecek\' yazmaya kıyasla daha dengeli bir harf dağılımı sağlayarak okunurluğu artırmasıdır. Şu anda birçok masaüstü yayıncılık paketi ve web sayfa düzenleyicisi, varsayılan mıgır metinler olarak Lorem Ipsum kullanmaktadır. Ayrıca arama motorlarında \'lorem ipsum\' anahtar sözcükleri ile arama yapıldığında henüz tasarım aşamasında olan çok sayıda site listelenir. Yıllar içinde, bazen kazara, bazen bilinçli olarak (örneğin mizah katılarak), çeşitli sürümleri geliştirilmiştir.</span><br></p><p><br></p><p><img src=\\\"http://localhost:8000/uploads/1666868602etkinlik-arka.jpg\\\" alt=\\\"\\\" width=\\\"30%\\\">&nbsp;<br></p><h4>Fakülte</h4><p><span style=\\\"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\\\">&nbsp;Yinelenen bir sayfa içeriğinin okuyucunun dikkatini dağıttığı bilinen bir gerçektir. Lorem Ipsum kullanmanın amacı, sürekli \'buraya metin gelecek, buraya metin gelecek\' yazmaya kıyasla daha dengeli bir harf dağılımı sağlayarak okunurluğu artırmasıdır. Şu anda birçok masaüstü yayıncılık paketi ve web sayfa düzenleyicisi, varsayılan mıgır metinler olarak Lorem Ipsum kullanmaktadır. Ayrıca arama motorlarında \'lorem ipsum\' anahtar sözcükleri ile arama yapıldığında henüz tasarım aşamasında olan çok sayıda site listelenir. Yıllar içinde, bazen kazara, bazen bilinçli olarak (örneğin mizah katılarak), çeşitli sürümleri geliştirilmiştir.</span><br></p>\"}',1,4,'2022-10-27 08:03:32','2022-10-27 09:45:27');
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (3,'{\"en\":\"Academic\",\"tr\":\"Akademik\"}','2022-10-27 07:51:44','2022-10-27 07:51:55'),(4,'{\"en\":\"Student\",\"tr\":\"\\u00d6\\u011frenci\"}','2022-10-27 07:52:06','2022-10-27 07:52:06');
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
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2017_08_24_000000_create_activations_table',1),(4,'2017_08_24_000000_create_admin_activations_table',1),(5,'2017_08_24_000000_create_admin_password_resets_table',1),(6,'2017_08_24_000000_create_admin_users_table',1),(7,'2018_07_18_000000_create_wysiwyg_media_table',1),(8,'2019_08_19_000000_create_failed_jobs_table',1),(9,'2019_12_14_000001_create_personal_access_tokens_table',1),(10,'2020_10_21_000000_add_last_login_at_timestamp_to_admin_users_table',1),(11,'2022_08_26_120832_create_media_table',1),(12,'2022_08_26_120832_create_permission_tables',1),(13,'2022_08_26_120837_fill_default_admin_user_and_permissions',1),(14,'2022_08_26_120918_create_translations_table',1),(15,'2022_08_26_151510_create_menu_table',1),(16,'2022_08_26_151740_fill_permissions_for_menu',1),(17,'2022_08_28_195621_create_main_table',1),(18,'2022_08_28_200002_fill_permissions_for_main',1),(19,'2022_10_17_124711_create_templates_table',2),(20,'2022_10_17_124919_fill_permissions_for_template',3),(21,'2022_10_17_131530_create_authors_table',4),(22,'2022_10_17_131628_fill_permissions_for_author',5),(23,'2022_10_17_131721_create_articles_with_relationships_table',6),(24,'2022_10_17_131843_fill_permissions_for_articles-with-relationship',7),(25,'2022_10_21_084342_create_model_table',8),(26,'2022_10_21_090600_create_home_table',9),(27,'2022_10_21_090847_fill_permissions_for_model',10),(28,'2022_10_21_090907_fill_permissions_for_home',11),(29,'2022_10_21_124729_create_deneme_table',12),(30,'2022_10_21_124829_fill_permissions_for_deneme',13),(31,'2022_10_22_060154_create_templates_table',14),(32,'2022_10_22_060351_fill_permissions_for_template',15),(33,'2022_10_22_060755_create_choice_of_template_table',16),(34,'2022_10_22_061146_fill_permissions_for_choice-of-template',17),(35,'2022_10_22_065049_create_main_table',18),(36,'2022_10_22_065440_fill_permissions_for_main',19),(37,'2022_10_22_072654_create_menus_table',20),(38,'2022_10_22_073058_fill_permissions_for_menu',21),(39,'2022_10_22_073353_create_menu_content_table',22),(40,'2022_10_22_074141_fill_permissions_for_menu-content',23),(41,'2022_10_24_121923_create_menuicerik_table',24),(42,'2022_10_24_122017_fill_permissions_for_menuicerik',25),(43,'2022_10_24_155925_create_menu_table',26),(44,'2022_10_25_084846_create_menus_table',27),(45,'2022_10_25_084942_fill_permissions_for_menu',28),(46,'2022_10_25_111857_create_event_calendar_table',29),(47,'2022_10_25_112036_fill_permissions_for_event-calendar',30),(48,'2022_10_27_091849_create_event_calendar_table',31),(49,'2022_10_27_092133_fill_permissions_for_event-calendar',32),(50,'2022_10_27_094921_create_event_calendar_table',33),(51,'2022_10_27_095312_fill_permissions_for_event-calendar',34);
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
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,'admin','admin','2022-09-15 05:58:05','2022-09-15 05:58:05'),(2,'admin.translation.index','admin','2022-09-15 05:58:05','2022-09-15 05:58:05'),(3,'admin.translation.edit','admin','2022-09-15 05:58:05','2022-09-15 05:58:05'),(4,'admin.translation.rescan','admin','2022-09-15 05:58:05','2022-09-15 05:58:05'),(5,'admin.admin-user.index','admin','2022-09-15 05:58:05','2022-09-15 05:58:05'),(6,'admin.admin-user.create','admin','2022-09-15 05:58:05','2022-09-15 05:58:05'),(7,'admin.admin-user.edit','admin','2022-09-15 05:58:05','2022-09-15 05:58:05'),(8,'admin.admin-user.delete','admin','2022-09-15 05:58:05','2022-09-15 05:58:05'),(9,'admin.upload','admin','2022-09-15 05:58:05','2022-09-15 05:58:05'),(10,'admin.admin-user.impersonal-login','admin','2022-09-15 05:58:05','2022-09-15 05:58:05'),(11,'admin.menu','admin','2022-09-15 05:58:06','2022-09-15 05:58:06'),(12,'admin.menu.index','admin','2022-09-15 05:58:06','2022-09-15 05:58:06'),(13,'admin.menu.create','admin','2022-09-15 05:58:06','2022-09-15 05:58:06'),(14,'admin.menu.show','admin','2022-09-15 05:58:06','2022-09-15 05:58:06'),(15,'admin.menu.edit','admin','2022-09-15 05:58:06','2022-09-15 05:58:06'),(16,'admin.menu.delete','admin','2022-09-15 05:58:06','2022-09-15 05:58:06'),(17,'admin.menu.bulk-delete','admin','2022-09-15 05:58:06','2022-09-15 05:58:06'),(18,'admin.main','admin','2022-09-15 05:58:06','2022-09-15 05:58:06'),(19,'admin.main.index','admin','2022-09-15 05:58:06','2022-09-15 05:58:06'),(20,'admin.main.create','admin','2022-09-15 05:58:06','2022-09-15 05:58:06'),(21,'admin.main.show','admin','2022-09-15 05:58:06','2022-09-15 05:58:06'),(22,'admin.main.edit','admin','2022-09-15 05:58:06','2022-09-15 05:58:06'),(23,'admin.main.delete','admin','2022-09-15 05:58:06','2022-09-15 05:58:06'),(24,'admin.main.bulk-delete','admin','2022-09-15 05:58:06','2022-09-15 05:58:06'),(25,'admin.template','admin','2022-10-17 09:49:21','2022-10-17 09:49:21'),(26,'admin.template.index','admin','2022-10-17 09:49:21','2022-10-17 09:49:21'),(27,'admin.template.create','admin','2022-10-17 09:49:21','2022-10-17 09:49:21'),(28,'admin.template.show','admin','2022-10-17 09:49:21','2022-10-17 09:49:21'),(29,'admin.template.edit','admin','2022-10-17 09:49:21','2022-10-17 09:49:21'),(30,'admin.template.delete','admin','2022-10-17 09:49:21','2022-10-17 09:49:21'),(31,'admin.template.bulk-delete','admin','2022-10-17 09:49:21','2022-10-17 09:49:21'),(32,'admin.author','admin','2022-10-17 10:16:29','2022-10-17 10:16:29'),(33,'admin.author.index','admin','2022-10-17 10:16:29','2022-10-17 10:16:29'),(34,'admin.author.create','admin','2022-10-17 10:16:29','2022-10-17 10:16:29'),(35,'admin.author.show','admin','2022-10-17 10:16:29','2022-10-17 10:16:29'),(36,'admin.author.edit','admin','2022-10-17 10:16:29','2022-10-17 10:16:29'),(37,'admin.author.delete','admin','2022-10-17 10:16:29','2022-10-17 10:16:29'),(38,'admin.author.bulk-delete','admin','2022-10-17 10:16:29','2022-10-17 10:16:29'),(39,'admin.articles-with-relationship','admin','2022-10-17 10:18:44','2022-10-17 10:18:44'),(40,'admin.articles-with-relationship.index','admin','2022-10-17 10:18:44','2022-10-17 10:18:44'),(41,'admin.articles-with-relationship.create','admin','2022-10-17 10:18:44','2022-10-17 10:18:44'),(42,'admin.articles-with-relationship.show','admin','2022-10-17 10:18:44','2022-10-17 10:18:44'),(43,'admin.articles-with-relationship.edit','admin','2022-10-17 10:18:44','2022-10-17 10:18:44'),(44,'admin.articles-with-relationship.delete','admin','2022-10-17 10:18:44','2022-10-17 10:18:44'),(45,'admin.articles-with-relationship.bulk-delete','admin','2022-10-17 10:18:44','2022-10-17 10:18:44'),(46,'admin.model','admin','2022-10-21 06:08:48','2022-10-21 06:08:48'),(47,'admin.model.index','admin','2022-10-21 06:08:48','2022-10-21 06:08:48'),(48,'admin.model.create','admin','2022-10-21 06:08:48','2022-10-21 06:08:48'),(49,'admin.model.show','admin','2022-10-21 06:08:48','2022-10-21 06:08:48'),(50,'admin.model.edit','admin','2022-10-21 06:08:48','2022-10-21 06:08:48'),(51,'admin.model.delete','admin','2022-10-21 06:08:48','2022-10-21 06:08:48'),(52,'admin.model.bulk-delete','admin','2022-10-21 06:08:48','2022-10-21 06:08:48'),(53,'admin.home','admin','2022-10-21 06:09:09','2022-10-21 06:09:09'),(54,'admin.home.index','admin','2022-10-21 06:09:09','2022-10-21 06:09:09'),(55,'admin.home.create','admin','2022-10-21 06:09:09','2022-10-21 06:09:09'),(56,'admin.home.show','admin','2022-10-21 06:09:09','2022-10-21 06:09:09'),(57,'admin.home.edit','admin','2022-10-21 06:09:09','2022-10-21 06:09:09'),(58,'admin.home.delete','admin','2022-10-21 06:09:09','2022-10-21 06:09:09'),(59,'admin.home.bulk-delete','admin','2022-10-21 06:09:09','2022-10-21 06:09:09'),(60,'admin.deneme','admin','2022-10-21 09:48:30','2022-10-21 09:48:30'),(61,'admin.deneme.index','admin','2022-10-21 09:48:30','2022-10-21 09:48:30'),(62,'admin.deneme.create','admin','2022-10-21 09:48:30','2022-10-21 09:48:30'),(63,'admin.deneme.show','admin','2022-10-21 09:48:30','2022-10-21 09:48:30'),(64,'admin.deneme.edit','admin','2022-10-21 09:48:30','2022-10-21 09:48:30'),(65,'admin.deneme.delete','admin','2022-10-21 09:48:30','2022-10-21 09:48:30'),(66,'admin.deneme.bulk-delete','admin','2022-10-21 09:48:30','2022-10-21 09:48:30'),(67,'admin.choice-of-template','admin','2022-10-22 03:11:47','2022-10-22 03:11:47'),(68,'admin.choice-of-template.index','admin','2022-10-22 03:11:47','2022-10-22 03:11:47'),(69,'admin.choice-of-template.create','admin','2022-10-22 03:11:47','2022-10-22 03:11:47'),(70,'admin.choice-of-template.show','admin','2022-10-22 03:11:47','2022-10-22 03:11:47'),(71,'admin.choice-of-template.edit','admin','2022-10-22 03:11:47','2022-10-22 03:11:47'),(72,'admin.choice-of-template.delete','admin','2022-10-22 03:11:47','2022-10-22 03:11:47'),(73,'admin.choice-of-template.bulk-delete','admin','2022-10-22 03:11:47','2022-10-22 03:11:47'),(74,'admin.menu-content','admin','2022-10-22 04:41:43','2022-10-22 04:41:43'),(75,'admin.menu-content.index','admin','2022-10-22 04:41:43','2022-10-22 04:41:43'),(76,'admin.menu-content.create','admin','2022-10-22 04:41:43','2022-10-22 04:41:43'),(77,'admin.menu-content.show','admin','2022-10-22 04:41:43','2022-10-22 04:41:43'),(78,'admin.menu-content.edit','admin','2022-10-22 04:41:43','2022-10-22 04:41:43'),(79,'admin.menu-content.delete','admin','2022-10-22 04:41:43','2022-10-22 04:41:43'),(80,'admin.menu-content.bulk-delete','admin','2022-10-22 04:41:43','2022-10-22 04:41:43'),(81,'admin.menuicerik','admin','2022-10-24 09:20:20','2022-10-24 09:20:20'),(82,'admin.menuicerik.index','admin','2022-10-24 09:20:20','2022-10-24 09:20:20'),(83,'admin.menuicerik.create','admin','2022-10-24 09:20:20','2022-10-24 09:20:20'),(84,'admin.menuicerik.show','admin','2022-10-24 09:20:20','2022-10-24 09:20:20'),(85,'admin.menuicerik.edit','admin','2022-10-24 09:20:20','2022-10-24 09:20:20'),(86,'admin.menuicerik.delete','admin','2022-10-24 09:20:20','2022-10-24 09:20:20'),(87,'admin.menuicerik.bulk-delete','admin','2022-10-24 09:20:20','2022-10-24 09:20:20'),(88,'admin.event-calendar','admin','2022-10-25 08:20:38','2022-10-25 08:20:38'),(89,'admin.event-calendar.index','admin','2022-10-25 08:20:38','2022-10-25 08:20:38'),(90,'admin.event-calendar.create','admin','2022-10-25 08:20:38','2022-10-25 08:20:38'),(91,'admin.event-calendar.show','admin','2022-10-25 08:20:38','2022-10-25 08:20:38'),(92,'admin.event-calendar.edit','admin','2022-10-25 08:20:38','2022-10-25 08:20:38'),(93,'admin.event-calendar.delete','admin','2022-10-25 08:20:38','2022-10-25 08:20:38'),(94,'admin.event-calendar.bulk-delete','admin','2022-10-25 08:20:38','2022-10-25 08:20:38');
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
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
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
INSERT INTO `role_has_permissions` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1),(11,1),(12,1),(13,1),(14,1),(15,1),(16,1),(17,1),(18,1),(19,1),(20,1),(21,1),(22,1),(23,1),(24,1),(25,1),(26,1),(27,1),(28,1),(29,1),(30,1),(31,1),(32,1),(33,1),(34,1),(35,1),(36,1),(37,1),(38,1),(39,1),(40,1),(41,1),(42,1),(43,1),(44,1),(45,1),(46,1),(47,1),(48,1),(49,1),(50,1),(51,1),(52,1),(53,1),(54,1),(55,1),(56,1),(57,1),(58,1),(59,1),(60,1),(61,1),(62,1),(63,1),(64,1),(65,1),(66,1),(67,1),(68,1),(69,1),(70,1),(71,1),(72,1),(73,1),(74,1),(75,1),(76,1),(77,1),(78,1),(79,1),(80,1),(81,1),(82,1),(83,1),(84,1),(85,1),(86,1),(87,1),(88,1),(89,1),(90,1),(91,1),(92,1),(93,1),(94,1);
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
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Table structure for table `templates`
--

DROP TABLE IF EXISTS `templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `templates` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `namespace` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '*',
  `group` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` json NOT NULL,
  `metadata` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `translations_namespace_index` (`namespace`),
  KEY `translations_group_index` (`group`)
) ENGINE=InnoDB AUTO_INCREMENT=229 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `translations`
--

LOCK TABLES `translations` WRITE;
/*!40000 ALTER TABLE `translations` DISABLE KEYS */;
INSERT INTO `translations` VALUES (1,'brackets/admin-ui','admin','operation.succeeded','[]',NULL,'2022-10-17 16:26:10','2022-10-27 03:04:51',NULL),(2,'brackets/admin-ui','admin','operation.failed','[]',NULL,'2022-10-17 16:26:10','2022-10-27 03:04:51',NULL),(3,'brackets/admin-ui','admin','operation.not_allowed','[]',NULL,'2022-10-17 16:26:10','2022-10-27 03:04:51',NULL),(4,'*','admin','admin-user.columns.activated','[]',NULL,'2022-10-17 16:26:10','2022-10-27 03:04:51',NULL),(5,'*','admin','admin-user.columns.email','[]',NULL,'2022-10-17 16:26:10','2022-10-27 03:04:51',NULL),(6,'*','admin','admin-user.columns.first_name','[]',NULL,'2022-10-17 16:26:10','2022-10-27 03:04:51',NULL),(7,'*','admin','admin-user.columns.forbidden','[]',NULL,'2022-10-17 16:26:10','2022-10-27 03:04:51',NULL),(8,'*','admin','admin-user.columns.language','[]',NULL,'2022-10-17 16:26:10','2022-10-27 03:04:51',NULL),(9,'brackets/admin-ui','admin','forms.select_an_option','[]',NULL,'2022-10-17 16:26:10','2022-10-27 03:04:51',NULL),(10,'*','admin','admin-user.columns.last_name','[]',NULL,'2022-10-17 16:26:10','2022-10-27 03:04:51',NULL),(11,'*','admin','admin-user.columns.password','[]',NULL,'2022-10-17 16:26:10','2022-10-27 03:04:51',NULL),(12,'*','admin','admin-user.columns.password_repeat','[]',NULL,'2022-10-17 16:26:10','2022-10-27 03:04:51',NULL),(13,'*','admin','admin-user.columns.roles','[]',NULL,'2022-10-17 16:26:10','2022-10-27 03:04:51',NULL),(14,'brackets/admin-ui','admin','forms.select_options','[]',NULL,'2022-10-17 16:26:10','2022-10-27 03:04:51',NULL),(15,'*','admin','admin-user.actions.create','[]',NULL,'2022-10-17 16:26:10','2022-10-27 03:04:51',NULL),(16,'brackets/admin-ui','admin','btn.save','[]',NULL,'2022-10-17 16:26:10','2022-10-27 03:04:51',NULL),(17,'*','admin','admin-user.actions.edit','[]',NULL,'2022-10-17 16:26:10','2022-10-27 03:04:51',NULL),(18,'*','admin','admin-user.actions.index','[]',NULL,'2022-10-17 16:26:10','2022-10-27 03:04:51',NULL),(19,'brackets/admin-ui','admin','placeholder.search','[]',NULL,'2022-10-17 16:26:10','2022-10-27 03:04:51',NULL),(20,'brackets/admin-ui','admin','btn.search','[]',NULL,'2022-10-17 16:26:10','2022-10-27 03:04:51',NULL),(21,'*','admin','admin-user.columns.id','[]',NULL,'2022-10-17 16:26:10','2022-10-27 03:04:51',NULL),(22,'*','admin','admin-user.columns.last_login_at','[]',NULL,'2022-10-17 16:26:10','2022-10-27 03:04:51',NULL),(23,'brackets/admin-ui','admin','btn.edit','[]',NULL,'2022-10-17 16:26:10','2022-10-27 03:04:51',NULL),(24,'brackets/admin-ui','admin','btn.delete','[]',NULL,'2022-10-17 16:26:10','2022-10-27 03:04:51',NULL),(25,'brackets/admin-ui','admin','pagination.overview','[]',NULL,'2022-10-17 16:26:10','2022-10-27 03:04:51',NULL),(26,'brackets/admin-ui','admin','index.no_items','[]',NULL,'2022-10-17 16:26:10','2022-10-27 03:04:51',NULL),(27,'brackets/admin-ui','admin','index.try_changing_items','[]',NULL,'2022-10-17 16:26:10','2022-10-27 03:04:51',NULL),(28,'brackets/admin-ui','admin','btn.new','[]',NULL,'2022-10-17 16:26:10','2022-10-27 03:04:51',NULL),(29,'brackets/admin-ui','admin','forms.publish','[]',NULL,'2022-10-17 16:26:10','2022-10-27 03:04:51',NULL),(30,'*','admin','articles-with-relationship.columns.published_at','[]',NULL,'2022-10-17 16:26:10','2022-10-23 15:32:08','2022-10-23 15:32:08'),(31,'*','admin','post.columns.author_id','{\"en\": \"Author\", \"tr\": \"Author\"}',NULL,'2022-10-17 16:26:10','2022-10-23 15:32:08','2022-10-23 15:32:08'),(32,'*','admin','articles-with-relationship.columns.title','[]',NULL,'2022-10-17 16:26:10','2022-10-23 15:32:08','2022-10-23 15:32:08'),(33,'*','admin','articles-with-relationship.columns.description','[]',NULL,'2022-10-17 16:26:10','2022-10-23 15:32:08','2022-10-23 15:32:08'),(34,'*','admin','articles-with-relationship.columns.enabled','[]',NULL,'2022-10-17 16:26:10','2022-10-23 15:32:08','2022-10-23 15:32:08'),(35,'*','admin','articles-with-relationship.actions.create','[]',NULL,'2022-10-17 16:26:10','2022-10-23 15:32:08','2022-10-23 15:32:08'),(36,'brackets/admin-ui','admin','btn.saved','[]',NULL,'2022-10-17 16:26:10','2022-10-27 03:04:51',NULL),(37,'*','admin','articles-with-relationship.actions.edit','[]',NULL,'2022-10-17 16:26:10','2022-10-23 15:32:08','2022-10-23 15:32:08'),(38,'*','admin','articles-with-relationship.actions.index','[]',NULL,'2022-10-17 16:26:10','2022-10-23 15:32:08','2022-10-23 15:32:08'),(39,'*','admin','articles-with-relationship.columns.id','[]',NULL,'2022-10-17 16:26:10','2022-10-23 15:32:08','2022-10-23 15:32:08'),(40,'*','admin','articles-with-relationship.columns.author_id','[]',NULL,'2022-10-17 16:26:10','2022-10-23 15:32:08','2022-10-23 15:32:08'),(41,'brackets/admin-ui','admin','listing.selected_items','[]',NULL,'2022-10-17 16:26:10','2022-10-27 03:04:51',NULL),(42,'brackets/admin-ui','admin','listing.check_all_items','[]',NULL,'2022-10-17 16:26:10','2022-10-27 03:04:51',NULL),(43,'brackets/admin-ui','admin','listing.uncheck_all_items','[]',NULL,'2022-10-17 16:26:10','2022-10-27 03:04:51',NULL),(44,'*','admin','articles-with-relationship.actions.will_be_published','[]',NULL,'2022-10-17 16:26:10','2022-10-23 15:32:08','2022-10-23 15:32:08'),(45,'brackets/admin-ui','admin','operation.publish_later','[]',NULL,'2022-10-17 16:26:10','2022-10-27 03:04:51',NULL),(46,'brackets/admin-ui','admin','operation.publish_now','[]',NULL,'2022-10-17 16:26:10','2022-10-27 03:04:51',NULL),(47,'brackets/admin-ui','admin','operation.unpublish_now','[]',NULL,'2022-10-17 16:26:10','2022-10-27 03:04:51',NULL),(48,'*','admin','author.columns.title','[]',NULL,'2022-10-17 16:26:10','2022-10-23 15:32:08','2022-10-23 15:32:08'),(49,'*','admin','author.actions.create','[]',NULL,'2022-10-17 16:26:10','2022-10-23 15:32:08','2022-10-23 15:32:08'),(50,'*','admin','author.actions.edit','[]',NULL,'2022-10-17 16:26:10','2022-10-23 15:32:08','2022-10-23 15:32:08'),(51,'*','admin','author.actions.index','[]',NULL,'2022-10-17 16:26:10','2022-10-23 15:32:08','2022-10-23 15:32:08'),(52,'*','admin','author.columns.id','[]',NULL,'2022-10-17 16:26:10','2022-10-23 15:32:08','2022-10-23 15:32:08'),(53,'brackets/admin-ui','admin','profile_dropdown.account','[]',NULL,'2022-10-17 16:26:10','2022-10-27 03:04:51',NULL),(54,'brackets/admin-auth','admin','profile_dropdown.profile','[]',NULL,'2022-10-17 16:26:10','2022-10-27 03:04:51',NULL),(55,'brackets/admin-auth','admin','profile_dropdown.password','[]',NULL,'2022-10-17 16:26:10','2022-10-27 03:04:51',NULL),(56,'brackets/admin-auth','admin','profile_dropdown.logout','[]',NULL,'2022-10-17 16:26:10','2022-10-27 03:04:51',NULL),(57,'brackets/admin-ui','admin','sidebar.content','[]',NULL,'2022-10-17 16:26:10','2022-10-27 03:04:51',NULL),(58,'*','admin','menu.title','[]',NULL,'2022-10-17 16:26:10','2022-10-27 03:04:52',NULL),(59,'*','admin','main.title','[]',NULL,'2022-10-17 16:26:10','2022-10-27 03:04:52',NULL),(60,'*','admin','template.title','[]',NULL,'2022-10-17 16:26:10','2022-10-27 03:04:51','2022-10-27 03:04:51'),(61,'*','admin','author.title','[]',NULL,'2022-10-17 16:26:10','2022-10-23 15:32:08','2022-10-23 15:32:08'),(62,'*','admin','articles-with-relationship.title','[]',NULL,'2022-10-17 16:26:10','2022-10-23 15:32:08','2022-10-23 15:32:08'),(63,'brackets/admin-ui','admin','sidebar.settings','[]',NULL,'2022-10-17 16:26:10','2022-10-27 03:04:52',NULL),(64,'brackets/admin-ui','admin','forms.currently_editing_translation','[]',NULL,'2022-10-17 16:26:10','2022-10-27 03:04:51',NULL),(65,'brackets/admin-ui','admin','forms.more_can_be_managed','[]',NULL,'2022-10-17 16:26:10','2022-10-27 03:04:51',NULL),(66,'brackets/admin-ui','admin','forms.manage_translations','[]',NULL,'2022-10-17 16:26:10','2022-10-27 03:04:51',NULL),(67,'brackets/admin-ui','admin','forms.choose_translation_to_edit','[]',NULL,'2022-10-17 16:26:10','2022-10-27 03:04:51',NULL),(68,'brackets/admin-ui','admin','forms.hide','[]',NULL,'2022-10-17 16:26:10','2022-10-27 03:04:51',NULL),(69,'*','admin','main.columns.title','[]',NULL,'2022-10-17 16:26:10','2022-10-27 03:04:52',NULL),(70,'*','admin','main.columns.description1','[]',NULL,'2022-10-17 16:26:10','2022-10-22 03:45:11','2022-10-22 03:45:11'),(71,'*','admin','main.columns.description2','[]',NULL,'2022-10-17 16:26:10','2022-10-22 03:45:11','2022-10-22 03:45:11'),(72,'*','admin','main.columns.description3','[]',NULL,'2022-10-17 16:26:10','2022-10-22 03:45:11','2022-10-22 03:45:11'),(73,'*','admin','main.columns.description4','[]',NULL,'2022-10-17 16:26:10','2022-10-22 03:45:11','2022-10-22 03:45:11'),(74,'*','admin','main.columns.enabled','[]',NULL,'2022-10-17 16:26:10','2022-10-27 03:04:52',NULL),(75,'*','admin','main.actions.create','[]',NULL,'2022-10-17 16:26:10','2022-10-27 03:04:52',NULL),(76,'*','admin','main.actions.edit','[]',NULL,'2022-10-17 16:26:10','2022-10-27 03:04:52',NULL),(77,'*','admin','main.actions.index','[]',NULL,'2022-10-17 16:26:10','2022-10-27 03:04:52',NULL),(78,'*','admin','main.columns.id','[]',NULL,'2022-10-17 16:26:10','2022-10-27 03:04:52',NULL),(79,'*','admin','menu.columns.name','[]',NULL,'2022-10-17 16:26:10','2022-10-27 03:04:52',NULL),(80,'*','admin','menu.columns.menu_id','[]',NULL,'2022-10-17 16:26:10','2022-10-22 03:45:11','2022-10-22 03:45:11'),(81,'*','admin','menu.columns.menu_title','[]',NULL,'2022-10-17 16:26:10','2022-10-22 03:45:11','2022-10-22 03:45:11'),(82,'*','admin','menu.columns.description1','[]',NULL,'2022-10-17 16:26:10','2022-10-22 03:45:11','2022-10-22 03:45:11'),(83,'*','admin','menu.columns.description2','[]',NULL,'2022-10-17 16:26:10','2022-10-22 03:45:11','2022-10-22 03:45:11'),(84,'*','admin','menu.columns.description3','[]',NULL,'2022-10-17 16:26:10','2022-10-22 03:45:11','2022-10-22 03:45:11'),(85,'*','admin','menu.columns.description4','[]',NULL,'2022-10-17 16:26:10','2022-10-22 03:45:11','2022-10-22 03:45:11'),(86,'*','admin','menu.columns.enabled','[]',NULL,'2022-10-17 16:26:10','2022-10-22 03:45:11','2022-10-22 03:45:11'),(87,'*','admin','menu.actions.create','[]',NULL,'2022-10-17 16:26:10','2022-10-27 03:04:52',NULL),(88,'*','admin','menu.actions.edit','[]',NULL,'2022-10-17 16:26:10','2022-10-27 03:04:52',NULL),(89,'*','admin','menu.actions.index','[]',NULL,'2022-10-17 16:26:10','2022-10-27 03:04:52',NULL),(90,'*','admin','menu.columns.id','[]',NULL,'2022-10-17 16:26:10','2022-10-27 03:04:52',NULL),(91,'*','admin','admin-user.actions.edit_password','[]',NULL,'2022-10-17 16:26:10','2022-10-27 03:04:52',NULL),(92,'*','admin','admin-user.actions.edit_profile','[]',NULL,'2022-10-17 16:26:10','2022-10-27 03:04:52',NULL),(93,'*','admin','template.columns.template','[]',NULL,'2022-10-17 16:26:10','2022-10-22 03:45:11','2022-10-22 03:45:11'),(94,'*','admin','template.columns.enabled','[]',NULL,'2022-10-17 16:26:10','2022-10-22 03:45:11','2022-10-22 03:45:11'),(95,'*','admin','template.actions.create','[]',NULL,'2022-10-17 16:26:10','2022-10-27 03:04:52',NULL),(96,'*','admin','template.actions.edit','[]',NULL,'2022-10-17 16:26:10','2022-10-27 03:04:52',NULL),(97,'*','admin','template.actions.index','[]',NULL,'2022-10-17 16:26:10','2022-10-27 03:04:52',NULL),(98,'*','admin','template.columns.id','[]',NULL,'2022-10-17 16:26:10','2022-10-27 03:04:52',NULL),(99,'*','admin','category.actions.index','[]',NULL,'2022-10-17 16:26:10','2022-10-27 03:04:52',NULL),(100,'*','public','home.category','{\"en\": \"category\", \"tr\": \"kategori\"}',NULL,'2022-10-17 16:26:10','2022-10-27 03:04:52',NULL),(101,'*','public','home.category_others','[]',NULL,'2022-10-17 16:26:10','2022-10-23 15:32:08','2022-10-23 15:32:08'),(102,'brackets/admin-auth','admin','activation_form.title','[]',NULL,'2022-10-17 16:26:10','2022-10-27 03:04:52',NULL),(103,'brackets/admin-auth','admin','activation_form.note','[]',NULL,'2022-10-17 16:26:10','2022-10-27 03:04:52',NULL),(104,'brackets/admin-auth','admin','auth_global.email','[]',NULL,'2022-10-17 16:26:10','2022-10-27 03:04:52',NULL),(105,'brackets/admin-auth','admin','activation_form.button','[]',NULL,'2022-10-17 16:26:10','2022-10-27 03:04:52',NULL),(106,'brackets/admin-auth','admin','login.title','[]',NULL,'2022-10-17 16:26:10','2022-10-27 03:04:52',NULL),(107,'brackets/admin-auth','admin','login.sign_in_text','[]',NULL,'2022-10-17 16:26:10','2022-10-27 03:04:52',NULL),(108,'brackets/admin-auth','admin','auth_global.password','[]',NULL,'2022-10-17 16:26:10','2022-10-27 03:04:52',NULL),(109,'brackets/admin-auth','admin','login.button','[]',NULL,'2022-10-17 16:26:10','2022-10-27 03:04:52',NULL),(110,'brackets/admin-auth','admin','login.forgot_password','[]',NULL,'2022-10-17 16:26:10','2022-10-27 03:04:52',NULL),(111,'brackets/admin-auth','admin','forgot_password.title','[]',NULL,'2022-10-17 16:26:10','2022-10-27 03:04:52',NULL),(112,'brackets/admin-auth','admin','forgot_password.note','[]',NULL,'2022-10-17 16:26:10','2022-10-27 03:04:52',NULL),(113,'brackets/admin-auth','admin','forgot_password.button','[]',NULL,'2022-10-17 16:26:10','2022-10-27 03:04:52',NULL),(114,'brackets/admin-auth','admin','password_reset.title','[]',NULL,'2022-10-17 16:26:10','2022-10-27 03:04:52',NULL),(115,'brackets/admin-auth','admin','password_reset.note','[]',NULL,'2022-10-17 16:26:10','2022-10-27 03:04:52',NULL),(116,'brackets/admin-auth','admin','auth_global.password_confirm','[]',NULL,'2022-10-17 16:26:10','2022-10-27 03:04:52',NULL),(117,'brackets/admin-auth','admin','password_reset.button','[]',NULL,'2022-10-17 16:26:10','2022-10-27 03:04:52',NULL),(118,'brackets/admin-auth','activations','email.line','[]',NULL,'2022-10-17 16:26:10','2022-10-27 03:04:52',NULL),(119,'brackets/admin-auth','activations','email.action','[]',NULL,'2022-10-17 16:26:10','2022-10-27 03:04:52',NULL),(120,'brackets/admin-auth','activations','email.notRequested','[]',NULL,'2022-10-17 16:26:10','2022-10-27 03:04:52',NULL),(121,'brackets/admin-auth','admin','activations.activated','[]',NULL,'2022-10-17 16:26:11','2022-10-27 03:04:52',NULL),(122,'brackets/admin-auth','admin','activations.invalid_request','[]',NULL,'2022-10-17 16:26:11','2022-10-27 03:04:52',NULL),(123,'brackets/admin-auth','admin','activations.disabled','[]',NULL,'2022-10-17 16:26:11','2022-10-27 03:04:52',NULL),(124,'brackets/admin-auth','admin','activations.sent','[]',NULL,'2022-10-17 16:26:11','2022-10-27 03:04:52',NULL),(125,'brackets/admin-auth','admin','passwords.sent','[]',NULL,'2022-10-17 16:26:11','2022-10-27 03:04:52',NULL),(126,'brackets/admin-auth','admin','passwords.reset','[]',NULL,'2022-10-17 16:26:11','2022-10-27 03:04:52',NULL),(127,'brackets/admin-auth','admin','passwords.invalid_token','[]',NULL,'2022-10-17 16:26:11','2022-10-27 03:04:52',NULL),(128,'brackets/admin-auth','admin','passwords.invalid_user','[]',NULL,'2022-10-17 16:26:11','2022-10-27 03:04:52',NULL),(129,'brackets/admin-auth','admin','passwords.invalid_password','[]',NULL,'2022-10-17 16:26:11','2022-10-27 03:04:52',NULL),(130,'brackets/admin-auth','resets','email.line','[]',NULL,'2022-10-17 16:26:11','2022-10-27 03:04:52',NULL),(131,'brackets/admin-auth','resets','email.action','[]',NULL,'2022-10-17 16:26:11','2022-10-27 03:04:52',NULL),(132,'brackets/admin-auth','resets','email.notRequested','[]',NULL,'2022-10-17 16:26:11','2022-10-27 03:04:52',NULL),(133,'*','auth','failed','[]',NULL,'2022-10-17 16:26:11','2022-10-27 03:04:52',NULL),(134,'*','auth','throttle','[]',NULL,'2022-10-17 16:26:11','2022-10-27 03:04:52',NULL),(135,'brackets/admin-translations','admin','title','[]',NULL,'2022-10-17 16:26:11','2022-10-27 03:04:52',NULL),(136,'brackets/admin-translations','admin','index.all_groups','[]',NULL,'2022-10-17 16:26:11','2022-10-27 03:04:52',NULL),(137,'brackets/admin-translations','admin','index.edit','[]',NULL,'2022-10-17 16:26:11','2022-10-27 03:04:52',NULL),(138,'brackets/admin-translations','admin','index.default_text','[]',NULL,'2022-10-17 16:26:11','2022-10-27 03:04:52',NULL),(139,'brackets/admin-translations','admin','index.translation','[]',NULL,'2022-10-17 16:26:11','2022-10-27 03:04:52',NULL),(140,'brackets/admin-translations','admin','index.translation_for_language','[]',NULL,'2022-10-17 16:26:11','2022-10-27 03:04:52',NULL),(141,'brackets/admin-translations','admin','import.title','[]',NULL,'2022-10-17 16:26:11','2022-10-27 03:04:52',NULL),(142,'brackets/admin-translations','admin','import.notice','[]',NULL,'2022-10-17 16:26:11','2022-10-27 03:04:52',NULL),(143,'brackets/admin-translations','admin','import.upload_file','[]',NULL,'2022-10-17 16:26:11','2022-10-27 03:04:52',NULL),(144,'brackets/admin-translations','admin','import.choose_file','[]',NULL,'2022-10-17 16:26:11','2022-10-27 03:04:52',NULL),(145,'brackets/admin-translations','admin','import.language_to_import','[]',NULL,'2022-10-17 16:26:11','2022-10-27 03:04:52',NULL),(146,'brackets/admin-translations','admin','fields.select_language','[]',NULL,'2022-10-17 16:26:11','2022-10-27 03:04:52',NULL),(147,'brackets/admin-translations','admin','import.do_not_override','[]',NULL,'2022-10-17 16:26:11','2022-10-27 03:04:52',NULL),(148,'brackets/admin-translations','admin','import.conflict_notice_we_have_found','[]',NULL,'2022-10-17 16:26:11','2022-10-27 03:04:52',NULL),(149,'brackets/admin-translations','admin','import.conflict_notice_translations_to_be_imported','[]',NULL,'2022-10-17 16:26:11','2022-10-27 03:04:52',NULL),(150,'brackets/admin-translations','admin','import.conflict_notice_differ','[]',NULL,'2022-10-17 16:26:11','2022-10-27 03:04:52',NULL),(151,'brackets/admin-translations','admin','fields.group','[]',NULL,'2022-10-17 16:26:11','2022-10-27 03:04:52',NULL),(152,'brackets/admin-translations','admin','fields.default','[]',NULL,'2022-10-17 16:26:11','2022-10-27 03:04:52',NULL),(153,'brackets/admin-translations','admin','fields.current_value','[]',NULL,'2022-10-17 16:26:11','2022-10-27 03:04:52',NULL),(154,'brackets/admin-translations','admin','fields.imported_value','[]',NULL,'2022-10-17 16:26:11','2022-10-27 03:04:52',NULL),(155,'brackets/admin-translations','admin','import.sucesfully_notice','[]',NULL,'2022-10-17 16:26:11','2022-10-27 03:04:52',NULL),(156,'brackets/admin-translations','admin','import.sucesfully_notice_update','[]',NULL,'2022-10-17 16:26:11','2022-10-27 03:04:52',NULL),(157,'brackets/admin-translations','admin','index.export','[]',NULL,'2022-10-17 16:26:11','2022-10-27 03:04:52',NULL),(158,'brackets/admin-translations','admin','export.notice','[]',NULL,'2022-10-17 16:26:11','2022-10-27 03:04:52',NULL),(159,'brackets/admin-translations','admin','export.language_to_export','[]',NULL,'2022-10-17 16:26:11','2022-10-27 03:04:52',NULL),(160,'brackets/admin-translations','admin','btn.export','[]',NULL,'2022-10-17 16:26:11','2022-10-27 03:04:52',NULL),(161,'brackets/admin-translations','admin','index.title','[]',NULL,'2022-10-17 16:26:11','2022-10-27 03:04:52',NULL),(162,'brackets/admin-translations','admin','btn.import','[]',NULL,'2022-10-17 16:26:11','2022-10-27 03:04:52',NULL),(163,'brackets/admin-translations','admin','btn.re_scan','[]',NULL,'2022-10-17 16:26:11','2022-10-27 03:04:52',NULL),(164,'brackets/admin-translations','admin','fields.created_at','[]',NULL,'2022-10-17 16:26:11','2022-10-27 03:04:52',NULL),(165,'brackets/admin-translations','admin','index.no_items','[]',NULL,'2022-10-17 16:26:11','2022-10-27 03:04:52',NULL),(166,'brackets/admin-translations','admin','index.try_changing_items','[]',NULL,'2022-10-17 16:26:11','2022-10-27 03:04:52',NULL),(167,'brackets/admin-ui','admin','media_uploader.max_number_of_files','[]',NULL,'2022-10-17 16:26:11','2022-10-27 03:04:52',NULL),(168,'brackets/admin-ui','admin','media_uploader.max_size_pre_file','[]',NULL,'2022-10-17 16:26:11','2022-10-27 03:04:52',NULL),(169,'brackets/admin-ui','admin','media_uploader.private_title','[]',NULL,'2022-10-17 16:26:11','2022-10-27 03:04:52',NULL),(170,'brackets/admin-ui','admin','page_title_suffix','[]',NULL,'2022-10-17 16:26:11','2022-10-27 03:04:52',NULL),(171,'brackets/admin-ui','admin','footer.powered_by','[]',NULL,'2022-10-17 16:26:11','2022-10-27 03:04:52',NULL),(172,'*','*','Select Author','[]',NULL,'2022-10-17 16:26:11','2022-10-23 15:32:08','2022-10-23 15:32:08'),(173,'*','*','Author','[]',NULL,'2022-10-17 16:26:11','2022-10-23 15:32:08','2022-10-23 15:32:08'),(174,'*','*','Select author/s','[]',NULL,'2022-10-17 16:26:11','2022-10-23 15:32:08','2022-10-23 15:32:08'),(175,'*','*','Type to search a author/s','[]',NULL,'2022-10-17 16:26:11','2022-10-27 03:04:52',NULL),(176,'*','*','Manage access','[]',NULL,'2022-10-17 16:26:11','2022-10-27 03:04:52',NULL),(177,'*','*','Translations','[]',NULL,'2022-10-17 16:26:11','2022-10-27 03:04:52',NULL),(178,'*','*','Configuration','[]',NULL,'2022-10-17 16:26:11','2022-10-27 03:04:52',NULL),(179,'*','*','Close','[]',NULL,'2022-10-17 16:26:11','2022-10-27 03:04:52',NULL),(180,'*','admin','post.columns.template_id','[]',NULL,'2022-10-22 03:45:11','2022-10-22 06:38:28','2022-10-22 06:38:28'),(181,'*','admin','choice-of-template.actions.create','[]',NULL,'2022-10-22 03:45:11','2022-10-27 03:04:51',NULL),(182,'*','admin','choice-of-template.actions.edit','[]',NULL,'2022-10-22 03:45:11','2022-10-27 03:04:51',NULL),(183,'*','admin','choice-of-template.actions.index','[]',NULL,'2022-10-22 03:45:11','2022-10-27 03:04:51',NULL),(184,'*','admin','choice-of-template.columns.id','[]',NULL,'2022-10-22 03:45:11','2022-10-27 03:04:51',NULL),(185,'*','admin','choice-of-template.columns.template_id','[]',NULL,'2022-10-22 03:45:11','2022-10-27 03:04:51',NULL),(186,'*','admin','choice-of-template.title','[]',NULL,'2022-10-22 03:45:11','2022-10-27 03:04:51',NULL),(187,'*','admin','template.columns.name','[]',NULL,'2022-10-22 03:45:11','2022-10-27 03:04:52',NULL),(188,'*','*','Select Template','[]',NULL,'2022-10-22 03:45:11','2022-10-27 03:04:52',NULL),(189,'*','*','Template','[]',NULL,'2022-10-22 03:45:11','2022-10-27 03:04:52',NULL),(190,'*','*','Select template/s','[]',NULL,'2022-10-22 03:45:11','2022-10-27 03:04:52',NULL),(191,'*','admin','menu-content.title','[]',NULL,'2022-10-22 06:38:29','2022-10-27 03:04:52',NULL),(192,'*','admin','main.columns.description','[]',NULL,'2022-10-22 06:38:29','2022-10-27 03:04:52',NULL),(193,'*','admin','main.columns.link','[]',NULL,'2022-10-22 06:38:29','2022-10-27 03:04:52',NULL),(194,'*','admin','menu-content.columns.title','[]',NULL,'2022-10-22 06:38:29','2022-10-27 03:04:52',NULL),(195,'*','admin','menu-content.columns.description','[]',NULL,'2022-10-22 06:38:29','2022-10-27 03:04:52',NULL),(196,'*','admin','menu-content.columns.enabled','[]',NULL,'2022-10-22 06:38:29','2022-10-27 03:04:52',NULL),(197,'*','admin','choice-of-menu.columns.menu_id','[]',NULL,'2022-10-22 06:38:29','2022-10-22 06:39:06','2022-10-22 06:39:06'),(198,'*','admin','menu-content.actions.create','[]',NULL,'2022-10-22 06:38:29','2022-10-27 03:04:52',NULL),(199,'*','admin','menu-content.actions.edit','[]',NULL,'2022-10-22 06:38:29','2022-10-27 03:04:52',NULL),(200,'*','admin','menu-content.actions.index','[]',NULL,'2022-10-22 06:38:29','2022-10-27 03:04:52',NULL),(201,'*','admin','menu-content.columns.id','[]',NULL,'2022-10-22 06:38:29','2022-10-27 03:04:52',NULL),(202,'*','admin','menu-content.columns.menu_id','[]',NULL,'2022-10-22 06:38:29','2022-10-27 03:04:52',NULL),(203,'*','*','Select Menu','[]',NULL,'2022-10-22 06:38:29','2022-10-27 03:04:52',NULL),(204,'*','*','Menu','[]',NULL,'2022-10-22 06:38:29','2022-10-27 03:04:52',NULL),(205,'*','*','Select menu/s','[]',NULL,'2022-10-22 06:38:29','2022-10-27 03:04:52',NULL),(206,'*','*','Type to search a menu/s','[]',NULL,'2022-10-22 06:38:29','2022-10-27 03:04:52',NULL),(207,'*','admin','mainpage.title','[]',NULL,'2022-10-23 15:32:08','2022-10-23 15:32:23','2022-10-23 15:32:23'),(208,'*','public','mainpage.title','{\"en\": \"Sub Page\", \"tr\": \"Alt Sayfalar\"}',NULL,'2022-10-23 15:32:23','2022-12-25 05:48:29',NULL),(209,'*','admin','event-calendar.columns.published_at','[]',NULL,'2022-10-27 03:04:51','2022-10-27 03:04:51',NULL),(210,'*','admin','event-calendar.columns.title','[]',NULL,'2022-10-27 03:04:51','2022-10-27 03:04:51',NULL),(211,'*','admin','event-calendar.columns.event_location','[]',NULL,'2022-10-27 03:04:51','2022-10-27 03:04:51',NULL),(212,'*','admin','event-calendar.columns.event_time','[]',NULL,'2022-10-27 03:04:51','2022-10-27 03:04:51',NULL),(213,'brackets/admin-ui','admin','forms.select_date_and_time','[]',NULL,'2022-10-27 03:04:51','2022-10-27 03:04:51',NULL),(214,'*','admin','event-calendar.columns.enabled','[]',NULL,'2022-10-27 03:04:51','2022-10-27 03:04:51',NULL),(215,'*','admin','event-calendar.actions.create','[]',NULL,'2022-10-27 03:04:51','2022-10-27 03:04:51',NULL),(216,'*','admin','event-calendar.actions.edit','[]',NULL,'2022-10-27 03:04:51','2022-10-27 03:04:51',NULL),(217,'*','admin','event-calendar.actions.index','[]',NULL,'2022-10-27 03:04:51','2022-10-27 03:04:51',NULL),(218,'*','admin','event-calendar.columns.id','[]',NULL,'2022-10-27 03:04:51','2022-10-27 03:04:51',NULL),(219,'*','admin','event-calendar.actions.will_be_published','[]',NULL,'2022-10-27 03:04:51','2022-10-27 03:04:51',NULL),(220,'*','admin','event-calendar.title','[]',NULL,'2022-10-27 03:04:52','2022-10-27 03:04:52',NULL),(221,'*','public','home.abdullahguluniversitesi','{\"en\": \"Abdullah Gul University\", \"tr\": \"Abdullah Gül Üniversitesi\"}',NULL,'2022-10-27 03:04:52','2022-10-27 03:05:12',NULL),(222,'*','public','home.sumerkampusu','{\"en\": \"Sumer Campus\", \"tr\": \"Sümer Kampüsü\"}',NULL,'2022-10-27 03:04:52','2022-10-27 03:05:25',NULL),(223,'*','public','home.santral','{\"en\": \"Central\", \"tr\": \"Santral\"}',NULL,'2022-10-27 03:04:52','2022-10-27 05:24:51',NULL),(224,'*','public','home.faks','{\"en\": \"Fax\", \"tr\": \"Faks\"}',NULL,'2022-10-27 03:04:52','2022-10-27 05:25:01',NULL),(225,'*','public','home.aloagu','{\"en\": \"Alo AGU\", \"tr\": \"Alo AGÜ\"}',NULL,'2022-10-27 03:04:52','2022-10-27 05:25:24',NULL),(226,'*','public','home.epostagirin','{\"en\": \"Enter your e-mail address to follow our university closely\", \"tr\": \"Üniversitemizi yakından takip etmek için e-posta adresinizi girin\"}',NULL,'2022-10-27 03:04:52','2022-10-27 05:42:44',NULL),(227,'*','public','home.kayitol','{\"en\": \"Register\", \"tr\": \"Kayıt Ol\"}',NULL,'2022-10-27 03:04:52','2022-10-27 05:26:30',NULL),(228,'*','public','home.bilgiedinmekanunu','{\"en\": \"Information Law\", \"tr\": \"Bilgi Edinme Kanunu\"}',NULL,'2022-10-27 03:04:52','2022-10-27 05:42:18',NULL);
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
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
-- Table structure for table `wysiwyg_media`
--

DROP TABLE IF EXISTS `wysiwyg_media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wysiwyg_media` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `file_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `wysiwygable_id` int unsigned DEFAULT NULL,
  `wysiwygable_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `wysiwyg_media_wysiwygable_id_index` (`wysiwygable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wysiwyg_media`
--

LOCK TABLES `wysiwyg_media` WRITE;
/*!40000 ALTER TABLE `wysiwyg_media` DISABLE KEYS */;
INSERT INTO `wysiwyg_media` VALUES (1,'uploads/16665507037O60JXLJW078DpovhigcXCNkgzu3Rq5uNbznZB1o.jpg',NULL,NULL,'2022-10-23 15:45:03','2022-10-23 15:45:03'),(2,'uploads/1666550782f5Yd5a1Dm21NMSONUdxAjFBB4HYMkYGM9ImG146s.jpg',NULL,NULL,'2022-10-23 15:46:22','2022-10-23 15:46:22'),(3,'uploads/1666868052Screen Shot 2022-10-26 at 16.11.01.png',NULL,NULL,'2022-10-27 07:54:13','2022-10-27 07:54:13'),(4,'uploads/1666868082Screen Shot 2022-10-26 at 16.11.01.png',NULL,NULL,'2022-10-27 07:54:42','2022-10-27 07:54:42'),(5,'uploads/1666868193profile2.png',NULL,NULL,'2022-10-27 07:56:33','2022-10-27 07:56:33'),(6,'uploads/1666868220profile2.png',NULL,NULL,'2022-10-27 07:57:00','2022-10-27 07:57:00'),(7,'uploads/1666868384profile1.png',NULL,NULL,'2022-10-27 07:59:44','2022-10-27 07:59:44'),(8,'uploads/1666868396profile3.png',NULL,NULL,'2022-10-27 07:59:56','2022-10-27 07:59:56'),(9,'uploads/1666868439etkinlik-arka.jpg',NULL,NULL,'2022-10-27 08:00:39','2022-10-27 08:00:39'),(10,'uploads/1666868581profile1.png',NULL,NULL,'2022-10-27 08:03:01','2022-10-27 08:03:01'),(11,'uploads/1666868591profile3.png',NULL,NULL,'2022-10-27 08:03:11','2022-10-27 08:03:11'),(12,'uploads/1666868602etkinlik-arka.jpg',NULL,NULL,'2022-10-27 08:03:23','2022-10-27 08:03:23'),(13,'uploads/1666873976Screen Shot 2022-10-26 at 16.11.37.png',NULL,NULL,'2022-10-27 09:32:56','2022-10-27 09:32:56'),(14,'uploads/1666874053Screen Shot 2022-10-26 at 16.11.37.png',NULL,NULL,'2022-10-27 09:34:13','2022-10-27 09:34:13'),(15,'uploads/1666874136profile2.png',NULL,NULL,'2022-10-27 09:35:36','2022-10-27 09:35:36'),(16,'uploads/1666874164profile3.png',NULL,NULL,'2022-10-27 09:36:05','2022-10-27 09:36:05'),(17,'uploads/1666874272profile2.png',NULL,NULL,'2022-10-27 09:37:52','2022-10-27 09:37:52'),(18,'uploads/1666874284profile3.png',NULL,NULL,'2022-10-27 09:38:05','2022-10-27 09:38:05');
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

-- Dump completed on 2023-06-13 19:00:46
