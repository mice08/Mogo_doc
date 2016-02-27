/*  Database name `mogoroomdb` ，意见表变更*/
use mogoroomdb;

ALTER TABLE comm_suggestion
ADD COLUMN picGroupId int(11) null COMMENT '图片分组表Id';
