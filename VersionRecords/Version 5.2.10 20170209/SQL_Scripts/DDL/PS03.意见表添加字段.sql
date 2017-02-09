/* Database name `mogoroomdb`, 增加报修表字段 */
USE mogoroomdb;

ALTER TABLE comm_suggestion ADD suggestionType INT(2) DEFAULT 1 COMMENT '意见类型 (参考字典表组名:suggestionType)';
