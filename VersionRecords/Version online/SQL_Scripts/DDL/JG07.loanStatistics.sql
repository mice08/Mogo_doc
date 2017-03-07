/*添加金融运营报表相关表*/
USE mogoroomdb;

ALTER TABLE `comm_task_log`   
  ADD COLUMN `dataFrom` INT(11)  NOT NULL DEFAULT '0',
  ADD COLUMN `dataTo` INT(11)  NOT NULL DEFAULT '0';

/*金融贷款申请统计信息表*/
DROP TABLE IF EXISTS repo_loan_apply;
CREATE TABLE repo_loan_apply (
  id INT(11) NOT NULL AUTO_INCREMENT COMMENT '金融贷款申请统计信息表id',
  taskLogId INT(11) NOT NULL COMMENT '任务id',
  landlordType INT(3) NOT NULL COMMENT '房东类型(0:平台 1:自营)',
  prodType INT(3) NOT NULL COMMENT '资方类型(11001:蘑菇宝 11002:月付)',
  loanChannel INT(3) NOT NULL COMMENT '贷款渠道(1.拉卡拉 2:自营 3:聚有财)',
  cityId INT(11) NOT NULL COMMENT '城市代码',
  statDate INT(8) NOT NULL COMMENT '统计日期(YYYYMMDD/YYYYMM)',
  dateUnit INT(3) NOT NULL COMMENT '日期单位(1:按天 2:按月)',
  applyCount INT(8) NOT NULL DEFAULT '0' COMMENT '申请笔数',
  agreeCount INT(8) NOT NULL DEFAULT '0' COMMENT '审核通过笔数',
  refuseCountByMogo INT(8) NOT NULL DEFAULT '0' COMMENT '蘑菇拒绝笔数',
  refuseCountByCapital INT(8) NOT NULL DEFAULT '0' COMMENT '资方拒绝笔数',
  valid INT(1) NOT NULL DEFAULT '1' COMMENT '是否有效(0:有效 1:无效)',
  PRIMARY KEY (id),
  KEY statDate(statDate)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COMMENT='金融贷款申请统计信息表';

/*金融贷款放款统计信息表*/
DROP TABLE IF EXISTS repo_loan_plan;
CREATE TABLE repo_loan_plan (
  id INT(11) NOT NULL AUTO_INCREMENT COMMENT '金融贷款放款统计信息表id',
  taskLogId INT(11) NOT NULL COMMENT '任务id',
  landlordType INT(3) NOT NULL COMMENT '房东类型(0:平台 1:自营)',
  prodType INT(3) NOT NULL COMMENT '产品类型(11001:蘑菇宝 11002:月付)',
  loanChannel INT(3) NOT NULL COMMENT '贷款渠道(1.拉卡拉 2:自营 3:聚有财)',
  cityId INT(11) NOT NULL COMMENT '城市代码',
  statDate INT(8) NOT NULL COMMENT '统计日期(YYYYMMDD/YYYYMM)',
  dateUnit INT(3) NOT NULL COMMENT '日期单位(1:按天 2:按月)',
  capitalLoanCount INT(8) NOT NULL DEFAULT '0' COMMENT '资方放款笔数',
  mogoLoanCount INT(8) NOT NULL DEFAULT '0' COMMENT '蘑菇放款笔数',
  capitalLoanAmount DECIMAL(14,2) NOT NULL DEFAULT '0.00' COMMENT '资方放款金额',
  mogoLoanAmount DECIMAL(14,2) NOT NULL DEFAULT '0.00' COMMENT '实际放款金额(蘑菇)',
  capitalChargeAmount DECIMAL(14,2) NOT NULL DEFAULT '0.00' COMMENT '资方手续费',
  mogoChargeAmount DECIMAL(14,2) NOT NULL DEFAULT '0.00' COMMENT '蘑菇手续费',
  depositAmount DECIMAL(14,2) NOT NULL DEFAULT '0.00' COMMENT '保证金',
  applyAmount DECIMAL(14,2) NOT NULL DEFAULT '0.00' COMMENT '申请金额',
  totalLoanPrincipal DECIMAL(14,2) NOT NULL DEFAULT '0.00' COMMENT '累计放款本金',
  totalMogoCharge DECIMAL(14,2) NOT NULL DEFAULT '0.00' COMMENT '累计蘑菇手续费',
  valid INT(1) NOT NULL DEFAULT '1' COMMENT '是否有效(0:有效 1:无效)',
  PRIMARY KEY (id),
  KEY statDate(statDate)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COMMENT='金融贷款放款统计信息表';

/*金融贷款还款统计信息表*/
DROP TABLE IF EXISTS repo_loan_repay;
CREATE TABLE repo_loan_repay (
  id INT(11) NOT NULL AUTO_INCREMENT COMMENT '金融贷款还款统计信息表id',
  taskLogId INT(11) NOT NULL COMMENT '任务id',
  landlordType INT(3) NOT NULL COMMENT '房东类型(0:平台 1:自营)',
  prodType INT(3) NOT NULL COMMENT '资方类型(11001:蘑菇宝 11002:月付)',
  loanChannel INT(3) NOT NULL COMMENT '贷款渠道(1.拉卡拉 2:自营 3:聚有财)',
  cityId INT(11) NOT NULL COMMENT '城市代码',
  statDate INT(8) NOT NULL COMMENT '统计日期(YYYYMMDD/YYYYMM)',
  dateUnit INT(3) NOT NULL COMMENT '日期单位(1:按天 2:按月)',
  shouldPayCount INT(8) NOT NULL DEFAULT '0' COMMENT '应还款账单数:应还款日为当天的账单个数',
  paidCount INT(8) NOT NULL DEFAULT '0' COMMENT '已还款账单数:应还款日为当天的账单中，状态为已还款的账单个数（之前或者当天还款）',
  unPayCount INT(8) NOT NULL DEFAULT '0' COMMENT '未还款账单数(应还款账单数-已还款账单数)',
  overdueCount INT(8) NOT NULL DEFAULT '0' COMMENT '截止当日逾期账单数:截止至当日，仍旧处于逾期状态的还款账单',
  shouldPayAmount  DECIMAL(14,2) NOT NULL DEFAULT '0.00' COMMENT '应还款总额:应还款日为当天的账单总金额',
  paidAmount  DECIMAL(14,2) NOT NULL DEFAULT '0.00' COMMENT '已还款总额:应还款日为当天的账单中，已还款账单的总金额',
  unPayAmount  DECIMAL(14,2) NOT NULL DEFAULT '0.00' COMMENT '未还款总额:应还款日为当天的账单中，未还款账单的总金额',
  overdueAmount  DECIMAL(14,2) NOT NULL DEFAULT '0.00' COMMENT '截止当日逾期总额:截止至当日，仍旧处于逾期状态的还款账单的总额',
  totalShouldPayAmount  DECIMAL(14,2) NOT NULL DEFAULT '0.00' COMMENT '累计应还款金额',
  valid INT(1) NOT NULL DEFAULT '1' COMMENT '是否有效(0:有效 1:无效)',
  PRIMARY KEY (id),
  KEY statDate(statDate)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COMMENT='金融贷款还款统计信息表';

/*金融贷款买回统计信息表*/
DROP TABLE IF EXISTS repo_loan_buyback;
CREATE TABLE repo_loan_buyback (
  id INT(11) NOT NULL AUTO_INCREMENT COMMENT '金融贷款买回统计信息表id',
  taskLogId INT(11) NOT NULL COMMENT '任务id',
  landlordType INT(3) NOT NULL COMMENT '房东类型(0:平台 1:自营)',
  prodType INT(3) NOT NULL COMMENT '资方类型(11001:蘑菇宝 11002:月付)',
  loanChannel INT(3) NOT NULL COMMENT '贷款渠道(1.拉卡拉 2:自营 3:聚有财)',
  cityId INT(11) NOT NULL COMMENT '城市代码',
  statDate INT(8) NOT NULL COMMENT '统计日期(YYYYMMDD/YYYYMM)',
  dateUnit INT(3) NOT NULL COMMENT '日期单位(1:按天 2:按月)',
  settlementCount  INT(11) NOT NULL DEFAULT '0' COMMENT '满期结清笔数',
  earlyTerminateCount  INT(11) NOT NULL DEFAULT '0' COMMENT '提前终止笔数',
  shouldBuyBackCount  INT(11) NOT NULL DEFAULT '0' COMMENT '应买回笔数',
  hasBuyBackCount  INT(11) NOT NULL DEFAULT '0' COMMENT '已买回笔数',
  notBuyBackCount  INT(11) NOT NULL DEFAULT '0' COMMENT '未买回笔数',
  shouldBuyBackAmount  DECIMAL(14,2) NOT NULL DEFAULT '0.00' COMMENT '应买回总额',
  hasBuyBackAmount  DECIMAL(14,2) NOT NULL DEFAULT '0.00' COMMENT '已买回总额',
  notBuyBackAmount  DECIMAL(14,2) NOT NULL DEFAULT '0.00' COMMENT '未买回总额',
  overdueUnpayBuyBackCount  INT(11) NOT NULL DEFAULT '0' COMMENT '截止当日/月逾期未买回笔数',
  overdueUnpayBuyBackAmount  DECIMAL(14,2) NOT NULL DEFAULT '0.00' COMMENT '截止当日/月逾期未买回总额',
  badBuyBackAmount  DECIMAL(14,2) NOT NULL DEFAULT '0.00' COMMENT '坏账本金',
  mogoPrincipalBuyBackCount  INT(11) NOT NULL DEFAULT '0' COMMENT '向资方买回笔数',
  mogoPrincipalBuyBackAmount  DECIMAL(14,2) NOT NULL DEFAULT '0.00' COMMENT '向资方买回本金',
  totalPrincipalBuyBackAmount  DECIMAL(14,2) NOT NULL DEFAULT '0.00' COMMENT '累计向资方买回本金',
  totalShouldBuyBackAmount  DECIMAL(14,2) NOT NULL DEFAULT '0.00' COMMENT '累计应还款金额',
  totalUnpayBuyBackAmount  DECIMAL(14,2) NOT NULL DEFAULT '0.00' COMMENT '累计逾期本金',
  valid INT(1) NOT NULL DEFAULT '1' COMMENT '是否有效(0:有效 1:无效)',
  PRIMARY KEY (id),
  KEY statDate(statDate)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COMMENT='金融贷款买回统计信息表';
