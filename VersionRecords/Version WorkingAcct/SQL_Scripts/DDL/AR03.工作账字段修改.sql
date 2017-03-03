/*修改帐务账单附加信息表备注字段*/
USE mogoroomdb;

alter table bill_cashnotes modify column   `orderMemo` VARCHAR(200) DEFAULT NULL COMMENT '租约描述';
