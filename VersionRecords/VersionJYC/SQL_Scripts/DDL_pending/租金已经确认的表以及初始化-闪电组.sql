/*房东贷款申请 新增贷款渠道id*/
ALTER  TABLE loan_landlord_contract ADD COLUMN loanChannel int(11) not null comment '资方渠道id' after landlordId;

/*房东贷款申请 新增一审图片上传*/
ALTER  TABLE loan_landlord_contract ADD COLUMN picGroupId1 INT(11) NULL  comment '图片组id1(一审对应附件)' after `status`;

/*房东贷款申请 新增二审图片上传*/
ALTER  TABLE loan_landlord_contract ADD COLUMN picGroupId2 INT(11) NULL  comment '图片组id1(二审对应附件)' after picGroupId1;

/*房东贷款申请 答卷1(房东资料答卷)*/
ALTER  TABLE loan_landlord_contract ADD COLUMN answerPaperId1 INT(11) NULL  comment '答卷1(房东资料答卷)' after picGroupId2;

/*房东贷款申请 答卷2(一审答卷)*/
ALTER  TABLE loan_landlord_contract ADD COLUMN answerPaperId2 INT(11) NULL  comment '答卷2(一审答卷)' after answerPaperId1;

/*房东贷款申请 一审审核人*/
ALTER  TABLE loan_landlord_contract ADD COLUMN approvalUser1 INT(11) NULL  comment '一审审核人' after applyTime;

/*房东贷款申请 一审时间*/
ALTER  TABLE loan_landlord_contract ADD COLUMN approvalTime1 INT(11) NULL  comment '一审时间' after approvalUser1;

/*房东贷款申请 二审备注*/
ALTER  TABLE loan_landlord_contract ADD COLUMN remark2 varchar(200) NULL  comment '二审备注' after remark;

/*房东贷款申请 修改remark的comment为一审备注*/
ALTER TABLE loan_landlord_contract  CHANGE remark remark VARCHAR(200) NULL  COMMENT '一审备注';

/*房东贷款申请 改status的comment为借款单状态(1:待一审 2:审核通过 3:审核未通过 4:一审通过 5:一审未通过)*/
ALTER TABLE loan_landlord_contract  CHANGE `status` `status` int(11) NULL  COMMENT '借款单状态(1:待一审 2:审核通过 3:审核未通过 4:一审通过 5:一审未通过)';


/*房东贷款申请his*/
DROP TABLE if EXISTS loan_landlord_contract_his;
create table loan_landlord_contract_his
(
   id                   int(11) PRIMARY KEY AUTO_INCREMENT comment '借款表Id',
   loanContractId       int(11) NOT NULL comment '房东贷款申请id',
   landlordId           int(11) NOT NULL comment '房东Id(冗余方便查询)',
   loanChannel           int(11) NOT NULL comment '资方渠道id',
   credits              decimal(12,2) NOT NULL  DEFAULT 0 comment '信用额',
   shortestTerm         int(11) NOT NULL  DEFAULT 3 comment '最短蘑菇宝租期（3-12）',
   feeRate              int(11)  comment '服务费费率',
   canLoan              int(11) NOT NULL  DEFAULT  1 comment '是否可以贷款 0.不可以；1.可以',
   oneTime              int(11) NOT NULL DEFAULT  1 comment '是否一次性付款 0.不可以;1.可以',
   `status`               int(11) comment '借款单状态(1:待审 2:终审通过 3:终审未通过 4:一审通过 5:一审未通过)',
   picGroupId1          int(11)  comment '图片组id1 一审对应附件',
   picGroupId2          int(11)  comment '图片组id2  二审对应附件',
   answerPaperId1 int(11) comment '答卷1(房东资料答卷)',
   answerPaperId2 int(11) comment '答卷2(一审答卷)',
   applyTime            datetime NULL comment '申请时间',
   approvalUser1        int(11) comment '一审审核人',
   approvalTime1        datetime comment '一审时间',
   approvalUser         int(11) comment '终审人',
   approvalTime         datetime comment '终审时间',
   remark               varchar(200) comment '一审备注',
   remark2              varchar(200) comment '二审备注',
   operType             tinyint(1) comment '操作类型(1:新增 2:修改 3:逻辑删除)'
) ENGINE = INNODB DEFAULT CHARSET=utf8  COMMENT '房东贷款申请his';

/*房东信用额度 信用额度表新增理论额度总额*/
ALTER TABLE loan_landlord_credit ADD COLUMN  theoryAmount decimal(12,2) default 0 not null comment '房东动态理论额度总额' after landlordId ;

/*房东信用额度  房东额度系数(百分比) 1-100之间整数*/
ALTER TABLE loan_landlord_credit ADD COLUMN tamountRate int(3) default 100 not null comment '房东额度系数(百分比) 1-100之间整数' after theoryAmount;

/*房东信用额度 资方渠道id*/
ALTER TABLE loan_landlord_credit ADD COLUMN loanChannel int(11) not null comment '资方渠道id' after tamountRate;

/*
 信用额度his
*/
drop table if exists loan_landlord_credit_his;
create table loan_landlord_credit_his
(
   id                   int(11) primary key AUTO_INCREMENT comment '房东信用表Id',
   loanCreditId         int(11) comment '房东信用额度id',
   rangeAmount          decimal(12,2) comment '规模动态额度',
   roomCount            int(11) default 0 not null comment '房东房间数',
	 loanChannel					int(11) not NULL comment '资方渠道id',
   monthRentAmount      decimal(12,2) default 0 not null comment '房子月租金金额',
   rangeRate1           decimal(12,2) default 0 not null comment '房东规模系数1',
   rangeRate2           decimal(12,2) default 0 not null comment '房东规模系数2',
   onlineTradingAmount  decimal(12,2) default 0 not null comment '线上交易动态额度总额',
   onlineRentAmount     decimal(12,2) default 0 not null comment '线上支付租金总额',
   onlineRate1          decimal(12,2) default 0 not null comment '线上系数1',
   onlineRate2          decimal(12,2) default 0 not null comment '线上系数2',
   customBillCount      int(11) default 0 not null comment '自定义账单次数',
   deductionAmount      decimal(12,2) default 0 not null comment '额度扣减总额',
   deductionRate1       decimal(12,2) default 1 not null comment '扣减系数1',
   deductionRate2       decimal(12,2) default 1 not null comment '扣减系数1',
   restoreAmount        decimal(12,2) default 0 not null comment '额度恢复总额',
   renterRepayAmount    decimal(12,2) default 0 not null comment '租客还款金额',
   renterRepayRate1     decimal(12,2) default 1 not null comment '租客还款系数1',
   renterRepayRate2     decimal(12,2) default 1 not null comment '租客还款系数2',
   lanlordBuyBackAmount decimal(12,2) default 0 not null comment  '房东买回金额',
   lanlordBuyBackRate1  decimal(12,2) default 1 not null comment  '房东买回系数1',
   lanlordBuyBackRate2  decimal(12,2) default 1 not null comment  '房东买回系数2',
   theoryAmount         decimal(12,2) default 0 not null comment  '房东动态理论额度总额',
   amountRate           int(3)  default 100 not null comment '房东额度系数(百分比) 1-100之间整数',
   credits              decimal(12,2) default 0 not null comment '信用额',
   shortestTerm         int(11) comment '最短蘑菇宝租期（6-12）',
   feeRate              int(11) comment '服务费费率',
   canLoan              int(11) DEFAULT 1 NOT NULL comment '是否可以贷款 0.不可以；1.可以',
   oneTime              int(11) DEFAULT 1 NOT NULL comment '是否一次性付款 0.不可以;1.可以',
   createBy             int(11) comment '创建人员Id',
   createByType         int(11) comment '创建人类型(参考字典表组名:userType)',
   createTime           DATETIME NULL comment '创建时间',
   operType             TINYINT(4) COMMENT '操作类型(1:新增 2:修改 3:逻辑删除)',
   comments             varchar(200) COMMENT '备注'
)ENGINE=INNODB DEFAULT CHARSET=utf8  COMMENT '信用额度his';

/*优惠item*/
drop table if exists comm_discount_item;
create table comm_discount_item
(
	id                   int(11) PRIMARY KEY AUTO_INCREMENT comment '主键',
	prodId               int(11) comment '商品id',
	`name`               varchar(200) comment '优惠项目名称',
	`value`              int(11) comment '万分比',
	discountType         int(11) comment '优惠类型(1:原基础上打value折扣 2:原基础上减掉value)',
	startTime            datetime NOT NULL comment '优惠开始时间',
	endTime              datetime NOT NULL comment '优惠项结束时间',
	createBy             int(11) comment '创建人',
	createByType         int(11) comment '创建人类型(参考字典表组名:userType)',
	createTime           datetime comment '创建时间',
	updateBy             int(11) comment '更新人',
	updateByType         int(11) comment '更新人类型(参考字典表组名:userType)',
	updateTime           datetime comment '更新时间',
	valid                tinyint(1) DEFAULT 1 NOT NULL comment '状态(1:有效果 0:逻辑删除)'
)ENGINE = innodb DEFAULT CHARSET=utf8 comment '优惠item';

/*优惠与优惠item关系表*/
drop table if exists comm_discount_re;
create table comm_discount_re
(
	id                   int(11) PRIMARY KEY AUTO_INCREMENT comment '关系id',
	discountId           int(11) NOT NULL comment '优惠id',
	discountItemId       int(11) NOT NULL comment '优惠项id',
	createBy             int(11) comment '创建人',
	createByType         int(11) comment '创建人类型(参考字典表组名:userType)',
	createTime           datetime comment '创建时间',
	updateBy             int(11) comment '更新人',
	updateByType         int(11) comment '更新人类型(参考字典表组名:userType)',
	updateTime           datetime comment '更新时间',
	valid                tinyint(1) DEFAULT 1 NOT NULL comment '状态(1:有效果 0:逻辑删除)',
	UNIQUE INDEX unique_discount_discountItem(discountId,discountItemId)
) ENGINE = innodb DEFAULT CHARSET=utf8 comment '优惠与优惠item关系表';

/*优惠表*/
drop table if exists comm_discount;
create table comm_discount
(
	id                   int(11) PRIMARY KEY AUTO_INCREMENT comment '主键',
	prodNo               varchar(100) not NULL comment '优惠产品No',
	`name`               varchar(200) comment '优惠项目名称',
	createBy             int(11) comment '创建人',
	createByType         int(11) comment '创建人类型(参考字典表组名:userType)',
	createTime           datetime comment '创建时间',
	updateBy             int(11) comment '更新人',
	updateByType         int(11) comment '更新人类型(参考字典表组名:userType)',
	updateTime           datetime comment '更新时间',
	valid                tinyint(1) comment '状态(1:有效果 0:逻辑删除)'
) ENGINE = innodb DEFAULT CHARSET=utf8 comment '优惠表';

/*贷款参数初始化 extra1 代表资方渠道id extra2 代表城市   keyName=groupName_extra1_extra2 */

#还款提醒配置
INSERT INTO comm_sysconfig
(
  `keyName`,  `val`,  `groupName`,  `name`,  `remark`,  `extra1`,  `extra2`
)
VALUES (
  'loan_replay_notify_3_0',  '3',  'loan_replay',  '蘑菇还款提醒',  '蘑菇还款提醒(提前val天开始提醒)',  '3',  '0'
);
#蘑菇还款日配置
#上海mogo还款日配置 上海提前15天
INSERT INTO comm_sysconfig
(
  `keyName`,  `val`,  `groupName`,  `name`,  `remark`,  `extra1`,  `extra2`
)
VALUES (
  'loan_replay_mogo_3_289',  '15',  'loan_replay',  '上海蘑菇还款提醒',  '蘑菇还款提醒(提前val天开始提醒)',  '3',  '289'
);

#上海mogo还款日配置 北京提前30天
INSERT INTO comm_sysconfig
(
  `keyName`,  `val`,  `groupName`,  `name`,  `remark`,  `extra1`,  `extra2`
)
VALUES (
  'loan_replay_mogo_3_289',  '30',  'loan_replay',  '北京蘑菇还款提醒',  '蘑菇还款提醒(提前val天开始提醒)',  '3',  '131'
);


#上海mogo还款日配置 深圳提前？天 待确认
INSERT INTO comm_sysconfig
(
  `keyName`,  `val`,  `groupName`,  `name`,  `remark`,  `extra1`,  `extra2`
)
VALUES (
  'loan_replay_mogo_3_289',  '0',  'loan_replay',  '深圳蘑菇还款提醒',  '蘑菇还款提醒(提前val天开始提醒)',  '3',  '340'
);

#逾期天数配置 超过可能会触发强制退房
INSERT INTO comm_sysconfig
(
  `keyName`,  `val`,  `groupName`,  `name`,  `remark`,  `extra1`,  `extra2`
)
VALUES (
  'loan_replay_overdue_0_0',  '7',  'loan_replay',  '逾期还款天数',  '逾期还款天数 超过逾期还款天数可能会触发强制退房',  '0',  '0'
);

/*
 房东规模动态额度 上 下限 由页面接口调用进行配置
 groupName:loan_credit_rangeAmount
 key: loan_credit_rangeAmount_max_0_0 上限
 key: loan_credit_rangeAmount_min_0_0 下限

 在线支付动态额度 上 下限 由页面接口调用进行配置
 groupName:loan_credit_onlineTradingAmount
 key: loan_credit_onlineTradingAmount_max_0_0 上限
 key: loan_credit_onlineTradingAmount_min_0_0 下限
*/























