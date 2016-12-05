/* Database name `mogoroomdb`) ，添加中介费说明、管理费说明字段 */
use mogoroomdb;
ALTER TABLE `oder_signedorder_updhistory` 
ADD COLUMN `agencyFeeDesc` varchar(250) NULL COMMENT '中介费说明',
ADD COLUMN `manageFeeDesc` varchar(250) NULL COMMENT '管理费说明';