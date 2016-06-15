USE mogoroomdb;


SELECT * FROM   user_useraccount  GROUP BY accountNum HAVING COUNT(accountNum) > 2;

SELECT * FROM   user_useraccount WHERE    accountNum = '01beibei';
SELECT * FROM   user_useraccount WHERE    accountNum = '01jingjing';
SELECT * FROM   user_useraccount WHERE    accountNum = '01null';
SELECT * FROM   user_useraccount WHERE    accountNum = '0213917667769';
SELECT * FROM   user_useraccount WHERE    accountNum = '0215026605815';

truncate table acct.acct_fund;
INSERT INTO acct.acct_fund (acctId, fundType, amount, frozen) 
SELECT 
  aa.`acctId` AS acctId,
  uu.`accountType` AS fundType,
  CONVERT(uu.`balance`, DECIMAL(10,2)) AS amount,
  CONVERT(uu.`frozenBalance`, DECIMAL(10,2)) AS frozen 
FROM
  user_useraccount uu 
  RIGHT JOIN acct.acct_account aa 
    ON uu.`accountNum` = aa.wjIdentity 
WHERE uu.accountType IS NOT NULL 
  AND uu.`balance` IS NOT NULL 
  AND uu.`frozenBalance` IS NOT NULL 