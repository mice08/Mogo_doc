/***********************************
 *****ȱʧsoDoneCode����ʷ���������ֶ�******* 
 ***********************************/
use mogoroomdb;

ALTER TABLE `comm_sysconfig_his` ADD COLUMN soDoneCode INT(11) COMMENT 'ҵ���¼ID(�ο�comm_business_record���id)';

ALTER TABLE `flat_flat_tag_his` ADD COLUMN soDoneCode INT(11) COMMENT 'ҵ���¼ID(�ο�comm_business_record���id)';

ALTER TABLE `flat_flats_his` ADD COLUMN soDoneCode INT(11) COMMENT 'ҵ���¼ID(�ο�comm_business_record���id)';

ALTER TABLE `flat_flats_prototype_his` ADD COLUMN soDoneCode INT(11) COMMENT 'ҵ���¼ID(�ο�comm_business_record���id)';

ALTER TABLE `flat_price_his` ADD COLUMN soDoneCode INT(11) COMMENT 'ҵ���¼ID(�ο�comm_business_record���id)';

ALTER TABLE `flat_room_his` ADD COLUMN soDoneCode INT(11) COMMENT 'ҵ���¼ID(�ο�comm_business_record���id)';

ALTER TABLE `flat_room_prototype_his` ADD COLUMN soDoneCode INT(11) COMMENT 'ҵ���¼ID(�ο�comm_business_record���id)';

ALTER TABLE `loan_renter_contract_his` ADD COLUMN soDoneCode INT(11) COMMENT 'ҵ���¼ID(�ο�comm_business_record���id)';

ALTER TABLE `user_bankcard_his` ADD COLUMN soDoneCode INT(11) COMMENT 'ҵ���¼ID(�ο�comm_business_record���id)';