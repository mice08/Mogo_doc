use acct;

ALTER TABLE `acct_bill_chghistory`
ADD COLUMN `busiType`  int NOT NULL COMMENT '业务类型。参考comm_busitype表。' AFTER `billId`,
ADD COLUMN `oldUnpayAmount`  decimal(10,2) NULL COMMENT '变更前的未付金额' AFTER `oldAmount`,
ADD COLUMN `newUnpayAmount`  decimal(10,2) NULL COMMENT '变更后的未付金额' AFTER `newAmount`,
ADD COLUMN `channel`  tinyint NOT NULL COMMENT '操作渠道。参考字典表。' AFTER `createByType`,
ADD COLUMN `remark`  varchar(256) NULL COMMENT '备注' AFTER `channel`;

ALTER TABLE `acct_billdtl_chghistory`
ADD COLUMN `billChgHistoryId`  int NOT NULL COMMENT '账单变更履历表id' AFTER `id`;

ALTER TABLE `acct_billtype`
ADD UNIQUE INDEX `idx_billType` (`billType`) ,
ADD UNIQUE INDEX `idx_billName` (`billName`) ;

ALTER TABLE `acct_billdtltype`
ADD UNIQUE INDEX `idx_billDtlType` (`billDtlType`) ,
ADD UNIQUE INDEX `idx_billDtlName` (`billDtlName`) ;
