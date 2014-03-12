SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- Database: `hued`
-- Table structure for table `lights_adjusted`
DROP TABLE IF EXISTS `lights_adjusted`;
CREATE TABLE IF NOT EXISTS `lights_adjusted` (
  `primary_key` varchar(32) NOT NULL,
  `time` time NOT NULL,
  `light` tinyint(4) NOT NULL,
  `adjusted_bri` mediumint(9) NOT NULL DEFAULT '0',
  `adjusted_hue` mediumint(9) NOT NULL DEFAULT '0',
  `adjusted_sat` mediumint(9) NOT NULL DEFAULT '0',
  PRIMARY KEY (`primary_key`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Table structure for table `lights_scheduled`
DROP TABLE IF EXISTS `lights_scheduled`;
CREATE TABLE IF NOT EXISTS `lights_scheduled` (
  `primary_key` varchar(32) NOT NULL,
  `time` time NOT NULL,
  `light` tinyint(4) NOT NULL,
  `scheduled_bri` mediumint(9) NOT NULL DEFAULT '0',
  `scheduled_hue` mediumint(9) NOT NULL DEFAULT '0',
  `scheduled_sat` mediumint(9) NOT NULL DEFAULT '0',
  PRIMARY KEY (`primary_key`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Table structure for table `lights_smoothed`
DROP TABLE IF EXISTS `lights_smoothed`;
CREATE TABLE IF NOT EXISTS `lights_smoothed` (
  `primary_key` varchar(32) NOT NULL,
  `time` time NOT NULL,
  `light` tinyint(4) NOT NULL,
  `smoothed_bri` mediumint(9) NOT NULL DEFAULT '0',
  `smoothed_hue` mediumint(9) NOT NULL DEFAULT '0',
  `smoothed_sat` mediumint(9) NOT NULL DEFAULT '0',
  PRIMARY KEY (`primary_key`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Table structure for table `sun`
DROP TABLE IF EXISTS `sun`;
CREATE TABLE IF NOT EXISTS `sun` (
  `time` time NOT NULL,
  `percentage` tinyint(4) NOT NULL,
  PRIMARY KEY (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Table structure for table `weather`
DROP TABLE IF EXISTS `weather`;
CREATE TABLE IF NOT EXISTS `weather` (
  `time` time NOT NULL,
  `percentage` tinyint(4) NOT NULL,
  PRIMARY KEY (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Remove old table
DROP TABLE IF EXISTS `lights`;
