/*1.�����ֶγ���*/
ALTER TABLE `comm_dictionary` CHANGE `value` `value` VARCHAR(200) CHARSET utf8 COLLATE utf8_general_ci NULL COMMENT 'ֵ';

/*2.����һ���ֶ�����*/
INSERT INTO `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`) VALUES ('recommendRooms-1', 'recommendRooms', '1', '1', '15133,15128,15129,15130,15131,15134,15142,15143,15144,15234,15235,15240,15696'); 
