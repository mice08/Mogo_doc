/*
租客信息

*/
SELECT 
  user_renter.`id` '租客唯一识别码',
  user_renter.`createTime` '租客创建时间',
  user_renter.career '租客职业',
  SUBSTRING(user_renter.idCard, 1, 3) '租客身份证号前3位',
  comm_dictionary.`value` '学历',
  comm_mobile_city.`mobileArea` '手机号归属地',
  SUBSTRING(user_renter.birthday, 1, 4) '出生年' 
FROM
  user_renter 
  LEFT JOIN comm_dictionary 
    ON comm_dictionary.`code` = user_renter.educationalBackground 
    AND comm_dictionary.`code` LIKE '%educationalBackground%' 
  LEFT JOIN 
    (SELECT 
      * 
    FROM
      comm_mobile_city 
    GROUP BY comm_mobile_city.`areaCode`) comm_mobile_city 
    ON comm_mobile_city.areacode = user_renter.regMobileCity 
WHERE user_renter.`createTime` < '2016-06-01 00:00:00' 
GROUP BY user_renter.`id` 