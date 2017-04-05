
USE mogoroomdb;

/*  用户费率添加删除标记字段 */
Alter table `coup_usercoupon` add column `valid` tinyint(4) DEFAULT 1  NOT NULL  COMMENT '是否有效(0:无效,1:有效)' after `coupId`;