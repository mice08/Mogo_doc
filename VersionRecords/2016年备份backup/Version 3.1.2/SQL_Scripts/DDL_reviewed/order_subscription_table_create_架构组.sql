use mogoroomdb;
CREATE TABLE `oder_subscription` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `roomId` bigint(11) DEFAULT NULL COMMENT '房间ID',
  `prodId` bigint(11) DEFAULT NULL COMMENT '产品ID',
  `prodType` int(8) DEFAULT NULL COMMENT '产品类型',
  `subscriber` bigint(11) DEFAULT NULL COMMENT '订购人',
  `vendor` bigint(11) DEFAULT NULL COMMENT '供货商',
  `startTime` datetime DEFAULT NULL COMMENT '起始（生效）时间',
  `endTime` datetime DEFAULT NULL COMMENT '结束（失效）时间',
  `status` int(3) DEFAULT NULL COMMENT '状态(100-200:申请中； 200-300:订购生效；300-400:取消中;400-500:订购失效)',
  `createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `createBy` bigint(11) DEFAULT NULL COMMENT '创建人',
  `updateTime` datetime DEFAULT NULL COMMENT '最后更新时间',
  `updateBy` bigint(11) DEFAULT NULL COMMENT '最后更新人',
  `soDoneCode` bigint(11) DEFAULT NULL COMMENT '操作流水号',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='订购关系';

alter  table oder_bookorder add column subsId bigint(11) comment '订购ID';
alter  table oder_signedorder add column subsId bigint(11) comment '订购ID';

use acct;
alter  table acct_bill add column subsId bigint(11) comment '订购ID';