/*  Database name `mogoroomdb` ��loan_support_bank����ֶ�*/ 
use mogoroomdb; 
 

ALTER TABLE loan_support_bank  ADD column valid tinyint(1) default 1 NOT NULL COMMENT '0-������; 1-���ã�';