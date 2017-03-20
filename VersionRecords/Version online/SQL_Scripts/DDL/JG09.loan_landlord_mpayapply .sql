/*新增字段*/
USE mogoroomdb;

ALTER TABLE loan_landlord_mpayapply add column signedRoom varchar(512) DEFAULT NULL COMMENT '签约房源地址（随机三个）json字符串';