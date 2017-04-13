/* Database name `mogoroomdb`，替换租客端消息中心图标icon --- 回滚SQL */

use mogoroomdb;

/* 影响5行 */
delete from comm_dictionary where code='xiaoxizhushou.png' and groupName='msgico' and keyPro='20';

delete from comm_dictionary where code='zhanghaofuwu.png' and groupName='msgico' and keyPro='21';

delete from comm_dictionary where code='zhangdanfuwu.png' and groupName='msgico' and keyPro='22';

delete from comm_dictionary where code='zuyuefuwu.png' and groupName='msgico' and keyPro='23';

delete from comm_dictionary where code='shouhoufuwu.png' and groupName='msgico' and keyPro='24';