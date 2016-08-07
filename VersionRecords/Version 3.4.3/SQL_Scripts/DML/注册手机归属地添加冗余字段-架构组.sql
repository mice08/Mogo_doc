/*  Database name `mogoroomdb` 注册来源添加手机归属地冗余字段 刷新历史数据*/
use mogoroomdb;
  
update user_renter t,comm_mobile_city mc
set t.regMobileCityValue=mc.mobileArea
where t.regMobileCity=mc.areaCode
and t.regMobileCity is not null
and t.regMobileCity!='';

 