/*  Database name `mogoroomdb` ，loan_support_bank添加字段*/ 
use mogoroomdb; 
 

ALTER TABLE loan_support_bank  ADD column valid tinyint(1) default 1 NOT NULL COMMENT '0-不启用; 1-启用；';