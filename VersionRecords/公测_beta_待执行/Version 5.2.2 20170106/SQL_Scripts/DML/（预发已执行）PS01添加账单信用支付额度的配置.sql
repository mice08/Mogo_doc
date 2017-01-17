/*添加账单信用支付额度的配置*/
USE mogoroomdb;
INSERT INTO comm_sysconfig(keyname,val,groupname,NAME,remark,updatetime,updatebytype,updateby)
VALUES('riskCreditPayAmount',30000,'riskCreditPay','账单每月信用支付最高额度限制','账单每月信用支付最高额度限制',NOW(),5,0);