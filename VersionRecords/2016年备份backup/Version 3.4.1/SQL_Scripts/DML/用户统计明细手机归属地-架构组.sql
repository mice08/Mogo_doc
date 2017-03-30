/** 业务编码初始化脚本 注册归属地刷新无用数据**/
use mogoroomdb;
 
update user_renter set regMobileCity = null where regMobileCity='';



