/*  Database name `mogoroomdb` ，新增2家拉卡拉支持的银行 */
use mogoroomdb;

INSERT INTO loan_support_bank(NAME,CODE) VALUES('工商银行','ICBC');

INSERT INTO loan_support_bank(NAME,CODE) VALUES('华夏银行','HXB');

INSERT INTO loan_bank_mapping(CODE,channel,channelBankCode) VALUES('ICBC',1,'01020000');

INSERT INTO loan_bank_mapping(CODE,channel,channelBankCode) VALUES('HXB',1,'03040000');

