/*新增业务类型*/
USE mogoroomdb;

INSERT INTO `comm_busitype`(busiType,busiName,STATUS,sort,LEVEL,isLeaf,parentId) VALUES( 140104,'蘑菇宝',1,1,2,0,1401 );
INSERT INTO `comm_busitype`(busiType,busiName,STATUS,sort,LEVEL,isLeaf,parentId) VALUES( 140106,'买回',1,1,2,0,1401 );
INSERT INTO `comm_busitype`(busiType,busiName,STATUS,sort,LEVEL,isLeaf,parentId) VALUES(140103004,'蘑菇月付生成还款计划',1,1,3,1,140103);
INSERT INTO `comm_busitype`(busiType,busiName,STATUS,sort,LEVEL,isLeaf,parentId) VALUES(140103007,'蘑菇月付还款',1,1,3,1,140103);
INSERT INTO `comm_busitype`(busiType,busiName,STATUS,sort,LEVEL,isLeaf,parentId) VALUES(140103008,'蘑菇月付分期强清',1,1,3,1,140103);
INSERT INTO `comm_busitype`(busiType,busiName,STATUS,sort,LEVEL,isLeaf,parentId) VALUES(140103009,'账单申请月付提醒',1,1,3,1,140103);
INSERT INTO `comm_busitype`(busiType,busiName,STATUS,sort,LEVEL,isLeaf,parentId) VALUES(140104001,'租客确认租约超时',1,1,3,1,140104);
INSERT INTO `comm_busitype`(busiType,busiName,STATUS,sort,LEVEL,isLeaf,parentId) VALUES(140104002,'房东确认租约超时',1,1,3,1,140104);
INSERT INTO `comm_busitype`(busiType,busiName,STATUS,sort,LEVEL,isLeaf,parentId) VALUES(140104005,'蘑菇宝生成还款计划',1,1,3,1,140104);
INSERT INTO `comm_busitype`(busiType,busiName,STATUS,sort,LEVEL,isLeaf,parentId) VALUES(140104006,'蘑菇宝还款',1,1,3,1,140104);
INSERT INTO `comm_busitype`(busiType,busiName,STATUS,sort,LEVEL,isLeaf,parentId) VALUES(140104008,'强制清退',1,1,3,1,140104);
INSERT INTO `comm_busitype`(busiType,busiName,STATUS,sort,LEVEL,isLeaf,parentId) VALUES(140106001,'房东支付买回单',1,1,3,1,140106);
INSERT INTO `comm_busitype`(busiType,busiName,STATUS,sort,LEVEL,isLeaf,parentId) VALUES(140106002,'房东根据贷款编号支付买回单',1,1,3,1,140106);

