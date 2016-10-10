/*  Database name `mogoroomdb`  子帐号角色优化，冗余房东id */
USE mogoroomdb;

/*角色分类索引*/
create index roleId on mesg_category_role(roleId);

/*房东子帐号id索引*/
create index userId on user_landlord_childacc_rel(userId);

/*新增房东id*/
alter table perm_user_org_role add landlordId int(11) COMMENT '房东id';

/*房东id索引*/
create index landlordId on perm_user_org_role(landlordId);

/*角色子帐号id索引*/
create index userId on perm_user_org_role(userId);

/*新增房东id*/
alter table perm_user_org_role_his add landlordId int(11) COMMENT '房东id';

/*组织id索引*/
create index orgId on mesg_user_category_filter(orgId);