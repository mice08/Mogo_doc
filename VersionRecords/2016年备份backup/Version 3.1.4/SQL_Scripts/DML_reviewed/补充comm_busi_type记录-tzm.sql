/*  Database name `mogoroomdb` ，补充业务类型代码*/
USE mogoroomdb;

INSERT INTO `comm_busitype` (`busiType`, `busiName`, `status`, `sort`,parentId,LEVEL,isLeaf) VALUES('1031004','修改个人资料','1','87',NULL,3,1);
INSERT INTO `comm_busitype` (`busiType`, `busiName`, `status`, `sort`,parentId,LEVEL,isLeaf) VALUES('4001000','修改小区/公寓/房间','1','88',NULL,3,1);


INSERT INTO `comm_busitype` (`busiType`, `busiName`, `status`, `sort`,parentId,LEVEL,isLeaf) VALUES('4001001','新增小区/公寓/房间','1','89',NULL,3,1);
INSERT INTO `comm_busitype` (`busiType`, `busiName`, `status`, `sort`,parentId,LEVEL,isLeaf) VALUES('4001002','删除小区/公寓/房间','1','90',NULL,3,1);

INSERT INTO `comm_busitype` (`busiType`, `busiName`, `status`, `sort`,parentId,LEVEL,isLeaf) VALUES('1031005','修改支付密码','1','91',NULL,3,1);
INSERT INTO `comm_busitype` (`busiType`, `busiName`, `status`, `sort`,parentId,LEVEL,isLeaf) VALUES('5001000','添加子帐号','1','92',NULL,3,1);
INSERT INTO `comm_busitype` (`busiType`, `busiName`, `status`, `sort`,parentId,LEVEL,isLeaf) VALUES('5001001','修改子帐号','1','93',NULL,3,1);
INSERT INTO `comm_busitype` (`busiType`, `busiName`, `status`, `sort`,parentId,LEVEL,isLeaf) VALUES('1041007','撤销已线下支付账单','1','94',NULL,3,1);
INSERT INTO `comm_busitype` (`busiType`, `busiName`, `status`, `sort`,parentId,LEVEL,isLeaf) VALUES('1041008','生成并支付自定义账单','1','95',NULL,3,1);
INSERT INTO `comm_busitype` (`busiType`, `busiName`, `status`, `sort`,parentId,LEVEL,isLeaf) VALUES('4002','暂停租金宝','1','96',NULL,3,1);
INSERT INTO `comm_busitype` (`busiType`, `busiName`, `status`, `sort`,parentId,LEVEL,isLeaf) VALUES('4003','恢复租金宝','1','97',NULL,3,1);
INSERT INTO `comm_busitype` (`busiType`, `busiName`, `status`, `sort`,parentId,LEVEL,isLeaf) VALUES('4004','终止租金宝','1','98',NULL,3,1);
INSERT INTO `comm_busitype` (`busiType`, `busiName`, `status`, `sort`,parentId,LEVEL,isLeaf) VALUES('2011004','蘑菇(BS)上架房源','1','99',NULL,3,1);