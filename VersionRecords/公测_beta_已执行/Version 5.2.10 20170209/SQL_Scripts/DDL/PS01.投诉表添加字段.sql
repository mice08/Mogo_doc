/* Database name `mogoroomdb`, 增加投诉表字段 */
USE mogoroomdb;

ALTER TABLE supp_complain ADD fcode VARCHAR(7) DEFAULT NULL COMMENT '投诉所在功能点 perm_functioninfo.fcode';
ALTER TABLE supp_complain ADD channel INT(15) DEFAULT NULL COMMENT '投诉渠道(参考字典表组名:channel)';
ALTER TABLE supp_complain ADD complainType INT(2) DEFAULT 7 COMMENT '投诉类型 (参考字典表组名:complainType)';
