/* Database name `mogoroomdb` , 告警类型表增加日访问百度或高德上限类型 */
USE mogoroomdb;
INSERT INTO opex_warntype(id,TYPE,NAME,description,createBy,createTime,remark,STATUS) VALUES(58,'T009','百度或高德日访问上限告警','百度或高德日访问上限告警',2000082,NOW(),'百度或高德日访问上限告警',1);