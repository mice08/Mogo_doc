SELECT 
  oder_signedorder.id
FROM
  oder_signedorder 
  JOIN cntr_salecontract 
    ON cntr_salecontract.id = oder_signedorder.`saleContractId` 
  JOIN bill_salebill 
    ON bill_salebill.`signedOrderId` = oder_signedorder.`id` 
   
WHERE oder_signedorder.`status` NOT IN (0, 22, 98, 99) 
  AND cntr_salecontract.`contractType` != 1 
  AND oder_signedorder.`createTime` < '2016-07-01' 
  AND (
    DATE_FORMAT(bill_salebill.paytime ,'%Y-%m-%d') > DATE_FORMAT(bill_salebill.`dueDate` ,'%Y-%m-%d')
   
  ) 
  AND bill_salebill.`payTime`<'2016-07-01' 
  AND bill_salebill.`createTime` < '2016-07-01' 
  AND bill_salebill.`valid` = 1 AND bill_salebill.`bill_type`=1004
GROUP BY bill_salebill.id







  SELECT COUNT(1) FROM oder_signedorder 
  JOIN cntr_salecontract ON cntr_salecontract.id = oder_signedorder.`saleContractId` WHERE oder_signedorder.`status` NOT IN (0, 22, 98, 99)
 AND cntr_salecontract.`turnStrtus`=0
  AND oder_signedorder.`createTime`<'2016-07-01' GROUP BY oder_signedorder.`id`
  