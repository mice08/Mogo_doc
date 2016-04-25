/*房东贷款申请 新增贷款渠道id*/
ALTER  TABLE loan_landlord_contract ADD COLUMN loanChannel INT(11) null comment '贷款来源 参考字典表 loan_channel(1:拉卡拉 2:蘑菇 3:聚有财)' after landlordId;

/*房东贷款申请 新增一审图片上传*/
ALTER  TABLE loan_landlord_contract ADD COLUMN picGroupId1 INT(11) NULL  comment '图片组id1(一审对应的图片附件)' after `status`;

/*房东贷款申请 新增二审图片上传*/
ALTER  TABLE loan_landlord_contract ADD COLUMN picGroupId2 INT(11) NULL  comment '图片组id1(二审对应的图片附件)' after picGroupId1;

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

/*房东贷款申请 修改remark的注释为一审备注*/
ALTER TABLE loan_landlord_contract modify column remark VARCHAR(200) NULL  COMMENT '一审备注';

/*房东贷款申请 改status的comment为借款单状态(1:待一审 2:审核通过 3:审核未通过 4:一审通过 5:一审未通过)*/
ALTER TABLE loan_landlord_contract  modify column `status` int(11) NULL  COMMENT '借款单状态(1:待审核(对于聚有财待一审) 2:审核通过 3:审核未通过 4:一审通过 5:一审未通过)';


/*房东贷款申请his*/
DROP TABLE if EXISTS loan_landlord_contract_his;
create table loan_landlord_contract_his
(
   id                   int(11) PRIMARY KEY AUTO_INCREMENT comment '借款表Id',
   loanContractId       int(11) NOT NULL comment '房东贷款申请id',
   landlordId           int(11) NOT NULL comment '房东Id(冗余方便查询)',
   loanChannel          int(11) NOT NULL comment '贷款来源 参考字典表 loan_channel(1:拉卡拉 2:蘑菇 3:聚有财)',
   credits              decimal(12,2) NOT NULL  DEFAULT 0 comment '信用额',
   shortestTerm         int(11) NOT NULL  DEFAULT 3 comment '最短蘑菇宝租期（3-12）',
   feeRate              int(11) null comment '服务费费率',
   canLoan              int(11) NOT NULL DEFAULT  1 comment '是否可以贷款(0:不可以 1:可以)',
   canOneTime              int(11) NOT NULL DEFAULT  1 comment '是否一次性付款(0:不可以 1:可以)',
   status               tinyint(2) comment '借款单状态(1:待审 2:终审通过 3:终审未通过 4:一审通过 5:一审未通过)',
   picGroupId1          int(11) comment '图片组id1 一审对应附件',
   picGroupId2          int(11) comment '图片组id2  二审对应附件',
   answerPaperId1       int(11) comment '答卷1(房东资料答卷)',
   answerPaperId2       int(11) comment '答卷2(一审答卷)',
   applyTime            datetime NULL comment '申请时间',
   approvalUser1        int(11) null comment '一审审核人',
   approvalTime1        datetime null comment '一审时间',
   approvalUser         int(11) null comment '终审人',
   approvalTime         datetime null comment '终审时间',
   remark               varchar(200) null comment '一审备注',
   remark2              varchar(200) null comment '二审备注',
   operType             tinyint(1) not null comment '操作类型(1:新增 2:修改 3:逻辑删除)'
) ENGINE = INNODB DEFAULT CHARSET=utf8mb4 COMMENT '房东贷款申请历史表';

/*房东信用额度 信用额度表新增理论额度总额*/
ALTER TABLE loan_landlord_credit ADD COLUMN theoryAmount decimal(12,2) default 0 not null comment '房东动态理论额度总额' after landlordId ;

/*房东信用额度  房东额度系数(百分比) 1-100之间整数*/
ALTER TABLE loan_landlord_credit ADD COLUMN amountRate int(3) default 100 not null comment '房东额度系数(百分比)，1-100之间整数' after theoryAmount;

/*房东信用额度 资方渠道id*/
ALTER TABLE loan_landlord_credit ADD COLUMN loanChannel int(11) not null comment '贷款来源 参考字典表 loan_channel(1:拉卡拉 2:蘑菇 3:聚有财)' after amountRate;

/*房东信用额度 新增房东额度配置hisId*/
ALTER TABLE loan_landlord_credit ADD COLUMN sysConfHisId int(11) not null comment '系统参数配置(关于信用额度his配置)' after remark;


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
   loanChannel		int(11) not NULL comment '贷款来源 参考字典表 loan_channel(1:拉卡拉 2:蘑菇 3:聚有财)',
   onlineTradingAmount  decimal(12,2) default 0 not null comment '线上交易动态额度总额',
   deductionAmount      decimal(12,2) default 0 not null comment '额度扣减总额',
   restoreAmount        decimal(12,2) default 0 not null comment '额度恢复总额',
   theoryAmount         decimal(12,2) default 0 not null comment  '房东动态理论额度总额',
   amountRate           int(3)  default 100 not null comment '房东额度系数(百分比) 1-100之间整数',
   credits              decimal(12,2) default 0 not null comment '信用额',
   shortestTerm         int(11) comment '最短蘑菇宝租期（6-12）',
   feeRate              int(11) comment '服务费费率',
   canLoan              int(11) DEFAULT 1 NOT NULL comment '是否可以贷款(0:不可以 1:可以)',
   canOneTime              int(11) DEFAULT 1 NOT NULL comment '是否一次性付款(0:不可以 1:可以)',
   createBy             int(11) NOT NULL comment '创建人员Id',
   createByType         int(11) NOT NULL comment '创建人类型(参考字典表组名:userType)',
   createTime           DATETIME NOT NULL comment '创建时间',
   operType             TINYINT(4) NOT NULL COMMENT '操作类型(1:新增 2:修改 3:逻辑删除)',
   comments             varchar(200) NULL COMMENT '备注',
   sysConfHisId         INT(11) NOT NULL COMMENT  '系统参数配置(关于信用额度历史表配置)'
)ENGINE=INNODB DEFAULT CHARSET=utf8mb4  COMMENT '信用额度历史表';

/*由于信用额度设置配置不止2048个字符 */
ALTER TABLE comm_sysconfig  CHANGE `val` `val` VARCHAR(4096) NULL  COMMENT '配置项值';

/*由于信用额度设置配置不止2048个字符 */
ALTER TABLE comm_sysconfig_his
  CHANGE `val` `val` VARCHAR(4096) NULL  COMMENT '变更前配置项值',
  CHANGE `newVal` `newVal` VARCHAR(4096)  NULL  COMMENT '变更后配置项值';

/*房东申请贷款 新增mogo申请时间字段 在使用mogo宝时更新下这个字段时间*/
ALTER TABLE  loan_landlord_contract ADD COLUMN mogoApplyTime DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP  COMMENT '蘑菇宝申请时间' AFTER applyTime;

/*房东贷款申请his 新增mogo宝申请使用时间字段*/
ALTER  TABLE loan_landlord_contract_his ADD COLUMN mogoApplyTime DATE NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '蘑菇宝申请时间' AFTER applyTime;
























