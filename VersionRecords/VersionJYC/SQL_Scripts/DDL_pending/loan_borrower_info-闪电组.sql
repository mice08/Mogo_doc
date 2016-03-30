/*  Database name `mogoroomdb` ，新建贷款相关表*/
use mogoroomdb;
 
/*gbw 贷款人信息表*/
DROP TABLE IF EXISTS loan_borrower_info;
CREATE TABLE loan_borrower_info
(
   id                   INT(11) AUTO_INCREMENT COMMENT '主键id 自增长',
   tid                  INT(11) NOT NULL COMMENT 'user_info_his 的 tid',
   userName             VARCHAR(32) NOT NULL COMMENT '借款人姓名',
   gender               INT(1) COMMENT '性别: (0:女 1:男)',
   idCard               VARCHAR(50) NOT NULL COMMENT '身份证号码',
   addressDetails       VARCHAR(128) COMMENT '详细住宅地址',
   mobile               VARCHAR(20) NOT NULL COMMENT '借款人手机号',
   married              INT(1) COMMENT '婚姻状况',
   debitcard            VARCHAR(50) NOT NULL COMMENT '借记卡卡号',
   debitbank            VARCHAR(8) NOT NULL COMMENT '借记卡开户行',
   provinceId           INT(11) COMMENT '省级代码 (参考字典表:loan_district_mapping 组名:provienceId)',
   cityId               INT(11) COMMENT '市级代码 (参考字典表:loan_district_mapping 组名:cityId)',
   districtId           INT(11) COMMENT '城区代码 (参考字典表:loan_district_mapping 组名:districtId)',
   picGroupId       INT(11) COMMENT 'comm_picture_group 的 id 图片名称 certfirstimg-身份证正面照，certsecondimg-身份证反面照，nowphoto-手持身份证照，groupPhoto-租客和房 东合照路径',
   loanChannel          INT(1) NOT NULL COMMENT '贷款来源 参考字典表 loan_channel(1:拉卡拉 2:蘑菇 3:聚有财)', 
   createTime           DATETIME COMMENT '创建时间',
   updateTime           DATETIME COMMENT '更新时间',
   PRIMARY KEY (id)
)ENGINE = INNODB COMMENT='贷款人信息表';

/*gbw 贷款合同明细表*/
DROP TABLE IF EXISTS loan_contract;
CREATE TABLE loan_contract
(
   id                   INT(11)  AUTO_INCREMENT COMMENT '主键id 自增长 ',
   borrowerInfoId       INT(11) NOT NULL COMMENT 'loan_borrower_info id',
   signedOrderId        INT(11) NOT NULL COMMENT '签约单 id', 
   orderNumber          VARCHAR(50) COMMENT '蘑菇订单号，同一个签约单重新提交后需要生成新的申请号',
   contractNumber        VARCHAR(50) COMMENT '资方合同号，资方提供',
   outerBusinessKey     VARCHAR(50) COMMENT '资方的产品交互的唯一号',
   applyAmount          DECIMAL(12,2) NOT NULL COMMENT '申请总金额',
   loanStartDate        DATE NOT NULL COMMENT '贷款起始日',
   period               INT(4) NOT NULL COMMENT '申请周期',           
   periodStep           INT(4) COMMENT '申请周期单位(5:月)',
   workFlowStatus       INT(3) COMMENT '合同状态(4:待审核 8:验证失败 12:审核通过 16:审核失败 20:放款成功 24:提前还贷 28:终止合同)',
   mogoStatus           INT(3) COMMENT 'mogo状态(8:蘑菇审核通过 12:蘑菇审核失败)',
   lenderStatus         INT(3) COMMENT '资方状态(0:第三方待审核 4:资料内部验证失败 8:资料第三方验证失败)',
   approver             INT(11) COMMENT '申请资料mogo审核人(必然是员工)',
   approvalTime         DATETIME COMMENT '申请资料mogo审核时间',
   fundReceivedTime     DATETIME COMMENT '资方放款时间',
   fundConfirmer            INT(11) COMMENT '财务款项到位确认人(必然是员工)',
   fundConfirmTime          DATETIME COMMENT '财务款项到位确认时间',
   errmsg               VARCHAR(150) COMMENT '贷款流程中异常信息描述',
   loanChannel          INT(3) NOT NULL COMMENT '贷款来源 参考字典表 loan_channel(1:拉卡拉 2:蘑菇 3:聚有财)',               
   PRIMARY KEY (id)
)ENGINE = INNODB COMMENT='贷款合同明细表, 后期需要关联产品编号';

/*gbw 贷款合同日志表*/
DROP TABLE IF EXISTS loan_contract_logs;
CREATE TABLE loan_contract_logs
(
   id                   INT(11)  AUTO_INCREMENT COMMENT '主键id 自增长 ',
   loanContractId       INT(11) NOT NULL COMMENT 'loan_contract id',  
   soDoneCode           INT(11) NOT NULL COMMENT 'comm_business_record id',
   workFlowStatus       INT(3) COMMENT '合同状态(4:待审核 8:验证失败 12:审核通过 16:审核失败 20:放款成功 24:提前还贷 28:终止合同)',
   mogoStatus           INT(3) COMMENT 'mogo状态(8:蘑菇审核通过 12:蘑菇审核失败)',
   lenderStatus         INT(3) COMMENT '资方状态(0:第三方待审核 4:资料内部验证失败 8:资料第三方验证失败)',
   createTime           DATETIME COMMENT '更新时间',
   errmsg               VARCHAR(150) COMMENT '贷款流程中异常信息描述',
   PRIMARY KEY (id)
)ENGINE = INNODB COMMENT='贷款合同日志表, 每次合同状态发生变化都要生成此表';

On 2016年03月30日 13:54, gbw@mogoroom.com wrote:
沈总，

注释修改过了，你建一下表吧，

/*gbw 贷款人信息表*/
DROP TABLE IF EXISTS loan_borrower_info;
CREATE TABLE loan_borrower_info
(
   id                   INT(11) AUTO_INCREMENT COMMENT '主键id 自 增长',
   tid                  INT(11) NOT NULL COMMENT 'user_info_his 的 tid',
   userName             VARCHAR(32) NOT NULL COMMENT '借款人姓名',
   gender               INT(1) COMMENT '性别: (0:女 1:男)',
   idCard               VARCHAR(50) NOT NULL COMMENT '身份证号码',
   addressDetails       VARCHAR(128) COMMENT '详细住宅地址',
   mobile               VARCHAR(20) NOT NULL COMMENT '借款人手机号',
   married              INT(1) COMMENT '婚姻状况',
   debitcard            VARCHAR(50) NOT NULL COMMENT '借记卡卡号',
   debitbank            VARCHAR(8) NOT NULL COMMENT '借记卡开户行',
   provinceId           INT(11) COMMENT '省级代码 (参考字典 表:loan_district_mapping 组名:provienceId),
   cityId               INT(11) COMMENT '市级代码 (参考字典 表:loan_district_mapping 组名:cityId)',
   districtId           INT(11) COMMENT '城区代码 (参考字典 表:loan_district_mapping 组名:districtId)',
   picGroupId       INT(11) COMMENT 'comm_picture_group 的 id 图 片名称 certfirstimg-身份证正面照，certsecondimg-身份证反面照，nowphoto-手持身份证 照，groupPhoto-租客和房 东合照路径',
   loanChannel          INT(1) NOT NULL COMMENT '贷款来源 参考字典 表 loan_channel(1:拉卡拉 2:蘑菇 3:聚有财)', 
   createTime           DATETIME COMMENT '创建时间',
   updateTime           DATETIME COMMENT '更新时间',
   PRIMARY KEY (id)
)ENGINE = INNODB COMMENT='贷款人信息表';

/*gbw 贷款合同明细表*/
DROP TABLE IF EXISTS loan_contract;
CREATE TABLE loan_contract
(
   id                   INT(11)  AUTO_INCREMENT COMMENT '主键 id 自增长 ',
   borrowerInfoId       INT(11) NOT NULL COMMENT 'loan_borrower_info id',
   signedOrderId        INT(11) NOT NULL COMMENT '签约单 id', 
   orderNumber          VARCHAR(50) COMMENT '蘑菇订单号，同一个签约单重新提交后 需要生成新的申请号',
   contractNumber        VARCHAR(50) COMMENT '资方合同号，资方提供',
   outerBusinessKey     VARCHAR(50) COMMENT '资方的产品交互的唯一号',
   applyAmount          DECIMAL(12,2) NOT NULL COMMENT '申请总金额 ',
   curcode              INT(3) COMMENT '申请币种',
   loanStartDate        DATE NOT NULL COMMENT '贷款起始日',
   period               INT(4) NOT NULL COMMENT '申请周期 ',           
   periodStep            INT(4) COMMENT '申请周期单位，JYC，mogo暂时支持月 ',          
   workFlowStatus       INT(3) COMMENT '合同状态(4:待审核 8:验证失败 12:审 核通过 16:审核失败 20:放款成功 24:中止合同 28:终止合同)',
   mogoStatus           INT(3) COMMENT 'mogo状态(8:蘑菇审核通过 12:蘑菇审 核失败)',
   lenderStatus         INT(3) COMMENT '资方状态(0:第三方待审核 4:资料内部验证 失败 8:资料第三方验证失败)',
   approver             INT(11) COMMENT '申请资料mogo审核人',
   approvalTime         DATETIME COMMENT '申请资料mogo审核时间',
   fundReceivedTime     DATETIME COMMENT '资方放款时间',
   fundConfirmer            INT(11) COMMENT '财务款项到位确认人',
   fundConfirmTime          DATETIME COMMENT '财务款项到位确认时间',
   errmsg               VARCHAR(150) COMMENT '贷款流程中异常信息描述',
   loanChannel          INT(3) NOT NULL COMMENT '贷款来源 参考字典 表 loan_channel(1:拉卡拉 2:蘑菇 3:聚有财)',               
   PRIMARY KEY (id)
)ENGINE = INNODB COMMENT='贷款合同明细表, 后期需要关联产品编号';

/*gbw 贷款合同日志表*/
DROP TABLE IF EXISTS loan_contract_logs;
CREATE TABLE loan_contract_logs
(
   id                   INT(11)  AUTO_INCREMENT COMMENT '主键 id 自增长 ',
   loanContractId       INT(11) NOT NULL COMMENT 'loan_contract id',  
   soDoneCode           INT(11) NOT NULL COMMENT 'comm_business_record id',
   workFlowStatus       INT(3) COMMENT '合同状态(4:待审核 8:验证失败 12:审 核通过 16:审核失败 20:放款成功 24:中止合同 28:终止合同)',
   mogoStatus           INT(3) COMMENT 'mogo状态(8:蘑菇审核通过 12:蘑菇审 核失败)',
   lenderStatus         INT(3) COMMENT '资方状态(0:第三方待审核 4:资料内部验证 失败 8:资料第三方验证失败)',
   createTime           DATETIME COMMENT '更新时间',
   errmsg               VARCHAR(150) COMMENT '贷款流程中异常信息描述',
   PRIMARY KEY (id)
)ENGINE = INNODB COMMENT='贷款合同日志表, 每次合同状态发生变化都要生成此表';