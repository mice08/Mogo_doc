
CREATE TABLE `flat_propertyquery_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employeeId` int(11) DEFAULT NULL COMMENT '员工id',
  `area` varchar(20) DEFAULT NULL COMMENT '区域',
  `address` varchar(200) DEFAULT NULL COMMENT '查询地址',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `queryId` int(11) DEFAULT NULL COMMENT 'qianfang返回的查询id',
  `imageUrl` varchar(200) DEFAULT NULL COMMENT '查询结果的图片url',
  `updateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `flatsNum` varchar(100) DEFAULT NULL COMMENT '房源编号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9661 DEFAULT CHARSET=utf8;

insert into `perm_functioninfo` (`id`, `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`) values('516','0000013','产调',NULL,'13','0','0','1',NULL,NULL,NULL,'1','1',NULL,NULL,NULL,NULL,'1');
insert into `perm_functioninfo` (`id`, `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`) values('517','1051601','查询管理',NULL,'1','1','516','1',NULL,NULL,NULL,'1','1',NULL,NULL,NULL,NULL,'1');
insert into `perm_functioninfo` (`id`, `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`) values('518','2051701','产调查询','flats/queryPropertyLog','1','2','517','1',NULL,NULL,NULL,'1','1',NULL,NULL,NULL,NULL,'1');
insert into `perm_functioninfo` (`id`, `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`) values('519','3051801','产调提交','flats/submitPropertyQuery','1','3','518','0',NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,'1');

