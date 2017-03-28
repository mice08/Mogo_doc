/* Database name `mogoroomdb` */
USE mogoroomdb;

/* 替换消息模版 影响记录条数：64 */
UPDATE mesg_subtemplet SET templetContent = REPLACE(templetContent,'400-900-6868','400-060-6868') WHERE templetContent LIKE '%400-900-6868%';
