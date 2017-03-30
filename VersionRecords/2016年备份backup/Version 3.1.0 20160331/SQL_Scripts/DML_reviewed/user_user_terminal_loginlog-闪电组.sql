use mogoroomdb;

/*更新表user_type字段的值，从2变更为0*/
UPDATE user_terminal_loginlog SET user_type=0 WHERE user_type=2;