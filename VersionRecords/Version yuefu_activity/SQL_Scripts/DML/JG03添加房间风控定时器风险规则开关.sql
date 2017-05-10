/*添加房间风控定时器风险规则开关*/
USE mogoroomdb;


INSERT INTO comm_sysconfig(keyname,val,groupname,NAME,remark,updatetime,updatebytype,updateby) VALUES('WZ-HZ-RM1-001',1,'riskRoom','房间风控定时器风险规则开关','val=1(启用)val=0(关闭)',NOW(),6,1);
INSERT INTO comm_sysconfig(keyname,val,groupname,NAME,remark,updatetime,updatebytype,updateby) VALUES('WZ-HZ-MJ-001',1,'riskRoom','房间风控定时器风险规则开关','val=1(启用)val=0(关闭)',NOW(),6,1);





