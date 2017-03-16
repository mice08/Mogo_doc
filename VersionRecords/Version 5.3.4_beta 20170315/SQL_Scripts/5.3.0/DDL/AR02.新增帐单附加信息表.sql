/*添加帐务附加信息表*/
USE mogoroomdb;

CREATE TABLE acct.`acct_bill_addinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `billId` int(11) NOT NULL COMMENT '账单id',
  `channel` int(11) NOT NULL COMMENT '来源渠道',
  `createBy` int(11) NOT NULL COMMENT '创建人',
  `createByType` tinyint(4) NOT NULL COMMENT '创建人类型',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateBy` int(11) DEFAULT NULL COMMENT '更新人',
  `updateByType` tinyint(4) DEFAULT NULL COMMENT '更新人类型',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `billId` (`billId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 comment '账单附加信息表';
