/** 业主和房源(公寓)的关系历史表**/
CREATE TABLE `host_flats_relation_his` (
  `id` INT(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `mapId` INT(11) NOT NULL COMMENT '业主管理ID',
  `flat_id` INT(11) COMMENT '公寓ID',
  `host_id` INT(11) COMMENT '业主ID',
  `landlord_id` INT(11) COMMENT '职业房东ID',
  `rent_start_date` DATETIME DEFAULT '1970-01-01 00:00:00' COMMENT '租约开始日期',
  `rent_end_date` DATETIME DEFAULT '1970-01-01 00:00:00' COMMENT '租约结束日期',
  `has_section` TINYINT(1) DEFAULT '0' COMMENT '是否支持分段租金: 0:不支持; 1:支持',
  `each_pay_day` INT(2) DEFAULT '0' COMMENT '每期付款日, 1~31中选择一天为付款日',
  `start_pay_date` DATETIME DEFAULT '1970-01-01 00:00:00' COMMENT '下期付款日',
  `pay_channel` VARCHAR(50) DEFAULT NULL COMMENT '支付渠道(银行/微信/支付宝……)',
  `pay_type` VARCHAR(50) DEFAULT '0' COMMENT '付款方式(付三押一……)',
  `create_time` TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `create_by` INT(11) DEFAULT '0' COMMENT '创建人员',
  `update_time` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `update_by` INT(11) DEFAULT '0' COMMENT '修改人员',
  `done_code` INT(32) DEFAULT '0' COMMENT '操作流水号',
  `STATUS` TINYINT(1) DEFAULT '1' COMMENT '状态：0:失效; 1:可用',
  `remark` VARCHAR(250) DEFAULT NULL COMMENT '备注',
  `operType` CHAR(1) COMMENT '该历史记录产生时的操作类型(A:新增 U:更新 D:删除)',
  `soDoneCode` INT(11) DEFAULT NULL COMMENT '业务记录ID(参考comm_business_record表的id)',
  PRIMARY KEY (`id`),
  KEY `landlord_id` (`landlord_id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COMMENT='业主和房源(公寓)的关系历史表';
/** 销售合同历史表 **/
CREATE TABLE `cntr_salecontract_his` (
  `id` INT(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `contractId` INT(11) COMMENT '合同ID',
  `contractAutoNum` VARCHAR(32) DEFAULT NULL COMMENT '合同编号(自动)',
  `contractOffNum` VARCHAR(32) DEFAULT NULL COMMENT '合同编号(线下)',
  `flatsId` INT(11) DEFAULT NULL COMMENT '签约公寓ID',
  `roomId` INT(11) DEFAULT NULL COMMENT '签约房间ID',
  `renterId` INT(11) DEFAULT NULL COMMENT '租客ID',
  `landlordId` INT(11) DEFAULT NULL COMMENT '职业房东ID',
  `contractType` INT(11) COMMENT '合同类型(1.蘑菇宝电子合同;2.非蘑菇宝电子合同;3非蘑菇宝纸质合同)',
  `sourceRentPrice` DECIMAL(12,2) DEFAULT NULL,
  `realRentPrice` DECIMAL(12,2) DEFAULT NULL,
  `status` INT(11) DEFAULT NULL COMMENT '合同状态(枚举)',
  `beginDate` DATETIME DEFAULT NULL COMMENT '合同开始日期(起租日)',
  `endDate` DATETIME DEFAULT NULL COMMENT '合同结束日期',
  `loseEfficacyDate` DATETIME DEFAULT NULL COMMENT '合同失效日期',
  `leaseTerm` INT(11) DEFAULT NULL COMMENT '租期',
  `signingDate` DATETIME DEFAULT NULL COMMENT '签约日期',
  `rentPayType` INT(11) DEFAULT NULL COMMENT '租金付款方式',
  `contractRemark` VARCHAR(128) DEFAULT NULL COMMENT '合同备注',
  `idPhotoUrl` VARCHAR(128) DEFAULT NULL COMMENT '合同证件照路径',
  `createTime` DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `effectiveTime` TIMESTAMP COMMENT '有效时间',
  `emergencyContact` VARCHAR(30) DEFAULT NULL COMMENT '紧急联系人',
  `emergencyContactPhone` VARCHAR(30) DEFAULT NULL COMMENT '紧急联系人电话号码',
  `emergencyContactAddress` VARCHAR(70) DEFAULT NULL COMMENT '紧急联系人地址',
  `turnStrtus` INT(11) DEFAULT '0' COMMENT '0非转客1转客2客人同意3客人不同意',
  `payDate` INT(2) DEFAULT NULL COMMENT '每期付款日（后期业务需要每期付款日，使用UPDATE cntr_saleContract SET payDate = DAY(beginDate);初始化）',
  `fileName` VARCHAR(128) DEFAULT NULL COMMENT '合同文件名称',
  `billclear` INT(2) DEFAULT '0' COMMENT '账单是否已清',
  `agencyFee` DECIMAL(10,2) DEFAULT NULL COMMENT '中介费',
  `manageFee` DECIMAL(10,2) DEFAULT NULL COMMENT '管理费',
  `butlerName` VARCHAR(20) DEFAULT NULL COMMENT '管家姓名',
  `oddmentAmount` DECIMAL(10,2) DEFAULT '0.00' COMMENT '租期余数金额',
  `oddmentPlace` INT(2) DEFAULT '1' COMMENT '0租期余数置头,1租期余数置尾',
  `oddmentMerge` INT(2) DEFAULT '0' COMMENT '0表示租期余数不与临近整期合并，1表示租期余数与临近整期合并',
  `deadlineDate` INT(2) DEFAULT NULL COMMENT 'deadlineDate<=0，提前deadlineDate天付款；32>deadlineDate>0，每月deadlineDate号付款',
  `sendFlag` INT(2) DEFAULT '2' COMMENT '是否发送 1:未发送 2:已发送',
  `picGroupId` INT(11) DEFAULT NULL COMMENT '合同图片组Id',
  `residentId` INT(11) COMMENT '入住人Id',
  `billConfig` VARCHAR(4096) DEFAULT NULL COMMENT '合同账单配置，json字符串',
  `deposit` DECIMAL(12,2) DEFAULT NULL COMMENT '押金',
  `operType` CHAR(1) COMMENT '该历史记录产生时的操作类型(A:新增 U:更新 D:删除)',
  `soDoneCode` INT(11) DEFAULT NULL COMMENT '业务记录ID(参考comm_business_record表的id)',
  PRIMARY KEY (`id`),
  KEY `IDX_RNETERID` (`renterId`)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COMMENT='销售合同历史表';

/** 签约单历史表 **/
CREATE TABLE `oder_signedorder_his` (
  `id` INT(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `order_signed_id` INT(11) COMMENT '签约单ID',
  `renterId` INT(11) DEFAULT NULL COMMENT '租客id',
  `flatsId` INT(11) DEFAULT NULL COMMENT '公寓id',
  `roomId` INT(11) DEFAULT NULL COMMENT '房间id',
  `status` INT(11) DEFAULT NULL COMMENT '状态(枚举)',
  `createTime` DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `remark` VARCHAR(512) DEFAULT NULL COMMENT '备注',
  `checkOutTime` DATETIME DEFAULT NULL COMMENT '退房时间',
  `saleContractId` INT(11) DEFAULT NULL COMMENT '销售合同id',
  `reservationOrderId` INT(11) DEFAULT NULL COMMENT '预约单ID',
  `bookOrderId` INT(11) DEFAULT NULL COMMENT '预定单ID',
  `landlordId` INT(11) DEFAULT NULL COMMENT '职业房东ID',
  `fleecyTime` DATETIME DEFAULT NULL COMMENT '房东审核通过时间',
  `updateTime` DATETIME DEFAULT NULL COMMENT '更新时间',
  `effectiveTime` DATETIME DEFAULT NULL COMMENT '有效时间',
  `deadline` DATETIME DEFAULT NULL COMMENT '截止日期',
  `signedManagerId` INT(11) DEFAULT NULL COMMENT '管家ID',
  `signedManagerType` INT(2) DEFAULT NULL COMMENT '管家类型(参考字典表groupName=userType)',
  `sendFlag` INT(2) DEFAULT '2' COMMENT '是否发送 1:未发送 2:已发送',
  `channel` VARCHAR(20) DEFAULT NULL COMMENT '签约来源（参考字典表groupName=channel）',
  `subsId` BIGINT(11) DEFAULT NULL COMMENT '订购ID',
  `signedNum` VARCHAR(30) DEFAULT NULL COMMENT '签约单号',
  `operType` CHAR(1) COMMENT '该历史记录产生时的操作类型(A:新增 U:更新 D:删除)',
  `soDoneCode` INT(11) DEFAULT NULL COMMENT '业务记录ID(参考comm_business_record表的id)',
  PRIMARY KEY (`id`),
  KEY `renterId` (`renterId`),
  KEY `os_saleContractId` (`saleContractId`) USING BTREE,
  KEY `idx_oder_signedOrder_reservationOrderId` (`reservationOrderId`),
  KEY `idx_oder_signedorder_roomId` (`roomId`)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COMMENT='签约单历史表';

/** 合同用户关系历史表 **/
CREATE TABLE `cntr_salecontractuserrel_his` (
  `id` INT(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `cntr_user_relId` INT(11) COMMENT '合同用户关系ID',
  `contractId` INT(11) DEFAULT NULL COMMENT '合同id',
  `userId` INT(11) DEFAULT NULL COMMENT '用户id',
  `userType` TINYINT(4) DEFAULT NULL COMMENT '用户类型(参考字典表组名:userType)',
  `userRel` TINYINT(4) DEFAULT NULL COMMENT '与签约人关系(1：本人 2：员工 3：亲人 4：朋友)',
  `createTime` DATETIME DEFAULT NULL COMMENT '创建时间',
  `operType` CHAR(1) COMMENT '该历史记录产生时的操作类型(A:新增 U:更新 D:删除)',
  `soDoneCode` INT(11) DEFAULT NULL COMMENT '业务记录ID(参考comm_business_record表的id)',
  PRIMARY KEY (`id`),
  KEY `contractId` (`contractId`),
  KEY `userId` (`userId`)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COMMENT='合同用户关系历史表';

/** 分店信息扩展历史表 **/
CREATE TABLE `orga_org_extend_his` (
  `id` INT(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `org_extendId` INT(11) COMMENT '扩展id',
  `orgId` INT(11) COMMENT '对应的组织表id',
  `cityId` INT(11) DEFAULT NULL COMMENT '分店所在的城市',
  `districtId` INT(11) DEFAULT NULL COMMENT '分店所在的城市行政区',
  `address` VARCHAR(200) DEFAULT NULL COMMENT '分店地址',
  `xCoordinate` DOUBLE DEFAULT NULL COMMENT '坐标X',
  `yCoordinate` DOUBLE DEFAULT NULL COMMENT '坐标Y',
  `telephone` VARCHAR(16) DEFAULT NULL COMMENT '分店电话',
  `bulletin` VARCHAR(1000) DEFAULT NULL COMMENT '公告',
  `picGroupId` INT(11) DEFAULT NULL COMMENT '主图ID',
  `status` TINYINT(1) DEFAULT NULL COMMENT '分店状态(0:无效 1:有效)',
  `createBy` INT(11) COMMENT '创建人ID',
  `createTime` DATETIME COMMENT '创建时间',
  `createByType` TINYINT(2) COMMENT '创建人类型(参考groupName=userType)',
  `updateBy` INT(11) DEFAULT NULL COMMENT '修改人ID',
  `updateTime` DATETIME DEFAULT NULL COMMENT '修改时间',
  `updateByType` TINYINT(2) DEFAULT NULL COMMENT '修改人类型(参考groupName=userType)',
  `operType` CHAR(1) COMMENT '该历史记录产生时的操作类型(A:新增 U:更新 D:删除)',
  `soDoneCode` INT(11) DEFAULT NULL COMMENT '业务记录ID(参考comm_business_record表的id)',
  PRIMARY KEY (`id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COMMENT='分店信息扩展历史表';

/** 报修历史表 **/
CREATE TABLE `supp_repair_his` (
  `id` INT(15) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `supp_repairId` INT(15) COMMENT '报修ID',
  `renterId` INT(15) DEFAULT NULL COMMENT '用户id',
  `orderId` INT(15) DEFAULT NULL COMMENT '订单ID',
  `orderType` INT(15) DEFAULT NULL COMMENT '订单类型 1:预约单 2:预定单 3:签约单',
  `repairOrigin` INT(1) DEFAULT NULL COMMENT '报修来源 1：租客APP，2:房东APP 3:客服',
  `repairName` VARCHAR(15) DEFAULT NULL COMMENT '报修人姓名',
  `repairPhone` VARCHAR(15) DEFAULT NULL COMMENT '报修人电话',
  `submitId` INT(15) DEFAULT NULL COMMENT '提交人id',
  `submitTime` DATETIME DEFAULT NULL COMMENT '提交时间',
  `repairImgs` VARCHAR(1024) DEFAULT NULL COMMENT '报修图片地址',
  `content` VARCHAR(500) DEFAULT NULL COMMENT '报修问题描述',
  `landlordId` INT(15) DEFAULT NULL COMMENT '房东id',
  `roomId` INT(15) DEFAULT NULL COMMENT '房源id',
  `finishDate` DATETIME DEFAULT NULL COMMENT '确认完成日期',
  `repairStatus` INT(1) DEFAULT '1' COMMENT '报修状态1：提交受理中 2：已完成 3：已撤销',
  `cancelTime` DATETIME DEFAULT NULL COMMENT '撤销日期',
  `userAppStatus` TINYINT(1) DEFAULT '1' COMMENT '用户APP状态0：无效，1：有效',
  `landlordAppStatus` TINYINT(1) DEFAULT '1' COMMENT '房东APP状态0：无效，1：有效',
  `remark` VARCHAR(500) DEFAULT NULL COMMENT '备注',
  `createBy` INT(15) DEFAULT NULL COMMENT '创建人',
  `createTime` DATETIME DEFAULT NULL COMMENT '创建时间',
  `updateBy` INT(15) DEFAULT NULL COMMENT '更新人id',
  `updateTime` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `status` TINYINT(1) DEFAULT '1' COMMENT '状态0：无效，1：有效',
  `cityId` INT(15) DEFAULT NULL COMMENT '城市id',
  `renterAppStatus` TINYINT(1) DEFAULT '1' COMMENT '租客APP状态',
  `linkman` VARCHAR(255) DEFAULT NULL,
  `linkphone` VARCHAR(15) DEFAULT NULL,
  `operType` CHAR(1) COMMENT '该历史记录产生时的操作类型(A:新增 U:更新 D:删除)',
  `soDoneCode` INT(11) DEFAULT NULL COMMENT '业务记录ID(参考comm_business_record表的id)',
  PRIMARY KEY (`id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COMMENT='报修历史表';

/** 投诉历史表 **/
CREATE TABLE `supp_complain_his` (
  `id` INT(15) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `supp_complainId` INT(15) COMMENT '投诉主键ID',
  `renterId` INT(15) DEFAULT NULL COMMENT '用户id',
  `orderId` INT(15) DEFAULT NULL COMMENT '订单ID',
  `orderType` INT(15) DEFAULT NULL COMMENT '订单类型 1:预约单 2:预定单 3:签约单',
  `accuserOrigin` INT(1) DEFAULT NULL COMMENT '投诉来源 1：租客APP，2:房东APP 3:客服',
  `complainName` VARCHAR(255) DEFAULT NULL COMMENT '投诉人姓名',
  `complainPhone` VARCHAR(15) DEFAULT NULL COMMENT '投诉人联系电话',
  `complainTarget` INT(1) DEFAULT '9' COMMENT '投诉对象(1:室友 2:房东 3:管家 9:其他)',
  `submitId` INT(15) DEFAULT NULL COMMENT '提交人id',
  `submitTime` DATETIME DEFAULT NULL COMMENT '提交时间',
  `content` VARCHAR(511) DEFAULT NULL COMMENT '投诉内容',
  `completionTime` DATETIME DEFAULT NULL COMMENT '处理完成时间',
  `cancelTime` DATETIME DEFAULT NULL COMMENT '撤销时间',
  `landlordId` INT(15) DEFAULT NULL COMMENT '房东id',
  `complainUrl` VARCHAR(1024) DEFAULT NULL COMMENT '图片Url地址(多张以，分开)',
  `complainStatus` INT(1) DEFAULT NULL COMMENT '投诉状态 1：提交受理中 2：已处理，3：已撤销',
  `userAppStatus` TINYINT(1) DEFAULT '1' COMMENT '用户APP状态0：无效，1：有效',
  `landlordAppStatus` TINYINT(1) DEFAULT '1' COMMENT '房东APP状态0：无效，1：有效',
  `remark` VARCHAR(500) DEFAULT NULL COMMENT '备注',
  `createBy` VARCHAR(255) DEFAULT NULL COMMENT '创建人Id',
  `createTime` DATETIME DEFAULT NULL COMMENT '创建时间',
  `updateBy` INT(15) DEFAULT NULL COMMENT '更新人',
  `updateTime` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `status` TINYINT(1) DEFAULT '1' COMMENT '状态 0：无效，1：有效',
  `roomId` INT(15) DEFAULT NULL COMMENT '房源id',
  `cityId` INT(15) DEFAULT NULL COMMENT '城市id',
  `renterAppStatus` TINYINT(1) DEFAULT '1' COMMENT '租客记录状态',
  `linkman` VARCHAR(255) DEFAULT NULL,
  `linkphone` VARCHAR(15) DEFAULT NULL,
  `operType` CHAR(1) COMMENT '该历史记录产生时的操作类型(A:新增 U:更新 D:删除)',
  `soDoneCode` INT(11) DEFAULT NULL COMMENT '业务记录ID(参考comm_business_record表的id)',
  PRIMARY KEY (`id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COMMENT='投诉历史表';

/**公寓大楼历史表**/
CREATE TABLE `flat_community_property_his` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键值',
  `propertyId` int(11) COMMENT '公寓大楼Id',
  `landlordId` int(11) COMMENT '房东Id',
  `communityId` int(11) COMMENT '小区Id（集中式公寓）',
  `mansionName` varchar(255) COMMENT '公寓楼栋名称',
  `floorCount` int(3) DEFAULT '0' COMMENT '大楼层数',
  `isLift` int(1) DEFAULT '1' COMMENT '是否有电梯(0：无，1：有)',
  `flatsTag` int(1) DEFAULT '2' COMMENT '公寓类别(2集中式，1分散式，见字典)',
  `createBy` int(11) DEFAULT NULL COMMENT '创建人Id',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `createByType` int(11) COMMENT '创建用户类型,见字典表groupName=userType。0:房东;4租客',
  `updateBy` int(11) DEFAULT NULL COMMENT '更新人',
  `updateTime` timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `updateByType` int(11) COMMENT '更新用户类型,见字典表groupName=userType。0:房东;4租客',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `status` int(1) DEFAULT '1' COMMENT '状态',
  `elevatorCount` int(3) DEFAULT '0' COMMENT '电梯数',
  `operType` CHAR(1) COMMENT '该历史记录产生时的操作类型(A:新增 U:更新 D:删除)',
  `soDoneCode` INT(11) DEFAULT NULL COMMENT '业务记录ID(参考comm_business_record表的id)',
  PRIMARY KEY (`id`),
  KEY `fcp_landlordId` (`landlordId`) USING BTREE,
  KEY `fcp_communityId` (`communityId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='公寓大楼历史表';


/** 销售应收账务历史表 **/
CREATE TABLE `bill_saleshouldaccount_his` (
  `id` INT(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `bill_sale_accountId` INT(11) COMMENT '账务表ID',
  `signedOrderId` INT(11) DEFAULT NULL COMMENT '签约单ID',
  `flatsId` INT(11) DEFAULT NULL COMMENT '公寓ID',
  `roomId` INT(11) DEFAULT NULL COMMENT '房间ID',
  `saleBillId` INT(11) DEFAULT NULL COMMENT '账单ID',
  `renterId` INT(11) DEFAULT NULL COMMENT '租客ID',
  `consumeType` INT(11) DEFAULT NULL COMMENT '应收类型',
  `periodYear` INT(11) DEFAULT NULL COMMENT '期数年(1-2期中的1)',
  `periodStage` INT(11) DEFAULT NULL COMMENT '期数期(1-2期中的2)',
  `startDate` DATETIME DEFAULT NULL COMMENT '起始日期',
  `endDate` DATETIME DEFAULT NULL COMMENT '结束日期',
  `billDate` DATETIME DEFAULT NULL COMMENT '账单日',
  `payStatus` INT(1) DEFAULT '0' COMMENT '支付状态(0：未支付 1：已支付)',
  `money` DECIMAL(12,2) DEFAULT NULL,
  `realPayMoney` DECIMAL(12,2) DEFAULT NULL,
  `preferentialMoney` DECIMAL(12,2) DEFAULT NULL,
  `remark` VARCHAR(128) COLLATE utf8_bin DEFAULT NULL COMMENT '备注',
  `createTime` DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `valid` INT(1) DEFAULT '1' COMMENT '数据有效性',
  `landlordId` INT(11) NOT NULL DEFAULT '0' COMMENT '房东ID',
  `billType` INT(11) NOT NULL DEFAULT '0' COMMENT '账务类型，参考账单类型表的billType',
  `billDtlType` INT(11) NOT NULL DEFAULT '0' COMMENT '账务明细类型，参考账单明细类型表的billDtlType',
  `deadline` DATETIME NOT NULL COMMENT '付款最后日期',
  `title` VARCHAR(100) COLLATE utf8_bin DEFAULT NULL COMMENT '账单显示名称',
  `operType` CHAR(1) COMMENT '该历史记录产生时的操作类型(A:新增 U:更新 D:删除)',
  `soDoneCode` INT(11) DEFAULT NULL COMMENT '业务记录ID(参考comm_business_record表的id)',
  PRIMARY KEY (`id`),
  UNIQUE KEY `index5` (`signedOrderId`,`billType`,`billDtlType`,`startDate`,`soDoneCode`),
  KEY `idx_bill_saleShouldAccount_signedOrderId` (`signedOrderId`),
  KEY `salebillid` (`saleBillId`)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COMMENT='销售应收账务历史表';



