/*添加蘑菇月付新账单类型*/

use mogoroomdb;

DELETE FROM acct.`acct_billtype` WHERE billType=10011;

INSERT INTO acct.`acct_billtype` (billType,billName,STATUS,sort,displayName,penaltyRate ) VALUES(10011,'蘑菇月付账单',1,10011,'蘑菇月付账单',50);

INSERT INTO acct.`acct_billtypetofundtype` (billType,fromFundType,toFundType) VALUES(10011,101,201);

INSERT INTO acct.`acct_billdtltype` (billDtlType,billDtlName,STATUS,sort,usageType,displayName,remark) VALUES(10084,'租客蘑菇月付手续费',1,10084,0,'租客蘑菇月付手续费','租客蘑菇月付手续费');