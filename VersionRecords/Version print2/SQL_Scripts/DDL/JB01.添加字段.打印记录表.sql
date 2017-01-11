/*打印记录表.添加字段*/
use mogoroomdb;

ALTER TABLE comm_print_record ADD userId INT(11) COMMENT '用户id';
ALTER TABLE comm_print_record ADD userType TINYINT(4) COMMENT '用户类型(参考字典表组名:userType)';
ALTER TABLE comm_print_record ADD printCode INT(11) COMMENT '打印编号';