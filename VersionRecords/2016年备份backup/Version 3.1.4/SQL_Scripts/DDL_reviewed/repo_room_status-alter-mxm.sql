use mogoroomdb;
drop view `repo_room_status`;
CREATE VIEW `repo_room_status`
 AS 
select
  `fr`.`id` AS `roomId`
  , `fc`.`name` AS `communityName`
  , `fcp`.`mansionName` AS `mansionName`
  , `fc`.`id` AS `communityId`
  , `ff`.`id` AS `flatsId`
  , `ff`.`building` AS `building`
  , `ff`.`roomNum` AS `flatsRoomNum`
  , `ff`.`flatsNum` AS `flatsNum`
  , `ff`.`rentType` AS `rentType`
  , `fr`.`roomNum` AS `roomNum`
  , `fr`.`roomName` AS `roomName`
  , `cs`.`rentPayType` AS `payType`
  , `cs`.`realRentPrice` AS `salePrice`
  , `fr`.`roomPrice` AS `roomPrice`
  , `fr`.`payType2` AS `payType2`
  , `fr`.`salePrice2` AS `salePrice2`
  , `fr`.`roomPrice2` AS `roomPrice2`
  , `fr`.`lockTime` AS `lockTime`
  , `fr`.`rentStatus` AS `rentStatus`
  , `ur`.`id` AS `rentId`
  , `ur`.`realName` AS `rentName`
  , `ur`.`cellphone` AS `rentPhone`
  , `cs`.`id` AS `saleContractId`
  , `cs`.`leaseTerm` AS `rentPeriod`
  , `cs`.`turnStrtus` AS `turnStrtus`
  , `ff`.`landlordId` AS `landlordId`
  , `ff`.`isVerify` AS `flatsVerify`
  , ( 
    case `ff`.`flatsTag` 
      when 1 then `ff`.`bedroomCount` 
      else `ffp`.`bedroomCount` 
      end
  ) AS `bedroomCount`
  , ( 
    case `ff`.`flatsTag` 
      when 1 then `ff`.`parlorCount` 
      else `ffp`.`parlorCount` 
      end
  ) AS `parlorCount`
  , ( 
    case `ff`.`flatsTag` 
      when 1 then `ff`.`toiletCount` 
      else `ffp`.`toiletCount` 
      end
  ) AS `toiletCount`
  , `ff`.`floorNum` AS `floorNum`
  , `fr`.`isPutaway` AS `isPutaway`
  , `fr`.`putawayTime` AS `putawayTime`
  , `os`.`id` AS `signedOrderId`
  , `os`.`status` AS `signedOrderStatus`
  , `ba`.`id` AS `saleBillId`
  , `fcp`.`id` AS `flatsTagId`
  , `ff`.`flatsTag` AS `flatsTag`
  , ( 
    case `ff`.`isVerify` 
      when 1 then `fr`.`rentStatus` 
      when 0 then `ff`.`isVerify` 
      when 2 then 4 
      end
  ) AS `roomRentStatus`
  , `ba`.`dueDate` AS `dueDate`
  , `cs`.`beginDate` AS `beginDate`
  , `cs`.`endDate` AS `endDate`
  , `cs`.`sendFlag` AS `sendFlag`
  , `fr`.`status` AS `roomStatus`
  , `ff`.`status` AS `flatsStatus`
  , `fc`.`status` AS `communityStatus`
  , `fr`.`checkInTime` AS `checkInTime`
  , `ff`.`unit` AS `unit`
  , `fr`.`agencyFee` AS `agencyFee`
  , `fr`.`manageFee` AS `manageFee`
  , `ob`.`id` AS `bookOrderId`
  , `ob`.`signedEndTime` AS `signedEndTime`
  , `fr`.`remark` AS `roomRemark`
  , `fc`.`street` AS `street`
  , `fc`.`nong` AS `nong`
  , `ff`.`protoType` AS `flatsProtoTypeId`
  , `ffp`.`nickName` AS `nickName`
  , `frp`.`id` AS `roomProtoTypeId`
  , `c`.`id` AS `cityId`
  , `c`.`name` AS `cityName`
  , `cd`.`id` AS `districtId`
  , `cd`.`name` AS `districtName`
  , `ff`.`protoType` AS `flatProtoType`
  , `fr`.`protoType` AS `roomProtoType` 
  , fr.onlineStatus
  , fr.mogoOfflineEndTime
  , fr.mogoOfflineMemo
from
  ( 
    ( 
      ( 
        ( 
          ( 
            ( 
              ( 
                ( 
                  ( 
                    ( 
                      ( 
                        ( 
                          ( 
                            `flat_flats` `ff` 
                              left join `flat_room` `fr` 
                                on ((`ff`.`id` = `fr`.`flatsId`))
                          ) 
                            left join `flat_flats_prototype` `ffp` 
                              on ((`ffp`.`id` = `ff`.`protoType`))
                        ) 
                          left join `flat_room_prototype` `frp` 
                            on ((`frp`.`flatsId` = `ffp`.`id`))
                      ) 
                        left join `oder_bookorder` `ob` 
                          on ( 
                            ( 
                              (`ob`.`roomId` = `fr`.`id`) 
                              and (`ob`.`renterId` = `fr`.`renterId`) 
                              and (`ob`.`status` in (2, 3))
                            )
                          )
                    ) 
                      left join `user_renter` `ur` 
                        on ((`ur`.`id` = `fr`.`renterId`))
                  ) 
                    left join `oder_signedorder` `os` 
                      on ((`os`.`id` = `fr`.`signedOrderId`))
                ) 
                  left join `cntr_salecontract` `cs` 
                    on ((`cs`.`id` = `os`.`saleContractId`))
              ) 
                left join `bill_salebill` `ba` 
                  on ( 
                    ( 
                      (`ba`.`signedOrderId` = `fr`.`signedOrderId`) 
                      and (`ba`.`bill_type` = 1004) 
                      and (`ba`.`valid` = 1) 
                      and (`ba`.`payStatus` = 0)
                    )
                  )
            ) 
              left join `flat_community` `fc` 
                on ((`fc`.`id` = `ff`.`communityId`))
          ) 
            left join `flat_community_property` `fcp` 
              on ( 
                ( 
                  (`fcp`.`communityId` = `fc`.`id`) 
                  and (`fcp`.`landlordId` = `ff`.`landlordId`)
                )
              )
        ) 
          left join `city_district` `cd` 
            on ((`cd`.`id` = `fc`.`districtId`))
      ) 
        left join `city_business_area` `cba` 
          on ((`cba`.`id` = `fc`.`businessId`))
    ) 
      left join `city` `c` 
        on ((`c`.`id` = `cd`.`cityId`))
  ) ;

