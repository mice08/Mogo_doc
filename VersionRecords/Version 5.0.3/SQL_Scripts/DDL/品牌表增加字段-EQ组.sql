/* Database name `mogoroomdb` ��Ʒ�Ʊ������ֶ�*/
use mogoroomdb;

ALTER TABLE `brand` ADD offlineTime TIMESTAMP NULL COMMENT '����ʱ��' AFTER approvalComments;
ALTER TABLE `brand` ADD onlineTime TIMESTAMP NULL COMMENT '����ʱ��' AFTER approvalComments;