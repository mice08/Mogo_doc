/*打印记录表.添加房东id、打印编号字段*/
use mogoroomdb;

ALTER TABLE comm_print_record ADD landlordId INT(11) COMMENT '房东id';
ALTER TABLE comm_print_record ADD printCode INT(11) COMMENT '打印编号';