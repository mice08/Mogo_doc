/*  Database name `mogoroomdb`  更新冗余房东id */
USE mogoroomdb;
/*更新冗余房东id*/
update perm_user_org_role set landlordId=(select landlordId from user_landlord_childacc_rel rel where rel.userId=perm_user_org_role.userId and rel.status=1 limit 0,1);
/*更新冗余房东id*/
update perm_user_org_role_his set landlordId=(select landlordId from user_landlord_childacc_rel rel where rel.userId=perm_user_org_role_his.userId and rel.status=1 limit 0,1);