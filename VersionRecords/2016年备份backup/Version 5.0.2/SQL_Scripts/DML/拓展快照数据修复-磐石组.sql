/*  Database name `mogoroomdb`  修复拓展快照数据，因为效率问题，使用临时表 */
USE mogoroomdb;

/*初始化repo_landlord_house_detail表firstConfirmBulu字段和nomalPay字段*/
UPDATE repo_landlord_house_detail SET firstConfirmBulu=0 ,nomalPay=0
WHERE repo_landlord_house_detail.`reportDate`>='2016-09-19';


/*创建临时表*/
CREATE TEMPORARY TABLE tmp_table AS SELECT 
  COUNT(result) result,
  `landlordId`,
  datetemp 
FROM
  (SELECT 
   1 AS result,
    oder_signedorder.`landlordId`,
    MIN(
      DATE_FORMAT(
        bill_salebill.`dueDate`,
        '%Y-%m-%d'
      )
    ) 'datetemp',
    bill_salebill.`dueDate` 
  FROM
    bill_salebill 
    LEFT JOIN oder_signedorder 
      ON oder_signedorder.id = bill_salebill.`signedOrderId` 
    LEFT JOIN cntr_salecontract 
      ON cntr_salecontract.id = oder_signedorder.`saleContractId` 
  WHERE cntr_salecontract.`turnStrtus` > 0 
    AND bill_salebill.`payStatus` = 1 
    AND bill_salebill.bill_type IN (1003, 1004) 
    AND ISNULL(bill_salebill.`exempt`) 
    AND bill_salebill.duedate >= '2016-09-19' 
	AND bill_salebill.duedate < '2016-09-22'
  GROUP BY bill_salebill.`signedOrderId`,
    oder_signedorder.`landlordId` 
  HAVING MIN(bill_salebill.`dueDate`) = bill_salebill.`dueDate`) temp 
GROUP BY datetemp,
  landlordId 
HAVING result > 0 ;


/*临时表添加联合索引*/
ALTER TABLE tmp_table ADD INDEX landlordId_datetemp(landlordId,datetemp);


/*修复detail数据*/
UPDATE repo_landlord_house_detail 
JOIN tmp_table ON repo_landlord_house_detail.`landlordId` = tmp_table.landlordId
AND repo_landlord_house_detail.`reportDate` = tmp_table.datetemp
SET repo_landlord_house_detail.`firstConfirmBulu` = tmp_table.result;


/*删除临时表*/
DROP TABLE tmp_table;


/*修复nomalPay列*/
UPDATE repo_landlord_house_detail SET nomalPay = (onlinepaycount - firstpay - firstconfirmbulu - mogufirstpay);
