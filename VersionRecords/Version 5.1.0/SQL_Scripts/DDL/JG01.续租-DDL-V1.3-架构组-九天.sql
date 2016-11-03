use mogoroomdb;
drop table if exists oder_signedorder_new;
CREATE TABLE `oder_signedorder_new` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `parentId` int(11) DEFAULT NULL COMMENT '父新签约单ID',  
  `term` int(11) DEFAULT 1 COMMENT '当前是第几次签约',
  `signedOrderId` int(11) DEFAULT NULL COMMENT '旧签约单ID',
  
  `renterId` int(11) DEFAULT NULL COMMENT '租客id',
  `flatsId` int(11) DEFAULT NULL COMMENT '公寓id',
  `roomId` int(11) DEFAULT NULL COMMENT '房间id',
  `status` int(11) DEFAULT NULL COMMENT '状态(枚举)',
  `createTime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `remark` varchar(512) DEFAULT NULL COMMENT '备注',
  `checkOutTime` datetime DEFAULT NULL COMMENT '退房时间',
  `saleContractId` int(11) DEFAULT NULL COMMENT '销售合同id',
  `reservationOrderId` int(11) DEFAULT NULL COMMENT '预约单ID',
  `bookOrderId` int(11) DEFAULT NULL COMMENT '预定单ID',
  `landlordId` int(11) DEFAULT NULL COMMENT '职业房东ID',
  `fleecyTime` datetime DEFAULT NULL COMMENT '房东审核通过时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  `effectiveTime` datetime DEFAULT NULL COMMENT '有效时间',
  `deadline` datetime DEFAULT NULL COMMENT '截止日期',
  `signedManagerId` int(11) DEFAULT NULL COMMENT '管家ID',
  `signedManagerType` int(2) DEFAULT NULL COMMENT '管家类型(参考字典表groupName=userType)',
  `sendFlag` int(2) NOT NULL DEFAULT '2' COMMENT '是否发送 1:未发送 2:已发送',
  `soDoneCode` int(11) DEFAULT NULL COMMENT '业务记录ID，参考comm_business_record表的id',
  `channel` varchar(20) DEFAULT NULL COMMENT '签约来源（参考字典表groupName=channel）',
  `subsId` bigint(11) DEFAULT NULL COMMENT '订购ID',
  `signedNum` varchar(30) DEFAULT NULL COMMENT '签约单号',
  `acctFinished` tinyint(1) DEFAULT '0' COMMENT '是否已结账(0:未结账 1:已结账)',
  
  PRIMARY KEY (`id`),
  KEY `renterId` (`renterId`),
  KEY `os_saleContractId` (`saleContractId`) USING BTREE,
  KEY `oder_signedOrder_reservationOrderId` (`reservationOrderId`),
  KEY `oder_signedorder_roomId` (`roomId`),
  KEY `subsId` (`subsId`),
  KEY `landlordId` (`landlordId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='新签约单'; 
ALTER TABLE `oder_signedorder_new` ADD INDEX `signedOrderId` (`signedOrderId`);

ALTER TABLE `bill_salebill` ADD COLUMN `soNewId` INT(11) DEFAULT NULL COMMENT '新签约单ID';
ALTER TABLE `bill_salebill` ADD INDEX  `soNewId` (`soNewId`);

use acct;
ALTER TABLE `acct_bill` ADD COLUMN `soNewId` INT(11) DEFAULT NULL COMMENT '新签约单ID';
ALTER TABLE `acct_bill` ADD INDEX  `soNewId` (`soNewId`);
ALTER TABLE `acct_bill` ALTER COLUMN `periodYear` SET DEFAULT 1;
update `acct_bill` set `periodYear` = 1 where `periodYear` is null;

