/* Database name `mogoroomdb`， 友情链接内容入口合并 */

use mogoroomdb;

update coms_menu set channel=3 where code=100011;
update coms_menu set channel=2 where code=100017;
update coms_menu set pid=0, isMenu=0 where code in (201016,201007);
 
insert into `coms_menu` (`code`, `name`, `url`, `seq`, `level`, `createBy`, `createTime`, `updateBy`, `updateTime`, `status`, `type`, `pid`, channel, isMenu) 
values(100018,'友链推荐','/cms/friendlinkForQuery','14','2','2000082',now(),'2000082',now(),'1','1','3', '2', '1');

insert into `coms_menu` (`code`, `name`, `url`, `seq`, `level`, `createBy`, `createTime`, `updateBy`, `updateTime`, `status`, `type`, `pid`, channel, isMenu) 
values(202007,'立即找房页_友情链接','','0','2','2000082',now(),'2000082',now(),'1','1','0', '3', '0');

update perm_functioninfo set fname='友情链接管理', furl='cms/friendlink' where fname='查看友链申请列表';