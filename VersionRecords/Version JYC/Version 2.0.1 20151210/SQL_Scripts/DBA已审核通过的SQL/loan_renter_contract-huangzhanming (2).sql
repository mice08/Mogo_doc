/*  Database name `mogoroomdb` �������ͬ������2���ֶ�*/ 
use mogoroomdb; 

ALTER TABLE `loan_renter_contract` 
ADD COLUMN `retcode`  varchar(45)  NULL COMMENT '�Ŵ�ƽ̨����������',
ADD COLUMN `errmsg` varchar(150)  NULL COMMENT '�Ŵ�ƽ̨����������';
