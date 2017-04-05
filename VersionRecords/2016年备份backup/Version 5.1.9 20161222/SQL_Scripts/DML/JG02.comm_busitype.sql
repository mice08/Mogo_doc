/*添加comm_busitype*/
use mogoroomdb;

delete from `comm_busitype` where busiType in (10101021);

INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(10101021,'贷款支付房租',1,1,3,1,10103);