/* Database name `mogoroomdb` */

use mogoroomdb;

/*初始化获取CA合同编号次数限制*/
INSERT INTO `comm_dictionary` (CODE,groupName,sort,keyPro,VALUE,STATUS) VALUES ('numLimit-1','numLimit',1,1,150,1);

/*初始化实名认证次数限制*/
INSERT INTO `comm_dictionary` (CODE,groupName,sort,keyPro,VALUE,STATUS) VALUES ('numLimit-2','numLimit',2,2,450,1);