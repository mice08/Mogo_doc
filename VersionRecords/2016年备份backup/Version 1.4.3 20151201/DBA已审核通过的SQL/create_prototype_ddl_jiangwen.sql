/*  
  Database name `mogo_dev`;

  公寓房型表，房间房型表DDL。

  by jiangwen 2015-11-27
*/
use mogo_dev;

DROP TABLE IF EXISTS `flat_flats_protoType`;

CREATE TABLE `flat_flats_protoType` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '房型ID',
  `communityId` int(11) DEFAULT NULL COMMENT '所属小区',
  `districtId` int(11) DEFAULT NULL COMMENT '区域id',
  `buildingId` varchar(11) DEFAULT NULL COMMENT '栋座号id',
  `building` varchar(255) DEFAULT NULL COMMENT '楼栋号(8栋102号)',
  `flatType` varchar(11) DEFAULT NULL COMMENT '公寓类型',
  `floorNum` int(11) DEFAULT NULL COMMENT '楼层号',
  `floorCountNum` int(11) DEFAULT NULL COMMENT '总楼层数',
  `bedroomCount` int(11) DEFAULT 0 COMMENT '卧室数',
  `parlorCount` int(11) DEFAULT 0 COMMENT '客厅数',
  `kitchenCount` int(11) DEFAULT 0 COMMENT '厨房数',
  `balconyCount` int(11) DEFAULT 0 COMMENT '阳台数',
  `toiletCount` int(11) DEFAULT 0 COMMENT '厕所数',
  `isDuplex` tinyint(1) DEFAULT 0 COMMENT '复式0不是1是',
  `oldType` varchar(10) DEFAULT NULL COMMENT '原始房型',
  `area` double DEFAULT NULL COMMENT '面积',
  `landlordId` int(11) DEFAULT NULL COMMENT '职业房东Id',
  `ownersId` int(11) DEFAULT NULL COMMENT '业主',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `createby` int(11) DEFAULT NULL COMMENT '创建人',
  `createTime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `status` tinyint(1) DEFAULT 1 COMMENT '状态(0无效1有效)',
  `isVerify` int(11) DEFAULT 0 COMMENT '审核状态(0审核中1通过2未通过)',
  `hasSmartLock` tinyint(1) DEFAULT 0 COMMENT '智能门锁(0没有1有)',
  `rentType` tinyint(1) DEFAULT NULL COMMENT '出租类型(1自营2合租3整租)',
  `isRemoved` tinyint(1) DEFAULT 0 COMMENT '是否有效，逻辑删除字段',
  `elevatorCount` int(11) DEFAULT NULL COMMENT '电梯数',
  `Level` int(11) DEFAULT 0 COMMENT '预留字段房源等级',
  `saleManId` int(11) DEFAULT NULL COMMENT '拓展人',
  `roomTypePic` varchar(128) DEFAULT NULL COMMENT '存放公寓的房型图片地址',
  `updateBy` int(11) DEFAULT NULL COMMENT '更新人',
  `createChannel` int(1) DEFAULT NULL COMMENT '数据创建来源(1:租客APP,2:BS后台,3:官网,4:房东APP,5:房东PC)',
  `updateChannel` int(1) DEFAULT NULL COMMENT '数据更新来源(1:租客APP,2:BS后台,3:官网,4:房东APP,5:房东PC)',
  `nickName` varchar(50) DEFAULT NULL COMMENT '公寓别名',
  `unit` varchar(20) DEFAULT NULL COMMENT '单元',
  `flatsTag` int(11) NOT NULL DEFAULT 1 COMMENT '房源类型 1：分散式，2：集中式',
  PRIMARY KEY (`id`),
  KEY `IDX_FP_COMMUID` (`communityId`),
  KEY `IDX_FP_BUILDID` (`buildingId`),
  KEY `IDX_FP_STATUS` (`status`),
  KEY `IDX_FP_LANDLORDID` (`landlordId`),
  KEY `IDX_FP_FLATSTAG` (`flatsTag`)
) ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=UTF8 COMMENT='公寓房型';


DROP TABLE IF EXISTS `flat_room_protoType`;

CREATE TABLE `flat_room_protoType` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `flatsId` int(11) NOT NULL DEFAULT '0' COMMENT '公寓ID',
  `styleCode` varchar(16) DEFAULT NULL COMMENT '风格引用-字典表(style)',
  `communityId` int(11) NOT NULL DEFAULT '0' COMMENT '冗余字段：小区id',
  `districtId` int(11) NOT NULL DEFAULT '0' COMMENT '冗余字段：区域id',
  `renterId` int(11) DEFAULT NULL COMMENT '当前入住人id',
  `roomName` varchar(30) NOT NULL DEFAULT '' COMMENT '房间名称',
  `subTitle` varchar(50) NOT NULL DEFAULT '' COMMENT '房间副标题',
  `bookingPrice` double NOT NULL DEFAULT '0' COMMENT '预订金',
  `roomPrice` double NOT NULL DEFAULT '0' COMMENT '房屋价格',
  `salePrice` double(11,0) NOT NULL DEFAULT '0' COMMENT '销售价',
  `area` double NOT NULL DEFAULT '0' COMMENT '面积',
  `payType` varchar(255) NOT NULL DEFAULT '1' COMMENT '付款类型:付三押一(1),付一押一(2),付六押一(3),付十二押一(4);',
  `person` int(1) DEFAULT '0' COMMENT '人数',
  `face` varchar(10) NOT NULL DEFAULT '' COMMENT '朝向',
  `roomType` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1.房间，2.公共区域',
  `rentStatus` tinyint(4) NOT NULL DEFAULT '1' COMMENT '出租状态：1未出租,2已出租,3已预定,4未上线',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `intro` varchar(255) DEFAULT NULL COMMENT '介绍',
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `createTime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否有效（0无效1有效）',
  `claim` varchar(255) DEFAULT NULL COMMENT '住房要求',
  `smartLock` tinyint(1) NOT NULL DEFAULT '0' COMMENT '智能门锁',
  `createby` int(11) DEFAULT NULL COMMENT '创建人',
  `lockTime` timestamp NULL DEFAULT NULL COMMENT '房间锁定时间',
  `lockBy` int(11) DEFAULT '0' COMMENT '锁房间人的id',
  `payType2` varchar(128) DEFAULT '0' COMMENT '付款方式二。0:默认，不代表任何付款方式付款类型:付一押一(2),付一押一蘑菇宝(9)',
  `salePrice2` int(11) DEFAULT NULL COMMENT '付款方式二 销售价格',
  `picDescribe` varchar(500) DEFAULT NULL COMMENT '公寓图片描述',
  `roomPrice2` int(11) DEFAULT NULL COMMENT '付款方式二 房屋价格',
  `updateBy` int(11) DEFAULT NULL COMMENT '更新人',
  `createChannel` int(1) DEFAULT NULL COMMENT '数据创建来源(1:租客APP,2:BS后台,3:官网,4:房东APP,5:房东PC)',
  `updateChannel` int(1) DEFAULT NULL COMMENT '数据更新来源(1:租客APP,2:BS后台,3:官网,4:房东APP,5:房东PC)',
  `isPutaway` int(1) DEFAULT '0' COMMENT '是否上架(0:下架，1：上架)',
  `putawayTime` datetime DEFAULT '2015-10-01 00:00:00' COMMENT '上架时间',
  `checkInTime` datetime DEFAULT NULL COMMENT '可入住时间',
  `agencyFee` decimal(10,0) DEFAULT NULL COMMENT '中介费',
  `manageFee` decimal(10,0) DEFAULT NULL COMMENT '管理费',
  `roomScore` double NOT NULL DEFAULT '0' COMMENT '房源评分',
  PRIMARY KEY (`id`),
  KEY `IDX_RP_FLATS` (`flatsId`),
  KEY `IDX_RP_DISTRICT` (`districtId`),
  KEY `IDX_RP_RENTSTATUS` (`rentStatus`),
  KEY `IDX_RP_COMMUNITYID` (`communityId`),
  KEY `IDX_RP_RENTERID` (`renterId`)
) ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=UTF8 COMMENT='房间房型';