/*添加用户配置中心的日志类型*/
use mogoroomdb;

begin;

INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES( 60104,'配置中心管理',1,1,2,0,601 );

INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(60104001,'添加配置',1,1,3,1,60104);

INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(60104002,'修改配置',1,1,3,1,60104);

INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(60104003,'删除配置',1,1,3,1,60104);

INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(60104004,'设置默认',1,1,3,1,60104);

commit;



