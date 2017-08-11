-- fix in apps 0.8 did not work, new correction applied in apps 0.9.0
REPLACE INTO `##flink` (`ID`, `DATE_CREATED`, `DATE_UPDATED`, `FORMIN`, `FORMOUT`, `ACTION`, `ICON`, `DISPLAYIN`, `MAPPING`, `FORMOUTALT`, `REDIRECT`, `ACTIONIN`, `ACTIONOUT`, `DISPLAYOUT`) VALUES(10, '0000-00-00 00:00:00', NULL, 49, 49, 'edit', 'edit.png', 'list', NULL, NULL, NULL, NULL, 'edit', 'form');
REPLACE INTO `##flink` (`ID`, `DATE_CREATED`, `DATE_UPDATED`, `FORMIN`, `FORMOUT`, `ACTION`, `ICON`, `DISPLAYIN`, `MAPPING`, `FORMOUTALT`, `REDIRECT`, `ACTIONIN`, `ACTIONOUT`, `DISPLAYOUT`) VALUES(11, '0000-00-00 00:00:00', NULL, 49, 49, 'delete', 'delete.png', 'list', NULL, NULL, NULL, NULL, 'delete', 'form');
REPLACE INTO `##flink` (`ID`, `DATE_CREATED`, `DATE_UPDATED`, `FORMIN`, `FORMOUT`, `ACTION`, `ICON`, `DISPLAYIN`, `MAPPING`, `FORMOUTALT`, `REDIRECT`, `ACTIONIN`, `ACTIONOUT`, `DISPLAYOUT`) VALUES(12, '0000-00-00 00:00:00', NULL, 49, 49, 'view', 'view.png', 'list', NULL, NULL, NULL, NULL, 'view', 'form');
REPLACE INTO `##flink` (`ID`, `DATE_CREATED`, `DATE_UPDATED`, `FORMIN`, `FORMOUT`, `ACTION`, `ICON`, `DISPLAYIN`, `MAPPING`, `FORMOUTALT`, `REDIRECT`, `ACTIONIN`, `ACTIONOUT`, `DISPLAYOUT`) VALUES(13, '2010-02-12 12:56:59', NULL, 49, 50, 'Rates', '', 'list', 'taxesid:id', '', '', NULL, '', 'list');
REPLACE INTO `##flink` (`ID`, `DATE_CREATED`, `DATE_UPDATED`, `FORMIN`, `FORMOUT`, `ACTION`, `ICON`, `DISPLAYIN`, `MAPPING`, `FORMOUTALT`, `REDIRECT`, `ACTIONIN`, `ACTIONOUT`, `DISPLAYOUT`) VALUES(14, '0000-00-00 00:00:00', NULL, 50, 50, 'edit', 'edit.png', 'list', NULL, NULL, NULL, NULL, 'edit', 'form');
REPLACE INTO `##flink` (`ID`, `DATE_CREATED`, `DATE_UPDATED`, `FORMIN`, `FORMOUT`, `ACTION`, `ICON`, `DISPLAYIN`, `MAPPING`, `FORMOUTALT`, `REDIRECT`, `ACTIONIN`, `ACTIONOUT`, `DISPLAYOUT`) VALUES(15, '0000-00-00 00:00:00', NULL, 50, 50, 'delete', 'delete.png', 'list', NULL, NULL, NULL, NULL, 'delete', 'form');
REPLACE INTO `##flink` (`ID`, `DATE_CREATED`, `DATE_UPDATED`, `FORMIN`, `FORMOUT`, `ACTION`, `ICON`, `DISPLAYIN`, `MAPPING`, `FORMOUTALT`, `REDIRECT`, `ACTIONIN`, `ACTIONOUT`, `DISPLAYOUT`) VALUES(16, '0000-00-00 00:00:00', NULL, 50, 50, 'view', 'view.png', 'list', NULL, NULL, NULL, NULL, 'view', 'form');
REPLACE INTO `##flink` (`ID`, `DATE_CREATED`, `DATE_UPDATED`, `FORMIN`, `FORMOUT`, `ACTION`, `ICON`, `DISPLAYIN`, `MAPPING`, `FORMOUTALT`, `REDIRECT`, `ACTIONIN`, `ACTIONOUT`, `DISPLAYOUT`) VALUES(17, '0000-00-00 00:00:00', NULL, 51, 51, 'edit', 'edit.png', 'list', NULL, NULL, NULL, NULL, 'edit', 'form');
REPLACE INTO `##flink` (`ID`, `DATE_CREATED`, `DATE_UPDATED`, `FORMIN`, `FORMOUT`, `ACTION`, `ICON`, `DISPLAYIN`, `MAPPING`, `FORMOUTALT`, `REDIRECT`, `ACTIONIN`, `ACTIONOUT`, `DISPLAYOUT`) VALUES(18, '0000-00-00 00:00:00', NULL, 51, 51, 'delete', 'delete.png', 'list', NULL, NULL, NULL, NULL, 'delete', 'form');
REPLACE INTO `##flink` (`ID`, `DATE_CREATED`, `DATE_UPDATED`, `FORMIN`, `FORMOUT`, `ACTION`, `ICON`, `DISPLAYIN`, `MAPPING`, `FORMOUTALT`, `REDIRECT`, `ACTIONIN`, `ACTIONOUT`, `DISPLAYOUT`) VALUES(19, '0000-00-00 00:00:00', NULL, 51, 51, 'view', 'view.png', 'list', NULL, NULL, NULL, NULL, 'view', 'form');

-- increase length of max product description setting
ALTER TABLE `settings` CHANGE `max_description` `max_description` SMALLINT( 3 ) NULL DEFAULT NULL; 

-- increase length of customer initials and middlename
ALTER TABLE `##customer` CHANGE `MIDDLENAME` `MIDDLENAME` VARCHAR( 20 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
CHANGE `INITIALS` `INITIALS` VARCHAR( 20 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '';

-- new setting to display categories underneath groups in products sidebar
UPDATE `##settings` SET `FASTCHECKOUT`=1,`REGISTERDOB`='',`SHOWCAT`=1,`DATE_UPDATED`='2010-03-14 17:26:01' WHERE `ID`=1;