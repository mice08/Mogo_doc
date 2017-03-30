/*  Database name `mogoroomdb` ，为新帐务页面需求添加字段*/
use mogoroomdb;

ALTER TABLE acct.acct_bill ADD COLUMN minPayAmount decimal(10,2) DEFAULT NULL COMMENT '最小支付金额';

ALTER TABLE bill_salebill  
			ADD COLUMN minPayAmount decimal(10,2) DEFAULT NULL COMMENT '最小支付金额',
			ADD COLUMN unpayAmount decimal(10,2) DEFAULT NULL COMMENT '未支付金额';



ALTER TABLE acct.acct_busirec  
					ADD COLUMN verifyPerson Int(11)  DEFAULT NULL COMMENT '核销人',
					ADD COLUMN verifyDate datetime  DEFAULT NULL COMMENT '核销时间',
					ADD COLUMN verified tinyint(3) DEFAULT NULL COMMENT '核销标识(0:未核销 1:已核销)';
															
															
ALTER TABLE acct.acct_bill 
						ADD COLUMN createBy Int(11) DEFAULT NULL COMMENT '创建人',
						ADD COLUMN periodYear Int(11) DEFAULT NULL COMMENT '期数年(1-2期中的1)',
						ADD COLUMN periodStage Int(11) DEFAULT NULL COMMENT '期数期(1-2期中的2)',
						ADD COLUMN startDate datetime DEFAULT NULL COMMENT '开始日期',
						ADD COLUMN endDate datetime DEFAULT NULL COMMENT '结束日期';
						




