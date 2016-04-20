/*  Database name `mogoroomdb` ，loan_bank_mapping表初始化数据*/
USE mogoroomdb;
INSERT INTO loan_bank_mapping (
  CODE,
  channel,
  channelBankCode,
  credits,
  isSmsVerified
) 
VALUES
  ('ICBC', 3, 01020000, 50000, 0),
  ('ABC', 3, 01030000, 20000, 0),
  ('CBC', 3, 01050000, 50000, 1),
  ('BOC', 3, 01040000, 10000, 1),
  ('PSBC', 3, 01000000, 50000, 1),
  ('CMB', 3, 03080000, 50000, 1),
  ('CEB', 3, 03030000, 50000, 0),
  ('CGB', 3, 03060000, 50000, 1),
  ('PAB', 3, 05105840, 50000, 0),
  ('SPDB', 3, 03100000, 4999, 1),
  ('CMBC', 3, 03050000, 50000, 1),
  ('CIB',3, 03090010, 50000, 0)
