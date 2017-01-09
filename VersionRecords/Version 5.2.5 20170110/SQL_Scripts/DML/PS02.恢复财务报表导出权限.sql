BEGIN;
INSERT INTO perm_role_function 
SELECT 
  role_id,
  (SELECT 
    id 
  FROM
    perm_functioninfo 
  WHERE furl ='report/qiankuanDown') 
FROM
  perm_role_function 
WHERE function_id = 
  (SELECT 
    id 
  FROM
    perm_functioninfo 
  WHERE furl ='report/qiankuan');
  
  INSERT INTO perm_role_function 
SELECT 
  role_id,
  (SELECT 
    id 
  FROM
    perm_functioninfo 
  WHERE furl = 'report/findKuaiqianBalanceReportDown') 
FROM
  perm_role_function 
WHERE function_id = 
  (SELECT 
    id 
  FROM
    perm_functioninfo 
  WHERE furl = 'report/findKuaiqianBalanceReport');
  
  INSERT INTO perm_role_function 
SELECT 
  role_id,
  (SELECT 
    id 
  FROM
    perm_functioninfo 
  WHERE furl='report/financePayInDepositReportDown') 
FROM
  perm_role_function 
WHERE function_id = 
  (SELECT 
    id 
  FROM
    perm_functioninfo 
  WHERE furl='report/financePayInDepositReport');
  
  INSERT INTO perm_role_function 
SELECT 
  role_id,
  (SELECT 
    id 
  FROM
    perm_functioninfo 
  WHERE furl='report/findBalanceDetailReportDown') 
FROM
  perm_role_function 
WHERE function_id = 
  (SELECT 
    id 
  FROM
    perm_functioninfo 
  WHERE furl='report/findBalanceDetailReport');
  
  INSERT INTO perm_role_function 
SELECT 
  role_id,
  (SELECT 
    id 
  FROM
    perm_functioninfo 
  WHERE furl='report/financeOutgoDetailReportDown') 
FROM
  perm_role_function 
WHERE function_id = 
  (SELECT 
    id 
  FROM
    perm_functioninfo 
  WHERE furl='report/financeOutgoDetailReport');
  COMMIT;