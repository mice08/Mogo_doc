/*添加金融工作台相关表*/
use mogoroomdb;


ALTER TABLE `user_employee_info`
ADD COLUMN `vacationBeginDate`  date NULL COMMENT '休假开始时间' AFTER `isSynch`,
ADD COLUMN `vacationEndDate`  date NULL COMMENT '休假结束时间' AFTER `vacationBeginDate`,
ADD COLUMN `agenter`  int(11) NULL COMMENT '代理人' AFTER `vacationEndDate`;


ALTER TABLE `user_employee_info_his`
ADD COLUMN `vacationBeginDate`  date NULL COMMENT '休假开始时间' AFTER `operType`,
ADD COLUMN `vacationEndDate`  date NULL COMMENT '休假结束时间' AFTER `vacationBeginDate`,
ADD COLUMN `agenter`  int(11) NULL COMMENT '代理人' AFTER `vacationEndDate`;

ALTER TABLE `user_landlord`
ADD COLUMN `finServicManId`  int(11) NULL COMMENT '金融服务人id (user_employee表Id)' AFTER `landlordSource`;

ALTER TABLE `user_landlord_info_his`
ADD COLUMN `finServicManId`  int(11) NULL COMMENT '金融服务人id (user_employee表Id)' AFTER `legalRepresentative`;


CREATE TABLE `loan_workbench_event` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
	`eventOrderId` int(11) NOT NULL  COMMENT '事件工单Id',
  `eventNumber` varchar(14) NOT NULL COMMENT '事件编号',
  `eventType` varchar(20) NOT NULL COMMENT '事件类别',
  `flowNumber` varchar(20) NOT NULL COMMENT '流程编号',
  `flowstep` int(2) NOT NULL COMMENT '流程步骤',
  `orderNumber` varchar(20) DEFAULT NULL COMMENT '金融订单号(loan_contract表)',
  `status` int(2) DEFAULT NULL COMMENT '状态',
  `lastStepHandler` int(11) DEFAULT NULL COMMENT '上一步处理人',
  `finServicManId` int(11) DEFAULT NULL COMMENT '金融服务人id (user_employee表Id)',
  `renterId` int(11) DEFAULT NULL COMMENT '租客id',
  `landlordId` int(11) DEFAULT NULL COMMENT '房东id',
  `claimTime` datetime DEFAULT NULL COMMENT '认领时间',
  `finishTime` datetime DEFAULT NULL COMMENT '完成时间',
  `createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `functionCode` char(7) DEFAULT NULL COMMENT '功能编号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='工作台事件表';


CREATE TABLE `loan_workbench_task` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `employId` int(11) NOT NULL COMMENT '用户id',
  `eventId` int(11) NOT NULL COMMENT '事件id',
  `taskType` int(2) NOT NULL COMMENT '参与类型(1认领 2参与)',
  `taskLevel` int(2) DEFAULT NULL COMMENT '参与级别(较轻 中等 重度 极度 痛苦 )',
	`transferType`  varchar(20) NOT NULL COMMENT '任务转移类型（休假 房东编辑 无）',
  `status` int(2) NOT NULL COMMENT '状态',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='工作台任务表';