/* Database name `mogoroomdb` ，新增统一日志记录应收表*/

use mogoroomdb;
drop  table comm_business_record_mapping;
create table comm_business_record_mapping(
   id int(40) primary key AUTO_INCREMENT comment '主键ID',
   busiType int(11) not null comment '业务唯一编码,对应comm_busitype表记录',
   tableName varchar(30) not null comment '业务编码对应的业务表',
   tableNameHis varchar(30) not null comment '业务编码对应的业务历史表',
   tableLabel varchar(50) not null comment '业务表描述',
   tableColumnLabel varchar(50) not null comment '业务编码对应的业务历史表列中文显示名',
   tableColumnName varchar(20) not null comment '业务编码对应的业务历史表列名' ,
   checkUniColumn varchar(50) not null comment '业务编码对应的业务历史表比较字段列名' ,
   isCommWrite int not null comment '是否在通用的写历史表(0:否 1:是)' ,
   sort int not null default 1 comment '排序数字越小越靠前'
)ENGINE=InnoDB  default charset=utf8mb4 COMMENT='业务编码与日志历史表映射关系表';

 
/*  添加树级结构*/ 
ALTER TABLE `comm_busitype` ADD COLUMN `parentId` INT(11) NULL COMMENT '父ID,对应本表busiType'  ;
ALTER TABLE `comm_busitype` ADD COLUMN `level` INT(1) default 1 COMMENT '级别,从1开始'  ;
ALTER TABLE `comm_busitype` ADD COLUMN `isLeaf` INT(1) default 1 COMMENT '是否末级'  ;

ALTER TABLE `comm_business_record` MODIFY COLUMN `orgId` INT(11) default 1 COMMENT '操作员对应的组织id'  ;

