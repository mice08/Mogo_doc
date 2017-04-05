/*  Database name `mogoroomdb` ，comm_app_version修改channel字段的类型及长度*/
use mogoroomdb;

ALTER TABLE comm_app_version MODIFY COLUMN channel int(2) not null comment '渠道';