use mogoroomdb;
ALTER TABLE   `user_bankcard` ADD COLUMN  isCorp INT(2) COMMENT '银行卡归属于(0:个人 1:公司)';