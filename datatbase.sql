{\rtf1\ansi\ansicpg1252\cocoartf2761
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0

\f0\fs24 \cf0 - Adminer 5.4.2 MySQL 9.6.0 dump\
\
SET NAMES utf8;\
SET time_zone = '+00:00';\
SET foreign_key_checks = 0;\
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';\
\
DROP TABLE IF EXISTS `acccomments`;\
CREATE TABLE `acccomments` (\
  `userID` int NOT NULL,\
  `userName` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,\
  `comment` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,\
  `secret` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'unused',\
  `commentID` int NOT NULL AUTO_INCREMENT,\
  `timestamp` int NOT NULL,\
  `likes` int NOT NULL DEFAULT '0',\
  `isSpam` int NOT NULL DEFAULT '0',\
  PRIMARY KEY (`commentID`),\
  KEY `userID` (`userID`),\
  KEY `timestamp` (`timestamp`)\
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;\
\
INSERT INTO `acccomments` (`userID`, `userName`, `comment`, `secret`, `commentID`, `timestamp`, `likes`, `isSpam`) VALUES\
(1,	'voidgod',	'aWYgeW91IGRhcmUgdG8gZGVmeSBtZSB5b3Ugd2lsbCBnZXQgc3J0dWNrIGJ5IGxpZ2h0aW5nIG9mIGJhbg==',	'unused',	1,	1773631013,	0,	0);\
\
DROP TABLE IF EXISTS `accounts`;\
CREATE TABLE `accounts` (\
  `userName` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,\
  `password` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,\
  `gjp2` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,\
  `email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,\
  `accountID` int NOT NULL AUTO_INCREMENT,\
  `isAdmin` int NOT NULL DEFAULT '0',\
  `mS` int NOT NULL DEFAULT '0',\
  `frS` int NOT NULL DEFAULT '0',\
  `cS` int NOT NULL DEFAULT '0',\
  `youtubeurl` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',\
  `twitter` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',\
  `twitch` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',\
  `salt` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',\
  `registerDate` int NOT NULL DEFAULT '0',\
  `friendsCount` int NOT NULL DEFAULT '0',\
  `discordID` bigint NOT NULL DEFAULT '0',\
  `discordLinkReq` bigint NOT NULL DEFAULT '0',\
  `isActive` tinyint(1) NOT NULL DEFAULT '0',\
  `isMod` int DEFAULT '0',\
  `modlevel` int DEFAULT '0',\
  `isBanned` tinyint(1) DEFAULT '0',\
  `banReason` text COLLATE utf8mb3_unicode_ci,\
  `banExpire` bigint DEFAULT '0',\
  `isMuted` tinyint(1) DEFAULT '0',\
  `muteExpire` bigint DEFAULT '0',\
  PRIMARY KEY (`accountID`),\
  UNIQUE KEY `userName` (`userName`),\
  KEY `isAdmin` (`isAdmin`),\
  KEY `frS` (`frS`),\
  KEY `discordID` (`discordID`),\
  KEY `discordLinkReq` (`discordLinkReq`),\
  KEY `friendsCount` (`friendsCount`),\
  KEY `isActive` (`isActive`)\
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;\
\
INSERT INTO `accounts` (`userName`, `password`, `gjp2`, `email`, `accountID`, `isAdmin`, `mS`, `frS`, `cS`, `youtubeurl`, `twitter`, `twitch`, `salt`, `registerDate`, `friendsCount`, `discordID`, `discordLinkReq`, `isActive`, `isMod`, `modlevel`, `isBanned`, `banReason`, `banExpire`, `isMuted`, `muteExpire`) VALUES\
('voidgod',	'$2y$10$AuTQxx//vMoPn9ESZTPGEuY1tahlRCVIUMEIwKb99sskO2DtAkYrW',	'$2y$10$k4Dv/rxowV09Tg2dSQAlyuSRT3SD1eiXmuGLiscNlwghjjZfL7c46',	'zionfarrow14@gmail.com',	1,	1,	0,	0,	0,	'',	'',	'',	'',	1773630940,	0,	0,	0,	1,	1,	3,	0,	NULL,	0,	0,	0);\
\
DROP TABLE IF EXISTS `actions`;\
CREATE TABLE `actions` (\
  `ID` int NOT NULL AUTO_INCREMENT,\
  `type` int NOT NULL DEFAULT '0',\
  `value` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '0',\
  `timestamp` int NOT NULL DEFAULT '0',\
  `value2` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '0',\
  `value3` int NOT NULL DEFAULT '0',\
  `value4` int NOT NULL DEFAULT '0',\
  `value5` int NOT NULL DEFAULT '0',\
  `value6` int NOT NULL DEFAULT '0',\
  `account` int NOT NULL DEFAULT '0',\
  PRIMARY KEY (`ID`),\
  KEY `type` (`type`),\
  KEY `value` (`value`),\
  KEY `value2` (`value2`),\
  KEY `timestamp` (`timestamp`)\
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;\
\
INSERT INTO `actions` (`ID`, `type`, `value`, `timestamp`, `value2`, `value3`, `value4`, `value5`, `value6`, `account`) VALUES\
(1,	2,	'voidgod',	1773630956,	'192.168.30.244',	0,	0,	0,	0,	0),\
(2,	9,	'0',	1773630960,	'0',	0,	0,	0,	0,	1),\
(3,	2,	'voidgod',	1773788103,	'192.168.30.244',	0,	0,	0,	0,	0),\
(4,	9,	'0',	1773788106,	'-99999',	-99999,	-99999,	-99999,	-99999,	1),\
(5,	9,	'0',	1773788561,	'0',	0,	0,	0,	0,	1);\
\
DROP TABLE IF EXISTS `actions_downloads`;\
CREATE TABLE `actions_downloads` (\
  `id` int NOT NULL AUTO_INCREMENT,\
  `levelID` int NOT NULL,\
  `ip` varbinary(16) NOT NULL,\
  `uploadDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,\
  PRIMARY KEY (`id`),\
  KEY `levelID` (`levelID`,`ip`,`uploadDate`) USING BTREE\
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;\
\
INSERT INTO `actions_downloads` (`id`, `levelID`, `ip`, `uploadDate`) VALUES\
(1,	1,	UNHEX('C0A81EF4'),	'2026-03-17 14:54:31');\
\
DROP TABLE IF EXISTS `actions_likes`;\
CREATE TABLE `actions_likes` (\
  `id` int NOT NULL AUTO_INCREMENT,\
  `itemID` int NOT NULL,\
  `type` int NOT NULL,\
  `isLike` tinyint NOT NULL,\
  `ip` varbinary(16) NOT NULL,\
  `uploadDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,\
  PRIMARY KEY (`id`),\
  KEY `levelID` (`itemID`,`type`,`isLike`,`ip`,`uploadDate`) USING BTREE\
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;\
\
\
DROP TABLE IF EXISTS `bannedips`;\
CREATE TABLE `bannedips` (\
  `IP` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '127.0.0.1',\
  `ID` int NOT NULL AUTO_INCREMENT,\
  PRIMARY KEY (`ID`)\
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;\
\
\
DROP TABLE IF EXISTS `blocks`;\
CREATE TABLE `blocks` (\
  `ID` int NOT NULL AUTO_INCREMENT,\
  `person1` int NOT NULL,\
  `person2` int NOT NULL,\
  PRIMARY KEY (`ID`),\
  UNIQUE KEY `ID` (`ID`),\
  KEY `person1` (`person1`),\
  KEY `person2` (`person2`)\
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;\
\
\
DROP TABLE IF EXISTS `comments`;\
CREATE TABLE `comments` (\
  `userID` int NOT NULL,\
  `userName` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,\
  `comment` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,\
  `secret` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'none',\
  `levelID` int NOT NULL,\
  `commentID` int NOT NULL AUTO_INCREMENT,\
  `timestamp` int NOT NULL,\
  `likes` int NOT NULL DEFAULT '0',\
  `percent` int NOT NULL DEFAULT '0',\
  `isSpam` tinyint(1) NOT NULL DEFAULT '0',\
  PRIMARY KEY (`commentID`),\
  KEY `levelID` (`levelID`),\
  KEY `userID` (`userID`),\
  KEY `likes` (`likes`)\
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;\
\
INSERT INTO `comments` (`userID`, `userName`, `comment`, `secret`, `levelID`, `commentID`, `timestamp`, `likes`, `percent`, `isSpam`) VALUES\
(1,	'voidgod',	'IW11dGUgdm9pZGdvZA==',	'none',	1,	1,	1773632835,	0,	0,	0);\
\
DROP TABLE IF EXISTS `cpshares`;\
CREATE TABLE `cpshares` (\
  `shareID` int NOT NULL AUTO_INCREMENT,\
  `levelID` int NOT NULL,\
  `userID` int NOT NULL,\
  PRIMARY KEY (`shareID`),\
  KEY `levelID` (`levelID`)\
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;\
\
\
DROP TABLE IF EXISTS `dailyfeatures`;\
CREATE TABLE `dailyfeatures` (\
  `feaID` int NOT NULL AUTO_INCREMENT,\
  `levelID` int NOT NULL,\
  `timestamp` int NOT NULL,\
  `type` int NOT NULL DEFAULT '0',\
  PRIMARY KEY (`feaID`),\
  KEY `type` (`type`),\
  KEY `timestamp` (`timestamp`)\
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;\
\
\
DROP TABLE IF EXISTS `friendreqs`;\
CREATE TABLE `friendreqs` (\
  `accountID` int NOT NULL,\
  `toAccountID` int NOT NULL,\
  `comment` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,\
  `uploadDate` int NOT NULL,\
  `ID` int NOT NULL AUTO_INCREMENT,\
  `isNew` tinyint(1) NOT NULL DEFAULT '1',\
  PRIMARY KEY (`ID`),\
  KEY `toAccountID` (`toAccountID`),\
  KEY `accountID` (`accountID`),\
  KEY `uploadDate` (`uploadDate`)\
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;\
\
\
DROP TABLE IF EXISTS `friendships`;\
CREATE TABLE `friendships` (\
  `ID` int NOT NULL AUTO_INCREMENT,\
  `person1` int NOT NULL,\
  `person2` int NOT NULL,\
  `isNew1` int NOT NULL,\
  `isNew2` int NOT NULL,\
  PRIMARY KEY (`ID`),\
  KEY `person1` (`person1`),\
  KEY `person2` (`person2`),\
  KEY `isNew1` (`isNew1`),\
  KEY `isNew2` (`isNew2`)\
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;\
\
\
DROP TABLE IF EXISTS `gauntlets`;\
CREATE TABLE `gauntlets` (\
  `ID` int NOT NULL AUTO_INCREMENT,\
  `level1` int NOT NULL,\
  `level2` int NOT NULL,\
  `level3` int NOT NULL,\
  `level4` int NOT NULL,\
  `level5` int NOT NULL,\
  PRIMARY KEY (`ID`),\
  KEY `level5` (`level5`)\
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;\
\
\
DROP TABLE IF EXISTS `levels`;\
CREATE TABLE `levels` (\
  `gameVersion` int NOT NULL,\
  `binaryVersion` int NOT NULL DEFAULT '0',\
  `userName` mediumtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,\
  `levelID` int NOT NULL AUTO_INCREMENT,\
  `levelName` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,\
  `levelDesc` mediumtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,\
  `levelVersion` int NOT NULL,\
  `levelLength` int NOT NULL DEFAULT '0',\
  `audioTrack` int NOT NULL,\
  `auto` int NOT NULL,\
  `password` int NOT NULL,\
  `original` int NOT NULL,\
  `twoPlayer` int NOT NULL DEFAULT '0',\
  `songID` int NOT NULL DEFAULT '0',\
  `songIDs` varchar(2048) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '',\
  `sfxIDs` varchar(2048) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '',\
  `objects` int NOT NULL DEFAULT '0',\
  `coins` int NOT NULL DEFAULT '0',\
  `requestedStars` int NOT NULL DEFAULT '0',\
  `extraString` mediumtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,\
  `levelString` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,\
  `levelInfo` mediumtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,\
  `secret` mediumtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,\
  `starDifficulty` int NOT NULL DEFAULT '0' COMMENT '0=N/A 10=EASY 20=NORMAL 30=HARD 40=HARDER 50=INSANE 50=AUTO 50=DEMON',\
  `downloads` int NOT NULL DEFAULT '300',\
  `likes` int NOT NULL DEFAULT '100',\
  `starDemon` int NOT NULL DEFAULT '0',\
  `starAuto` tinyint NOT NULL DEFAULT '0',\
  `starStars` int NOT NULL DEFAULT '0',\
  `uploadDate` bigint NOT NULL,\
  `updateDate` bigint NOT NULL,\
  `rateDate` bigint NOT NULL DEFAULT '0',\
  `starCoins` int NOT NULL DEFAULT '0',\
  `starFeatured` int NOT NULL DEFAULT '0',\
  `starHall` int NOT NULL DEFAULT '0',\
  `starEpic` int NOT NULL DEFAULT '0',\
  `starDemonDiff` int NOT NULL DEFAULT '0',\
  `userID` int NOT NULL,\
  `extID` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,\
  `unlisted` int NOT NULL,\
  `originalReup` int NOT NULL DEFAULT '0' COMMENT 'used for levelReupload.php',\
  `hostname` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,\
  `isCPShared` int NOT NULL DEFAULT '0',\
  `isDeleted` int NOT NULL DEFAULT '0',\
  `isLDM` int NOT NULL DEFAULT '0',\
  `unlisted2` int NOT NULL DEFAULT '0',\
  `wt` int NOT NULL DEFAULT '0',\
  `wt2` int NOT NULL DEFAULT '0',\
  `ts` int NOT NULL DEFAULT '0',\
  `settingsString` mediumtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,\
  PRIMARY KEY (`levelID`),\
  KEY `levelID` (`levelID`),\
  KEY `levelName` (`levelName`),\
  KEY `starDifficulty` (`starDifficulty`),\
  KEY `starFeatured` (`starFeatured`),\
  KEY `starEpic` (`starEpic`),\
  KEY `starDemonDiff` (`starDemonDiff`),\
  KEY `userID` (`userID`),\
  KEY `likes` (`likes`),\
  KEY `downloads` (`downloads`),\
  KEY `starStars` (`starStars`),\
  KEY `songID` (`songID`),\
  KEY `audioTrack` (`audioTrack`),\
  KEY `levelLength` (`levelLength`),\
  KEY `twoPlayer` (`twoPlayer`),\
  KEY `starDemon` (`starDemon`),\
  KEY `starAuto` (`starAuto`),\
  KEY `extID` (`extID`),\
  KEY `uploadDate` (`uploadDate`),\
  KEY `updateDate` (`updateDate`),\
  KEY `starCoins` (`starCoins`),\
  KEY `coins` (`coins`),\
  KEY `password` (`password`),\
  KEY `originalReup` (`originalReup`),\
  KEY `original` (`original`),\
  KEY `unlisted` (`unlisted`),\
  KEY `isCPShared` (`isCPShared`),\
  KEY `gameVersion` (`gameVersion`),\
  KEY `rateDate` (`rateDate`),\
  KEY `objects` (`objects`),\
  KEY `unlisted2` (`unlisted2`)\
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;\
\
INSERT INTO `levels` (`gameVersion`, `binaryVersion`, `userName`, `levelID`, `levelName`, `levelDesc`, `levelVersion`, `levelLength`, `audioTrack`, `auto`, `password`, `original`, `twoPlayer`, `songID`, `songIDs`, `sfxIDs`, `objects`, `coins`, `requestedStars`, `extraString`, `levelString`, `levelInfo`, `secret`, `starDifficulty`, `downloads`, `likes`, `starDemon`, `starAuto`, `starStars`, `uploadDate`, `updateDate`, `rateDate`, `starCoins`, `starFeatured`, `starHall`, `starEpic`, `starDemonDiff`, `userID`, `extID`, `unlisted`, `originalReup`, `hostname`, `isCPShared`, `isDeleted`, `isLDM`, `unlisted2`, `wt`, `wt2`, `ts`, `settingsString`) VALUES\
(22,	45,	'voidgod',	1,	'gg',	'Z2c=',	1,	5,	0,	0,	0,	0,	0,	0,	'',	'',	43,	0,	0,	'29_29_29_40_29_29_29_29_29_29_29_29_29_29_29_29',	'',	'',	'Wmfd2893gb7',	10,	301,	100,	0,	0,	2,	1773631137,	1773631137,	1773788123,	0,	0,	0,	0,	0,	1,	'1',	0,	0,	'192.168.30.244',	0,	0,	0,	0,	62,	0,	900,	'');\
\
DROP TABLE IF EXISTS `levelscores`;\
CREATE TABLE `levelscores` (\
  `scoreID` int NOT NULL AUTO_INCREMENT,\
  `accountID` int NOT NULL,\
  `levelID` int NOT NULL,\
  `percent` int NOT NULL,\
  `uploadDate` int NOT NULL,\
  `attempts` int NOT NULL DEFAULT '0',\
  `coins` int NOT NULL DEFAULT '0',\
  `clicks` int NOT NULL DEFAULT '0',\
  `time` int NOT NULL DEFAULT '0',\
  `progresses` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,\
  `dailyID` int NOT NULL DEFAULT '0',\
  PRIMARY KEY (`scoreID`),\
  KEY `levelID` (`levelID`),\
  KEY `accountID` (`accountID`)\
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;\
\
\
DROP TABLE IF EXISTS `links`;\
CREATE TABLE `links` (\
  `ID` int NOT NULL AUTO_INCREMENT,\
  `accountID` int NOT NULL,\
  `targetAccountID` int NOT NULL,\
  `server` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,\
  `timestamp` int NOT NULL,\
  `userID` int NOT NULL,\
  `targetUserID` int NOT NULL,\
  PRIMARY KEY (`ID`),\
  KEY `targetUserID` (`targetUserID`),\
  KEY `targetAccountID` (`targetAccountID`),\
  KEY `server` (`server`)\
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;\
\
\
DROP TABLE IF EXISTS `lists`;\
CREATE TABLE `lists` (\
  `listID` int NOT NULL AUTO_INCREMENT,\
  `listName` varchar(2048) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,\
  `listDesc` varchar(2048) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,\
  `listVersion` int NOT NULL DEFAULT '1',\
  `accountID` int NOT NULL,\
  `downloads` int NOT NULL DEFAULT '0',\
  `starDifficulty` int NOT NULL,\
  `likes` int NOT NULL DEFAULT '0',\
  `starFeatured` int NOT NULL DEFAULT '0',\
  `starStars` int NOT NULL DEFAULT '0',\
  `listlevels` varchar(2048) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,\
  `countForReward` int NOT NULL DEFAULT '0',\
  `uploadDate` int NOT NULL DEFAULT '0',\
  `updateDate` int NOT NULL DEFAULT '0',\
  `original` int NOT NULL DEFAULT '0',\
  `unlisted` int NOT NULL DEFAULT '0',\
  PRIMARY KEY (`listID`)\
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;\
\
\
DROP TABLE IF EXISTS `mappacks`;\
CREATE TABLE `mappacks` (\
  `ID` int NOT NULL AUTO_INCREMENT,\
  `name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,\
  `levels` varchar(512) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'entered as "ID of level 1, ID of level 2, ID of level 3" for example "13,14,15" (without the "s)',\
  `stars` int NOT NULL,\
  `coins` int NOT NULL,\
  `difficulty` int NOT NULL,\
  `rgbcolors` varchar(11) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'entered as R,G,B',\
  `colors2` varchar(11) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'none',\
  PRIMARY KEY (`ID`)\
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;\
\
\
DROP TABLE IF EXISTS `messages`;\
CREATE TABLE `messages` (\
  `userID` int NOT NULL,\
  `userName` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,\
  `body` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,\
  `subject` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,\
  `accID` int NOT NULL,\
  `messageID` int NOT NULL AUTO_INCREMENT,\
  `toAccountID` int NOT NULL,\
  `timestamp` int NOT NULL,\
  `secret` varchar(25) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'unused',\
  `isNew` int NOT NULL DEFAULT '0',\
  PRIMARY KEY (`messageID`),\
  KEY `toAccountID` (`toAccountID`),\
  KEY `accID` (`accID`)\
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;\
\
INSERT INTO `messages` (`userID`, `userName`, `body`, `subject`, `accID`, `messageID`, `toAccountID`, `timestamp`, `secret`, `isNew`) VALUES\
(1,	'voidgod',	'ZVxbRhFYRxJUEVxRQUZQVlESRlRfQBJBXhFCV0dYV00STF5ERhJUUlJbR1tFHRRbQRFSVVwVU1QUQVRXVFhLFVVUWFdBVFUa',	'I0FSR09OIyA1MDYwNjIzMjQ=',	1,	1,	33640286,	1773790422,	'Wmfd2893gb7',	0);\
\
SET NAMES utf8mb4;\
\
DROP TABLE IF EXISTS `mod_actions`;\
CREATE TABLE `mod_actions` (\
  `id` int NOT NULL AUTO_INCREMENT,\
  `moderator` varchar(50) DEFAULT NULL,\
  `target` varchar(50) DEFAULT NULL,\
  `action` varchar(50) DEFAULT NULL,\
  `reason` text,\
  `time` bigint DEFAULT NULL,\
  PRIMARY KEY (`id`)\
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;\
\
\
DROP TABLE IF EXISTS `modactions`;\
CREATE TABLE `modactions` (\
  `ID` int NOT NULL AUTO_INCREMENT,\
  `type` int NOT NULL DEFAULT '0',\
  `value` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '0',\
  `timestamp` int NOT NULL DEFAULT '0',\
  `value2` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '0',\
  `value3` int NOT NULL DEFAULT '0',\
  `value4` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '0',\
  `value5` int NOT NULL DEFAULT '0',\
  `value6` int NOT NULL DEFAULT '0',\
  `account` int NOT NULL DEFAULT '0',\
  `value7` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '0',\
  PRIMARY KEY (`ID`),\
  KEY `account` (`account`),\
  KEY `type` (`type`),\
  KEY `value3` (`value3`)\
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;\
\
INSERT INTO `modactions` (`ID`, `type`, `value`, `timestamp`, `value2`, `value3`, `value4`, `value5`, `value6`, `account`, `value7`) VALUES\
(1,	1,	'easy',	1773633083,	'2',	1,	'0',	0,	0,	1,	'0'),\
(2,	1,	'easy',	1773788123,	'2',	1,	'0',	0,	0,	1,	'0');\
\
DROP TABLE IF EXISTS `modipperms`;\
CREATE TABLE `modipperms` (\
  `categoryID` int NOT NULL AUTO_INCREMENT,\
  `actionFreeCopy` int NOT NULL DEFAULT '0',\
  PRIMARY KEY (`categoryID`)\
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;\
\
\
DROP TABLE IF EXISTS `modips`;\
CREATE TABLE `modips` (\
  `ID` int NOT NULL AUTO_INCREMENT,\
  `IP` varchar(69) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,\
  `isMod` int NOT NULL,\
  `accountID` int NOT NULL,\
  `modipCategory` int NOT NULL,\
  PRIMARY KEY (`ID`),\
  KEY `accountID` (`accountID`),\
  KEY `IP` (`IP`)\
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;\
\
\
DROP TABLE IF EXISTS `platscores`;\
CREATE TABLE `platscores` (\
  `ID` int NOT NULL AUTO_INCREMENT,\
  `accountID` int NOT NULL DEFAULT '0',\
  `levelID` int NOT NULL DEFAULT '0',\
  `time` int NOT NULL DEFAULT '0',\
  `points` int NOT NULL DEFAULT '0',\
  `timestamp` int NOT NULL DEFAULT '0',\
  PRIMARY KEY (`ID`)\
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;\
\
\
DROP TABLE IF EXISTS `quests`;\
CREATE TABLE `quests` (\
  `ID` int NOT NULL AUTO_INCREMENT,\
  `type` int NOT NULL,\
  `amount` int NOT NULL,\
  `reward` int NOT NULL,\
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,\
  PRIMARY KEY (`ID`)\
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;\
\
\
DROP TABLE IF EXISTS `reports`;\
CREATE TABLE `reports` (\
  `ID` int NOT NULL AUTO_INCREMENT,\
  `levelID` int NOT NULL,\
  `hostname` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,\
  PRIMARY KEY (`ID`),\
  KEY `levelID` (`levelID`),\
  KEY `hostname` (`hostname`)\
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;\
\
\
DROP TABLE IF EXISTS `roleassign`;\
CREATE TABLE `roleassign` (\
  `assignID` bigint NOT NULL AUTO_INCREMENT,\
  `roleID` bigint NOT NULL,\
  `accountID` bigint NOT NULL,\
  PRIMARY KEY (`assignID`),\
  KEY `roleID` (`roleID`),\
  KEY `accountID` (`accountID`)\
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;\
\
INSERT INTO `roleassign` (`assignID`, `roleID`, `accountID`) VALUES\
(1,	2,	1);\
\
DROP TABLE IF EXISTS `roles`;\
CREATE TABLE `roles` (\
  `roleID` bigint NOT NULL AUTO_INCREMENT,\
  `priority` int NOT NULL DEFAULT '0',\
  `roleName` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,\
  `commandRate` int NOT NULL DEFAULT '0',\
  `commandFeature` int NOT NULL DEFAULT '0',\
  `commandEpic` int NOT NULL DEFAULT '0',\
  `commandUnepic` int NOT NULL DEFAULT '0',\
  `commandVerifycoins` int NOT NULL DEFAULT '0',\
  `commandDaily` int NOT NULL DEFAULT '0',\
  `commandWeekly` int NOT NULL DEFAULT '0',\
  `commandDelete` int NOT NULL DEFAULT '0',\
  `commandSetacc` int NOT NULL DEFAULT '0',\
  `commandRenameOwn` int NOT NULL DEFAULT '1',\
  `commandRenameAll` int NOT NULL DEFAULT '0',\
  `commandPassOwn` int NOT NULL DEFAULT '1',\
  `commandPassAll` int NOT NULL DEFAULT '0',\
  `commandDescriptionOwn` int NOT NULL DEFAULT '1',\
  `commandDescriptionAll` int NOT NULL DEFAULT '0',\
  `commandPublicOwn` int NOT NULL DEFAULT '1',\
  `commandPublicAll` int NOT NULL DEFAULT '0',\
  `commandUnlistOwn` int NOT NULL DEFAULT '1',\
  `commandUnlistAll` int NOT NULL DEFAULT '0',\
  `commandSharecpOwn` int NOT NULL DEFAULT '1',\
  `commandSharecpAll` int NOT NULL DEFAULT '0',\
  `commandSongOwn` int NOT NULL DEFAULT '1',\
  `commandSongAll` int NOT NULL DEFAULT '0',\
  `profilecommandDiscord` int NOT NULL DEFAULT '1',\
  `actionRateDemon` int NOT NULL DEFAULT '0',\
  `actionRateStars` int NOT NULL DEFAULT '0',\
  `actionRateDifficulty` int NOT NULL DEFAULT '0',\
  `actionRequestMod` int NOT NULL DEFAULT '0',\
  `actionSuggestRating` int NOT NULL DEFAULT '0',\
  `actionDeleteComment` int NOT NULL DEFAULT '0',\
  `toolLeaderboardsban` int NOT NULL DEFAULT '0',\
  `toolPackcreate` int NOT NULL DEFAULT '0',\
  `toolQuestsCreate` int NOT NULL DEFAULT '0',\
  `toolModactions` int NOT NULL DEFAULT '0',\
  `toolSuggestlist` int NOT NULL DEFAULT '0',\
  `dashboardModTools` int NOT NULL DEFAULT '0',\
  `modipCategory` int NOT NULL DEFAULT '0',\
  `isDefault` int NOT NULL DEFAULT '0',\
  `commentColor` varchar(11) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '000,000,000',\
  `modBadgeLevel` int NOT NULL DEFAULT '0',\
  PRIMARY KEY (`roleID`),\
  KEY `priority` (`priority`),\
  KEY `toolModactions` (`toolModactions`)\
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;\
\
INSERT INTO `roles` (`roleID`, `priority`, `roleName`, `commandRate`, `commandFeature`, `commandEpic`, `commandUnepic`, `commandVerifycoins`, `commandDaily`, `commandWeekly`, `commandDelete`, `commandSetacc`, `commandRenameOwn`, `commandRenameAll`, `commandPassOwn`, `commandPassAll`, `commandDescriptionOwn`, `commandDescriptionAll`, `commandPublicOwn`, `commandPublicAll`, `commandUnlistOwn`, `commandUnlistAll`, `commandSharecpOwn`, `commandSharecpAll`, `commandSongOwn`, `commandSongAll`, `profilecommandDiscord`, `actionRateDemon`, `actionRateStars`, `actionRateDifficulty`, `actionRequestMod`, `actionSuggestRating`, `actionDeleteComment`, `toolLeaderboardsban`, `toolPackcreate`, `toolQuestsCreate`, `toolModactions`, `toolSuggestlist`, `dashboardModTools`, `modipCategory`, `isDefault`, `commentColor`, `modBadgeLevel`) VALUES\
(1,	10,	'Moderator',	0,	0,	0,	0,	0,	0,	0,	0,	0,	1,	0,	1,	0,	1,	0,	1,	0,	1,	0,	1,	0,	1,	0,	1,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	'175,255,0',	1),\
(2,	100,	'Elder Moderator',	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	0,	0,	'0,255,255',	2);\
\
DROP TABLE IF EXISTS `songs`;\
CREATE TABLE `songs` (\
  `ID` int NOT NULL AUTO_INCREMENT,\
  `name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,\
  `authorID` int NOT NULL,\
  `authorName` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,\
  `size` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,\
  `download` varchar(1337) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,\
  `hash` varchar(256) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',\
  `isDisabled` int NOT NULL DEFAULT '0',\
  `levelsCount` int NOT NULL DEFAULT '0',\
  `reuploadTime` int NOT NULL DEFAULT '0',\
  PRIMARY KEY (`ID`),\
  KEY `name` (`name`),\
  KEY `authorName` (`authorName`)\
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;\
\
INSERT INTO `songs` (`ID`, `name`, `authorID`, `authorName`, `size`, `download`, `hash`, `isDisabled`, `levelsCount`, `reuploadTime`) VALUES\
(1,	'645631_Lunar-Abyss?rlkey=1fcatca51nwwvfcjoaf0k6o5t&amp;st=9qlsvg35&amp;dl=0',	9,	'Reupload',	'5.3',	'https://dl.dropboxusercontent.com/scl/fi/gaeir0tf7d3n5ji1608ik/645631_Lunar-Abyss.mp3?rlkey=1fcatca51nwwvfcjoaf0k6o5t&st=9qlsvg35&dl=0',	'',	0,	0,	0);\
\
DROP TABLE IF EXISTS `suggest`;\
CREATE TABLE `suggest` (\
  `ID` int NOT NULL AUTO_INCREMENT,\
  `suggestBy` int NOT NULL DEFAULT '0',\
  `suggestLevelId` int NOT NULL DEFAULT '0',\
  `suggestDifficulty` int NOT NULL DEFAULT '0' COMMENT '0 - NA 10 - Easy 20 - Normal 30 - Hard 40 - Harder 50 - Insane/Demon/Auto',\
  `suggestStars` int NOT NULL DEFAULT '0',\
  `suggestFeatured` int NOT NULL DEFAULT '0',\
  `suggestAuto` int NOT NULL DEFAULT '0',\
  `suggestDemon` int NOT NULL DEFAULT '0',\
  `timestamp` int NOT NULL,\
  PRIMARY KEY (`ID`),\
  KEY `timestamp` (`timestamp`)\
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;\
\
\
DROP TABLE IF EXISTS `users`;\
CREATE TABLE `users` (\
  `isRegistered` int NOT NULL,\
  `userID` int NOT NULL AUTO_INCREMENT,\
  `extID` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,\
  `userName` varchar(69) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'undefined',\
  `stars` int NOT NULL DEFAULT '0',\
  `demons` int NOT NULL DEFAULT '0',\
  `icon` int NOT NULL DEFAULT '0',\
  `color1` int NOT NULL DEFAULT '0',\
  `color2` int NOT NULL DEFAULT '3',\
  `color3` int NOT NULL DEFAULT '0',\
  `iconType` int NOT NULL DEFAULT '0',\
  `coins` int NOT NULL DEFAULT '0',\
  `userCoins` int NOT NULL DEFAULT '0',\
  `special` int NOT NULL DEFAULT '0',\
  `gameVersion` int NOT NULL DEFAULT '0',\
  `secret` varchar(69) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'none',\
  `accIcon` int NOT NULL DEFAULT '0',\
  `accShip` int NOT NULL DEFAULT '0',\
  `accBall` int NOT NULL DEFAULT '0',\
  `accBird` int NOT NULL DEFAULT '0',\
  `accDart` int NOT NULL DEFAULT '0',\
  `accRobot` int DEFAULT '0',\
  `accGlow` int NOT NULL DEFAULT '0',\
  `accSwing` int NOT NULL DEFAULT '0',\
  `accJetpack` int NOT NULL DEFAULT '0',\
  `dinfo` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '',\
  `sinfo` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '',\
  `pinfo` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '',\
  `creatorPoints` double NOT NULL DEFAULT '0',\
  `IP` varchar(69) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '127.0.0.1',\
  `lastPlayed` int NOT NULL DEFAULT '0',\
  `diamonds` int NOT NULL DEFAULT '0',\
  `moons` int NOT NULL DEFAULT '0',\
  `orbs` int NOT NULL DEFAULT '0',\
  `completedLvls` int NOT NULL DEFAULT '0',\
  `accSpider` int NOT NULL DEFAULT '0',\
  `accExplosion` int NOT NULL DEFAULT '0',\
  `chest1time` int NOT NULL DEFAULT '0',\
  `chest2time` int NOT NULL DEFAULT '0',\
  `chest1count` int NOT NULL DEFAULT '0',\
  `chest2count` int NOT NULL DEFAULT '0',\
  `isBanned` int NOT NULL DEFAULT '0',\
  `isCreatorBanned` int NOT NULL DEFAULT '0',\
  `isAdmin` int NOT NULL DEFAULT '0',\
  `password` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',\
  PRIMARY KEY (`userID`),\
  KEY `userID` (`userID`),\
  KEY `userName` (`userName`),\
  KEY `stars` (`stars`),\
  KEY `demons` (`demons`),\
  KEY `coins` (`coins`),\
  KEY `userCoins` (`userCoins`),\
  KEY `gameVersion` (`gameVersion`),\
  KEY `creatorPoints` (`creatorPoints`),\
  KEY `diamonds` (`diamonds`),\
  KEY `orbs` (`orbs`),\
  KEY `completedLvls` (`completedLvls`),\
  KEY `isBanned` (`isBanned`),\
  KEY `isCreatorBanned` (`isCreatorBanned`),\
  KEY `extID` (`extID`),\
  KEY `IP` (`IP`),\
  KEY `isRegistered` (`isRegistered`)\
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;\
\
INSERT INTO `users` (`isRegistered`, `userID`, `extID`, `userName`, `stars`, `demons`, `icon`, `color1`, `color2`, `color3`, `iconType`, `coins`, `userCoins`, `special`, `gameVersion`, `secret`, `accIcon`, `accShip`, `accBall`, `accBird`, `accDart`, `accRobot`, `accGlow`, `accSwing`, `accJetpack`, `dinfo`, `sinfo`, `pinfo`, `creatorPoints`, `IP`, `lastPlayed`, `diamonds`, `moons`, `orbs`, `completedLvls`, `accSpider`, `accExplosion`, `chest1time`, `chest2time`, `chest1count`, `chest2count`, `isBanned`, `isCreatorBanned`, `isAdmin`, `password`) VALUES\
(1,	1,	'1',	'voidgod',	0,	0,	1,	0,	3,	-1,	0,	0,	0,	0,	22,	'Wmfd2893gb7',	1,	1,	1,	1,	1,	1,	0,	1,	1,	'',	'0,0,0,0,0,0,0,0',	'0,0,0,0,0,0,0',	0,	'192.168.30.244',	1773788561,	0,	0,	99999,	0,	1,	1,	0,	0,	0,	0,	0,	0,	1,	'');\
\
DROP TABLE IF EXISTS `warnings`;\
CREATE TABLE `warnings` (\
  `id` int NOT NULL AUTO_INCREMENT,\
  `username` varchar(50) DEFAULT NULL,\
  `moderator` varchar(50) DEFAULT NULL,\
  `reason` text,\
  `time` bigint DEFAULT NULL,\
  PRIMARY KEY (`id`)\
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;\
}