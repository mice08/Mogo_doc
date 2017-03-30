ALTER TABLE `comm_dictionary`
	ADD COLUMN `enValue` VARCHAR(40) NOT NULL COMMENT 'enum类中每一项的字段名' AFTER `fcode`;
UPDATE comm_dictionary SET envalue=code;
