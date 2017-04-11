/*数据中心一期，主要解决bd报表查询效率问题*/
CREATE DATABASE dc;

USE dc;

/*
新建表：数据中心_房东_明细_实时
1. 和user_landlord表数据量一致，当前量：5000
2. 主要查询sql: select * from dc_land_dtl_real where landlordId = {0}
3. 索引: landlordId
*/
CREATE TABLE `dc_land_dtl_real` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `landlordId` int(11) NOT NULL COMMENT '房东id',
  `name` varchar(50) DEFAULT NULL COMMENT '房东姓名',
  `phone` varchar(14) DEFAULT NULL COMMENT '手机号(唯一标识)',
  `brandName` varchar(50) DEFAULT NULL COMMENT '品牌名称',
  `servicePersonId` int(11) DEFAULT NULL COMMENT '服务人id',
  `servicePersonName` varchar(50) DEFAULT NULL COMMENT '服务人姓名',
  `applyCityId` int(11) DEFAULT NULL COMMENT '房东申请城市id',
  `signCount` int(8) DEFAULT NULL COMMENT '签约体量',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `contractDate` date DEFAULT NULL COMMENT '签约时间',
  `serviceSectorId` int(11) DEFAULT NULL COMMENT '服务人部门id',
  `serviceSectorName` varchar(50) DEFAULT NULL COMMENT '服务人部门名称',
  `serviceAreaId` int(11) DEFAULT NULL COMMENT '服务人区域id',
  `serviceAreaName` varchar(50) DEFAULT NULL COMMENT '服务人区域名称',
  `serviceCityId` int(11) DEFAULT NULL COMMENT '服务人城市id',
  `serviceCityName` varchar(50) DEFAULT NULL COMMENT '服务人城市名称',
  `mogoScore` int(4) DEFAULT NULL COMMENT '最新蘑菇分',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  `status` int(2) DEFAULT NULL COMMENT '房东状态',
  `weekScore` int(4) DEFAULT NULL COMMENT '最新周蘑菇分(每周一统计的前30天的平均分)',
  `roomCountLevel` int(1) DEFAULT NULL COMMENT '房源体量(1:小30-99，2:中100-199，3:大200-399，4:超大400以上)',
  `flatsTag` int(1) DEFAULT NULL COMMENT '主打公寓类型(1:分散式,2:集中式,3:分散式&集中式)',
  PRIMARY KEY (`id`),
  KEY `servicePersonId` (`servicePersonId`) ,
  KEY `serviceSectorId` (`serviceSectorId`) ,
  KEY `serviceAreaId` (`serviceAreaId`) ,
  KEY `landlordId` (`landlordId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='数据中心_房东_明细_实时';


/*
新建表：数据中心_房东_统计_增量_天
1. 目前数据量（房东5000），预计每日新增5000，每月150000
2. 主要查询sql: select * from dc_land_stat_inc_day where landlordId = {0}
3. 索引: landlordId
*/
CREATE TABLE `dc_land_stat_inc_day` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `recordDate` date DEFAULT NULL COMMENT '数据日期',
  `landlordId` int(11) DEFAULT NULL COMMENT '房东id',
  `centRoomCount` int(6) DEFAULT NULL COMMENT '新增集中式房源量',
  `deceRoomCount` int(6) DEFAULT NULL COMMENT '新增分散式房源量',
  `makeupOrderCount` int(6) DEFAULT NULL COMMENT '补录租约量',
  `onlineSignCount` int(6) DEFAULT NULL COMMENT '在线签约量',
  `mogobaoSignCount` int(6) DEFAULT NULL COMMENT '蘑菇宝签约量',
  `makeupConfirmCount` int(6) DEFAULT NULL COMMENT '转客确认量',
  `onlineConfirmCount` int(6) DEFAULT NULL COMMENT '在线签约确认量',
  `mogobaoConfirmCount` int(6) DEFAULT NULL COMMENT '蘑菇宝签约确认量',
  `onlinePayCustomBillCount` int(6) DEFAULT NULL COMMENT '在线支付自定义账单量',
  `firstOnlinePayRentCount` int(6) DEFAULT NULL COMMENT '首次在线支付租金量',
  `onlinePayRentCount` int(6) DEFAULT NULL COMMENT '在线支付租金总量',
  `inAmount` decimal(10,2) DEFAULT NULL COMMENT '总收入',
  `outAmount` decimal(10,2) DEFAULT NULL COMMENT '总支出',
  `rentAmount` decimal(10,2) DEFAULT NULL COMMENT '租金费用收入(不区分线上线下)',
  `otherAmount` decimal(10,2) DEFAULT NULL COMMENT '其他费用收入(不区分线上线下)',
  `reservationCount` int(6) DEFAULT NULL COMMENT '新增预约量',
  `bookCount` int(6) DEFAULT NULL COMMENT '新增预订量',
  `updateDate` date DEFAULT NULL COMMENT '数据更新时间',
  PRIMARY KEY (`id`),
  KEY `landlordId` (`landlordId`) 
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='数据中心_房东_统计_增量_天';

/*
新建表：数据中心_房东_统计_全量_天
1. 目前数据量（房东5000），预计每日新增5000，每月15万
2. 主要查询sql: select * from dc_land_stat_total_day where landlordId = {0}
3. 索引: landlordId
*/
CREATE TABLE `dc_land_stat_total_day` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `recordDate` date DEFAULT NULL COMMENT '数据日期',
  `landlordId` int(11) DEFAULT NULL COMMENT '房东id',
  `roomCount` int(8) DEFAULT NULL COMMENT '有效房源量',
  `centNoRentRoomCount` int(8) DEFAULT NULL COMMENT '集中式未租房源量',
  `deceNoRentRoomCount` int(8) DEFAULT NULL COMMENT '分散式未租房源量',
  `centRoomRentCount` int(8) DEFAULT NULL COMMENT '集中式已租房源量',
  `deceRoomRentCount` int(8) DEFAULT NULL COMMENT '分散式已租房源量',
  `showRoomCount` int(8) DEFAULT NULL COMMENT '展示房源量',
  `showRoomPitCount` int(8) DEFAULT NULL COMMENT '房源展示位数量',
  `makeupOrderCount` int(8) DEFAULT NULL COMMENT '补录租约量(目前在住)',
  `onlineSignCount` int(8) DEFAULT NULL COMMENT '在线签约量(目前在住)',
  `mogobaoSignCount` int(8) DEFAULT NULL COMMENT '蘑菇宝签约量(目前在住，不包含买回)',
  `makeupConfirmCount` int(8) DEFAULT NULL COMMENT '转客确认量(目前在住)',
  `firstOnlinePayRentCount` int(8) DEFAULT NULL COMMENT '首次在线支付租金量(目前在住)',
  `onlinePayRentCount` int(8) DEFAULT NULL COMMENT '在线支付租金总量(目前在住，不包含蘑菇宝常规款)',
  `operateSignCount` int(8) DEFAULT NULL COMMENT '运营统计签约量',
  PRIMARY KEY (`id`),
  KEY `landlordId` (`landlordId`) 
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='数据中心_房东_统计_全量_天';

/*
新建表：数据中心_签约单_明细_统计_天
1. 和oder_signedorder表一致，当前量约：37万
2. 主要查询sql: select * from dc_order_info where landlordId = {0}
3. 索引: landlordId
*/
CREATE TABLE `dc_order_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `signedOrderId` int(11) NOT NULL COMMENT '签约单id',
  `landlordId` int(11) DEFAULT NULL COMMENT '房东id',
  `renterId` int(11) DEFAULT NULL COMMENT '租客id',
  `roomId` int(11) DEFAULT NULL COMMENT '房间id',
  `subsId` int(11) DEFAULT NULL COMMENT '订购id',
  `status` int(11) DEFAULT NULL COMMENT '签约单状态',
  `isMogobao` tinyint(1) DEFAULT NULL COMMENT '是否为蘑菇宝',
  `realRentPrice` decimal(10,2) DEFAULT NULL COMMENT '实际月租金',
  `createTime` datetime DEFAULT NULL COMMENT '签约单创建时间',
  `isConfirm` tinyint(1) DEFAULT NULL COMMENT '是否已确认',
  `confirmDate` datetime DEFAULT NULL COMMENT '租约确认时间',
  `turnStrtus` int(1) DEFAULT NULL COMMENT '转客状态(0非转客1转客2客人同意3客人不同意)',
  `deposit` decimal(10,2) DEFAULT NULL COMMENT '押金',
  `firstOnlinePayRentTime` datetime DEFAULT NULL COMMENT '首次线上支付租金时间',
  `allOnlinePayRentAmount` decimal(10,2) DEFAULT NULL COMMENT '在线支付租金(不包含蘑菇宝常规款)金额',
  `allOnlinePayRentCount` int(4) DEFAULT NULL COMMENT '在线支付租金(不包括蘑菇宝常规款)笔数',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `landlordId` (`landlordId`),
  KEY `confirmDate` (`confirmDate`) ,
  KEY `firstOnlinePayRentTime` (`firstOnlinePayRentTime`) ,
  KEY `signedOrderId` (`signedOrderId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='数据中心_签约单_明细_统计_天';

/*
新建表：数据中心_房东_统计_增量_月
1. 预计每月新增15万
2. 主要查询sql: select * from dc_land_stat_inc_month where recordMonth = {0}
3. 索引: landlordId
*/
CREATE TABLE `dc_land_stat_inc_month` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `recordMonth` int(6) DEFAULT NULL COMMENT '年月',
  `landlordId` int(11) DEFAULT NULL COMMENT '房东id',
  `receivableBillCount` int(6) DEFAULT NULL COMMENT '应收账单量(包含蘑菇宝账单)',
  `receivedBillCount` int(6) DEFAULT NULL COMMENT '实收账单量(线上已付+线下确认)',
  `firstMogobaoPayRentCount` int(6) DEFAULT NULL COMMENT '蘑菇宝签约首次在线支付租金量',
  `firstOnlinePayRentCount` int(6) DEFAULT NULL COMMENT '线上签约首次在线支付租金量(不包含蘑菇宝签约)',
  `firstMakeupPayRentCount` int(6) DEFAULT NULL COMMENT '转客首次在线支付租金量',
  `onlinePayRentCount` int(6) DEFAULT NULL COMMENT '在线支付租金量(不包含蘑菇宝常规款)',
  `offlinePayRentCount` int(6) DEFAULT NULL COMMENT '线下支付租金量(包含蘑菇宝常规款)',
  `vacantDays` int(4) DEFAULT NULL COMMENT '空置天数',
  `valid` tinyint(1) DEFAULT NULL COMMENT '是否有效(1:有效 0:无效)',
  PRIMARY KEY (`id`),
  KEY `landlordId` (`landlordId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='数据中心_房东_统计_增量_月\r\n该表数据当月每日都会重新计算截止当前的当月最新数据并覆盖原有每月最后一天数据为最终数据';

