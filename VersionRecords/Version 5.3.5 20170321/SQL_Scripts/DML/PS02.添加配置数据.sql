/*
添加蘑菇分定时任务配置
*/

use mogoroomdb;

BEGIN;

insert into `comm_sysconfig` (`keyName`, `val`, `groupName`, `name`, `remark`, `updateTime`, `updateByType`, `updateBy`, `extra1`, `extra2`)
values('MOGOSCORE_VERSION_20170101','1','MOGOSCORE_VERSION','蘑菇分版本','val=1(启用)val=0(关闭)','2017-03-13 15:35:42','6','1','',NULL);
insert into `comm_sysconfig` ( `keyName`, `val`, `groupName`, `name`, `remark`, `updateTime`, `updateByType`, `updateBy`, `extra1`, `extra2`)
values('MOGOSCORE_VERSION_20170312',NULL,'MOGOSCORE_VERSION','蘑菇分版本','val=1(启用)val=0(关闭)','2017-03-13 15:36:10','6','1','1',NULL);

COMMIT ;