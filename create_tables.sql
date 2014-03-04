SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

CREATE TABLE IF NOT EXISTS `lights` (
`primary_key` varchar(32) NOT NULL,
`datetime` datetime NOT NULL,
`light` tinyint(4) NOT NULL,
`base_bri` smallint(6),
`base_hue` mediumint(9),
`base_sat` smallint(6),
`current_bri` smallint(6),
`current_hue` mediumint(9),
`current_sat` smallint(6),
PRIMARY KEY (`primary_key`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS `sun` (
`datetime` datetime NOT NULL,
`percentage` tinyint(4),
PRIMARY KEY (`datetime`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS `weather` (
`datetime` datetime NOT NULL,
`percentage` tinyint(4),
PRIMARY KEY (`datetime`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

