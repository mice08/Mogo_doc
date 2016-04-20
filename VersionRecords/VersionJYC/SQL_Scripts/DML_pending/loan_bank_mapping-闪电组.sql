/*  Database name `mogoroomdb` ，loan_bank_mapping表初始化数据*/
USE mogoroomdb;
INSERT INTO loan_bank_mapping (
  CODE,
  channel,
  channelBankCode,
  credits
) 
VALUES
  ('ICBC', 3, 01020000, 50000),
  ('ABC', 3, 01030000, 20000),
  ('CBC', 3, 01050000, 50000),
  ('BOC', 3, 01040000, 10000),
  ('PSBC', 3, 01000000, 50000),
  ('CMB', 3, 03080000, 50000),
  ('CEB', 3, 03030000, 50000),
  ('CGB', 3, 03060000, 50000),
  ('PAB', 3, 05105840, 50000),
  ('SPDB', 3, 03100000, 4999),
  ('CMBC', 3, 03050000, 50000),
  ('CIB',3, 03090010, 50000)
