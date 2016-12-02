/*以下sql请勿在150测试环境执行！！！*/

/*风险记录规则开关*/

use mogoroomdb;

INSERT INTO comm_sysconfig (keyName,val,groupname,NAME,remark,updatetime,updatebytype,updateby) VALUES('PT-JY-001','1','riskRule','定时器风险规则','val=1(启用)val=0(关闭)',NOW(),6,1);
INSERT INTO comm_sysconfig (keyName,val,groupname,NAME,remark,updatetime,updatebytype,updateby) VALUES('PT-JY-002','1','riskRule','定时器风险规则','val=1(启用)val=0(关闭)',NOW(),6,1);
INSERT INTO comm_sysconfig (keyName,val,groupname,NAME,remark,updatetime,updatebytype,updateby) VALUES('PT-JY-003','1','riskRule','定时器风险规则','val=1(启用)val=0(关闭)',NOW(),6,1);
INSERT INTO comm_sysconfig (keyName,val,groupname,NAME,remark,updatetime,updatebytype,updateby) VALUES('PT-JY-004','1','riskRule','定时器风险规则','val=1(启用)val=0(关闭)',NOW(),6,1);
INSERT INTO comm_sysconfig (keyName,val,groupname,NAME,remark,updatetime,updatebytype,updateby) VALUES('MH-FD-001','1','riskRule','定时器风险规则','val=1(启用)val=0(关闭)',NOW(),6,1);
INSERT INTO comm_sysconfig (keyName,val,groupname,NAME,remark,updatetime,updatebytype,updateby) VALUES('MH-FD-002','1','riskRule','定时器风险规则','val=1(启用)val=0(关闭)',NOW(),6,1);
INSERT INTO comm_sysconfig (keyName,val,groupname,NAME,remark,updatetime,updatebytype,updateby) VALUES('MH-FD-003','1','riskRule','定时器风险规则','val=1(启用)val=0(关闭)',NOW(),6,1);
INSERT INTO comm_sysconfig (keyName,val,groupname,NAME,remark,updatetime,updatebytype,updateby) VALUES('MH-ZK-001','1','riskRule','定时器风险规则','val=1(启用)val=0(关闭)',NOW(),6,1);
INSERT INTO comm_sysconfig (keyName,val,groupname,NAME,remark,updatetime,updatebytype,updateby) VALUES('MH-ZK-002','1','riskRule','定时器风险规则','val=1(启用)val=0(关闭)',NOW(),6,1);
INSERT INTO comm_sysconfig (keyName,val,groupname,NAME,remark,updatetime,updatebytype,updateby) VALUES('MH-ZK-003','1','riskRule','定时器风险规则','val=1(启用)val=0(关闭)',NOW(),6,1);

/*删除签约人，签约组权限*/
UPDATE perm_functioninfo SET STATUS=0 WHERE id IN (2820,2822);


/*添加字典值*/
INSERT INTO comm_dictionary(CODE,groupname,sort,keypro,VALUE,STATUS,envalue)
    VALUE('userType-8','userType',8,8,'业主',1,'userType-8');
INSERT INTO comm_dictionary(CODE,groupname,sort,keypro,VALUE,STATUS,envalue)
    VALUE('userType-9','userType',9,9,'系统',1,'userType-9');