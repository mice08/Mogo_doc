/************����3.1.1�ű�************/
DELETE FROM	`comm_dictionary` WHERE	groupName = 'iOS_pay';
DELETE FROM	`comm_dictionary` WHERE	groupName = 'Android_pay';
INSERT INTO `comm_dictionary` ( `code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`, `enValue`) VALUES ('iOS_pay-1', 'iOS_pay', '1', '1', '֧����֧��', '1', NULL, 'alipay');
INSERT INTO `comm_dictionary` ( `code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`, `enValue`) VALUES ('iOS_pay-2', 'iOS_pay', '2', '2', '΢��֧��', '1', NULL, 'wx');
INSERT INTO `comm_dictionary` ( `code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`, `enValue`) VALUES ('iOS_pay-3', 'iOS_pay', '3', '3', 'ƻ��֧��', '1', NULL, 'applypay');
INSERT INTO `comm_dictionary` ( `code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`, `enValue`) VALUES ('Android_pay-1', 'Android_pay', '1', '1', '֧����֧��', '1', NULL, 'alipay');
INSERT INTO `comm_dictionary` ( `code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`, `enValue`) VALUES ('Android_pay2', 'Android_pay', '2', '2', '΢��֧��', '1', NULL, 'wx');