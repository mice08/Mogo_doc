use acct;
UPDATE acct.`acct_tradelog` SET channel = 5 WHERE channel = 2;
UPDATE acct.`acct_tradelog` SET channel = 4 WHERE channel = 1;
UPDATE acct.`acct_tradelog` SET channel = 1 WHERE channel = 0;
UPDATE acct.`acct_tradelog` SET channel = 2 WHERE channel = 3;