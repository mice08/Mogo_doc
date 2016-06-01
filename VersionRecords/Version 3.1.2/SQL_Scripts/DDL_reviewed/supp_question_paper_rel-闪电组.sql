/*  Database name `mogoroomdb` ，问卷问题关联表增加问题分组key字段*/
use mogoroomdb;

ALTER TABLE supp_question_paper_rel ADD COLUMN questionGroup int(11) DEFAULT NULL COMMENT '问题分组(参考字典表组名:questionGroup)';