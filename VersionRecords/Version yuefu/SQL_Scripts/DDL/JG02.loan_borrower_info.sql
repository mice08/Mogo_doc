/* Database name `mogoroomdb` ��Ģ�����¸����������ֶ�*/
use mogoroomdb;

ALTER TABLE `loan_borrower_info` ADD contractPicGroupId int(11) DEFAULT NULL COMMENT 'ֽ�ʺ�ͬ��Ƭ��Id' AFTER picGroupId;    /*��������ͨ����Ÿ�������Լ��ͬ��*/
ALTER TABLE `loan_contract` ADD autoRepay int(1) DEFAULT '0' COMMENT '�����յ����Ƿ��Զ��ۿ�(0:�� 1:��)';