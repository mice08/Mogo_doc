use mogoroomdb;

/*房东资质表*/
CREATE TABLE `user_landlord_power`(  
  `id` INT(11) NOT NULL AUTO_INCREMENT COMMENT '房东资质表id',
  `landlordId` INT(11) NOT NULL COMMENT '房东id',
  `powerType` TINYINT(1) NOT NULL COMMENT '资质类型（1: TP租房专区资质 2: TP免押金专区资质)',
  `status` TINYINT(1) DEFAULT '1' COMMENT '资质状态（1: 参与中 2: 已暂停(自动暂停) 3:平台暂停(BS平台手动暂停)）',
  `reason` VARCHAR(512) DEFAULT NULL COMMENT '资质关闭原因',
  `remark` VARCHAR(512) DEFAULT NULL COMMENT '备注',
  `createTime` DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `createBy` INT(11) COMMENT '创建人',
  `createByType` TINYINT(1) COMMENT '创建人类型(参考字典表组名:userType)',
  `updateTime` DATETIME COMMENT '更新时间',
  `updateBy` INT(11) COMMENT '更新人id',
  `updateByType` TINYINT(1) COMMENT '更新人类型(参考字典表组名:userType)',
  `valid` TINYINT(1) DEFAULT 1 COMMENT '该数据是否有效(1:有效,0:无效)',
  PRIMARY KEY (`id`),
  INDEX `landlordId` (`landlordId`),
  INDEX `powerType` (`powerType`),
  INDEX `createTime` (`createTime`)
)ENGINE = INNODB DEFAULT CHARSET = utf8mb4 COMMENT = '房东资质表' ;