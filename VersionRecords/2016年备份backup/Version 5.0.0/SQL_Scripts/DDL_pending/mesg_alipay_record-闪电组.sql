/*修改mesg_alipay_record表的params字段长度*/
USE mogoroomdb;

ALTER TABLE mesg_alipay_record MODIFY params varchar(2000) COMMENT ' 推送参数';  