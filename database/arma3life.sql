
SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(255) NOT NULL,
  `psw` varchar(255) NOT NULL,
  `adminlevel` enum('0','1','2','3') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for exchange
-- ----------------------------
DROP TABLE IF EXISTS `exchange`;
CREATE TABLE `exchange` (
  `ID` int(255) NOT NULL AUTO_INCREMENT,
  `pid` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `VehicleID` varchar(50) NOT NULL,
  `ClassName` varchar(100) DEFAULT NULL,
  `isVirtual` tinyint(1) NOT NULL DEFAULT '0',
  `isWeapon` tinyint(1) NOT NULL DEFAULT '0',
  `isVehicle` tinyint(1) NOT NULL DEFAULT '0',
  `Amount` int(255) NOT NULL DEFAULT '0',
  `BuyorSell` tinyint(1) NOT NULL DEFAULT '0',
  `Price` int(255) NOT NULL DEFAULT '0',
  `timer` int(50) NOT NULL DEFAULT '0',
  `active` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for keylog
-- ----------------------------
DROP TABLE IF EXISTS `keylog`;
CREATE TABLE `keylog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `playerid` varchar(50) NOT NULL,
  `playername` varchar(100) CHARACTER SET utf8 NOT NULL,
  `action` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `actionid` int(20) DEFAULT NULL,
  `instanceid` int(20) DEFAULT NULL,
  `time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=668 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for log
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log` (
  `uid` int(12) NOT NULL AUTO_INCREMENT,
  `playerid` varchar(50) NOT NULL,
  `playername` varchar(200) CHARACTER SET utf8 NOT NULL,
  `action` text CHARACTER SET utf8mb4 NOT NULL,
  `actionid` int(5) NOT NULL DEFAULT '0',
  `instanceid` int(5) NOT NULL DEFAULT '0',
  `time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`uid`),
  KEY `playerid` (`playerid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=65880 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for lootmarket
-- ----------------------------
DROP TABLE IF EXISTS `lootmarket`;
CREATE TABLE `lootmarket` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item` varchar(50) DEFAULT NULL,
  `account` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=610 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for messages
-- ----------------------------
DROP TABLE IF EXISTS `messages`;
CREATE TABLE `messages` (
  `uid` int(12) NOT NULL AUTO_INCREMENT,
  `fromID` varchar(50) NOT NULL,
  `toID` varchar(50) NOT NULL,
  `message` text,
  `fromName` varchar(32) NOT NULL,
  `toName` varchar(32) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for online
-- ----------------------------
DROP TABLE IF EXISTS `online`;
CREATE TABLE `online` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `playerID` varchar(50) NOT NULL,
  `instance` tinyint(2) NOT NULL DEFAULT '0',
  `time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `playerid` (`playerID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1009 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for players
-- ----------------------------
DROP TABLE IF EXISTS `players`;
CREATE TABLE `players` (
  `uid` int(12) NOT NULL AUTO_INCREMENT,
  `playerid` varchar(50) CHARACTER SET latin1 NOT NULL,
  `name` varchar(100) NOT NULL,
  `gang1` varchar(100) NOT NULL DEFAULT '0',
  `gang2` varchar(100) CHARACTER SET latin1 NOT NULL DEFAULT '0',
  `gang3` varchar(100) CHARACTER SET latin1 NOT NULL DEFAULT '0',
  `gang4` text CHARACTER SET latin1,
  `gang5` text CHARACTER SET latin1,
  `gangrank1` int(11) NOT NULL DEFAULT '3',
  `gangrank2` int(11) NOT NULL DEFAULT '3',
  `gangrank3` int(11) NOT NULL DEFAULT '3',
  `gangrank4` int(11) NOT NULL DEFAULT '3',
  `gangrank5` int(11) NOT NULL DEFAULT '3',
  `adminlevel` enum('0','1','2','3') CHARACTER SET latin1 NOT NULL DEFAULT '1',
  `blacklist` tinyint(1) NOT NULL DEFAULT '0',
  `aliases` text,
  `cash` int(100) NOT NULL DEFAULT '0',
  `civ_licenses` text CHARACTER SET latin1,
  `civ_inventory` text CHARACTER SET latin1,
  `civ_gear` text CHARACTER SET latin1,
  `civ_holstered` text CHARACTER SET latin1,
  `civ_talents` text CHARACTER SET latin1,
  `civ_exp` int(11) NOT NULL DEFAULT '0',
  `cop_gear` text CHARACTER SET latin1,
  `coplevel` enum('0','1','2','3','4','5','6','7','8','9') CHARACTER SET latin1 NOT NULL DEFAULT '0',
  `cop_licenses` text CHARACTER SET latin1,
  `cop_inventory` text CHARACTER SET latin1,
  `cop_talents` text CHARACTER SET latin1,
  `cop_exp` int(11) DEFAULT '0',
  `cop_holstered` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `cop_alive` tinyint(1) NOT NULL DEFAULT '0',
  `bankacc` int(100) NOT NULL DEFAULT '0',
  `damage` int(5) DEFAULT '0',
  `thirst` int(5) DEFAULT '100',
  `hunger` int(5) DEFAULT '100',
  `drugs` varchar(100) CHARACTER SET latin1 NOT NULL DEFAULT '[0,[0,0,0,0,0]]',
  `pain` int(5) NOT NULL DEFAULT '0',
  `broken` tinyint(1) NOT NULL DEFAULT '0',
  `precinct` tinyint(1) DEFAULT '0',
  `prestige` int(5) DEFAULT '0',
  `pre_talents` text CHARACTER SET latin1,
  `med_licenses` text CHARACTER SET latin1,
  `med_talents` text CHARACTER SET latin1,
  `med_exp` int(11) NOT NULL DEFAULT '0',
  `med_gear` text CHARACTER SET latin1,
  `instance` varchar(10) CHARACTER SET latin1 DEFAULT '1',
  `arrested` int(10) NOT NULL DEFAULT '0',
  `title` varchar(500) CHARACTER SET latin1 NOT NULL DEFAULT '""',
  `revive` int(10) NOT NULL DEFAULT '1',
  `guid` int(12) DEFAULT '0',
  `ipaddress` text CHARACTER SET latin1,
  `alive` tinyint(1) NOT NULL DEFAULT '0',
  `worldspace_strat` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `worldspace_tanoa` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `worldspace` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `customtexture` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `parole` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `lastupdated` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `playerid` (`playerid`),
  KEY `name` (`name`),
  KEY `gang1` (`gang1`) USING BTREE,
  KEY `gangrank1` (`gangrank1`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1041 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for players_global
-- ----------------------------
DROP TABLE IF EXISTS `players_global`;
CREATE TABLE `players_global` (
  `uid` int(12) NOT NULL AUTO_INCREMENT,
  `playerid` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `coplevel` enum('0','1','2','3','4','5','6','7','8','9') NOT NULL DEFAULT '1',
  `adminlevel` enum('0','1','2','3') NOT NULL DEFAULT '0',
  `donatorlvl` enum('0','1','2','3','4','5') NOT NULL DEFAULT '0',
  `swatlevel` int(10) NOT NULL DEFAULT '0',
  `wealth` int(10) NOT NULL DEFAULT '0',
  `achievements` varchar(500) DEFAULT NULL,
  `stats` varchar(50) DEFAULT NULL,
  `title` text NOT NULL,
  `keys` varchar(100) NOT NULL DEFAULT '[0]',
  `mailbox` text NOT NULL,
  `honor` int(11) NOT NULL DEFAULT '0',
  `honortalents` varchar(100) NOT NULL,
  `lootrewards` varchar(100) NOT NULL,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `playerid` (`playerid`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4468 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for vehicles
-- ----------------------------
DROP TABLE IF EXISTS `vehicles`;
CREATE TABLE `vehicles` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `side` varchar(15) NOT NULL,
  `classname` varchar(32) NOT NULL,
  `type` varchar(12) NOT NULL,
  `alive` tinyint(1) NOT NULL DEFAULT '1',
  `sp` int(12) NOT NULL DEFAULT '100',
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `plate` int(20) NOT NULL,
  `color` int(10) NOT NULL DEFAULT '0',
  `inventory` varchar(500) NOT NULL,
  `fuel` double(10,0) NOT NULL DEFAULT '0',
  `damage` int(10) NOT NULL DEFAULT '0',
  `alarm` tinyint(1) NOT NULL DEFAULT '0',
  `ammo` int(10) NOT NULL DEFAULT '0',
  `pid` varchar(32) NOT NULL,
  `listed` tinyint(1) NOT NULL DEFAULT '0',
  `insured` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `side` (`side`),
  KEY `pid` (`pid`),
  KEY `type` (`type`),
  KEY `plate` (`plate`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4909 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for wanted
-- ----------------------------
DROP TABLE IF EXISTS `wanted`;
CREATE TABLE `wanted` (
  `playerID` varchar(50) NOT NULL,
  `Name` varchar(52) CHARACTER SET utf8 NOT NULL,
  `Crimes` text CHARACTER SET utf8,
  `Bounty` int(100) NOT NULL DEFAULT '0',
  `jail` int(100) NOT NULL DEFAULT '0',
  `jailtime` int(100) NOT NULL DEFAULT '0',
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `wantedlevel` int(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`playerID`),
  UNIQUE KEY `playerid` (`playerID`) USING BTREE,
  KEY `name` (`Name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for whitelist
-- ----------------------------
DROP TABLE IF EXISTS `whitelist`;
CREATE TABLE `whitelist` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `playerid` varchar(50) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `side` varchar(255) DEFAULT NULL,
  `deadline` datetime NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `playerid` (`playerid`) USING BTREE,
  KEY `side` (`side`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Procedure structure for deleteDeadVehicles
-- ----------------------------
DROP PROCEDURE IF EXISTS `deleteDeadVehicles`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteDeadVehicles`()
BEGIN
  DELETE FROM `vehicles` WHERE `alive` = 0;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for deleteOldContainers
-- ----------------------------
DROP PROCEDURE IF EXISTS `deleteOldContainers`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteOldContainers`()
BEGIN
  DELETE FROM `containers` WHERE `owned` = 0;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for deleteOldGangs
-- ----------------------------
DROP PROCEDURE IF EXISTS `deleteOldGangs`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteOldGangs`()
BEGIN
  DELETE FROM `gangs` WHERE `active` = 0;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for deleteOldHouses
-- ----------------------------
DROP PROCEDURE IF EXISTS `deleteOldHouses`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteOldHouses`()
BEGIN
  DELETE FROM `houses` WHERE `owned` = 0;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for DeletPlayersError
-- ----------------------------
DROP PROCEDURE IF EXISTS `DeletPlayersError`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `DeletPlayersError`()
BEGIN
	#Routine body goes here...
 delete from `players_global` where `playerid` not in (select `playerid` from `players` );
 delete from `players` where `playerid` not in (select `playerid` from `players_global` );
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for resetAusVehicles
-- ----------------------------
DROP PROCEDURE IF EXISTS `resetAusVehicles`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `resetAusVehicles`()
BEGIN
  UPDATE `vehicles_aus` SET `active`= 0;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for resetLifeVehicles
-- ----------------------------
DROP PROCEDURE IF EXISTS `resetLifeVehicles`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `resetLifeVehicles`()
BEGIN
   UPDATE `vehicles` SET `active`= 0;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for ResetPos
-- ----------------------------
DROP PROCEDURE IF EXISTS `ResetPos`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ResetPos`()
BEGIN
	#Routine body goes here...
update players set worldspace='[14041.6,18740.6,0.00144196]' where worldspace='[1e+012,1e+012,1e+012]';
END
;;
DELIMITER ;
SET FOREIGN_KEY_CHECKS=1;
