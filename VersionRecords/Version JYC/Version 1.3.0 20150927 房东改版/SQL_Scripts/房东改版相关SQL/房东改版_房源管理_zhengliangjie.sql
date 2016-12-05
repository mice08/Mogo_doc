/*
房东PC，公寓类型关联表

Source Server         : 192.168.12.188
Source Server Version : 50625
Source Host           : 192.168.12.188:3306
Source Database       : mogodev

Target Server Type    : MYSQL
Target Server Version : 50625
File Encoding         : 65001

Date: 2015年9月11日 15:14:04
Author ：zhegnliangjie
*/


-- 公寓类型字典
INSERT INTO  `comm_dictionary` ( `code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`) VALUES ('flatsTag-1', 'flatsTag', '1', '1', '分散式公寓', '1', NULL);
INSERT INTO  `comm_dictionary` ( `code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`) VALUES ('flatsTag-2', 'flatsTag', '2', '2', '集中式公寓', '1', NULL);

-- 公寓类型记录表
-- CREATE TABLE `flat_flatsTag` (
--  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键值',
--  `landlordId` int(11) NOT NULL COMMENT '房东Id',
--  `mansionName` varchar(255) NOT NULL COMMENT '公寓楼栋名称',
--  `flatsTag` int(1) NOT NULL DEFAULT '2' COMMENT '公寓类别(2集中式，1分散式，见字典)',
--  `floorCount` int(3) DEFAULT '0' COMMENT '大楼层数',
--  `isLift` int(1) DEFAULT '1' COMMENT '是否有电梯(0：无，1：有)',
--  `createBy` int(11)  COMMENT '创建人Id',
--  `createTime` datetime  COMMENT '创建时间',
--  `createByType` INT(11) NOT NULL COMMENT '创建用户类型,见字典表groupName=userType。0:房东;4租客',
--  `updateBy` int(11)  COMMENT '更新人',
--  `updateTime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
--  `updateByType` INT(11) NOT NULL COMMENT '更新用户类型,见字典表groupName=userType。0:房东;4租客',
--  `remark` varchar(255)  COMMENT '备注',
--  `status` int(1) DEFAULT '1' COMMENT '状态',
--  PRIMARY KEY (`id`)
-- ) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;

-- 公寓类型关联表
--CREATE TABLE `flat_flatsTag_relation` (
--  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键值',
--  `roomId` int(11) NOT NULL COMMENT '房间Id',
--  `flatsTagId` int(11) NOT NULL COMMENT '标签Id',
--  `flatsAlias` int(1) DEFAULT '2' COMMENT '房间类型（1:豪华型,2:标准型）',
--  `createBy` int(11)  COMMENT '创建人Id',
--  `createTime` datetime  COMMENT '创建时间',
--  `createByType` INT(11) NOT NULL COMMENT '创建用户类型,见字典表groupName=userType。0:房东;4租客',
--  `updateBy` int(11)  COMMENT '更新人',
--  `updateTime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
--  `updateByType` INT(11) NOT NULL COMMENT '更新用户类型,见字典表groupName=userType。0:房东;4租客',
--  `remark` varchar(255)  COMMENT '备注',
--  `status` int(1) DEFAULT '1' COMMENT '状态',
--  PRIMARY KEY (`id`)
--) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;

-- 集中公寓属性表
CREATE TABLE `flat_community_property` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键值',
  `landlordId` int(11) NOT NULL COMMENT '房东Id',
  `communityId` int(11) NOT NULL COMMENT '小区Id（集中式公寓）',
  `mansionName` varchar(255) NOT NULL COMMENT '公寓楼栋名称',
  `floorCount` int(3) DEFAULT '0' COMMENT '大楼层数',
  `isLift` int(1) DEFAULT '1' COMMENT '是否有电梯(0：无，1：有)',
  `flatsTag` int(1) NOT NULL DEFAULT '2' COMMENT '公寓类别(2集中式，1分散式，见字典)',
  `createBy` int(11)  COMMENT '创建人Id',
  `createTime` datetime  COMMENT '创建时间',
  `createByType` INT(11) NOT NULL COMMENT '创建用户类型,见字典表groupName=userType。0:房东;4租客',
  `updateBy` int(11)  COMMENT '更新人',
  `updateTime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `updateByType` INT(11) NOT NULL COMMENT '更新用户类型,见字典表groupName=userType。0:房东;4租客',
  `remark` varchar(255)  COMMENT '备注',
  `status` int(1) DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;


/*
公寓房间详情视图
Source Server         : 192.168.12.188
Source Server Version : 50625
Source Host           : 192.168.12.188:3306
Source Database       : mogodev

Target Server Type    : MYSQL
Target Server Version : 50625
File Encoding         : 65001

Date: 2015年9月11日 13:56:04
Author ：zhegnliangjie
*/
DROP TABLE IF EXISTS flats_room_detail;
CREATE OR REPLACE VIEW `flats_room_detail` AS SELECT
	`fr`.`id` AS `roomId`,
	`fr`.`roomNum` AS `roomNum`,
	`fr`.`roomName` AS `roomName`,
	`fr`.`face` AS `roomFace`,
	`fr`.`area` AS `roomArea`,
	`fr`.`rentStatus` AS `rentStatus`,
	`fr`.`roomType` AS `roomType`,
	`ur`.`sex` AS `renterSex`,
	`fr`.`bookingPrice` AS `bookingPrice`,
	`fr`.`payType` AS `payType`,
	`fr`.`roomPrice` AS `roomPrice`,
	`fr`.`salePrice` AS `salePrice`,
	`fr`.`payType2` AS `payType2`,
	`fr`.`roomPrice2` AS `roomPrice2`,
	`fr`.`salePrice2` AS `salePrice2`,
	`ff`.`id` AS `flatsId`,
	`ff`.`flatsNum` AS `flatsNum`,
	`ff`.`building` AS `building`,
	`ff`.`roomNum` AS `flatsRoomNum`,
	`ff`.`floorNum` AS `floorNum`,
	`ff`.`floorCountNum` AS `floorCountNum`,
	`c`.`id` AS `cityId`,
	`c`.`name` AS `cityName`,
	`cd`.`id` AS `districtId`,
	`cd`.`name` AS `districtName`,
	`fc`.`id` AS `communityId`,
	`fc`.`street` AS `street`,
	`fc`.`nong` AS `nong`,
	`fc`.`name` AS `communityName`,
	`cba`.`name` AS `businessName`,
	`fcp`.`flatsTag` AS `flatsTag`,
	`fcp`.`mansionName` AS `mansionName`,
	`ff`.`bedroomCount` AS `bedroomCount`,
	`ff`.`parlorCount` AS `parlorCount`,
	`ff`.`kitchenCount` AS `kitchenCount`,
	`ff`.`toiletCount` AS `toiletCount`,
	`ff`.`isVerify` AS `flatVerifyStatus`,
	`ff`.`landlordId` AS `landlordId`,
	`fcp`.`id` AS `flatsTagId`,
	`ff`.`rentType` AS `rentType`,
	`ff`.`area` AS `flatsArea`,
	`fr`.`subTitle` AS `subTitle`,
	`fr`.`intro` AS `roomDesc`,
	`fr`.`status` AS `roomStatus`,
	`ff`.`status` AS `flatsStatus`,
	`ff`.`nickName` AS `flatsAlias`,
	`fr`.`isPutaway` AS `isPutaway`,
	`fr`.`signedOrderId` AS `signedOrderId`,
	`fr`.`renterId` AS `renterId`
FROM
	(
		(
			(
				(
					(
						(
							`flat_room` `fr`
							LEFT JOIN `user_renter` `ur` ON (
								(`fr`.`renterId` = `ur`.`id`)
							)
						)
						JOIN `flat_flats` `ff`
					)
					JOIN (
						`flat_community` `fc`
						LEFT JOIN `flat_community_property` `fcp` ON (
							(
								`fcp`.`communityId` = `fc`.`id`
							)
						)
					)
				)
				JOIN `city_business_area` `cba`
			)
			JOIN `city_district` `cd`
		)
		JOIN `city` `c`
	)
WHERE
	(
		(`fr`.`flatsId` = `ff`.`id`)
		AND (
			`ff`.`communityId` = `fc`.`id`
		)
		AND (
			`fc`.`businessId` = `cba`.`id`
		)
		AND (
			`fc`.`districtId` = `cd`.`id`
		)
		AND (`cd`.`cityId` = `c`.`id`)
	)
;



-- room添加两个字段
ALTER TABLE `flat_room`
ADD COLUMN `isPutaway` int(1) DEFAULT 1 COMMENT '是否上架(0:下架，1：上架),老数据默认上架' AFTER `roomPrice2`,
ADD COLUMN `putawayTime` datetime NULL  COMMENT '上架时间' AFTER `isPutaway`;

-- flat_room 中加入可入住时间字段
ALTER TABLE flat_room ADD checkInTime DATETIME COMMENT '可入住时间';

-- 初始化上架时间
update flat_room  set putawayTime =createTime;

-- flat添加公寓别名
ALTER TABLE `flat_flats`
ADD COLUMN `nickName` varchar(50) COMMENT '公寓别名' AFTER `updateChannel`;

-- 2015-10-6 赵良智
-- 添加小区和房源的关系，添加createByType

#community添加列createByType(创建人类型，emp,landlord)
ALTER TABLE `flat_community` ADD COLUMN `createByType` INT(2) COMMENT '创建用户类型,见字典表groupName=userType。0:房东;4租客;5:员工' AFTER `status`;

#添加字典表记录
INSERT INTO comm_dictionary(CODE,groupName,sort,keyPro,VALUE,STATUS)VALUES('userType-5','userType',5,5,'员工',1)

#创建relation表，房东与小区的关联表
CREATE TABLE `landlord_community_relation` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `landlordId` INT(11) NOT NULL COMMENT '房东ID',
  `communityId` INT(11) NOT NULL COMMENT '小区ID',
  `createTime` DATETIME NOT NULL COMMENT '创建时间',
  `createBy` INT(11) NOT NULL COMMENT '创建人',
  `createByType` INT(2) NOT NULL COMMENT '创建用户类型,见字典表groupName=userType。',
  `status` INT(1) NOT NULL DEFAULT '1' COMMENT '状态0无效,1有效',
  PRIMARY KEY (`id`)
) comment='房东和小区的关系表' ENGINE=INNODB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;

#把垃圾数据标记为无效 （部分房源信息有误，房东id为NULL或者为小区id为NULL）
UPDATE flat_flats SET STATUS=0 WHERE ISNULL(communityId) OR landlordid=0 OR ISNULL(landlordid);

#添加relation表记录(初始化)
INSERT INTO landlord_community_relation(landlordId,communityId,createTime,createBy,createByType)
SELECT landlordId,communityId,NOW(),703,5 FROM flat_flats 
WHERE flat_flats.status=1 AND landlordId IS NOT NULL AND communityId IS NOT NULL AND landlordId != 0 
GROUP BY flat_flats.`communityId`,flat_flats.`landlordId`;

-- 2015-10-10 赵良智
-- 房态图查询视图
CREATE OR REPLACE
VIEW `repo_room_status` AS 
select 
fr.id as roomId,
fc.`name` as communityName,
fcp.mansionName as mansionName,
fc.id as communityId,
ff.id as flatsId,
ff.building as building,
ff.roomNum as flatsRoomNum,
ff.flatsNum as flatsNum,
ff.rentType as rentType,
fr.roomNum as roomNum,
fr.roomName as roomName,
fr.payType as payType,
fr.salePrice as salePrice,
fr.roomPrice as roomPrice,
fr.payType2 as payType2,
fr.salePrice2 as salePrice2,
fr.roomPrice2 as roomPrice2,
fr.lockTime as lockTime ,
fr.rentStatus  as rentStatus,
ur.id as rentId,
ur.realName as rentName,
ur.cellphone as rentPhone,
cs.id  as saleContractId,
cs.leaseTerm as rentPeriod,
cs.turnStrtus as turnStrtus,
ff.landlordId as landlordId,
ff.nickName as nickName,
ff.isVerify as flatsVerify,
ff.bedroomCount as bedroomCount,
ff.parlorCount as parlorCount,
ff.floorNum as floorNum,
fr.isPutaway as isPutaway,
fr.putawayTime as putawayTime,
os.id as signedOrderId,
ba.id as saleBillId,
fcp.id as flatsTagId,
case fcp.flatsTag when  2 then 2 ELSE 1 end as flatsTag,
CASE ff.isVerify WHEN 1  THEN  fr.rentStatus 
                 WHEN 0  then 4
                 WHEN 2   THEN 4 end as roomRentStatus,
ba.dueDate as dueDate,
cs.endDate as endDate,
fr.`status` as roomStatus,
ff.`status` as flatsStatus,
fc.`status` as communityStatus,
fr.checkInTime as checkInTime

from flat_room fr 
left join user_renter ur on ur.id  = fr.renterId
left join oder_signedOrder os on os.id = fr.signedOrderId
left join cntr_saleContract cs on cs.id = os.saleContractId 	
left join bill_saleBill ba  on ba.signedOrderId = fr.signedOrderId  and (ba.billType =1011 and ba.valid = 1 and ba.payStatus = 0)

 join flat_flats ff on ff.id = fr.flatsId 
 join flat_community fc on fc.id= ff.communityId
 left join flat_community_property fcp on fcp.communityId = fc.id AND fcp.landlordId = ff.landlordId
 join city_district cd on cd.id = fc.districtId
 join city_business_area cba on cba.id = fc.businessId
 join city c on c.id = cd.cityId ;
 
 
 -- 2015年10月11日 郑良杰
 -- 创建关联表索引
ALTER TABLE `flat_community_property`
ADD INDEX `fcp_landlordId` (`landlordId`) USING BTREE ,
ADD INDEX `fcp_communityId` (`communityId`) USING BTREE ;

ALTER TABLE `bill_saleBill`
ADD INDEX `bs_signedOrderId` (`signedOrderId`) USING BTREE ;

ALTER TABLE `flat_room`
ADD INDEX `fr_signedOrderId` (`signedOrderId`) USING BTREE ;

ALTER TABLE `oder_signedOrder`
ADD INDEX `os_saleContractId` (`saleContractId`) USING BTREE ;

ALTER TABLE `flat_community`
ADD INDEX `fc_businessId` (`businessId`) USING BTREE ;
 


 
 
 
 
 
 
 