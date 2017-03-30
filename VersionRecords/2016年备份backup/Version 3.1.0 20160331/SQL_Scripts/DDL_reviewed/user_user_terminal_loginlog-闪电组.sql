use mogoroomdb;

/* 修改user_terminal_loginlog user_type字段注释*/
ALTER TABLE user_terminal_loginlog MODIFY user_type tinyint(2) COMMENT '用户类型(参考字典表组名:userType)';
