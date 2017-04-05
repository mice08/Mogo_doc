/* 放开字段约束，nickName字段可以为空 */
use mogoroomdb;

ALTER TABLE user_weixin_info MODIFY `nickName` VARCHAR(64) NULL COMMENT '用户昵称';