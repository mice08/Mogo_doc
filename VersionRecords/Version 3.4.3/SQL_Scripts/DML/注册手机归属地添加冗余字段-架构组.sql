/*  Database name `mogoroomdb` ע����Դ����ֻ������������ֶ� ˢ����ʷ����*/
use mogoroomdb;
  
update user_renter t,comm_mobile_city mc
set t.regMobileCityValue=mc.mobileArea
where t.regMobileCity=mc.areaCode
and t.regMobileCity is not null
and t.regMobileCity!='';

 