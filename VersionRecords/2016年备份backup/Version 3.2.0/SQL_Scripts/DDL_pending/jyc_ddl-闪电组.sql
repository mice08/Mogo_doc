use mogoroomdb;
/*贷款请求跟综器*/
DROP TABLE if EXISTS loan_request_tracker;
CREATE TABLE `loan_request_tracker` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id 自增长',
  `loanChannel` int(11) NOT NULL COMMENT '资方名称(参考loan_channel的id)',
  `outBusinessId` varchar(50) DEFAULT NULL COMMENT '第三方业务主键',
  `url` varchar(100) NOT NULL COMMENT '第三方接口地址',
  `requestContent` varchar(2048) DEFAULT NULL COMMENT '请求参数',
  `responseContent` varchar(2048) NOT NULL COMMENT '请求返回(已经解密或处理后的或者接口调用失败信息)',
  `result` tinyint(2) NOT NULL COMMENT '返回结果(0:成功 1:失败)',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  `requestTime` datetime NOT NULL COMMENT '请求时间',
  `responseTime` datetime NOT NULL COMMENT '响应时间',
  `comments` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  CHARSET=utf8mb4 COMMENT='贷款请求跟综器';

/*房东贷款申请his*/
DROP TABLE if EXISTS loan_landlord_contract_his;
CREATE TABLE `loan_landlord_contract_his` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '借款表Id',
  `loanContractId` int(11) NOT NULL COMMENT '房东贷款申请id',
  `landlordId` int(11) NOT NULL COMMENT '房东Id(冗余方便查询)',
  `loanChannel` int(11) NOT NULL COMMENT '贷款来源 参考字典表 loan_channel(1:拉卡拉 2:蘑菇 3:聚有财)',
  `credits` decimal(12,2) NOT NULL DEFAULT '0.00' COMMENT '信用额',
  `soDoneCode` int(11) DEFAULT NULL COMMENT '业务操作(参考字典表组名:comm_business_record)',
  `shortestTerm` int(11) NOT NULL DEFAULT '3' COMMENT '最短蘑菇宝租期（3-12）',
  `longestTerm` int(11) DEFAULT NULL COMMENT '最长蘑菇宝租期',
  `applyCityId` int(11) DEFAULT NULL COMMENT '贷款申请城市',
  `feeRate` int(11) DEFAULT NULL COMMENT '服务费费率',
  `canLoan` int(11) NOT NULL DEFAULT '1' COMMENT '是否可以贷款(0:不可以 1:可以)',
  `canOneTime` int(11) NOT NULL DEFAULT '1' COMMENT '是否一次性付款(0:不可以 1:可以)',
  `status` tinyint(2) DEFAULT NULL COMMENT '借款单状态(1:待审 2:终审通过 3:终审未通过 4:一审通过 5:一审未通过)',
  `picGroupId1` int(11) DEFAULT NULL COMMENT '图片组id1 一审对应附件',
  `picGroupId2` int(11) DEFAULT NULL COMMENT '图片组id2  二审对应附件',
  `answerPaperId1` int(11) DEFAULT NULL COMMENT '答卷1(房东资料答卷)',
  `answerPaperId2` int(11) DEFAULT NULL COMMENT '答卷2(一审答卷)',
  `applyTime` datetime DEFAULT NULL COMMENT '申请时间',
  `approvalUser1` int(11) DEFAULT NULL COMMENT '二审审核人',
  `approvalTime1` datetime DEFAULT NULL COMMENT '二审时间',
  `approvalUser` int(11) DEFAULT NULL COMMENT '终审人',
  `approvalTime` datetime DEFAULT NULL COMMENT '终审时间',
  `remark` varchar(200) DEFAULT NULL COMMENT '一审备注',
  `remark2` varchar(200) DEFAULT NULL COMMENT '二审备注',
  `operType` tinyint(1) NOT NULL COMMENT '操作类型(1:新增 2:修改 3:逻辑删除)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='房东贷款申请历史表';

/*
 信用额度his
*/
drop table if exists loan_landlord_credit_his;
CREATE TABLE `loan_landlord_credit_his` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '房东信用表Id',
  `loanCreditId` int(11) DEFAULT NULL COMMENT '房东信用额度id',
  `rangeAmount` decimal(12,2) DEFAULT NULL COMMENT '规模动态额度',
  `roomCount` int(11) NOT NULL DEFAULT '0' COMMENT '房东房间数',
  `loanChannel` int(11) NOT NULL COMMENT '贷款来源 参考字典表 loan_channel(1:拉卡拉 2:蘑菇 3:聚有财)',
  `onlineTradingAmount` decimal(12,2) NOT NULL DEFAULT '0.00' COMMENT '线上交易动态额度总额',
  `deductionAmount` decimal(12,2) NOT NULL DEFAULT '0.00' COMMENT '额度扣减总额',
  `restoreAmount` decimal(12,2) NOT NULL DEFAULT '0.00' COMMENT '额度恢复总额',
  `theoryAmount` decimal(12,2) NOT NULL DEFAULT '0.00' COMMENT '房东动态理论额度总额',
  `amountRate` int(3) NOT NULL DEFAULT '100' COMMENT '房东额度系数(百分比) 1-100之间整数',
  `credits` decimal(12,2) NOT NULL DEFAULT '0.00' COMMENT '信用额',
  `credits2` decimal(12,2) DEFAULT '0.00' COMMENT '第二版信用额',
  `soDoneCode` int(11) DEFAULT NULL COMMENT '业务操作(参考字典表组名:comm_business_record)',
  `applyCityId` int(11) DEFAULT NULL COMMENT '房东贷款归属城市',
  `shortestTerm` int(11) DEFAULT NULL COMMENT '最短蘑菇宝租期（6-12）',
  `longestTerm` int(11) DEFAULT '12' COMMENT '最长蘑菇宝租期',
  `feeRate` int(11) DEFAULT NULL COMMENT '服务费费率',
  `canLoan` int(11) NOT NULL DEFAULT '1' COMMENT '是否可以贷款(0:不可以 1:可以)',
  `beforeDays` int(11) DEFAULT '15' COMMENT '提前还账单天数',
  `canOneTime` int(11) NOT NULL DEFAULT '1' COMMENT '是否一次性付款(0:不可以 1:可以)',
  `createBy` int(11) NOT NULL COMMENT '创建人员Id',
  `createByType` int(11) NOT NULL COMMENT '创建人类型(参考字典表组名:userType)',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  `operType` tinyint(4) NOT NULL COMMENT '操作类型(1:新增 2:修改 3:逻辑删除)',
  `comments` varchar(200) DEFAULT NULL COMMENT '备注',
  `mogoApplyTime` datetime DEFAULT NULL COMMENT '最近蘑菇宝贷款申请时间',
  `rangeAmountRate` int(11) DEFAULT NULL COMMENT 'A类额度系数百分比',
  `onlineTradingAmountRate` int(11) DEFAULT NULL COMMENT 'B类额度系数百分比',
  `sysConfHisId` int(11) NOT NULL COMMENT '系统参数配置(关于信用额度历史表配置)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='信用额度历史表';


/*贷款人信息表*/
drop table if exists loan_borrower_info;
CREATE TABLE `loan_borrower_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id 自增长',
  `tid` int(11) NOT NULL COMMENT 'user_info_his 的 tid',
  `userName` varchar(32) NOT NULL COMMENT '借款人姓名',
  `gender` int(1) DEFAULT NULL COMMENT '性别: (0:女 1:男)',
  `idCard` varchar(50) NOT NULL COMMENT '身份证号码',
  `addressDetails` varchar(128) DEFAULT NULL COMMENT '详细住宅地址',
  `mobile` varchar(20) NOT NULL COMMENT '借款人手机号',
  `married` int(1) DEFAULT NULL COMMENT '婚姻状况',
  `debitcard` varchar(50) NOT NULL COMMENT '借记卡卡号',
  `debitbank` varchar(8) NOT NULL COMMENT '借记卡开户行',
  `provinceId` int(11) DEFAULT NULL COMMENT '省级代码 (参考字典表:loan_district_mapping 组名:provienceId)',
  `cityId` int(11) DEFAULT NULL COMMENT '市级代码 (参考字典表:loan_district_mapping 组名:cityId)',
  `districtId` int(11) DEFAULT NULL COMMENT '城区代码 (参考字典表:loan_district_mapping 组名:districtId)',
  `picGroupId` int(11) DEFAULT NULL COMMENT 'comm_picture_group 的 id 图片名称 certfirstimg-身份证正面照，certsecondimg-身份证反面照，nowphoto-手持身份证照，groupPhoto-租客和房 东合照路径',
  `loanChannel` int(1) NOT NULL COMMENT '贷款来源 参考字典表 loan_channel(1:拉卡拉 2:蘑菇 3:聚有财)',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  `isBankcardBinded` tinyint(1) DEFAULT NULL COMMENT '是否绑定银行卡成功(1:是 0:否)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4  COMMENT='贷款人信息表';

/*贷款合同明细表*/
drop table if exists loan_contract;
create table `loan_contract` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id 自增长 ',
  `borrowerInfoId` int(11) NOT NULL COMMENT 'loan_borrower_info id',
  `signedOrderId` int(11) NOT NULL COMMENT '签约单 id',
  `orderNumber`   varchar(50) DEFAULT NULL COMMENT '蘑菇订单号，同一个签约单重新提交后需要生成新的申请号',
  `contractNumber` varchar(50) DEFAULT NULL COMMENT '资方合同号，资方提供',
  `outerBusinessKey` varchar(50) DEFAULT NULL COMMENT '资方的产品交互的唯一号',
  `applyAmount` decimal(12,2) NOT NULL COMMENT '申请总金额',
  `loanStartDate` date NOT NULL COMMENT '贷款起始日',
  `period` int(4) NOT NULL COMMENT '申请周期',
  `periodStep` int(4) DEFAULT NULL COMMENT '申请周期单位(5:月)',
  `workFlowStatus` int(3) DEFAULT NULL COMMENT '合同状态(4:待审核 8:验证失败 12:审核通过 16:审核失败 20:放款成功 24:提前还贷 28:终止合同)',
  `mogoStatus` int(3) DEFAULT NULL COMMENT 'mogo状态(8:蘑菇审核通过 12:蘑菇审核失败)',
  `lenderStatus` int(3) DEFAULT NULL COMMENT '资方状态(0:第三方待审核 4:资料内部验证失败 8:资料第三方验证失败)',
  `approver` int(11) DEFAULT NULL COMMENT '申请资料mogo审核人(必然是员工)',
  `approvalTime` datetime DEFAULT NULL COMMENT '申请资料mogo审核时间',
  `fundReceivedTime` datetime DEFAULT NULL COMMENT '资方放款时间',
  `fundConfirmer` int(11) DEFAULT NULL COMMENT '财务款项到位确认人(必然是员工)',
  `fundConfirmTime` datetime DEFAULT NULL COMMENT '财务款项到位确认时间',
  `errmsg` varchar(150) DEFAULT NULL COMMENT '贷款流程中异常信息描述',
  `loanChannel` int(3) DEFAULT 3 NOT NULL COMMENT '贷款来源 参考字典表 loan_channel(1:拉卡拉 2:蘑菇 3:聚有财)',
  `depositAmount` decimal(12,2) NOT NULL DEFAULT '0.00' COMMENT '借款保证金',
  `feeRate` int(11) NOT NULL DEFAULT '0' COMMENT '借款费率万分比',
  `actualAmount` decimal(12,2) NOT NULL DEFAULT '0.00' COMMENT '实际放款金额',
  `prodId` int(11) DEFAULT NULL COMMENT '产品id',
  `prodType` int(11) DEFAULT NULL COMMENT '产品类型',
  `relContractId` int(11) DEFAULT NULL COMMENT '关联贷款合同id',
  `loanApplyTime` datetime DEFAULT NULL COMMENT '贷款申请时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='贷款合同明细表, 后期需要关联产品编号';

/*贷款合同日志表*/
DROP TABLE IF EXISTS `loan_contract_logs`;
CREATE TABLE `loan_contract_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id 自增长 ',
  `loanContractId` int(11) NOT NULL COMMENT 'loan_contract id',
  `soDoneCode` int(11) NOT NULL COMMENT 'comm_business_record id',
  `workFlowStatus` int(3) DEFAULT NULL COMMENT '合同状态(4:待审核 8:验证失败 12:审核通过 16:审核失败 20:放款成功 24:提前还贷 28:终止合同)',
  `mogoStatus` int(3) DEFAULT NULL COMMENT 'mogo状态(8:蘑菇审核通过 12:蘑菇审核失败)',
  `lenderStatus` int(3) DEFAULT NULL COMMENT '资方状态(0:第三方待审核 4:资料内部验证失败 8:资料第三方验证失败)',
  `createTime` datetime DEFAULT NULL COMMENT '更新时间',
  `errmsg` varchar(150) DEFAULT NULL COMMENT '贷款流程中异常信息描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='贷款合同日志表, 每次合同状态发生变化都要生成此表';



/*房东贷款申请 新增贷款渠道id*/
ALTER  TABLE loan_landlord_contract ADD COLUMN loanChannel INT(11)  null comment '贷款来源 参考字典表 loan_channel(1:拉卡拉 2:蘑菇 3:聚有财)' after landlordId;

/*房东贷款申请 新增一审图片上传*/
ALTER  TABLE loan_landlord_contract ADD COLUMN picGroupId1 INT(11) NULL  comment '图片组id1(一审对应的图片附件)' after `status`;

/*房东贷款申请 新增二审图片上传*/
ALTER  TABLE loan_landlord_contract ADD COLUMN picGroupId2 INT(11) NULL  comment '图片组id1(二审对应的图片附件)' after picGroupId1;

/*房东贷款申请 答卷1(房东资料答卷)*/
ALTER  TABLE loan_landlord_contract ADD COLUMN answerPaperId1 INT(11) NULL  comment '答卷1(房东资料答卷)' after picGroupId2;

/*房东贷款申请 答卷2(一审答卷)*/
ALTER  TABLE loan_landlord_contract ADD COLUMN answerPaperId2 INT(11) NULL  comment '答卷2(一审答卷)' after answerPaperId1;

/*房东贷款申请 一审审核人*/
ALTER  TABLE loan_landlord_contract ADD COLUMN approvalUser1 INT(11) NULL  comment '二审审核人' after applyTime;

/*房东贷款申请 一审时间*/
ALTER  TABLE loan_landlord_contract ADD COLUMN approvalTime1 int(11) NULL  comment '二审时间' after approvalUser1;

/*房东贷款申请 二审备注*/
ALTER  TABLE loan_landlord_contract ADD COLUMN remark2 varchar(200) NULL  comment '二审备注' after remark;

/*房东贷款申请 修改remark的注释为一审备注*/
ALTER TABLE loan_landlord_contract modify column remark VARCHAR(200) NULL  COMMENT '一审备注';

/*租金宝合同 新增最长蘑菇宝租期*/
ALTER TABLE loan_landlord_contract ADD COLUMN longestTerm INT(11) NULL COMMENT '最长蘑菇宝租期' AFTER shortestTerm;

/*房东贷款合同 新增申请城市*/
ALTER TABLE  loan_landlord_contract ADD COLUMN applyCityId INT(11) NULL comment '贷款申请城市' after longestTerm;


/*房东贷款申请 改status的comment为借款单状态(1:待一审 2:审核通过 3:审核未通过 4:一审通过 5:一审未通过)*/
ALTER TABLE loan_landlord_contract  modify column `status` int(11) NULL  COMMENT '借款单状态(1:待审核(对于聚有财待一审) 2:审核通过 3:审核未通过 4:一审通过 5:一审未通过)';



/*房东信用额度 信用额度表新增理论额度总额*/
ALTER TABLE loan_landlord_credit ADD COLUMN theoryAmount decimal(12,2) default 0 not null comment '房东动态理论额度总额' after landlordId ;

/*房东信用额度  房东额度系数(百分比) 1-100之间整数*/
ALTER TABLE loan_landlord_credit ADD COLUMN amountRate int(3) default 100 not null comment '房东额度系数(百分比)，1-100之间整数' after theoryAmount;

/*房东信用额度 资方渠道id*/
ALTER TABLE loan_landlord_credit ADD COLUMN loanChannel int(11) not null DEFAULT 1 comment '贷款来源 参考字典表 loan_channel(1:拉卡拉 2:蘑菇 3:聚有财)' after amountRate;

/*房东信用额度 新增房东额度配置hisId*/
ALTER TABLE loan_landlord_credit ADD COLUMN sysConfHisId int(11) not null comment '系统参数配置(关于信用额度his配置)' after remark;

/*房东信用 新增提前还账单天数*/
ALTER  TABLE loan_landlord_credit ADD COLUMN beforeDays INT (11) DEFAULT 15 NULL  COMMENT '提前还账单天数' AFTER canLoan;

/*房东信用额度 新增最长蘑菇宝租期*/
ALTER TABLE loan_landlord_credit ADD COLUMN longestTerm INT(11) DEFAULT 12 NULL COMMENT '最长蘑菇宝租期' AFTER shortestTerm;

/*房东信用额度 业务id:中止 暂停 恢复操作*/
ALTER TABLE loan_landlord_credit ADD COLUMN soDoneCode INT(11) NULL COMMENT '业务操作id(comm_business_record)' AFTER longestTerm;

/*房东信用额度 归属城市*/
ALTER TABLE loan_landlord_credit ADD COLUMN applyCityId INT(11) NULL COMMENT '房东贷款归属城市' AFTER soDoneCode;

/*房东信用额度 新增最近蘑菇宝贷款申请时间*/
ALTER  TABLE loan_landlord_credit ADD COLUMN mogoApplyTime DATETIME NULL COMMENT '最近蘑菇宝贷款申请时间' AFTER remark;

/*由于信用额度设置配置不止2048个字符 */
ALTER TABLE comm_sysconfig  CHANGE `val` `val` VARCHAR(4096) NULL  COMMENT '配置项值';

/*由于信用额度设置配置不止2048个字符 */
ALTER TABLE comm_sysconfig_his
  CHANGE `val` `val` VARCHAR(4096) NULL  COMMENT '变更前配置项值',
  CHANGE `newVal` `newVal` VARCHAR(4096)  NULL  COMMENT '变更后配置项值';



/*房东买回 新增贷款来源*/
ALTER TABLE  loan_landlord_buyback ADD COLUMN loanChannel INT(11) DEFAULT 1 NULL COMMENT '贷款来源(参考字典表组名:loan_channel)' AFTER `status`;
/*房东买回 新增租客逾期滞纳金*/
ALTER TABLE  loan_landlord_buyback ADD COLUMN renterPenalty DECIMAL(12,2) DEFAULT 0 NULL COMMENT '租客逾期还款滞纳金' AFTER backFee;
/*房东买回 新增已扣租客逾期滞纳金*/
ALTER TABLE  loan_landlord_buyback ADD COLUMN repayedRenterPenalty DECIMAL(12,2) DEFAULT 0 NULL COMMENT '已扣租客逾期还款滞纳金' AFTER repayedLateFee;
/*房东买回 新增待扣租客逾期滞纳金*/
ALTER TABLE loan_landlord_buyback ADD COLUMN waitRepayRenterPenalty DECIMAL(12,2) DEFAULT 0 NULL COMMENT '待扣租客逾期滞纳金' AFTER waitRepayLateFee;

/*贷款放款计划 新增贷款来源*/
ALTER TABLE  loan_landlord_payplan ADD COLUMN loanChannel INT(11) DEFAULT 1 NULL COMMENT '贷款来源(参考字典表组名:loan_channel)' AFTER depositAmount;

UPDATE loan_landlord_buyback SET loanChannel = 1;

UPDATE loan_landlord_credit SET loanChannel = 1;

UPDATE loan_landlord_contract SET loanChannel = 1;

/*房东信用额度表  新版信用额度*/
ALTER  TABLE loan_landlord_credit ADD COLUMN `credits2` decimal(12,2) DEFAULT '0.00' COMMENT '第二版信用额' AFTER credits;

/*comm_picture  新增文件类型*/
ALTER TABLE comm_picture ADD COLUMN fileType INT(11) DEFAULT 1 NULL COMMENT '文件类型 (1:图片 2:word 3:excel 4:pdf 5:video)';

/*loan_landlord_contract 租金宝申请渠道允许为null同时去掉了默认值*/
ALTER  TABLE loan_landlord_contract MODIFY COLUMN loanChannel INT(11) null comment '贷款来源 参考字典表 loan_channel(1:拉卡拉 2:蘑菇 3:聚有财)' after landlordId;

/*房东贷款资质申请 新增信用配置hisId*/
ALTER TABLE loan_landlord_contract ADD COLUMN creditHisId INT(11) NULL COMMENT '信用配置hisId(loan_landlord_credit_his)';

/*房东贷款资质申请 新增信用配置hisId*/
ALTER TABLE loan_landlord_contract_his ADD COLUMN creditHisId INT(11) NULL COMMENT '信用配置hisId(loan_landlord_credit_his)';








