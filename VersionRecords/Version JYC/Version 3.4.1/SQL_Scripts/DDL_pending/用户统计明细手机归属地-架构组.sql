/** 业务编码初始化脚本 注册归属地刷新无用数据**/
use mogoroomdb;
 
ALTER TABLE `user_renter` modify column `regMobileCity` VARCHAR(10) NULL DEFAULT NULL COMMENT '手机归属地编码' ;

 


