/*  用户统一体系以及历史记录相关表*/
use mogoroomdb;

CREATE TABLE `user_employee_info` (
  `tid` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增Id',
  `soDoneCode` int(11) unsigned NOT NULL COMMENT '对应common_business_record.id',
  `userId` int(11) NOT NULL COMMENT '用户Id,user_info.id',
  `englishName` varchar(64) DEFAULT NULL COMMENT '英文名',
  `province` varchar(20) DEFAULT NULL COMMENT '户籍省',
  `hometown` varchar(20) DEFAULT NULL COMMENT '户籍市',
  `entryDate` datetime DEFAULT NULL COMMENT '员工入职日期',
  `bankCode` varchar(32) DEFAULT NULL COMMENT '银行代码',
  `bankCard` varchar(32) DEFAULT NULL COMMENT '银行账号',
  `bankDetail` varchar(64) DEFAULT NULL COMMENT '开户银行详情',
  `createBy` int(11) DEFAULT NULL COMMENT '创建人',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateBy` int(11) DEFAULT NULL COMMENT '更新人',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  `fromExten` varchar(10) DEFAULT NULL COMMENT '坐席工号',
  PRIMARY KEY (`tid`),
  UNIQUE KEY `IDX_USERID` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT '员工信息表';

/*Table structure for table `user_employee_info_his` */


CREATE TABLE `user_employee_info_his` (
  `tid` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增Id',
  `soDoneCode` int(11) unsigned NOT NULL COMMENT '操作流水号,对应common_business_record.id',
  `userId` int(11) NOT NULL COMMENT '用户Id,user_info.id',
  `englishName` varchar(64) DEFAULT NULL COMMENT '英文名',
  `province` varchar(20) DEFAULT NULL COMMENT '户籍省',
  `hometown` varchar(20) DEFAULT NULL COMMENT '户籍市',
  `entryDate` datetime DEFAULT NULL COMMENT '员工入职日期',
  `bankCode` varchar(32) DEFAULT NULL COMMENT '银行代码',
  `bankCard` varchar(32) DEFAULT NULL COMMENT '银行账号',
  `bankDetail` varchar(64) DEFAULT NULL COMMENT '开户银行详情',
  `createBy` int(11) DEFAULT NULL COMMENT '创建人',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateBy` int(11) DEFAULT NULL COMMENT '更新人',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  `fromExten` varchar(10) DEFAULT NULL COMMENT '坐席工号',
  PRIMARY KEY (`tid`),
  UNIQUE KEY `IDX_DONECODE` (`soDoneCode`),
  KEY `IDX_USERID` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT '员工信息历史表';


/*Table structure for table `user_info_his` */


CREATE TABLE `user_info_his` (
  `tid` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增Id',
  `userId` int(11) unsigned NOT NULL COMMENT '用户ID',
  `user_name` varchar(50) NOT NULL COMMENT '登录名',
  `mobile` varchar(16) NOT NULL COMMENT '注册手机号',
  `gender` tinyint(1) NOT NULL DEFAULT '1' COMMENT '性别：用0(女)1(男)表示',
  `nick_name` varchar(50) DEFAULT NULL COMMENT '昵称',
  `real_name` varchar(50) NOT NULL COMMENT '真实姓名',
  `career` varchar(250) DEFAULT NULL COMMENT '职业',
  `birthday` datetime DEFAULT NULL COMMENT '生日',
  `constellation` varchar(20) DEFAULT NULL COMMENT '星座',
  `photo` varchar(128) DEFAULT NULL COMMENT '用户照片路径',
  `card_type` varchar(20) NOT NULL DEFAULT '0' COMMENT '证件类型',
  `card_id` varchar(50) NOT NULL DEFAULT '0' COMMENT '证件号码',
  `nationality` int(11) NOT NULL DEFAULT '0' COMMENT '国籍',
  `email` varchar(50) DEFAULT NULL COMMENT '电邮',
  `weixin` varchar(30) DEFAULT NULL COMMENT '微信号',
  `addr` varchar(250) DEFAULT NULL COMMENT '地址',
  `edu` varchar(50) DEFAULT NULL COMMENT '教育',
  `create_ip` varchar(50) NOT NULL DEFAULT '0' COMMENT '创建IP',
  `emergency` varchar(50) DEFAULT NULL COMMENT '紧急联系人',
  `emerg_phone` varchar(16) DEFAULT NULL COMMENT '紧急联系电话',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `create_by` int(11) DEFAULT '0' COMMENT '创建人员',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `update_by` int(11) DEFAULT '0' COMMENT '修改人员',
  `done_code` int(32) NOT NULL DEFAULT '0' COMMENT '操作流水号',
  `status` tinyint(1) DEFAULT '1' COMMENT '用户状态: 0:不可用；1：可用',
  `remark` varchar(250) DEFAULT NULL COMMENT '备注',
  `regist_id` varchar(50) DEFAULT NULL COMMENT '推送标识ID',
  `login_device` varchar(250) DEFAULT NULL COMMENT '登录设备信息',
  `firstLoginTime` datetime DEFAULT NULL COMMENT '首次登录时间',
  `latestLoginTime` datetime DEFAULT NULL COMMENT '最近一次的登录',
  `member_num` varchar(50) DEFAULT NULL COMMENT '会员编号(维金标识)',
  `acc_id` varchar(50) DEFAULT NULL COMMENT '帐号标识',
  `phoneExt` varchar(10) DEFAULT '0' COMMENT '分机号',
  `landlordId` int(11) DEFAULT '0' COMMENT '房东ID',
  PRIMARY KEY (`tid`),
  KEY `IDX_USERID` (`userId`),
  UNIQUE KEY `IDX_DONECODE` (`done_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户基本资料历史表';

/*Table structure for table `user_landlord_info` */


CREATE TABLE `user_landlord_info` (
  `tid` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `soDoneCode` int(11) unsigned NOT NULL COMMENT '对应common_business_record.id',
  `userId` int(11) NOT NULL COMMENT '用户id,user_info.id',
  `contactPhone` varchar(11) DEFAULT NULL COMMENT '联系方式(可以和phone相同)',
  `contractDate` datetime DEFAULT NULL COMMENT '签约日期',
  `salesmanId` int(11) DEFAULT NULL COMMENT '拓展人Id',
  `accountNum` varchar(64) NOT NULL DEFAULT '0' COMMENT '账号标识',
  `editPwdNum` tinyint(4) DEFAULT NULL COMMENT '修改密码次数',
  `isSpecial` tinyint(1) DEFAULT '0' COMMENT '是否特殊(0不是,1是)',
  `landlordType` varchar(10) NOT NULL DEFAULT 'C' COMMENT '房东类型：A-自营房/B-内部合伙人/C-职业房东/D-外部合伙人',
  `brandName` varchar(50) DEFAULT NULL COMMENT '品牌名称',
  `isVerified` tinyint(4) DEFAULT '0' COMMENT '认证房东 0:未认证 1:蘑菇认证',
  `legalPerson` varchar(50) DEFAULT NULL COMMENT '法人名称主要用于作为合同甲方',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  `createBy` int(11) DEFAULT NULL COMMENT '创建人',
  `updateTime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updateBy` int(11) DEFAULT NULL COMMENT '创建人',
  PRIMARY KEY (`tid`),
  UNIQUE KEY `IDX_USERID` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='房东信息表';

/*Table structure for table `user_landlord_info_his` */


CREATE TABLE `user_landlord_info_his` (
  `tid` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `soDoneCode` int(11) unsigned NOT NULL COMMENT '对应common_business_record.id',
  `userId` int(11) NOT NULL COMMENT '用户id,user_info.id',
  `contactPhone` varchar(11) DEFAULT NULL COMMENT '联系方式(可以和phone相同)',
  `contractDate` datetime DEFAULT NULL COMMENT '签约日期',
  `salesmanId` int(11) DEFAULT NULL COMMENT '拓展人Id',
  `accountNum` varchar(64) NOT NULL DEFAULT '0' COMMENT '账号标识',
  `editPwdNum` tinyint(4) DEFAULT NULL COMMENT '修改密码次数',
  `isSpecial` tinyint(1) DEFAULT '0' COMMENT '是否特殊(0不是,1是)',
  `userType` varchar(10) NOT NULL DEFAULT 'C' COMMENT '房东类型：A-自营房/B-内部合伙人/C-职业房东/D-外部合伙人',
  `brandName` varchar(50) DEFAULT NULL COMMENT '品牌名称',
  `isVerified` tinyint(4) DEFAULT '0' COMMENT '认证房东 0:未认证 1:蘑菇认证',
  `legalPerson` varchar(50) DEFAULT NULL COMMENT '法人名称主要用于作为合同甲方',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  `createBy` int(11) DEFAULT NULL COMMENT '创建人',
  `updateTime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updateBy` int(11) DEFAULT NULL COMMENT '创建人',
  PRIMARY KEY (`tid`),
  UNIQUE KEY `IDX_DONECODE` (`soDoneCode`),
  KEY `IDX_USERID` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='房东信息历史表';

/*Table structure for table `user_password` */


CREATE TABLE `user_password` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `soDoneCode` int(11) unsigned NOT NULL COMMENT '对应common_business_record.id',
  `userId` int(11) NOT NULL COMMENT '用户id,对应user_info.id',
  `password` varchar(100) NOT NULL COMMENT '登录密码',
  `passType` TINYINT(4) NOT NULL COMMENT '密码类型',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `createBy` int(11) DEFAULT NULL COMMENT '创建人',
  `updateTime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `updateBy` int(11) DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`id`),
  UNIQUE KEY `IDX_USERID` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户密码表';

/*Table structure for table `user_password_his` */

CREATE TABLE `user_password_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `soDoneCode` int(11) unsigned NOT NULL COMMENT '对应common_business_record.id',
  `userId` int(11) NOT NULL COMMENT '用户id,对应user_info.id',
  `password` varchar(100) NOT NULL COMMENT '登录密码',
  `passType` TINYINT(4) NOT NULL COMMENT '密码类型',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `createBy` int(11) DEFAULT NULL COMMENT '创建人',
  `updateTime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `updateBy` int(11) DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`id`),
  UNIQUE KEY `IDX_DONECODE` (`soDoneCode`),
  KEY `IDX_USERID` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4  COMMENT='用户密码历史表';

/*Table structure for table `user_renter_info` */


CREATE TABLE `user_renter_info` (
  `tid` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `soDoneCode` int(11) unsigned NOT NULL COMMENT '操作流水号,对应common_business_record.id',
  `userId` int(11) NOT NULL COMMENT '用户Id,user_info.id',
  `companyName` varchar(200) DEFAULT NULL COMMENT '单位名称',
  `hobby` varchar(64) DEFAULT NULL COMMENT '兴趣爱好',
  `accountNum` varchar(32) DEFAULT NULL COMMENT '账号标识',
  `oldLiveStatus` int(11) DEFAULT NULL COMMENT '老系统到新系统租客居住标识(null为默认值,表示新系统注册租客 1:老系统在住未转入新系统 2:老系统在住已转入新系统 3:老租客在老系统中已退房)',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `createBy` int(11) DEFAULT NULL COMMENT '创建人员',
  `updateTime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `updateBy` int(11) DEFAULT NULL COMMENT '更新人员',
  `isVerified` int(2) NOT NULL DEFAULT '1' COMMENT '是否通过了身份认证0:否 1:是',
  PRIMARY KEY (`tid`),
  UNIQUE KEY `IDX_USERID` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='租客信息表';

/*Table structure for table `user_renter_info_his` */


CREATE TABLE `user_renter_info_his` (
  `tid` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `soDoneCode` int(11) unsigned NOT NULL COMMENT '操作流水号,对应common_business_record.id',
  `userId` int(11) NOT NULL COMMENT '用户Id,user_info.id',
  `companyName` varchar(200) DEFAULT NULL COMMENT '单位名称',
  `hobby` varchar(64) DEFAULT NULL COMMENT '兴趣爱好',
  `accountNum` varchar(32) DEFAULT NULL COMMENT '账号标识',
  `oldLiveStatus` int(11) DEFAULT NULL COMMENT '老系统到新系统租客居住标识(null为默认值,表示新系统注册租客 1:老系统在住未转入新系统 2:老系统在住已转入新系统 3:老租客在老系统中已退房)',
  `isBlack` tinyint(1) DEFAULT '0' COMMENT '是否黑名单,0:否,1:是',
  `blackRemark` varchar(1000) DEFAULT NULL COMMENT '标示为黑名单描述',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `createBy` int(11) DEFAULT NULL COMMENT '创建人员',
  `updateTime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `updateBy` int(11) DEFAULT NULL COMMENT '更新人员',
  `isVerified` int(2) NOT NULL DEFAULT '1' COMMENT '是否通过了身份认证0:否 1:是',
  PRIMARY KEY (`tid`),
  UNIQUE KEY `IDX_DONECODE` (`soDoneCode`),
  KEY `IDX_USERID` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='租客信息历史表';

/*Table structure for table `user_usertype` */

CREATE TABLE `user_usertype` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `soDoneCode` int(11) unsigned NOT NULL COMMENT '操作流水号,对应common_business_record.id',
  `userId` int(11) NOT NULL COMMENT '用户Id, user_info.id',
  `userType` tinyint(4) NOT NULL COMMENT '用户类型,groupName=userType',
  `status` tinyint(1) DEFAULT '1' COMMENT '用户状态: 0:不可用；1：可用',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `createBy` int(11) DEFAULT NULL COMMENT '创建人',
  `updateTime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `updateBy` int(11) DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`id`),
  KEY `IDX_USERID` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户类型表';

/*Table structure for table `user_usertype_his` */


CREATE TABLE `user_usertype_his` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `soDoneCode` int(11) unsigned NOT NULL COMMENT '对应common_business_record.id',
  `userId` int(11) NOT NULL COMMENT '用户Id, user_info.id',
  `userType` tinyint(4) NOT NULL COMMENT '用户类型,groupName=userType',
  `status` tinyint(1) DEFAULT '1' COMMENT '用户状态: 0:不可用；1：可用',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `createBy` int(11) DEFAULT NULL COMMENT '创建人',
  `updateTime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `updateBy` int(11) DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`id`),
  UNIQUE KEY `IDX_DONECODE` (`soDoneCode`),
  KEY `IDX_USERID` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户类型历史表';

ALTER TABLE user_info ADD COLUMN `weixin` VARCHAR(30)  COMMENT '微信号';

ALTER TABLE user_info ADD COLUMN `firstLoginTime` DATETIME  COMMENT '首次登录时间';

ALTER TABLE user_info ADD COLUMN `latestLoginTime` DATETIME  COMMENT '最近一次的登录';


CREATE UNIQUE INDEX IDX_DONECODE ON user_renter_info(soDoneCode); 


CREATE INDEX IDX_DONECODE ON user_info(done_Code); 

CREATE UNIQUE INDEX IDX_DONECODE ON user_info_his(done_Code); 

CREATE UNIQUE INDEX IDX_DONECODE ON user_landlord_info(soDoneCode); 

CREATE UNIQUE INDEX IDX_DONECODE ON user_password(soDoneCode); 


DROP INDEX IDX_USERID ON user_password;

DROP INDEX IDX_USERID ON user_password_log;

CREATE UNIQUE INDEX IDX_USERID_TYPE ON user_password(userId,passType); 

CREATE UNIQUE INDEX IDX_USERID_TYPE ON user_password_log(userId,passType); 


CREATE UNIQUE INDEX IDX_DONECODE ON user_usertype(soDoneCode); 

CREATE UNIQUE INDEX IDX_USERID_TYPE ON user_usertype(userId,userType); 

