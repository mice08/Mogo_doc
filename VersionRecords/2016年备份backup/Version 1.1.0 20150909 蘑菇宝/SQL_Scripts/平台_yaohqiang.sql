ALTER TABLE `bill_paymentRecord`
ADD COLUMN `plat`  int(11) NULL DEFAULT 1001 COMMENT '平台信息' AFTER `remark`;

UPDATE bill_paymentRecord SET plat = 1001;

