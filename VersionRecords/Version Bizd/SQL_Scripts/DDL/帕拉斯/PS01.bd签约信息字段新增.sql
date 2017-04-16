/*  Database name `bizd`  签约信息 */

USE bizd;

ALTER TABLE bizd_landlord_sign
  ADD COLUMN partyAName VARCHAR(50) NOT NULL COMMENT '合同甲方',
  ADD COLUMN partyAPhone VARCHAR(11) NOT NULL COMMENT '合同甲方电话',
  ADD COLUMN cardType VARCHAR(20) DEFAULT NULL COMMENT '证件类型',
  ADD COLUMN cardNum VARCHAR(20) DEFAULT NULL COMMENT '证件号码',
  ADD COLUMN contactAddr VARCHAR(20) DEFAULT NULL COMMENT '联系地址',
  ADD COLUMN contractDate datetime DEFAULT NULL COMMENT '签约日期',
  ADD COLUMN emergency varchar(60) DEFAULT NULL COMMENT '紧急联系人',
  ADD COLUMN emergencyPhone varchar(11) DEFAULT NULL COMMENT '紧急联系人电话',
  ADD COLUMN bankProvinceId int(11) DEFAULT NULL COMMENT '省',
  ADD COLUMN bankCityId int(11) DEFAULT NULL COMMENT '城市',
  ADD COLUMN bankId int(11) DEFAULT NULL COMMENT '银行ID',
  ADD COLUMN bankName varchar(16) DEFAULT NULL COMMENT '银行名称',
  ADD COLUMN bankBranch varchar(50) DEFAULT NULL COMMENT '支行名称',
  ADD COLUMN bankAccountName varchar(20) DEFAULT NULL COMMENT '开户名',
  ADD COLUMN bankAccountNum varchar(20) DEFAULT NULL COMMENT '银行卡号',
  ADD COLUMN officialWebName varchar(20) DEFAULT NULL COMMENT '官网联系人姓名',
  ADD COLUMN officialWebPhone varchar(11) DEFAULT NULL COMMENT '官网联系人手机号',
  ADD COLUMN officialWebSex TINYINT(1) DEFAULT NULL COMMENT '官网联系人性别 ( 0 女 1 男)，关联字典表comm_dictionary值groupName=sex',
  ADD COLUMN creditCode VARCHAR(20) NOT NULL COMMENT '信用代码',
  ADD COLUMN legalRepresentative VARCHAR(20) NOT NULL COMMENT '法人代表姓名',
  ADD COLUMN signCount INT(11) NOT NULL DEFAULT 0 COMMENT '签约体量',
  ADD COLUMN acctType TINYINT(1) NOT NULL COMMENT '账号类型 0 个人  1 公司 2 KA,关联字典表comm_dictionary值groupName=landlordType',
  ADD COLUMN remark VARCHAR(400) COMMENT '备注';