-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.31 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for contactdb
CREATE DATABASE IF NOT EXISTS `contactdb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `contactdb`;

-- Dumping structure for table contactdb.contact
CREATE TABLE IF NOT EXISTS `contact` (
  `contact_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `telephone` varchar(45) NOT NULL,
  `group_id` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`contact_id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb3;

-- Dumping data for table contactdb.contact: ~5 rows (approximately)
INSERT INTO `contact` (`contact_id`, `name`, `email`, `address`, `telephone`, `group_id`) VALUES
	(27, 'Dimitar Saykovddfd', 'dsaykov@mail.bg', 'Sofia', '012312', 1),
	(31, 'Georgi', 'georgi@maol.bg', 'dddd', 'asdas', 2),
	(33, 'Ivan', 'ivan@mal.dd', '', '', 1),
	(34, 'Dian', 'dean@madd.ggsd', '', '', 1),
	(35, 'Petar', 'petar@mdai.bg', '', '', 1);

-- Dumping structure for table contactdb.contact_group
CREATE TABLE IF NOT EXISTS `contact_group` (
  `group_Id` int NOT NULL AUTO_INCREMENT,
  `group_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`group_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table contactdb.contact_group: ~0 rows (approximately)
INSERT INTO `contact_group` (`group_Id`, `group_name`) VALUES
	(1, 'Private'),
	(2, 'Public');

-- Dumping structure for table contactdb.sys_privilege
CREATE TABLE IF NOT EXISTS `sys_privilege` (
  `SysPrivilege_ID` int NOT NULL,
  `Descr` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`SysPrivilege_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- Dumping data for table contactdb.sys_privilege: 2 rows
/*!40000 ALTER TABLE `sys_privilege` DISABLE KEYS */;
INSERT INTO `sys_privilege` (`SysPrivilege_ID`, `Descr`) VALUES
	(1, 'ADMINISTRATOR'),
	(2, 'EMPLOYEE');
/*!40000 ALTER TABLE `sys_privilege` ENABLE KEYS */;

-- Dumping structure for table contactdb.user
CREATE TABLE IF NOT EXISTS `user` (
  `User_ID` int NOT NULL AUTO_INCREMENT,
  `User_Name` varchar(100) DEFAULT NULL,
  `Name` varchar(250) NOT NULL,
  `Status` int NOT NULL,
  `Password` varchar(100) NOT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Phone` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`User_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=91764 DEFAULT CHARSET=utf8mb3;

-- Dumping data for table contactdb.user: ~5 rows (approximately)
INSERT INTO `user` (`User_ID`, `User_Name`, `Name`, `Status`, `Password`, `Email`, `Phone`) VALUES
	(1, 'dsaykov', 'SYSTEM', 1, 'f2e0c8ff4edf21a631e8492092b554f4d0df250a7d6030c297f96be6dc1a6940', 'd.saykov@flammen.bg', ''),
	(23201, 'r.atsinov', 'Радко Ацинов', 1, 'f2e0c8ff4edf21a631e8492092b554f4d0df250a7d6030c297f96be6dc1a6940', '', ''),
	(23202, 'd.stoilov', 'Динко Стоилов', 1, 'bdaaf42bcd99884bd87920ac5eca9ab14fb3453b0a89652baabc7d007c5acb3b', '', ''),
	(26201, 'admin', 'ADMIN', 1, 'f2e0c8ff4edf21a631e8492092b554f4d0df250a7d6030c297f96be6dc1a6940', '', ''),
	(34932, 'dragomira.eneva', 'Драгомира Енева', 1, '8778e49fae38593a6310de7e7ce9e473bdb5fa52a05e536416859f6187b948fb', '', '');

-- Dumping structure for table contactdb.user_right
CREATE TABLE IF NOT EXISTS `user_right` (
  `User_ID` int NOT NULL,
  `SysPrivilege_ID` int NOT NULL,
  PRIMARY KEY (`User_ID`,`SysPrivilege_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Dumping data for table contactdb.user_right: ~33 rows (approximately)
INSERT INTO `user_right` (`User_ID`, `SysPrivilege_ID`) VALUES
	(1, 1),
	(1, 2),
	(4751, 1),
	(4751, 2),
	(4752, 1),
	(4752, 2),
	(4753, 1),
	(4753, 2),
	(4754, 1),
	(4754, 2),
	(4755, 1),
	(4755, 2),
	(4756, 1),
	(4756, 2),
	(23201, 2),
	(23202, 1),
	(23202, 2),
	(23203, 1),
	(23203, 2),
	(26201, 2),
	(34932, 1),
	(34932, 2),
	(62983, 2),
	(62984, 2),
	(62987, 2),
	(62988, 2),
	(62989, 2),
	(63365, 2),
	(78712, 1),
	(78712, 2),
	(91762, 1),
	(91762, 2),
	(91763, 2);

-- Dumping structure for view contactdb.user_rights_view
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `user_rights_view` (
	`UserName` VARCHAR(100) NULL COLLATE 'utf8mb3_general_ci',
	`GroupName` VARCHAR(30) NOT NULL COLLATE 'utf8mb3_unicode_ci'
) ENGINE=MyISAM;

-- Dumping structure for table contactdb.user_status
CREATE TABLE IF NOT EXISTS `user_status` (
  `Status_ID` int NOT NULL,
  `Descr` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`Status_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- Dumping data for table contactdb.user_status: 2 rows
/*!40000 ALTER TABLE `user_status` DISABLE KEYS */;
INSERT INTO `user_status` (`Status_ID`, `Descr`) VALUES
	(1, 'Активен'),
	(2, 'Блокиран');
/*!40000 ALTER TABLE `user_status` ENABLE KEYS */;

-- Dumping structure for view contactdb.user_rights_view
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `user_rights_view`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `user_rights_view` AS select `u`.`User_Name` AS `UserName`,`p`.`Descr` AS `GroupName` from ((`user_right` `ur` join `sys_privilege` `p`) join `user` `u`) where ((`ur`.`SysPrivilege_ID` = `p`.`SysPrivilege_ID`) and (`ur`.`User_ID` = `u`.`User_ID`) and (`u`.`Status` is not null) and (`u`.`Status` <> 2));

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
