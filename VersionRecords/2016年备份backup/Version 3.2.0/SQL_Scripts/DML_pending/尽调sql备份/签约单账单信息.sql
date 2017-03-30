/*
签约单账单信息
租客创建、签约单创建时间、账单创建时间截止到2016-06-01
*/
SELECT 
  user_renter.`id` '租客唯一识别码',
  oder_signedorder.id '签约单号',
  bill_salebill.id '账单唯一识别码',
  bill_salebill.`createTime` '账单创建时间',
  bill_salebill.`payTime` '实际支付时间',
  CASE
    WHEN bill_salebill.`bill_type` IN (1003, 1004) 
    THEN '是' 
    ELSE '否' 
  END '是否是租金',
  CASE
    WHEN ISNULL(bill_salebill.`exempt`) 
    AND bill_salebill.`payStatus` = 1 
    THEN '是' 
    ELSE '否' 
  END '是否为线上支付',
  bill_salebill.`amount` '支付金额',
  bill_salebill.endDate '账单最后付款时间' 
FROM
  user_renter 
  LEFT JOIN oder_signedorder 
    ON oder_signedorder.`renterId` = user_renter.`id` 
  LEFT JOIN bill_salebill 
    ON bill_salebill.signedOrderId = oder_signedorder.id 
WHERE bill_salebill.`createTime` < '2016-06-01' 
  AND bill_salebill.`valid` = 1 
  AND oder_signedorder.`createTime` < '2016-06-01' 
  AND user_renter.`createTime` < '2016-06-01' 
  AND bill_salebill.`payStatus` = 1 
GROUP BY bill_salebill.`id` 