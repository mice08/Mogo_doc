USE mogoroomdb;
/* 添加分散式房源菜单调整*/
UPDATE perm_functioninfo set furl = '/mogoroom-partnerpc/flatsInput/addDisperse' where furl = '/mogoroom-partnerpc/flats/turnInitializeData';
UPDATE perm_functioninfo set furl = '/mogoroom-partnerpc/flatsInput/editDisperseEntire' where furl ='/mogoroom-partnerpc/flats/editDisperseFlats' and fcode='1110000';
UPDATE perm_functioninfo set furl = '/mogoroom-partnerpc/flatsInput/editDisperseJoin' where furl = '/mogoroom-partnerpc/flats/editDisperseFlats' and fcode='1130000';
UPDATE perm_functioninfo set furl = '/mogoroom-partnerpc/flatsInput/editDisperseJoin' where furl = '/mogoroom-partnerpc/flats/editDisperseRoom';

/*分散式是否有电梯数据初始化*/
update `flat_flats` set elevatorCount = 0 where elevatorCount is null and flatsTag=1;

/*户型数据调整*/
update `flat_flats` set parlorCount = 10 where status =1 and parlorCount > 10;
update `flat_flats` set toiletCount = 10 where status =1 and toiletCount > 10;
update `flat_flats` set bedroomCount = 5 where status =1 and flatsTag=2 and bedroomCount > 5;
