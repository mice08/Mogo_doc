/*  Database name `mogoroomdb` ，房东贷款放款表增加是否已经退还保证金字段*/
use mogoroomdb;

ALTER TABLE loan_landlord_payplan ADD depositStatus tinyint(1) NOT NULL DEFAULT 0 COMMENT '保证金状态(0:未交 1:已交且未退 2:已提前退还 3:到期已退还)';