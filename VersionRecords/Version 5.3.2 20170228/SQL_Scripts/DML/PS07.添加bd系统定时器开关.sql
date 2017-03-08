/*添加bd系统定时器开关*/

USE mogoroomdb;
BEGIN;

INSERT INTO comm_sysconfig(keyname,val,groupname,NAME,remark,updatetime,updatebytype,updateby)
VALUE('BizdFlowActiveAccountLLHandleTask',1,'BizdFlowTask','状态为激活的房东账号处理定时器开关','val=1(启用)val=0(关闭)',NOW(),9,1);
 
INSERT INTO comm_sysconfig(keyname,val,groupname,NAME,remark,updatetime,updatebytype,updateby)
VALUE('BizdFlowManagerAutoReleaseTask',1,'BizdFlowTask','经理的私客。3天保护期，过期自动释放到公共客户池定时器开关','val=1(启用)val=0(关闭)',NOW(),9,1);

INSERT INTO comm_sysconfig(keyname,val,groupname,NAME,remark,updatetime,updatebytype,updateby)
VALUE('BizdFlowNoAccountLLHandleTask',1,'BizdFlowTask','我的线索客户，没开通账号，保护期30天 ，超过30天释放到公共池定时器开关','val=1(启用)val=0(关闭)',NOW(),9,1);

INSERT INTO comm_sysconfig(keyname,val,groupname,NAME,remark,updatetime,updatebytype,updateby)
VALUE('BizdFlowOpenAccountLLHandleTask',1,'BizdFlowTask','状态为开通账号的房东账号处理定时器开关','val=1(启用)val=0(关闭)',NOW(),9,1);

COMMIT;