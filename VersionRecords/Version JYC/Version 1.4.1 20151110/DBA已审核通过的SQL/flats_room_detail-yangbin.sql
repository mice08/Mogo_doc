DROP VIEW `flats_room_detail`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `flats_room_detail` AS select `fr`.`id` AS `roomId`,`fr`.`roomNum` AS `roomNum`,`fr`.`roomName` AS `roomName`,`fr`.`face` AS `roomFace`,`fr`.`area` AS 
`roomArea`,`fr`.`rentStatus` AS `rentStatus`,`fr`.`roomType` AS `roomType`,`ur`.`sex` AS `renterSex`,`fr`.`bookingPrice` AS `bookingPrice`,`fr`.`payType` AS `payType`,`fr`.`roomPrice` AS `roomPrice`,`fr`.`salePrice` AS 
`salePrice`,`fr`.`payType2` AS `payType2`,`fr`.`roomPrice2` AS `roomPrice2`,`fr`.`salePrice2` AS `salePrice2`,`ff`.`id` AS `flatsId`,`ff`.`flatsNum` AS `flatsNum`,`ff`.`building` AS `building`,`ff`.`roomNum` AS 
`flatsRoomNum`,`ff`.`floorNum` AS `floorNum`,`ff`.`floorCountNum` AS `floorCountNum`,`c`.`id` AS `cityId`,`c`.`name` AS `cityName`,`cd`.`id` AS `districtId`,`cd`.`name` AS `districtName`,`fc`.`id` AS 
`communityId`,`fc`.`street` AS `street`,`fc`.`nong` AS `nong`,`fc`.`name` AS `communityName`,`cba`.`name` AS `businessName`,`fcp`.`flatsTag` AS `flatsTag`,`fcp`.`mansionName` AS `mansionName`,`ff`.`bedroomCount` AS 
`bedroomCount`,`ff`.`parlorCount` AS `parlorCount`,`ff`.`kitchenCount` AS `kitchenCount`,`ff`.`toiletCount` AS `toiletCount`,`ff`.`isVerify` AS `flatVerifyStatus`,`ff`.`landlordId` AS `landlordId`,`fcp`.`id` AS 
`flatsTagId`,`ff`.`rentType` AS `rentType`,`ff`.`area` AS `flatsArea`,`fr`.`subTitle` AS `subTitle`,`fr`.`intro` AS `roomDesc`,`fr`.`status` AS `roomStatus`,`ff`.`status` AS `flatsStatus`,`ff`.`nickName` AS 
`flatsAlias`,`fr`.`isPutaway` AS `isPutaway`,`fr`.`signedOrderId` AS `signedOrderId`,`fr`.`renterId` AS `renterId`,`ff`.`unit` AS `unit` from ((((((`flat_room` `fr` left join `user_renter` `ur` on((`fr`.`renterId` = `ur`.`id`))) join `flat_flats` 
`ff`) join (`flat_community` `fc` left join `flat_community_property` `fcp` on((`fcp`.`communityId` = `fc`.`id`)))) join `city_business_area` `cba`) join `city_district` `cd`) join `city` `c`) where ((`fr`.`flatsId` = 
`ff`.`id`) and (`ff`.`communityId` = `fc`.`id`) and (`fc`.`businessId` = `cba`.`id`) and (`fc`.`districtId` = `cd`.`id`) and (`cd`.`cityId` = `c`.`id`));
