use mogoroomdb;

set autocommit = 0;
/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '2000000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 8, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '2100000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 8, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '2120000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 8, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '2120001' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 8, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '9000000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 8, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '9200000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 8, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '9210000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 8, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '9230000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 8, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '2130000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 12, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '2140000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 13, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '9220000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 13, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '2000000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 11, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '2200000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 11, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '2210000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 11, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '2210001' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 11, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '9000000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 11, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '9400000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 11, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '9410000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 11, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '9420000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 11, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '2230000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 20, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '1000000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 16, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '1100000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 16, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '1160000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 16, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '1200000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 16, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '1230000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 16, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '1500000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 16, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '7000000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 16, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '7100000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 16, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '1000000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 18, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '1100000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 18, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '1170000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 18, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '1200000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 18, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '1240000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 18, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '1500000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 18, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '1510000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 18, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '1510001' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 18, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '1000000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 21, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '1500000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 21, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '1520000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 21, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '1520001' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 21, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '1610000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 24, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '1620000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 24, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '2200000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 24, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '5520000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 24, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '1000000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 26, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '1600000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 26, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '2000000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 26, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '2100000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 26, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '5000000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 26, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '5500000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 26, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '5510000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 26, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '3000000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 30, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '3110001' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 30, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '3160000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 30, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '3400000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 30, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '3460000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 30, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '3000000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 32, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '3110001' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 32, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '3400000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 32, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '3410000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 32, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '3000000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 34, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '3400000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 34, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '3470000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 34, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '3000000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 35, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '3400000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 35, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '3450002' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 35, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '3460000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 35, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '3460009' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 35, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '3000000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 36, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '3400000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 36, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '3430000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 36, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '3460000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 36, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '3460002' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 36, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '3000000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 37, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '3400000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 37, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '3440000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 37, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '3460000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 37, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '3460003' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 37, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '3000000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 38, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '3400000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 38, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '3460000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 38, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '3460001' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 38, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '3000000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 39, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '3400000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 39, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '3450000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 39, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '3000000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 40, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '3400000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 40, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '3450000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 40, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '3450001' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 40, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '8200000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 41, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '3000000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 41, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '3400000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 41, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '3460000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 41, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '3460004' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 41, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '3000000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 43, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '3400000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 43, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '3460000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 43, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '3460006' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 43, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '3460007' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 43, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '3000000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 45, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '3400000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 45, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '3460000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 45, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '3460005' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 45, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '3000000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 46, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '3400000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 46, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '3420000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 46, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '3460000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 46, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '3460008' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 46, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '3000000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 54, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '3100000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 54, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '3000000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 58, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '3100000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 58, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '3110000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 58, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '3110001' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 58, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '3250000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 58, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '3410001' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 58, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '3000000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 60, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '3100000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 60, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '3120000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 60, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '3000000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 63, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '3100000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 63, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '3130000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 63, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '3140000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 63, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '3000000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 66, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '3150000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 66, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '3200000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 66, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '3000000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 68, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '3200000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 68, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '3230000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 68, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '3000000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 69, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '3200000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 69, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '3210000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 69, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '3220000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 69, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '3000000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 71, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '3500000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 71, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '3540000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 71, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '3000000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 72, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '3500000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 72, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '3510000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 72, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '3000000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 73, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '3500000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 73, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '3520000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 73, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '3530000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 73, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '3000000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 47, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '3300000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 47, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '8000000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 53, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '8200000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 53, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '8210000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 55, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = 'F000000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 56, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = 'F100000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 56, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = 'F110000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 56, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = 'F000000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 57, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = 'F300000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 57, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = 'F310000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 57, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = 'F000000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 59, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = 'F300000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 59, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = 'F320000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 59, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '6000000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 105, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '6100000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 105, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '6120000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 105, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '5000000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 105, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '5600000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 105, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '5620000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 105, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '1000000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 95, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '1100000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 95, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '3000000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 95, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '3300000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 95, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4A00000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 95, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = 'H000000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 95, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '1000000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 97, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '1200000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 97, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '3000000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 97, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '3400000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 97, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4B00000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 97, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = 'I000000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 97, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '1000000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 145, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '1100000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 145, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '11M0000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 145, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '1000000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 164, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '1200000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 164, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '12N0000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 164, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '1000000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 131, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '1300000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 131, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '1000000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 132, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '1400000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 132, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '1000000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 133, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '1100000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 133, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '1150000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 133, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '1000000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 134, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '1200000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 134, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '12M0000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 134, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '1000000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 135, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '1100000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 135, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '1190000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 135, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '11A0000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 135, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '1200000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 135, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '1270000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 135, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '1280000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 135, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '3000000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 135, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '3300000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 135, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '3310000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 135, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '3400000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 135, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '3410000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 135, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '1000000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 136, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '1100000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 136, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '1180000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 136, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '1200000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 136, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '1250000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 136, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '3000000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 136, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '3300000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 136, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '3320000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 136, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '3400000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 136, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '3420000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 136, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '1000000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 137, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '1100000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 137, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '1110000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 137, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '1200000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 137, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '1210000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 137, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '3000000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 137, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '3300000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 137, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '3330000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 137, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '3380000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 137, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '33B0000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 137, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '3400000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 137, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '3430000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 137, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '3480000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 137, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '34B0000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 137, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '1000000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 138, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '1100000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 138, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '11L0000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 138, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '1200000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 138, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '12K0000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 138, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '3000000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 138, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '3300000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 138, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '3340000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 138, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '3400000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 138, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '3440000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 138, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '1000000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 139, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '1100000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 139, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '11B0000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 139, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '1200000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 139, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '1290000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 139, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '3000000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 139, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '3300000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 139, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '3400000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 139, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '1000000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 140, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '1200000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 140, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '12M0000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 140, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '1000000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 141, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '1100000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 141, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '1140000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 141, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '1000000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 142, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '1200000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 142, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '1220000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 142, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4000000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 110, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4100000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 110, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4110000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 110, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4000000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 110, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4700000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 110, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4000000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 111, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4100000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 111, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4120000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 111, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4000000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 111, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4700000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 111, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4710000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 111, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4000000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 112, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4200000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 112, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4210000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 112, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4000000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 112, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4800000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 112, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4000000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 113, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4200000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 113, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4240000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 113, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4000000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 113, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4800000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 113, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4810000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 113, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4000000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 114, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4200000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 114, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4220000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 114, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4000000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 114, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4800000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 114, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4850000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 114, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4830000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 114, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4840000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 114, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4000000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 115, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4200000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 115, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4230000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 115, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4000000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 115, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4800000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 115, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4820000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 115, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4000000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 116, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4300000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 116, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '43B0000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 116, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4000000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 116, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4100000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 116, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4200000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 116, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '1000000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 117, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '1100000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 117, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '11C0000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 117, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '1200000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 117, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '12A0000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 117, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4000000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 117, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4100000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 117, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4130000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 117, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4200000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 117, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4250000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 117, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4300000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 117, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '3000000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 117, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '3300000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 117, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '3360000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 117, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '3400000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 117, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '3460000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 117, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4000000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 117, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4700000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 117, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4720000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 117, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4800000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 117, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4860000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 117, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4100000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 117, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4000000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 118, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4300000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 118, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4330000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 118, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4370000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 118, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4370002' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 118, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4000000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 118, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4100000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 118, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4120000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 118, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4000000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 119, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4300000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 119, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4350000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 119, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4370000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 119, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4370003' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 119, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4000000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 119, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4100000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 119, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4130000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 119, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4000000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 120, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4300000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 120, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4340000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 120, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4340001' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 120, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4340002' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 120, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4370000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 120, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4370004' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 120, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4000000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 120, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4100000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 120, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4110000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 120, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4140000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 120, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4120000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 120, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '1000000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 121, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '1100000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 121, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '1200000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 121, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '12C0000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 121, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4000000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 121, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4300000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 121, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4370000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 121, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4000000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 121, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4100000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 121, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4900000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 121, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4910000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 121, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4200000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 121, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '11F0000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 122, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '12D0000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 122, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '7520001' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 122, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4000000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 122, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4300000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 122, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4370000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 122, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4390000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 122, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4000000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 122, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4100000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 122, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4900000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 122, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4910000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 122, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4910001' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 122, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4200000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 122, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '8110000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 122, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4000000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 123, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4300000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 123, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4370000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 123, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4390000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 123, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4390001' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 123, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4390002' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 123, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4000000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 124, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4300000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 124, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4370000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 124, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '43C0000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 124, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '1000000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 146, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '1100000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 146, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '11K0000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 146, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '1200000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 146, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '12I0000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 146, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4000000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 146, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4400000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 146, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4410000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 146, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4410002' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 146, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4410003' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 146, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '3000000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 146, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '3300000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 146, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '3390000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 146, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '3400000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 146, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '3490000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 146, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = 'G000000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 146, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = 'G300000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 146, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = 'G310000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 146, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = 'G310001' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 146, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4000000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 147, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4400000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 147, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4440000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 147, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = 'G000000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 147, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = 'G300000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 147, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = 'G320000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 147, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = 'G320001' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 147, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '1000000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 148, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '1100000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 148, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '11I0000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 148, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '1200000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 148, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '12G0000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 148, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4400000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 148, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4420000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 148, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4420001' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 148, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = 'G000000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 148, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = 'G300000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 148, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = 'G320000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 148, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = 'G320002' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 148, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = 'G320003' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 148, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4000000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 149, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4400000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 149, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4450000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 149, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = 'G000000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 149, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = 'G300000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 149, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = 'G320000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 149, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = 'G320005' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 149, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '1000000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 150, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '1100000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 150, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '11J0000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 150, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '1200000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 150, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '12H0000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 150, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4000000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 150, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4400000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 150, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4430000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 150, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = 'G000000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 150, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = 'G300000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 150, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = 'G320000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 150, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = 'G320002' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 150, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = 'G320004' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 150, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '1000000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 151, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '1100000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 151, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '11E0000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 151, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '1200000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 151, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '12C0000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 151, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4400000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 151, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4420000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 151, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = 'G000000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 151, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = 'G300000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 151, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = 'G320000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 151, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = 'G320002' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 151, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '11O0000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 152, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '12P0000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 152, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4000000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 152, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4500000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 152, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4000000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 152, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4C00000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 152, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4000000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 153, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4300000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 153, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4370000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 153, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4310000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 153, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4310003' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 153, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4500000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 153, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4510000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 153, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4000000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 153, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4100000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 153, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4900000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 153, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4920000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 153, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4920007' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 153, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4C00000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 153, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4C10000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 153, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4C10001' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 153, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4300000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 203, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4370000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 203, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4310000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 203, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4310015' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 203, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4900000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 203, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4910000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 203, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4920000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 203, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4920010' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 203, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '7500000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 201, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '7510000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 201, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '7520000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 201, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '8000000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 201, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '8100000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 201, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4000000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 158, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4700000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 158, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4710000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 158, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '5000000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 158, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '5700000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 158, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '5710000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 158, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4000000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 159, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4700000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 159, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '5000000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 159, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '5700000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 159, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '5000000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 161, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '5A00000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 161, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '5A30000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 161, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '5000000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 162, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '5A00000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 162, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '5A40000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 162, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '8000000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 163, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '8100000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 163, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '5000000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 163, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '5A00000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 163, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '5A20000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 163, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '8000000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 165, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '8100000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 165, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '8110000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 165, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '7000000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 167, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '7100000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 167, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '7140000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 167, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4000000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 167, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4600000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 167, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4660000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 167, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = 'G000000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 167, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = 'G200000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 167, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = 'G220000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 167, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4000000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 168, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4600000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 168, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4620000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 168, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = 'G000000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 168, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = 'G200000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 168, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = 'G210000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 168, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4000000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 169, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4300000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 169, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4370000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 169, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4310000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 169, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4310004' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 169, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4600000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 169, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4620000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 169, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4000000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 169, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4100000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 169, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4900000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 169, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4920000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 169, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4920008' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 169, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4000000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 170, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4600000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 170, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4660000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 170, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4610000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 170, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4000000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 171, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4310005' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 171, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4600000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 171, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4630000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 171, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4680000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 171, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = 'F000000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 171, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = 'F600000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 171, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = 'F610000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 171, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4000000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 172, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4310005' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 172, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4600000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 172, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4630000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 172, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = 'F000000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 172, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = 'F600000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 172, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '11N0000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 173, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '12O0000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 173, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4000000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 173, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4300000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 173, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4370000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 173, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4310000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 173, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4310006' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 173, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4000000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 173, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4100000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 173, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4900000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 173, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4920000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 173, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4920005' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 173, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4000000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 174, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4300000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 174, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4370000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 174, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4310000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 174, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4310006' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 174, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4310010' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 174, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4000000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 174, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4100000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 174, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4900000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 174, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4920000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 174, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4920005' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 174, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4920004' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 174, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = 'G220001' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 174, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = 'G220005' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 174, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4000000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 175, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4300000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 175, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4370000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 175, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4310000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 175, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4310006' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 175, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4310009' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 175, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4310011' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 175, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4000000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 175, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4100000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 175, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4900000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 175, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4920000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 175, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4920005' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 175, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4920002' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 175, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4920009' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 175, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4000000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 176, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4300000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 176, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4310000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 176, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4310006' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 176, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4310008' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 176, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4310011' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 176, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4000000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 176, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4100000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 176, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4900000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 176, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4920000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 176, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4920005' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 176, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4920003' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 176, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4920009' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 176, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4000000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 177, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4300000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 177, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4370000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 177, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4310000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 177, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4310006' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 177, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4310007' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 177, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4310011' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 177, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4600000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 177, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4660000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 177, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4000000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 177, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4100000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 177, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4900000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 177, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4920000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 177, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4920005' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 177, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4920006' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 177, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4920009' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 177, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '7150000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 179, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4000000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 179, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4300000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 179, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4370000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 179, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4310000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 179, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4310001' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 179, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '1000000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 179, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '1100000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 179, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '1200000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 179, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '1300000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 179, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '1400000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 179, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4000000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 179, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4100000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 179, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4900000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 179, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4920000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 179, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4920001' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 179, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '5000000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 179, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '5400000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 179, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '5410000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 179, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4000000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 180, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4300000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 180, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4370000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 180, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4310000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 180, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4310002' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 180, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4000000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 180, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4100000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 180, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4900000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 180, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4930000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 180, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4930001' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 180, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4000000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 181, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4300000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 181, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4310000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 181, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4310012' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 181, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4310013' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 181, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4000000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 181, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4100000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 181, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4900000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 181, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4930000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 181, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4930002' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 181, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4930003' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 181, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4000000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 182, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4300000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 182, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4370000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 182, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4310000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 182, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4310012' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 182, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4000000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 182, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4100000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 182, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4900000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 182, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4930000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 182, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4930002' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 182, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4000000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 183, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4300000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 183, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4370000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 183, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4310000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 183, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4310012' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 183, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4310014' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 183, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4000000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 183, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4100000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 183, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4900000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 183, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4930000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 183, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4930002' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 183, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '4930004' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 183, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '7000000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 186, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '7100000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 186, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '7140000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 186, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '1000000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 186, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '1100000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 186, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '1300000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 186, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '5000000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 186, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '5400000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 186, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '7000000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 187, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '7100000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 187, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '7150000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 187, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '1000000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 187, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '1100000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 187, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '1200000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 187, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '1300000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 187, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '1400000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 187, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '5000000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 187, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '5400000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 187, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '5410000' and channel=4;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 187, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '7000000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 188, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '7100000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 188, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '7130000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 188, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '7300000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 190, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '7310000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 190, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '7300000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 191, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '7320000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 191, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '7000000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 193, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '7200000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 193, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '7210000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 193, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '7000000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 194, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '7200000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 194, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '7220000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 194, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '7000000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 195, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '7200000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 195, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '7230000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 195, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '7000000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 196, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '7200000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 196, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '7240000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 196, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '7400000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 196, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '7410000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 196, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '7000000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 202, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '7200000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 202, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '7250000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 202, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '7000000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 198, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '7400000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 198, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '7410000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 198, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '7000000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 199, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '7400000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 199, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '7410000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 199, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '7420000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 199, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '7000000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 200, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '7400000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 200, 1, 0, now(), now());

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '7430000' and channel=5;
/*插入rel记录*/
insert into perm_menu_group_rel (menuId,menuGroupId,status,soDoneCode,createTime,updateTime)values (@menuId, 200, 1, 0, now(), now());


commit;