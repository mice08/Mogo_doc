/*新增保理子账号银行卡/账号;上线前产品会提供真实卡号
*/
USE mogoroomdb;

DELETE FROM user_bankcard WHERE userId=-200 AND userType=0;
DELETE FROM acct.`acct_fund` WHERE acctId=20000;
DELETE FROM acct.`acct_account` WHERE acctId=20000;
DELETE FROM user_account_mapping WHERE acctId=20000;
