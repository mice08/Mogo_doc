/*删除重复的消息查看记录*/
use mogoroomdb;

delete FROM mesg_read WHERE id IN (SELECT MAX(id) FROM mesg_read GROUP BY userid HAVING COUNT(*) >1);

delete FROM mesg_read WHERE id IN (SELECT MAX(id) FROM mesg_read GROUP BY userid HAVING COUNT(*) >1);

delete FROM mesg_read WHERE id IN (SELECT MAX(id) FROM mesg_read GROUP BY userid HAVING COUNT(*) >1);