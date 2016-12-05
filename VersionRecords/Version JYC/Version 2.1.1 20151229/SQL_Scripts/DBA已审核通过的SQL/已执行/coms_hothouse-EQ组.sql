/* Database name `mogoroomdb` ，因官网推荐房源表中第二套推荐房源在下个版本将会删除该字段，所以目前可以置空而不影响代码逻辑 */
use mogoroomdb;

 ALTER TABLE coms_hotHouse MODIFY COLUMN backuproomid INT(1) null comment '第二套推荐房源ID'; 