/*新增续租相关业务操作类型*/
use mogoroomdb;
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(20101020,'发起续租',1,1,3,1,20103);

INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(20101021,'修改续租',1,1,3,1,20103);

INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(20101022,'租客确认续租',1,1,3,1,20103);