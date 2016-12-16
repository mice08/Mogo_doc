/* Database name `mogoroomdb` ，新增违约金账单子类型*/
use mogoroomdb;

INSERT  INTO acct.`acct_billdtltype`(`billDtlType`,`billDtlName`,`status`,`sort`,`usageType`,`displayName`,`remark`) VALUES (10083,'违约金',1,10083,0,'违约金','违约金');


INSERT INTO user_landlord_billdtltype (landlordid,billDtlType,createTime) VALUES(0,10083,NOW());
