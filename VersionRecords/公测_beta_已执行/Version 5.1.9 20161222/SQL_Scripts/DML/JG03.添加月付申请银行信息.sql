use mogoroomdb;
/* Database name `mogoroomdb` ，聚有财蘑菇宝月付申请银行列表*/

INSERT INTO `loan_bank_mapping` (`code`, `channel`, `channelBankCode`, `credits`, `isSMSNeeded`) VALUES ('PSBC', '4', '01000000', '50000.00', '1');
INSERT INTO `loan_bank_mapping` (`code`, `channel`, `channelBankCode`, `credits`, `isSMSNeeded`) VALUES ('ICBC', '4', '01020000', '50000.00', '1');
INSERT INTO `loan_bank_mapping` (`code`, `channel`, `channelBankCode`, `credits`, `isSMSNeeded`) VALUES ('BOC', '4', '01040000', '50000.00', '1');
INSERT INTO `loan_bank_mapping` (`code`, `channel`, `channelBankCode`, `credits`, `isSMSNeeded`) VALUES ('CCB', '4', '01050000', '50000.00', '1');
INSERT INTO `loan_bank_mapping` (`code`, `channel`, `channelBankCode`, `credits`, `isSMSNeeded`) VALUES ('CEB', '4', '03030000', '50000.00', '1');
INSERT INTO `loan_bank_mapping` (`code`, `channel`, `channelBankCode`, `credits`, `isSMSNeeded`) VALUES ('CMBC', '4', '03050000', '50000.00', '1');
INSERT INTO `loan_bank_mapping` (`code`, `channel`, `channelBankCode`, `credits`, `isSMSNeeded`) VALUES ('CIB', '4', '03090010', '50000.00', '1');
INSERT INTO `loan_bank_mapping` (`code`, `channel`, `channelBankCode`, `credits`, `isSMSNeeded`) VALUES ('SPDB', '4', '03100000', '50000.00', '1');
INSERT INTO `loan_bank_mapping` (`code`, `channel`, `channelBankCode`, `credits`, `isSMSNeeded`) VALUES ('CITIC', '4', '63020000', '50000.00', '1');
INSERT INTO `loan_bank_mapping` (`code`, `channel`, `channelBankCode`, `credits`, `isSMSNeeded`) VALUES ('HXB', '4', '63040000', '50000.00', '1');
INSERT INTO `loan_bank_mapping` (`code`, `channel`, `channelBankCode`, `credits`, `isSMSNeeded`) VALUES ('BCCB', '4', '04031000', '50000.00', '1');

/* Database name `mogoroomdb` ，聚有财蘑菇宝月付分期服务协议模板*/
INSERT INTO `cntr_contract_templet` (`cityId`, `landlordId`, `rentType`, `templetName`, `templetCode`, `templetPath`, `status`, `createTime`, `createBy`, `createByType`, `updateTime`, `updateBy`, `updateByType`, `lang`, `beginTime`, `endTime`) VALUES ('289', NULL, '100', '聚有财月付蘑菇宝', 'monthlypay_jyc', '/var/lib/docker/contract/template/MogoBaoProtocolTemplet_JYC_MonthlyPay.vm', '1', '2016-11-07 13:07:56', '1', '1', NULL, NULL, NULL, '1', '2010-01-01 00:00:00', '2020-12-31 23:59:59');