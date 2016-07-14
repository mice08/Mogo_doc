/*
所有蘑菇宝放款时间
蘑菇宝放款时间小于16年6月1号
蘑菇宝放款时间小于6月1号，那么房间和房东的创建时间也必须是小于6月1号的，所以无需判断
已剔除房东测试账号数据
*/
SELECT 
  loan_renter_contract.`landlordId` '房东唯一识别码',
  loan_renter_contract.roomid '房间唯一识别码',
  loantime '蘑菇宝放款时间' 
FROM
  loan_renter_contract 
  JOIN user_landlord 
    ON user_landlord.id = loan_renter_contract.`landlordId` 
  LEFT JOIN user_special 
    ON user_special.userid = user_landlord.`id` 
    AND user_special.usertype = 0 
    AND user_special.specialtype = 0 
WHERE loantime < '2016-06-01 00:00:00' 
  AND ISNULL(user_special.id)