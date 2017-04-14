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
  ADD COLUMN bankProvinceId INT DEFAULT NULL COMMENT '省',
  ADD COLUMN bankCityId INT DEFAULT NULL COMMENT '城市',
  ADD COLUMN bankId int(11) DEFAULT NULL COMMENT '银行ID',
  ADD COLUMN bankName varchar(16) DEFAULT NULL COMMENT '银行名称',
  ADD COLUMN bankBranch varchar(50) DEFAULT NULL COMMENT '支行名称',
  ADD COLUMN bankAccountName varchar(20) DEFAULT NULL COMMENT '开户名',
  ADD COLUMN bankAccountNum varchar(20) DEFAULT NULL COMMENT '银行卡号',
  ADD COLUMN officialWebName varchar(20) DEFAULT NULL COMMENT '官网联系人姓名',
  ADD COLUMN officialWebPhone varchar(11) DEFAULT NULL COMMENT '官网联系人手机号',
  ADD COLUMN officialWebSex TINYINT DEFAULT NULL COMMENT '官网联系人性别 ( 0 女 1 男)';