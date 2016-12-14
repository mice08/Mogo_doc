/*添加蘑菇月付金融账单类型*/

use mogoroomdb;

INSERT INTO acct.`acct_billtype` (billType,billName,STATUS,sort,displayName,penaltyRate ) VALUES(10012,'蘑菇月付放款账单',1,10012,'蘑菇月付放款账单',null);

INSERT INTO acct.`acct_billtype` (billType,billName,STATUS,sort,displayName,penaltyRate ) VALUES(10013,'蘑菇月付买回本金账单',1,10013,'蘑菇月付买回本金账单',null);