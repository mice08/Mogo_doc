ALTER TABLE `comm_dictionary` CHANGE `code` `code` VARCHAR(40) CHARSET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Ψһ��ʾ groupName-keyPro'; 
ALTER TABLE `comm_dictionary` CHANGE `groupName` `groupName` VARCHAR(40) CHARSET utf8 COLLATE utf8_general_ci NULL COMMENT '���ʾ'; 

INSERT INTO `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`) VALUES ('educationalBackground-1', 'educationalBackground', '1', '1', '��ʿ'); 
INSERT INTO `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`) VALUES ('educationalBackground-2', 'educationalBackground', '2', '2', '˶ʿ'); 
INSERT INTO `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`) VALUES ('educationalBackground-3', 'educationalBackground', '3', '3', '����'); 
INSERT INTO `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`) VALUES ('educationalBackground-4', 'educationalBackground', '4', '4', '��ר'); 
INSERT INTO `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`) VALUES ('educationalBackground-5', 'educationalBackground', '5', '5', '����/��ר'); 
INSERT INTO `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`) VALUES ('educationalBackground-6', 'educationalBackground', '6', '6', '��������'); 