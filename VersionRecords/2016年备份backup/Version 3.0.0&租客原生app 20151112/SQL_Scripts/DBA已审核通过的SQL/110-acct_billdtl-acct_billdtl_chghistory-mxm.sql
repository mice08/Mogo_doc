use mogoroomdb;
BEGIN;
UPDATE acct.acct_billdtl  SET billDtlType=100006 WHERE billDtlType=10005;
UPDATE acct.acct_billdtl  SET billDtlType=100007 WHERE billDtlType=10006;
UPDATE acct.acct_billdtl  SET billDtlType=100008 WHERE billDtlType=10007;

UPDATE acct.acct_billdtl_chghistory SET billDtlType=100006 WHERE billDtlType=10005;
UPDATE acct.acct_billdtl_chghistory SET billDtlType=100007 WHERE billDtlType=10006;
UPDATE acct.acct_billdtl_chghistory SET billDtlType=100008 WHERE billDtlType=10007;
COMMIT;



