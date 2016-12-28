/* Database name `mogoroomdb`, 增加报修表字段 */
USE mogoroomdb;

ALTER TABLE supp_complain ADD complainFunction VARCHAR(100) DEFAULT NULL COMMENT '投诉所在功能点';
ALTER TABLE supp_complain ADD complainChannel INT(15) DEFAULT NULL COMMENT '投诉渠道 （参考字典表组名:channel）';
ALTER TABLE supp_complain ADD complainType INT(2) DEFAULT NULL COMMENT '投诉类型';
