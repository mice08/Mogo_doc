/*  Database name `mogoroomdb` ，短信表修改内容长度*/
use mogoroomdb;

ALTER TABLE `mesg_sms_record` MODIFY `smsContent` VARCHAR(1) COMMENT '短信的内容';