-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         8.0.36 - MySQL Community Server - GPL
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.6.0.6765
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para global
CREATE DATABASE IF NOT EXISTS `global` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `global`;

-- Volcando estructura para tabla global.employees
CREATE TABLE IF NOT EXISTS `employees` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fistLastname` varchar(20) DEFAULT NULL,
  `secondLastname` varchar(20) DEFAULT NULL,
  `fistName` varchar(20) DEFAULT NULL,
  `anotherNames` varchar(50) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `typeId` varchar(50) DEFAULT NULL,
  `idNumber` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `email` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `dateIncome` timestamp NULL DEFAULT NULL,
  `area` varchar(255) DEFAULT NULL,
  `status` varchar(5) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla global.employees: ~21 rows (aproximadamente)
INSERT INTO `employees` (`id`, `fistLastname`, `secondLastname`, `fistName`, `anotherNames`, `country`, `typeId`, `idNumber`, `email`, `dateIncome`, `area`, `status`, `created_at`, `updated_at`) VALUES
	(1, 'TORRES', 'ABARCA', 'ANDERSON', 'VICTOR', 'Colombia', 'DNI', '73760086', 'anderson.torres@global.com.co', '2024-05-12 05:00:00', 'Financiera', 'true', '2024-05-13 12:06:12', '2024-05-14 09:57:15'),
	(2, 'MAMANI', 'MAMANI', 'KEVIN', 'VICTOR', 'Colombia', 'DNI', '73760087', 'kevin.mamani@global.com.co', '2024-05-12 05:00:00', 'Desarollador', 'true', '2024-05-13 18:59:24', '2024-05-14 09:36:58'),
	(3, 'TORRES', 'PARILLA', 'RONY', 'ELAR', 'Colombia', 'DNI', '73760080', 'rony.torres@global.com.us', '2024-05-13 18:00:00', 'Compras', 'true', '2024-05-13 19:37:47', '2024-05-14 09:43:44'),
	(4, 'YUCRA', 'COILA', 'LUIS', 'ALBERTO', 'Colombia', 'DNI', '73760071', 'luis.yucra@global.com.us', '2024-05-14 04:42:41', 'Infraestructura', 'true', '2024-05-13 19:41:02', '2024-05-14 09:39:09'),
	(5, 'MAMANI', 'ABARCA', 'YOBANA', NULL, 'Estados Unidos', 'DNI', '73760001', 'yobana.mamani@global.com.us', '2024-05-13 18:00:00', 'Infraestructura', 'true', '2024-05-13 19:42:15', '2024-05-14 10:05:55'),
	(6, 'YASMANI', 'TOLEDO', 'GUSTABO', 'ANUEL', 'Estados unidos', 'DNI', '73760002', 'gustabo.yasmani@global.com.us', '2024-05-13 18:00:00', 'Talento Humano', 'true', '2024-05-13 19:43:29', '2024-05-14 09:47:10'),
	(7, 'MAMANI', 'MENDOZA', 'YOBANA', 'IVON', 'Estados Unidos', 'DNI', '73760002', 'yobana.mamani@global.com.co', '2024-05-13 18:00:00', 'Talento Humano', 'false', '2024-05-13 19:44:10', '2024-05-14 10:06:13'),
	(8, 'FIGUEROA', 'MENDOZA', 'YHON', 'OMAR', 'Colombia', 'DNI', '73760086', 'yhon.figueroa@global.com.co', '2024-05-13 07:00:00', 'Financiera', 'false', '2024-05-13 19:45:29', '2024-05-14 10:00:44'),
	(9, 'FIGUEROA', 'QUISPE', 'YHON', 'OMAR', 'Colombia', 'DNI', '73760086', 'yhon.figueroa.1@global.com.co', '2024-05-13 07:00:00', 'Financiera', 'true', '2024-05-13 19:46:17', '2024-05-14 10:01:27'),
	(13, 'FIGUEROA', 'CHAY', 'YHON', 'ANDRES', 'Colombia', 'DNI', '73760005', 'yhon.figueroa.2@global.com.co', '2024-05-13 18:00:00', 'Administración', 'true', '2024-05-14 01:06:10', '2024-05-14 10:11:57'),
	(30, 'GONZALES', 'PACHAS', 'LUIS', 'MIGUEL', 'Colombia', 'DNI', '73760005', 'luis.gonzales@global.com.co', '2024-05-13 18:00:00', 'Administración', 'true', '2024-05-14 04:48:16', '2024-05-14 10:12:59'),
	(31, 'Gonzales', 'Pachas', 'Abel', 'brayan', 'Colombia', 'DNI', '73760005', 'abel.gonzales.1@global.com.co', '2024-05-13 18:00:00', 'Administración', 'true', '2024-05-14 04:48:18', '2024-05-14 04:48:18'),
	(32, 'Gonzales', 'Pachas', 'Abel', 'brayan', 'Colombia', 'DNI', '73760005', 'abel.gonzales.2@global.com.co', '2024-05-13 18:00:00', 'Administración', 'true', '2024-05-14 04:48:27', '2024-05-14 04:48:27'),
	(33, 'Gonzales', 'Pachas', 'Abel', 'brayan', 'Colombia', 'DNI', '73760005', 'abel.gonzales.3@global.com.co', '2024-05-13 18:00:00', 'Administración', 'true', '2024-05-14 04:48:28', '2024-05-14 04:48:28'),
	(39, 'GONZALES', 'SANTAMARIA', 'ABEL', 'LUJAN', 'Colombia', 'Cédula de Extranjería', 'ASDASD', 'abel.gonzales@global.com.co', '2024-05-07 05:00:00', 'Administración', 'true', '2024-05-14 06:46:54', '2024-05-14 10:13:45'),
	(41, 'GONZALES', 'ABARCA', 'ABEL', 'VICTOR', 'Colombia', 'DNI', '73760086', 'abel.gonzales.4@global.com.co', '2024-05-14 04:42:44', 'Financiera', 'true', '2024-05-14 09:13:20', '2024-05-14 10:14:53'),
	(42, 'Gutierrez', 'Abarca', 'Anderson', 'victor', 'Colombia', 'DNI', '73760086', 'anderson.gutierrez.2@global.com.co', '2024-05-14 04:42:44', 'Financiera', 'true', '2024-05-14 09:13:20', '2024-05-14 09:13:20'),
	(48, 'GARCIA', 'DE SOTO', 'BLAD', 'LUJAN', 'Estados Unidos', 'Pasaporte', '7894561', 'blad.garcia@global.com.us', '2024-05-13 05:00:00', 'Financiera', 'true', '2024-05-14 10:17:52', '2024-05-14 10:17:52'),
	(50, 'DE SOTO', 'VILCES', 'JOSE', NULL, 'Colombia', 'Pasaporte', '12345678', 'jose.desoto@global.com.co', '2024-05-01 05:00:00', 'Financiera', 'true', '2024-05-14 10:28:50', '2024-05-14 10:57:59'),
	(51, 'DE SOTO', 'PACA', 'JOSE', 'PEDRO', 'Colombia', 'DNI', '73760005', 'jose.desoto.1@global.com.co', '2024-05-13 18:00:00', 'Administración', 'true', '2024-05-14 10:30:07', '2024-05-14 10:58:11'),
	(65, 'DE LA CALLE', 'PACA', 'JOSE', 'PEDRO', 'Colombia', 'DNI', '73760005', 'jose.delacalle@global.com.co', '2024-05-13 18:00:00', 'Administración', 'true', '2024-05-14 10:53:24', '2024-05-14 10:53:24');

-- Volcando estructura para tabla global.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla global.migrations: ~12 rows (aproximadamente)
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2024_05_12_001825_create_personal_access_tokens_table', 1),
	(2, '2024_05_12_142337_create_oauth_auth_codes_table', 2),
	(3, '2024_05_12_142338_create_oauth_access_tokens_table', 2),
	(4, '2024_05_12_142339_create_oauth_refresh_tokens_table', 2),
	(5, '2024_05_12_142340_create_oauth_clients_table', 2),
	(6, '2024_05_12_142341_create_oauth_personal_access_clients_table', 2),
	(7, '2024_05_12_144607_create_sessions_table', 3),
	(8, '2024_05_12_145857_create_oauth_auth_codes_table', 4),
	(9, '2024_05_12_145858_create_oauth_access_tokens_table', 4),
	(10, '2024_05_12_145859_create_oauth_refresh_tokens_table', 4),
	(11, '2024_05_12_145900_create_oauth_clients_table', 4),
	(12, '2024_05_12_145901_create_oauth_personal_access_clients_table', 4);

-- Volcando estructura para tabla global.oauth_access_tokens
CREATE TABLE IF NOT EXISTS `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `client_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla global.oauth_access_tokens: ~24 rows (aproximadamente)
INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
	('0be9b583d13112c74155accfb28efbe7f3f9de090090f1e9ab0021877c365bdea7a4693ee9d13ed5', 10, 2, 'token', '["*"]', 0, '2024-05-12 20:43:25', '2024-05-12 20:43:25', '2025-05-12 15:43:25'),
	('0f0d2b38fd89eea01922ada8bfe0279c22a759551d7059267bbbe8d51390bf6d99e1161ee6b54933', 9, 1, 'token-name', '[]', 0, '2024-05-12 20:15:38', '2024-05-12 20:15:38', '2025-05-12 15:15:38'),
	('2dd263c0ed3dd82238f1da2a2a4e323ce4e2b42e9f29a24d1bce37661fdc5a6a3e1a7c7363421bd8', 10, 2, 'token', '["*"]', 0, '2024-05-12 20:31:16', '2024-05-12 20:31:16', '2025-05-12 15:31:16'),
	('3141670737c91a4b08975735d1b30e73ca7b81ca99880399683353f7c7c43b6fb22fa6cfce5a5966', 9, 1, 'token', '["*"]', 0, '2024-05-12 20:06:17', '2024-05-12 20:06:17', '2025-05-12 15:06:17'),
	('3872a834d8ddf573902873c2f7be7f8b85bd0b0cf967546cf6c2c5059526e6250aa6a4142c3d74c1', 10, 2, 'token', '["*"]', 0, '2024-05-12 20:40:18', '2024-05-12 20:40:18', '2025-05-12 15:40:18'),
	('3911570260c5a6c10c2faf58427a820932b27f4be9aaa582f2b2178effb2f108a268f28d41ea5f45', 10, 2, 'token', '["*"]', 0, '2024-05-12 21:34:44', '2024-05-12 21:34:44', '2025-05-12 16:34:44'),
	('40eb0a801be9f4e4954f603dac7ec92138145dbe2928bd8f620d537b0ed044d110d89cb0f29f55e3', 10, 2, 'token', '["*"]', 0, '2024-05-12 21:15:59', '2024-05-12 21:15:59', '2025-05-12 16:15:59'),
	('5be69c51256bc01e7ac6e672b95c544038324aba1af2d8fcf2e53b0b199b5821905243a1fc9f8487', 9, 2, 'token', '[]', 0, '2024-05-12 20:26:31', '2024-05-12 20:26:31', '2025-05-12 15:26:31'),
	('7787710f5b2b5ce368c9fea14ed88697e0dbffb12890d8383f6874892d00ee1b7c8ad76efda294c5', 9, 1, 'token', '[]', 0, '2024-05-12 20:08:56', '2024-05-12 20:08:56', '2025-05-12 15:08:56'),
	('7ba58578f6b85518356664fb89c36389a932bd534ee30dc1c4dd474dd39b3cf7cc0af03df2c2dc0e', 10, 2, 'token', '["*"]', 0, '2024-05-12 21:39:00', '2024-05-12 21:39:00', '2025-05-12 16:39:00'),
	('9e16782f77dcce3d4f06459a4ec02ac16bfacf408fe24f375d334006418d8d8886f19de599625813', 9, 2, 'token', '["*"]', 0, '2024-05-12 20:29:51', '2024-05-12 20:29:51', '2025-05-12 15:29:51'),
	('acada7e530b74b37721016cd8230b4b3f86ebc4cf1d8ddaf4d245a1460f5441ead096fa4c7246a63', 10, 2, 'token', '["*"]', 0, '2024-05-12 21:17:14', '2024-05-12 21:17:14', '2025-05-12 16:17:14'),
	('b8d307fd8518d5be4b4c51f3446d2645c3506c36ec467056da667662af1df53b3d5d63252f52fb04', 10, 2, NULL, '[]', 0, '2024-05-12 21:45:10', '2024-05-12 21:45:10', '2025-05-12 16:45:10'),
	('c30738e99e597c9ad2badb6763103b8ae88f2f052ddae3723b9ec7519cce76965fba0d1b52d5384b', 10, 2, 'token', '["*"]', 0, '2024-05-12 21:27:49', '2024-05-12 21:27:49', '2025-05-12 16:27:49'),
	('d25fd3f78c8a01daa4f547856e14e19645e66e37b47759eb3373b3f24c5c8584d72a537747783e3e', 9, 2, 'token-name', '["*"]', 0, '2024-05-12 20:21:12', '2024-05-12 20:21:12', '2025-05-12 15:21:12'),
	('d4cd3c3fe517695207a138e5183f669870264e371dcd4906837c0414c62b27b5a2fbee93761c2b4c', 10, 2, 'token', '["*"]', 0, '2024-05-12 21:39:39', '2024-05-12 21:39:39', '2025-05-12 16:39:39'),
	('d81e0e9fdd1d92db5d01a7dd9f8d8e2cacef6cd0c9ff1447f2ca7e4a834d29e4f6d52493f2ef3c45', 9, 2, 'token-name', '["*"]', 0, '2024-05-12 20:21:06', '2024-05-12 20:21:06', '2025-05-12 15:21:06'),
	('de4497a22852bbfc237ea248bb781f2dca5c1be0fa4644434c69ee5734d7b361594c428911e9eb7d', 9, 1, 'token', '[]', 0, '2024-05-12 20:03:00', '2024-05-12 20:03:00', '2025-05-12 15:03:00'),
	('e28873f3f49eaea8c85e687be0c05da796e3277625014f094f22b75b6627ca6cff04d956ff0e8b53', 9, 2, 'token', '[]', 0, '2024-05-12 20:25:22', '2024-05-12 20:25:22', '2025-05-12 15:25:22'),
	('e29d9b4b3f07dfcab561fa50e5bf1b16887206b0f61888cba3149de56c4abe293df2d8b9e8b696c0', 9, 1, 'token', '[]', 0, '2024-05-12 20:03:02', '2024-05-12 20:03:02', '2025-05-12 15:03:02'),
	('e42bd0d6945fb6fdad9faa483beedf94edcd7a1ed16ac8eaa965899f9bc27453020a121e05892275', 9, 1, 'token', '["*"]', 0, '2024-05-12 20:06:28', '2024-05-12 20:06:28', '2025-05-12 15:06:28'),
	('e44a6d81f44ad80533d496985983a2f45c258eb1cac5ad1eec12e9652eabf0bf79d7ff8d3e6c34de', 9, 2, 'token', '["*"]', 0, '2024-05-12 20:29:34', '2024-05-12 20:29:34', '2025-05-12 15:29:34'),
	('e6e947028ba3d55d6195abb509a211822ea6763418e355f2c3bfea49eecfb19a85400b4bbac45d20', 9, 1, 'token-name', '["*"]', 0, '2024-05-12 20:14:11', '2024-05-12 20:14:11', '2025-05-12 15:14:11'),
	('fd31a066f1129bf6a773f8cd7342250be25405719c04648f6248195f01ba56a21e49c4f122238d7e', 9, 1, 'token', '["*"]', 0, '2024-05-12 20:13:01', '2024-05-12 20:13:01', '2025-05-12 15:13:01');

-- Volcando estructura para tabla global.oauth_auth_codes
CREATE TABLE IF NOT EXISTS `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `client_id` bigint unsigned NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_auth_codes_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla global.oauth_auth_codes: ~0 rows (aproximadamente)

-- Volcando estructura para tabla global.oauth_clients
CREATE TABLE IF NOT EXISTS `oauth_clients` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla global.oauth_clients: ~1 rows (aproximadamente)
INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
	(2, NULL, 'globalClient', 'PT3MvBnmMHA4NY01bNoHbMoVksPE4HMmCznP9rtu', NULL, 'http://localhost', 1, 0, 0, '2024-05-12 20:20:50', '2024-05-12 20:20:50');

-- Volcando estructura para tabla global.oauth_personal_access_clients
CREATE TABLE IF NOT EXISTS `oauth_personal_access_clients` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `client_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla global.oauth_personal_access_clients: ~2 rows (aproximadamente)
INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
	(1, 1, '2024-05-12 20:02:39', '2024-05-12 20:02:39'),
	(2, 2, '2024-05-12 20:20:50', '2024-05-12 20:20:50');

-- Volcando estructura para tabla global.oauth_refresh_tokens
CREATE TABLE IF NOT EXISTS `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla global.oauth_refresh_tokens: ~0 rows (aproximadamente)

-- Volcando estructura para tabla global.personal_access_tokens
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla global.personal_access_tokens: ~68 rows (aproximadamente)
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
	(2, 'App\\Models\\User', 10, 'token', '4a253d6ae3d8a87d8579e96cc429b0dfd138c19fff42b82bc12c6e4e754f4376', '["*"]', NULL, '2024-05-19 21:55:04', '2024-05-12 21:55:04', '2024-05-12 21:55:04'),
	(3, 'App\\Models\\User', 10, 'token', 'd7c2ca859d5432b44a148b7c177c42641b6d5f2f2f2d52e8e426b71e1faa879b', '["*"]', NULL, '2024-05-19 21:59:33', '2024-05-12 21:59:33', '2024-05-12 21:59:33'),
	(4, 'App\\Models\\User', 10, 'token', '1d4e1dd2457e4e8786405d52b52faf868cf1aa1eb304aacb620e2d9a22004867', '["*"]', '2024-05-12 22:04:56', '2024-05-19 22:02:43', '2024-05-12 22:02:43', '2024-05-12 22:04:56'),
	(5, 'App\\Models\\User', 10, 'token', '4ce942ea359849eb186911f07cc066516a5638660e32619cce8849d01c110aeb', '["*"]', NULL, '2024-05-20 05:38:33', '2024-05-13 05:38:33', '2024-05-13 05:38:33'),
	(6, 'App\\Models\\User', 10, 'token', '26841ff1d4e6ce81b2ab88350b57643099815b03499db116d281409e3cf17698', '["*"]', NULL, '2024-05-20 05:39:27', '2024-05-13 05:39:27', '2024-05-13 05:39:27'),
	(7, 'App\\Models\\User', 9, 'token', '6ed2a3fda89a78746794275d0e5245e58cd79848180f44235b942bd0b97afc41', '["*"]', NULL, '2024-05-20 05:41:15', '2024-05-13 05:41:15', '2024-05-13 05:41:15'),
	(8, 'App\\Models\\User', 9, 'token', '38fff175bf7c977aaf8afaf02eaeed2b4ae44d38a6cfda27553da64a53761e45', '["*"]', NULL, '2024-05-20 06:05:38', '2024-05-13 06:05:38', '2024-05-13 06:05:38'),
	(9, 'App\\Models\\User', 9, 'token', 'c4411b718f2fd0faba08dba28132637b447411531ad347ebfa982c5ae1ccf74b', '["*"]', NULL, '2024-05-20 06:05:57', '2024-05-13 06:05:57', '2024-05-13 06:05:57'),
	(10, 'App\\Models\\User', 9, 'token', '754e33d26d29f0ef67cab735de4bf94c10502563898d5dec240184015977662f', '["*"]', NULL, '2024-05-20 06:34:38', '2024-05-13 06:34:38', '2024-05-13 06:34:38'),
	(11, 'App\\Models\\User', 9, 'token', '8c9e4128894934bfca97c96b8cbcbfa72d6768613c7f94402788710d446c9998', '["*"]', NULL, '2024-05-20 06:40:52', '2024-05-13 06:40:52', '2024-05-13 06:40:52'),
	(12, 'App\\Models\\User', 9, 'token', 'c514ccc937264b1d63c75f5bc058cde8618a051b0f0adf425b546357e90ff7b4', '["*"]', NULL, '2024-05-20 06:47:23', '2024-05-13 06:47:23', '2024-05-13 06:47:23'),
	(13, 'App\\Models\\User', 9, 'token', '8f5990b671c4a86d64d58d50c8b4c9484d45b0325741ed2934275b1de5625586', '["*"]', NULL, '2024-05-20 06:47:45', '2024-05-13 06:47:45', '2024-05-13 06:47:45'),
	(14, 'App\\Models\\User', 10, 'token', '04763fd3bb45527d79f1d42209a09514e5220cd52a05f79112f22fb15d7be47b', '["*"]', '2024-05-13 07:42:58', '2024-05-20 07:06:33', '2024-05-13 07:06:33', '2024-05-13 07:42:58'),
	(15, 'App\\Models\\User', 9, 'token', '83f8555d65243d9ea7fae49cbfad443ee343dcde4ba45bc121e3ed3fa6778eef', '["*"]', NULL, '2024-05-20 07:22:03', '2024-05-13 07:22:03', '2024-05-13 07:22:03'),
	(16, 'App\\Models\\User', 9, 'token', 'a8f42f7e95b1e1c64e00926e71c4d8d7d474d819d5d2958dcbafe01029671be0', '["*"]', NULL, '2024-05-20 07:22:04', '2024-05-13 07:22:04', '2024-05-13 07:22:04'),
	(17, 'App\\Models\\User', 9, 'token', 'e50155c9461ca41dfb01b1e775dbe0ca1336422698b4dc41d3c8bef01d228725', '["*"]', NULL, '2024-05-20 07:22:20', '2024-05-13 07:22:20', '2024-05-13 07:22:20'),
	(18, 'App\\Models\\User', 9, 'token', '9fc91c19dc0d921108b9cf0ad6078f05c8e7d256f1fad4170cbf7e2ca3bbb3fe', '["*"]', NULL, '2024-05-20 07:24:08', '2024-05-13 07:24:08', '2024-05-13 07:24:08'),
	(19, 'App\\Models\\User', 9, 'token', 'eaeb2a9e9398474fbbeedaa77ac517365201d21ec4ea8f7bde4261d878e10ff7', '["*"]', NULL, '2024-05-20 07:24:21', '2024-05-13 07:24:21', '2024-05-13 07:24:21'),
	(20, 'App\\Models\\User', 9, 'token', '19d3ff758cf727cdb77125912a59e09584ee0948d067056bfa25553108a2f911', '["*"]', NULL, '2024-05-20 07:41:20', '2024-05-13 07:41:20', '2024-05-13 07:41:20'),
	(21, 'App\\Models\\User', 10, 'token', 'd9f819748d503464e67f493d098039559aaeb59ae9dbda2b5095351eb06a705a', '["*"]', '2024-05-13 07:44:13', '2024-05-20 07:43:14', '2024-05-13 07:43:14', '2024-05-13 07:44:13'),
	(22, 'App\\Models\\User', 10, 'token', 'f95c538e5c46172b47ace8b53b37cbf7641b8e3bd77bbf38c08c5610436432fb', '["*"]', '2024-05-13 22:09:13', '2024-05-20 07:45:07', '2024-05-13 07:45:07', '2024-05-13 22:09:13'),
	(23, 'App\\Models\\User', 9, 'token', '8393ebf7dba1ed1a113526cfd479c43a1cc8dcb8b165cb226b0ba7e6e7340dfc', '["*"]', NULL, '2024-05-20 08:10:45', '2024-05-13 08:10:45', '2024-05-13 08:10:45'),
	(24, 'App\\Models\\User', 9, 'token', '8c2f27fe35b2fa30e168cdd4305696681c0290840d1893f1b67f6c19fcbe9940', '["*"]', NULL, '2024-05-20 08:10:52', '2024-05-13 08:10:52', '2024-05-13 08:10:52'),
	(25, 'App\\Models\\User', 9, 'token', '0e252b145dc2049d7ed0c71b27d3ba85e48ff5118fe8d5f31792b79733dce00c', '["*"]', NULL, '2024-05-20 09:08:21', '2024-05-13 09:08:21', '2024-05-13 09:08:21'),
	(26, 'App\\Models\\User', 9, 'token', '5392f22a06cf3dd245ab26e91327087b8d97babe596d723fdea4a5046afaafc3', '["*"]', NULL, '2024-05-20 09:08:21', '2024-05-13 09:08:21', '2024-05-13 09:08:21'),
	(27, 'App\\Models\\User', 9, 'token', '0167c9ef083d2452f6285ed9e18c6a5fb26b6d8ee2aba940d0c5a9c1946fe923', '["*"]', NULL, '2024-05-20 09:08:53', '2024-05-13 09:08:53', '2024-05-13 09:08:53'),
	(28, 'App\\Models\\User', 9, 'token', '99221b00dfe32e48781e6df05aad0436bade5219ab3257cddc5cfcaeefb888e6', '["*"]', NULL, '2024-05-20 09:08:53', '2024-05-13 09:08:53', '2024-05-13 09:08:53'),
	(29, 'App\\Models\\User', 9, 'token', '17bf2eb092743e65a7afb2633174504fd9954f8140456f58a579cf2494992041', '["*"]', NULL, '2024-05-20 09:09:27', '2024-05-13 09:09:27', '2024-05-13 09:09:27'),
	(30, 'App\\Models\\User', 9, 'token', 'ce655415def5ced553cdd21f049f74880c81b2a24d43e4d826b252ddd514f931', '["*"]', NULL, '2024-05-20 09:09:44', '2024-05-13 09:09:44', '2024-05-13 09:09:44'),
	(31, 'App\\Models\\User', 9, 'token', 'a89313a1bbe6767fedfe70dcb507ab2fd66749bdc5ae3b6bcc47747d7c2bda0e', '["*"]', NULL, '2024-05-20 09:11:21', '2024-05-13 09:11:21', '2024-05-13 09:11:21'),
	(32, 'App\\Models\\User', 9, 'token', '7a6841c645569f2799c6df61c3d64ae4abdcc73ad2bb999a52fcf286166fdc4b', '["*"]', NULL, '2024-05-20 09:12:02', '2024-05-13 09:12:02', '2024-05-13 09:12:02'),
	(33, 'App\\Models\\User', 9, 'token', '234dfadaff16435727f4580fe3139c49ec970ee884f7777c03aa84a0b2a0dc69', '["*"]', NULL, '2024-05-20 09:14:02', '2024-05-13 09:14:02', '2024-05-13 09:14:02'),
	(34, 'App\\Models\\User', 9, 'token', '287af26d626b11a7c9c9b190c2900f3d436652c53ffa0c17d39ebb258c9d0b06', '["*"]', NULL, '2024-05-20 09:14:05', '2024-05-13 09:14:05', '2024-05-13 09:14:05'),
	(35, 'App\\Models\\User', 9, 'token', 'bc436d756f38dc0274ed1fec4644cacac56fcd064ac8150fe6ec1b31ebb6b93f', '["*"]', NULL, '2024-05-20 09:15:16', '2024-05-13 09:15:16', '2024-05-13 09:15:16'),
	(36, 'App\\Models\\User', 9, 'token', '174c21beb7c0ebd70b392bc5a131e7e4d40d05286b0ad243c6bfdca1cc5766cc', '["*"]', NULL, '2024-05-20 09:23:36', '2024-05-13 09:23:36', '2024-05-13 09:23:36'),
	(37, 'App\\Models\\User', 9, 'token', '8a6db1e4a7ab92a8d74c1ce848ffad6e2a6603b27d101c1bf219e73e0aa5a214', '["*"]', NULL, '2024-05-20 09:25:02', '2024-05-13 09:25:02', '2024-05-13 09:25:02'),
	(38, 'App\\Models\\User', 10, 'token', '4c64e55c8644b9b06e73b9ee4dec2032dab3f0de28d184ab9ac846f4e59e5658', '["*"]', NULL, '2024-05-20 09:26:50', '2024-05-13 09:26:50', '2024-05-13 09:26:50'),
	(39, 'App\\Models\\User', 9, 'token', '11adf97d9c6a9002c53a3079bebe1170c6c70e4c3724af23c91fd03c291c98c0', '["*"]', NULL, '2024-05-20 09:27:28', '2024-05-13 09:27:28', '2024-05-13 09:27:28'),
	(40, 'App\\Models\\User', 9, 'token', '77b30cddfcb5054ffae044dcecdf4ead86f52a0bc5c56dcfd3d01a02b489a286', '["*"]', NULL, '2024-05-20 09:30:07', '2024-05-13 09:30:07', '2024-05-13 09:30:07'),
	(41, 'App\\Models\\User', 9, 'token', '1b9707785764c74931176d7e2d1c49e82ee0a0efa91c9a7f57bf2403768e7bb5', '["*"]', NULL, '2024-05-20 09:30:11', '2024-05-13 09:30:11', '2024-05-13 09:30:11'),
	(42, 'App\\Models\\User', 9, 'token', '3713ac1848fbeedf54ea416b29e32667f33c66a7347a14e2ed72f9b0b2fdc35b', '["*"]', NULL, '2024-05-20 09:32:44', '2024-05-13 09:32:44', '2024-05-13 09:32:44'),
	(43, 'App\\Models\\User', 9, 'token', 'ca6b79ce2f805c4b0bd8834f15adaca2a3133821088d25b24394935e50aa6e52', '["*"]', NULL, '2024-05-20 09:33:22', '2024-05-13 09:33:22', '2024-05-13 09:33:22'),
	(44, 'App\\Models\\User', 9, 'token', '47b821555951f199564382abdd0b370878dd3f76d353647bf84315bde730365c', '["*"]', '2024-05-13 09:38:21', '2024-05-20 09:34:39', '2024-05-13 09:34:39', '2024-05-13 09:38:21'),
	(45, 'App\\Models\\User', 10, 'token', '147d241f3b380780f474f65ef61c89875054ed955e563175890c81ba2687ffe7', '["*"]', '2024-05-13 09:41:27', '2024-05-20 09:38:50', '2024-05-13 09:38:50', '2024-05-13 09:41:27'),
	(46, 'App\\Models\\User', 9, 'token', '85a8392211ce66da4df51406f052756c3cc92393eae81c3bb921f473178be260', '["*"]', '2024-05-13 09:43:36', '2024-05-20 09:41:32', '2024-05-13 09:41:32', '2024-05-13 09:43:36'),
	(47, 'App\\Models\\User', 9, 'token', 'd17e12ff3e20085377d3aabb383211345308a3b22d820dfe75617f9021738578', '["*"]', '2024-05-13 20:15:55', '2024-05-20 09:44:05', '2024-05-13 09:44:05', '2024-05-13 20:15:55'),
	(48, 'App\\Models\\User', 10, 'token', '678379cd1068874fbece4e86222e41c4b512d8c642246a486cfe78685581b6b4', '["*"]', NULL, '2024-05-20 11:51:03', '2024-05-13 11:51:03', '2024-05-13 11:51:03'),
	(49, 'App\\Models\\User', 9, 'token', '3d192fb6354546d1de092f012ecfd38c30899707b1cc09e67931fc53673c1be2', '["*"]', '2024-05-13 20:45:45', '2024-05-20 20:19:51', '2024-05-13 20:19:51', '2024-05-13 20:45:45'),
	(50, 'App\\Models\\User', 10, 'token', 'd4e123a66fb4ded267a5ef7447a40f2ddbcad529f9974a5d294e7aff4a4c92a9', '["*"]', '2024-05-14 10:53:24', '2024-05-20 20:23:50', '2024-05-13 20:23:50', '2024-05-14 10:53:24'),
	(51, 'App\\Models\\User', 9, 'token', '03ccb3df49b1dab9f001c4dddcbc66c98d8ec7611718fd18820ced4df435666a', '["*"]', '2024-05-13 20:55:08', '2024-05-20 20:45:59', '2024-05-13 20:45:59', '2024-05-13 20:55:08'),
	(52, 'App\\Models\\User', 9, 'token', '6e537ab374916d622a7ef3c6c16ae618572c06cfa12d3f86455650cfbd032f7c', '["*"]', '2024-05-13 22:10:23', '2024-05-20 20:55:16', '2024-05-13 20:55:16', '2024-05-13 22:10:23'),
	(53, 'App\\Models\\User', 9, 'token', 'e88e97b590bbaa259d56163e0da05de9ae998efbb2ad109097315566ac80b0e4', '["*"]', '2024-05-13 22:10:32', '2024-05-20 22:10:31', '2024-05-13 22:10:31', '2024-05-13 22:10:32'),
	(54, 'App\\Models\\User', 9, 'token', '8313917e16960b69ee3cfe8f93b4bbdce0cb58bea9bb22c03bf45cb5dfe63a68', '["*"]', '2024-05-13 22:59:40', '2024-05-20 22:10:31', '2024-05-13 22:10:31', '2024-05-13 22:59:40'),
	(55, 'App\\Models\\User', 9, 'token', '39a1aaf9dace0de0a652a96efa02826afc64f325dcd98eb50077f75818b02082', '["*"]', '2024-05-13 23:40:31', '2024-05-20 23:03:55', '2024-05-13 23:03:55', '2024-05-13 23:40:31'),
	(56, 'App\\Models\\User', 9, 'token', '16c16840f12105505c8a58a9044cd23e6b70143f0dde51c0bffdce2c667c27b8', '["*"]', '2024-05-14 00:33:02', '2024-05-21 00:09:41', '2024-05-14 00:09:41', '2024-05-14 00:33:02'),
	(57, 'App\\Models\\User', 9, 'token', '7e1e72e9279a2330d44dbff7c214b71bdb7427a82123c605844668339f509782', '["*"]', '2024-05-14 01:06:54', '2024-05-21 00:36:18', '2024-05-14 00:36:18', '2024-05-14 01:06:54'),
	(58, 'App\\Models\\User', 9, 'token', 'e5bec445f1490764cb2bcd208853beddff631f7de901176ae50ab19d11575dff', '["*"]', '2024-05-14 02:35:26', '2024-05-21 01:07:14', '2024-05-14 01:07:14', '2024-05-14 02:35:26'),
	(59, 'App\\Models\\User', 9, 'token', '1a7810b42074b79425bbad27a3a912ee1a52b03d17b5ed3fd51bc36716dd2080', '["*"]', '2024-05-14 08:51:53', '2024-05-21 02:51:09', '2024-05-14 02:51:09', '2024-05-14 08:51:53'),
	(60, 'App\\Models\\User', 9, 'token', '09f352b4950f16329e97e6af48d372f4876f2968b8186717c7a09128475fd106', '["*"]', '2024-05-14 08:54:46', '2024-05-21 08:53:01', '2024-05-14 08:53:01', '2024-05-14 08:54:46'),
	(61, 'App\\Models\\User', 9, 'token', 'fb3761ef1c4928381bf07dea13a4baee9aaac74ef1878c8d8e22e1e94a0b2368', '["*"]', '2024-05-14 10:59:21', '2024-05-21 08:55:04', '2024-05-14 08:55:04', '2024-05-14 10:59:21'),
	(62, 'App\\Models\\User', 9, 'token', 'b60cb174e69128afa189710ced7b3d4c183ceca9c54de533f9a00868fea51a17', '["*"]', '2024-05-14 11:02:12', '2024-05-21 11:00:18', '2024-05-14 11:00:18', '2024-05-14 11:02:12'),
	(63, 'App\\Models\\User', 9, 'token', '24c58341479c162a67644e4d2bcebc0ff8e689992e5f59ff7f1b3267e1485072', '["*"]', '2024-05-14 11:02:38', '2024-05-21 11:02:37', '2024-05-14 11:02:37', '2024-05-14 11:02:38'),
	(64, 'App\\Models\\User', 9, 'token', '34d65dfbbbd08049f925a8f538c57a98089e25a8f13dad6932aaf74db3c70592', '["*"]', '2024-05-14 11:02:49', '2024-05-21 11:02:48', '2024-05-14 11:02:48', '2024-05-14 11:02:49'),
	(65, 'App\\Models\\User', 9, 'token', 'bb0fa67ac10e4d270d848ca5c7e4da4d19183838fd1faaf5d181149ec2315921', '["*"]', '2024-05-14 11:05:57', '2024-05-21 11:02:55', '2024-05-14 11:02:55', '2024-05-14 11:05:57'),
	(66, 'App\\Models\\User', 9, 'token', 'd4b6292c3be007849acf842722659cb4e6cda3fb1de92b94255790d607b708be', '["*"]', '2024-05-14 11:06:05', '2024-05-21 11:06:04', '2024-05-14 11:06:04', '2024-05-14 11:06:05'),
	(67, 'App\\Models\\User', 9, 'token', '1ac91a9222541afa53ad3fac75303a7a146ba76a7bdbedb5146b3ced9006b4b4', '["*"]', '2024-05-14 11:06:10', '2024-05-21 11:06:10', '2024-05-14 11:06:10', '2024-05-14 11:06:10'),
	(68, 'App\\Models\\User', 9, 'token', '013489b97562c558ba8681b2ab953fa6e88b1e42b98b06aa00a010692dd116db', '["*"]', '2024-05-14 11:06:24', '2024-05-21 11:06:23', '2024-05-14 11:06:23', '2024-05-14 11:06:24'),
	(69, 'App\\Models\\User', 9, 'token', '8f6fb069040e8a743a320026e9ba3e911685e68fbd1214041dea31702c1b1a8f', '["*"]', '2024-05-14 11:50:22', '2024-05-21 11:07:07', '2024-05-14 11:07:07', '2024-05-14 11:50:22');

-- Volcando estructura para tabla global.sessions
CREATE TABLE IF NOT EXISTS `sessions` (
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

-- Volcando datos para la tabla global.sessions: ~0 rows (aproximadamente)

-- Volcando estructura para tabla global.user
CREATE TABLE IF NOT EXISTS `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(25) DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla global.user: ~5 rows (aproximadamente)
INSERT INTO `user` (`id`, `name`, `password`, `updated_at`, `created_at`) VALUES
	(9, 'admin global', '$2y$12$3n/MOq6ZEiG8Aoj6wozdQ.dYqTkggSVim0qOcJ/Uwf2XKxc8QQEK2', '2024-05-12 06:33:54', '2024-05-12 06:33:54'),
	(10, 'admin', '$2y$12$.0n7uV8CwX03pU6l6YWP0eY/9xxNBNwbbVanmcQvGesePAfNxYxCG', '2024-05-12 20:30:21', '2024-05-12 20:30:21'),
	(11, 'admin4', '$2y$12$Kb7K95J5REgZyKV6N0fcMu2exXYaUGk5.HqLjh0LNXOMxOJJxVrDW', '2024-05-13 07:45:15', '2024-05-13 07:45:15'),
	(13, 'admin5', '$2y$12$eyN1Zl1U2OlM7Prm3WTlm.H6X55j3Tx3/TIj4zVp4.y/M7KG6z2y6', '2024-05-13 09:27:22', '2024-05-13 09:27:22'),
	(15, 'admin12', '$2y$12$2GAOUiLq.on0FDak2LMakeCtX8D37hHOOTUUPwgiTZTSnnXgXk5qG', '2024-05-13 11:50:54', '2024-05-13 11:50:54');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
