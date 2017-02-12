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

ALTER TABLE `user_landlord_his` ADD COLUMN `financeServicer` INT (11) NULL COMMENT '金融服务人id
(user_employee表Id)' AFTER `landlordSource`;
DROP TABLE IF EXISTS loan_workbench_event ;
CREATE TABLE `loan_workbench_event` (
		`id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
		`eventOrderId` int(11) NOT NULL COMMENT '事件工单Id',
		`eventNumber` varchar(50) NOT NULL COMMENT '事件编号',
		`eventType` varchar(20) NOT NULL COMMENT '事件类别',
		`flowNumber` varchar(20) NOT NULL COMMENT '流程编码',
		`flowStatus` int(2) NOT NULL COMMENT '流程状态(0:进行中 1:结束）',
		`orderNumber` varchar(100) DEFAULT NULL COMMENT '金融订单号(loan_contract表orderNumber)',
		`status` int(2) DEFAULT NULL COMMENT '状态（1:未处理 2:处理中 3:处理通过 4:处理失败 5:退回处理）',
		`lastStepHandler` int(11) DEFAULT NULL COMMENT '上一步处理人',
		`financeServicer` int(11) DEFAULT NULL COMMENT '金融服务人id(user_employee表Id)',
		`renterId` int(11) DEFAULT NULL COMMENT '租客id',
		`landlordId` int(11) DEFAULT NULL COMMENT '房东id',
		`claimTime` datetime DEFAULT NULL COMMENT '认领时间',
		`finishTime` datetime DEFAULT NULL COMMENT '完成时间',
		`createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
		`updateTime` datetime DEFAULT NULL COMMENT '修改时间',
		`functionCode` char(7) DEFAULT NULL COMMENT '功能编号',
		`valid` int(2) DEFAULT '1' COMMENT '是否有效(0:无效 1:有效)',
		PRIMARY KEY (`id`)
) ENGINE = INNODB DEFAULT CHARSET = utf8mb4 COMMENT = '工作台事件表';

DROP TABLE IF EXISTS loan_workbench_task ;
CREATE TABLE `loan_workbench_task` (
		`id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
		`employeeId` int(11) NOT NULL COMMENT '用户id',
		`eventId` int(11) NOT NULL COMMENT '事件id',
		`taskType` int(2) NOT NULL COMMENT '参与类型(1:认领 2:参与)',
		`taskLevel` int(2) DEFAULT NULL COMMENT '参与级别(1:较轻 2:中等 3:重度 4:极度 5:痛苦)',
		`transferType` int(2) DEFAULT NULL COMMENT '任务转移类型(1:休假 2:修改)',
		`remark` varchar(255) DEFAULT NULL COMMENT '备注',
		`createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
		`valid` int(2) DEFAULT '1' COMMENT '是否有效(0:无效 1:有效)',
		PRIMARY KEY (`id`)
) ENGINE = INNODB DEFAULT CHARSET = utf8mb4 COMMENT = '工作台任务表';