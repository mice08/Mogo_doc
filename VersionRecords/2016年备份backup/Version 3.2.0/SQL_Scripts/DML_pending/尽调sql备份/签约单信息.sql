/*
签约单信息
自营房源签约单数据如果没有任何租金收入，请参考“是否旧系统转入列”
*/
SELECT 
  oder_signedorder.`id` '签约单号',
  IF(
    cntr_salecontract.`contractAutoNum` LIKE '%OL',
    '是',
    NULL
  ) '是否旧系统转入',
  flat_room.`id` '房间唯一识别码',
  user_landlord.`id` '房东唯一识别码',
  user_renter.`id` '租客唯一识别码',
  CASE
    oder_signedorder.STATUS 
    WHEN 0 
    THEN '签约不通过' 
    WHEN 1 
    THEN '签约待审核' 
    WHEN 2 
    THEN '签约待支付' 
    WHEN 3 
    THEN '签约资料有误' 
    WHEN 4 
    THEN '签约成功' 
    WHEN 5 
    THEN '已退房' 
    WHEN 6 
    THEN '合同到期未退房' 
    WHEN 7 
    THEN '转客待确认' 
    WHEN 8 
    THEN '转客待修改' 
    WHEN 21 
    THEN '支付待确认' 
    WHEN 22 
    THEN '签约已撤销' 
    WHEN 23 
    THEN '首期款已付待处理' 
    WHEN 24 
    THEN '租约待确认' 
    WHEN 99 
    THEN '已删除' 
  END '签约单状态',
  DATE_FORMAT(
    oder_signedorder.`createTime`,
    '%Y-%m-%d'
  ) '签约单创建时间',
  DATE_FORMAT(
    cntr_salecontract.`signingDate`,
    '%Y-%m-%d'
  ) '合同签约日期',
  DATE_FORMAT(
    cntr_salecontract.`beginDate`,
    '%Y-%m-%d'
  ) '合同起租日期',
  DATE_FORMAT(
    cntr_salecontract.`endDate`,
    '%Y-%m-%d'
  ) '合同结束日期',
  DATE_FORMAT(
    oder_signedorder.`checkOutTime`,
    '%Y-%m-%d'
  ) '实际退租日',
  SUM(
    CASE
      WHEN bill_salebill.`exempt` IS NOT NULL 
      AND bill_salebill.`valid` = 1 
      AND bill_salebill.`payStatus` = 1 
      AND bill_salebill.`bill_type` IN (1003, 1004) 
      THEN IFNULL(bill_salebill.`amount`, 0) 
    END
  ) '线下租金收入',
  SUM(
    CASE
      WHEN ISNULL(bill_salebill.`exempt`) 
      AND bill_salebill.`valid` = 1 
      AND bill_salebill.`payStatus` = 1 
      AND bill_salebill.`bill_type` IN (1003, 1004) 
      THEN IFNULL(bill_salebill.`amount`, 0) 
    END
  ) '线上租金收入',
  SUM(
    CASE
      WHEN bill_salebill.`exempt` IS NOT NULL 
      AND bill_salebill.`valid` = 1 
      AND bill_salebill.`payStatus` = 1 
      THEN IFNULL(bill_salebill.`amount`, 0) 
    END
  ) '线下总收入（包括租金）',
  SUM(
    CASE
      WHEN ISNULL(bill_salebill.`exempt`) 
      AND bill_salebill.`valid` = 1 
      AND bill_salebill.`payStatus` = 1 
      THEN IFNULL(bill_salebill.`amount`, 0) 
    END
  ) '线上总收入（包括租金）',
  CASE
    cntr_salecontract.`turnStrtus` 
    WHEN 0 
    THEN '线上签约' 
    ELSE '补录' 
  END '补录/线上签约',
  comm_paytype.`name` '租金付款方式',
  COUNT(
    CASE
      WHEN ISNULL(bill_salebill.`exempt`) 
      AND bill_salebill.`valid` = 1 
      AND bill_salebill.`payStatus` = 1 
      THEN 1 
    END
  ) '线上租金支付次数',
  COUNT(
    CASE
      WHEN bill_salebill.`exempt` IS NOT NULL 
      AND bill_salebill.`valid` = 1 
      AND bill_salebill.`payStatus` = 1 
      THEN 1 
    END
  ) '线下租金支付次数' 
FROM
  oder_signedorder 
  LEFT JOIN flat_room 
    ON flat_room.`id` = oder_signedorder.roomid 
  LEFT JOIN flat_flats 
    ON flat_flats.id = flat_room.`flatsId` 
  LEFT JOIN user_landlord 
    ON user_landlord.`id` = oder_signedorder.`landlordId` 
  LEFT JOIN user_renter 
    ON user_renter.id = oder_signedorder.`renterId` 
  LEFT JOIN cntr_salecontract 
    ON cntr_salecontract.id = oder_signedorder.`saleContractId` 
  LEFT JOIN comm_paytype 
    ON comm_paytype.id = cntr_salecontract.`rentPayType` 
  LEFT JOIN bill_salebill 
    ON bill_salebill.`signedOrderId` = oder_signedorder.`id` 
    AND bill_salebill.`valid` = 1 
    AND bill_salebill.`payStatus` = 1 
  LEFT JOIN user_special 
    ON user_special.userid = user_landlord.`id` 
    AND user_special.usertype = 0 
    AND user_special.specialtype = 0 
WHERE oder_signedorder.`createTime` < '2016-06-01 00:00:00' 
  AND user_landlord.`createTime` < '2016-06-01 00:00:00' 
  AND flat_room.`createTime` < '2016-06-01 00:00:00' 
  AND flat_flats.`createTime` < '2016-06-01 00:00:00' 
  AND ISNULL(user_special.id) 
  /* and (
    cntr_salecontract.`turnStrtus` = 0 
    or (
      cntr_salecontract.`turnStrtus` != 0 
      and oder_signedorder.`status` = 7 
      and cntr_salecontract.`beginDate` < '2016-06-01 00:00:00'
    )
  ) 
  AND oder_signedorder.`status` NOT IN (0, 98, 99, 22) */
GROUP BY oder_signedorder.`id` 