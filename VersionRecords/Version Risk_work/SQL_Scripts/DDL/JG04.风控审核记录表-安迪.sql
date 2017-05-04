/*  Database name `mogoroomdb`  风控审核记录表 */
use mogoroomdb;

/*
1、预估表容量:每月几千条数据
2、每次读取量:小于50
3、主要查询
select createTime,verifyUserId,verifyResult,remark,verifyContext,landlordId  from risk_verify_record where landlordId= 3100380

*/

CREATE TABLE `risk_verify_record`(  
  `id` INT(11) NOT NULL AUTO_INCREMENT COMMENT '审核记录id',
  `createTime` DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '审核时间',
  `verifyUserId` INT(11) COMMENT '审核人',
  `verifyResult` TINYINT(1) COMMENT '审核结果(1:限制，2通过)',
  `remark` VARCHAR(255) COMMENT '备注',
  `verifyContext` VARCHAR(255) COMMENT '审核内容',
  `landlordId` INT(11) COMMENT '审核的房东id',
  PRIMARY KEY (`id`),
  INDEX `INDEX_LANDLORDID` (`landlordId`)
) ENGINE=INNODB CHARSET=utf8mb4
COMMENT='风控审核记录表';
