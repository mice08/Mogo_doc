/*
房屋信息
已经剔除房东测试数据
房屋总数：有效房屋+无效但以前有过租约的房屋
房东创建时间、房间创建、房屋创建时间截止在16年5月底
如果有效可租单元为0，表示之前改房屋有过租约，后来房屋被和房间改为了无效
*/
SELECT 
  flat_flats.`id` '房屋唯一识别码',
  DATE_FORMAT(
    flat_flats.`createTime`,
    '%Y-%m-%d'
  ) '房屋创建时间',
  user_landlord.`id` '房东唯一识别码',
  city.`name` '城市',
  city_district.`name` '区域',
  flat_community.`street` '街道',
  flat_community.`nong` '弄',
  flat_flats.`building` '栋座',
  flat_flats.`unit` '单元',
  flat_flats.roomnum '房间号',
  GROUP_CONCAT(
    DISTINCT city_business_area.`name`
  ) '商圈',
  GROUP_CONCAT(DISTINCT city_station.`name`) '地铁站',
  CASE
    flat_flats.`rentType` 
    WHEN 1 
    THEN '单身公寓' 
    WHEN 2 
    THEN '合租' 
    WHEN 3 
    THEN '整租' 
  END '出租类型',
  COUNT(
    DISTINCT 
    CASE
      WHEN flat_room.`status` = 1 
      THEN flat_room.`id` 
    END
  ) '有效可租单元' 
FROM
  user_landlord 
  LEFT JOIN flat_flats 
    ON user_landlord.id = flat_flats.`landlordId` 
    AND flat_flats.`createTime` < '2016-06-01 00:00:00' 
  LEFT JOIN flat_room 
    ON flat_room.flatsid = flat_flats.`id` 
    AND flat_room.`createTime` < '2016-06-01 00:00:00' 
  LEFT JOIN oder_signedorder 
    ON oder_signedorder.roomid = flat_room.`id` 
    AND oder_signedorder.`createTime` < '2016-06-01 00:00:00' 
    AND oder_signedorder.`status` NOT IN (0, 98, 99, 22) 
  LEFT JOIN flat_community 
    ON flat_community.id = flat_flats.`communityId` 
  LEFT JOIN city_district 
    ON city_district.id = flat_community.`districtId` 
  LEFT JOIN city_business_area 
    ON city_business_area.id = flat_community.`businessId` 
  LEFT JOIN city_community_station 
    ON city_community_station.`communityId` = flat_community.`id` 
  LEFT JOIN city_station 
    ON city_station.id = city_community_station.`stationId` 
  LEFT JOIN city 
    ON city.id = city_district.`cityId` 
  LEFT JOIN user_special 
    ON user_special.userid = user_landlord.`id` 
    AND user_special.usertype = 0 
    AND user_special.specialtype = 0 
WHERE (
    flat_flats.`status` = 1 
    OR oder_signedorder.id IS NOT NULL
  ) 
  AND user_landlord.`createTime` < '2016-06-01 00:00:00' 
  AND ISNULL(user_special.id) 
GROUP BY flat_flats.`id` 