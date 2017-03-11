/* Database name `mogoroomdb`，替换租客端消息中心图标icon */

use mogoroomdb;

/* 影响5行 */
insert into comm_dictionary(code, groupName, sort, keyPro, value, status, fcode, enValue) 
	values('xiaoxizhushou.png','msgico','20','20','消息助手','1','','xiaoxizhushou');

insert into comm_dictionary(code, groupName, sort, keyPro, value, status, fcode, enValue) 
	values('zhanghaofuwu.png','msgico','21','21','账号服务','1','','xiaoxizhushou');

insert into comm_dictionary(code, groupName, sort, keyPro, value, status, fcode, enValue) 
	values('zhangdanfuwu.png','msgico','22','22','账单服务','1','','xiaoxizhushou');

insert into comm_dictionary(code, groupName, sort, keyPro, value, status, fcode, enValue) 
	values('zuyuefuwu.png','msgico','23','23','租约服务','1','','xiaoxizhushou');
	
insert into comm_dictionary(code, groupName, sort, keyPro, value, status, fcode, enValue) 
	values('shouhoufuwu.png','msgico','24','24','售后服务','1','','xiaoxizhushou');