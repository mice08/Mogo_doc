/*创建防套现规则记录表*/

USE mogoroomdb;

DROP TABLE IF EXISTS risk_cashSuspicion;

CREATE TABLE `risk_cashSuspicion`(  
  `id` INT(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `createDate` DATE COMMENT '创建时间',
  `creditAmount` DECIMAL(9,2) COMMENT '信用支付金额',
  `riskCode` VARCHAR(25) COMMENT '规则编号',
  `landlordId` INT(11) NOT NULL COMMENT '房东id',
  `renterId` INT(11) NOT NULL COMMENT '租客id',
  `payAccount` VARCHAR(50) COMMENT '支付账号',
  `payAccountType` TINYINT(1) COMMENT '支付账号类型(字典表groupName=risk_payAccountType)',
   PRIMARY KEY(`id`),
   KEY(landlordId),
   KEY(renterId)
)ENGINE=INNODB CHARSET=utf8mb4 COMMENT='防套现规则记录表';