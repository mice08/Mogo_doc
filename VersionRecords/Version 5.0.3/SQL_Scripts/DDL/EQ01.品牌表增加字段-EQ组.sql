/* Database name `mogoroomdb` ��Ʒ�Ʊ������ֶ�*/
use mogoroomdb;

<<<<<<< HEAD
ALTER TABLE `brand` ADD offlineTime TIMESTAMP NULL COMMENT '����ʱ��' AFTER approvalComments;
ALTER TABLE `brand` ADD onlineTime TIMESTAMP NULL COMMENT '����ʱ��' AFTER approvalComments;
=======
ALTER TABLE `brand` ADD offlineTime TIMESTAMP NULL COMMENT '����ʱ��' AFTER approvalTime;
ALTER TABLE `brand` ADD onlineTime TIMESTAMP NULL COMMENT '����ʱ��' AFTER approvalTime;
>>>>>>> 141ffdafc0aee79a8f81c51cbcce567d5afa5ca8
