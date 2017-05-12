/* Database name `mogoroomdb` */
USE mogoroomdb;

/*
新建表：房东回拨记录表
1. 每天新增500条左右记录，预计6个月达到9万条
2. 主要查询sql: select * from tele_replylog where landlordId=? and replyTime>'2017-04-12 00:00' order by renterPhone 
3. 索引: 除了主键id，还主键Id，还需要建立的普通索引字段有：landlordId,replyTime,renterPhone
*/
CREATE TABLE `tele_replylog` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `landlordId` int(11) NOT NULL COMMENT '房东Id',
  `renterPhone` varchar(20) NOT NULL COMMENT '租客来电号码',  
  `replyTime` datetime NOT NULL COMMENT '回拨时间',
  `valid` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态(0:无效 1:有效)',
  `status` int(4) NOT NULL DEFAULT '1' COMMENT '业务状态',
  `createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `createBy` int(11) NOT NULL COMMENT '创建人',
  `createByType` int(11) NOT NULL COMMENT '创建人类型(参考字典表组名:userType)',
  `updateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `updateBy` int(11) DEFAULT NULL COMMENT '修改人',
  `updateByType` int(11) DEFAULT NULL COMMENT '修改人类型(参考字典表组名:userType)',
  `soDoneCode` int(32) DEFAULT NULL COMMENT '操作流水号',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='房东回拨记录表';
/* 添加索引 */
ALTER TABLE tele_replylog ADD INDEX idx_landlordId ( landlordId );
ALTER TABLE tele_replylog ADD INDEX idx_renterPhone ( renterPhone );
ALTER TABLE tele_replylog ADD INDEX idx_replyTime ( replyTime );
