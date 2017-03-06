/* Database name `mogoroomdb` */

use mogoroomdb;

/*初始化获取CA合同编号次数限制*/
INSERT INTO `comm_dictionary` (CODE,groupName,sort,keyPro,VALUE,STATUS,enValue) VALUES ('numLimit-1','numLimit',1,1,150,1,'numLimit-1');
/*初始化实名认证次数限制*/
INSERT INTO `comm_dictionary` (CODE,groupName,sort,keyPro,VALUE,STATUS,enValue) VALUES ('numLimit-2','numLimit',2,2,450,1,'numLimit-2');
/*CA功能开关 0:关闭 1:开启*/
INSERT INTO `comm_dictionary` (CODE,groupName,sort,keyPro,VALUE,STATUS,enValue) VALUES ('system-ca-switch','system-ca-switch',1,1,0,1,'1');
