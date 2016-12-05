
-- 插入模板
-- 租金借款逾期，租客逾期1~3天，用
INSERT INTO mesg_template(TYPE,content,paramCount) 
  VALUES('sms_partner_loan_duedate','[租金借款]您的租金借款已经逾期${1}天，请通知租客${2}及时支付本月房租，否则您将需要买回租金借款并支付相应手续费和滞纳金。蘑菇公寓400-800-4949',2);
-- 租金借款逾期，租客逾期4天，用
INSERT INTO mesg_template(TYPE,content,paramCount) 
  VALUES('sms_partner_loan_duedate4','[租金借款]您的租金借款已经逾期${1}天，请通知租客${2}明天22点前支付本月房租，否则明天您将需要买回租金借款并支付相应手续费和滞纳金。蘑菇公寓400-800-4949',2);
-- 租金借款逾期，租客逾期5天，用
INSERT INTO mesg_template(TYPE,content,paramCount) 
  VALUES('sms_partner_loan_duedate5','[租金借款]您的租金借款已经中止，请确保个人帐户余额留有足够金额，买回租金借款并支付相应手续费和滞纳金。蘑菇公寓400-800-4949',0);
-- 租金借款审核通过时
INSERT INTO mesg_template(TYPE,content,paramCount) 
  VALUES('sms_partner_loan_validated','[租金借款已通过]您的租金借款已审核通过，请耐心等待放款。',0);
-- 租金借款买回失败，租客逾期5天，用
INSERT INTO mesg_template(TYPE,content,paramCount) 
  VALUES('sms_partner_loan_payback_failure','[租金借款]租金借款买回失败，您的帐户提现功能已被冻结，请及时充值。蘑菇公寓400-800-4949',0);