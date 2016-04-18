/*  Database name `mogoroomdb` ，添加银行卡信息表*/
use mogoroomdb;

CREATE TABLE IF NOT EXISTS `comm_bank` (
   id INT(11)  AUTO_INCREMENT NOT NULL COMMENT '主键ID',
   name VARCHAR(25) NOT NULL COMMENT '银行名称',
   enName VARCHAR(8) NULL COMMENT '银行名称英文缩写',
   code VARCHAR(8) NOT NULL COMMENT '银行编码',
   status tinyint(1) NOT NULL COMMENT '删除标记(1:有效 0:无效)',
   isLandlordBand tinyint(1) NOT NULL DEFAULT 1 COMMENT '是否允许房东绑定(1:是 0:否)',
   isRenterBand tinyint(1) NOT NULL DEFAULT 1 COMMENT '是否允许租客绑定(1:是 0:否)',
   isLoanBand tinyint(1) NOT NULL DEFAULT 1 COMMENT '是否允许蘑菇宝绑定(1:是 0:否)',
   sort int(4) NULL COMMENT '排序标识',
   createBy             INT(11) COMMENT '创建人',
    createByType         INT(11) COMMENT '创建人类型(参考字典表组名:userType)',
    createTime           DATETIME COMMENT '创建时间',
    updateBy             INT(11) COMMENT '更新人',
    updateByType         INT(11) COMMENT '更新人类型(参考字典表组名:userType)',
    updateTime           DATETIME COMMENT '更新时间',
   PRIMARY KEY (`id`))
  ENGINE=InnoDB COMMENT='银行卡信息表';