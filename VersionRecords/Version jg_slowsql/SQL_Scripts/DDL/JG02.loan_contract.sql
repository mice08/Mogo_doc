/*  Database name `mogoroomdb`  增加更新时间字段*/
USE mogoroomdb;

ALTER TABLE loan_contract 
ADD COLUMN `createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
ADD COLUMN `updateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间';