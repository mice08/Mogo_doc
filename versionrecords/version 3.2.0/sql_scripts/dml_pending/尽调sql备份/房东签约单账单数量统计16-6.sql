/*
房东签约单账单数量统计
截止到16年5月底
*/
SELECT 
  user_landlord.`id` '房东唯一标识码',
  COUNT(
    CASE
      WHEN ISNULL(bill_salebill.`exempt`) 
      AND cntr_salecontract.turnStrtus > 0 
      THEN 1 
    END
  ) '总补录线上收款',
  COUNT(
    CASE
      WHEN bill_salebill.`exempt` IS NOT NULL 
      AND cntr_salecontract.turnStrtus > 0 
      THEN 1 
    END
  ) '总补录线下收款',
  COUNT(
    CASE
      WHEN ISNULL(bill_salebill.`exempt`) 
      AND cntr_salecontract.turnStrtus = 0 
      THEN 1 
    END
  ) '总线上签约线上收款',
  COUNT(
    CASE
      WHEN bill_salebill.`exempt` IS NOT NULL 
      AND cntr_salecontract.turnStrtus = 0 
      THEN 1 
    END
  ) '总线上签约线下收款',
  COUNT(
    CASE
      WHEN bill_salebill.`exempt` IS NOT NULL 
      AND cntr_salecontract.turnStrtus = 0 
      AND cntr_salecontract.contractType = 1 
      THEN 1 
    END
  ) '总线上签约蘑菇宝线下收款' 
FROM
  user_landlord 
  LEFT JOIN oder_signedorder 
    ON user_landlord.id = oder_signedorder.`landlordId` 
    AND oder_signedorder.`createTime` < '2016-06-01 00:00:00' 
  LEFT JOIN cntr_salecontract 
    ON cntr_salecontract.id = oder_signedorder.`saleContractId` 
  LEFT JOIN bill_salebill 
    ON bill_salebill.`signedOrderId` = oder_signedorder.id 
    AND bill_salebill.`payStatus` = 1 
    AND bill_salebill.`createTime` < '2016-06-01 00:00:00' 
    AND bill_salebill.`valid` = 1 
  LEFT JOIN user_special 
    ON user_special.userid = user_landlord.`id` 
    AND user_special.usertype = 0 
    AND user_special.specialtype = 0 
WHERE ISNULL(user_special.id) 
  AND user_landlord.`createTime` < '2016-06-01 00:00:00' 
GROUP BY user_landlord.`id` 