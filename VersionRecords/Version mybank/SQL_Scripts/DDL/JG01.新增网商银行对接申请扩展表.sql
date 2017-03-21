/*
  新增渠道为网商银行的贷款申请扩展表
 */
USE mogoroomdb;

DROP TABLE IF EXISTS loan_contract_mybank;

CREATE TABLE loan_contract_mybank (
  id INT (11) NOT NULL AUTO_INCREMENT COMMENT '贷款申请扩展表id',
  loanContractId INT (11) NOT NULL COMMENT '贷款申请id(蘑菇宝id)',
  creditCode VARCHAR(64) NULL COMMENT '授信编号，如果授信审批成功，会产生授信编号。如果不通过没有授信编号',
  ipRoleId VARCHAR (64) NULL COMMENT '客户在网商银行的角色id',
  custIproleId VARCHAR (32) NULL COMMENT '贷款客户在网商的会员ID',
  loanArNo VARCHAR (32) NULL COMMENT '贷款合约号',
  applyNo VARCHAR (128) NULL COMMENT '业务单编号，展示给客户，无业务意义',
  subApplyNo VARCHAR (128) NULL COMMENT '子业务编号，业务处理使用',
  dataId VARCHAR (1024) NULL COMMENT '该条数据在网商的唯一id',
  acctBillId INT(32) NULL COMMENT '分期月付分期的账单id',
  createTime DATETIME DEFAULT NULL COMMENT '创建时间',
  createBy INT(11) DEFAULT NULL COMMENT '创建人',
  createByType INT(11) DEFAULT NULL COMMENT '创建人类型(参照字典表组名:userType)',
  updateTime DATETIME DEFAULT NULL COMMENT '更新时间',
  updateBy INT(11) DEFAULT NULL COMMENT '更新人',
  updateByType INT(11) DEFAULT NULL COMMENT '更新人类型(参照字典表组名:userType)',
  PRIMARY KEY (id),
  INDEX idx_loanContractId(loanContractId),
  INDEX idx_acctBillId(acctBillId),
  INDEX idx_creditCode(creditCode)
) ENGINE = INNODB DEFAULT CHARSET = utf8mb4 COMMENT '贷款申请扩展表';
