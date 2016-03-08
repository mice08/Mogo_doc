/*  用户统一体系以及历史记录相关表*/
use mogoroomdb;

CREATE TABLE `user_employee_info` (
  `oid` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增Id',
  `userId` int(11) NOT NULL COMMENT '用户Id,user_info.id',
  `englishName` varchar(64) DEFAULT NULL COMMENT '英文名',
  `province` varchar(20) DEFAULT NULL COMMENT '户籍省',
  `hometown` varchar(20) DEFAULT NULL COMMENT '户籍市',
  `validDoc` varchar(32) DEFAULT NULL COMMENT '有效证件',
  `lastvisitDate` datetime DEFAULT NULL COMMENT '最后一次登录日期',
  `loginCount` int(11) DEFAULT NULL COMMENT '登录次数',
  `entryDate` datetime DEFAULT NULL COMMENT '员工入职日期',
  `bankName` varchar(32) DEFAULT NULL COMMENT '银行名',
  `bankNum` varchar(32) DEFAULT NULL COMMENT '银行账号',
  `bankDetail` varchar(64) DEFAULT NULL COMMENT '开户银行详情',
  `createBy` int(11) DEFAULT NULL COMMENT '创建人',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateBy` int(11) DEFAULT NULL COMMENT '更新人',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  `valid` tinyint(1) DEFAULT NULL COMMENT '数据有效性',
  `emergConName` varchar(32) DEFAULT NULL COMMENT '紧急联系人姓名',
  `emergConPhone` varchar(20) DEFAULT NULL COMMENT '紧急联系人号码',
  `fromExten` varchar(10) DEFAULT NULL COMMENT '坐席工号',
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

/*Table structure for table `user_employee_info_his` */



CREATE TABLE `user_employee_info_his` (
  `hisId` int(11) unsigned NOT NULL COMMENT '对应user_info_his.hisId',
  `userId` int(11) NOT NULL COMMENT '用户Id,user_info.id',
  `englishName` varchar(64) DEFAULT NULL COMMENT '英文名',
  `province` varchar(20) DEFAULT NULL COMMENT '户籍省',
  `hometown` varchar(20) DEFAULT NULL COMMENT '户籍市',
  `validDoc` varchar(32) DEFAULT NULL COMMENT '有效证件',
  `lastvisitDate` datetime DEFAULT NULL COMMENT '最后一次登录日期',
  `loginCount` int(11) DEFAULT NULL COMMENT '登录次数',
  `entryDate` datetime DEFAULT NULL COMMENT '员工入职日期',
  `bankName` varchar(32) DEFAULT NULL COMMENT '银行名',
  `bankNum` varchar(32) DEFAULT NULL COMMENT '银行账号',
  `bankDetail` varchar(64) DEFAULT NULL COMMENT '开户银行详情',
  `createBy` int(11) DEFAULT NULL COMMENT '创建人',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateBy` int(11) DEFAULT NULL COMMENT '更新人',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  `valid` tinyint(1) DEFAULT NULL COMMENT '数据有效性',
  `emergConName` varchar(32) DEFAULT NULL COMMENT '紧急联系人姓名',
  `emergConPhone` varchar(20) DEFAULT NULL COMMENT '紧急联系人号码',
  `fromExten` varchar(10) DEFAULT NULL COMMENT '坐席工号',
  PRIMARY KEY (`hisId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `user_landlord_info` */


CREATE TABLE `user_landlord_info` (
  `oid` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `userId` int(11) NOT NULL COMMENT '用户id,user_info.id',
  `contactPhone` varchar(11) DEFAULT NULL COMMENT '联系方式(可以和phone相同)',
  `weixin` varchar(30) DEFAULT NULL COMMENT '微信号',
  `contractDate` datetime DEFAULT NULL COMMENT '签约日期',
  `salesmanId` int(11) DEFAULT NULL COMMENT '拓展人Id',
  `accountNum` varchar(64) NOT NULL DEFAULT '0' COMMENT '账号标识',
  `editPwdNum` tinyint(4) DEFAULT NULL COMMENT '修改密码次数',
  `isSpecial` tinyint(1) DEFAULT '0' COMMENT '是否特殊(0不是，1是)',
  `userType` varchar(10) NOT NULL DEFAULT 'C' COMMENT '房东类型：A-自营房/B-内部合伙人/C-职业房东/D-外部合伙人',
  `firstLoginTime` timestamp NULL DEFAULT NULL COMMENT '首次登录时间',
  `latestLoginTime` timestamp NULL DEFAULT NULL COMMENT '最近一次的登录时间',
  `brandName` varchar(50) DEFAULT NULL COMMENT '品牌名称',
  `label` tinyint(4) DEFAULT '0' COMMENT '认证房东 0:未认证 1:蘑菇认证',
  `legalPerson` varchar(50) DEFAULT NULL COMMENT '法人名称主要用于作为合同甲方',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  `createBy` int(11) DEFAULT NULL COMMENT '创建人',
  `updateTime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updateBy` int(11) DEFAULT NULL COMMENT '创建人',
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

/*Table structure for table `user_landlord_info_his` */


CREATE TABLE `user_landlord_info_his` (
  `hisId` int(11) NOT NULL COMMENT '对应user_info_his.hisId',
  `userId` int(11) NOT NULL COMMENT '用户id,user_info.id',
  `contactPhone` varchar(11) DEFAULT NULL COMMENT '联系方式(可以和phone相同)',
  `weixin` varchar(30) DEFAULT NULL COMMENT '微信号',
  `contractDate` datetime DEFAULT NULL COMMENT '签约日期',
  `salesmanId` int(11) DEFAULT NULL COMMENT '拓展人Id',
  `accountNum` varchar(64) NOT NULL DEFAULT '0' COMMENT '账号标识',
  `editPwdNum` tinyint(4) DEFAULT NULL COMMENT '修改密码次数',
  `isSpecial` tinyint(1) DEFAULT '0' COMMENT '是否特殊(0不是，1是)',
  `userType` varchar(10) NOT NULL DEFAULT 'C' COMMENT '房东类型：A-自营房/B-内部合伙人/C-职业房东/D-外部合伙人',
  `firstLoginTime` timestamp NULL DEFAULT NULL COMMENT '首次登录时间',
  `latestLoginTime` timestamp NULL DEFAULT NULL COMMENT '最近一次的登录时间',
  `brandName` varchar(50) DEFAULT NULL COMMENT '品牌名称',
  `label` tinyint(4) DEFAULT '0' COMMENT '认证房东 0:未认证 1:蘑菇认证',
  `legalPerson` varchar(50) DEFAULT NULL COMMENT '法人名称主要用于作为合同甲方',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  `createBy` int(11) DEFAULT NULL COMMENT '创建人',
  `updateTime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updateBy` int(11) DEFAULT NULL COMMENT '创建人',
  PRIMARY KEY (`hisId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `user_password` */


CREATE TABLE `user_password` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `userId` int(11) NOT NULL COMMENT '用户id,对应user_info.id',
  `pwd` varchar(100) NOT NULL COMMENT '登录密码',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `createBy` int(11) DEFAULT NULL COMMENT '创建人',
  `updateTime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `updateBy` int(11) DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

/*Table structure for table `user_password_his` */


CREATE TABLE `user_password_his` (
  `hisId` int(11) NOT NULL COMMENT '对应user_info_his.hisId',
  `userId` int(11) NOT NULL COMMENT '用户id,对应user_info.id',
  `pwd` varchar(100) NOT NULL COMMENT '登录密码',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `createBy` int(11) DEFAULT NULL COMMENT '创建人',
  `updateTime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `updateBy` int(11) DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`hisId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `user_renter_info` */


CREATE TABLE `user_renter_info` (
  `oid` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `userId` int(11) NOT NULL COMMENT '用户Id,user_info.id',
  `companyName` varchar(200) DEFAULT NULL COMMENT '单位名称',
  `hobby` varchar(64) DEFAULT NULL COMMENT '兴趣爱好',
  `accountNum` varchar(32) DEFAULT NULL COMMENT '账号标识',
  `oldLiveStatus` int(11) DEFAULT NULL COMMENT '老系统到新系统租客居住标识(null为默认值，表示新系统注册租客 1:老系统在住未转入新系统 2:老系统在住已转入新系统 3:老租客在老系统中已退房)',
  `isBlack` tinyint(1) DEFAULT '0' COMMENT '是否黑名单，0:否，1:是',
  `blackRemark` varchar(1000) DEFAULT NULL COMMENT '标示为黑名单描述',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `createBy` int(11) DEFAULT NULL COMMENT '创建人员',
  `updateTime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `updateBy` int(11) DEFAULT NULL COMMENT '更新人员',
  `isValidate` int(2) NOT NULL DEFAULT '1' COMMENT '是否认证 0:否 1:是',
  `isVerified` int(2) NOT NULL DEFAULT '1' COMMENT '是否通过了身份认证 0:否 1:是',
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

/*Table structure for table `user_renter_info_his` */


CREATE TABLE `user_renter_info_his` (
  `hisId` int(11) NOT NULL COMMENT '对应user_info_his.histId',
  `userId` int(11) NOT NULL COMMENT '用户Id,user_info.id',
  `companyName` varchar(200) DEFAULT NULL COMMENT '单位名称',
  `hobby` varchar(64) DEFAULT NULL COMMENT '兴趣爱好',
  `accountNum` varchar(32) DEFAULT NULL COMMENT '账号标识',
  `oldLiveStatus` int(11) DEFAULT NULL COMMENT '老系统到新系统租客居住标识(null为默认值，表示新系统注册租客 1:老系统在住未转入新系统 2:老系统在住已转入新系统 3:老租客在老系统中已退房)',
  `isBlack` tinyint(1) DEFAULT '0' COMMENT '是否黑名单，0:否，1:是',
  `blackRemark` varchar(1000) DEFAULT NULL COMMENT '标示为黑名单描述',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `createBy` int(11) DEFAULT NULL COMMENT '创建人员',
  `updateTime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `updateBy` int(11) DEFAULT NULL COMMENT '更新人员',
  `isValidate` int(2) NOT NULL DEFAULT '1' COMMENT '是否认证 0:否 1:是',
  `isVerified` int(2) NOT NULL DEFAULT '1' COMMENT '是否通过了身份认证 0:否 1:是',
  PRIMARY KEY (`hisId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `user_usertype_relation` */


CREATE TABLE `user_usertype_relation` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `userId` int(11) NOT NULL COMMENT '用户Id, user_info.id',
  `userType` tinyint(4) NOT NULL COMMENT '用户类型,groupName=userType',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `createBy` int(11) DEFAULT NULL COMMENT '创建人',
  `updateTime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `updateBy` int(11) DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

/*Table structure for table `user_usertype_relation_his` */


CREATE TABLE `user_usertype_relation_his` (
  `hisId` int(11) NOT NULL COMMENT '对应user_info_his.hisId',
  `userId` int(11) NOT NULL COMMENT '用户Id, user_info.id',
  `userType` tinyint(4) NOT NULL COMMENT '用户类型,groupName=userType',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `createBy` int(11) DEFAULT NULL COMMENT '创建人',
  `updateTime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `updateBy` int(11) DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`hisId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
