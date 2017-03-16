/*初始化数据*/

use mogoroomdb;

begin;

/*添加字典表值*/
INSERT INTO comm_dictionary(CODE,groupname,sort,keyPro,VALUE,STATUS,envalue)VALUES('risk_payAccountType-alipay','risk_payAccountType',1,1,'支付宝信用支付',1,'alipay');
INSERT INTO comm_dictionary(CODE,groupname,sort,keyPro,VALUE,STATUS,envalue)VALUES('risk_payAccountType-weixin','risk_payAccountType',1,1,'微信信用支付',1,'weixin');

/*添加定时器开关值*/
INSERT INTO comm_sysconfig(keyname,val,groupname,NAME,remark,updatetime,updatebytype,updateby) VALUES('TX-ZK-001',1,'cashSuspicion','防套现定时器规则开关','val=1(启用)val=0(关闭)',NOW(),6,1);
INSERT INTO comm_sysconfig(keyname,val,groupname,NAME,remark,updatetime,updatebytype,updateby) VALUES('TX-POS-002',1,'cashSuspicion','防套现定时器规则开关','val=1(启用)val=0(关闭)',NOW(),6,1);

commit;