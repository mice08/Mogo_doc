use mogoroomdb;

/* 修改user_terminal_loginlog user_type字段注释*/
ALTER TABLE user_terminal_loginlog MODIFY user_type int(11) COMMENT '用户类型（房东:0 联系人:1 保洁:2 维修:3 租客:4 员工:5 入住人:6 子账号:7）';


/*更新表user_type字段的值，从2变更为0*/
UPDATE user_terminal_loginlog SET user_type=0 WHERE user_type=2;