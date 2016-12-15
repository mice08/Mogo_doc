/*  修改扩展表字段长度*/
USE mogoroomdb;

ALTER TABLE loan_apply_extend MODIFY loanValue VARCHAR(200) NOT NULL  COMMENT '租金宝申请的值';