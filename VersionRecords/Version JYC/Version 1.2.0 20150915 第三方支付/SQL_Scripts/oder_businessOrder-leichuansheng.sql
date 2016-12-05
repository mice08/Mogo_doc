-- 业务订单表增加一个字段
alter table `oder_businessOrder` 
   add column `errorMsg` varchar(500) NULL COMMENT '错误信息' after `status`;