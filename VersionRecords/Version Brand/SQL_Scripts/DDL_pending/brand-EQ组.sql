/* Database name `mogoroomdb` , Ʒ�Ʊ����֤���š����ʱ���ֶ� */
use mogoroomdb

ALTER TABLE  `brand`   ADD COLUMN `certificateNo`  varchar(20)  NULL COMMENT '֤����'  AFTER  `landlordId`,
					ADD COLUMN `approvalTime`  datetime  DEFAULT CURRENT_TIMESTAMP COMMENT '���ʱ��' AFTER  `approvalComments`;