/*  Database name `mogoroomdb` �������ͬ������2���ֶ�*/ 
use mogoroomdb; 

ALTER TABLE `loan_renter_contract` 
ADD COLUMN `confirmer` int(11) NULL COMMENT '������λȷ����',
ADD COLUMN `confirmTime` datetime NULL COMMENT '������λȷ��ʱ��';