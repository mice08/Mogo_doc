/*
房东房源统计-16-6底
截止到2015-06-01统计
已剔除房东测试数据
房源统计--房源状态有效
*/
SELECT 
  user_landlord.`id` '房东唯一识别码',
  user_landlord.`signCount` '签约体量',
  COUNT(flat_room.`id`) '实际录入总量',
  COUNT(
    CASE
      WHEN flat_room.`rentStatus` = 2 
      THEN 1 
    END
  ) '在租房源数量' 
FROM
  user_landlord 
  LEFT JOIN flat_flats 
    ON flat_flats.`landlordId` = user_landlord.`id` 
    AND flat_flats.`status` = 1 
    AND flat_flats.`createTime` < '2016-06-01 00:00:00' 
  LEFT JOIN flat_room 
    ON flat_room.`flatsId` = flat_flats.`id` 
    AND flat_room.`status` = 1 
    AND flat_room.`createTime` < '2016-06-01 00:00:00' 
  LEFT JOIN user_special 
    ON user_special.userid = user_landlord.`id` 
    AND user_special.usertype = 0 
    AND user_special.specialtype = 0 
WHERE ISNULL(user_special.id) #AND user_landlord.`status` = 1 
  AND user_landlord.`createTime` < '2016-06-01 00:00:00' 
GROUP BY user_landlord.`id` 