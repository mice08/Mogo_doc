/*聚有财资质新增备注*/

use mogoroomdb;

ALTER TABLE `loan_landlord_credit`
ADD COLUMN `alterRemark`  varchar(120) NULL COMMENT '暂停/恢复备注' AFTER `alterByType`,
ADD COLUMN `endRemark`  varchar(120) NULL COMMENT '终止备注' AFTER `endByType`;

ALTER TABLE `loan_landlord_credit_his`
ADD COLUMN `alterRemark`  varchar(120) NULL COMMENT '暂停/恢复备注' AFTER `alterByType`,
ADD COLUMN `endRemark`  varchar(120) NULL COMMENT '终止备注' AFTER `endByType`;