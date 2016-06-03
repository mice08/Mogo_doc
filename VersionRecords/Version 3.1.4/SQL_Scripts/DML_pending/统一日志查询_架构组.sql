/** 业务编码初始化脚本**/
use mogoroomdb;
	
delete from `comm_busitype` where busiType=20101004;

INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('20101004','预定支付成功',1,1,3,1,'20102');





