/*  Database name `mogoroomdb` ，为帐务报表需求添加字段*/
use mogoroomdb;


ALTER TABLE acct.acct_busirec  ADD COLUMN verifyPerson Int(11)  DEFAULT NULL COMMENT '核销人',
															ADD COLUMN verifyDate datetime  DEFAULT NULL COMMENT '核销时间',
															ADD COLUMN subsId Int(11)  DEFAULT NULL COMMENT '统一订购id';
															
															
ALTER TABLE acct.acct_bill ADD COLUMN createBy Int(11) DEFAULT NULL COMMENT '创建人',
												ADD COLUMN updateBy Int(11) DEFAULT NULL COMMENT '更新人';
