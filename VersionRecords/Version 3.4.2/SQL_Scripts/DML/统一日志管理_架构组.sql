/** 业务编码初始化脚本**/
use mogoroomdb;
 
 

delete from `comm_busitype` where busiName in ('修改角色'); 

delete from `comm_busitype` where busiType in ('160102008'); 

INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('160102008','修改角色',1,1,3,1,'160102');



