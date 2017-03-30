use acct;

ALTER TABLE `acct_bill`
ADD COLUMN `sendFlag`  tinyint NULL DEFAULT 2 COMMENT '是否发送 1:未发送 2:已发送' AFTER `status`;
ALTER TABLE `acct_bill_tmp`
ADD COLUMN `sendFlag`  tinyint NULL DEFAULT 2 COMMENT '是否发送 1:未发送 2:已发送' AFTER `status`;

ALTER TABLE `acct_billdtltype`
ADD COLUMN `usageType`  tinyint NULL DEFAULT 0 COMMENT '使用类型。0:固定类型、1：一般自定义费用类型、2:自定义押金费用类型' AFTER `sort`;




