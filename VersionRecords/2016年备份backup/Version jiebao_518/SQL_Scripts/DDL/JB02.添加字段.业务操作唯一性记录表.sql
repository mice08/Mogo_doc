/*业务操作唯一性记录表.添加逻辑删除字段*/
use mogoroomdb;

ALTER TABLE comm_unique_operation ADD valid TINYINT(4) NOT NULL DEFAULT '1' COMMENT '是否物理删除0：无效；1：有效';