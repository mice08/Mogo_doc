/* Database name `mogoroomdb` ，蘑菇宝月付需求，增加字段*/
use mogoroomdb;

ALTER TABLE `loan_borrower_info` ADD contractPicGroupId int(11) DEFAULT NULL COMMENT '纸质合同照片组Id' AFTER picGroupId;    /*申请审批通过后才更新至租约合同表*/
ALTER TABLE `loan_contract` ADD autoRepay int(1) DEFAULT '0' COMMENT '还款日到期是否自动扣款(0:否 1:是)';