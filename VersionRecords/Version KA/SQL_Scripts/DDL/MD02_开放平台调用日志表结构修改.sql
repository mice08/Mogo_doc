use mogoroomdb;
/*修改表结构*/
alter table open_api_log  modify `accessUrl` VARCHAR(255) DEFAULT NULL COMMENT '访问地址';