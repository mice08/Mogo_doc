use mogoroomdb;

/*增加uuid字段，修改openId备注信息*/
ALTER TABLE `user_third_account`
MODIFY COLUMN `openSource`  int(11) NOT NULL COMMENT '第三方来源(1:支付宝，2:微信)' AFTER `id`,
MODIFY COLUMN `openId`  varchar(32) COMMENT '第三方授权Id' AFTER `openSource`,
ADD COLUMN `uuId`  varchar(32) NOT NULL COMMENT '第三方Id' AFTER `id`,
ADD INDEX (`uuId`) ;

