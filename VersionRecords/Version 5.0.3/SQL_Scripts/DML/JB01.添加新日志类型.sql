/*增加日志类型*/
USE mogoroomdb;
BEGIN;
delete from `comm_busitype` where busiType in (100102);
delete from `comm_busitype` where busiType in (100102001);
delete from `comm_busitype` where busiType in (100102002);
delete from `comm_busitype` where busiType in (100102003);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(100102,'租约确认渠道',1,1,2,0,1001);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(100102001,'App确认租约',1,1,3,1,100102);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(100102002,'微信公众号确认租约',1,1,3,1,100102);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(100102003,'支付宝服务窗确认租约',1,1,3,1,100102);
COMMIT;