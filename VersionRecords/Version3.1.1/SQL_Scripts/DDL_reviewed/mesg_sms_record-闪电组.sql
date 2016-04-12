/*  Database name `mogoroomdb` ，短信记录表修改长度*/
use mogoroomdb;

ALTER TABLE `mesg_sms_record` MODIFY `rptDesc` VARCHAR(100) COMMENT '短信状态报告描述';