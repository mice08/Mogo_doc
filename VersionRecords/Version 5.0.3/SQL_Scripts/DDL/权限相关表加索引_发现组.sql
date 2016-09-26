/*  Database name `mogoroomdb`  优化查询 */
USE mogoroomdb;

/*用户组织*/
create index IDX_userId on perm_user_org_role(userId);
/*组织分类*/
create index IDX_roleId on mesg_category_role(roleId);
/*子帐号查房东*/
create index IDX_userId on user_landlord_childacc_rel(userId);