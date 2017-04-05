/*
蘑菇宝信息
*/
SELECT 
  oder_signedorder.`id` '签约单号',
  user_renter.`id` '租客唯一识别码',
  COUNT(loan_renter_contract.`id`) '蘑菇宝申请次数',
  GROUP_CONCAT(
    loan_renter_contract.`createTime`
  ) '蘑菇宝申请时间',
  MAX(
    loan_renter_contract.`loantime`
  ) '资方放款给蘑菇时间（审核通过时间）',
  MAX(
    loan_landlord_payplan.`payDate`
  ) '蘑菇放款给房东时间' 
FROM
  oder_signedorder 
  LEFT JOIN cntr_salecontract 
    ON cntr_salecontract.id = oder_signedorder.`saleContractId` 
  LEFT JOIN user_renter 
    ON user_renter.id = oder_signedorder.`renterId` 
  LEFT JOIN loan_renter_info 
    ON loan_renter_info.`signedOrderId` = oder_signedorder.`id` 
  LEFT JOIN loan_renter_contract 
    ON loan_renter_contract.`infoId` = loan_renter_info.`id` 
  LEFT JOIN loan_landlord_mgmt 
    ON loan_landlord_mgmt.`bizContractId` = loan_renter_contract.`id` 
  LEFT JOIN loan_landlord_payplan 
    ON loan_landlord_payplan.`loanId` = loan_landlord_mgmt.`id` 
WHERE oder_signedorder.`createTime` < '2016-06-01' 
  AND cntr_salecontract.`contractType` = 1 
GROUP BY oder_signedorder.`id` 