/*  Database name `mogoroomdb` £¨–ﬁ∏ƒ ”Õº*/
use mogoroomdb;

DROP VIEW `repo_convertrent_info`;

CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `repo_convertrent_info` AS SELECT
    `os`.`id` AS `signedOrderId`,
    `ffr`.`flatsTag` AS `flatsTag`,
    `fr`.`id` AS `roomId`,
    `fr`.`roomName` AS `roomName`,
    `ff`.`id` AS `flatsId`,
    `ff`.`roomNum` AS `roomNum`,
    `ff`.`building` AS `building`,
    `ff`.`flatType` AS `flatType`,
    `ff`.`flatsNum` AS `flatsNum`,
    `c`.`id` AS `cityId`,
    `cd`.`id` AS `districtId`,
    `fc`.`id` AS `communityId`,
    `fc`.`name` AS `communityName`,
    `cd`.`name` AS `districtName`,
    `c`.`name` AS `cityName`,
    `cst`.`turnStrtus` AS `saleContractTurnStrtus`,
    `cst`.`id` AS `saleContractId`,
    `cst`.`createTime` AS `saleContractCreateTime`,
    `os`.`status` AS `signedOrderStatus`,
    `ff`.`landlordId` AS `landlordId`,
    `ur`.`id` AS `renterId`,
    `ur`.`realName` AS `realName`,
    `ur`.`cellphone` AS `cellphone`,
    `ff`.`unit` AS `unit`,
    `fr`.`roomNum` AS `roomCode`,
    `ff`.`status` AS `flatStatus`,
    `fr`.`status` AS `roomStatus`,
    `fr`.`rentStatus` AS `rentStatus`,
    `fc`.`status` AS `communityStatus`,
    `ffr`.`status` AS `propertyStatus`
FROM
    (
        (
            (
                (
                    (
                        (
                            (
                                (
                                    `flat_room` `fr`
                                    JOIN `flat_flats` `ff` ON ((`ff`.`id` = `fr`.`flatsId`))
                                )
                                JOIN `flat_community` `fc` ON (
                                    (
                                        `fc`.`id` = `ff`.`communityId`
                                    )
                                )
                            )
                            JOIN `city_district` `cd` ON (
                                (
                                    `cd`.`id` = `fc`.`districtId`
                                )
                            )
                        )
                        JOIN `city` `c` ON ((`c`.`id` = `cd`.`cityId`))
                    )
                    LEFT JOIN `oder_signedorder` `os` ON ((`fr`.`id` = `os`.`roomId`))
                )
                LEFT JOIN `user_renter` `ur` ON (
                    (`os`.`renterId` = `ur`.`id`)
                )
            )
            LEFT JOIN `cntr_salecontract` `cst` ON (
                (
                    `os`.`saleContractId` = `cst`.`id`
                )
            )
        )
        LEFT JOIN `flat_community_property` `ffr` ON (
            (
                `ffr`.`communityId` = `fc`.`id`
            )
        )
    );

