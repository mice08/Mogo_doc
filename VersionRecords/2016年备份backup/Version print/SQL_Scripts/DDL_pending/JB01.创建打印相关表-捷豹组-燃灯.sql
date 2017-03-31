use mogoroomdb;
/*新增打印记录 编号生成器*/
DROP TABLE IF EXISTS comm_print_record;
CREATE TABLE comm_print_record
(
   id                   INT(11) AUTO_INCREMENT COMMENT '主键id',
   createBy             INT(11) NOT NULL COMMENT '创建人id',
   createByType         INT(11) NOT NULL COMMENT '创建人类型(参考字典表组名:userType)',
   createTime           DATETIME DEFAULT CURRENT_TIMESTAMP  COMMENT '创建时间',
   remark               VARCHAR(512) COMMENT '描述',
   PRIMARY KEY (id)
) ENGINE=INNODB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COMMENT='打印记录表' ;


/*记录打印条目记录*/
DROP TABLE IF EXISTS comm_print_item;
CREATE TABLE comm_print_item
(
   id                   INT(11) AUTO_INCREMENT COMMENT '主键id',
   printId              INT(11) NOT NULL COMMENT '打印id',
   orderId              INT(11) NOT NULL COMMENT '业务id',
   orderType            INT(11) NOT NULL DEFAULT 1 COMMENT '业务类型(1:账单)',
   createBy             INT(11) NOT NULL COMMENT '创建人id',
   createByType         INT(11) NOT NULL COMMENT '创建人类型(参考字典表组名:userType)',
   createTime           DATETIME  DEFAULT CURRENT_TIMESTAMP  COMMENT '创建时间',
   remark               VARCHAR(512) COMMENT '描述',
   PRIMARY KEY (id),
   INDEX index_orderId_orderType (orderId,orderType)
) ENGINE=INNODB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COMMENT='打印条目记录';
