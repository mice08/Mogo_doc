/*新增字段，添加职业房东历史表*/
use mogoroomdb;

CREATE TABLE `user_landlord_his` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `landlordId` INT(11) NOT NULL COMMENT '房东ID',
  `name` VARCHAR(20) NULL COMMENT '房东姓名',
  `sex` TINYINT(1) NULL COMMENT '性别(女:0 男1)',
  `identityId` VARCHAR(20) NULL COMMENT '身份证号',
  `phone` VARCHAR(14) NOT NULL COMMENT '手机号',
  `photo` VARCHAR(128) NULL COMMENT '职业房东照片路径',
  `contactPhone` VARCHAR(11) NULL COMMENT '联系方式',
  `weixin` VARCHAR(30) NULL COMMENT '微信号',
  `email` VARCHAR(64) NULL COMMENT '电子邮箱',
  `birthday` DATETIME NULL COMMENT '出生日期',
  `address` VARCHAR(60) NULL COMMENT '居住地址',
  `emergency` VARCHAR(60) NULL COMMENT '紧急联系人',
  `emergencyPhone` VARCHAR(11) NULL COMMENT '紧急联系人电话',
  `contractDate` DATETIME NULL COMMENT '签约日期',
  `salesmanId` INT(11) NULL COMMENT '拓展人Id',
  `createTime` TIMESTAMP NULL COMMENT '创建时间',
  `updateTime` TIMESTAMP NULL COMMENT '更新时间',
  `createby` INT(11) NULL COMMENT '创建人',
  `remark` VARCHAR(255) NULL COMMENT '备注',
  `status` TINYINT(1) DEFAULT '1' COMMENT '是否有效(无效:0 有效:1)',
  `password` VARCHAR(64) NULL COMMENT '密码',
  `accountNum` VARCHAR(64) NULL COMMENT '帐号标识',
  `memberNum` VARCHAR(64) NULL COMMENT '会员编号',
  `editPwdNum` TINYINT(4) DEFAULT '0' COMMENT '修改密码次数',
  `regId` VARCHAR(64) NULL COMMENT '职业房东APP消息标识',
  `phoneNum` VARCHAR(10) CHARACTER SET utf8 COLLATE utf8_bin NULL COMMENT '分机号码',
  `isSpecial` TINYINT(1) DEFAULT '0' COMMENT '是否特殊(不是:0 是:1)',
  `loginDevice` VARCHAR(255) NULL COMMENT '登录设备',
  `userType` VARCHAR(10) DEFAULT 'C' COMMENT '房东类型(A:自营房 B:内部合伙人 C:职业房东 D:外部合伙人)',
  `firstLoginTime` TIMESTAMP NULL COMMENT '首次登录时间',
  `latestLoginTime` TIMESTAMP NULL COMMENT '最近一次的登录时间',
  `phoneExt` VARCHAR(10) DEFAULT '0' COMMENT '分机号',
  `brandName` VARCHAR(50) NULL COMMENT '品牌名称',
  `label` TINYINT(4) NOT NULL DEFAULT '0' COMMENT '认证房东(0:未认证 1:蘑菇认证)',
  `legalPerson` VARCHAR(50) NOT NULL COMMENT '法人名称主要用于作为合同甲方',
  `soDoneCode` INT(11) NULL COMMENT '修改类型(参考comm_business_record表的id)',
  PRIMARY KEY (`id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8 COMMENT='职业房东历史表'