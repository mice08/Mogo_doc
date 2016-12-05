/*
房间信息
上架/下架表示是否可在官网显示（排除出租状态）
首次出租时间：房间第一个签约单的签约时间，如果是转客，则为签约单创建时间
首次出租时间为空且房间状态为已租的情况:签约单信息在旧系统
签约单创建时间、房东创建时间、房屋创建时间、房间创建时间截止到16年5月底
*/
SELECT 
  flat_room.`id` '房间唯一识别码',
  flat_flats.`id` '房屋唯一识别码',
  flat_room.`area` '房间面积',
  DATE_FORMAT(
    flat_room.`createTime`,
    '%Y-%m-%d'
  ) '房间创建日期',
  CASE
    flat_room.`rentStatus` 
    WHEN 1 
    THEN '未租' 
    WHEN 2 
    THEN '已租' 
    WHEN 3 
    THEN '预定' 
    WHEN 4 
    THEN '未上线' 
  END '房间状态',
  CASE
    flat_room.status 
    WHEN 1 
    THEN '有效' 
    WHEN 0 
    THEN '无效' 
  END '房间是否有效',
  CASE
    WHEN (
      ISNULL(mogoOfflineEndTime) 
      OR mogoOfflineEndTime < NOW()
    ) 
    AND onlineStatus != 2 
    AND verifyStatus != 3 
    THEN '上架' 
    WHEN (
      (
        mogoOfflineEndTime IS NOT NULL 
        AND mogoOfflineEndTime >= NOW()
      ) 
      OR onlineStatus = 2 
      OR verifyStatus = 3
    ) 
    THEN '下架' 
  END '是否上架',
  flat_room.`showPrice` '房间月租金',
  DATE_FORMAT(
    MIN(
      CASE
        WHEN cntr_salecontract.`signingDate` IS NOT NULL 
        THEN cntr_salecontract.`signingDate` 
        ELSE oder_signedorder.`createTime` 
      END
    ),
    '%Y-%m-%d'
  ) '首次出租时间' 
FROM
  flat_room 
  LEFT JOIN flat_flats 
    ON flat_flats.id = flat_room.`flatsId` 
  LEFT JOIN user_landlord 
    ON user_landlord.id = flat_flats.`landlordId` 
  LEFT JOIN oder_signedorder 
    ON oder_signedorder.`roomId` = flat_room.`id` 
    AND oder_signedorder.`createTime` < '2016-06-01 00:00:00' 
    AND oder_signedorder.`status` NOT IN (0, 98, 99, 22) 
  LEFT JOIN cntr_salecontract 
    ON cntr_salecontract.id = oder_signedorder.`saleContractId` 
  LEFT JOIN user_special 
    ON user_special.userid = user_landlord.`id` 
    AND user_special.usertype = 0 
    AND user_special.specialtype = 0 
WHERE ISNULL(user_special.id) 
  AND user_landlord.`createTime` < '2016-06-01 00:00:00' 
  AND flat_room.`createTime` < '2016-06-01 00:00:00' 
  AND flat_flats.`createTime` < '2016-06-01 00:00:00' 
  AND (
    flat_room.`status` = 1 
    OR oder_signedorder.`id` IS NOT NULL
  ) 
GROUP BY flat_room.`id` 