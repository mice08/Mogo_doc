/*新增保理子账号银行卡/账号;上线前产品会提供真实卡号
*/
USE mogoroomdb;

INSERT INTO `user_bankcard` (`userType`, `userId`, `realName`, `IDNumber`, `bankId`, `bankName`, `bankType`, `bankCardNumber`, `cellPhoneNum`, `status`, `updateTime`, `createTime`, `remark`, `bank_code`, `bank_branch`, `province`, `city`, `card_type`, `employ`, `ciphertext`, `isCorp`) VALUES('0','-200','深圳市蘑菇商业保理有限公司',NULL,'3','中国银行','DEBIT','762767678796',NULL,'1',NOW(),NOW(),NULL,'BOC','中国银行深圳科技园支行','广东省','深圳','DEBIT','1','6c22b72f8117a117a02a3a0c7fbd2855','1');

INSERT INTO acct.`acct_fund` (`acctId`, `fundType`, `amount`, `frozen`, `updateTime`, `version`) VALUES('20000','201','0','0',NOW(),NULL);

INSERT INTO acct.`acct_account` (`acctId`, `wjIdentity`, `createTime`, `updateTime`, `userId`, `userType`) VALUES('20000','388888888888',NOW(),NULL,'-200','0');

INSERT INTO `user_account_mapping` (`acctId`, `wjIdentity`, `createTime`, `updateTime`, `userId`, `userType`) VALUES('20000','388888888888',NOW(),NULL,'-200','0');

