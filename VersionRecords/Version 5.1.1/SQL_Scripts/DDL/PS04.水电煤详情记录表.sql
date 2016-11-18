/*水电煤抄表新需求，增加应收款日*/
USE mogoroomdb;
alter table bill_weg_detail add dueDate datetime DEFAULT Null COMMENT '应收款日';
