/* Database name `mogoroomdb` ����ͱ�����Ƿ���֤�ֶ� */
use mogoroomdb;

ALTER TABLE `user_renter`   
ADD COLUMN `isVerified` INT(2) DEFAULT 1  NOT NULL  COMMENT '�Ƿ�ͨ���������֤(0:�� 1:��)';
