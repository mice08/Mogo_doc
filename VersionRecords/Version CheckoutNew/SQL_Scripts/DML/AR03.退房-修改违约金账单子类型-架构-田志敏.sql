/* Database name `mogoroomdb` ，修改违约金账单子类型*/
use mogoroomdb;

update acct.acct_billdtltype set billDtlType=105001,usageType=1 where billDtlType = 10083;

update user_landlord_billdtltype set billDtlType=105001  where billDtlType = 10083;
