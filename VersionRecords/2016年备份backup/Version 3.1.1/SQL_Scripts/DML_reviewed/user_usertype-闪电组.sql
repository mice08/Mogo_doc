/*  Database name `mogoroomdb` ，初始化用户类型的数据*/
USE mogoroomdb;

/*联系人*/
INSERT INTO user_usertype(userId, userType, soDoneCode, createBy, createTime) SELECT ui.id, 1, ui.id+1100000000, 1004, NOW() FROM user_info ui WHERE ui.id >= 4000000 AND ui.phoneExt IS NOT NULL AND ui.phoneExt != 0 AND ui.id NOT IN (select userId from user_usertype where userId = ui.id and userType = 1);
INSERT INTO user_usertype_his(userId, userType, soDoneCode, createBy, createTime) SELECT ui.id, 1, ui.id+1100000000, 1004, NOW() FROM user_info ui WHERE ui.id >= 4000000 AND ui.phoneExt IS NOT NULL AND ui.phoneExt != 0 AND ui.id NOT IN (select userId from user_usertype_his where userId = ui.id and userType = 1);
/*业主*/
INSERT INTO user_usertype(userId, userType, soDoneCode, createBy, createTime) SELECT ui.id, 8, ui.id+1800000000, 1004, NOW() FROM user_info ui WHERE ui.id >= 4000000 AND ui.id IN (SELECT host_id FROM host_flats_relation) AND ui.id NOT IN (select userId from user_usertype where userId = ui.id and userType = 8);
INSERT INTO user_usertype_his(userId, userType, soDoneCode, createBy, createTime) SELECT ui.id, 8, ui.id+1800000000, 1004, NOW() FROM user_info ui WHERE ui.id >= 4000000 AND ui.id IN (SELECT host_id FROM host_flats_relation) AND ui.id NOT IN (select userId from user_usertype_his where userId = ui.id and userType = 8);
/*入住人*/
INSERT INTO user_usertype(userId, userType, soDoneCode, createBy, createTime) SELECT ui.id, 6, ui.id+1600000000, 1004, NOW() FROM user_info ui WHERE ui.id >= 4000000 AND ui.id IN (SELECT userId FROM cntr_salecontractuserrel WHERE userId IS NOT NULL) AND ui.id NOT IN (select userId from user_usertype where userId = ui.id and userType = 6);
INSERT INTO user_usertype_his(userId, userType, soDoneCode, createBy, createTime) SELECT ui.id, 6, ui.id+1600000000, 1004, NOW() FROM user_info ui WHERE ui.id >= 4000000 AND ui.id IN (SELECT userId FROM cntr_salecontractuserrel WHERE userId IS NOT NULL) AND ui.id NOT IN (select userId from user_usertype_his where userId = ui.id and userType = 6);