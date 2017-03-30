/*房东PC/APP，用户行为记录表创建*/


use mogoroomdb;

CREATE TABLE oder_user_action_record
(
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `flatsId` BIGINT(20) NULL COMMENT '房源ID',
  `landlordId` BIGINT(20) NULL COMMENT '房东ID',
  `renterId` BIGINT(20) NULL COMMENT '租客ID',
  `landlordPhone` VARCHAR(20) NULL COMMENT '房东手机号码',
  `renterPhone` VARCHAR(20) NULL COMMENT '租客手机号码',
  `orderId` BIGINT(20) NULL COMMENT '订单ID',
  `orderType` TINYINT(4) NULL COMMENT '订单业务类型',
  `channel` TINYINT(4) NULL COMMENT '渠道(1:租客APP,18:新房东APP,4:旧房东APP,5:房东PC)',
  `operateType` TINYINT(4) NOT NULL DEFAULT 0 COMMENT '操作类型(1:房东联系租客,2:房东查看租客手机,3:租客联系房东)',
  `operateTime` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '操作时间',
  `status` INT(4) NOT NULL DEFAULT 1 COMMENT '标示业务状态(0:无效,1:有效)',
  `valid` TINYINT(4) NOT NULL DEFAULT 1 COMMENT '是否逻辑删除(0:逻辑删除,1:否)',
  `createTime` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建日期',
  `createBy` INT(11) NOT NULL DEFAULT 0 COMMENT '创建人',
  `createByType` INT(11) NOT NULL DEFAULT 0 COMMENT '创建人类型(参考字典表组名:userType)',
  `remark` VARCHAR(255) NULL COMMENT '备注',
  PRIMARY KEY (`id`)
)ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COMMENT='用户行为记录表';