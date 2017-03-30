/* 添加房源同步业务类型 */
USE mogoroomdb;
 
/* 删除之前旧的房源同步业务类型 */
DELETE FROM `comm_busitype` WHERE busiType IN (40101015);

/* 新增新的房源同步业务类型 */
INSERT INTO `comm_busitype`(busiType,busiName,STATUS,sort,LEVEL,isLeaf,parentId) VALUES(40101015,'房源同步修改',1,1,3,1,40103);