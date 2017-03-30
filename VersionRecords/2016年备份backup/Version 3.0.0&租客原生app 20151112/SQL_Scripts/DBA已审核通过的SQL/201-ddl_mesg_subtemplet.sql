/*  Database name `mogoroomdb` ，消息子模块修改字段长度*/
use mogoroomdb;

ALTER TABLE `mesg_subtemplet`   
  modify  `jumpCode` VARCHAR(30) NULL COMMENT '跳转编码';