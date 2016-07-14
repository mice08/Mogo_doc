/*
房东租金宝申请
已剔除房东测试数据
指定租金宝申请时间和蘑菇宝申请时间和房东创建时间小于16年6月1号
*/
SELECT 
  user_landlord.`id` '房东唯一标识码',
  loan_landlord_contract.applyTime '申请时间',
  loan_landlord_contract.approvalTime '审批时间',
  MIN(loan_renter_contract.loantime) '第一次蘑菇宝放款时间' 
FROM
  user_landlord 
  LEFT JOIN loan_landlord_contract 
    ON loan_landlord_contract.`landlordId` = user_landlord.`id` 
    AND loan_landlord_contract.`loanChannel` = 1 
    AND loan_landlord_contract.`applyTime` < '2016-06-01 00:00:00' 
  LEFT JOIN loan_renter_contract 
    ON loan_renter_contract.`landlordId` = user_landlord.`id` 
    AND loan_renter_contract.`createTime` < '2016-06-01 00:00:00' 
    AND loan_renter_contract.`channel` = 1 
  LEFT JOIN user_special 
    ON user_special.userid = user_landlord.`id` 
    AND user_special.usertype = 0 
    AND user_special.specialtype = 0 
WHERE user_landlord.`createTime` < '2016-06-01 00:00:00' 
  AND ISNULL(user_special.id) 
GROUP BY user_landlord.id 