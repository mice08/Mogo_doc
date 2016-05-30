use acct;

ALTER TABLE `acct_billtype`
ADD COLUMN `displayName`  varchar(64) NOT NULL COMMENT '页面显示名字' AFTER `penaltyRate`,
ADD COLUMN `remark`  varchar(256) NULL COMMENT '备注' AFTER `displayName`;

ALTER TABLE `acct_billdtltype`
ADD COLUMN `displayName`  varchar(64) NOT NULL COMMENT '页面显示名字' ,
ADD COLUMN `remark`  varchar(256) NULL COMMENT '备注' AFTER `displayName`;
