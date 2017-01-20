use mogoroomdb;

/*tp字典，登录短信模版*/

/**默认不提交事务**/
BEGIN;

insert into comm_dictionary (code,groupname,sort,keypro,value,status,fcode,enValue)values('regChannelDtl-50','regChannelDtl',50,50,'支付宝tp注册','1',null,'alipay_tp');

insert into comm_dictionary (code,groupName,sort,keyPro,value,status,fcode,envalue) values('channel-17','channel',17,17,'租客支付宝TP',1,null,'channel-17');

insert into comm_dictionary(code,groupName,sort,keyPro,value,STATUS,fcode,enValue)values('credential-7','credential',7,'7','其他证件',1,null,'credential-7');


commit;

