/*
房东信息
已剔除房东测试数据
*/
SELECT 
  user_landlord.`id` '房东唯一识别码',
  CASE
    sex 
    WHEN 1 
    THEN '男' 
    WHEN 0 
    THEN '女' 
  END '性别',
  CASE
    user_landlord.status 
    WHEN 1 
    THEN SUBSTRING(user_landlord.name, 1, 1) 
    WHEN 0 
    THEN SUBSTRING(user_landlord.name, 5, 1) 
  END '房东姓氏',
  SUBSTRING(user_landlord.`identityId`, 1, 3) '身份证前3位',
  SUBSTRING(user_landlord.`birthday`, 1, 4) '出生年份',
  city.`name` '城市',
  DATE_FORMAT(
    user_landlord.`createTime`,
    '%Y-%m-%d'
  ) '创建日期',
  CASE
    user_landlord.`status` 
    WHEN 1 
    THEN '有效' 
    WHEN 0 
    THEN '无效' 
  END '是否有效' 
FROM
  user_landlord 
  LEFT JOIN city 
    ON city.id = user_landlord.`applyCityId` 
  LEFT JOIN user_special 
    ON user_special.userid = user_landlord.`id` 
    AND user_special.usertype = 0 
    AND user_special.specialtype = 0 
WHERE ISNULL(user_special.id) 
  AND user_landlord.`createTime` < '2016-06-01 00:00:00' 