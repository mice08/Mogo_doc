/* 修改房间视图, 添加显示flat_room的orgClerk字段  */
use mogoroomdb;

CREATE OR REPLACE VIEW `repo_room_status` AS 
SELECT 
  `fr`.`id` AS `roomId`,
	`fr`.`orgId` AS `orgId`,
	`fc`.`name` AS `communityName`,
	`fcp`.`mansionName` AS `mansionName`,
	`fc`.`id` AS `communityId`,
	`ff`.`id` AS `flatsId`,
	`ff`.`building` AS `building`,
	`ff`.`roomNum` AS `flatsRoomNum`,
	`ff`.`flatsNum` AS `flatsNum`,
	`ff`.`rentType` AS `rentType`,
	`fr`.`roomNum` AS `roomNum`,
	`fr`.`roomName` AS `roomName`,
	`cs`.`rentPayType` AS `payType`,
	`cs`.`realRentPrice` AS `salePrice`,
	`fr`.`roomPrice` AS `roomPrice`,
	`fr`.`payType2` AS `payType2`,
	`fr`.`salePrice2` AS `salePrice2`,
	`fr`.`roomPrice2` AS `roomPrice2`,
	`fr`.`lockTime` AS `lockTime`,
	`fr`.`rentStatus` AS `rentStatus`,
	`ur`.`id` AS `rentId`,
	`ur`.`realName` AS `rentName`,
	`ur`.`cellphone` AS `rentPhone`,
	`cs`.`id` AS `saleContractId`,
	`cs`.`leaseTerm` AS `rentPeriod`,
	`cs`.`turnStrtus` AS `turnStrtus`,
	`ff`.`landlordId` AS `landlordId`,
	`ff`.`isVerify` AS `flatsVerify`,
	(
		CASE `ff`.`flatsTag`
		WHEN 1 THEN
			`ff`.`bedroomCount`
		ELSE
			`ffp`.`bedroomCount`
		END
	) AS `bedroomCount`,
	(
		CASE `ff`.`flatsTag`
		WHEN 1 THEN
			`ff`.`parlorCount`
		ELSE
			`ffp`.`parlorCount`
		END
	) AS `parlorCount`,
	(
		CASE `ff`.`flatsTag`
		WHEN 1 THEN
			`ff`.`toiletCount`
		ELSE
			`ffp`.`toiletCount`
		END
	) AS `toiletCount`,
	`ff`.`floorNum` AS `floorNum`,
	 fr.isPutaway AS isPutaway,
	 fr.putawayTime AS putawayTime,
	`os`.`id` AS `signedOrderId`,
	`os`.`status` AS `signedOrderStatus`,
	`ba`.`id` AS `saleBillId`,
	`fcp`.`id` AS `flatsTagId`,
	`ff`.`flatsTag` AS `flatsTag`,
	(
		CASE `ff`.`isVerify`
		WHEN 1 THEN
			`fr`.`rentStatus`
		WHEN 0 THEN
			`ff`.`isVerify`
		WHEN 2 THEN
			4
		END
	) AS `roomRentStatus`,
	`ba`.`dueDate` AS `dueDate`,
	`cs`.`beginDate` AS `beginDate`,
	`cs`.`endDate` AS `endDate`,
	`cs`.`sendFlag` AS `sendFlag`,
	`fr`.`status` AS `roomStatus`,
	`ff`.`status` AS `flatsStatus`,
	`fc`.`status` AS `communityStatus`,
	`fr`.`checkInTime` AS `checkInTime`,
	`ff`.`unit` AS `unit`,
	`fr`.`agencyFee` AS `agencyFee`,
	`fr`.`manageFee` AS `manageFee`,
	`ob`.`id` AS `bookOrderId`,
	`ob`.`signedEndTime` AS `signedEndTime`,
	`fr`.`remark` AS `roomRemark`,
	`fc`.`street` AS `street`,
	`fc`.`nong` AS `nong`,
	`ff`.`protoType` AS `flatsProtoTypeId`,
	`ffp`.`nickName` AS `nickName`,
	`frp`.`id` AS `roomProtoTypeId`,
	`c`.`id` AS `cityId`,
	`c`.`name` AS `cityName`,
	`cd`.`id` AS `districtId`,
	`cd`.`name` AS `districtName`,
	`ff`.`protoType` AS `flatProtoType`,
	`fr`.`protoType` AS `roomProtoType`,
	`fr`.`onlineStatus` AS `onlineStatus`,
	`fr`.`mogoOfflineEndTime` AS `mogoOfflineEndTime`,
	`fr`.`mogoOfflineMemo` AS `mogoOfflineMemo`,
	`fr`.`alias` AS `alias`,
	fr.orgClerk as orgClerk -- 新增房间管理人
FROM
	`flat_flats` `ff`
LEFT JOIN `flat_room` `fr` ON `ff`.`id` = `fr`.`flatsId`
LEFT JOIN `flat_flats_prototype` `ffp` ON `ffp`.`id` = `ff`.`protoType`
LEFT JOIN `flat_room_prototype` `frp` ON `frp`.`flatsId` = `ffp`.`id`
LEFT JOIN `oder_bookorder` `ob` ON `ob`.`roomId` = `fr`.`id` AND `ob`.`renterId` = `fr`.`renterId` AND `ob`.`status` IN (2, 3)
LEFT JOIN `user_renter` `ur` ON `ur`.`id` = `fr`.`renterId`
LEFT JOIN `oder_signedorder` `os` ON `os`.`id` = `fr`.`signedOrderId`
LEFT JOIN `cntr_salecontract` `cs` ON `cs`.`id` = `os`.`saleContractId`
LEFT JOIN `bill_salebill` `ba` ON `ba`.`signedOrderId` = `fr`.`signedOrderId` AND `ba`.`bill_type` = 1004 AND `ba`.`valid` = 1 AND `ba`.`payStatus` = 0
LEFT JOIN `flat_community` `fc` ON `fc`.`id` = `ff`.`communityId`
LEFT JOIN `flat_community_property` `fcp` ON `fcp`.`communityId` = `fc`.`id` AND `fcp`.`landlordId` = `ff`.`landlordId`
LEFT JOIN `city_district` `cd` ON `cd`.`id` = `fc`.`districtId`
LEFT JOIN `city_business_area` `cba` ON `cba`.`id` = `fc`.`businessId`
LEFT JOIN `city` `c` ON `c`.`id` = `cd`.`cityId`;

CREATE
OR REPLACE VIEW `flats_room_detail` AS SELECT
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
	`ff`.`flatsTag` AS `flatsTag`,
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
	 fr.isPutaway AS isPutaway,
	`fr`.`signedOrderId` AS `signedOrderId`,
	`fr`.`renterId` AS `renterId`,
	`ff`.`unit` AS `unit`,
	`ff`.`protoType` AS `flatProtoType`,
	`fr`.`protoType` AS `roomProtoType`,
	`fr`.`agencyFee` AS `agencyFee`,
	`fr`.`manageFee` AS `manageFee`,
	`fr`.`orgId` AS `orgId`,
	fr.orgClerk AS orgClerk -- 新增房间管理人
FROM
	`flat_flats` `ff`
LEFT JOIN `flat_room` `fr` ON `fr`.`flatsId` = `ff`.`id`
LEFT JOIN `user_renter` `ur` ON `fr`.`renterId` = `ur`.`id`
JOIN `flat_community` `fc` ON `ff`.`communityId` = `fc`.`id`
LEFT JOIN `flat_community_property` `fcp` ON `fcp`.`communityId` = `fc`.`id` AND `fcp`.`landlordId` = `ff`.`landlordId`
JOIN `city_business_area` `cba` ON `fc`.`businessId` = `cba`.`id`
JOIN `city_district` `cd` ON `fc`.`districtId` = `cd`.`id`
JOIN `city` `c` ON `cd`.`cityId` = `c`.`id`
