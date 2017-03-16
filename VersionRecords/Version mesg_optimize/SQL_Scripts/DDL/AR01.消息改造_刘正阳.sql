/*  Database name `mogoroomdb` 优化消息使用job处理 
主要查询SQL:
select landlordId,orgId,templetCode,mesgParam from mesg_job where createDate>= and status = 0;
需要预先添加的索引字段createTime
*/
use mogoroomdb;
create table `mesg_async` (
	`id` int(11) NOT NULL AUTO_INCREMENT COMMENT '消息id',
	`landlordId` int(11) DEFAULT NULL COMMENT '房东ID',
	`orgId` int(11) DEFAULT NULL COMMENT '组织Id',
	`templetCode` varchar(50) DEFAULT NULL COMMENT '消息code，根据code查询模板内容',
	`mesgParam` varchar(1000) DEFAULT NULL COMMENT '参数json',
	`type` int(1) NOT NULL COMMENT '消息类型(1:分店消息 2:消息发送（带权限过滤）3:获取组织接收人 4:信息合并
	5:根据房东、房源、消息模板查询出房源到人消息接收人 6:批量设置房东的某类消息列表为已读或者未读 7:根据房东组织集合查询每个组织接收消息的人 8:消息发送（带权限过滤 新接口）)',
	`status` int(1) NOT NULL COMMENT '处理状态(0:未处理 1:已处理)',
	`createTime` DATETIME DEFAULT NULL COMMENT '创建时间',
	PRIMARY KEY (`id`),
	KEY `createTime` (`createTime`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='消息job表';

