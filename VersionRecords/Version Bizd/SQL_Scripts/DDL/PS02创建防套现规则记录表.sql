/*创建防套现规则记录表*/

use mogoroomdb;

CREATE TABLE `risk_cashSuspicion`(  
  `id` INT(11) AUTO_INCREMENT COMMENT 'id',
  `createTime` DATETIME COMMENT '创建时间',
  `creditAmount` DECIMAL(6,2) COMMENT '信用金额',
  `riskCode` VARCHAR(25) COMMENT '规则编号',
  `landlordId` INT(11) COMMENT '房东id',
  `renterId` INT(11) COMMENT '租客id',
  `content` VARCHAR(25) COMMENT '内容',
  `contentType` TINYINT(1) COMMENT '内容数据类型(1:租客id 2:支付账号)',
   KEY(`id`)
) ENGINE=INNODB CHARSET=utf8mb4 COMMENT='防套现列表';