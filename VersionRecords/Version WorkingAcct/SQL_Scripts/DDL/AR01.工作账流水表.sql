/*添加帐务账单附加信息表*/
USE mogoroomdb;

CREATE TABLE `bill_cash_notes` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `notesNumer` varchar(30) DEFAULT NULL COMMENT '记账本编号',
  `itemId` int(11) DEFAULT NULL COMMENT '项目id',
  `itemDetailId` int(11) DEFAULT NULL COMMENT '子项目id',
  `accountDate` datetime NOT NULL COMMENT '帐务日期',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `createBy` int(11) DEFAULT NULL COMMENT '创建人',
  `createByType` tinyint(4) DEFAULT NULL COMMENT '创建人类型',
  `updateBy` int(11) DEFAULT NULL COMMENT '更新人',
  `updateByType` int(11) DEFAULT NULL COMMENT '更新人类型',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  `valid` tinyint(3) DEFAULT NULL COMMENT '状态（1有效，0作废删除）',
  `amount` decimal(10,2) DEFAULT NULL COMMENT '金额',
  `fundChannel` int(2) DEFAULT NULL COMMENT '收款渠道',
  `roomId` int(11) DEFAULT NULL COMMENT '房间id',
  `flatsId` int(11) DEFAULT NULL COMMENT '公寓id',
  `communityId` int(11) DEFAULT NULL COMMENT '公寓id',
  `roomNum` varchar(20) DEFAULT NULL COMMENT '房间号',
  `flatsNum` varchar(20) DEFAULT NULL COMMENT '公寓号',
  `communityName` varchar(50) DEFAULT NULL COMMENT '小区名',
  `remark` varchar(50) DEFAULT NULL COMMENT '备注',
  `verified` tinyint(1) DEFAULT NULL COMMENT '核销标识(0:未核销 1:已核销)',
  `orgId` int(11) DEFAULT NULL COMMENT '分店id',
  `landlordId` int(11) DEFAULT NULL COMMENT '房东id',
  `orderId` int(11) DEFAULT NULL COMMENT '租约id（签约单）',
  `orderMemo` varchar(50) DEFAULT NULL COMMENT '租约描述',
  `picGroupId` int(11) DEFAULT NULL COMMENT '图片组id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 comment '帐务账单附加信息表';
