/*添加金融工作台相关表*/
USE mogoroomdb;

ALTER TABLE `user_employee_info` ADD COLUMN `vacationBeginDate` date NULL COMMENT '休假开始时间' AFTER `isSynch`,
 ADD COLUMN `vacationEndDate` date NULL COMMENT '休假结束时间' AFTER `vacationBeginDate`,
 ADD COLUMN `agent` INT (11) NULL COMMENT '代理人' AFTER `vacationEndDate`;

ALTER TABLE `user_employee_info_his` ADD COLUMN `vacationBeginDate` date NULL COMMENT '休假开始时间' AFTER `operType`,
 ADD COLUMN `vacationEndDate` date NULL COMMENT '休假结束时间' AFTER `vacationBeginDate`,
 ADD COLUMN `agent` INT (11) NULL COMMENT '代理人' AFTER `vacationEndDate`;

ALTER TABLE `user_landlord` ADD COLUMN `financeServicer` INT (11) NULL COMMENT '金融服务人id
(user_employee表Id)' AFTER `landlordSource`;

ALTER TABLE `user_landlord_info_his` ADD COLUMN `financeServicer` INT (11) NULL COMMENT '金融服务人id
(user_employee表Id)' AFTER `legalRepresentative`;

CREATE TABLE `loan_workbench_event` (
	`id` INT (11) NOT NULL AUTO_INCREMENT COMMENT 'id',
	`eventOrderId` INT (11) NOT NULL COMMENT '事件工单Id',
	`eventNumber` VARCHAR (14) NOT NULL COMMENT '事件编号',
	`eventType` VARCHAR (20) NOT NULL COMMENT '事件类别',
	`flowNumber` VARCHAR (20) NOT NULL COMMENT '流程编号',
	`flowStep` INT (2) NOT NULL COMMENT '流程步骤',
	`orderNumber` VARCHAR (20) DEFAULT NULL COMMENT '金融订单号(loan_contract表orderNumber)',
	`status` INT (2) DEFAULT NULL COMMENT '状态',
	`lastStepHandler` INT (11) DEFAULT NULL COMMENT '上一步处理人',
	`financeServicer` INT (11) DEFAULT NULL COMMENT '金融服务人id(user_employee表Id)',
	`renterId` INT (11) DEFAULT NULL COMMENT '租客id',
	`landlordId` INT (11) DEFAULT NULL COMMENT '房东id',
	`claimTime` datetime DEFAULT NULL COMMENT '认领时间',
	`finishTime` datetime DEFAULT NULL COMMENT '完成时间',
	`createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
	`updateTime` datetime NULL COMMENT '修改时间',
	`functionCode` CHAR (7) DEFAULT NULL COMMENT '功能编号',
	`valid` INT (2) DEFAULT 1 COMMENT '是否有效(0:无效 1:有效)',
	PRIMARY KEY (`id`)
) ENGINE = INNODB DEFAULT CHARSET = utf8 COMMENT = '工作台事件表';

CREATE TABLE `loan_workbench_task` (
	`id` INT (11) NOT NULL AUTO_INCREMENT COMMENT 'id',
	`employId` INT (11) NOT NULL COMMENT '用户id',
	`eventId` INT (11) NOT NULL COMMENT '事件id',
	`taskType` INT (2) NOT NULL COMMENT '参与类型(1认领 2参与)',
	`taskLevel` INT (2) DEFAULT NULL COMMENT '参与级别(1:较轻 2:中等 3:重度 4:极度 5:痛苦)',
	`transferType` VARCHAR (20) NULL COMMENT '任务转移类型(1:休假 2:修改)',
	`remark` VARCHAR (255) DEFAULT NULL COMMENT '备注',
	`createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
	`valid` INT (2) DEFAULT 1 COMMENT '是否有效(0:无效 1:有效)',
	PRIMARY KEY (`id`)
) ENGINE = INNODB DEFAULT CHARSET = utf8 COMMENT = '工作台任务表';