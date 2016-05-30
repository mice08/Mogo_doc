/*************************************************************************************
  贷款合同表与贷款买回表涉及到的字段新增如下:
  *************************************************************************************/
/*贷款合同表  新增贷款保证金*/
ALTER TABLE loan_contract ADD COLUMN depositAmount DECIMAL(12,2) DEFAULT 0 NOT NULL COMMENT  '借款保证金' AFTER loanChannel;
/*贷款合同表  新增贷款费率*/
ALTER TABLE  loan_contract ADD COLUMN feeRate INT(11) DEFAULT 0 NOT NULL COMMENT '借款费率万分比' AFTER depositAmount;
 
/*贷款合同表  新增实际到手金额*/
ALTER TABLE  loan_contract ADD COLUMN actualAmount DECIMAL(12,2) DEFAULT 0 NOT NULL COMMENT '实际放款金额' AFTER feeRate;
 
/*贷款合同表  新增商品id*/
ALTER TABLE  loan_contract ADD COLUMN prodId INT(11) NULL COMMENT '产品id' AFTER actualAmount;
/*贷款合同表  新增商品type*/
ALTER TABLE  loan_contract ADD COLUMN prodType INT(11) NULL COMMENT '产品类型' AFTER prodId;
/*贷款合同表  新增关联贷款id*/
ALTER TABLE  loan_contract ADD COLUMN relContractId INT(11) NULL COMMENT '关联贷款合同id' AFTER prodType;
 
/*房东买回 新增贷款来源*/
ALTER TABLE  loan_landlord_buyback ADD COLUMN loanChannel INT(11) NOT NULL COMMENT '贷款来源(参考字典表组名:loan_channel)' AFTER `status`;
/*房东买回 新增租客逾期滞纳金*/
ALTER TABLE  loan_landlord_buyback ADD COLUMN renterPenalty DECIMAL(12,2) DEFAULT 0 NULL COMMENT '租客逾期还款滞纳金' AFTER backFee;
/*房东买回 新增已扣租客逾期滞纳金*/
ALTER TABLE  loan_landlord_buyback ADD COLUMN repayedRenterPenalty DECIMAL(12,2) DEFAULT 0 NULL COMMENT '已扣租客逾期还款滞纳金' AFTER repayedLateFee;
/*房东买回 新增待扣租客逾期滞纳金*/
ALTER TABLE loan_landlord_buyback ADD COLUMN waitRepayRenterPenalty DECIMAL(12,2) DEFAULT 0 NULL COMMENT '待扣租客逾期滞纳金' AFTER waitRepayLateFee;

/*贷款放款计划 新增贷款来源*/
ALTER TABLE  loan_landlord_payplan ADD COLUMN loanChannel INT(11) DEFAULT 1 NULL COMMENT '贷款来源(参考字典表组名:loan_channel)' AFTER depositAmount;



