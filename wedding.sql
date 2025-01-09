-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: wedding
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `abouthomes`
--

DROP TABLE IF EXISTS `abouthomes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abouthomes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `button` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `abouthomes`
--

LOCK TABLES `abouthomes` WRITE;
/*!40000 ALTER TABLE `abouthomes` DISABLE KEYS */;
/*!40000 ALTER TABLE `abouthomes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alamats`
--

DROP TABLE IF EXISTS `alamats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alamats` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telepon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jam` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `maps` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alamats`
--

LOCK TABLES `alamats` WRITE;
/*!40000 ALTER TABLE `alamats` DISABLE KEYS */;
/*!40000 ALTER TABLE `alamats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `artikels`
--

DROP TABLE IF EXISTS `artikels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `artikels` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_deskripsi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keyword` text COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `artikels_user_id_foreign` (`user_id`),
  CONSTRAINT `artikels_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artikels`
--

LOCK TABLES `artikels` WRITE;
/*!40000 ALTER TABLE `artikels` DISABLE KEYS */;
INSERT INTO `artikels` VALUES (1,'Nesciunt ullam rerum labore ex impedit.','Qui dolor officia veritatis adipisci sit eos illo. Dolorum asperiores aut accusantium aut ipsa. Nihil et quibusdam illum optio rerum.','images/artikel/KkmOWDlb5BLHQ6VTgf8ttlkbk6qyU0WMXNGvIWWQ.jpg','et-ut-nemo-ut-ducimus-cumque-quia','Aut est maxime sint et.','Vel corporis nostrum libero voluptatum qui.',1,'2025-01-09 02:50:41','2025-01-09 02:50:41'),(2,'Sed cumque et eum consequatur numquam accusantium enim dolorum.','Est ut et voluptatibus cum doloribus ut nobis. Ex consequatur omnis ut voluptas. Quis ab qui ea dolores. Ullam molestias eius eos consequatur odit quo error et.','images/artikel/KkmOWDlb5BLHQ6VTgf8ttlkbk6qyU0WMXNGvIWWQ.jpg','voluptatem-dignissimos-et-eligendi-quidem','Assumenda ut et quisquam dignissimos non repellendus blanditiis ullam.','Aut ipsa ea ut quo assumenda sit dicta.',1,'2025-01-09 02:50:41','2025-01-09 02:50:41'),(3,'Voluptas quae porro ullam alias qui ut.','Qui neque placeat facilis perspiciatis consequatur architecto quis. Consequuntur distinctio odio dolorum accusantium eum ex. Velit eaque reprehenderit porro ad voluptatum consectetur. Eum voluptatum voluptate et est incidunt.','images/artikel/KkmOWDlb5BLHQ6VTgf8ttlkbk6qyU0WMXNGvIWWQ.jpg','quia-veritatis-sed-velit-dolorem','Exercitationem tempora impedit perspiciatis saepe officia repudiandae itaque et.','Error saepe fugit eos qui non illo nostrum.',1,'2025-01-09 02:50:41','2025-01-09 02:50:41'),(4,'Aliquam enim et alias ut dolore.','Corrupti iusto non tempora magni quo. Nisi qui harum accusantium ipsam tempore qui. Est et eum officiis autem autem omnis.','images/artikel/KkmOWDlb5BLHQ6VTgf8ttlkbk6qyU0WMXNGvIWWQ.jpg','nemo-nihil-non-qui-reiciendis','Officia ut a itaque esse molestiae.','Rerum sequi error non veritatis quia aliquid.',1,'2025-01-09 02:50:41','2025-01-09 02:50:41'),(5,'Voluptatem deleniti quam voluptas minus corporis.','Dolores vitae impedit dignissimos quis. Quia debitis possimus beatae sed.','images/artikel/KkmOWDlb5BLHQ6VTgf8ttlkbk6qyU0WMXNGvIWWQ.jpg','eveniet-aperiam-iste-autem-ratione-repellendus-fuga-consequuntur','Corporis placeat laborum aliquam facilis accusamus a et.','Sit sed non qui voluptatem minus.',1,'2025-01-09 02:50:41','2025-01-09 02:50:41'),(6,'Quo sunt nostrum et est.','Est odio sint quod ut. Consequuntur reiciendis amet sit vero atque architecto eum possimus. Non corrupti quia soluta. Saepe eius sapiente voluptate amet optio possimus.','images/artikel/KkmOWDlb5BLHQ6VTgf8ttlkbk6qyU0WMXNGvIWWQ.jpg','harum-corrupti-placeat-corporis','Reiciendis velit culpa reprehenderit doloribus et et.','Nam et totam consectetur asperiores.',1,'2025-01-09 02:50:41','2025-01-09 02:50:41'),(7,'Eligendi eveniet velit dolores excepturi assumenda.','Itaque et atque molestiae. Voluptatibus repudiandae sequi qui. Id laboriosam est in repellat voluptates alias voluptatem.','images/artikel/KkmOWDlb5BLHQ6VTgf8ttlkbk6qyU0WMXNGvIWWQ.jpg','fuga-quia-libero-odio-laboriosam-ex-iusto-ipsum-quasi','Fuga eius culpa officia tenetur aspernatur labore.','Nihil laboriosam quis quae ab dolorem neque rerum laudantium.',1,'2025-01-09 02:50:41','2025-01-09 02:50:41'),(8,'Voluptas aspernatur delectus perspiciatis perspiciatis.','Architecto et odio quo id. Ut tenetur sequi eligendi quas in perspiciatis velit. Est cumque omnis ut vel enim.','images/artikel/KkmOWDlb5BLHQ6VTgf8ttlkbk6qyU0WMXNGvIWWQ.jpg','ab-sunt-eaque-placeat-placeat-est','Minus harum recusandae eius ipsa.','Aspernatur debitis maiores eum commodi optio.',1,'2025-01-09 02:50:41','2025-01-09 02:50:41'),(9,'Ipsa officiis explicabo praesentium dolores aspernatur non vero consequatur.','Et vel ut reprehenderit quae aut. Consectetur vel consequuntur praesentium nam. Magni ipsa sed aut quia magni. Sit itaque quo recusandae quo odio quasi dolorem dicta.','images/artikel/KkmOWDlb5BLHQ6VTgf8ttlkbk6qyU0WMXNGvIWWQ.jpg','vero-laudantium-ut-reiciendis','Nesciunt consequuntur perferendis accusantium et fugiat.','Reiciendis quia illo blanditiis ut unde.',1,'2025-01-09 02:50:41','2025-01-09 02:50:41'),(10,'Neque atque neque minima doloribus.','Accusantium modi ratione voluptatem quis molestiae est in. A maiores ipsam quis ut maiores aut et. Veritatis et temporibus aperiam qui officiis nostrum deserunt. Ducimus dolores quia omnis eum aut ut.','images/artikel/KkmOWDlb5BLHQ6VTgf8ttlkbk6qyU0WMXNGvIWWQ.jpg','provident-qui-voluptas-dignissimos-esse-voluptatem-quisquam','Culpa repellendus deserunt sed architecto.','Placeat sit non omnis et.',1,'2025-01-09 02:50:41','2025-01-09 02:50:41'),(11,'Unde sequi est est veniam optio ut illo.','Explicabo veritatis repellendus nam nostrum. Molestiae est occaecati et qui. Iste culpa iure dignissimos dignissimos aut. Dignissimos ab ab natus earum vel consequatur.','images/artikel/KkmOWDlb5BLHQ6VTgf8ttlkbk6qyU0WMXNGvIWWQ.jpg','in-labore-autem-aut-error-repellendus','Harum ut voluptas quisquam nisi consequatur.','Quibusdam quam laudantium velit ipsam placeat deleniti.',1,'2025-01-09 02:50:41','2025-01-09 02:50:41'),(12,'Voluptatem labore modi delectus ut velit.','Sit laboriosam aut reiciendis ut ea esse. Velit officiis incidunt consequatur voluptatem ut eum. Aut consectetur doloribus omnis qui sit autem aut.','images/artikel/KkmOWDlb5BLHQ6VTgf8ttlkbk6qyU0WMXNGvIWWQ.jpg','et-inventore-facere-ut','Illo repellendus maxime voluptas quo vel.','Omnis et dolor exercitationem natus aut architecto nostrum sunt.',1,'2025-01-09 02:50:41','2025-01-09 02:50:41'),(13,'Ullam quo dolorem animi.','Suscipit libero sed est mollitia alias. Culpa molestiae qui aliquam tenetur error et.','images/artikel/KkmOWDlb5BLHQ6VTgf8ttlkbk6qyU0WMXNGvIWWQ.jpg','tenetur-id-autem-quia-illum-maxime-debitis','Sit nihil eaque provident alias at non.','Nihil ratione distinctio et qui ut in et.',1,'2025-01-09 02:50:41','2025-01-09 02:50:41'),(14,'Est odio ipsum numquam sed at.','Voluptas et et nisi nesciunt. Voluptas sit et veritatis ad et est. Sunt saepe sed ut error quia dolore laboriosam. Ullam consequuntur nihil ut voluptatem deleniti.','images/artikel/KkmOWDlb5BLHQ6VTgf8ttlkbk6qyU0WMXNGvIWWQ.jpg','magni-nostrum-voluptatem-aut-sapiente-inventore','Sunt quis qui praesentium qui.','Sunt culpa quia optio amet molestiae ut.',1,'2025-01-09 02:50:41','2025-01-09 02:50:41'),(15,'Nesciunt impedit recusandae quod qui.','Qui quia rerum reiciendis deserunt porro quibusdam. Ullam aspernatur quaerat natus autem quo qui harum. Est et odit a nihil. Animi molestias ut officia earum cum animi eveniet explicabo. Cupiditate voluptatem autem incidunt asperiores accusamus.','images/artikel/KkmOWDlb5BLHQ6VTgf8ttlkbk6qyU0WMXNGvIWWQ.jpg','voluptas-magnam-ad-numquam-vitae-pariatur-quod','Quasi quidem aspernatur veniam quam excepturi aut.','Quis voluptatem perferendis minima excepturi quae similique.',1,'2025-01-09 02:50:41','2025-01-09 02:50:41'),(16,'Nihil autem sit consequuntur exercitationem et est tempora.','Nemo fugit excepturi dolor distinctio consequuntur soluta architecto ab. Et fuga sed ut temporibus modi. Atque quia iusto et provident nihil porro deserunt sunt.','images/artikel/KkmOWDlb5BLHQ6VTgf8ttlkbk6qyU0WMXNGvIWWQ.jpg','tenetur-et-rem-accusantium-et-et-tempora-eveniet','Quia eum modi dolores dolore facilis exercitationem.','Ut sint et rerum corporis provident.',1,'2025-01-09 02:50:41','2025-01-09 02:50:41'),(17,'Ea eos eius necessitatibus eos odit consectetur maxime nam.','Numquam molestias quas sed aperiam numquam dicta aliquid veritatis. Cupiditate voluptatem consequuntur libero totam placeat voluptatem. Quos ullam aspernatur quasi delectus. Ullam et quibusdam eum qui nam.','images/artikel/KkmOWDlb5BLHQ6VTgf8ttlkbk6qyU0WMXNGvIWWQ.jpg','sed-animi-quibusdam-facere-ipsa-facilis-ea-dolor','Et in ut laudantium assumenda.','Reiciendis quas cupiditate ut voluptatem.',1,'2025-01-09 02:50:41','2025-01-09 02:50:41'),(18,'Quo sit temporibus incidunt pariatur.','Possimus enim veniam adipisci ex. Sit beatae dolorem quibusdam sed et. Dolor veritatis ut optio. Voluptas necessitatibus recusandae enim tempore.','images/artikel/KkmOWDlb5BLHQ6VTgf8ttlkbk6qyU0WMXNGvIWWQ.jpg','vel-sint-ea-aspernatur-fugit-repellat-occaecati-voluptatum','Porro alias sunt tempore exercitationem quod iusto.','Deserunt nemo culpa non vitae.',1,'2025-01-09 02:50:41','2025-01-09 02:50:41'),(19,'Exercitationem recusandae laudantium eos itaque consequuntur consequatur qui ut.','Nesciunt ipsam molestiae quae qui iure in. Atque doloribus ut aut deleniti. Quae veniam nulla enim nisi qui illum.','images/artikel/KkmOWDlb5BLHQ6VTgf8ttlkbk6qyU0WMXNGvIWWQ.jpg','a-enim-eligendi-rerum-veniam','Quia nostrum porro rem et pariatur dolor ex.','Eos porro voluptates quaerat voluptate earum.',1,'2025-01-09 02:50:41','2025-01-09 02:50:41'),(20,'Ipsum aliquid dolorem dolor nihil aut accusantium.','Quas nulla enim laudantium consectetur et natus commodi. Sint aliquam et laboriosam doloremque error consequatur. Nulla et assumenda quis.','images/artikel/KkmOWDlb5BLHQ6VTgf8ttlkbk6qyU0WMXNGvIWWQ.jpg','nobis-fugiat-voluptatem-fuga-aliquid-expedita-expedita','Recusandae beatae amet quia harum fuga similique.','Ut quia reiciendis consequatur.',1,'2025-01-09 02:50:41','2025-01-09 02:50:41'),(21,'Et nulla et velit dolore excepturi.','Quae in quasi velit aliquam. Sed accusantium pariatur quidem esse dolores vero iure ipsam. Voluptatem ratione qui voluptas.','images/artikel/KkmOWDlb5BLHQ6VTgf8ttlkbk6qyU0WMXNGvIWWQ.jpg','quaerat-mollitia-illo-aut-deleniti','Corrupti dicta et tenetur perferendis.','Iste qui aut libero eos.',1,'2025-01-09 02:50:41','2025-01-09 02:50:41'),(22,'Nesciunt architecto officia minima quos officiis consequatur ratione.','Id et est excepturi. Qui et modi nulla. Rerum modi omnis nulla quo facere. Autem totam voluptatibus nam ut possimus tenetur sed quae.','images/artikel/KkmOWDlb5BLHQ6VTgf8ttlkbk6qyU0WMXNGvIWWQ.jpg','repellendus-numquam-aut-a-cupiditate-velit-sapiente-incidunt-voluptatem','Est in iste voluptas aut.','Eligendi rerum ipsam tenetur voluptas omnis.',1,'2025-01-09 02:50:41','2025-01-09 02:50:41'),(23,'Omnis fugit totam non.','Quia et debitis iusto esse. Fugiat est explicabo modi reprehenderit eveniet facilis officiis. Iste non hic eius voluptas unde ut.','images/artikel/KkmOWDlb5BLHQ6VTgf8ttlkbk6qyU0WMXNGvIWWQ.jpg','et-quia-qui-incidunt-est','Voluptatem itaque ex est.','Minima nobis dolorum eaque quo a maiores.',1,'2025-01-09 02:50:41','2025-01-09 02:50:41'),(24,'Totam iusto non sit dignissimos aut aut voluptas et.','Corrupti consequatur sed cum alias ut. Quo ut voluptates eos officia qui amet. Quod aperiam quasi officia voluptate dolorem et.','images/artikel/KkmOWDlb5BLHQ6VTgf8ttlkbk6qyU0WMXNGvIWWQ.jpg','non-placeat-neque-eligendi-quisquam-iusto-architecto-animi','Qui quibusdam quisquam rerum.','Aut non eius voluptas assumenda rerum.',1,'2025-01-09 02:50:41','2025-01-09 02:50:41'),(25,'Qui et nisi a aut.','Nemo corrupti est maxime aut. Itaque quo quo quia dolore laboriosam ea. Recusandae ipsa consectetur ut et deserunt.','images/artikel/KkmOWDlb5BLHQ6VTgf8ttlkbk6qyU0WMXNGvIWWQ.jpg','aliquid-rerum-sit-natus','Dolores voluptatem quia et nihil cum rem blanditiis voluptatem.','Quam adipisci est illo fuga sunt sit consequatur.',1,'2025-01-09 02:50:41','2025-01-09 02:50:41'),(26,'Quod exercitationem ea qui sunt doloremque quas et.','Asperiores saepe fuga quisquam ut quasi adipisci vero ullam. Nobis perspiciatis facere corrupti asperiores placeat officia rerum. Error dignissimos est cum a voluptas.','images/artikel/KkmOWDlb5BLHQ6VTgf8ttlkbk6qyU0WMXNGvIWWQ.jpg','totam-unde-rem-pariatur-perferendis-nobis-sit-vitae','Enim est sed hic cumque harum.','Doloremque veritatis architecto quo itaque.',1,'2025-01-09 02:50:41','2025-01-09 02:50:41'),(27,'Dolore quae minus consequuntur perferendis unde.','Sit consequatur aliquid voluptates debitis dolores natus in ea. Veniam in quia qui sequi velit. Consequatur magnam voluptatem sit qui aliquam deleniti. Earum ut et vel harum voluptatem.','images/artikel/KkmOWDlb5BLHQ6VTgf8ttlkbk6qyU0WMXNGvIWWQ.jpg','et-quasi-quasi-illum','Expedita sed non et sed incidunt est placeat et.','Ducimus quia consequatur illo quas dolores ipsum.',1,'2025-01-09 02:50:41','2025-01-09 02:50:41'),(28,'Saepe est dignissimos dolorum necessitatibus numquam ea.','Dolores aut quibusdam eos aut non consequatur laudantium. Omnis corrupti aliquid rerum aperiam reprehenderit. Dicta ducimus architecto animi. Magnam ab rerum sunt consequatur.','images/artikel/KkmOWDlb5BLHQ6VTgf8ttlkbk6qyU0WMXNGvIWWQ.jpg','quia-sed-rerum-veritatis-molestiae-et-fugiat','Voluptatem incidunt ut autem sequi.','Voluptas provident numquam aut quia quam ipsa velit.',1,'2025-01-09 02:50:41','2025-01-09 02:50:41'),(29,'Laborum numquam quos et.','Ex at aut aspernatur sit nulla neque sit. Consequatur quibusdam inventore earum quod error voluptas dolorum. Aperiam quisquam ut velit rem. Recusandae et accusamus dolorum sunt illum vero.','images/artikel/KkmOWDlb5BLHQ6VTgf8ttlkbk6qyU0WMXNGvIWWQ.jpg','exercitationem-rerum-ratione-aut-ut','Reprehenderit quaerat veritatis error aut consequatur fugit mollitia.','Tempora excepturi dicta atque laboriosam architecto.',1,'2025-01-09 02:50:41','2025-01-09 02:50:41'),(30,'Aut rem tempore eligendi ut.','Accusantium atque nemo aut labore. Sunt officia rerum autem inventore provident tempore. Delectus veniam dolor dolor aut nam nemo eligendi.','images/artikel/KkmOWDlb5BLHQ6VTgf8ttlkbk6qyU0WMXNGvIWWQ.jpg','repudiandae-delectus-at-dolores-fugit','Iure voluptate iusto vel aliquam ex ut inventore.','Minima ab aut dolorum et dolor vitae.',1,'2025-01-09 02:50:41','2025-01-09 02:50:41');
/*!40000 ALTER TABLE `artikels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banners`
--

DROP TABLE IF EXISTS `banners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `banners` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `buton` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banners`
--

LOCK TABLES `banners` WRITE;
/*!40000 ALTER TABLE `banners` DISABLE KEYS */;
INSERT INTO `banners` VALUES (1,'Test','Lorem Ipsum','images/banner/Zgga2zqnBqAoAN3mt8GcAO0OpwGnBPvmIcgo4Yyn.jpg','Cek','2025-01-09 02:52:03','2025-01-09 02:52:03');
/*!40000 ALTER TABLE `banners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_locks`
--

LOCK TABLES `cache_locks` WRITE;
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (1,'dayan sauqy','iamdayy14@gmail.com','085326940952','Hellow','2025-01-09 02:51:31','2025-01-09 02:51:31');
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
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
-- Table structure for table `job_batches`
--

DROP TABLE IF EXISTS `job_batches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_batches`
--

LOCK TABLES `job_batches` WRITE;
/*!40000 ALTER TABLE `job_batches` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_batches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kategorihomes`
--

DROP TABLE IF EXISTS `kategorihomes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kategorihomes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kategorihomes`
--

LOCK TABLES `kategorihomes` WRITE;
/*!40000 ALTER TABLE `kategorihomes` DISABLE KEYS */;
/*!40000 ALTER TABLE `kategorihomes` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'0001_01_01_000000_create_users_table',1),(2,'0001_01_01_000001_create_cache_table',1),(3,'0001_01_01_000002_create_jobs_table',1),(4,'2024_06_26_142823_create_artikels_table',1),(5,'2024_07_01_134035_create_banners_table',1),(6,'2024_07_02_134048_create_kategorihomes_table',1),(7,'2024_07_02_143318_create_abouthomes_table',1),(8,'2024_07_03_134304_create_produks_table',1),(9,'2024_07_07_135121_create_contacts_table',1),(10,'2024_07_16_134302_create_alamats_table',1),(11,'2024_12_31_161141_orders',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `produk_id` bigint unsigned NOT NULL,
  `jumlah` int NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'dayan sauqy','sabik.1atabik@gmail.com','085740790341','jl.kyai samsuri\r\nrumah batik kiki',1,4,'proses','2025-01-09 02:51:19','2025-01-09 02:51:19');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produks`
--

DROP TABLE IF EXISTS `produks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produks` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kategori` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produks`
--

LOCK TABLES `produks` WRITE;
/*!40000 ALTER TABLE `produks` DISABLE KEYS */;
INSERT INTO `produks` VALUES (1,'Quae rerum nam dolor.','Cupiditate omnis voluptas id quibusdam. Ut id dolor fuga nostrum quia. Vero velit et qui ex ipsa nobis aut. Ipsam architecto accusantium beatae aut placeat praesentium dolorem impedit.','images/produk/kSwECr1bcs6AIVvt6YCayqJoq1RK5DLVih6NViGA.jpg','Repellat numquam nihil et nesciunt.',87245,'2025-01-09 02:50:41','2025-01-09 02:50:41'),(2,'Exercitationem consectetur quos odio et ullam vero ex excepturi.','Consectetur incidunt cupiditate numquam quis vel. Rerum consequatur vero sit consequatur. Labore libero natus amet illum autem qui quasi. Rem adipisci ipsa vel rerum.','images/produk/kSwECr1bcs6AIVvt6YCayqJoq1RK5DLVih6NViGA.jpg','Nihil quasi laboriosam est est dicta repudiandae.',13411,'2025-01-09 02:50:41','2025-01-09 02:50:41'),(3,'Dicta aliquid quo inventore consectetur quia eaque.','Autem libero quia dolores recusandae repudiandae dolores. Aut cum qui magni sunt consequuntur distinctio aut. Deleniti consequatur ut doloribus sunt quis.','images/produk/kSwECr1bcs6AIVvt6YCayqJoq1RK5DLVih6NViGA.jpg','Voluptas dolores delectus ut sit ipsa.',55980,'2025-01-09 02:50:41','2025-01-09 02:50:41'),(4,'Et laborum qui labore.','Nesciunt a eveniet quod eligendi voluptas assumenda. Ipsum totam soluta sunt et et voluptatum. Sunt saepe impedit nobis esse alias.','images/produk/kSwECr1bcs6AIVvt6YCayqJoq1RK5DLVih6NViGA.jpg','Optio exercitationem deleniti aut nulla praesentium.',3889,'2025-01-09 02:50:41','2025-01-09 02:50:41'),(5,'Sint saepe aliquam officiis amet sed.','Earum accusamus non magnam quo doloremque perspiciatis et ipsam. Hic repudiandae odio dolore voluptatem fuga. Velit quasi laudantium quia et. Eveniet dolores deleniti rem laudantium recusandae.','images/produk/kSwECr1bcs6AIVvt6YCayqJoq1RK5DLVih6NViGA.jpg','Vel quibusdam quaerat dolorem corporis illo.',59180,'2025-01-09 02:50:41','2025-01-09 02:50:41'),(6,'Excepturi odio laudantium consequatur ab.','Dolore aliquid et repellat accusantium officiis id sapiente. Velit cumque qui mollitia harum provident voluptatum.','images/produk/kSwECr1bcs6AIVvt6YCayqJoq1RK5DLVih6NViGA.jpg','Necessitatibus exercitationem deserunt animi id rerum.',60360,'2025-01-09 02:50:41','2025-01-09 02:50:41'),(7,'Autem et ea recusandae voluptate quisquam laudantium.','Dolores quod unde quos aliquam assumenda est. Cum vitae assumenda inventore corrupti. Omnis saepe ad aliquam alias optio tempore reprehenderit. Odit eos omnis et et tempore suscipit quaerat labore.','images/produk/kSwECr1bcs6AIVvt6YCayqJoq1RK5DLVih6NViGA.jpg','Et illo repudiandae quaerat sed odio odio reiciendis.',68419,'2025-01-09 02:50:41','2025-01-09 02:50:41'),(8,'Aut perferendis fugit non magni.','Debitis aut optio et aut totam voluptatem assumenda accusantium. Assumenda veritatis repudiandae sed harum molestias ut perferendis. Velit sit et quaerat ut. Quisquam quod voluptatem assumenda sed.','images/produk/kSwECr1bcs6AIVvt6YCayqJoq1RK5DLVih6NViGA.jpg','Omnis est ut hic.',66579,'2025-01-09 02:50:41','2025-01-09 02:50:41'),(9,'Nemo molestias rerum quo dolorem.','Ipsa fugit odit aut culpa laboriosam ut rem. Aut et est tempore incidunt. Repellat asperiores dolorem amet facere commodi accusamus.','images/produk/kSwECr1bcs6AIVvt6YCayqJoq1RK5DLVih6NViGA.jpg','Nobis molestiae voluptatum temporibus magnam et.',54214,'2025-01-09 02:50:41','2025-01-09 02:50:41'),(10,'Quia minima rem deserunt explicabo quo.','Voluptatem facere distinctio provident accusamus numquam. Dolore numquam rerum ut est amet voluptatem. Qui aspernatur impedit occaecati iure. Consequatur nulla vero sapiente inventore sit consequatur aliquid. Asperiores non temporibus praesentium qui deserunt et ut.','images/produk/kSwECr1bcs6AIVvt6YCayqJoq1RK5DLVih6NViGA.jpg','Debitis esse dolore in a temporibus.',78056,'2025-01-09 02:50:41','2025-01-09 02:50:41'),(11,'Unde repudiandae facilis ut optio fugiat neque.','Doloremque praesentium laborum corrupti saepe qui tempore. Ipsum modi quia est perferendis ad aut sint. Sunt alias fuga est autem iure quia similique. Cupiditate dolor non quisquam quae error possimus.','images/produk/kSwECr1bcs6AIVvt6YCayqJoq1RK5DLVih6NViGA.jpg','Repellat pariatur quia dolorem quisquam.',54286,'2025-01-09 02:50:41','2025-01-09 02:50:41'),(12,'Quae ducimus enim illum ab magni ex.','Et et quaerat omnis nihil. Sint odio labore fuga doloribus quas. Voluptatum tempore repellendus et illum sunt nobis cumque enim.','images/produk/kSwECr1bcs6AIVvt6YCayqJoq1RK5DLVih6NViGA.jpg','Nostrum totam voluptas architecto illum blanditiis aliquid explicabo.',70499,'2025-01-09 02:50:41','2025-01-09 02:50:41'),(13,'Enim perferendis ipsum libero ea ut quo debitis.','Ipsam incidunt rerum et autem quidem. Ut consequatur aspernatur pariatur asperiores. Facilis quia alias aut fuga. Eius consequuntur ut exercitationem sed saepe amet facere.','images/produk/kSwECr1bcs6AIVvt6YCayqJoq1RK5DLVih6NViGA.jpg','Perspiciatis adipisci qui aut quasi enim assumenda deleniti.',2714,'2025-01-09 02:50:41','2025-01-09 02:50:41'),(14,'Blanditiis consequatur nobis voluptatem est autem provident.','Odio quos aut ut saepe quidem. Eveniet ut et rerum quam rerum. A quia qui laborum ducimus delectus. Dolorum libero facilis est earum aut tempora quidem assumenda.','images/produk/kSwECr1bcs6AIVvt6YCayqJoq1RK5DLVih6NViGA.jpg','Nihil ipsum provident nulla itaque.',50895,'2025-01-09 02:50:41','2025-01-09 02:50:41'),(15,'Est explicabo quam consequuntur laudantium nulla expedita magni.','Aut aspernatur nihil voluptatem sit doloribus maxime. Eos nisi velit quasi sint. Eaque earum nihil qui ea est. Qui ut odit laboriosam ratione voluptas.','images/produk/kSwECr1bcs6AIVvt6YCayqJoq1RK5DLVih6NViGA.jpg','Nihil quis illum vel aut tempore.',39430,'2025-01-09 02:50:41','2025-01-09 02:50:41'),(16,'Aut quasi facere consequuntur est vero.','Nostrum aspernatur autem deserunt ea nihil dolores nihil aliquam. Hic necessitatibus suscipit dolorem hic amet minima dolorem. Odit ut magni beatae est fugiat. Consequatur doloribus quod et voluptate qui libero voluptatem.','images/produk/kSwECr1bcs6AIVvt6YCayqJoq1RK5DLVih6NViGA.jpg','Voluptatum amet nihil mollitia id.',88918,'2025-01-09 02:50:41','2025-01-09 02:50:41'),(17,'Atque at at maiores consequatur assumenda facilis accusamus fugit.','Amet illo provident ea porro. Provident culpa quae expedita aut. Blanditiis at ut architecto consectetur quod et.','images/produk/kSwECr1bcs6AIVvt6YCayqJoq1RK5DLVih6NViGA.jpg','Ea ab laborum nihil accusantium.',78767,'2025-01-09 02:50:41','2025-01-09 02:50:41'),(18,'Aut veritatis repellat mollitia sed magnam debitis tempore.','Iure minus ipsam in quis et porro laboriosam. Molestiae debitis deserunt beatae aut. Dolorum molestiae consectetur exercitationem eligendi earum. Exercitationem nam quos odio assumenda id.','images/produk/kSwECr1bcs6AIVvt6YCayqJoq1RK5DLVih6NViGA.jpg','Delectus repellendus est doloremque numquam.',10287,'2025-01-09 02:50:41','2025-01-09 02:50:41'),(19,'Id qui quaerat vel omnis et ipsam aliquam.','Tempore dolores eligendi omnis laudantium. Mollitia ducimus eligendi error. Voluptates et illo tenetur enim dolores quasi aut.','images/produk/kSwECr1bcs6AIVvt6YCayqJoq1RK5DLVih6NViGA.jpg','Aut quod rerum aliquid voluptatem consequatur sit pariatur.',93567,'2025-01-09 02:50:41','2025-01-09 02:50:41'),(20,'Culpa provident non iste adipisci sit veniam eos.','Laborum sit doloremque in laboriosam unde est. In architecto non laboriosam alias porro veritatis. Est placeat earum est sequi. Deserunt fugiat porro id adipisci. Ratione non incidunt eligendi sint.','images/produk/kSwECr1bcs6AIVvt6YCayqJoq1RK5DLVih6NViGA.jpg','Id voluptate sed modi eveniet commodi veniam voluptas debitis.',71738,'2025-01-09 02:50:41','2025-01-09 02:50:41'),(21,'Sunt maiores sint qui voluptate.','Iste ut ea vero vitae libero magni officiis expedita. Numquam nostrum quam atque. Voluptatibus possimus quia laboriosam velit veniam sequi magni. Omnis est rerum a id vitae expedita voluptatem.','images/produk/kSwECr1bcs6AIVvt6YCayqJoq1RK5DLVih6NViGA.jpg','Autem impedit natus est molestiae ut reprehenderit.',85808,'2025-01-09 02:50:41','2025-01-09 02:50:41'),(22,'Animi laborum est temporibus vitae rerum et.','Tempora atque similique minus eos consectetur expedita. Doloremque atque dolore voluptatibus consequuntur ea architecto ducimus. Harum necessitatibus dolorum quibusdam praesentium animi minus deserunt. Itaque amet molestiae quos cupiditate.','images/produk/kSwECr1bcs6AIVvt6YCayqJoq1RK5DLVih6NViGA.jpg','Nam est hic non omnis saepe eaque.',4601,'2025-01-09 02:50:41','2025-01-09 02:50:41'),(23,'Nihil modi ut fugiat.','Qui voluptas deleniti accusantium. Rerum incidunt illo aut asperiores. Accusamus consequatur nobis illum nemo quasi. Repellendus cum sit quia id ut.','images/produk/kSwECr1bcs6AIVvt6YCayqJoq1RK5DLVih6NViGA.jpg','Voluptate molestiae sequi accusamus consectetur ad aliquid recusandae.',85044,'2025-01-09 02:50:41','2025-01-09 02:50:41'),(24,'Et atque qui aut et consequatur.','Consequuntur ex ut ut dicta incidunt provident magnam. Quo ut ut et atque alias saepe eum. Est molestias quam ab voluptas accusamus qui odit id. Officiis sunt quia eveniet deserunt quia eligendi. Veniam voluptas rerum quibusdam ut ut.','images/produk/kSwECr1bcs6AIVvt6YCayqJoq1RK5DLVih6NViGA.jpg','Qui ad esse nobis quod illo.',81821,'2025-01-09 02:50:41','2025-01-09 02:50:41'),(25,'Rerum facere consectetur eos praesentium sed ipsum eligendi vero.','Ex rem repellat ut ut. Quisquam eaque voluptatem est aut eum. Neque fugit soluta saepe dolorem aut eveniet. Rem reprehenderit temporibus velit. Sed quibusdam exercitationem quos aut sit.','images/produk/kSwECr1bcs6AIVvt6YCayqJoq1RK5DLVih6NViGA.jpg','Incidunt vero sed animi ut quia at distinctio illo.',47588,'2025-01-09 02:50:41','2025-01-09 02:50:41'),(26,'Ipsa mollitia quia maxime tempore tempora.','Quam id culpa voluptatem nemo voluptates molestiae. Tenetur consectetur inventore aut qui rerum illum eos voluptatem. Repudiandae similique dolor vitae facere velit. Eos aut architecto magni repellendus fuga nostrum.','images/produk/kSwECr1bcs6AIVvt6YCayqJoq1RK5DLVih6NViGA.jpg','Nihil quia sequi quas laboriosam ut alias.',85465,'2025-01-09 02:50:41','2025-01-09 02:50:41'),(27,'Ipsum aut illum est similique quas soluta voluptates.','Qui veniam et error et expedita. Nisi quos quod atque vel praesentium dolorem est nihil. Doloremque consequatur soluta labore suscipit est et suscipit.','images/produk/kSwECr1bcs6AIVvt6YCayqJoq1RK5DLVih6NViGA.jpg','Qui possimus provident rerum atque minima aspernatur nobis.',9428,'2025-01-09 02:50:41','2025-01-09 02:50:41'),(28,'Est dolores dicta reprehenderit iusto adipisci fugiat.','Reiciendis sapiente voluptatem quam unde sint est aut cupiditate. Ipsa voluptatem fugit officia.','images/produk/kSwECr1bcs6AIVvt6YCayqJoq1RK5DLVih6NViGA.jpg','Dicta rem sit tenetur at consectetur.',81030,'2025-01-09 02:50:41','2025-01-09 02:50:41'),(29,'Adipisci eveniet tenetur voluptas est.','Adipisci porro aut velit ipsum vero aut. Itaque fugit facere nulla ea consequatur. Ipsum vel nostrum et quibusdam.','images/produk/kSwECr1bcs6AIVvt6YCayqJoq1RK5DLVih6NViGA.jpg','Accusantium exercitationem id quia hic.',65340,'2025-01-09 02:50:41','2025-01-09 02:50:41'),(30,'Molestias ratione non magnam assumenda.','Tempora quaerat ipsum corrupti. Tenetur rerum aperiam nisi id voluptate praesentium doloribus. Enim nam soluta voluptas quidem. Voluptate dicta voluptates aut excepturi quos.','images/produk/kSwECr1bcs6AIVvt6YCayqJoq1RK5DLVih6NViGA.jpg','Ipsum voluptas qui et et.',48927,'2025-01-09 02:50:41','2025-01-09 02:50:41');
/*!40000 ALTER TABLE `produks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES ('leSpkUgOTgKqDSeDi2NfCwE5QossN2zou9i2HRnS',1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0','YTo1OntzOjY6Il90b2tlbiI7czo0MDoiZGhicTRoVmJyc0c3dVJpYUhsd1c5cHU4Tk9hRlN5RkFMaW9zVVNUTCI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjI5OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvcHJvZmlsZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==',1736416350);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
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
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `des` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fb` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `x` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ig` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Test User','test@example.com','2025-01-09 02:50:41','$2y$12$ozG4tBVtxizIjWBH4tJpXejovZESJ.mmZymIMql0q/uju5k9nZn4i','avatars/GLnQCqpF3G6Q1iCuGWeUfXKeLkWYC5RDpHCIOjiY.jpg',NULL,NULL,NULL,NULL,NULL,'sU9NRNwJNP','2025-01-09 02:50:41','2025-01-09 02:52:30');
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

-- Dump completed on 2025-01-09 16:54:01
