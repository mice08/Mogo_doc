/*  Database name `mogoroomdb` ������Ϣ��ϵ��ṹ*/
use mogoroomdb;


ALTER TABLE mesg_templet
ADD COLUMN `businessType` int(2) DEFAULT NULL COMMENT '模板的业务类型 1:预约,2:预订,3签约,4:售后,5:资金,10:其他';

