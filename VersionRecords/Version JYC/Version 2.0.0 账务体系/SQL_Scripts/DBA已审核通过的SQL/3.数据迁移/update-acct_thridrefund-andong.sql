UPDATE acct_thridrefund SET refundChannel = 2 WHERE refundChannel = 2001;
UPDATE acct_thridrefund SET refundChannel = 3 WHERE refundChannel = 3001;


UPDATE acct.acct_thridrefund a1,
(SELECT a2.orderNum, ob.mogoTradeId, bam.billId 
FROM acct.acct_thridrefund a2
LEFT JOIN oder_businessorder ob ON a2.orderNum = ob.businessNum 
LEFT JOIN bill_account_mapping bam ON bam.orderId = ob.mogoTradeId AND bam.orderType = 3008
WHERE a2.orderNum IS NOT NULL
) t
SET a1.billId = t.billId
WHERE a1.orderNum = t.orderNum AND a1.orderNum IS NOT NULL;