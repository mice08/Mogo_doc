/*添加bs登录首页跳转url*/

use mogoroomdb;

/*重新配置指定的如下，把之前的删除*/
UPDATE orga_position_url SET STATUS=0 WHERE orgid  IN (6,7,8,17,19,25,53,54,55,56,57,68,69,70,71,72,73,
74,75,76,77,78,79,81,82,83,84,85,96,97,98,116,117,118,119,121);

/*添加经理的跳转*/
INSERT INTO orga_position_url(orgId,positionid,urltype,url,createBy,createTime,createByType,STATUS)
VALUES(6,1,0,'keyDataShow/keyDataShowList',1,NOW(),5,1),
(7,1,0,'keyDataShow/keyDataShowList',1,NOW(),5,1),
(8,1,0,'keyDataShow/keyDataShowList',1,NOW(),5,1),
(17,1,0,'keyDataShow/keyDataShowList',1,NOW(),5,1),
(19,1,0,'keyDataShow/keyDataShowList',1,NOW(),5,1),
(25,1,0,'keyDataShow/keyDataShowList',1,NOW(),5,1),
(53,1,0,'keyDataShow/keyDataShowList',1,NOW(),5,1),
(54,1,0,'keyDataShow/keyDataShowList',1,NOW(),5,1),
(55,1,0,'keyDataShow/keyDataShowList',1,NOW(),5,1),
(56,1,0,'keyDataShow/keyDataShowList',1,NOW(),5,1),
(57,1,0,'keyDataShow/keyDataShowList',1,NOW(),5,1),
(68,1,0,'keyDataShow/keyDataShowList',1,NOW(),5,1),
(69,1,0,'keyDataShow/keyDataShowList',1,NOW(),5,1),
(70,1,0,'keyDataShow/keyDataShowList',1,NOW(),5,1),
(71,1,0,'keyDataShow/keyDataShowList',1,NOW(),5,1),
(72,1,0,'keyDataShow/keyDataShowList',1,NOW(),5,1),
(73,1,0,'keyDataShow/keyDataShowList',1,NOW(),5,1),
(74,1,0,'keyDataShow/keyDataShowList',1,NOW(),5,1),
(75,1,0,'keyDataShow/keyDataShowList',1,NOW(),5,1),
(76,1,0,'keyDataShow/keyDataShowList',1,NOW(),5,1),
(77,1,0,'keyDataShow/keyDataShowList',1,NOW(),5,1),
(78,1,0,'keyDataShow/keyDataShowList',1,NOW(),5,1),
(79,1,0,'keyDataShow/keyDataShowList',1,NOW(),5,1),
(81,1,0,'keyDataShow/keyDataShowList',1,NOW(),5,1),
(82,1,0,'keyDataShow/keyDataShowList',1,NOW(),5,1),
(83,1,0,'keyDataShow/keyDataShowList',1,NOW(),5,1),
(84,1,0,'keyDataShow/keyDataShowList',1,NOW(),5,1),
(85,1,0,'keyDataShow/keyDataShowList',1,NOW(),5,1),
(96,1,0,'keyDataShow/keyDataShowList',1,NOW(),5,1),
(97,1,0,'keyDataShow/keyDataShowList',1,NOW(),5,1),
(98,1,0,'keyDataShow/keyDataShowList',1,NOW(),5,1),
(116,1,0,'keyDataShow/keyDataShowList',1,NOW(),5,1),
(117,1,0,'keyDataShow/keyDataShowList',1,NOW(),5,1),
(118,1,0,'keyDataShow/keyDataShowList',1,NOW(),5,1),
(119,1,0,'keyDataShow/keyDataShowList',1,NOW(),5,1),
(121,1,0,'keyDataShow/keyDataShowList',1,NOW(),5,1);

/*添加拓展员工的跳转*/
INSERT INTO orga_position_url(orgId,positionid,urltype,url,createBy,createTime,createByType,STATUS)
VALUES(68,3,0,'keyDataShow/keyDataShowList',1,NOW(),5,1),
(69,3,0,'keyDataShow/keyDataShowList',1,NOW(),5,1),
(70,3,0,'keyDataShow/keyDataShowList',1,NOW(),5,1),
(71,3,0,'keyDataShow/keyDataShowList',1,NOW(),5,1),
(72,3,0,'keyDataShow/keyDataShowList',1,NOW(),5,1),
(73,3,0,'keyDataShow/keyDataShowList',1,NOW(),5,1),
(74,3,0,'keyDataShow/keyDataShowList',1,NOW(),5,1),
(75,3,0,'keyDataShow/keyDataShowList',1,NOW(),5,1),
(76,3,0,'keyDataShow/keyDataShowList',1,NOW(),5,1),
(77,3,0,'keyDataShow/keyDataShowList',1,NOW(),5,1),
(78,3,0,'keyDataShow/keyDataShowList',1,NOW(),5,1),
(79,3,0,'keyDataShow/keyDataShowList',1,NOW(),5,1),
(81,3,0,'keyDataShow/keyDataShowList',1,NOW(),5,1),
(82,3,0,'keyDataShow/keyDataShowList',1,NOW(),5,1),
(83,3,0,'keyDataShow/keyDataShowList',1,NOW(),5,1),
(84,3,0,'keyDataShow/keyDataShowList',1,NOW(),5,1),
(85,3,0,'keyDataShow/keyDataShowList',1,NOW(),5,1),
(96,3,0,'keyDataShow/keyDataShowList',1,NOW(),5,1),
(97,3,0,'keyDataShow/keyDataShowList',1,NOW(),5,1),
(98,3,0,'keyDataShow/keyDataShowList',1,NOW(),5,1),
(116,3,0,'keyDataShow/keyDataShowList',1,NOW(),5,1),
(117,3,0,'keyDataShow/keyDataShowList',1,NOW(),5,1),
(118,3,0,'keyDataShow/keyDataShowList',1,NOW(),5,1),
(119,3,0,'keyDataShow/keyDataShowList',1,NOW(),5,1),
(121,3,0,'keyDataShow/keyDataShowList',1,NOW(),5,1);
