/* Database name `mogoroomdb` , Ʒ�Ʊ����֤�����ֶ� */
use mogoroomdb

ALTER TABLE  `brand`   ADD COLUMN `certificateNo`  varchar(20)  NULL COMMENT '֤����'  AFTER  `landlordId`;