/*  Database name `mogoroomdb`  短信群发的提示配置*/
use mogoroomdb;

insert into comm_dictionary(code, groupname, sort, keypro, value, status, envalue) values ('massNotice','massSMSType',1,1,'给所有当前在住且确认过租约的租客发送通知',1,'通知群发的Tip');
insert into comm_dictionary(code, groupname, sort, keypro, value, status, envalue) values ('massRent','massSMSType',2,2,'给所有当前房租或水电煤欠款的租客发送催租消息',1,'欠款催租的Tip');
insert into comm_dictionary(code, groupname, sort, keypro, value, status, envalue) values ('massConfirm','massSMSType',3,3,'给所有当前未确认租约的租客发送确认租约提醒',1,'确认提醒的Tip');
