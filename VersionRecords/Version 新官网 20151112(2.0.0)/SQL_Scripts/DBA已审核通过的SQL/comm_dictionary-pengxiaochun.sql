use mogoroomdb;
ALTER TABLE comm_dictionary ADD enValue VARCHAR(40) COMMENT 'enum����ÿһ����ֶ���';
UPDATE comm_dictionary t SET t.enValue = t.code;