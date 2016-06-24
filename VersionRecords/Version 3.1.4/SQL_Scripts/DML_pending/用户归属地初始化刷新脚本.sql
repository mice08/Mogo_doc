use mogoroomdb;

/*更新租户 手机归属地历史数据*/


begin

update user_renter u,comm_mobile_city cc
set u.regMobileCity=cc.areaCode
where substring(u.cellphone,1,7)=cc.mobileNumber


commit;