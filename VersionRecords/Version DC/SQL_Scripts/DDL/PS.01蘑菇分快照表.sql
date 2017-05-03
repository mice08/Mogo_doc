/*  Database name `mogoroomdb`  增加计算蘑菇分的各个字段记录表*/
use mogoroomdb;
/*
1、预估表容量:所有房东数量/每天
2、每次读取量:房东数量
3、主要查询
select `id`, `landlordId`, `recordDate`, `totalActivity`, `rentRoomCount`, `roomCount`, `onlinePaySignOderCount`, `makeupNotComfirmSignOderCount`, `makeupHasComfirmSignOderCount`, `saleCount`, `onlinePayCount`, `linePayCount`, `mogoOnlinePayCount`, `selfOnlinePayCount`, `selfLinePayCount`, `callCount`, `answerRate`, `freeDeposit`, `hasPicRoomCount`
 from repo_mogoscore_detail
where landlordId=123 and recordDate='2017-04-10';
*/
CREATE TABLE `repo_mogoscore_detail` (
  `id` int(11) NOT NULL COMMENT '主键ID',
  `landlordId` int(11) DEFAULT NULL COMMENT '房东ID',
  `recordDate` date DEFAULT NULL COMMENT '记录日期',
  `totalActivity` int(2) DEFAULT NULL COMMENT '30天内的活跃天数',
  `rentRoomCount` int(8) DEFAULT NULL COMMENT '已租房间数',
  `roomCount` int(8) DEFAULT NULL COMMENT '房源总量',
  `onlinePaySignOderCount` int(8) DEFAULT NULL COMMENT '在线签约量',
  `makeupNotComfirmSignOderCount` int(8) DEFAULT NULL COMMENT '补录租约未确认量',
  `makeupHasComfirmSignOderCount` int(8) DEFAULT NULL COMMENT '补录租约已确认',
  `saleCount` int(8) DEFAULT NULL COMMENT '30天账单总量',
  `onlinePayCount` int(8) DEFAULT NULL COMMENT '30天在线支付账单量',
  `linePayCount` int(8) DEFAULT NULL COMMENT '30天线下支付账单量',
  `mogoOnlinePayCount` int(8) DEFAULT NULL COMMENT '30天蘑菇宝账单量',
  `selfOnlinePayCount` int(8) DEFAULT NULL COMMENT '自定义账单线上支付',
  `selfLinePayCount` int(8) DEFAULT NULL COMMENT '自定义账单线下支付',
  `callCount` int(8) DEFAULT NULL COMMENT '来电量',
  `answerRate` decimal(10,2) DEFAULT NULL COMMENT '接听率',
  `freeDeposit` int(1) DEFAULT NULL COMMENT '是否参加免押金',
  `hasPicRoomCount` int(8) DEFAULT NULL COMMENT '有图房源数量',
  PRIMARY KEY (`id`),
  KEY `INX_LANDLORDID`` (`landlordId`),
  KEY `INX_RECORDDATE` (`recordDate`),
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='计算蘑菇分的各个字段记录表';
