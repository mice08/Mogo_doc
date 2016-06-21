use acct;


--ALTER TABLE acct_fundtype MODIFY  fundName VARCHAR(64) NOT NULL COMMENT '资金类型名称';
##fundType 数据初始化
insert  into `acct_fundtype`(`id`,`fundCode`,`fundName`,`status`,`sort`) values (101,101,'基本户',1,1),(102,102,'保证金',1,2),(103,103,'定金',1,3),(201,201,'公司基本户',1,4);
 