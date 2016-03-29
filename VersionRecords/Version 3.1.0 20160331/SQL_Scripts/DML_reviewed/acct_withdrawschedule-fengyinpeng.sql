USE acct;

UPDATE 
  acct_withdrawschedule aw
SET
  signs = MD5(CONCAT(aw.doneCode,aw.amount,aw.bankcardNumber,aw.id,'FFeU4UuRPEwVWz5cXKMl'));
    
