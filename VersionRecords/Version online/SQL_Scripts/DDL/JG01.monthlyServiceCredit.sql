/*房东蘑菇月付资质线上申请*/

use mogoroomdb;

/*房东贷款资质申请表，预估表容量未来3个月500行、读取量最多20行、主要查询是通过landlordId查询，或者BS系统中分页查询*/
CREATE TABLE loan_landlord_mPayApply (
  id int(11) NOT NULL AUTO_INCREMENT COMMENT '房东贷款资质申请id',
  landlordId int(11) NOT NULL COMMENT '房东id',
  contractId int(11) NOT NULL COMMENT '房东贷款合同id',  
  acctType int(2) NOT NULL COMMENT '房东类型(0:个人 1:公司)',
  loanChannel int(2) NOT NULL COMMENT '贷款渠道(1:拉卡拉蘑菇宝 3:聚有财蘑菇宝 4:聚有财月付)', 
  applicant varchar(32) NOT NULL COMMENT '申请人姓名',
  idCard varchar(18) NOT NULL COMMENT '身份证号码',
  gender int(1) NOT NULL COMMENT '性别: (0:女 1:男)',
  mobile char(11) NOT NULL COMMENT '手机号',
  education int(1) NOT NULL COMMENT '教育程度(参考字典表组名:educationalBackground)',
  isLegalPerson int(1) DEFAULT NULL COMMENT '是否法人(0:否 1:是)',
  liveProvince int(11) DEFAULT NULL COMMENT '居住地址(省)',
  liveCity int(11) DEFAULT NULL COMMENT '居住地址(市)',
  liveDistrict int(11) DEFAULT NULL COMMENT '居住地址(区)',
  liveAddress varchar(90) DEFAULT NULL COMMENT '居住地址(详细)',
  liveDuration int(1) DEFAULT NULL COMMENT '居住时长(参考字典表组名:liveDuration)',
  liveStatus int(1) DEFAULT NULL COMMENT '居住状况(参考字典表组名:liveStatus)',
  hasHouse int(1) DEFAULT NULL COMMENT '有无房产(0:无 1:有)',
  employmentType int(1) DEFAULT NULL COMMENT '雇佣类型(1:自雇 2:受薪)',
  position varchar(32) DEFAULT NULL COMMENT '职位',
  company varchar(64) DEFAULT NULL COMMENT '工作单位',
  picGroupId int(11) DEFAULT NULL COMMENT '申请材料图片组id',
  creditReportType int(1) DEFAULT NULL COMMENT '人行征信报告类型(1:电子版 2:纸质版)',
  step int(1) DEFAULT NULL COMMENT '资料填写进度(1:实名认证 2:身份/企业信息 3:上传资料 4:确认申请)',
  status int(1) DEFAULT NULL COMMENT '状态(0:未提交 1:已提交 2:资料有误)',
  createTime datetime DEFAULT NULL COMMENT '创建时间',
  createBy int(11) DEFAULT NULL COMMENT '创建人',
  createByType int(11) DEFAULT NULL COMMENT '创建人类型',
  updateTime datetime DEFAULT NULL COMMENT '更新时间',
  updateBy int(11) DEFAULT NULL COMMENT '更新人',
  updateByType int(11) DEFAULT NULL COMMENT '更新人类型',
  PRIMARY KEY (id),
  KEY contractId(contractId)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='房东贷款资质申请资料表';

/*房东贷款资质申请企业信息表，预估表容量未来3个月500行、读取量最多20行、主要查询是通过applyId查询*/
CREATE TABLE loan_mPayApply_company (
  id int(11) NOT NULL AUTO_INCREMENT COMMENT '房东贷款资质申请企业信息表id',
  applyId int(11) NOT NULL COMMENT '房东月付服务申请表id',
  companyName varchar(64) NOT NULL COMMENT '企业名称',
  busiLicense varchar(32) DEFAULT NULL COMMENT '营业执照号码',
  registDate datetime DEFAULT NULL COMMENT '登记日期',
  companyAreaCode varchar(6) DEFAULT NULL COMMENT '企业电话区号',
  companyTel varchar(12) DEFAULT NULL COMMENT '企业电话',
  employeeCount int(1) DEFAULT NULL COMMENT '企业员工数(参考字典表组名:employeeCount)',
  registProvince int(11) DEFAULT NULL COMMENT '注册地址(省)',.
  registCity int(11) DEFAULT NULL COMMENT '注册地址(市)',
  registDistrict int(11) DEFAULT NULL COMMENT '注册地址(区)',
  registAddress varchar(90) DEFAULT NULL COMMENT '注册地址(详细)',
  isSameAddress int(1) DEFAULT NULL COMMENT '营业地址是否和注册地址一样(0:否 1:是)',
  storeProvince int(11) DEFAULT NULL COMMENT '营业地址(省)',
  storeCity int(11) DEFAULT NULL COMMENT '营业地址(市)',
  storeDistrict int(11) DEFAULT NULL COMMENT '营业地址(区)',
  storeAddress varchar(90) DEFAULT NULL COMMENT '营业地址(详细)',
  PRIMARY KEY (id),
  KEY applyId(applyId)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='房东贷款资质申请企业信息表';

/*房东贷款资质申请关系人信息表，预估表容量未来3个月500行、读取量最多20行、主要查询是通过applyId查询*/
CREATE TABLE loan_mPayApply_relation (
  id int(11) NOT NULL AUTO_INCREMENT COMMENT '房东贷款资质申请关系人信息表id',
  applyId int(11) NOT NULL COMMENT '房东月付服务申请表id',
  married int(1) DEFAULT NULL COMMENT '婚姻状况(参考字典表组名:married)',
  kinsfolkName varchar(32) DEFAULT NULL COMMENT '亲属姓名',
  kinsfolkIdCard varchar(18) DEFAULT NULL COMMENT '亲属身份证号',
  kinsfolkMobile char(11) DEFAULT NULL COMMENT '亲属手机号',
  spouseName varchar(32) DEFAULT NULL COMMENT '配偶姓名',
  spouseIdCard varchar(18) DEFAULT NULL COMMENT '配偶身份证号',
  spouseMobile char(11) DEFAULT NULL COMMENT '配偶手机号',
  emergencyRelation int(1) DEFAULT NULL COMMENT '紧急联系人与申请人关系(参考字典表组名:applyRelation)',
  emergencyName varchar(32) DEFAULT NULL COMMENT '紧急联系人姓名',
  emergencyIdCard varchar(18) DEFAULT NULL COMMENT '紧急联系人身份证号',
  emergencyMobile char(11) DEFAULT NULL COMMENT '紧急联系人手机号',
  hasPartner int(1) DEFAULT NULL COMMENT '是否有合伙人(0:否 1:是)',
  partnerCount int(1) DEFAULT NULL COMMENT '合伙人个数(参考字典表组名:partnerCount)',
  PRIMARY KEY (id),
  KEY applyId(applyId)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='房东贷款资质申请关系人信息表';

/*房东信息采集表，预估表容量未来3个月500行、读取量最多20行、主要查询是通过landlordId关联查询*/
CREATE TABLE loan_mPayApply_collection (
  id int(11) NOT NULL AUTO_INCREMENT COMMENT '房东信息采集表id',
  landlordId int(11) NOT NULL COMMENT '房东id',
  contractId int(11) NOT NULL COMMENT '房东贷款申请合同id',
  applyId int(11) NOT NULL COMMENT '房东贷款申请资料表id',
  isManager int(1) DEFAULT NULL COMMENT '是否实际经营人(0:否 1:是)',
  hasPartner int(1) DEFAULT NULL COMMENT '是否有合伙人(0:否 1:是)',
  partnerCount int(3) DEFAULT NULL COMMENT '合伙人数量',
  stockRate decimal(12,2) DEFAULT NULL COMMENT '签约人占股比(万分比)',
  investType varchar(128) DEFAULT NULL COMMENT '签约人出资方式(json)',
  shareType varchar(128) DEFAULT NULL COMMENT '收益分配方式(json)',
  hasCooperator int(1) DEFAULT NULL COMMENT '是否有合作机构(0:否 1:是)',
  cooperator varchar(768) DEFAULT NULL COMMENT '合作机构列表(json)',
  receiveSigner int(1) DEFAULT NULL COMMENT '收房签署方式(参考字典表组名:receiveSigner)',
  roomType varchar(512) DEFAULT NULL COMMENT '房源属性(json)',
  decorateCost varchar(256) DEFAULT NULL COMMENT '装修成本(json)',
  settlementType varchar(128) DEFAULT NULL COMMENT '结算方式(json)',
  payType varchar(128) DEFAULT NULL COMMENT '结算付款方式(json)',
  rentPeriod varchar(256) DEFAULT NULL COMMENT '收房承租租期(json)',
  leftPeriod varchar(128) DEFAULT NULL COMMENT '剩余承租租期(json)',
  receiveType varchar(128) DEFAULT NULL COMMENT '收房方式(json)',
  status int(1) DEFAULT '0' COMMENT '状态(0:未提交 1:已提交)',
  createTime datetime DEFAULT NULL COMMENT '创建时间',
  createBy int(11) DEFAULT NULL COMMENT '创建人',
  createByType int(11) DEFAULT NULL COMMENT '创建人类型',
  updateTime datetime DEFAULT NULL COMMENT '更新时间',
  updateBy int(11) DEFAULT NULL COMMENT '更新人',
  updateByType int(11) DEFAULT NULL COMMENT '更新人类型',
  PRIMARY KEY (id),
  KEY contractId(contractId)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='房东信息采集表';

/*房东贷款资质审核表，预估表容量未来3个月500行、读取量最多20行、主要查询是通过landlordId关联查询*/
CREATE TABLE loan_mPayApply_approve (
  id int(11) NOT NULL AUTO_INCREMENT COMMENT '房东贷款资质审核表id',
  landlordId int(11) NOT NULL COMMENT '房东id',
  contractId int(11) NOT NULL COMMENT '房东贷款申请合同id',
  applyId int(11) NOT NULL COMMENT '房东贷款申请资料表id',
  busiApprover1 int(11) DEFAULT NULL COMMENT '拓展专员审核人',
  busiApproveTime1 datetime DEFAULT NULL COMMENT '拓展专员审核时间',
  busiApproveStatus1 int(1) DEFAULT NULL COMMENT '拓展专员审核结果(0:不通过 1:通过 2:资料有误)',
  busiApprover2 int(11) DEFAULT NULL COMMENT '拓展经理审核人',
  busiApproveTime2 datetime DEFAULT NULL COMMENT '拓展经理审核时间',
  busiApproveStatus2 int(1) DEFAULT NULL COMMENT '拓展经理审核结果(0:不通过 1:通过)',
  creditApprover1 int(11) DEFAULT NULL COMMENT '信审一审审核人',
  creditApproveTime1 datetime DEFAULT NULL COMMENT '信审一审审核时间',
  creditApproveStatus1 int(1) DEFAULT NULL COMMENT '信审一审审核结果(0:不通过 1:通过 2:资料有误)',
  creditApprover2 int(11) DEFAULT NULL COMMENT '信审二审审核人',
  creditApproveTime2 datetime DEFAULT NULL COMMENT '信审二审审核时间',
  creditApproveStatus2 int(1) DEFAULT NULL COMMENT '信审二审审核结果(0:不通过 1:通过 3:驳回)',
  hasUploadContract int(1) DEFAULT '0' COMMENT '线下签约合同是否上传(0:否 1:是)',
  status int(4) DEFAULT NULL COMMENT '总审核状态(0:初始化 1:待一审 2:待二审 3:待三审 4:待四审 8:资料有误 16:不通过 24:合同待上传 32:资质待开通 40:资质生效)',
  rejectReason varchar(128) DEFAULT NULL COMMENT '资料有误,拒绝原因(json)',
  remark varchar(256) DEFAULT NULL COMMENT '备注',
  createTime datetime DEFAULT NULL COMMENT '创建时间',
  createBy int(11) DEFAULT NULL COMMENT '创建人',
  createByType int(11) DEFAULT NULL COMMENT '创建人类型',
  updateTime datetime DEFAULT NULL COMMENT '更新时间',
  updateBy int(11) DEFAULT NULL COMMENT '更新人',
  updateByType int(11) DEFAULT NULL COMMENT '更新人类型',
  PRIMARY KEY (id),
  KEY contractId(contractId)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='房东贷款资质审核表';


/*房东贷款资质审核历史表，预估表容量未来3个月2000行、读取量最多5行、主要查询是通过approveId关联查询*/
CREATE TABLE loan_mPayApply_approve_log (
  id int(11) NOT NULL AUTO_INCREMENT COMMENT '房东贷款资质审核历史表id',
  approveId int(11) NOT NULL COMMENT '房东贷款资质审核表id',
  contractId int(11) NOT NULL COMMENT '房东贷款申请合同id',
  busiApprover1 int(11) DEFAULT NULL COMMENT '拓展专员审核人',
  busiApproveTime1 datetime DEFAULT NULL COMMENT '拓展专员审核时间',
  busiApproveStatus1 int(1) DEFAULT NULL COMMENT '拓展专员审核结果(0:不通过 1:通过 2:资料有误)',
  busiApprover2 int(11) DEFAULT NULL COMMENT '拓展经理审核人',
  busiApproveTime2 datetime DEFAULT NULL COMMENT '拓展经理审核时间',
  busiApproveStatus2 int(1) DEFAULT NULL COMMENT '拓展经理审核结果(0:不通过 1:通过)',
  creditApprover1 int(11) DEFAULT NULL COMMENT '信审一审审核人',
  creditApproveTime1 datetime DEFAULT NULL COMMENT '信审一审审核时间',
  creditApproveStatus1 int(1) DEFAULT NULL COMMENT '信审一审审核结果(0:不通过 1:通过 2:资料有误)',
  creditApprover2 int(11) DEFAULT NULL COMMENT '信审二审审核人',
  creditApproveTime2 datetime DEFAULT NULL COMMENT '信审二审审核时间',
  creditApproveStatus2 int(1) DEFAULT NULL COMMENT '信审二审审核结果(0:不通过 1:通过 3:驳回)',
  hasUploadContract int(1) DEFAULT '0' COMMENT '线下签约合同是否上传(0:否 1:是)',
  status int(4) DEFAULT NULL COMMENT '总审核状态(0:初始化 1:待一审 2:待二审 3:待三审 4:待四审 8:资料有误 16:不通过 24:合同待上传 32:资质待开通 40:资质生效)',
  rejectReason varchar(128) DEFAULT NULL COMMENT '资料有误,拒绝原因(json)',
  remark varchar(256) DEFAULT NULL COMMENT '备注',
  createTime datetime DEFAULT NULL COMMENT '创建时间',
  createBy int(11) DEFAULT NULL COMMENT '创建人',
  createByType int(11) DEFAULT NULL COMMENT '创建人类型',
  PRIMARY KEY (id),
  KEY approveId(approveId)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='房东贷款资质审核历史表';

/*房东贷款资质审核原因表，配置表50行、读取量最多50行*/
CREATE TABLE loan_mPayApply_rejectReason (
  id int(11) NOT NULL AUTO_INCREMENT COMMENT '房东贷款资质审核原因表id',
  reasonCode varchar(4) NOT NULL COMMENT '原因代码',
  reasonName varchar(32) NOT NULL COMMENT '原因名称',
  reasonType int(1) NOT NULL COMMENT '原因类型(1:资料有误原因 2:拒绝原因)',
  step int(1) DEFAULT NULL COMMENT '所在步骤(1:实名认证 2:身份/企业信息 3:上传资料)',
  valid int(1) DEFAULT '1' COMMENT '数据有效性',
  createTime datetime DEFAULT NULL COMMENT '创建时间',
  createBy int(11) DEFAULT NULL COMMENT '创建人',
  createByType int(11) DEFAULT NULL COMMENT '创建人类型',
  updateTime datetime DEFAULT NULL COMMENT '更新时间',
  updateBy int(11) DEFAULT NULL COMMENT '更新人',
  updateByType int(11) DEFAULT NULL COMMENT '更新人类型',
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='房东贷款资质审核原因表';

ALTER TABLE loan_landlord_credit add column nextApplyTime datetime DEFAULT NULL COMMENT '下次可申请日期', add column endReason varchar(128) DEFAULT NULL COMMENT '终止原因';
ALTER TABLE loan_landlord_credit_his add column nextApplyTime datetime DEFAULT NULL COMMENT '下次可申请日期', add column endReason varchar(128) DEFAULT NULL COMMENT '终止原因';