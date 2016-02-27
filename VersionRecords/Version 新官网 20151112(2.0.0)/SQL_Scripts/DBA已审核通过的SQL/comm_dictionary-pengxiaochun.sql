use mogoroomdb;
ALTER TABLE comm_dictionary ADD enValue VARCHAR(40) COMMENT 'enum类中每一项的字段名';
UPDATE comm_dictionary t SET t.enValue = t.code;