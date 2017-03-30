/*
租客登录信息
租客创建时间截止在2016-06-01
*/
SELECT 
  user_renter.`id` '租客唯一标识码',
  minuser_loginlog.`accessTime` '第一次登录时间',
  CASE
    WHEN terminaltype = 2 
    THEN '浏览器' 
    WHEN terminaltype = 1
    THEN 'APP' 
  END '第一次登录渠道',
  user_renter.`createTime` '(用户注册时间)创建时间',
  COUNT(DISTINCT oder_signedorder.`id`) '签约单数量' 
FROM
  user_renter 
  LEFT JOIN 
    (SELECT 
      * 
    FROM
      user_loginlog 
      JOIN 
        (SELECT 
          MIN(id) minid 
        FROM
          user_loginlog 
        WHERE user_loginlog.`accessTime` < '2016-06-01 00:00:00' 
          AND user_loginlog.`loginStatus` = 2001 
        GROUP BY userid) temp 
        ON temp.minid = user_loginlog.`id`) minuser_loginlog 
    ON minuser_loginlog.userid = user_renter.`id` 
  LEFT JOIN oder_signedorder 
    ON oder_signedorder.`renterId` = user_renter.`id` 
WHERE user_renter.`createTime` < '2016-06-01 00:00:00' 
GROUP BY user_renter.`id` 