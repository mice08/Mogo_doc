ALTER TABLE `comm_dictionary` CHANGE `code` `code` VARCHAR(40) CHARSET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '唯一标示 groupName-keyPro'; 
ALTER TABLE `comm_dictionary` CHANGE `groupName` `groupName` VARCHAR(40) CHARSET utf8 COLLATE utf8_general_ci NULL COMMENT '组标示'; 

INSERT INTO `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`) VALUES ('educationalBackground-1', 'educationalBackground', '1', '1', '博士'); 
INSERT INTO `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`) VALUES ('educationalBackground-2', 'educationalBackground', '2', '2', '硕士'); 
INSERT INTO `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`) VALUES ('educationalBackground-3', 'educationalBackground', '3', '3', '本科'); 
INSERT INTO `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`) VALUES ('educationalBackground-4', 'educationalBackground', '4', '4', '大专'); 
INSERT INTO `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`) VALUES ('educationalBackground-5', 'educationalBackground', '5', '5', '高中/中专'); 
INSERT INTO `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`) VALUES ('educationalBackground-6', 'educationalBackground', '6', '6', '高中以下'); 