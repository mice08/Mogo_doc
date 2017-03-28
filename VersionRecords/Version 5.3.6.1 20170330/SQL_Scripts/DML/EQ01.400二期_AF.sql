/* Database name `mogoroomdb` */
USE mogoroomdb;

/* 系统配置表新增400总机号配置 */
INSERT INTO comm_sysconfig(keyname,val,groupname,NAME,remark,updatetime,updatebytype,updateby) VALUES('mogoCorpTele','4009006868','tele','400总机号','400总机号',NOW(),5,0);
/* 房源总机号切换初始化 影响记录数：8千条左右 */
UPDATE `tele_extnum` SET phoneNum='3' WHERE phoneNum='0';

/* 测试验证完之后，才可执行下面SQL */
/* 测试验证完之后，才可执行下面SQL */
/* 测试验证完之后，才可执行下面SQL */
UPDATE comm_sysconfig SET val='4000606868' WHERE keyname='mogoCorpTele';
