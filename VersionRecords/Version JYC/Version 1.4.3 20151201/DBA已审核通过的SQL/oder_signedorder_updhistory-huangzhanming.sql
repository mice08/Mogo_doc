/* Database name `mogoroomdb`) ������н��˵���������˵���ֶ� */
use mogoroomdb;
ALTER TABLE `oder_signedorder_updhistory` 
ADD COLUMN `agencyFeeDesc` varchar(250) NULL COMMENT '�н��˵��',
ADD COLUMN `manageFeeDesc` varchar(250) NULL COMMENT '�����˵��';