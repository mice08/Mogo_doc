USE mogoroomdb;
/* 添加分散式房源菜单调整*/
UPDATE perm_functioninfo set furl = '/mogoroom-partnerpc/flatsInput/addDisperse' where furl = '/mogoroom-partnerpc/flats/turnInitializeData';
UPDATE perm_functioninfo set furl = '/mogoroom-partnerpc/flatsInput/editDisperseEntire' where furl ='/mogoroom-partnerpc/flats/editDisperseFlats' and fcode='1110000';
UPDATE perm_functioninfo set furl = '/mogoroom-partnerpc/flatsInput/editDisperseJoin' where furl = '/mogoroom-partnerpc/flats/editDisperseFlats' and fcode='1130000';
UPDATE perm_functioninfo set furl = '/mogoroom-partnerpc/flatsInput/editDisperseJoin' where furl = '/mogoroom-partnerpc/flats/editDisperseRoom';