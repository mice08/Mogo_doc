/*添加金融运营报表相关表*/
USE mogoroomdb;

/*金融贷款任务表*/
DROP TABLE IF EXISTS loan_task_tracker;
CREATE TABLE loan_task_tracker (
  id INT(11) NOT NULL AUTO_INCREMENT COMMENT '金融贷款任务表id',
  taskName VARCHAR(32) NOT NULL COMMENT '任务名称',
  taskType INT(3) NOT NULL COMMENT '任务类型(1:申请统计 2:放款统计 3:还款统计 4:买回统计)',
  taskParam VARCHAR(64) DEFAULT NULL COMMENT '任务参数',
  startTime DATETIME NOT NULL COMMENT '开始时间',
  endTime DATETIME DEFAULT NULL COMMENT '结束时间',
  status INT(3) DEFAULT NULL COMMENT '执行结果(1:初始 2:运行 3:成功 4:失败 )',
  errmsg VARCHAR(1024) DEFAULT NULL COMMENT '错误信息',
  remark VARCHAR(128) DEFAULT NULL COMMENT '任务备注',
  soDonecode INT(11) DEFAULT NULL COMMENT '业务记录ID，参考comm_business_record表的id',
  createTime DATETIME NOT NULL COMMENT '创建时间',
  updateTime DATETIME  COMMENT '更新时间',
  channel INT(3) NOT NULL COMMENT '创建渠道(参考字典表groupName=channel)',
  PRIMARY KEY (id)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COMMENT='金融贷款任务表';

/*金融贷款申请统计信息表*/
DROP TABLE IF EXISTS repo_loan_statistics_apply;
CREATE TABLE repo_loan_statistics_apply (
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
DROP TABLE IF EXISTS repo_loan_statistics_plan;
CREATE TABLE repo_loan_statistics_plan (
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
  valid INT(1) NOT NULL DEFAULT '1' COMMENT '是否有效(0:有效 1:无效)',
  PRIMARY KEY (id),
  KEY statDate(statDate)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COMMENT='金融贷款放款统计信息表';

/*金融贷款还款统计信息表*/
DROP TABLE IF EXISTS repo_loan_statistics_repay;
CREATE TABLE repo_loan_statistics_repay (
  id INT(11) NOT NULL AUTO_INCREMENT COMMENT '金融贷款还款统计信息表id',
  taskLogId INT(11) NOT NULL COMMENT '任务id',
  landlordType INT(3) NOT NULL COMMENT '房东类型(0:平台 1:自营)',
  prodType INT(3) NOT NULL COMMENT '资方类型(11001:蘑菇宝 11002:月付)',
  loanChannel INT(3) NOT NULL COMMENT '贷款渠道(1.拉卡拉 2:自营 3:聚有财)',
  cityId INT(11) NOT NULL COMMENT '城市代码',
  statDate INT(8) NOT NULL COMMENT '统计日期(YYYYMMDD/YYYYMM)',
  dateUnit INT(3) NOT NULL COMMENT '日期单位(1:按天 2:按月)',
  shouldPayCount INT(8) NOT NULL DEFAULT '0' COMMENT '应还款账单数',
  paidCount INT(8) NOT NULL DEFAULT '0' COMMENT '已还款账单数',
  unPayCount INT(8) NOT NULL DEFAULT '0' COMMENT '未还款账单数',
  overdueCount INT(8) NOT NULL DEFAULT '0' COMMENT '逾期账单数',
  shouldPayAmount  DECIMAL(14,2) NOT NULL DEFAULT '0.00' COMMENT '当天应还款总额',                           ---???
  paidAmount  DECIMAL(14,2) NOT NULL DEFAULT '0.00' COMMENT '已还款总额',
  unPayAmount  DECIMAL(14,2) NOT NULL DEFAULT '0.00' COMMENT '未还款总额',
  overdueAmount  DECIMAL(14,2) NOT NULL DEFAULT '0.00' COMMENT '逾期总额',
  totalShouldPayAmount  DECIMAL(14,2) NOT NULL DEFAULT '0.00' COMMENT '累计应还款金额',            ---???
  valid INT(1) NOT NULL DEFAULT '1' COMMENT '是否有效(0:有效 1:无效)',
  PRIMARY KEY (id),
  KEY statDate(statDate)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COMMENT='金融贷款还款统计信息表';

/*金融贷款买回统计信息表*/
DROP TABLE IF EXISTS repo_loan_statistics_buyback;
CREATE TABLE repo_loan_statistics_buyback (
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
  totalPrincipalBuyBackAmount  DECIMAL(14,2) NOT NULL DEFAULT '0.00' COMMENT '累计向资方买回本金',
  badBuyBackAmount  DECIMAL(14,2) NOT NULL DEFAULT '0.00' COMMENT '坏账本金',
  totalShouldBuyBackAmount  DECIMAL(14,2) NOT NULL DEFAULT '0.00' COMMENT '累计应还款金额',
  totalUnpayBuyBackAmount  DECIMAL(14,2) NOT NULL DEFAULT '0.00' COMMENT '累计逾期本金',
  mogoHasBuyBackAmount  DECIMAL(14,2) NOT NULL DEFAULT '0.00' COMMENT '向资方买回本金',
  valid INT(1) NOT NULL DEFAULT '1' COMMENT '是否有效(0:有效 1:无效)',
  PRIMARY KEY (id),
  KEY statDate(statDate)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COMMENT='金融贷款买回统计信息表';