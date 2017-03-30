/*  Database name `mogoroomdb` ，为新帐务页面需求新账单类型*/
use mogoroomdb;

ALTER TABLE user_weixin_bind MODIFY COLUMN `bindSrc` INT(2) NULL  COMMENT '绑定公众号(0:蘑菇公寓 1:蘑菇伙伴 2:租客微信公众号 3:租客支付宝服务号)';
ALTER TABLE user_loginlog MODIFY COLUMN `terminalType` VARCHAR(100) NULL  COMMENT '终端类型(1:手机APP 2:PC浏览器 3:租客微信公众号 4:租客支付宝服务号)';
