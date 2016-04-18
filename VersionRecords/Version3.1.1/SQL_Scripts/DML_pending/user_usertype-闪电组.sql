/*  Database name `mogoroomdb` ，初始化用户类型的数据*/
USE mogoroomdb;

/*联系人*/
INSERT INTO user_usertype(userId, userType, soDoneCode, createBy, createTime) SELECT id, 1, id+9100000000, 1004, NOW() FROM user_info WHERE id >= 4000000 AND phoneExt IS NOT NULL AND phoneExt != 0;
INSERT INTO user_usertype_his(userId, userType, soDoneCode, createBy, createTime) SELECT id, 1, id+9100000000, 1004, NOW() FROM user_info WHERE id >= 4000000 AND phoneExt IS NOT NULL AND phoneExt != 0;
/*业主*/
INSERT INTO user_usertype(userId, userType, soDoneCode, createBy, createTime) SELECT id, 8, id+9800000000, 1004, NOW() FROM user_info WHERE id >= 4000000 AND id IN (SELECT host_id FROM host_flats_relation);
INSERT INTO user_usertype_his(userId, userType, soDoneCode, createBy, createTime) SELECT id, 8, id+9800000000, 1004, NOW() FROM user_info WHERE id >= 4000000 AND id IN (SELECT host_id FROM host_flats_relation);
/*入住人*/
INSERT INTO user_usertype(userId, userType, soDoneCode, createBy, createTime) SELECT id, 6, id+9600000000, 1004, NOW() FROM user_info WHERE id >= 4000000 AND id IN (SELECT userId FROM cntr_salecontractuserrel WHERE userId IS NOT NULL);
INSERT INTO user_usertype_his(userId, userType, soDoneCode, createBy, createTime) SELECT id, 6, id+9600000000, 1004, NOW() FROM user_info WHERE id >= 4000000 AND id IN (SELECT userId FROM cntr_salecontractuserrel WHERE userId IS NOT NULL);