/*数据中心一期，主要解决bd报表查询效率问题*/
USE DC;

/*数据中心_房东_明细_实时*/
CREATE TABLE dc_land_dtl_real (
  landlordId INT(11) NOT NULL COMMENT '房东id',
  name VARCHAR(50) DEFAULT NULL COMMENT '房东姓名',
  phone VARCHAR(14) DEFAULT NULL COMMENT '手机号(唯一标识)',
  brandName VARCHAR(50) DEFAULT NULL COMMENT '品牌名称',
  servicePersonId INT(11) DEFAULT NULL COMMENT '服务人id',
  servicePersonName VARCHAR(50) DEFAULT NULL COMMENT '服务人姓名',
  applyCityId INT(11) DEFAULT NULL COMMENT '房东申请城市id',
  signCount INT(8) DEFAULT NULL COMMENT '签约体量',
  createTime DATETIME DEFAULT NULL COMMENT '创建时间',
  contractDate DATE DEFAULT NULL COMMENT '签约时间',
  serviceSectorId VARCHAR(50) DEFAULT NULL COMMENT '服务人部门id',
  serviceSectorName INT(11) DEFAULT NULL COMMENT '服务人部门名称',
  serviceAreaId INT(11) DEFAULT NULL COMMENT '服务人区域id',
  serviceAreaName VARCHAR(50) DEFAULT NULL COMMENT '服务人区域名称',
  serviceCityId INT(11) DEFAULT NULL COMMENT '服务人城市id',
  serviceCityName VARCHAR(50) DEFAULT NULL COMMENT '服务人城市名称',
  mogoScore INT(4) DEFAULT NULL COMMENT '最新蘑菇分',
  PRIMARY KEY (landlordId)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COMMENT='数据中心_房东_明细_实时';

/*数据中心_房东_统计_增量_天*/
CREATE TABLE dc_land_stat_inc_day (
  id INT(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  recordDate DATE DEFAULT NULL COMMENT '数据日期',
  landlordId INT(11) DEFAULT NULL COMMENT '房东id',
  roomCount INT(6) DEFAULT NULL COMMENT '新增房源量',
  makeupOrderCount INT(6) DEFAULT NULL COMMENT '补录租约量',
  onlineSignCount INT(6) DEFAULT NULL COMMENT '在线签约量',
  mogobaoSignCount INT(6) DEFAULT NULL COMMENT '蘑菇宝签约量',
  makeupConfirmCount INT(6) DEFAULT NULL COMMENT '转客确认量',
  onlineConfirmCount INT(6) DEFAULT NULL COMMENT '在线签约确认量',
  mogobaoConfirmCount INT(6) DEFAULT NULL COMMENT '蘑菇宝签约确认量',
  onlinePayCustomBillCount INT(6) DEFAULT NULL COMMENT '在线支付自定义账单量',
  firstOnlinePayRentCount INT(6) DEFAULT NULL COMMENT '首次在线支付租金量',
  onlinePayRentCount INT(6) DEFAULT NULL COMMENT '在线支付租金总量',
  PRIMARY KEY (id),
  KEY landlordId (landlordId)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COMMENT='数据中心_房东_统计_增量_天';

/*数据中心_房东_统计_全量_天*/
CREATE TABLE dc_land_stat_total_day (
  id INT(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  recordDate DATE DEFAULT NULL COMMENT '数据日期',
  landlordId INT(11) DEFAULT NULL COMMENT '房东id',
  roomCount INT(8) DEFAULT NULL COMMENT '有效房源量',
  noRentRoomCount INT(8) DEFAULT NULL COMMENT '未租房源量',
  RentRoomCount INT(8) DEFAULT NULL COMMENT '已租房源量',
  showRoomCount INT(8) DEFAULT NULL COMMENT '展示房源量',
  showRoomPitCount INT(8) DEFAULT NULL COMMENT '房源展示位数量',
  makeupOrderCount INT(8) DEFAULT NULL COMMENT '补录租约量(目前在住)',
  onlineSignCount INT(8) DEFAULT NULL COMMENT '在线签约量(目前在住)',
  mogobaoSignCount INT(8) DEFAULT NULL COMMENT '蘑菇宝签约量(目前在住，不包含买回)',
  makeupConfirmCount INT(8) DEFAULT NULL COMMENT '转客确认量(目前在住)',
  firstOnlinePayRentCount INT(8) DEFAULT NULL COMMENT '首次在线支付租金量(目前在住)',
  onlinePayRentCount INT(8) DEFAULT NULL COMMENT '在线支付租金总量(目前在住，不包含蘑菇宝常规款)',
  PRIMARY KEY (id),
  KEY landlordId (landlordId)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COMMENT='数据中心_房东_统计_全量_天';

/*数据中心_签约单_明细_统计_天*/
CREATE TABLE dc_order_info (
  signedOrderId INT(11) NOT NULL COMMENT '签约单id',
  landlordId INT(11) DEFAULT NULL COMMENT '房东id',
  renterId INT(11) DEFAULT NULL COMMENT '租客id',
  roomId INT(11) DEFAULT NULL COMMENT '房间id',
  subsId INT(11) DEFAULT NULL COMMENT '订购id',
  status INT(11) DEFAULT NULL COMMENT '签约单状态',
  isMogobao TINYINT(1) DEFAULT NULL COMMENT '是否为蘑菇宝',
  realRentPrice DECIMAL(8,2) DEFAULT NULL COMMENT '实际月租金',
  createTime DATETIME DEFAULT NULL COMMENT '签约单创建时间',
  isConfirm TINYINT(1) DEFAULT NULL COMMENT '是否已确认',
  confirmDate DATETIME DEFAULT NULL COMMENT '租约确认时间',
  turnStrtus INT(1) DEFAULT NULL COMMENT '转客状态(0非转客1转客2客人同意3客人不同意)',
  deposit DECIMAL(8,2) DEFAULT NULL COMMENT '押金',
  firstOnlinePayTime DATETIME DEFAULT NULL COMMENT '首次线上支付时间',
  allOnlinePayRentAmount DECIMAL(8,2) DEFAULT NULL COMMENT '在线支付租金(不包含蘑菇宝常规款)金额',
  PRIMARY KEY (signedOrderId)
  KEY landlordId (landlordId)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COMMENT='数据中心_签约单_明细_统计_天';

/*数据中心_房东_统计_增量_月*/
CREATE TABLE dc_land_stat_inc_month (
  id INT(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  recordMonth INT(6) DEFAULT NULL COMMENT '年月',
  landlordId INT(11) DEFAULT NULL COMMENT '房东id',
  receivableBillCount INT(6) DEFAULT NULL COMMENT '应收账单量(包含蘑菇宝账单)',
  receivedBillCount INT(6) DEFAULT NULL COMMENT '实收账单量(线上已付+线下确认)',
  firstMogobaoPayRentCount INT(6) DEFAULT NULL COMMENT '蘑菇宝签约首次在线支付租金量',
  firstOnlinePayRentCount INT(6) DEFAULT NULL COMMENT '线上签约首次在线支付租金量(不包含蘑菇宝签约)',
  firstMakeupPayRentCount INT(6) DEFAULT NULL COMMENT '转客首次在线支付租金量',
  onlinePayRentCount INT(6) DEFAULT NULL COMMENT '在线支付租金量(不包含蘑菇宝常规款)',
  offlinePayRentCount INT(6) DEFAULT NULL COMMENT '线下支付租金量(包含蘑菇宝常规款)',
  PRIMARY KEY (id),
  KEY landlordId (landlordId)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COMMENT='数据中心_房东_统计_增量_月\r\n该表数据当月每日都会重新计算截止当前的当月最新数据并覆盖原有每月最后一天数据为最终数据';