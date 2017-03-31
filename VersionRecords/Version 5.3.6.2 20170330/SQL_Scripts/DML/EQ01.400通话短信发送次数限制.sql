/* Database name `mogoroomdb` */
USE mogoroomdb;

/* 系统配置表新增400短信发送限制 */
INSERT INTO comm_sysconfig(keyname,val,groupname,NAME,remark,updatetime,updatebytype,updateby) VALUES('smsSendLimit','5','tele','400通话提醒短信次数上限','',NOW(),5,0);
