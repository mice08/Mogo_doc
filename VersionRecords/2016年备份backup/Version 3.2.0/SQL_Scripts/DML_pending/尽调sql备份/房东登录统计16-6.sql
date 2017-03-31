/*
房东登录统计
截止到2016-06-01统计
已剔除房东测试数据
登录天数：当天登录次数大于等于1时登录天数+1
*/
SELECT 
  user_landlord.`id` '房东唯一识别码',
  COUNT(user_loginlog.`id`) '房东总登录次数',
  COUNT(
    DISTINCT DATE_FORMAT(
      user_loginlog.`accessTime`,
      '%Y-%m-%d'
    )
  ) '登录天数',
  MAX(
    DATE_FORMAT(
      user_loginlog.`accessTime`,
      '%Y-%m-%d'
    )
  ) '最后一次登录日期',
  DATE_FORMAT(
    user_landlord.`createTime`,
    '%Y-%m-%d'
  ) '主账号注册日期',
  MIN(
    DATE_FORMAT(
      user_loginlog.`accessTime`,
      '%Y-%m-%d'
    )
  ) '主账号首次登录日期',
  COUNT(
    CASE
      WHEN user_loginlog.`url` LIKE '%partnerpc/%' 
      THEN 1 
    END
  ) '浏览器总登录次数',
  COUNT(
    CASE
      WHEN user_loginlog.`url` LIKE '%partner/%' 
      THEN 1 
    END
  ) 'APP总登录次数' 
FROM
  user_landlord 
  LEFT JOIN user_loginlog 
    ON user_loginlog.userid = user_landlord.id 
    AND user_loginlog.`accessTime` < '2016-06-01 00:00:00' 
  LEFT JOIN user_special 
    ON user_special.userid = user_landlord.`id` 
    AND user_special.usertype = 0 
    AND user_special.specialtype = 0 
WHERE ISNULL(user_special.id)
  AND user_landlord.`createTime` < '2016-06-01 00:00:00' 
GROUP BY user_landlord.`id` 