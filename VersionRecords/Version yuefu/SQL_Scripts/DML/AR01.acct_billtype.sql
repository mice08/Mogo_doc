/*添加蘑菇月付新账单类型*/

use mogoroomdb;

INSERT INTO acct.`acct_billtype` (billType,billName,STATUS,sort,displayName ) VALUES(10011,'蘑菇月付账单',1,10011,'蘑菇月付账单');

INSERT INTO acct.`acct_billtypetofundtype` (billType,fromFundType,toFundType) VALUES(10011,101,201);

INSERT INTO acct.`acct_billdtltype` (billDtlType,billDtlName,STATUS,sort,usageType,displayName,remark) VALUES(10083,'租客蘑菇月付手续费',1,10083,0,'租客蘑菇月付手续费','租客蘑菇月付手续费');