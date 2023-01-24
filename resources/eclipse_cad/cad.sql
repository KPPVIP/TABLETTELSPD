-- --------------------------------------------------------
-- Хост:                         127.0.0.1
-- Версия сервера:               10.4.17-MariaDB - mariadb.org binary distribution
-- Операционная система:         Win64
-- HeidiSQL Версия:              11.1.0.6116
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Дамп структуры базы данных plumeesx_86bbe6
CREATE DATABASE IF NOT EXISTS `plumeesx_86bbe6` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `plumeesx_86bbe6`;

-- Дамп структуры для таблица plumeesx_86bbe6.eclipse_cad_police_calls
CREATE TABLE IF NOT EXISTS `eclipse_cad_police_calls` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from` varchar(50) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `crew` varchar(50) DEFAULT NULL,
  `message` varchar(50) DEFAULT NULL,
  `position` varchar(9999) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Экспортируемые данные не выделены.

-- Дамп структуры для таблица plumeesx_86bbe6.eclipse_cad_tickets
CREATE TABLE IF NOT EXISTS `eclipse_cad_tickets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(50) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL,
  `fulltext` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `operatorId` int(11) DEFAULT NULL,
  `ownerId` int(11) DEFAULT NULL,
  `paid` tinyint(4) DEFAULT NULL,
  `price` varchar(50) DEFAULT NULL,
  `show` tinyint(4) DEFAULT NULL,
  `text` varchar(50) DEFAULT NULL,
  `penalty` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8;

-- Экспортируемые данные не выделены.

-- Дамп структуры для таблица plumeesx_86bbe6.eclipse_cad_users_status
CREATE TABLE IF NOT EXISTS `eclipse_cad_users_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` int(11) NOT NULL DEFAULT 0,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Экспортируемые данные не выделены.

-- Дамп структуры для таблица plumeesx_86bbe6.eclipse_cad_vehicles_status
CREATE TABLE IF NOT EXISTS `eclipse_cad_vehicles_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` varchar(50) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Экспортируемые данные не выделены.

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
