/* Database name `mogoroomdb`， 插入opex_warnType告警类型(sync脚本实时处理失败告警类型) */

USE mogoroomdb;

INSERT INTO opex_warntype(TYPE,NAME,description) VALUES('T020','sync处理失败告警','sync脚本处理失败告警');