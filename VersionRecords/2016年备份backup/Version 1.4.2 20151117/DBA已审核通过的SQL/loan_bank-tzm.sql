/*  Database name `mogoroomdb` ������2��������֧�ֵ����� */
use mogoroomdb;

INSERT INTO loan_support_bank(NAME,CODE) VALUES('��������','ICBC');

INSERT INTO loan_support_bank(NAME,CODE) VALUES('��������','HXB');

INSERT INTO loan_bank_mapping(CODE,channel,channelBankCode) VALUES('ICBC',1,'01020000');

INSERT INTO loan_bank_mapping(CODE,channel,channelBankCode) VALUES('HXB',1,'03040000');

