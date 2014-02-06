
CREATE TABLE IF NOT EXISTS `usersTable` (
	`ID` INT(11) NOT NULL AUTO_INCREMENT,
	`Name` VARCHAR(50) NOT NULL,
	`IntegerField` INT(11) NOT NULL DEFAULT 0,
  `DateField` DATE DEFAULT NULL,
	`TimeField` TIME DEFAULT NULL,
	`DateTimeField` DATETIME DEFAULT NULL,
	`isSystem` BOOLEAN DEFAULT TRUE,
  `xCoord` FLOAT DEFAULT TRUE,
  `AccountID` INT(11) DEFAULT NULL,
	PRIMARY KEY (`ID`)
)
  COLLATE='utf8_general_ci'
  ENGINE=MyISAM;

CREATE TABLE IF NOT EXISTS `accountsTable` (
    `AccountID` INT(11) NOT NULL AUTO_INCREMENT,
    `EmailField` VARCHAR(32) DEFAULT NULL,
    `PhoneField` VARCHAR(32) DEFAULT NULL,
	  PRIMARY KEY (`AccountID`)
)
  COLLATE='utf8_general_ci'
  ENGINE=MyISAM;

CREATE TABLE IF NOT EXISTS `tagsTable` (
    `TagID` INT(11) NOT NULL AUTO_INCREMENT,
    `TagName` VARCHAR(32) DEFAULT NULL,
    `TagWeight` INT(11) DEFAULT NULL,
	  PRIMARY KEY (`TagID`)
)
  COLLATE='utf8_general_ci'
  ENGINE=MyISAM;

CREATE TABLE IF NOT EXISTS `statusesTable` (
    `ID` INT(11) NOT NULL AUTO_INCREMENT,
    `StatusName` VARCHAR(32) DEFAULT NULL,
    `StatusWeight` INT(11) DEFAULT NULL,
    `userID` INT(11) DEFAULT NULL,
	  PRIMARY KEY (`ID`)
)
  COLLATE='utf8_general_ci'
  ENGINE=MyISAM;

CREATE TABLE IF NOT EXISTS `profilesTable` (
    `ID` INT(11) NOT NULL AUTO_INCREMENT,
    `Avatar` VARCHAR(32) DEFAULT NULL,
    `LikesCount` INT(11) DEFAULT NULL,
    `userID` INT(11) DEFAULT NULL,
	  PRIMARY KEY (`ID`)
)
  COLLATE='utf8_general_ci'
  ENGINE=MyISAM;

CREATE TABLE IF NOT EXISTS `passportsTable` (
  `ID` INT(11) NOT NULL AUTO_INCREMENT,
  `Series` INT(32) DEFAULT NULL,
  `Number` INT(11) DEFAULT NULL,
  `userID` INT(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
)
  COLLATE='utf8_general_ci'
  ENGINE=MyISAM;

CREATE TABLE IF NOT EXISTS `documentsTable` (
  `ID` INT(11) NOT NULL AUTO_INCREMENT,
  `Series` INT(32) DEFAULT NULL,
  `Number` INT(11) DEFAULT NULL,
  `userID` INT(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
)
  COLLATE='utf8_general_ci'
  ENGINE=MyISAM;

CREATE TABLE IF NOT EXISTS `users_tags_relations` (
    `ID` INT(11) NOT NULL AUTO_INCREMENT,
    `userID` INT(11) DEFAULT NULL,
    `tagID` INT(11) DEFAULT NULL,
	  PRIMARY KEY (`ID`)
)
  COLLATE='utf8_general_ci'
  ENGINE=MyISAM;

CREATE TABLE IF NOT EXISTS `tableWithoutPrimaryKey` (
    `Name` VARCHAR(32) DEFAULT NULL,
    `Value` INT(11) DEFAULT NULL,
    `Time` DATETIME DEFAULT NULL,
    `userID` INT(11) DEFAULT NULL
)
  COLLATE='utf8_general_ci'
  ENGINE=MyISAM;