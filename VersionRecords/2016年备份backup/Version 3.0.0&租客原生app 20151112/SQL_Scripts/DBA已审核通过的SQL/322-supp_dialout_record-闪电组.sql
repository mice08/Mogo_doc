/* Database name `mogoroomdb` , 创建外呼记录表*/
USE mogoroomdb;

# 需要在员工表`user_employee`中添加 坐席工号 字段
ALTER TABLE `user_employee` ADD `fromExten` VARCHAR(10) COMMENT '坐席工号';

# 外呼记录表
CREATE TABLE supp_dialout_record
(
  `actionId` INT(11) NOT NULL AUTO_INCREMENT COMMENT 'ActionID 唯一字符串',
  `action` VARCHAR(25) NOT NULL COMMENT 'Action 命令名称',
  `phone` VARCHAR(16) NOT NULL COMMENT 'Exten 被叫号码',
  `fromExten` INT(10) NOT NULL COMMENT '坐席工号',
  `extenType` VARCHAR(25) DEFAULT NULL COMMENT '外呼时强制座席使用该接听方式(Local/sip/gateway)',
  `createTime` DATETIME NOT NULL COMMENT '创建时间',
  `createByType` INT(11) NOT NULL COMMENT '创建人类型(参考字典表组名:userType)',
  `createBy` INT(11) NOT NULL COMMENT '创建人',
  `rspSucceed` TINYINT(1) NOT NULL COMMENT '处理结果(1:成功 0:失败)',
  `rspMessage` VARCHAR(255) NULL COMMENT '结果说明',
  `remark` VARCHAR(255) NULL COMMENT '备注',
  PRIMARY KEY (`actionId`)
) ENGINE=INNODB AUTO_INCREMENT=1000000 DEFAULT CHARSET=utf8 COMMENT='外呼记录表';
