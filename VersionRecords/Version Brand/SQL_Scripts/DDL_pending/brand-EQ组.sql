/* Database name `mogoroomdb` , 品牌表添加证书编号、审核时间字段 */
use mogoroomdb

ALTER TABLE  `brand`   ADD COLUMN `certificateNo`  varchar(20)  NULL COMMENT '证书编号'  AFTER  `landlordId`,
					ADD COLUMN `approvalTime`  datetime  DEFAULT CURRENT_TIMESTAMP COMMENT '审核时间' AFTER  `approvalComments`;