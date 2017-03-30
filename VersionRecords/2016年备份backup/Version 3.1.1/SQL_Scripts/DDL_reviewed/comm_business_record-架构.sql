/*  Database name `mogoroomdb` ，业务记录表修改字段长度 */
use mogoroomdb;

alter table `comm_business_record`   
  modify column `remark` varchar(2048) NOT NULL COMMENT '动作描述 eg:更新了房屋的配置';