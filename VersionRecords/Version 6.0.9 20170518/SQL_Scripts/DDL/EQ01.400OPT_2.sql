/* Database name `mogoroomdb` */
USE mogoroomdb;

/* 为400系统常用检索条件字段添加索引 */
ALTER TABLE tele_extnum ADD INDEX idx_extNum ( extNum );
ALTER TABLE tele_sungoin_calllog ADD INDEX idx_startTime ( startTime );
ALTER TABLE tele_tinet_calllog ADD INDEX idx_startTime ( startTime );
ALTER TABLE tele_tinet_calllog ADD INDEX idx_callerNo ( callerNo );
