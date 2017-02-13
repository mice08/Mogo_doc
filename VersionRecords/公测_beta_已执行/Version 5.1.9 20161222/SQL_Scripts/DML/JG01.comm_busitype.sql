/* Database name `mogoroomdb` ，蘑菇宝申请的业务操作类型*/
use mogoroomdb;

INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(1401,'贷款管理',1,1,1,0,null);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(140101,'蘑菇宝申请',1,1,2,0,1401);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(14010101,'租客发起申请',1,1,3,1,140101);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(14010102,'租客修改资料',1,1,3,1,140101);