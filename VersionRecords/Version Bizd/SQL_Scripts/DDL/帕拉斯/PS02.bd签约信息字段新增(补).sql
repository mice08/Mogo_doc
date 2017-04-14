/*  Database name `bizd`  签约信息 */

USE bizd;

ALTER TABLE bizd_landlord_sign
  ADD COLUMN creditCode VARCHAR(20) NOT NULL COMMENT '信用代码',
  ADD COLUMN legalRepresentative VARCHAR(20) NOT NULL COMMENT '法人代表姓名',
  ADD COLUMN signCount INT NOT NULL DEFAULT 0 COMMENT '签约体量',
  ADD COLUMN acctType TINYINT NOT NULL COMMENT '账号类型 0 个人  1 公司 2 KA';