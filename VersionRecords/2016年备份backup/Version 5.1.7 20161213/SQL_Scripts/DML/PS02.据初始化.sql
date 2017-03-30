/*以下脚本请勿在150测试环境执行*/



use mogoroomdb;
/*风控规则初始化*/
insert into `comm_sysconfig` ( `keyName`, `val`, `groupName`, `name`, `remark`, `updateTime`, `updateByType`, `updateBy`, `extra1`, `extra2`) values('PT-JY-001','1','riskRule','定时器风险规则','val=1(启用)val=0(关闭)','2016-11-29 08:43:28','6','1',NULL,NULL);
insert into `comm_sysconfig` ( `keyName`, `val`, `groupName`, `name`, `remark`, `updateTime`, `updateByType`, `updateBy`, `extra1`, `extra2`) values('PT-JY-002','1','riskRule','定时器风险规则','val=1(启用)val=0(关闭)','2016-11-29 08:43:28','6','1',NULL,NULL);
insert into `comm_sysconfig` ( `keyName`, `val`, `groupName`, `name`, `remark`, `updateTime`, `updateByType`, `updateBy`, `extra1`, `extra2`) values('PT-JY-003','1','riskRule','定时器风险规则','val=1(启用)val=0(关闭)','2016-11-29 08:43:28','6','1',NULL,NULL);
insert into `comm_sysconfig` ( `keyName`, `val`, `groupName`, `name`, `remark`, `updateTime`, `updateByType`, `updateBy`, `extra1`, `extra2`) values('PT-JY-004','1','riskRule','定时器风险规则','val=1(启用)val=0(关闭)','2016-11-29 08:43:28','6','1',NULL,NULL);
insert into `comm_sysconfig` ( `keyName`, `val`, `groupName`, `name`, `remark`, `updateTime`, `updateByType`, `updateBy`, `extra1`, `extra2`) values('MH-FD-001','1','riskRule','定时器风险规则','val=1(启用)val=0(关闭)','2016-11-29 08:43:28','6','1','90',NULL);
insert into `comm_sysconfig` ( `keyName`, `val`, `groupName`, `name`, `remark`, `updateTime`, `updateByType`, `updateBy`, `extra1`, `extra2`) values('MH-FD-002','1','riskRule','定时器风险规则','val=1(启用)val=0(关闭)','2016-11-29 08:43:28','6','1','3',NULL);
insert into `comm_sysconfig` ( `keyName`, `val`, `groupName`, `name`, `remark`, `updateTime`, `updateByType`, `updateBy`, `extra1`, `extra2`) values('MH-FD-003','1','riskRule','定时器风险规则','val=1(启用)val=0(关闭)','2016-11-29 08:43:28','6','1','30',NULL);
insert into `comm_sysconfig` ( `keyName`, `val`, `groupName`, `name`, `remark`, `updateTime`, `updateByType`, `updateBy`, `extra1`, `extra2`) values('MH-ZK-001','1','riskRule','定时器风险规则','val=1(启用)val=0(关闭)','2016-11-29 08:43:28','6','1',NULL,NULL);
insert into `comm_sysconfig` ( `keyName`, `val`, `groupName`, `name`, `remark`, `updateTime`, `updateByType`, `updateBy`, `extra1`, `extra2`) values('MH-ZK-002','1','riskRule','定时器风险规则','val=1(启用)val=0(关闭)','2016-11-29 08:43:28','6','1','7',NULL);
insert into `comm_sysconfig` ( `keyName`, `val`, `groupName`, `name`, `remark`, `updateTime`, `updateByType`, `updateBy`, `extra1`, `extra2`) values('MH-ZK-003','1','riskRule','定时器风险规则','val=1(启用)val=0(关闭)','2016-11-29 08:43:28','6','1','3',NULL);

/*删除无用权限--签约人首页，签约组首页*/
UPDATE perm_functioninfo SET STATUS=0 WHERE id IN (2820,2822);


/*添加字典值*/
INSERT INTO comm_dictionary(CODE,groupname,sort,keypro,VALUE,STATUS,envalue)
    VALUE('userType-8','userType',8,8,'业主',1,'userType-8');
INSERT INTO comm_dictionary(CODE,groupname,sort,keypro,VALUE,STATUS,envalue)
    VALUE('userType-9','userType',9,9,'系统',1,'userType-9');