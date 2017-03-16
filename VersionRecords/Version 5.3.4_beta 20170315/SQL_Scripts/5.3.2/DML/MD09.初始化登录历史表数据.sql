
use mogoroomdb;

/*初始化数据用户类型*/
update user_loginlog set loginType = 4 where id BETWEEN 1400001 AND 1600000 and  loginType = 1 ;
update user_loginlog set loginType = 0 where id BETWEEN 1400001 AND 1600000 and loginType = 2;


/*初始化登录记录渠道类型类型*/
update user_loginlog set loginSource = 102,channel = 4 where id BETWEEN 1400001 AND 1600000 and terminalType = '1' and loginType  in (0,7) and LENGTH(terminalId) = 36 and loginSource is null ;
update user_loginlog set loginSource = 101,channel = 4 where id BETWEEN 1400001 AND 1600000 and terminalType = '1' and loginType  in (0,7) and LENGTH(terminalId) != 36 and loginSource is null;
update user_loginlog set loginSource = 101,channel = 4 where id BETWEEN 1400001 AND 1600000 and terminalType = '1' and loginType  in (0,7) and terminalId is null and loginSource is null;

update user_loginlog set loginSource = 102,channel = 4 where id BETWEEN 1400001 AND 1600000 and terminalType not in ('1','2','3','4') and loginType  in (0,7) and LENGTH(terminalId) = 36 and loginSource is null;
update user_loginlog set loginSource = 101,channel = 4 where id BETWEEN 1400001 AND 1600000 and terminalType not in ('1','2','3','4') and loginType  in (0,7) and LENGTH(terminalId) != 36 and loginSource is null;

update user_loginlog set loginSource = 105,channel = 1 where id BETWEEN 1400001 AND 1600000 and terminalType = '1' and loginType  = 4 and terminalId like 'platform=And%' and loginSource is null;
update user_loginlog set loginSource = 106,channel = 1 where id BETWEEN 1400001 AND 1600000 and terminalType = '1' and loginType  = 4 and terminalId like 'platform=iOS%' and loginSource is null;
update user_loginlog set loginSource = 105,channel = 1 where id BETWEEN 1400001 AND 1600000 and terminalType = '1' and loginType  = 4 and terminalId is null and loginSource is null;

update user_loginlog set loginSource = 201,channel = 5 where id BETWEEN 1400001 AND 1600000 and terminalType = '2' and loginType  in (0,7) and loginSource is null;
update user_loginlog set loginSource = 202,channel = 9 where id BETWEEN 1400001 AND 1600000 and terminalType = '2' and loginType  = 4 and loginSource is null;

update user_loginlog set loginSource = 301,channel = 10 where id BETWEEN 1400001 AND 1600000 and terminalType = '3' and loginSource is null;
update user_loginlog set loginSource = 401,channel = 11 where id BETWEEN 1400001 AND 1600000 and terminalType = '4' and loginSource is null;