use mogoroomdb;

/*账务账单表新加字段初始化*/
begin;

update acct.acct_bill ab
join  bill_account_mapping  bam on bam.billid=ab.billid
join bill_salebill sb on bam.orderid=sb.id and bam.orderType in (216002, 216003, 216004, 10101013)
set ab.periodYear=sb.periodYear,
 ab.periodStage=sb.periodStage,
 ab.startDate=sb.startDate,
 ab.endDate=sb.endDate;

 commit;