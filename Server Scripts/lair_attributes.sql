/*
---------------------------------------------------------------------------------------
This source file is part of swgANH (Star Wars Galaxies - A New Hope - Server Emulator)
For more information, see http://www.swganh.org


Copyright (c) 2006 - 2009 The swgANH Team

---------------------------------------------------------------------------------------
*/

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

use swganh;


--
-- Definition of table `lair_attributes`
--

DROP TABLE IF EXISTS `lair_attributes`;
CREATE TABLE `lair_attributes` (
  `id` int(11) NOT NULL,
  `lair_id` bigint(20) NOT NULL,
  `attribute_id` int(11) default NULL,
  `value` char(255) default NULL,
  `order` int(11) default NULL,
  PRIMARY KEY  (`lair_id`,`id`),
  KEY `fk_lair_attributes_lairs` (`lair_id`),
  CONSTRAINT `fk_lair_attributes_lairs` FOREIGN KEY (`lair_id`) REFERENCES `lairs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lair_attributes`
--

/*!40000 ALTER TABLE `lair_attributes` DISABLE KEYS */;
INSERT INTO `lair_attributes` (`id`,`lair_id`,`attribute_id`,`value`,`order`) VALUES
 (1,1,2044,150,0),		-- Creature: XP
 (2,1,2045,0,0),		-- Lair: Fix position
 (3,1,2046,5,0),		-- Lair: Wave size
 (4,1,2047,3,0),		-- Lair: Passive waves
 (5,1,2048,60000,0),	-- Lair: Respawn delay
 (6,1,2049,30,0),		-- Lair: Max spawn distance
 (7,1,2050,60000,0),	-- Lair: Creatures spawn delay
 (8,1,221,'5000',1),	-- Health
 (9,1,225,'500',2),		-- Strength
 (10,1,218,'500',3),	-- Constitution

 
 (21,2,2044,180,0),		-- Creature: XP
 (22,2,2045,1,0),		-- Lair: Fix position
 (23,2,2046,1,0),		-- Lair: Wave size
 (24,2,2047,3,0),		-- Lair: Passive waves
 (25,2,2048,60000,0),	-- Lair: Respawn delay
 (26,2,2049,45,0),		-- Lair: Max spawn distance
 (27,2,2050,60000,0),	-- Lair: Creatures spawn delay
 (28,2,221,'5000',1),	-- Health
 (29,2,225,'500',2),	-- Strength
 (30,2,218,'500',3);	-- Constitution
  
/*!40000 ALTER TABLE `lair_attributes` ENABLE KEYS */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
