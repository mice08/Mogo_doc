/*  Database name `mogoroomdb` ，添加房东账单明细类型关联表*/
use mogoroomdb;

DROP TABLE IF EXISTS `user_landlord_billdtltype` ;

CREATE TABLE IF NOT EXISTS `user_landlord_billdtltype` (
  `id` INT(11) NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `landlordId` INT(11) NOT NULL COMMENT '房东Id',
  `billDtlType` INT(11) NOT NULL COMMENT '账单明细类型',
  `createTime` DATETIME NOT NULL COMMENT '创建时间',
    PRIMARY KEY (`id`)
  ) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '房东账单明细类型关联表';
