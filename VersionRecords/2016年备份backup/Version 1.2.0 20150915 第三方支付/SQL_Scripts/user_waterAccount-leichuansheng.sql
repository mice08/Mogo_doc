-- 交易流水表增加一个字段
alter table `user_waterAccount` 
   add column `status` int(9) DEFAULT '1' NULL COMMENT '交易状态(初始化(0), 成功(1), 失败(-1))' after `fundSourceType`;