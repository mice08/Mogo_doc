/*添加帐务账单附加信息表字段*/
USE mogoroomdb;


ALTER TABLE bill_cash_notes ADD COLUMN itemName VARCHAR(50) DEFAULT NULL COMMENT '项目名称',
ADD COLUMN itemDetailName VARCHAR(50) DEFAULT NULL COMMENT '子项目名称',
MODIFY COLUMN roomNum  VARCHAR(50) DEFAULT NULL COMMENT '房间号';