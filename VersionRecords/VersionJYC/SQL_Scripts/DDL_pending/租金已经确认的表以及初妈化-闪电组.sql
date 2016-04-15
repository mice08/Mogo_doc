/*
信用额度配置表（主要是用来计算房东贷款额度的）
*/
DROP TABLE IF EXISTS loan_landlord_credit_config;

CREATE TABLE loan_landlord_credit_config
(
   id                   INT(11) PRIMARY KEY AUTO_INCREMENT COMMENT '主键',
   groupCode            CHAR(1) NOT NULL DEFAULT 'A' COMMENT '大类组code(A:房东规模 B:线上交易 C:额度扣减 D:额度恢复)',
   groupName            VARCHAR(200) COMMENT '大类组名称',
   itemCode             VARCHAR(200) NOT NULL COMMENT '子项code',
   itemName             VARCHAR(200)  COMMENT '项目名称',
   content              VARCHAR(200) COMMENT '内容',
   rate1                DECIMAL(10,2) NOT NULL DEFAULT 1 COMMENT '系数1 ',
   rate2                DECIMAL(10,2) NOT NULL DEFAULT 1 COMMENT '系数2',
   `count`              INT(11) NOT NULL DEFAULT 0 COMMENT '次数',
   minCount             INT(11) NOT NULL DEFAULT 0 COMMENT '最小次数',
   maxCount             INT(11) NOT NULL DEFAULT 0 COMMENT '最大次数',
   calcuteExp           VARCHAR(200) COMMENT '计算公式',
   comments             VARCHAR(200) COMMENT '备注',
   createBy             INT(11) COMMENT '创建人',
   createByType         INT(11) COMMENT '创建人类型(参考字典表组名:userType)',
   createTime           DATETIME COMMENT '创建时间',
   updateBy             INT(11) COMMENT '更新人',
   updateByType         INT(11) COMMENT '更新人类型(参考字典表组名:userType)',
   updateTime           DATETIME COMMENT '更新时间',
   valid                TINYINT(1) NOT NULL DEFAULT 1 COMMENT '删除标记(1: 可用 0:删除)',
   UNIQUE KEY unique_itemCode(itemCode)
)ENGINE=INNODB DEFAULT CHARSET=utf8  COMMENT '信用额度配置表（主要是用来计算房东贷款额度的）';

/*信用额度配置参数his*/
DROP TABLE IF EXISTS loan_landlord_credit_config_his;
CREATE TABLE loan_landlord_credit_config_his
(
   id                   INT(11) PRIMARY KEY AUTO_INCREMENT COMMENT '主键',
   creditConfigId       INT(11) COMMENT '配置参数id',
   groupCode            CHAR(1) NOT NULL DEFAULT 'A' COMMENT '大类组code(A:房东规模 B:线上交易 C:额度扣减 D:额度恢复)',
   groupName            VARCHAR(200) COMMENT '大类组名称',
   itemCode             VARCHAR(200) NOT NULL COMMENT '项目code',
   itemName             VARCHAR(200) COMMENT '项目名称',
   content              VARCHAR(200) COMMENT '内容',
   rate1                DECIMAL(10,2) COMMENT '系数1',
   rate2                DECIMAL(10,2) COMMENT '系数2',
   `count`              INT(11) NOT NULL DEFAULT 0 COMMENT '次数',
   minCount             INT(11) COMMENT '最小次数',
   maxCount             INT(11) COMMENT '最大次数',
   calcuteExp           VARCHAR(200) COMMENT '计算公式',
   comments             VARCHAR(200) COMMENT '备注',
   operType             TINYINT(4) COMMENT '操作类型(1:新增 2:修改 3:逻辑删除)',
   createBy             INT(11) COMMENT '创建人',
   createByType         INT(11) COMMENT '创建人类型(参考字典表组名:userType)',
   createTime           DATETIME COMMENT '创建时间',
   KEY index_itemCode(itemCode)
 )ENGINE=INNODB DEFAULT CHARSET=utf8  COMMENT '信用额度配置表his（主要是用来计算房东贷款额度的）';

/*租金宝审核*/
drop table if exists loan_landlord_check;
create table loan_landlord_check
(
   id                   int(11) primary key AUTO_INCREMENT  comment '主键',
   loanLandlordContractId int(11) comment '租金宝申请合同id',
   status               tinyint(4) comment '租金宝审核状态(1:一审未通过 2:一审通过 3:二审二通过 4二审通过)',
   comments             varchar(250) comment '备注',
   picGroupId           int(11)  comment '图片组id',
   createBy             int(11) comment '创建人',
   createByType         int(11) comment '创建人类型(参考字典表组名:userType)',
   createTime           datetime comment '创建时间',
   updateBy             int(11) comment '更新人',
   updatebyType         int(10) comment '更新人类型(参考字典表组名:userType)',
   updateTime           datetime comment '更新时间',
   valid                TINYINT(1) NOT NULL DEFAULT 1 COMMENT '删除标记(1: 可用 0:删除)'
)ENGINE=INNODB DEFAULT CHARSET=utf8  COMMENT '租金宝审核';

/*租金宝审核his*/
drop table if exists loan_landlord_check_his;
create table loan_landlord_check_his
(
   id                   int(11) primary key AUTO_INCREMENT  comment '主键',
   loanCheckId              int(11) comment '审核id',
   loanLandlordContractId int(11) comment '租金宝申请合同id 冗余',
   status               tinyint(4) comment '租金宝审核状态(1:一审未通过 2:一审通过 3:二审二通过 4二审通过)',
   comments             varchar(250) comment '备注',
   operType				      tinyint(1) default 1 not null comment '1:新增 2:更新 3:逻辑删除',
   picGroupId           int(11)  comment '图片组id',
   createBy             int(11) comment '创建人',
   createByType         int(11) comment '创建人类型(参考字典表组名:userType)',
   createTime           datetime comment '创建时间',
 )ENGINE=INNODB DEFAULT CHARSET=utf8  COMMENT '租金宝审核his';


 /*信用额度表新增理论额度总额*/
 alter table loan_landlord_credit add column theoryAmount decimal(12,2) default 0 not null comment '房东动态理论额度总额' after landlordId ;

 /*房东额度系数(百分比) 1-100之间整数*/
 alter table loan_landlord_credit add column tamountRate int(3) default 100 not null comment '房东额度系数(百分比) 1-100之间整数' after theoryAmount;

 /*资方渠道id 默认是拉卡拉*/
 alter table loan_landlord_credit add column loanChannel int(3) default 1 not null comment '资方渠道id' after tamountRate;

 /*租金宝合同表 新增贷款渠道id*/
 alter  table loan_landlord_contract loanChannel int(11) default 1 not null comment '资方渠道id' after landlordId,

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
   renterRepayRate2     decimal(12,2) default 1 not null comment comment '租客还款系数2',
   lanlordBuyBackAmount decimal(12,2) default 0 not null comment comment '房东买回金额',
   lanlordBuyBackRate1  decimal(12,2) default 1 not null comment comment '房东买回系数1',
   lanlordBuyBackRate2  decimal(12,2) default 1 not null comment comment '房东买回系数2',
   theoryAmount         decimal(12,2) default 0 not null comment comment '房东动态理论额度总额',
   amountRate           int(3) comment default 100 not null  '房东额度系数(百分比) 1-100之间整数',
   credits              decimal(12,2) default 0 not null comment '信用额',
   shortestTerm         int(11) comment '最短蘑菇宝租期（6-12）',
   feeRate              int(11) comment '服务费费率',
   canLoan              int(11) comment '是否可以贷款 0.不可以；1.可以',
   oneTime              int(11) comment '是否一次性付款 0.不可以;1.可以',
   createBy             int(11) comment '创建人员Id',
   createByType         int(11) comment '创建人类型(参考字典表组名:userType)',
   createTime           timestamp default CURRENT_TIMESTAMP comment '创建时间',
   operType             TINYINT(4) COMMENT '操作类型(1:新增 2:修改 3:逻辑删除)',
   comments             varchar(200) COMMENT '备注'
)ENGINE=INNODB DEFAULT CHARSET=utf8  COMMENT '信用额度his';


 /*初始化loan_landlord_credit_config*/
 INSERT INTO loan_landlord_credit_config
            (
             `groupCode`,`groupName`,`itemCode`,`itemName`,`content`,`rate1`,`rate2`,`count`,`minCount`,`maxCount`,`calcuteExp`,`comments`,`createBy`,`createByType`,`createTime`,`updateBy`,`updateByType`,`updateTime`,`valid`)
       VALUES ('A',
		'房东规模动态额度A',
		'RANGE_AMOUNT_ONLINE_All_ROOM_MONTH_RETNS',
		'所有线上房源月租金总金额（万）',
		'所有线上房源月租金总金额（万）',
		9,
		0.1,
		0,
		0,
		0,
		'所有线上房源月租金总金额（万）*9（平均月份）*0.1',
		'平均交易月',
		NULL,
		NULL,
		NOW(),
		NULL,
		NULL,
		NOW(),
		1
        ),(
		'B',
		'线上交易动态额度B',
		'ONLINE_TRADING_AMOUNT_TIMESOF_CUSTOM_BILL_1',
		'0次',
		'0次',
		0.5,
		1,
		0,
		0,
		2,
		'A+线上支付租金金额*0.5*1.00',
		NULL,
		NULL,
		NULL,
		NOW(),
		NULL,
		NULL,
		NOW(),
		1
        ),
       (
		'B',
		'线上交易动态额度B',
		'ONLINE_TRADING_AMOUNT_TIMESOF_CUSTOM_BILL_2',
		'3次',
		'3次',
		0.5,
		1.05,
		3,
		3,
		5,
		'A+线上支付租金金额*0.5*1.05',
		NULL,
		NULL,
		NULL,
		NOW(),
		NULL,
		NULL,
		NOW(),
		1
        ),(
		'B',
		'线上交易动态额度B',
		'ONLINE_TRADING_AMOUNT_TIMESOF_CUSTOM_BILL_3',
		'6次',
		'6次',
		0.5,
		1.1,
		6,
		6,
		8,
		'A+线上支付租金金额*0.5*1.1',
		NULL,
		NULL,
		NULL,
		NOW(),
		NULL,
		NULL,
		NOW(),
		1
        ),(
		'B',
		'线上交易动态额度B',
		'ONLINE_TRADING_AMOUNT_TIMESOF_CUSTOM_BILL_4',
		'9次',
		'9次',
		0.5,
		1.15,
		9,
		9,
		11,
		'A+线上支付租金金额*0.5*1.15',
		NULL,
		NULL,
		NULL,
		NOW(),
		NULL,
		NULL,
		NOW(),
		1
        ),(
		'B',
		'线上交易动态额度B',
		'ONLINE_TRADING_AMOUNT_TIMESOF_CUSTOM_BILL_5',
		'12次',
		'12次',
		0.5,
		1.2,
		12,
		12,
		2147483647,
		'A+线上支付租金金额*0.5*1.2',
		NULL,
		NULL,
		NULL,
		NOW(),
		NULL,
		NULL,
		NOW(),
		1
        ),(
		'C',
		'额度扣减C',
		'DEDUCTION_AMOUNT_PURE_LENT_AMOUNT',
		'租金宝放款净额',
		'租金宝放款净额',
		1,
		1,
		0,
		0,
		0,
		'A+B-租金宝放款净额',
		'即分期金额-租金宝手续费（保证金不影响额度）',
		NULL,
		NULL,
		NOW(),
		NULL,
		NULL,
		NOW(),
		1
        ),(
		'C',
		'额度扣减C',
		'DEDUCTION_AMOUNT_CANCEL_LEASES',
		'租约终止（提前退租、满期终止），该笔租约对应的线上交易动态额度B清零',
		'租约终止（提前退租、满期终止），该笔租约对应的线上交易动态额度B清零',
		1,
		1,
		0,
		0,
		0,
		'A+B-B1',
		NULL,
		NULL,
		NULL,
		NOW(),
		NULL,
		NULL,
		NOW(),
		1
        ),(
		'D',
		'额度恢复D',
		'RESTORE_AMOUNT_RENTER_REPAY_RENTS',
		'租客还款本金金额',
		'租客还款本金金额',
		1,
		1,
		0,
		0,
		0,
		'A+B-C+租客还款金额',
		'租客逾期费用不计入；',
		NULL,
		NULL,
		NOW(),
		NULL,
		NULL,
		NOW(),
		1
        ),(
		'D',
		'额度恢复D',
		'RESTORE_AMOUNT_LANDLORD_BUYBACKS',
		'房东买回本金金额',
		'房东买回本金金额',
		1,
		1,
		0,
		0,
		0,
		'A+B-C+房东买回本金金额',
		'房东买回逾期费用、滞纳金、退货手续费不计入；单笔交易对应恢复额度D≤该笔交易对应放款净额',
		NULL,
		NULL,
		NOW(),
		NULL,
		NULL,
		NOW(),
		1
        );
