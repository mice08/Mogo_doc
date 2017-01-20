use mogoroomdb;

/*tp字典，登录短信模版*/

/**默认不提交事务**/
BEGIN;

insert into comm_dictionary (code,groupname,sort,keypro,value,status,fcode,enValue)values('regChannelDtl-50','regChannelDtl',50,50,'支付宝tp注册','1',null,'alipay_tp');

insert into comm_dictionary (code,groupName,sort,keyPro,value,status,fcode,envalue) values('channel-17','channel',17,17,'租客支付宝TP',1,null,'channel-17');

insert into comm_dictionary(code,groupName,sort,keyPro,value,STATUS,fcode,enValue)values('credential-7','credential',7,'7','其他证件',1,null,'credential-7');


INSERT INTO `mesg_templet` (`templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`) 
VALUES ('TPyanzhengmai2fh', '登录/注册验证码', '登录/注册验证码', 1, 2002066, '2017-1-8 14:56:24', 5, 2002066, '2017-1-8 15:01:21', 5, 1, 10);

select @templetId:= id from mesg_templet where templetCode='TPyanzhengmai2fh';

INSERT INTO `mesg_subtemplet` (`templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`) 
VALUES (@templetId, 1, '登录/注册验证码', '【蘑菇租房】您的验证码${code}，欢迎使用支付宝租房服务。请勿向他人泄露验证码，如非本人操作，请致电蘑菇租房客服。', 1, 1, NULL, NULL);

commit;

