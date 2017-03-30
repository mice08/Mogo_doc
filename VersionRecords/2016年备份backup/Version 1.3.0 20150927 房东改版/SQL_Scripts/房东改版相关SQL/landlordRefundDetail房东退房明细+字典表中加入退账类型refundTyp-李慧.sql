CREATE TABLE `supp_landlordRefundDetail` (  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',  `landlordRefundRecordId` int(11) NOT NULL COMMENT '退账记录',  `amount` decimal(10,2) NOT NULL COMMENT '金额',  `refundType` varchar(20) NOT NULL COMMENT '退账类型',  `createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',  `status` int(11) NOT NULL DEFAULT '1' COMMENT '状态',  PRIMARY KEY (`id`)) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
#字典表中加入退账类型refundType
insert into `comm_dictionary` ( `code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`) values('refundType-1','refundType','1','1','押金','1',NULL);
insert into `comm_dictionary` ( `code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`) values('refundType-2','refundType','2','2','租金','1',NULL);
insert into `comm_dictionary` ( `code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`) values('refundType-3','refundType','3','3','其他','1',NULL);
