/*
房东子账号登录信息
已剔除测试数据
子账号登录次数统计只有16年
*/
SELECT 
  user_info.`id` '子账号唯一识别码',
  CASE
    user_info.`status` 
    WHEN 1 
    THEN '有效' 
    WHEN 0 
    THEN '无效' 
  END '子账号是否有效',
  user_landlord.`id` '房东唯一识别码',
  DATE_FORMAT(
    user_info.`create_time`,
    '%Y-%m-%d'
  ) '子账号注册时间',
  MIN(
    DATE_FORMAT(
      user_loginlog.`accessTime`,
      '%Y-%m-%d'
    )
  ) '子账号首次登录日期',
  MAX(
    DATE_FORMAT(
      user_loginlog.`accessTime`,
      '%Y-%m-%d'
    )
  ) '子账号最后一次登录日期',
  COUNT(
    CASE
      WHEN ISNULL(user_loginlog.`terminalid`) 
      THEN 1 
    END
  ) '子账号浏览器总登录次数',
  COUNT(
    CASE
      WHEN user_loginlog.`terminalid` IS NOT NULL 
      THEN 1 
    END
  ) '子账号APP总登录次数' 
FROM
  user_landlord 
  LEFT JOIN user_landlord_childacc_rel 
    ON user_landlord_childacc_rel.`landlordId` = user_landlord.id 
  LEFT JOIN user_info 
    ON user_info.id = user_landlord_childacc_rel.`userId` 
  LEFT JOIN user_special 
    ON user_special.userid = user_landlord.`id` 
    AND user_special.usertype = 0 
    AND user_special.specialtype = 0 
  LEFT JOIN user_loginlog 
    ON user_loginlog.userid = user_info.`id` 
WHERE user_landlord_childacc_rel.`status` = 1 
  AND ISNULL(user_special.id) #AND user_landlord.`status` = 1 
  AND user_landlord.`createTime` < '2016-06-01 00:00:00' 
  AND user_landlord_childacc_rel.`createTime` < '2016-06-01 00:00:00' 
  AND user_info.`create_time` < '2016-06-01 00:00:00' 
  AND user_loginlog.`accessTime` < '2016-06-01 00:00:00' #AND user_info.`status` = 1 
GROUP BY user_landlord_childacc_rel.userid 