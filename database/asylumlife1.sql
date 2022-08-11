
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for candidates
-- ----------------------------
DROP TABLE IF EXISTS `candidates`;
CREATE TABLE `candidates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `playerid` varchar(50) NOT NULL,
  `policy` varchar(50) NOT NULL,
  `investment` int(100) DEFAULT '0',
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of candidates
-- ----------------------------

-- ----------------------------
-- Table structure for captures
-- ----------------------------
DROP TABLE IF EXISTS `captures`;
CREATE TABLE `captures` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gang` int(11) DEFAULT NULL,
  `percent` tinyint(2) DEFAULT '0',
  `container` text,
  `level` enum('0','1','2','3','4','5','6','7','8','9') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of captures
-- ----------------------------

-- ----------------------------
-- Table structure for config
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(50) NOT NULL,
  `index` int(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of config
-- ----------------------------
INSERT INTO `config` VALUES ('1', '1', '1');
INSERT INTO `config` VALUES ('2', '0', '2');
INSERT INTO `config` VALUES ('3', '0', '3');
INSERT INTO `config` VALUES ('4', '', '4');
INSERT INTO `config` VALUES ('5', '0', '5');
INSERT INTO `config` VALUES ('6', '0', '6');
INSERT INTO `config` VALUES ('7', '0', '7');
INSERT INTO `config` VALUES ('8', '1', '8');
INSERT INTO `config` VALUES ('9', '0', '9');
INSERT INTO `config` VALUES ('10', '0', '10');
INSERT INTO `config` VALUES ('11', '[\"\"]', '11');
INSERT INTO `config` VALUES ('12', '[\"\"]', '12');
INSERT INTO `config` VALUES ('13', '[\"\"]', '13');
INSERT INTO `config` VALUES ('14', '[\"\"]', '14');
INSERT INTO `config` VALUES ('15', '', '15');

-- ----------------------------
-- Table structure for gangs
-- ----------------------------
DROP TABLE IF EXISTS `gangs`;
CREATE TABLE `gangs` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `id` int(11) NOT NULL,
  `name` varchar(32) DEFAULT NULL,
  `wars` varchar(32) DEFAULT NULL,
  `inviterank` int(2) NOT NULL DEFAULT '2',
  `kickrank` int(2) NOT NULL DEFAULT '2',
  `bank` int(100) DEFAULT '0',
  `experience` int(100) DEFAULT '0',
  `talents` int(100) DEFAULT '0',
  PRIMARY KEY (`uid`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of gangs
-- ----------------------------

-- ----------------------------
-- Table structure for houses
-- ----------------------------
DROP TABLE IF EXISTS `houses`;
CREATE TABLE `houses` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `oid` int(30) NOT NULL,
  `worldspace` varchar(64) DEFAULT NULL,
  `owners` varchar(100) DEFAULT NULL,
  `locked` tinyint(30) DEFAULT '0',
  `sale` int(100) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `oid_UNIQUE` (`oid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;



-- ----------------------------
-- Table structure for itemstock
-- ----------------------------
DROP TABLE IF EXISTS `itemstock`;
CREATE TABLE `itemstock` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `className` varchar(100) NOT NULL,
  `quantity` float(10,0) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `classname` (`className`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=281 DEFAULT CHARSET=latin1;


-- ----------------------------
-- Records of itemstock
-- ----------------------------
INSERT INTO `itemstock` VALUES ('1', 'apple', '581');
INSERT INTO `itemstock` VALUES ('3', 'berry', '1');
INSERT INTO `itemstock` VALUES ('4', 'salema', '1');
INSERT INTO `itemstock` VALUES ('5', 'ornate', '1');
INSERT INTO `itemstock` VALUES ('6', 'mackerel', '1');
INSERT INTO `itemstock` VALUES ('7', 'tuna', '1');
INSERT INTO `itemstock` VALUES ('8', 'mullet', '1');
INSERT INTO `itemstock` VALUES ('9', 'catshark', '1');
INSERT INTO `itemstock` VALUES ('10', 'water', '0');
INSERT INTO `itemstock` VALUES ('11', 'turtle', '0');
INSERT INTO `itemstock` VALUES ('12', 'turtlesoup', '1');
INSERT INTO `itemstock` VALUES ('13', 'donuts', '0');
INSERT INTO `itemstock` VALUES ('14', 'timber', '1');
INSERT INTO `itemstock` VALUES ('15', 'campfire', '1');
INSERT INTO `itemstock` VALUES ('16', 'woodaxe', '0');
INSERT INTO `itemstock` VALUES ('17', 'coffee', '0');
INSERT INTO `itemstock` VALUES ('18', 'tbacon', '0');
INSERT INTO `itemstock` VALUES ('19', 'lootcrate1', '0');
INSERT INTO `itemstock` VALUES ('20', 'lockpick', '0');
INSERT INTO `itemstock` VALUES ('21', 'pickaxe', '1');
INSERT INTO `itemstock` VALUES ('22', 'roadCone', '1');
INSERT INTO `itemstock` VALUES ('23', 'roadBarrier', '1');
INSERT INTO `itemstock` VALUES ('24', 'cncBarrier', '1');
INSERT INTO `itemstock` VALUES ('25', 'cncBarrierL', '1');
INSERT INTO `itemstock` VALUES ('26', 'barGate', '1');
INSERT INTO `itemstock` VALUES ('27', 'bagwallshort', '1');
INSERT INTO `itemstock` VALUES ('28', 'bagwalllong', '1');
INSERT INTO `itemstock` VALUES ('29', 'bagwallround', '1');
INSERT INTO `itemstock` VALUES ('30', 'razorwire', '1');
INSERT INTO `itemstock` VALUES ('31', 'redgull', '0');
INSERT INTO `itemstock` VALUES ('32', 'towRope', '0');
INSERT INTO `itemstock` VALUES ('33', 'fuelF', '0');
INSERT INTO `itemstock` VALUES ('34', 'peach', '549');
INSERT INTO `itemstock` VALUES ('35', 'spikeStrip', '0');
INSERT INTO `itemstock` VALUES ('36', 'yeast', '0');
INSERT INTO `itemstock` VALUES ('37', 'phos', '0');
INSERT INTO `itemstock` VALUES ('38', 'hydro', '0');
INSERT INTO `itemstock` VALUES ('39', 'pcp', '1');
INSERT INTO `itemstock` VALUES ('40', 'protest', '1');
INSERT INTO `itemstock` VALUES ('41', 'ziptie', '0');
INSERT INTO `itemstock` VALUES ('42', 'storage1', '0');
INSERT INTO `itemstock` VALUES ('43', 'storage2', '0');
INSERT INTO `itemstock` VALUES ('44', 'agingbarrel', '0');
INSERT INTO `itemstock` VALUES ('45', 'speedbomb', '1');
INSERT INTO `itemstock` VALUES ('46', 'doubloon', '41');
INSERT INTO `itemstock` VALUES ('47', 'silverpiece', '176');
INSERT INTO `itemstock` VALUES ('48', 'goldbar', '0');
INSERT INTO `itemstock` VALUES ('49', 'dirty_money', '2970210');
INSERT INTO `itemstock` VALUES ('50', 'ruby', '100');
INSERT INTO `itemstock` VALUES ('51', 'pearl', '0');
INSERT INTO `itemstock` VALUES ('52', 'treasure', '1');
INSERT INTO `itemstock` VALUES ('53', 'diamondf', '0');
INSERT INTO `itemstock` VALUES ('54', 'nitro', '15');
INSERT INTO `itemstock` VALUES ('55', 'drill', '0');
INSERT INTO `itemstock` VALUES ('56', 'skinningknife', '1');
INSERT INTO `itemstock` VALUES ('57', 'blindfold', '5');
INSERT INTO `itemstock` VALUES ('58', 'redburger', '0');
INSERT INTO `itemstock` VALUES ('59', 'soda', '1');
INSERT INTO `itemstock` VALUES ('60', 'beer', '1');
INSERT INTO `itemstock` VALUES ('61', 'debitcard', '1');
INSERT INTO `itemstock` VALUES ('62', 'excavator', '0');
INSERT INTO `itemstock` VALUES ('63', 'adrenalineShot', '0');
INSERT INTO `itemstock` VALUES ('64', 'tracker', '0');
INSERT INTO `itemstock` VALUES ('65', 'caralarm', '0');
INSERT INTO `itemstock` VALUES ('66', 'airalarm', '1');
INSERT INTO `itemstock` VALUES ('67', 'defib', '0');
INSERT INTO `itemstock` VALUES ('68', 'bloodbag', '0');
INSERT INTO `itemstock` VALUES ('69', 'painkillers', '0');
INSERT INTO `itemstock` VALUES ('70', 'splint', '0');
INSERT INTO `itemstock` VALUES ('71', 'vammo', '1');
INSERT INTO `itemstock` VALUES ('72', 'tent1', '1');
INSERT INTO `itemstock` VALUES ('73', 'tent2', '1');
INSERT INTO `itemstock` VALUES ('74', 'boltCutter', '0');
INSERT INTO `itemstock` VALUES ('75', 'demoCharge', '0');
INSERT INTO `itemstock` VALUES ('76', 'marijuana', '0');
INSERT INTO `itemstock` VALUES ('77', 'marijuanam', '0');
INSERT INTO `itemstock` VALUES ('78', 'meth', '0');
INSERT INTO `itemstock` VALUES ('79', 'toasty', '1');
INSERT INTO `itemstock` VALUES ('80', 'sandwich', '1');
INSERT INTO `itemstock` VALUES ('81', 'cocaine', '1');
INSERT INTO `itemstock` VALUES ('82', 'cocainep', '0');
INSERT INTO `itemstock` VALUES ('83', 'cocaleaf', '1');
INSERT INTO `itemstock` VALUES ('84', 'cocapaste', '1');
INSERT INTO `itemstock` VALUES ('85', 'cocainepure', '0');
INSERT INTO `itemstock` VALUES ('86', 'diamond', '0');
INSERT INTO `itemstock` VALUES ('87', 'diamondc', '1369');
INSERT INTO `itemstock` VALUES ('88', 'sugar', '1');
INSERT INTO `itemstock` VALUES ('89', 'sugarcane', '1');
INSERT INTO `itemstock` VALUES ('90', 'plank', '1');
INSERT INTO `itemstock` VALUES ('91', 'banana', '1');
INSERT INTO `itemstock` VALUES ('92', 'ginger', '1');
INSERT INTO `itemstock` VALUES ('93', 'iron_r', '0');
INSERT INTO `itemstock` VALUES ('94', 'copper_r', '6');
INSERT INTO `itemstock` VALUES ('95', 'salt_r', '0');
INSERT INTO `itemstock` VALUES ('96', 'glass', '5');
INSERT INTO `itemstock` VALUES ('97', 'heroinu', '1');
INSERT INTO `itemstock` VALUES ('98', 'heroinp', '0');
INSERT INTO `itemstock` VALUES ('99', 'moonshine', '0');
INSERT INTO `itemstock` VALUES ('100', 'scotch_0', '1');
INSERT INTO `itemstock` VALUES ('101', 'scotch_1', '1');
INSERT INTO `itemstock` VALUES ('102', 'scotch_2', '0');
INSERT INTO `itemstock` VALUES ('103', 'scotch_3', '0');
INSERT INTO `itemstock` VALUES ('104', 'shovel', '0');
INSERT INTO `itemstock` VALUES ('105', 'rum_0', '1');
INSERT INTO `itemstock` VALUES ('106', 'rum_1', '1');
INSERT INTO `itemstock` VALUES ('107', 'rum_2', '1');
INSERT INTO `itemstock` VALUES ('108', 'rum_3', '0');
INSERT INTO `itemstock` VALUES ('109', 'gingerale_0', '0');
INSERT INTO `itemstock` VALUES ('110', 'gingerale_1', '1');
INSERT INTO `itemstock` VALUES ('111', 'gingerale_2', '1');
INSERT INTO `itemstock` VALUES ('112', 'gingerale_3', '1');
INSERT INTO `itemstock` VALUES ('113', 'whiskeyr_0', '1');
INSERT INTO `itemstock` VALUES ('114', 'whiskeyr_1', '1');
INSERT INTO `itemstock` VALUES ('115', 'whiskeyr_2', '1');
INSERT INTO `itemstock` VALUES ('116', 'whiskeyr_3', '1');
INSERT INTO `itemstock` VALUES ('117', 'whiskeyc_0', '1');
INSERT INTO `itemstock` VALUES ('118', 'whiskeyc_1', '1');
INSERT INTO `itemstock` VALUES ('119', 'whiskeyc_2', '1');
INSERT INTO `itemstock` VALUES ('120', 'whiskeyc_3', '1');
INSERT INTO `itemstock` VALUES ('121', 'oilp', '0');
INSERT INTO `itemstock` VALUES ('122', 'dog', '0');
INSERT INTO `itemstock` VALUES ('123', 'goat', '1');
INSERT INTO `itemstock` VALUES ('124', 'chicken', '1');
INSERT INTO `itemstock` VALUES ('125', 'sheep', '0');
INSERT INTO `itemstock` VALUES ('126', 'snake', '1');
INSERT INTO `itemstock` VALUES ('127', 'rabbit', '1');
INSERT INTO `itemstock` VALUES ('128', 'dogp', '0');
INSERT INTO `itemstock` VALUES ('129', 'goatp', '0');
INSERT INTO `itemstock` VALUES ('130', 'chickenp', '1');
INSERT INTO `itemstock` VALUES ('131', 'sheepp', '0');
INSERT INTO `itemstock` VALUES ('132', 'snakep', '1');
INSERT INTO `itemstock` VALUES ('133', 'rabbitp', '1');
INSERT INTO `itemstock` VALUES ('134', 'rubber', '118');
INSERT INTO `itemstock` VALUES ('135', 'apple', '581');
INSERT INTO `itemstock` VALUES ('136', 'berry', '1');
INSERT INTO `itemstock` VALUES ('137', 'salema', '1');
INSERT INTO `itemstock` VALUES ('138', 'ornate', '1');
INSERT INTO `itemstock` VALUES ('139', 'mackerel', '1');
INSERT INTO `itemstock` VALUES ('140', 'tuna', '1');
INSERT INTO `itemstock` VALUES ('141', 'mullet', '1');
INSERT INTO `itemstock` VALUES ('142', 'catshark', '1');
INSERT INTO `itemstock` VALUES ('143', 'water', '0');
INSERT INTO `itemstock` VALUES ('144', 'turtle', '0');
INSERT INTO `itemstock` VALUES ('145', 'turtlesoup', '1');
INSERT INTO `itemstock` VALUES ('146', 'donuts', '0');
INSERT INTO `itemstock` VALUES ('147', 'timber', '1');
INSERT INTO `itemstock` VALUES ('148', 'campfire', '1');
INSERT INTO `itemstock` VALUES ('149', 'woodaxe', '0');
INSERT INTO `itemstock` VALUES ('150', 'coffee', '0');
INSERT INTO `itemstock` VALUES ('151', 'tbacon', '0');
INSERT INTO `itemstock` VALUES ('152', 'lootcrate1', '0');
INSERT INTO `itemstock` VALUES ('153', 'lockpick', '0');
INSERT INTO `itemstock` VALUES ('154', 'pickaxe', '1');
INSERT INTO `itemstock` VALUES ('155', 'roadCone', '1');
INSERT INTO `itemstock` VALUES ('156', 'roadBarrier', '1');
INSERT INTO `itemstock` VALUES ('157', 'cncBarrier', '1');
INSERT INTO `itemstock` VALUES ('158', 'cncBarrierL', '1');
INSERT INTO `itemstock` VALUES ('159', 'barGate', '1');
INSERT INTO `itemstock` VALUES ('160', 'bagwallshort', '1');
INSERT INTO `itemstock` VALUES ('161', 'bagwalllong', '1');
INSERT INTO `itemstock` VALUES ('162', 'bagwallround', '1');
INSERT INTO `itemstock` VALUES ('163', 'razorwire', '1');
INSERT INTO `itemstock` VALUES ('164', 'redgull', '0');
INSERT INTO `itemstock` VALUES ('165', 'towRope', '0');
INSERT INTO `itemstock` VALUES ('166', 'fuelF', '0');
INSERT INTO `itemstock` VALUES ('167', 'peach', '549');
INSERT INTO `itemstock` VALUES ('168', 'spikeStrip', '0');
INSERT INTO `itemstock` VALUES ('169', 'yeast', '0');
INSERT INTO `itemstock` VALUES ('170', 'phos', '0');
INSERT INTO `itemstock` VALUES ('171', 'hydro', '0');
INSERT INTO `itemstock` VALUES ('172', 'pcp', '1');
INSERT INTO `itemstock` VALUES ('173', 'protest', '1');
INSERT INTO `itemstock` VALUES ('174', 'ziptie', '0');
INSERT INTO `itemstock` VALUES ('175', 'storage1', '0');
INSERT INTO `itemstock` VALUES ('176', 'storage2', '0');
INSERT INTO `itemstock` VALUES ('177', 'agingbarrel', '0');
INSERT INTO `itemstock` VALUES ('178', 'speedbomb', '1');
INSERT INTO `itemstock` VALUES ('179', 'doubloon', '41');
INSERT INTO `itemstock` VALUES ('180', 'silverpiece', '176');
INSERT INTO `itemstock` VALUES ('181', 'goldbar', '0');
INSERT INTO `itemstock` VALUES ('182', 'dirty_money', '2970210');
INSERT INTO `itemstock` VALUES ('183', 'ruby', '100');
INSERT INTO `itemstock` VALUES ('184', 'pearl', '0');
INSERT INTO `itemstock` VALUES ('185', 'treasure', '1');
INSERT INTO `itemstock` VALUES ('186', 'diamondf', '0');
INSERT INTO `itemstock` VALUES ('187', 'nitro', '15');
INSERT INTO `itemstock` VALUES ('188', 'drill', '0');
INSERT INTO `itemstock` VALUES ('189', 'skinningknife', '1');
INSERT INTO `itemstock` VALUES ('190', 'blindfold', '5');
INSERT INTO `itemstock` VALUES ('191', 'redburger', '0');
INSERT INTO `itemstock` VALUES ('192', 'soda', '1');
INSERT INTO `itemstock` VALUES ('193', 'beer', '1');
INSERT INTO `itemstock` VALUES ('194', 'debitcard', '1');
INSERT INTO `itemstock` VALUES ('195', 'excavator', '0');
INSERT INTO `itemstock` VALUES ('196', 'adrenalineShot', '0');
INSERT INTO `itemstock` VALUES ('197', 'tracker', '0');
INSERT INTO `itemstock` VALUES ('198', 'caralarm', '0');
INSERT INTO `itemstock` VALUES ('199', 'airalarm', '1');
INSERT INTO `itemstock` VALUES ('200', 'defib', '0');
INSERT INTO `itemstock` VALUES ('201', 'bloodbag', '0');
INSERT INTO `itemstock` VALUES ('202', 'painkillers', '0');
INSERT INTO `itemstock` VALUES ('203', 'splint', '0');
INSERT INTO `itemstock` VALUES ('204', 'vammo', '1');
INSERT INTO `itemstock` VALUES ('205', 'tent1', '1');
INSERT INTO `itemstock` VALUES ('206', 'tent2', '1');
INSERT INTO `itemstock` VALUES ('207', 'boltCutter', '0');
INSERT INTO `itemstock` VALUES ('208', 'demoCharge', '0');
INSERT INTO `itemstock` VALUES ('209', 'marijuana', '0');
INSERT INTO `itemstock` VALUES ('210', 'marijuanam', '0');
INSERT INTO `itemstock` VALUES ('211', 'meth', '0');
INSERT INTO `itemstock` VALUES ('212', 'toasty', '1');
INSERT INTO `itemstock` VALUES ('213', 'sandwich', '1');
INSERT INTO `itemstock` VALUES ('214', 'cocaine', '1');
INSERT INTO `itemstock` VALUES ('215', 'cocainep', '0');
INSERT INTO `itemstock` VALUES ('216', 'cocaleaf', '1');
INSERT INTO `itemstock` VALUES ('217', 'cocapaste', '1');
INSERT INTO `itemstock` VALUES ('218', 'cocainepure', '0');
INSERT INTO `itemstock` VALUES ('219', 'diamond', '0');
INSERT INTO `itemstock` VALUES ('220', 'diamondc', '1369');
INSERT INTO `itemstock` VALUES ('221', 'sugar', '1');
INSERT INTO `itemstock` VALUES ('222', 'sugarcane', '1');
INSERT INTO `itemstock` VALUES ('223', 'plank', '1');
INSERT INTO `itemstock` VALUES ('224', 'banana', '1');
INSERT INTO `itemstock` VALUES ('225', 'ginger', '1');
INSERT INTO `itemstock` VALUES ('226', 'iron_r', '0');
INSERT INTO `itemstock` VALUES ('227', 'copper_r', '6');
INSERT INTO `itemstock` VALUES ('228', 'salt_r', '0');
INSERT INTO `itemstock` VALUES ('229', 'glass', '5');
INSERT INTO `itemstock` VALUES ('230', 'heroinu', '1');
INSERT INTO `itemstock` VALUES ('231', 'heroinp', '0');
INSERT INTO `itemstock` VALUES ('232', 'moonshine', '0');
INSERT INTO `itemstock` VALUES ('233', 'scotch_0', '1');
INSERT INTO `itemstock` VALUES ('234', 'scotch_1', '1');
INSERT INTO `itemstock` VALUES ('235', 'scotch_2', '0');
INSERT INTO `itemstock` VALUES ('236', 'scotch_3', '0');
INSERT INTO `itemstock` VALUES ('237', 'shovel', '0');
INSERT INTO `itemstock` VALUES ('238', 'rum_0', '1');
INSERT INTO `itemstock` VALUES ('239', 'rum_1', '1');
INSERT INTO `itemstock` VALUES ('240', 'rum_2', '1');
INSERT INTO `itemstock` VALUES ('241', 'rum_3', '0');
INSERT INTO `itemstock` VALUES ('242', 'gingerale_0', '0');
INSERT INTO `itemstock` VALUES ('243', 'gingerale_1', '1');
INSERT INTO `itemstock` VALUES ('244', 'gingerale_2', '1');
INSERT INTO `itemstock` VALUES ('245', 'gingerale_3', '1');
INSERT INTO `itemstock` VALUES ('246', 'whiskeyr_0', '1');
INSERT INTO `itemstock` VALUES ('247', 'whiskeyr_1', '1');
INSERT INTO `itemstock` VALUES ('248', 'whiskeyr_2', '1');
INSERT INTO `itemstock` VALUES ('249', 'whiskeyr_3', '1');
INSERT INTO `itemstock` VALUES ('250', 'whiskeyc_0', '1');
INSERT INTO `itemstock` VALUES ('251', 'whiskeyc_1', '1');
INSERT INTO `itemstock` VALUES ('252', 'whiskeyc_2', '1');
INSERT INTO `itemstock` VALUES ('253', 'whiskeyc_3', '1');
INSERT INTO `itemstock` VALUES ('254', 'oilp', '0');
INSERT INTO `itemstock` VALUES ('255', 'dog', '0');
INSERT INTO `itemstock` VALUES ('256', 'goat', '1');
INSERT INTO `itemstock` VALUES ('257', 'chicken', '1');
INSERT INTO `itemstock` VALUES ('258', 'sheep', '0');
INSERT INTO `itemstock` VALUES ('259', 'snake', '1');
INSERT INTO `itemstock` VALUES ('260', 'rabbit', '1');
INSERT INTO `itemstock` VALUES ('261', 'dogp', '0');
INSERT INTO `itemstock` VALUES ('262', 'goatp', '0');
INSERT INTO `itemstock` VALUES ('263', 'chickenp', '1');
INSERT INTO `itemstock` VALUES ('264', 'sheepp', '0');
INSERT INTO `itemstock` VALUES ('265', 'snakep', '1');
INSERT INTO `itemstock` VALUES ('266', 'rabbitp', '1');
INSERT INTO `itemstock` VALUES ('267', 'rubber', '118');
INSERT INTO `itemstock` VALUES ('268', 'C_Hatchback_01_F', '0');
INSERT INTO `itemstock` VALUES ('269', 'C_SUV_01_F', '0');
INSERT INTO `itemstock` VALUES ('270', 'C_Hatchback_01_sport_F', '0');
INSERT INTO `itemstock` VALUES ('271', 'C_Van_01_transport_F', '0');
INSERT INTO `itemstock` VALUES ('272', 'C_Van_01_box_F', '0');
INSERT INTO `itemstock` VALUES ('273', 'I_Truck_02_transport_F', '0');
INSERT INTO `itemstock` VALUES ('274', 'I_Truck_02_covered_F', '0');
INSERT INTO `itemstock` VALUES ('275', 'B_Truck_01_transport_F', '0');
INSERT INTO `itemstock` VALUES ('276', 'B_Truck_01_box_F', '0');
INSERT INTO `itemstock` VALUES ('277', 'C_Heli_Light_01_civil_F', '83');
INSERT INTO `itemstock` VALUES ('278', 'B_Heli_Light_01_F', '0');
INSERT INTO `itemstock` VALUES ('279', 'I_Heli_Transport_02_F', '46');
INSERT INTO `itemstock` VALUES ('280', 'O_Heli_Light_02_unarmed_F', '367');

-- ----------------------------
-- Table structure for storage
-- ----------------------------
DROP TABLE IF EXISTS `storage`;
CREATE TABLE `storage` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `houseid` varchar(32) NOT NULL,
  `worldspace` varchar(64) DEFAULT NULL,
  `container` text,
  `classname` varchar(12) DEFAULT NULL,
  `contents` text,
  `virtual` varchar(10) DEFAULT NULL,
  `houseworldspace` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of storage
-- ----------------------------

-- ----------------------------
-- Table structure for turf
-- ----------------------------
DROP TABLE IF EXISTS `turf`;
CREATE TABLE `turf` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gang` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of turf
-- ----------------------------
INSERT INTO `turf` VALUES ('1', '0');
INSERT INTO `turf` VALUES ('2', '0');
INSERT INTO `turf` VALUES ('3', '0');

-- ----------------------------
-- Table structure for vehicle_mem
-- ----------------------------
DROP TABLE IF EXISTS `vehicle_mem`;
CREATE TABLE `vehicle_mem` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `pid` varchar(32) NOT NULL,
  `plate` int(20) NOT NULL,
  `worldspace` varchar(64) DEFAULT NULL,
  `dir` varchar(15) NOT NULL,
  `inventory` text NOT NULL,
  `info_owners` text NOT NULL,
  `dbInfo` text NOT NULL,
  `fuel` int(10) NOT NULL DEFAULT '0',
  `damage` int(10) NOT NULL DEFAULT '0',
  `class` varchar(32) NOT NULL,
  `insured` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of vehicle_mem
-- ----------------------------

-- ----------------------------
-- Table structure for votes
-- ----------------------------
DROP TABLE IF EXISTS `votes`;
CREATE TABLE `votes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `playerid` varchar(50) NOT NULL,
  `candidate` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of votes
-- ----------------------------

-- ----------------------------
-- Table structure for wars
-- ----------------------------
DROP TABLE IF EXISTS `wars`;
CREATE TABLE `wars` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gang1` int(11) DEFAULT NULL,
  `gang2` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of wars
-- ----------------------------

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
-- Procedure structure for updateLifeHouses
-- ----------------------------
DROP PROCEDURE IF EXISTS `updateLifeHouses`;
DELIMITER ;;
CREATE DEFINER=`Luon`@`localhost` PROCEDURE `updateLifeHouses`()
BEGIN
 -- UPDATE `houses` WHERE `owners` = 0;
END
;;
DELIMITER ;
