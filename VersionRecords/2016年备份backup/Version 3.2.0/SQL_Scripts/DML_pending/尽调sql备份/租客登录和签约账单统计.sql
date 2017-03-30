/*
租客登录和签约单账单统计
*/
SELECT 
  user_renter.`id` '租客唯一识别码',
  user_renter.`createTime` '创建时间',
  COUNT(user_loginlog.`id`) '登录次数',
  MAX(user_loginlog.`accessTime`) '最后一次登录日期',
  MIN(
    CASE
      WHEN cntr_salecontract.`signingDate` IS NOT NULL 
      THEN cntr_salecontract.`signingDate` 
      ELSE oder_signedorder.`createTime` 
    END
  ) '平台首次签约时间',
  MIN(
    CASE
      WHEN bill_salebill.`payStatus` = 1 
      AND bill_salebill.`bill_type` IN (1003, 1004) 
      THEN bill_salebill.`payTime` 
    END
  ) '平台首次租金支付时间',
  COUNT(
    CASE
      WHEN bill_salebill.`payStatus` = 1 
      AND ISNULL(bill_salebill.`exempt`) 
      AND bill_salebill.`bill_type` IN (1003, 1004) 
      THEN 1 
    END
  ) '租金线上支付次数',
  COUNT(
    CASE
      WHEN bill_salebill.`payStatus` = 1 
      AND bill_salebill.`bill_type` IN (1003, 1004) 
      AND bill_salebill.`exempt` IS NOT NULL 
      THEN 1 
    END
  ) '租金线下支付次数',
  COUNT(
    CASE
      WHEN bill_salebill.`payStatus` = 1 
      AND ISNULL(bill_salebill.`exempt`) 
      AND bill_salebill.`bill_type` NOT IN (1003, 1004) 
      THEN 1 
    END
  ) '其他线上支付次数',
  COUNT(
    CASE
      WHEN bill_salebill.`payStatus` = 1 
      AND bill_salebill.`bill_type` NOT IN (1003, 1004) 
      AND bill_salebill.`exempt` IS NOT NULL 
      THEN 1 
    END
  ) '其他线下支付次数' 
FROM
  user_renter 
  LEFT JOIN user_loginlog 
    ON user_loginlog.userid = user_renter.`id` 
    AND user_loginlog.`accessTime` < '2016-06-01' #and user_loginlog.loginStatus = 2001 or accessResult='SUCCESS'
  LEFT JOIN oder_signedorder 
    ON oder_signedorder.`renterId` = user_renter.`id` 
    AND oder_signedorder.`createTime` < '2016-06-01' 
  LEFT JOIN cntr_salecontract 
    ON cntr_salecontract.id = oder_signedorder.`saleContractId` 
  LEFT JOIN bill_salebill 
    ON bill_salebill.`signedOrderId` = oder_signedorder.`id` 
    AND bill_salebill.`payStatus` = 1 
    AND bill_salebill.`createTime` < '2016-06-01' 
WHERE user_renter.`createTime` < '2016-06-01' 
GROUP BY user_renter.`id` 