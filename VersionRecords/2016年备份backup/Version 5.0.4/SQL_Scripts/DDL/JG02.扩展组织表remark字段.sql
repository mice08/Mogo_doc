use mogoroomdb;

/*扩展orga_org的remark字段为2048*/

alter table orga_org modify column remark varchar(2048) null comment '关闭分店时记录历史状态';
