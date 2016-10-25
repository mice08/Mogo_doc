/* Database name `mogoroomdb` , 设置所有未自动核销的在线支付为已核销*/
USE mogoroomdb;

UPDATE acct.`acct_busirec`  abr ,acct.`acct_tradelog`  atr  set  abr.`verifyDate` = abr.`createTime`,abr.`remark`='设置所有未自动核销的在线支付为已核销'  WHERE abr.`tradelogid` = atr.`id` AND abr.`verifyDate` IS NULL AND atr.`fundChannel`<100;