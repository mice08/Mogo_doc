/***********************************
 *****ȱʧsoDoneCode����ʷ���������ֶ�******* 
 ***********************************/
use mogoroomdb;

ALTER TABLE comm_sysconfig_his ADD COLUMN soDoneCode INT(11) COMMENT 'ҵ���¼ID(�ο�comm_business_record���id)';
ALTER TABLE comm_sysconfig_his ADD COLUMN operType char(1) COMMENT '����ʷ��¼����ʱ�Ĳ�������(A:���� U:���� D:ɾ��)'

ALTER TABLE flat_community_his ADD COLUMN operType char(1) COMMENT '����ʷ��¼����ʱ�Ĳ�������(A:���� U:���� D:ɾ��)'

ALTER TABLE flat_flat_tag_his ADD COLUMN soDoneCode INT(11) COMMENT 'ҵ���¼ID(�ο�comm_business_record���id)';
ALTER TABLE flat_flat_tag_his ADD COLUMN operType char(1) COMMENT '����ʷ��¼����ʱ�Ĳ�������(A:���� U:���� D:ɾ��)'

ALTER TABLE flat_flats_his ADD COLUMN soDoneCode INT(11) COMMENT 'ҵ���¼ID(�ο�comm_business_record���id)';

ALTER TABLE flat_flats_prototype_his ADD COLUMN soDoneCode INT(11) COMMENT 'ҵ���¼ID(�ο�comm_business_record���id)';

ALTER TABLE flat_price_his ADD COLUMN soDoneCode INT(11) COMMENT 'ҵ���¼ID(�ο�comm_business_record���id)';
ALTER TABLE flat_price_his ADD COLUMN operType char(1) COMMENT '����ʷ��¼����ʱ�Ĳ�������(A:���� U:���� D:ɾ��)'

ALTER TABLE flat_room_his ADD COLUMN soDoneCode INT(11) COMMENT 'ҵ���¼ID(�ο�comm_business_record���id)';

ALTER TABLE flat_room_prototype_his ADD COLUMN soDoneCode INT(11) COMMENT 'ҵ���¼ID(�ο�comm_business_record���id)';

ALTER TABLE loan_renter_contract_his ADD COLUMN soDoneCode INT(11) COMMENT 'ҵ���¼ID(�ο�comm_business_record���id)';

ALTER TABLE user_bankcard_his ADD COLUMN soDoneCode INT(11) COMMENT 'ҵ���¼ID(�ο�comm_business_record���id)';

ALTER TABLE user_employee_info_his ADD COLUMN operType char(1) COMMENT '����ʷ��¼����ʱ�Ĳ�������(A:���� U:���� D:ɾ��)';

ALTER TABLE user_info_his ADD COLUMN operType char(1) COMMENT '����ʷ��¼����ʱ�Ĳ�������(A:���� U:���� D:ɾ��)';

ALTER TABLE user_landlord_his ADD COLUMN operType char(1) COMMENT '����ʷ��¼����ʱ�Ĳ�������(A:���� U:���� D:ɾ��)';

ALTER TABLE user_landlord_info_his ADD COLUMN operType char(1) COMMENT '����ʷ��¼����ʱ�Ĳ�������(A:���� U:���� D:ɾ��)';

ALTER TABLE user_renter_info_his ADD COLUMN operType char(1) COMMENT '����ʷ��¼����ʱ�Ĳ�������(A:���� U:���� D:ɾ��)';

ALTER TABLE user_usertype_his ADD COLUMN operType char(1) COMMENT '����ʷ��¼����ʱ�Ĳ�������(A:���� U:���� D:ɾ��)';