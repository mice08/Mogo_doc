/*  Database name `mogoroomdb` ，敏感信息以及业务操作记录表 */

alter table comm_business_record modify column operationTime datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT ' 操作时间';

alter table comm_operation_log modify column operationTime datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT ' 操作时间';