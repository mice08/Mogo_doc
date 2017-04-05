/*  Database name `mogoroomdb` ，处理收款核销默认值*/
use mogoroomdb;

update acct.acct_busirec rec,acct.acct_busifeedtl fee set verified =1 ,verifyPerson=-1,verifydate=createTime where rec.donecode=fee.donecode and fee.fundchannel in (1,2,3,6);

update acct.acct_busirec rec,acct.acct_busifeedtl fee set verified =0 where rec.donecode=fee.donecode and fee.fundchannel not in (1,2,3,6);