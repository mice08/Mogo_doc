/* Database name `mogoroomdb`, 添加房东历史表是否允许在线支付字段 */
use mogoroomdb;

ALTER TABLE user_landlord_his ADD COLUMN onlinePay tinyint(1) NOT NULL DEFAULT 1 COMMENT '是否允许在线支付(1:是 0:否)';