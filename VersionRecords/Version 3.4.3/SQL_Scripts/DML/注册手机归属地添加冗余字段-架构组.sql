/*  Database name `mogoroomdb` 注册来源添加手机归属地冗余字段 刷新历史数据*/
use mogoroomdb;
  
update user_renter t,comm_mobile_city mc
set t.regMobileCityValue=mc.mobileArea
where t.regMobileCity=mc.areaCode
and t.regMobileCity is not null
and t.regMobileCity!='';

 update user_renter ur,comm_dictionary cd,comm_dictionary cd2
set ur.regChannelDtl=cd.value,ur.regChannelDtlValue=cd2.value
where 1=1
 and cd.keyPro=ur.regChannel and cd.groupName='channel'
 and  cd2.keyPro=ur.regChannelDtl and cd2.groupName='regChannelDtl'
