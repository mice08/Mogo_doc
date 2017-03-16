use mogoroomdb;

/*修改房东密码修改次数字段类型*/
ALTER TABLE `user_landlord`
MODIFY COLUMN `editPwdNum`  int(11) NULL DEFAULT 0 COMMENT '修改密码次数' AFTER `memberNum`;

