ALTER TABLE `bill_paymentRecord` CHANGE `updatedTime` `updatedTime` TIMESTAMP DEFAULT CURRENT_TIMESTAMP  NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间'; 
ALTER TABLE `bill_paymentRecord` CHANGE `createTime` `createTime` DATETIME DEFAULT CURRENT_TIMESTAMP NULL COMMENT '创建时间'; 
ALTER TABLE `bill_paymentRecord` CHANGE `userType` `userType` INT(11) NULL COMMENT '用户类型(1:租客 2:房东)'; 
ALTER TABLE `bill_paymentRecord` CHANGE `businessId` `businessId` VARCHAR(32) CHARSET utf8 COLLATE utf8_bin NULL COMMENT '蘑菇交易流水号'; 