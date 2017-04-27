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

/*
1、预估表容量:App版本签到表，基础数据新增较少
2、每次读取量:在20条左右
3、主要查询:
  SELECT id, longitude, latitude, address, detailAddress, createTime, createByType, createBy, createByType, soDoneCode, userId, depId, landlordId,landlordName,picGroupId,valid,remark
  FROM
    bizd_user_sign
  WHERE userId = 101
    AND depId = '20001'
  ORDER BY createTime DESC
4. 索引:目前索引有主键id,当前签到人的部门ID-depId
*/
CREATE TABLE `bizd_user_sign` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `longitude` DOUBLE DEFAULT NULL COMMENT '经度',
  `latitude` DOUBLE DEFAULT NULL COMMENT '纬度',
  `address` varchar(100) DEFAULT NULL COMMENT '地址',
  `detailAddress` varchar(255) DEFAULT NULL COMMENT '详细地址',
  `createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `createByType` int(11) NOT NULL COMMENT '创建人类型(参考字典表组名:userType)',
  `createBy` int(11) NOT NULL COMMENT '创建人',
  `soDoneCode` int(32) NOT NULL COMMENT '操作流水号',
  `empId` int(11) NOT NULL COMMENT '签到人ID',
  `depId` int(11) NOT NULL COMMENT '当前签到人的部门ID(冗余字段)',
  `landlordId` int(11) DEFAULT NULL COMMENT '拜访人ID',
  `landlordName` varchar(50) DEFAULT NULL COMMENT '拜访人',
  `picGroupId` int(11) DEFAULT NULL COMMENT '图片分组表Id',
  `valid` tinyint(1) DEFAULT '1' COMMENT '用于标示该记录是否逻辑删除(1:否 0:是)',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  KEY `empId` (`empId`) USING BTREE COMMENT '签到人ID',
  KEY `depId` (`depId`) USING BTREE COMMENT '当前签到人的部门ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户签到表';
