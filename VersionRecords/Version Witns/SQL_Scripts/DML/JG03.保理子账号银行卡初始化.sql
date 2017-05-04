/*新增保理子账号银行卡/账号;上线前产品会提供真实卡号
*/
USE mogoroomdb;

insert into `user_bankcard` (`userType`, `userId`, `realName`, `IDNumber`, `bankId`, `bankName`, `bankType`, `bankCardNumber`, `cellPhoneNum`, `status`, `updateTime`, `createTime`, `remark`, `bank_code`, `bank_branch`, `province`, `city`, `card_type`, `employ`, `ciphertext`, `isCorp`) values('0','-200','保理公司','11','1','工商银行','DEBIT','6222021001113538888','11','1','2017-04-28 18:55:45','2017-04-02 16:34:03',NULL,'ICBC','秀沿路支行','上海市','上海市','DEBIT','1','6c22b72f8117a117a02a3a0c7fbd2855','0');

insert into acct.`acct_account` (`acctId`, `wjIdentity`, `createTime`, `updateTime`, `userId`, `userType`) values('20000','388888888888','2017-04-28 18:54:20',NULL,'-200','0');

insert into `user_account_mapping` (`acctId`, `wjIdentity`, `createTime`, `updateTime`, `userId`, `userType`) values('20000','388888888888','2017-04-28 18:54:20',NULL,'-200','0');

insert into `user_account_mapping` (`acctId`, `wjIdentity`, `createTime`, `updateTime`, `userId`, `userType`) values('20000','388888888888','2017-04-28 18:54:20',NULL,'-200','0');
