/*  Database name `mogoroomdb`  �޸���չ�������ݣ���ΪЧ�����⣬ʹ����ʱ�� */
USE mogoroomdb;

/*��ʼ��repo_landlord_house_detail��firstConfirmBulu�ֶκ�nomalPay�ֶ�*/
UPDATE repo_landlord_house_detail SET firstConfirmBulu=0 ,nomalPay=0
WHERE repo_landlord_house_detail.`reportDate`>='2016-09-19';


/*������ʱ��*/
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


/*��ʱ�������������*/
ALTER TABLE tmp_table ADD INDEX landlordId_datetemp(landlordId,datetemp);


/*�޸�detail����*/
UPDATE repo_landlord_house_detail 
JOIN tmp_table ON repo_landlord_house_detail.`landlordId` = tmp_table.landlordId
AND repo_landlord_house_detail.`reportDate` = tmp_table.datetemp
SET repo_landlord_house_detail.`firstConfirmBulu` = tmp_table.result;


/*ɾ����ʱ��*/
DROP TABLE tmp_table;


/*�޸�nomalPay��*/
UPDATE repo_landlord_house_detail SET nomalPay = (onlinepaycount - firstpay - firstconfirmbulu - mogufirstpay);
