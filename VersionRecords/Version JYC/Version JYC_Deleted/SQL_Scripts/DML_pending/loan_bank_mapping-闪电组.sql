/*  Database name `mogoroomdb` ，loan_bank_mapping表初始化数据*/

USE mogoroomdb;
DELETE FROM loan_bank_mapping WHERE channel = 3;
INSERT INTO loan_bank_mapping (
  CODE,
  channel,
  channelBankCode,
  credits,
  isSMSNeeded
) 
VALUES
('ICBC','3','01020000',50000,1),
('BOC','3','01040000',50000,1),
('CCB','3','01050000',50000,1),
('PSBC','3','01000000',50000,1),
('CITIC','3','63020000',50000,1),
('CEB','3','03030000',50000,1),
('CMB','3','03080000',50000,1),
('CIB','3','03090010',50000,1),
('SPDB','3','03100000',50000,1),
('SZPAB','3','05105840',50000,1),
('CMBC','3','03050000',50000,1),
('ABC','3','01030000',50000,1),
('HXB','3','63040000',50000,1),
('GDB','3','03060000',50000,1),
('BCCB','3','04031000',50000,1);