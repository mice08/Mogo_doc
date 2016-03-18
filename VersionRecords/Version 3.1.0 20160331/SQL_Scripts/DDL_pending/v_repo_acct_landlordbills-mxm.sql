USE mogoroomdb;

CREATE VIEW repo_acct_landlord_bills AS
/**房东线上支付账单**/
SELECT 
bf.landlordId
  , fr.id roomId
  , fr.roomName
  , ff.id flatsId
  , ff.flatsTag
  , ff.rentType
  , ff.districtId
  , fc.name communityName
  , ff.building
  , ff.unit
  , ff.roomNum
  , b.billId
  , bt.billType
  , bt.billName
  , b.status
  , bf.startDate
  , bf.endDate
  , IF (  bpaidol.billId IS NULL  , b.amount  ,  bpaidol.paidAmount  ) amount
  , b.unpayAmount
  , IF (  bpaidol.billId IS NULL , bpaid.paidAmount ,  bpaidol.paidAmount ) paidAmount
  , IF (bpaidol.billId IS NULL, bpaid.txTime, bpaidol.txTime) txTime
  , IF (bpaidol.billId IS NULL, bforegift.foregiftAmount, bpaidol.paidForegift) foregiftAmount
  , IF(b.status=1, bforegift.foregiftAmount, bpaidol.paidForegift) paidForegift
  , b.deadline
  , bf.fundDir
  , 4 targetUserType
  , bf.renterId targetUserId
  , ur.realName targetUser
FROM acct.acct_bill b
JOIN acct.acct_billtype bt ON bt.billType = b.billType
LEFT JOIN 
(SELECT bh.billId, bh.createTime txTime, bh.oldAmount - bh.newAmount AS paidAmount, SUM(bdh.oldAmount - bdh.newAmount) paidForegift
 FROM acct.acct_bill_chghistory bh
 LEFT JOIN acct.acct_billdtl_chghistory bdh ON bdh.billChgHistoryId=bh.id
    AND bdh.BillDtlType  IN (SELECT billDtlType FROM acct.acct_billdtltype bdt WHERE bdt.billDtlType = 10003 OR bdt.usageType=2)
 WHERE  bh.busiType = 1041002
GROUP BY bh.billId
) bpaidol ON bpaidol.billId = b.billId 
LEFT JOIN (
	SELECT bbd.billId, MAX(br.createTime) txTime, ABS(SUM(bbd.amount)) paidAmount
	FROM acct.acct_busirec br
	JOIN acct.acct_busibilldtl bbd ON bbd.doneCode = br.doneCode
	GROUP BY bbd.billId
) bpaid ON bpaid.billId = b.billId
LEFT JOIN(
	SELECT bd.billid, SUM(bd.amount) foregiftAmount
	FROM acct.acct_billdtl bd
	JOIN acct.acct_billdtltype bdt ON bdt.billDtlType = bd.billDtlType
	WHERE bd.billDtlType = 10003 OR bdt.usageType=2 GROUP BY bd.billId
) bforegift  ON bforegift.billid = b.billId 
JOIN (
	SELECT 'IN' fundDir, bam.billId, bo.flatsId, bo.roomId, NULL startDate, NULL endDate, bo.landlordId, bo.renterId
	FROM bill_account_mapping bam
	JOIN oder_bookorder bo ON bo.id = bam.orderId AND bam.orderType IN(216001) /**租客支付定金*/
	UNION ALL
	SELECT 'IN' fundDir, bam.billId, so.flatsId, so.roomId, sb.startDate, sb.endDate, so.landlordId, so.renterId
	FROM bill_account_mapping bam
	JOIN bill_salebill sb ON sb.id = bam.orderId AND bam.orderType IN(216002, 216003, 216004)
	JOIN oder_signedorder so ON sb.signedOrderId = so.id
	UNION ALL
	SELECT 'OUT' fundDir, bam.billId, bo.flatsId, bo.roomId, NULL startDate, NULL endDate, bo.landlordId, bo.renterId
	FROM bill_account_mapping bam
	JOIN oder_bookorder bo ON bo.id = bam.orderId AND bam.orderType IN(3008) /**退定金*/
	UNION ALL
	SELECT 'OUT' fundDir, bam.billId, so.flatsId, so.roomId, NULL startDate, NULL endDate, so.landlordId, so.renterId
	FROM bill_account_mapping bam
	JOIN supp_landlordrefundrecord lrr ON lrr.id = bam.orderId AND bam.orderType IN(3007) /**退押金*/
	JOIN oder_surrenderapply sa ON sa.id = lrr.surrenderApplyId
	JOIN oder_signedorder so ON so.id = sa.signedOrderId
)bf ON bf.billId = b.billId
LEFT JOIN user_renter ur ON ur.id = bf.renterId
LEFT JOIN flat_flats ff ON ff.id = bf.flatsId
LEFT JOIN flat_room fr ON fr.id = bf.roomId
LEFT JOIN flat_community fc ON fc.id = ff.communityId
WHERE b.status IN (0, 1, 3)

/**房东支付业主账单*/
UNION ALL
SELECT
  habr.landlord_id landlordId
  , fr.id roomId
  , fr.roomName
  , ff.id flatsId
  , ff.flatsTag
  , ff.rentType
  , ff.districtId
  , fc.name communityName
  , ff.building
  , ff.unit
  , ff.roomNum
  , habr.id billId
  , -1 billType
  , '业主账单' billName
  , habr.STATUS  status
  , habr.section_start_date startDate
  , habr.section_end_date endDate
  , CONVERT(ABS(habr.pay_money) / rc.roomCount, DECIMAL(10,2)) AS amount
  , CONVERT(IF (habr.has_paid = 1, 0, habr.pay_money) / rc.roomCount, DECIMAL(10,2)) AS unpayAmount
  , CONVERT(IF (habr.has_paid = 1, habr.pay_money, 0) / rc.roomCount, DECIMAL(10,2)) AS paidAmount
  , habr.real_pay_date txTime
  , NULL foregiftAmount
  , NULL paidForegift
  , habr.pay_date deadline
  , 'OUT' fundDir
  , NULL targetUserType
  , habr.host_id targetUserId
  , ui.real_name targetUser
FROM
	host_acct_busi_rec habr
LEFT JOIN user_info ui ON habr.host_id = ui.id
LEFT JOIN flat_flats ff ON ff.id = habr.flat_id
LEFT JOIN flat_room fr ON fr.flatsId = ff.id
LEFT JOIN (SELECT flatsId, COUNT(1) roomCount FROM flat_room GROUP BY flatsId) rc ON  rc.flatsId = ff.id
LEFT JOIN flat_community fc ON fc.id = ff.communityId
WHERE habr.STATUS=1
;


