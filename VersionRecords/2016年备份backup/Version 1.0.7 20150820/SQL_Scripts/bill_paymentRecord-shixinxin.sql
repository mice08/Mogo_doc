ALTER TABLE `bill_paymentRecord` CHANGE `updatedTime` `updatedTime` TIMESTAMP DEFAULT CURRENT_TIMESTAMP  NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '����ʱ��'; 
ALTER TABLE `bill_paymentRecord` CHANGE `createTime` `createTime` DATETIME DEFAULT CURRENT_TIMESTAMP NULL COMMENT '����ʱ��'; 
ALTER TABLE `bill_paymentRecord` CHANGE `userType` `userType` INT(11) NULL COMMENT '�û�����(1:��� 2:����)'; 
ALTER TABLE `bill_paymentRecord` CHANGE `businessId` `businessId` VARCHAR(32) CHARSET utf8 COLLATE utf8_bin NULL COMMENT 'Ģ��������ˮ��'; 