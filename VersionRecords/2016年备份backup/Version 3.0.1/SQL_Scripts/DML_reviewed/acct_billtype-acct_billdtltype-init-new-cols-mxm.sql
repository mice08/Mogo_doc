use acct;

BEGIN;
-- 集中初始化displayName, remark信息
UPDATE acct.acct_billtype 
SET displayName=IF(instr(billName, ',') =0, billName, substr(billName, 1, instr(billName, ',') - 1)),
remark=IF(instr(billName, ',') =0, billName, substr(billName,  instr(billName, ',') + 1)),
billName=IF(instr(billName, ',') =0, billName, substr(billName, 1, instr(billName, ',') - 1));

-- 集中初始化displayName, remark信息
UPDATE acct.acct_billdtltype 
SET displayName=IF(instr(billdtlName, ',') =0, billdtlName, substr(billdtlName, 1, instr(billdtlName, ',') - 1)),
remark=IF(instr(billdtlName, ',') =0, billdtlName, substr(billdtlName,  instr(billdtlName, ',') + 1)),
billdtlName=IF(instr(billdtlName, ',') =0, billdtlName, substr(billdtlName, 1, instr(billdtlName, ',') - 1));

-- 更新个别数据的displayName
UPDATE acct.acct_billtype SET displayName='自定义款项' WHERE billtype=20001;
UPDATE acct.acct_billtype SET displayName='首期款' WHERE billtype=1003;
UPDATE acct.acct_billtype SET displayName='常规款' WHERE billtype=1004;
UPDATE acct.acct_billtype SET displayName='水电煤' WHERE billtype=1005;

-- 更新个别数据的displayName
UPDATE acct.acct_billdtltype SET displayName='首期款' WHERE billdtltype=1003;
UPDATE acct.acct_billdtltype SET displayName='常规款' WHERE billdtltype=1004;
UPDATE acct.acct_billdtltype SET displayName='水电煤' WHERE billdtltype=1005;

COMMIT;
