/*同步错误数据记录表*/
use mogoroomdb;

CREATE TABLE `comm_synerr_record`(  
  `id` INT(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `keyId` INT(11) NOT NULL COMMENT '同步数据ID',
  `keyType` VARCHAR(20) NOT NULL COMMENT '同步数据类型',
  `errorType` INT(2) NOT NULL COMMENT '错误类型(1:DB冗余 2:数据不一致 3:ES冗余)',
  `errorLevel` INT(2) NOT NULL COMMENT '错误级别(1:一般 2:严重 3:非常严重)',
  `dbContent` VARCHAR(2048) COMMENT '记录DB侧不一致数据',
  `esContent` VARCHAR(2048) COMMENT '记录ES侧不一致数据',
  `createTime` TIMESTAMP DEFAULT CURRENT_TIMESTAMP  COMMENT '创建时间',
  PRIMARY KEY (`id`)
) COMMENT='同步错误数据记录表';