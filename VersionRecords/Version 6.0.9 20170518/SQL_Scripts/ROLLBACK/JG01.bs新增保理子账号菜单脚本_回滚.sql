/*删除保理子账号新增的菜单*/
USE mogoroomdb;
BEGIN;

DELETE FROM perm_functioninfo WHERE fname='保理子账户管理' AND furl='loanTransactionWitness/transactionWitnessList';
DELETE FROM perm_functioninfo WHERE fname='查询保理子账户交易记录' AND furl='loanTransactionWitness/transactionWitnessList';
DELETE FROM perm_functioninfo WHERE fname='导出保理子账户交易记录' AND furl='loanTransactionWitness/exportTransactionWitnessList';
DELETE FROM perm_functioninfo WHERE fname='保理子账户提现' AND furl='loanTransactionWitness/loanCreateWithdrawal';

SELECT @newmenuid:=id FROM perm_functioninfo  WHERE fname='金融管理' AND functionpId =(SELECT id FROM perm_functioninfo  WHERE fname='财务管理');
DELETE FROM perm_functioninfo WHERE id =@newmenuid;

COMMIT;
