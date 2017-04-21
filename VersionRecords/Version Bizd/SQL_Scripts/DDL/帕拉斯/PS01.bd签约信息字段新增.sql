/*  Database name `bizd`  签约信息改造新增字段*/

USE bizd;

ALTER TABLE bizd_landlord_sign
  ADD COLUMN partyAName VARCHAR(50) NOT NULL COMMENT '合同甲方',
  ADD COLUMN partyAPhone VARCHAR(11) NOT NULL COMMENT '合同甲方电话',
  ADD COLUMN cardType VARCHAR(20) COMMENT '证件类型（参考字典表组名:credential）',
  ADD COLUMN cardNum VARCHAR(20) COMMENT '证件号码',
  ADD COLUMN contactAddr VARCHAR(50) COMMENT '联系地址',
  ADD COLUMN contrctDate datetime COMMENT '签约日期',
  ADD COLUMN emegcy varchar(60) COMMENT '紧急联系人',
  ADD COLUMN emegcyPhone varchar(11) COMMENT '紧急联系人电话',
  ADD COLUMN bankProvinId int(11) COMMENT '省',
  ADD COLUMN bankCityId int(11) COMMENT '城市',
  ADD COLUMN bankId int(11) COMMENT '银行ID',
  ADD COLUMN bankName varchar(16) COMMENT '银行名称',
  ADD COLUMN bankBranch varchar(50) COMMENT '支行名称',
  ADD COLUMN bankAcctName varchar(20) COMMENT '开户名',
  ADD COLUMN bankAcctNum varchar(20) COMMENT '银行卡号',
  ADD COLUMN officlWebsitName varchar(20) COMMENT '官网联系人姓名',
  ADD COLUMN officlWebsitPhone varchar(11) COMMENT '官网联系人手机号',
  ADD COLUMN officlWebsitSex TINYINT(1) COMMENT '官网联系人性别（参考字典表组名:sex）',
  ADD COLUMN creditCode VARCHAR(20) COMMENT '信用代码',
  ADD COLUMN legalRpstiv VARCHAR(20) COMMENT '法人代表姓名',
  ADD COLUMN signCount INT(11) NOT NULL DEFAULT 0 COMMENT '签约体量',
  ADD COLUMN acctType TINYINT(1) COMMENT '账号类型（参考字典表组名:landlordType）',
  ADD COLUMN remark VARCHAR(400) COMMENT '备注';