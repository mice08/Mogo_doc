/*删除重复的消息查看记录*/
use mogoroomdb;

delete from mesg_read where id in 
(
    select a.id from 
    (
        select max(id) id from mesg_read a where EXISTS
        (
            select 1 from mesg_read b where a.id=b.id group by userid HAVING count(1)>1
        )
        group by id
    ) a
);

delete from mesg_read where id in 
(
    select a.id from 
    (
        select max(id) id from mesg_read a where EXISTS
        (
            select 1 from mesg_read b where a.id=b.id group by userid HAVING count(1)>1
        )
        group by id
    ) a
);

delete from mesg_read where id in 
(
    select a.id from 
    (
        select max(id) id from mesg_read a where EXISTS
        (
            select 1 from mesg_read b where a.id=b.id group by userid HAVING count(1)>1
        )
        group by id
    ) a
);