/*  Database name `mogoroomdb` ，初始化用户类型的数据*/
USE mogoroomdb;

/*联系人*/
insert into user_usertype(userId, userType, soDoneCode) select id, 1, id+900000000 from user_info where id >= 4000000 and phoneExt != 0;
/*业主*/
insert into user_usertype(userId, userType, soDoneCode) select id, 8, id+900000000 from user_info where id >= 4000000 and (phoneExt is null or phoneExt = 0) and id not in (select userId from cntr_salecontractuserrel where userId is not null) and id not in (select userId from user_usertype where userType = 7);
/*入住人*/
insert into user_usertype(userId, userType, soDoneCode) select id, 6, id+900000000 from user_info where id >= 4000000 and (phoneExt is null or phoneExt = 0) and id in (select userId from cntr_salecontractuserrel where userId is not null);
/*房东*/
insert into user_usertype(userId, userType, soDoneCode) select id, 0, id+900000000 from user_info where id >= 3000000 and id < 4000000;
/*租客*/
insert into user_usertype(userId, userType, soDoneCode) select id, 4, id+900000000 from user_info where id < 2000000;