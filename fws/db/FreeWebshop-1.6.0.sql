--new set field in basket
ALTER TABLE `##basket` ADD `SET` VARCHAR( 30 ) NULL DEFAULT NULL;

--remove unused field "register date of birth"
ALTER TABLE `##settings` DROP `REGISTERDOB`;

--set animate image on
UPDATE `##settings` SET `ANIMATEIMAGE` = '1' WHERE `ID` =1;

--refresh links
TRUNCATE TABLE `##flink`;

ALTER TABLE `##flink` ADD UNIQUE (
`FORMIN` ,
`DISPLAYIN` ,
`FORMOUT` ,
`DISPLAYOUT` ,
`ACTION`
);

INSERT INTO `##flink` (`ID`, `DATE_CREATED`, `DATE_UPDATED`, `FORMIN`, `FORMOUT`, `ACTION`, `ICON`, `DISPLAYIN`, `MAPPING`, `FORMOUTALT`, `REDIRECT`, `ACTIONIN`, `ACTIONOUT`, `DISPLAYOUT`) VALUES(1, '0000-00-00 00:00:00', NULL, 1, 1, 'edit', 'edit.png', 'list', NULL, NULL, NULL, NULL, 'edit', 'form');
INSERT INTO `##flink` (`ID`, `DATE_CREATED`, `DATE_UPDATED`, `FORMIN`, `FORMOUT`, `ACTION`, `ICON`, `DISPLAYIN`, `MAPPING`, `FORMOUTALT`, `REDIRECT`, `ACTIONIN`, `ACTIONOUT`, `DISPLAYOUT`) VALUES(3, '0000-00-00 00:00:00', NULL, 2, 2, 'edit', 'edit.png', 'list', NULL, NULL, NULL, NULL, 'edit', 'form');
INSERT INTO `##flink` (`ID`, `DATE_CREATED`, `DATE_UPDATED`, `FORMIN`, `FORMOUT`, `ACTION`, `ICON`, `DISPLAYIN`, `MAPPING`, `FORMOUTALT`, `REDIRECT`, `ACTIONIN`, `ACTIONOUT`, `DISPLAYOUT`) VALUES(4, '0000-00-00 00:00:00', NULL, 1, 1, 'delete', 'delete.png', 'list', NULL, NULL, NULL, NULL, 'delete', 'form');
INSERT INTO `##flink` (`ID`, `DATE_CREATED`, `DATE_UPDATED`, `FORMIN`, `FORMOUT`, `ACTION`, `ICON`, `DISPLAYIN`, `MAPPING`, `FORMOUTALT`, `REDIRECT`, `ACTIONIN`, `ACTIONOUT`, `DISPLAYOUT`) VALUES(6, '0000-00-00 00:00:00', NULL, 2, 2, 'delete', 'delete.png', 'list', NULL, NULL, NULL, NULL, 'delete', 'form');
INSERT INTO `##flink` (`ID`, `DATE_CREATED`, `DATE_UPDATED`, `FORMIN`, `FORMOUT`, `ACTION`, `ICON`, `DISPLAYIN`, `MAPPING`, `FORMOUTALT`, `REDIRECT`, `ACTIONIN`, `ACTIONOUT`, `DISPLAYOUT`) VALUES(7, '0000-00-00 00:00:00', NULL, 1, 1, 'view', 'view.png', 'list', NULL, NULL, NULL, NULL, 'view', 'form');
INSERT INTO `##flink` (`ID`, `DATE_CREATED`, `DATE_UPDATED`, `FORMIN`, `FORMOUT`, `ACTION`, `ICON`, `DISPLAYIN`, `MAPPING`, `FORMOUTALT`, `REDIRECT`, `ACTIONIN`, `ACTIONOUT`, `DISPLAYOUT`) VALUES(8, '0000-00-00 00:00:00', NULL, 3, 3, 'view', 'view.png', 'list', NULL, NULL, NULL, NULL, 'view', 'form');
INSERT INTO `##flink` (`ID`, `DATE_CREATED`, `DATE_UPDATED`, `FORMIN`, `FORMOUT`, `ACTION`, `ICON`, `DISPLAYIN`, `MAPPING`, `FORMOUTALT`, `REDIRECT`, `ACTIONIN`, `ACTIONOUT`, `DISPLAYOUT`) VALUES(9, '0000-00-00 00:00:00', NULL, 2, 2, 'view', 'view.png', 'list', NULL, NULL, NULL, NULL, 'view', 'form');
INSERT INTO `##flink` (`ID`, `DATE_CREATED`, `DATE_UPDATED`, `FORMIN`, `FORMOUT`, `ACTION`, `ICON`, `DISPLAYIN`, `MAPPING`, `FORMOUTALT`, `REDIRECT`, `ACTIONIN`, `ACTIONOUT`, `DISPLAYOUT`) VALUES(10, '0000-00-00 00:00:00', NULL, 49, 49, 'edit', 'edit.png', 'list', NULL, NULL, NULL, NULL, 'edit', 'form');
INSERT INTO `##flink` (`ID`, `DATE_CREATED`, `DATE_UPDATED`, `FORMIN`, `FORMOUT`, `ACTION`, `ICON`, `DISPLAYIN`, `MAPPING`, `FORMOUTALT`, `REDIRECT`, `ACTIONIN`, `ACTIONOUT`, `DISPLAYOUT`) VALUES(11, '0000-00-00 00:00:00', NULL, 49, 49, 'delete', 'delete.png', 'list', NULL, NULL, NULL, NULL, 'delete', 'form');
INSERT INTO `##flink` (`ID`, `DATE_CREATED`, `DATE_UPDATED`, `FORMIN`, `FORMOUT`, `ACTION`, `ICON`, `DISPLAYIN`, `MAPPING`, `FORMOUTALT`, `REDIRECT`, `ACTIONIN`, `ACTIONOUT`, `DISPLAYOUT`) VALUES(12, '0000-00-00 00:00:00', NULL, 49, 49, 'view', 'view.png', 'list', NULL, NULL, NULL, NULL, 'view', 'form');
INSERT INTO `##flink` (`ID`, `DATE_CREATED`, `DATE_UPDATED`, `FORMIN`, `FORMOUT`, `ACTION`, `ICON`, `DISPLAYIN`, `MAPPING`, `FORMOUTALT`, `REDIRECT`, `ACTIONIN`, `ACTIONOUT`, `DISPLAYOUT`) VALUES(13, '2010-02-12 12:56:59', NULL, 49, 50, 'Rates', '', 'list', 'taxesid:id', '', '', NULL, '', 'list');
INSERT INTO `##flink` (`ID`, `DATE_CREATED`, `DATE_UPDATED`, `FORMIN`, `FORMOUT`, `ACTION`, `ICON`, `DISPLAYIN`, `MAPPING`, `FORMOUTALT`, `REDIRECT`, `ACTIONIN`, `ACTIONOUT`, `DISPLAYOUT`) VALUES(14, '0000-00-00 00:00:00', NULL, 50, 50, 'edit', 'edit.png', 'list', NULL, NULL, NULL, NULL, 'edit', 'form');
INSERT INTO `##flink` (`ID`, `DATE_CREATED`, `DATE_UPDATED`, `FORMIN`, `FORMOUT`, `ACTION`, `ICON`, `DISPLAYIN`, `MAPPING`, `FORMOUTALT`, `REDIRECT`, `ACTIONIN`, `ACTIONOUT`, `DISPLAYOUT`) VALUES(15, '0000-00-00 00:00:00', NULL, 50, 50, 'delete', 'delete.png', 'list', NULL, NULL, NULL, NULL, 'delete', 'form');
INSERT INTO `##flink` (`ID`, `DATE_CREATED`, `DATE_UPDATED`, `FORMIN`, `FORMOUT`, `ACTION`, `ICON`, `DISPLAYIN`, `MAPPING`, `FORMOUTALT`, `REDIRECT`, `ACTIONIN`, `ACTIONOUT`, `DISPLAYOUT`) VALUES(16, '0000-00-00 00:00:00', NULL, 50, 50, 'view', 'view.png', 'list', NULL, NULL, NULL, NULL, 'view', 'form');
INSERT INTO `##flink` (`ID`, `DATE_CREATED`, `DATE_UPDATED`, `FORMIN`, `FORMOUT`, `ACTION`, `ICON`, `DISPLAYIN`, `MAPPING`, `FORMOUTALT`, `REDIRECT`, `ACTIONIN`, `ACTIONOUT`, `DISPLAYOUT`) VALUES(24, '0000-00-00 00:00:00', NULL, 53, 53, 'edit', 'edit.png', 'list', NULL, NULL, NULL, NULL, 'edit', 'form');
INSERT INTO `##flink` (`ID`, `DATE_CREATED`, `DATE_UPDATED`, `FORMIN`, `FORMOUT`, `ACTION`, `ICON`, `DISPLAYIN`, `MAPPING`, `FORMOUTALT`, `REDIRECT`, `ACTIONIN`, `ACTIONOUT`, `DISPLAYOUT`) VALUES(25, '0000-00-00 00:00:00', NULL, 53, 53, 'delete', 'delete.png', 'list', NULL, NULL, NULL, NULL, 'delete', 'form');
INSERT INTO `##flink` (`ID`, `DATE_CREATED`, `DATE_UPDATED`, `FORMIN`, `FORMOUT`, `ACTION`, `ICON`, `DISPLAYIN`, `MAPPING`, `FORMOUTALT`, `REDIRECT`, `ACTIONIN`, `ACTIONOUT`, `DISPLAYOUT`) VALUES(27, '0000-00-00 00:00:00', NULL, 54, 54, 'edit', 'edit.png', 'list', NULL, NULL, NULL, NULL, 'edit', 'form');
INSERT INTO `##flink` (`ID`, `DATE_CREATED`, `DATE_UPDATED`, `FORMIN`, `FORMOUT`, `ACTION`, `ICON`, `DISPLAYIN`, `MAPPING`, `FORMOUTALT`, `REDIRECT`, `ACTIONIN`, `ACTIONOUT`, `DISPLAYOUT`) VALUES(28, '0000-00-00 00:00:00', NULL, 54, 54, 'delete', 'delete.png', 'list', NULL, NULL, NULL, NULL, 'delete', 'form');
INSERT INTO `##flink` (`ID`, `DATE_CREATED`, `DATE_UPDATED`, `FORMIN`, `FORMOUT`, `ACTION`, `ICON`, `DISPLAYIN`, `MAPPING`, `FORMOUTALT`, `REDIRECT`, `ACTIONIN`, `ACTIONOUT`, `DISPLAYOUT`) VALUES(29, '0000-00-00 00:00:00', NULL, 54, 54, 'view', 'view.png', 'list', NULL, NULL, NULL, NULL, 'view', 'form');
INSERT INTO `##flink` (`ID`, `DATE_CREATED`, `DATE_UPDATED`, `FORMIN`, `FORMOUT`, `ACTION`, `ICON`, `DISPLAYIN`, `MAPPING`, `FORMOUTALT`, `REDIRECT`, `ACTIONIN`, `ACTIONOUT`, `DISPLAYOUT`) VALUES(31, '0000-00-00 00:00:00', NULL, 59, 59, 'edit', 'edit.png', 'list', NULL, NULL, NULL, NULL, 'edit', 'form');
INSERT INTO `##flink` (`ID`, `DATE_CREATED`, `DATE_UPDATED`, `FORMIN`, `FORMOUT`, `ACTION`, `ICON`, `DISPLAYIN`, `MAPPING`, `FORMOUTALT`, `REDIRECT`, `ACTIONIN`, `ACTIONOUT`, `DISPLAYOUT`) VALUES(32, '0000-00-00 00:00:00', NULL, 59, 59, 'delete', 'delete.png', 'list', NULL, NULL, NULL, NULL, 'delete', 'form');
INSERT INTO `##flink` (`ID`, `DATE_CREATED`, `DATE_UPDATED`, `FORMIN`, `FORMOUT`, `ACTION`, `ICON`, `DISPLAYIN`, `MAPPING`, `FORMOUTALT`, `REDIRECT`, `ACTIONIN`, `ACTIONOUT`, `DISPLAYOUT`) VALUES(33, '0000-00-00 00:00:00', NULL, 59, 59, 'view', 'view.png', 'list', NULL, NULL, NULL, NULL, 'view', 'form');
INSERT INTO `##flink` (`ID`, `DATE_CREATED`, `DATE_UPDATED`, `FORMIN`, `FORMOUT`, `ACTION`, `ICON`, `DISPLAYIN`, `MAPPING`, `FORMOUTALT`, `REDIRECT`, `ACTIONIN`, `ACTIONOUT`, `DISPLAYOUT`) VALUES(34, '0000-00-00 00:00:00', NULL, 60, 60, 'edit', 'edit.png', 'list', NULL, NULL, NULL, NULL, 'edit', 'form');
INSERT INTO `##flink` (`ID`, `DATE_CREATED`, `DATE_UPDATED`, `FORMIN`, `FORMOUT`, `ACTION`, `ICON`, `DISPLAYIN`, `MAPPING`, `FORMOUTALT`, `REDIRECT`, `ACTIONIN`, `ACTIONOUT`, `DISPLAYOUT`) VALUES(35, '0000-00-00 00:00:00', NULL, 60, 60, 'delete', 'delete.png', 'list', NULL, NULL, NULL, NULL, 'delete', 'form');
INSERT INTO `##flink` (`ID`, `DATE_CREATED`, `DATE_UPDATED`, `FORMIN`, `FORMOUT`, `ACTION`, `ICON`, `DISPLAYIN`, `MAPPING`, `FORMOUTALT`, `REDIRECT`, `ACTIONIN`, `ACTIONOUT`, `DISPLAYOUT`) VALUES(36, '0000-00-00 00:00:00', NULL, 60, 60, 'view', 'view.png', 'list', NULL, NULL, NULL, NULL, 'view', 'form');
INSERT INTO `##flink` (`ID`, `DATE_CREATED`, `DATE_UPDATED`, `FORMIN`, `FORMOUT`, `ACTION`, `ICON`, `DISPLAYIN`, `MAPPING`, `FORMOUTALT`, `REDIRECT`, `ACTIONIN`, `ACTIONOUT`, `DISPLAYOUT`) VALUES(37, '0000-00-00 00:00:00', NULL, 61, 61, 'edit', 'edit.png', 'list', NULL, NULL, NULL, NULL, 'edit', 'form');
INSERT INTO `##flink` (`ID`, `DATE_CREATED`, `DATE_UPDATED`, `FORMIN`, `FORMOUT`, `ACTION`, `ICON`, `DISPLAYIN`, `MAPPING`, `FORMOUTALT`, `REDIRECT`, `ACTIONIN`, `ACTIONOUT`, `DISPLAYOUT`) VALUES(38, '0000-00-00 00:00:00', NULL, 61, 61, 'delete', 'delete.png', 'list', NULL, NULL, NULL, NULL, 'delete', 'form');
INSERT INTO `##flink` (`ID`, `DATE_CREATED`, `DATE_UPDATED`, `FORMIN`, `FORMOUT`, `ACTION`, `ICON`, `DISPLAYIN`, `MAPPING`, `FORMOUTALT`, `REDIRECT`, `ACTIONIN`, `ACTIONOUT`, `DISPLAYOUT`) VALUES(39, '0000-00-00 00:00:00', NULL, 61, 61, 'view', 'view.png', 'list', NULL, NULL, NULL, NULL, 'view', 'form');
INSERT INTO `##flink` (`ID`, `DATE_CREATED`, `DATE_UPDATED`, `FORMIN`, `FORMOUT`, `ACTION`, `ICON`, `DISPLAYIN`, `MAPPING`, `FORMOUTALT`, `REDIRECT`, `ACTIONIN`, `ACTIONOUT`, `DISPLAYOUT`) VALUES(40, '0000-00-00 00:00:00', NULL, 61, 61, 'add', 'add.png', 'list', NULL, NULL, NULL, NULL, 'add', 'form');
INSERT INTO `##flink` (`ID`, `DATE_CREATED`, `DATE_UPDATED`, `FORMIN`, `FORMOUT`, `ACTION`, `ICON`, `DISPLAYIN`, `MAPPING`, `FORMOUTALT`, `REDIRECT`, `ACTIONIN`, `ACTIONOUT`, `DISPLAYOUT`) VALUES(42, '0000-00-00 00:00:00', NULL, 66, 66, 'delete', 'delete.png', 'list', NULL, NULL, NULL, NULL, 'delete', 'form');
INSERT INTO `##flink` (`ID`, `DATE_CREATED`, `DATE_UPDATED`, `FORMIN`, `FORMOUT`, `ACTION`, `ICON`, `DISPLAYIN`, `MAPPING`, `FORMOUTALT`, `REDIRECT`, `ACTIONIN`, `ACTIONOUT`, `DISPLAYOUT`) VALUES(43, '0000-00-00 00:00:00', NULL, 66, 66, 'view', 'view.png', 'list', NULL, NULL, NULL, NULL, 'view', 'form');
INSERT INTO `##flink` (`ID`, `DATE_CREATED`, `DATE_UPDATED`, `FORMIN`, `FORMOUT`, `ACTION`, `ICON`, `DISPLAYIN`, `MAPPING`, `FORMOUTALT`, `REDIRECT`, `ACTIONIN`, `ACTIONOUT`, `DISPLAYOUT`) VALUES(44, '0000-00-00 00:00:00', NULL, 66, 66, 'add', 'add.png', 'list', NULL, NULL, NULL, NULL, 'add', 'form');
INSERT INTO `##flink` (`ID`, `DATE_CREATED`, `DATE_UPDATED`, `FORMIN`, `FORMOUT`, `ACTION`, `ICON`, `DISPLAYIN`, `MAPPING`, `FORMOUTALT`, `REDIRECT`, `ACTIONIN`, `ACTIONOUT`, `DISPLAYOUT`) VALUES(45, '2010-06-23 06:04:45', '2010-06-23 06:06:46', 61, 66, 'Category options', '', 'list', 'groupid:id', '', '', NULL, '', 'list');
INSERT INTO `##flink` (`ID`, `DATE_CREATED`, `DATE_UPDATED`, `FORMIN`, `FORMOUT`, `ACTION`, `ICON`, `DISPLAYIN`, `MAPPING`, `FORMOUTALT`, `REDIRECT`, `ACTIONIN`, `ACTIONOUT`, `DISPLAYOUT`) VALUES(46, '0000-00-00 00:00:00', NULL, 67, 67, 'edit', 'edit.png', 'list', NULL, NULL, NULL, NULL, 'edit', 'form');
INSERT INTO `##flink` (`ID`, `DATE_CREATED`, `DATE_UPDATED`, `FORMIN`, `FORMOUT`, `ACTION`, `ICON`, `DISPLAYIN`, `MAPPING`, `FORMOUTALT`, `REDIRECT`, `ACTIONIN`, `ACTIONOUT`, `DISPLAYOUT`) VALUES(47, '0000-00-00 00:00:00', NULL, 67, 67, 'delete', 'delete.png', 'list', NULL, NULL, NULL, NULL, 'delete', 'form');
INSERT INTO `##flink` (`ID`, `DATE_CREATED`, `DATE_UPDATED`, `FORMIN`, `FORMOUT`, `ACTION`, `ICON`, `DISPLAYIN`, `MAPPING`, `FORMOUTALT`, `REDIRECT`, `ACTIONIN`, `ACTIONOUT`, `DISPLAYOUT`) VALUES(49, '0000-00-00 00:00:00', NULL, 67, 67, 'add', 'add.png', 'list', NULL, NULL, NULL, NULL, 'add', 'form');
INSERT INTO `##flink` (`ID`, `DATE_CREATED`, `DATE_UPDATED`, `FORMIN`, `FORMOUT`, `ACTION`, `ICON`, `DISPLAYIN`, `MAPPING`, `FORMOUTALT`, `REDIRECT`, `ACTIONIN`, `ACTIONOUT`, `DISPLAYOUT`) VALUES(50, '0000-00-00 00:00:00', NULL, 54, 54, 'add', 'add.png', 'list', NULL, NULL, NULL, NULL, 'add', 'form');
INSERT INTO `##flink` (`ID`, `DATE_CREATED`, `DATE_UPDATED`, `FORMIN`, `FORMOUT`, `ACTION`, `ICON`, `DISPLAYIN`, `MAPPING`, `FORMOUTALT`, `REDIRECT`, `ACTIONIN`, `ACTIONOUT`, `DISPLAYOUT`) VALUES(51, '0000-00-00 00:00:00', NULL, 3, 3, 'edit', 'edit.png', 'list', NULL, NULL, NULL, NULL, 'edit', 'form');
INSERT INTO `##flink` (`ID`, `DATE_CREATED`, `DATE_UPDATED`, `FORMIN`, `FORMOUT`, `ACTION`, `ICON`, `DISPLAYIN`, `MAPPING`, `FORMOUTALT`, `REDIRECT`, `ACTIONIN`, `ACTIONOUT`, `DISPLAYOUT`) VALUES(52, '0000-00-00 00:00:00', NULL, 3, 3, 'delete', 'delete.png', 'list', NULL, NULL, NULL, NULL, 'delete', 'form');
INSERT INTO `##flink` (`ID`, `DATE_CREATED`, `DATE_UPDATED`, `FORMIN`, `FORMOUT`, `ACTION`, `ICON`, `DISPLAYIN`, `MAPPING`, `FORMOUTALT`, `REDIRECT`, `ACTIONIN`, `ACTIONOUT`, `DISPLAYOUT`) VALUES(53, '0000-00-00 00:00:00', NULL, 3, 3, 'add', 'add.png', 'list', NULL, NULL, NULL, NULL, 'add', 'form');
INSERT INTO `##flink` (`ID`, `DATE_CREATED`, `DATE_UPDATED`, `FORMIN`, `FORMOUT`, `ACTION`, `ICON`, `DISPLAYIN`, `MAPPING`, `FORMOUTALT`, `REDIRECT`, `ACTIONIN`, `ACTIONOUT`, `DISPLAYOUT`) VALUES(54, '0000-00-00 00:00:00', NULL, 49, 49, 'add', 'add.png', 'list', NULL, NULL, NULL, NULL, 'add', 'form');
INSERT INTO `##flink` (`ID`, `DATE_CREATED`, `DATE_UPDATED`, `FORMIN`, `FORMOUT`, `ACTION`, `ICON`, `DISPLAYIN`, `MAPPING`, `FORMOUTALT`, `REDIRECT`, `ACTIONIN`, `ACTIONOUT`, `DISPLAYOUT`) VALUES(55, '0000-00-00 00:00:00', NULL, 50, 50, 'add', 'add.png', 'list', NULL, NULL, NULL, NULL, 'add', 'form');
INSERT INTO `##flink` (`ID`, `DATE_CREATED`, `DATE_UPDATED`, `FORMIN`, `FORMOUT`, `ACTION`, `ICON`, `DISPLAYIN`, `MAPPING`, `FORMOUTALT`, `REDIRECT`, `ACTIONIN`, `ACTIONOUT`, `DISPLAYOUT`) VALUES(56, '0000-00-00 00:00:00', NULL, 59, 59, 'add', 'add.png', 'list', NULL, NULL, NULL, NULL, 'add', 'form');
INSERT INTO `##flink` (`ID`, `DATE_CREATED`, `DATE_UPDATED`, `FORMIN`, `FORMOUT`, `ACTION`, `ICON`, `DISPLAYIN`, `MAPPING`, `FORMOUTALT`, `REDIRECT`, `ACTIONIN`, `ACTIONOUT`, `DISPLAYOUT`) VALUES(57, '0000-00-00 00:00:00', NULL, 60, 60, 'add', 'add.png', 'list', NULL, NULL, NULL, NULL, 'add', 'form');
INSERT INTO `##flink` (`ID`, `DATE_CREATED`, `DATE_UPDATED`, `FORMIN`, `FORMOUT`, `ACTION`, `ICON`, `DISPLAYIN`, `MAPPING`, `FORMOUTALT`, `REDIRECT`, `ACTIONIN`, `ACTIONOUT`, `DISPLAYOUT`) VALUES(58, '0000-00-00 00:00:00', NULL, 66, 66, 'edit', 'edit.png', 'list', NULL, NULL, NULL, NULL, 'edit', 'form');
INSERT INTO `##flink` (`ID`, `DATE_CREATED`, `DATE_UPDATED`, `FORMIN`, `FORMOUT`, `ACTION`, `ICON`, `DISPLAYIN`, `MAPPING`, `FORMOUTALT`, `REDIRECT`, `ACTIONIN`, `ACTIONOUT`, `DISPLAYOUT`) VALUES(59, '0000-00-00 00:00:00', NULL, 69, 69, 'edit', 'edit.png', 'list', NULL, NULL, NULL, NULL, 'edit', 'form');
INSERT INTO `##flink` (`ID`, `DATE_CREATED`, `DATE_UPDATED`, `FORMIN`, `FORMOUT`, `ACTION`, `ICON`, `DISPLAYIN`, `MAPPING`, `FORMOUTALT`, `REDIRECT`, `ACTIONIN`, `ACTIONOUT`, `DISPLAYOUT`) VALUES(60, '0000-00-00 00:00:00', NULL, 69, 69, 'delete', 'delete.png', 'list', NULL, NULL, NULL, NULL, 'delete', 'form');
INSERT INTO `##flink` (`ID`, `DATE_CREATED`, `DATE_UPDATED`, `FORMIN`, `FORMOUT`, `ACTION`, `ICON`, `DISPLAYIN`, `MAPPING`, `FORMOUTALT`, `REDIRECT`, `ACTIONIN`, `ACTIONOUT`, `DISPLAYOUT`) VALUES(61, '0000-00-00 00:00:00', NULL, 69, 69, 'view', 'view.png', 'list', NULL, NULL, NULL, NULL, 'view', 'form');
INSERT INTO `##flink` (`ID`, `DATE_CREATED`, `DATE_UPDATED`, `FORMIN`, `FORMOUT`, `ACTION`, `ICON`, `DISPLAYIN`, `MAPPING`, `FORMOUTALT`, `REDIRECT`, `ACTIONIN`, `ACTIONOUT`, `DISPLAYOUT`) VALUES(62, '0000-00-00 00:00:00', NULL, 69, 69, 'add', 'add.png', 'list', NULL, NULL, NULL, NULL, 'add', 'form');
