/* Database name `mogoroomdb`�� ��������������ںϲ� */

use mogoroomdb;

update coms_menu set channel=3 where code=100011;
update coms_menu set channel=2 where code=100017;
update coms_menu set pid=0, isMenu=0 where code in (201016,201007);
 
insert into `coms_menu` (`code`, `name`, `url`, `seq`, `level`, `createBy`, `createTime`, `updateBy`, `updateTime`, `status`, `type`, `pid`, channel, isMenu) 
values(100018,'�����Ƽ�','/cms/friendlink','14','2','2000082',now(),'2000082',now(),'1','1','3', '2', '1');

insert into `coms_menu` (`code`, `name`, `url`, `seq`, `level`, `createBy`, `createTime`, `updateBy`, `updateTime`, `status`, `type`, `pid`, channel, isMenu) 
values(202007,'�����ҷ�ҳ_��������','','0','2','2000082',now(),'2000082',now(),'1','1','0', '3', '0');

update perm_functioninfo set fname='�������ӹ���', furl='cms/friendlink' where fname='�鿴���������б�';